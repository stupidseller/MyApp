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
import java.util.Calendar;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Locale;
import android.widget.FrameLayout;

public class WeekViewFragment extends Fragment {
    private LinearLayout weekContainer;
    private LinearLayout weekDayHeaderContainer;
    private Calendar currentDate;
    private SimpleDateFormat dateFormat;
    private SimpleDateFormat weekDayFormat;
    private DatabaseHelper dbHelper;
    private static final int TIME_SLOT_HEIGHT = 60; // dp
    private Button weekPrevBtn, weekNextBtn, weekTodayBtn;
    private boolean isFragmentActive = true;

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        isFragmentActive = true;
        View view = inflater.inflate(R.layout.fragment_week_view, container, false);
        
        weekContainer = view.findViewById(R.id.weekContainer);
        weekDayHeaderContainer = view.findViewById(R.id.weekDayHeaderContainer);
        weekPrevBtn = view.findViewById(R.id.weekPrevBtn);
        weekNextBtn = view.findViewById(R.id.weekNextBtn);
        weekTodayBtn = view.findViewById(R.id.weekTodayBtn);
        
        currentDate = Calendar.getInstance();
        dateFormat = new SimpleDateFormat("MM-dd", Locale.getDefault());
        weekDayFormat = new SimpleDateFormat("E", Locale.getDefault());
        dbHelper = new DatabaseHelper(getContext());
        
        // 调整到本周的周一
        while (currentDate.get(Calendar.DAY_OF_WEEK) != Calendar.MONDAY) {
            currentDate.add(Calendar.DAY_OF_MONTH, -1);
        }
        
        // 设置按钮点击事件
        weekPrevBtn.setOnClickListener(v -> {
            currentDate.add(Calendar.WEEK_OF_YEAR, -1);
            updateWeekView();
        });
        
        weekNextBtn.setOnClickListener(v -> {
            currentDate.add(Calendar.WEEK_OF_YEAR, 1);
            updateWeekView();
        });
        
        weekTodayBtn.setOnClickListener(v -> {
            currentDate = Calendar.getInstance();
            while (currentDate.get(Calendar.DAY_OF_WEEK) != Calendar.MONDAY) {
                currentDate.add(Calendar.DAY_OF_MONTH, -1);
            }
            updateWeekView();
        });
        
        updateWeekView();
        return view;
    }

    private void updateWeekView() {
        if (!isFragmentActive || getContext() == null) return;
        
        Calendar tempDate = (Calendar) currentDate.clone();
        
        // 清除已有的视图
        weekContainer.removeAllViews();
        weekDayHeaderContainer.removeAllViews();
        
        // 添加时间轴列的空标题位置
        TextView emptyHeaderView = new TextView(getContext());
        emptyHeaderView.setLayoutParams(new LinearLayout.LayoutParams(
            dpToPx(50), ViewGroup.LayoutParams.WRAP_CONTENT));
        weekDayHeaderContainer.addView(emptyHeaderView);
        
        // 添加时间轴列
        View timeColumn = createTimeColumn();
        weekContainer.addView(timeColumn);
        
        // 添加一周的日期列
        for (int i = 0; i < 7; i++) {
            // 创建日期头部
            View headerView = createDayHeader(tempDate);
            LinearLayout.LayoutParams headerParams = new LinearLayout.LayoutParams(
                0, ViewGroup.LayoutParams.WRAP_CONTENT, 1);
            weekDayHeaderContainer.addView(headerView, headerParams);
            
            // 创建日期列
            View dayColumn = createDayColumn(tempDate);
            weekContainer.addView(dayColumn);
            
            tempDate.add(Calendar.DAY_OF_MONTH, 1);
        }
    }

    private View createDayHeader(Calendar date) {
        View headerView = LayoutInflater.from(getContext()).inflate(
            R.layout.calendar_day_item, null);
            
        TextView dayText = headerView.findViewById(R.id.dayText);
        TextView lunarText = headerView.findViewById(R.id.lunarText);
        
        // 设置日期
        dayText.setText(String.valueOf(date.get(Calendar.DAY_OF_MONTH)));
        
        // 设置农历
        try {
            String lunarDate = LunarCalendarUtil.getLunarDate(date);
            lunarText.setText(lunarDate);
        } catch (Exception e) {
            e.printStackTrace();
            lunarText.setText("");
        }
        
        // 设置样式
        if (isToday(date)) {
            dayText.setBackgroundResource(R.drawable.today_background);
            dayText.setTextColor(getResources().getColor(android.R.color.white));
        } else if (isWeekend(date)) {
            dayText.setTextColor(getResources().getColor(android.R.color.holo_red_light));
        }
        
        // 添加点击事件
        headerView.setOnClickListener(v -> {
            // 获取当天的日程
            List<Schedule> schedules = dbHelper.getSchedulesByDate(date);
            
            if (!schedules.isEmpty()) {
                // 如果有日程，显示第一个日程的详情
                Schedule schedule = schedules.get(0);
                Intent intent = new Intent(getContext(), ScheduleDetailActivity.class);
                intent.putExtra("schedule_id", schedule.getId());
                startActivity(intent);
            } else {
                // 如果没有日程，跳转到创建日程页面
                Intent intent = new Intent(getContext(), EditScheduleActivity.class);
                Calendar selectedDate = (Calendar) date.clone();
                intent.putExtra("selected_date", selectedDate.getTimeInMillis());
                startActivity(intent);
            }
        });
        
        return headerView;
    }

    private boolean isWeekend(Calendar date) {
        int dayOfWeek = date.get(Calendar.DAY_OF_WEEK);
        return dayOfWeek == Calendar.SATURDAY || dayOfWeek == Calendar.SUNDAY;
    }

    @Override
    public void onResume() {
        super.onResume();
        isFragmentActive = true;
        updateWeekView();
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

    private View createTimeColumn() {
        LinearLayout column = new LinearLayout(getContext());
        column.setOrientation(LinearLayout.VERTICAL);
        column.setLayoutParams(new LinearLayout.LayoutParams(
            dpToPx(50), 
            ViewGroup.LayoutParams.MATCH_PARENT
        ));
        
        // 添加时间标签
        for (int hour = 0; hour < 24; hour++) {
            TextView timeSlot = new TextView(getContext());
            timeSlot.setLayoutParams(new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                dpToPx(TIME_SLOT_HEIGHT)
            ));
            
            // 使用24小时制格式显示时间
            timeSlot.setText(String.format(Locale.getDefault(), "%02d:00", hour));
            
            // 设置文本样式
            timeSlot.setTextSize(12);
            timeSlot.setTextColor(getResources().getColor(android.R.color.darker_gray));
            timeSlot.setGravity(android.view.Gravity.CENTER_VERTICAL | android.view.Gravity.END);
            timeSlot.setPadding(dpToPx(4), dpToPx(4), dpToPx(8), dpToPx(4));
            
            // 设置上边框
            View divider = new View(getContext());
            divider.setLayoutParams(new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, 1));
            divider.setBackgroundColor(getResources().getColor(android.R.color.darker_gray));
            
            // 添加分隔线和时间标签
            LinearLayout hourContainer = new LinearLayout(getContext());
            hourContainer.setOrientation(LinearLayout.VERTICAL);
            hourContainer.setLayoutParams(new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                dpToPx(TIME_SLOT_HEIGHT)
            ));
            
            hourContainer.addView(divider);
            hourContainer.addView(timeSlot);
            
            column.addView(hourContainer);
        }
        
        return column;
    }

    private View createDayColumn(Calendar date) {
        FrameLayout column = new FrameLayout(getContext());
        column.setLayoutParams(new LinearLayout.LayoutParams(
            0,
            ViewGroup.LayoutParams.MATCH_PARENT,
            1
        ));
        
        // 创建时间槽容器
        LinearLayout timeSlotContainer = new LinearLayout(getContext());
        timeSlotContainer.setOrientation(LinearLayout.VERTICAL);
        timeSlotContainer.setLayoutParams(new LinearLayout.LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT,
            ViewGroup.LayoutParams.WRAP_CONTENT
        ));
        
        // 获取当天的日程和节假日
        List<Schedule> schedules = dbHelper.getSchedulesByDate(date);
        List<Holiday> holidays = null;
        try {
            holidays = dbHelper.getHolidaysForDate(
                date.get(Calendar.YEAR),
                date.get(Calendar.MONTH) + 1,
                date.get(Calendar.DAY_OF_MONTH)
            );
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        // 添加时间槽背景
        for (int hour = 0; hour < 24; hour++) {
            View timeSlot = new View(getContext());
            timeSlot.setLayoutParams(new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                dpToPx(TIME_SLOT_HEIGHT)
            ));
            
            // 根据是否为当前日期设置不同的背景
            if (isToday(date)) {
                timeSlot.setBackgroundResource(R.drawable.today_time_slot_background);
            } else {
                timeSlot.setBackgroundResource(R.drawable.time_slot_background);
            }
            
            timeSlotContainer.addView(timeSlot);
        }
        
        // 将时间槽容器添加到列中
        column.addView(timeSlotContainer);
        
        // 在顶部添加全天日程
        LinearLayout allDayContainer = new LinearLayout(getContext());
        allDayContainer.setOrientation(LinearLayout.VERTICAL);
        allDayContainer.setLayoutParams(new FrameLayout.LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT,
            ViewGroup.LayoutParams.WRAP_CONTENT
        ));
        
        boolean hasAllDaySchedules = false;
        
        // 先添加全天日程
        for (Schedule schedule : schedules) {
            if (schedule.isAllDay()) {
                hasAllDaySchedules = true;
                ScheduleView scheduleView = new ScheduleView(getContext(), schedule);
                
                LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT,
                    ViewGroup.LayoutParams.WRAP_CONTENT
                );
                params.setMargins(dpToPx(4), dpToPx(2), dpToPx(4), dpToPx(2));
                scheduleView.setLayoutParams(params);
                
                // 添加点击事件
                scheduleView.setOnClickListener(v -> {
                    Intent intent = new Intent(getContext(), ScheduleDetailActivity.class);
                    intent.putExtra("schedule_id", schedule.getId());
                    startActivity(intent);
                });
                
                allDayContainer.addView(scheduleView);
            }
        }
        
        if (hasAllDaySchedules) {
            column.addView(allDayContainer);
        }
        
        // 添加按时间日程视图
        for (Schedule schedule : schedules) {
            if (!schedule.isAllDay()) {
                ScheduleView scheduleView = new ScheduleView(getContext(), schedule);
                
                // 计算日程在时间轴上的位置
                int startHour = schedule.getStartTime().get(Calendar.HOUR_OF_DAY);
                int startMinute = schedule.getStartTime().get(Calendar.MINUTE);
                int endHour = schedule.getEndTime().get(Calendar.HOUR_OF_DAY);
                int endMinute = schedule.getEndTime().get(Calendar.MINUTE);
                
                // 计算顶部边距（相对于时间轴的位置）
                int topMargin = (startHour * 60 + startMinute) * dpToPx(TIME_SLOT_HEIGHT) / 60;
                
                // 计算日程视图的高度
                int duration = ((endHour * 60 + endMinute) - (startHour * 60 + startMinute));
                int height = Math.max(dpToPx(30), duration * dpToPx(TIME_SLOT_HEIGHT) / 60); // 确保最小高度
                
                // 设置日程视图的布局参数
                FrameLayout.LayoutParams params = new FrameLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT,
                    height
                );
                params.topMargin = topMargin;
                params.leftMargin = dpToPx(4);
                params.rightMargin = dpToPx(4);
                scheduleView.setLayoutParams(params);
                
                // 添加点击事件
                scheduleView.setOnClickListener(v -> {
                    Intent intent = new Intent(getContext(), ScheduleDetailActivity.class);
                    intent.putExtra("schedule_id", schedule.getId());
                    startActivity(intent);
                });
                
                column.addView(scheduleView);
            }
        }
        
        // 如果是节假日，添加节假日标记
        if (holidays != null && !holidays.isEmpty()) {
            Holiday holiday = holidays.get(0);
            if (holiday != null) {
                TextView holidayText = new TextView(getContext());
                holidayText.setText(holiday.getName());
                holidayText.setTextColor(getResources().getColor(android.R.color.holo_red_light));
                holidayText.setTextSize(10);
                holidayText.setGravity(android.view.Gravity.CENTER);
                holidayText.setPadding(0, dpToPx(2), 0, dpToPx(2));
                
                // 将节假日标记添加到顶部
                column.addView(holidayText, 0);
            }
        }
        
        return column;
    }
    
    private boolean isToday(Calendar date) {
        Calendar today = Calendar.getInstance();
        return date.get(Calendar.YEAR) == today.get(Calendar.YEAR)
            && date.get(Calendar.MONTH) == today.get(Calendar.MONTH)
            && date.get(Calendar.DAY_OF_MONTH) == today.get(Calendar.DAY_OF_MONTH);
    }
    
    private int dpToPx(int dp) {
        float density = getResources().getDisplayMetrics().density;
        return Math.round(dp * density);
    }
} 