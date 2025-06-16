package com.lee.myapplication;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.widget.GridView;
import android.widget.TextView;
import android.widget.Button;
import android.app.DatePickerDialog;
import androidx.fragment.app.Fragment;
import androidx.core.view.GestureDetectorCompat;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import java.util.Calendar;
import java.util.ArrayList;
import java.util.List;

public class MonthViewFragment extends Fragment implements View.OnTouchListener {
    private GridView calendarGrid;
    private TextView monthYearText;
    private Calendar currentDate;
    private DatabaseHelper dbHelper;
    private FloatingActionButton fab;
    private GestureDetectorCompat gestureDetector;
    private Button prevMonthBtn, nextMonthBtn, selectDateBtn, todayBtn;
    private Thread backgroundThread;
    private boolean isFragmentActive = true;

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        isFragmentActive = true;
        
        View view = inflater.inflate(R.layout.fragment_month_view, container, false);
        
        calendarGrid = view.findViewById(R.id.calendarGrid);
        monthYearText = view.findViewById(R.id.monthYearText);
        fab = view.findViewById(R.id.fab);
        prevMonthBtn = view.findViewById(R.id.prevMonthBtn);
        nextMonthBtn = view.findViewById(R.id.nextMonthBtn);
        selectDateBtn = view.findViewById(R.id.selectDateBtn);
        todayBtn = view.findViewById(R.id.todayBtn);
        
        currentDate = Calendar.getInstance();
        dbHelper = new DatabaseHelper(getContext());
        
        // 初始化手势检测器
        gestureDetector = new GestureDetectorCompat(getContext(), new GestureDetector.SimpleOnGestureListener() {
            @Override
            public boolean onFling(MotionEvent e1, MotionEvent e2, float velocityX, float velocityY) {
                if (Math.abs(velocityX) > Math.abs(velocityY)) {
                    if (e1.getX() - e2.getX() > 100) {
                        // 向左滑动，下一个月
                        currentDate.add(Calendar.MONTH, 1);
                        updateCalendarView();
                        return true;
                    } else if (e2.getX() - e1.getX() > 100) {
                        // 向右滑动，上一个月
                        currentDate.add(Calendar.MONTH, -1);
                        updateCalendarView();
                        return true;
                    }
                }
                return false;
            }
        });
        
        // 设置触摸监听器
        view.setOnTouchListener(this);
        
        // 设置月份导航按钮
        prevMonthBtn.setOnClickListener(v -> {
            currentDate.add(Calendar.MONTH, -1);
            updateCalendarView();
        });
        
        nextMonthBtn.setOnClickListener(v -> {
            currentDate.add(Calendar.MONTH, 1);
            updateCalendarView();
        });
        
        // 设置今天按钮
        todayBtn.setOnClickListener(v -> {
            currentDate = Calendar.getInstance(); // 重置为当前日期
            updateCalendarView();
        });
        
        // 设置日期选择按钮
        selectDateBtn.setOnClickListener(v -> showDatePickerDialog());
        
        // 使用post延迟初始化日历，让UI先绘制完成
        view.post(this::updateCalendarView);
        setupFab();
        
        return view;
    }

    @Override
    public void onResume() {
        super.onResume();
        isFragmentActive = true;
        updateCalendarView();
    }
    
    @Override
    public void onPause() {
        super.onPause();
        isFragmentActive = false;
        if (backgroundThread != null && backgroundThread.isAlive()) {
            try {
                backgroundThread.join(100);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        isFragmentActive = false;
        if (backgroundThread != null && backgroundThread.isAlive()) {
            try {
                backgroundThread.join(300);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        
        if (dbHelper != null) {
            dbHelper.close();
            dbHelper = null;
        }
    }

    private void showDatePickerDialog() {
        DatePickerDialog datePickerDialog = new DatePickerDialog(
            getContext(),
            (view, year, month, dayOfMonth) -> {
                currentDate.set(year, month, dayOfMonth);
                updateCalendarView();
            },
            currentDate.get(Calendar.YEAR),
            currentDate.get(Calendar.MONTH),
            currentDate.get(Calendar.DAY_OF_MONTH)
        );
        datePickerDialog.show();
    }

    @Override
    public boolean onTouch(View v, MotionEvent event) {
        return gestureDetector.onTouchEvent(event);
    }

    private void setupFab() {
        fab.setOnClickListener(v -> {
            Intent intent = new Intent(getContext(), EditScheduleActivity.class);
            startActivity(intent);
        });
    }

    private void updateCalendarView() {
        if (!isFragmentActive) return;
        
        // 设置月份标题
        String monthYear = String.format("%d年%d月", 
            currentDate.get(Calendar.YEAR),
            currentDate.get(Calendar.MONTH) + 1);
        monthYearText.setText(monthYear);

        // 获取当月的天数
        List<CalendarDay> days = getMonthDays();
        
        // 设置适配器
        CalendarAdapter adapter = new CalendarAdapter(getContext(), days);
        calendarGrid.setAdapter(adapter);
        
        // 设置日期点击事件
        calendarGrid.setOnItemClickListener((parent, view, position, id) -> {
            CalendarDay day = (CalendarDay) parent.getItemAtPosition(position);
            showDaySchedules(day);
        });
        
        if (backgroundThread != null && backgroundThread.isAlive()) {
            try {
                backgroundThread.join(100);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        
        backgroundThread = new Thread(() -> {
            final List<CalendarDay> daysToProcess = new ArrayList<>(days);
            
            Calendar monthStart = (Calendar) currentDate.clone();
            monthStart.set(Calendar.DAY_OF_MONTH, 1);
            monthStart.set(Calendar.HOUR_OF_DAY, 0);
            monthStart.set(Calendar.MINUTE, 0);
            
            Calendar monthEnd = (Calendar) monthStart.clone();
            monthEnd.add(Calendar.MONTH, 1);
            monthEnd.add(Calendar.DAY_OF_MONTH, -1);
            monthEnd.set(Calendar.HOUR_OF_DAY, 23);
            monthEnd.set(Calendar.MINUTE, 59);
            
            for (CalendarDay day : daysToProcess) {
                if (!isFragmentActive || getContext() == null) {
                    return;
                }
                
                if (dbHelper == null) {
                    return;
                }
                
                Calendar dayDate = Calendar.getInstance();
                dayDate.set(day.getYear(), day.getMonth(), day.getDay());
                
                try {
                    List<Schedule> schedules = dbHelper.getSchedulesByDate(dayDate);
                    day.setSchedules(schedules);
                    
                    if (day.isCurrentMonth()) {
                        List<Holiday> holidays = dbHelper.getHolidaysForDate(day.getYear(), day.getMonth() + 1, day.getDay());
                        day.setHolidays(holidays);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    return;
                }
                
                if (daysToProcess.indexOf(day) % 5 == 0) {
                    if (isFragmentActive && getActivity() != null) {
                        final int processedDays = daysToProcess.indexOf(day);
                        getActivity().runOnUiThread(() -> {
                            if (isFragmentActive && calendarGrid != null && calendarGrid.getAdapter() != null) {
                                ((CalendarAdapter)calendarGrid.getAdapter()).notifyDataSetChanged();
                            }
                        });
                    } else {
                        return;
                    }
                    
                    try {
                        Thread.sleep(10);
                    } catch (InterruptedException e) {
                        return;
                    }
                }
            }
            
            if (isFragmentActive && getActivity() != null) {
                getActivity().runOnUiThread(() -> {
                    if (isFragmentActive && calendarGrid != null && calendarGrid.getAdapter() != null) {
                        ((CalendarAdapter)calendarGrid.getAdapter()).notifyDataSetChanged();
                    }
                });
            }
        });
        
        backgroundThread.start();
    }

    private List<CalendarDay> getMonthDays() {
        List<CalendarDay> days = new ArrayList<>();
        Calendar calendar = (Calendar) currentDate.clone();
        
        // 设置为当月第一天
        calendar.set(Calendar.DAY_OF_MONTH, 1);
        
        // 获取当月第一天是星期几
        int firstDayOfWeek = calendar.get(Calendar.DAY_OF_WEEK) - 1;
        
        // 添加上月的剩余天数
        calendar.add(Calendar.DAY_OF_MONTH, -firstDayOfWeek);
        
        // 填充日历网格（6周，每周7天）
        for (int i = 0; i < 42; i++) {
            CalendarDay day = new CalendarDay(
                calendar.get(Calendar.YEAR),
                calendar.get(Calendar.MONTH),
                calendar.get(Calendar.DAY_OF_MONTH)
            );
            
            // 设置是否是当前月
            day.setCurrentMonth(calendar.get(Calendar.MONTH) == currentDate.get(Calendar.MONTH));
            
            // 设置是否是今天
            if (isToday(calendar)) {
                day.setToday(true);
            }
            
            days.add(day);
            calendar.add(Calendar.DAY_OF_MONTH, 1);
        }
        
        return days;
    }
    
    private boolean isToday(Calendar date) {
        Calendar today = Calendar.getInstance();
        return date.get(Calendar.YEAR) == today.get(Calendar.YEAR)
            && date.get(Calendar.MONTH) == today.get(Calendar.MONTH)
            && date.get(Calendar.DAY_OF_MONTH) == today.get(Calendar.DAY_OF_MONTH);
    }
    
    private void showDaySchedules(CalendarDay day) {
        // 如果该日期有日程，显示第一个日程的详情
        if (!day.getSchedules().isEmpty()) {
            Schedule schedule = day.getSchedules().get(0);
            Intent intent = new Intent(getContext(), ScheduleDetailActivity.class);
            intent.putExtra("schedule_id", schedule.getId());
            startActivity(intent);
        } else {
            // 如果没有日程，跳转到创建日程页面，并设置选中的日期
            Intent intent = new Intent(getContext(), EditScheduleActivity.class);
            Calendar selectedDate = Calendar.getInstance();
            selectedDate.set(day.getYear(), day.getMonth(), day.getDay());
            intent.putExtra("selected_date", selectedDate.getTimeInMillis());
            startActivity(intent);
        }
    }
} 