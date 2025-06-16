package com.lee.myapplication;

import android.app.AlertDialog;
import android.app.DatePickerDialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ListView;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

public class ScheduleListFragment extends Fragment {
    private ListView scheduleListView;
    private SwipeRefreshLayout swipeRefreshLayout;
    private ScheduleListAdapter adapter;
    private DatabaseHelper dbHelper;
    private FloatingActionButton fab;
    private Button dateFilterBtn;
    private TextView scheduleListTitle;
    private boolean isFragmentActive = true;
    private Calendar startDate;
    private Calendar endDate;
    private static final int DAYS_TO_SHOW = 30; // 默认显示未来30天的日程

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        isFragmentActive = true;
        View view = inflater.inflate(R.layout.fragment_schedule_list, container, false);
        
        scheduleListView = view.findViewById(R.id.scheduleListView);
        swipeRefreshLayout = view.findViewById(R.id.swipeRefreshLayout);
        fab = view.findViewById(R.id.fab);
        dateFilterBtn = view.findViewById(R.id.dateFilterBtn);
        scheduleListTitle = view.findViewById(R.id.scheduleListTitle);
        
        dbHelper = new DatabaseHelper(getContext());
        adapter = new ScheduleListAdapter(getContext());
        scheduleListView.setAdapter(adapter);
        
        // 初始化日期范围
        initDateRange();
        
        // 设置下拉刷新
        swipeRefreshLayout.setOnRefreshListener(this::refreshSchedules);
        
        // 设置浮动按钮
        fab.setOnClickListener(v -> {
            Intent intent = new Intent(getContext(), EditScheduleActivity.class);
            startActivity(intent);
        });
        
        // 设置日期筛选按钮
        dateFilterBtn.setOnClickListener(v -> showDateFilterDialog());
        
        // 加载日程数据
        loadSchedules();
        
        return view;
    }

    private void initDateRange() {
        startDate = Calendar.getInstance();
        endDate = Calendar.getInstance();
        endDate.add(Calendar.DATE, DAYS_TO_SHOW);
        
        updateTitleText();
    }

    private void updateTitleText() {
        String title = String.format("日程列表 (%d天)", 
            (int)((endDate.getTimeInMillis() - startDate.getTimeInMillis()) / (24 * 60 * 60 * 1000)));
        scheduleListTitle.setText(title);
    }

    private void showDateFilterDialog() {
        // 创建筛选对话框
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
        builder.setTitle("选择日期范围");
        
        String[] options = {"今天", "未来7天", "未来30天", "未来3个月", "所有日程", "自定义"};
        
        builder.setItems(options, (dialog, which) -> {
            Calendar today = Calendar.getInstance();
            startDate = Calendar.getInstance();
            endDate = Calendar.getInstance();
            
            switch (which) {
                case 0: // 今天
                    endDate.add(Calendar.DATE, 1);
                    break;
                case 1: // 未来7天
                    endDate.add(Calendar.DATE, 7);
                    break;
                case 2: // 未来30天
                    endDate.add(Calendar.DATE, 30);
                    break;
                case 3: // 未来3个月
                    endDate.add(Calendar.MONTH, 3);
                    break;
                case 4: // 所有日程
                    startDate.add(Calendar.YEAR, -1);
                    endDate.add(Calendar.YEAR, 1);
                    break;
                case 5: // 自定义
                    showDateRangePickerDialog();
                    return;
            }
            
            updateTitleText();
            loadSchedules();
        });
        
        builder.create().show();
    }

    private void showDateRangePickerDialog() {
        // 先选择开始日期
        DatePickerDialog startDatePicker = new DatePickerDialog(
            getContext(),
            (view, year, month, dayOfMonth) -> {
                startDate.set(year, month, dayOfMonth);
                
                // 再选择结束日期
                DatePickerDialog endDatePicker = new DatePickerDialog(
                    getContext(),
                    (view2, year2, month2, dayOfMonth2) -> {
                        endDate.set(year2, month2, dayOfMonth2);
                        
                        // 确保结束日期不早于开始日期
                        if (endDate.before(startDate)) {
                            Calendar temp = (Calendar) startDate.clone();
                            startDate = endDate;
                            endDate = temp;
                        }
                        
                        updateTitleText();
                        loadSchedules();
                    },
                    endDate.get(Calendar.YEAR),
                    endDate.get(Calendar.MONTH),
                    endDate.get(Calendar.DAY_OF_MONTH)
                );
                
                endDatePicker.show();
            },
            startDate.get(Calendar.YEAR),
            startDate.get(Calendar.MONTH),
            startDate.get(Calendar.DAY_OF_MONTH)
        );
        
        startDatePicker.show();
    }

    private void loadSchedules() {
        if (!isFragmentActive || getContext() == null) return;
        
        new Thread(() -> {
            List<Schedule> schedules = getSchedulesByDateRange();
            
            if (getActivity() != null && isFragmentActive) {
                getActivity().runOnUiThread(() -> {
                    adapter.setData(schedules);
                    if (swipeRefreshLayout.isRefreshing()) {
                        swipeRefreshLayout.setRefreshing(false);
                    }
                });
            }
        }).start();
    }

    private List<Schedule> getSchedulesByDateRange() {
        if (dbHelper == null) return new ArrayList<>();
        
        List<Schedule> schedules = new ArrayList<>();
        
        // 克隆开始日期，避免修改原始值
        Calendar current = (Calendar) startDate.clone();
        
        // 遍历日期范围
        while (!current.after(endDate)) {
            List<Schedule> daySchedules = dbHelper.getSchedulesByDate(current);
            schedules.addAll(daySchedules);
            current.add(Calendar.DATE, 1);
        }
        
        return schedules;
    }

    private void refreshSchedules() {
        loadSchedules();
    }

    @Override
    public void onResume() {
        super.onResume();
        isFragmentActive = true;
        loadSchedules();
    }

    @Override
    public void onPause() {
        super.onPause();
        isFragmentActive = false;
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        isFragmentActive = false;
        if (dbHelper != null) {
            dbHelper.close();
            dbHelper = null;
        }
    }
} 