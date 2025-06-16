package com.lee.myapplication;

import java.util.ArrayList;
import java.util.List;
import java.util.Calendar;

public class CalendarDay {
    private int year;
    private int month;
    private int day;
    private boolean isToday;
    private boolean isSelected;
    private boolean isCurrentMonth;
    private List<Schedule> schedules;
    private List<Holiday> holidays;

    public CalendarDay(int year, int month, int day) {
        this.year = year;
        this.month = month;
        this.day = day;
        this.schedules = new ArrayList<>();
        this.holidays = new ArrayList<>();
    }

    // Getters and Setters
    public int getYear() { return year; }
    public void setYear(int year) { this.year = year; }
    
    public int getMonth() { return month; }
    public void setMonth(int month) { this.month = month; }
    
    public int getDay() { return day; }
    public void setDay(int day) { this.day = day; }
    
    public boolean isToday() { return isToday; }
    public void setToday(boolean today) { isToday = today; }
    
    public boolean isSelected() { return isSelected; }
    public void setSelected(boolean selected) { isSelected = selected; }
    
    public boolean isCurrentMonth() { return isCurrentMonth; }
    public void setCurrentMonth(boolean currentMonth) { isCurrentMonth = currentMonth; }

    public List<Schedule> getSchedules() { return schedules; }
    public void setSchedules(List<Schedule> schedules) { this.schedules = schedules; }
    public void addSchedule(Schedule schedule) { this.schedules.add(schedule); }
    
    public List<Holiday> getHolidays() { return holidays; }
    public void setHolidays(List<Holiday> holidays) { this.holidays = holidays; }
    
    /**
     * 获取第一个节假日，如果没有则返回null
     */
    public Holiday getFirstHoliday() {
        if (holidays != null && !holidays.isEmpty()) {
            return holidays.get(0);
        }
        return null;
    }
    
    /**
     * 检查是否是休息日
     */
    public boolean isRestDay() {
        Holiday firstHoliday = getFirstHoliday();
        return firstHoliday != null && firstHoliday.isRestDay();
    }

    /**
     * 判断当天是否是周末（周六或周日）
     */
    public boolean isWeekend() {
        Calendar calendar = Calendar.getInstance();
        calendar.set(year, month, day);
        int dayOfWeek = calendar.get(Calendar.DAY_OF_WEEK);
        return dayOfWeek == Calendar.SATURDAY || dayOfWeek == Calendar.SUNDAY;
    }
} 