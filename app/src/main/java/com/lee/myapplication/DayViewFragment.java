package com.lee.myapplication;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import java.util.Calendar;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Locale;
import java.util.ArrayList;

public class DayViewFragment extends Fragment {
    private TextView dateText;
    private LinearLayout timeSlotContainer;
    private Calendar currentDate;
    private SimpleDateFormat dateFormat;
    private DatabaseHelper dbHelper;
    private FloatingActionButton fab;
    private Button dayPrevBtn, dayNextBtn, dayTodayBtn;
    private boolean isFragmentActive = true;

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        isFragmentActive = true;
        View view = inflater.inflate(R.layout.fragment_day_view, container, false);
        
        dateText = view.findViewById(R.id.dateText);
        timeSlotContainer = view.findViewById(R.id.timeSlotContainer);
        fab = view.findViewById(R.id.fab);
        dayPrevBtn = view.findViewById(R.id.dayPrevBtn);
        dayNextBtn = view.findViewById(R.id.dayNextBtn);
        dayTodayBtn = view.findViewById(R.id.dayTodayBtn);
        
        currentDate = Calendar.getInstance();
        dateFormat = new SimpleDateFormat("yyyy年MM月dd日 E", Locale.getDefault());
        dbHelper = new DatabaseHelper(getContext());
        
        // 设置按钮点击事件
        dayPrevBtn.setOnClickListener(v -> {
            currentDate.add(Calendar.DAY_OF_MONTH, -1);
            updateDayView();
        });
        
        dayNextBtn.setOnClickListener(v -> {
            currentDate.add(Calendar.DAY_OF_MONTH, 1);
            updateDayView();
        });
        
        dayTodayBtn.setOnClickListener(v -> {
            currentDate = Calendar.getInstance(); // 重置为当前日期
            updateDayView();
        });
        
        updateDayView();
        setupFab();
        
        return view;
    }

    @Override
    public void onResume() {
        super.onResume();
        isFragmentActive = true;
        // 每次回到界面时更新日视图，以反映可能的更改
        updateDayView();
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

    private void setupFab() {
        fab.setOnClickListener(v -> {
            Intent intent = new Intent(getContext(), EditScheduleActivity.class);
            intent.putExtra("selected_date", currentDate.getTimeInMillis());
            startActivity(intent);
        });
    }

    private void updateDayView() {
        if (!isFragmentActive || getContext() == null) return;
        
        // 设置日期
        dateText.setText(dateFormat.format(currentDate.getTime()));
        
        // 清除已有的时间槽
        timeSlotContainer.removeAllViews();
        
        try {
            // 获取当天的日程
            List<Schedule> schedules = new ArrayList<>();
            
            if (dbHelper != null) {
                schedules = dbHelper.getSchedulesByDate(currentDate);
            }
            
            // 添加24小时的时间槽
            for (int hour = 0; hour < 24; hour++) {
                View timeSlotView = LayoutInflater.from(getContext()).inflate(
                    R.layout.day_time_slot_item, timeSlotContainer, false);
                    
                TextView timeText = timeSlotView.findViewById(R.id.timeText);
                LinearLayout scheduleContainer = timeSlotView.findViewById(R.id.scheduleContainer);
                
                timeText.setText(String.format(Locale.getDefault(), "%02d:00", hour));
                
                // 添加该时间段的日程
                for (Schedule schedule : schedules) {
                    int startHour = schedule.getStartTime().get(Calendar.HOUR_OF_DAY);
                    int endHour = schedule.getEndTime().get(Calendar.HOUR_OF_DAY);
                    
                    if (startHour <= hour && hour < endHour) {
                        ScheduleView scheduleView = new ScheduleView(getContext(), schedule);
                        scheduleContainer.addView(scheduleView);
                    }
                }
                
                timeSlotContainer.addView(timeSlotView);
                
                // 添加分隔线
                View divider = new View(getContext());
                divider.setLayoutParams(new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT, 1));
                divider.setBackgroundColor(getResources().getColor(android.R.color.darker_gray));
                timeSlotContainer.addView(divider);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
} 