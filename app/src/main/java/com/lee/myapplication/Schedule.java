package com.lee.myapplication;

import java.util.Calendar;

public class Schedule {
    private long id;
    private String title;
    private String description;
    private Calendar startTime;
    private Calendar endTime;
    private String category;  // 工作、学习、生活等
    private boolean isAllDay;
    private String repeatType;  // 不重复、每天、每周、每月
    private int reminderMinutes;  // 提前提醒的分钟数
    private int color;  // 日程颜色

    public Schedule() {
        startTime = Calendar.getInstance();
        endTime = Calendar.getInstance();
        endTime.add(Calendar.HOUR_OF_DAY, 1);
    }

    // Getters and Setters
    public long getId() { return id; }
    public void setId(long id) { this.id = id; }

    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }

    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }

    public Calendar getStartTime() { return startTime; }
    public void setStartTime(Calendar startTime) { this.startTime = startTime; }

    public Calendar getEndTime() { return endTime; }
    public void setEndTime(Calendar endTime) { this.endTime = endTime; }

    public String getCategory() { return category; }
    public void setCategory(String category) { this.category = category; }

    public boolean isAllDay() { return isAllDay; }
    public void setAllDay(boolean allDay) { isAllDay = allDay; }

    public String getRepeatType() { return repeatType; }
    public void setRepeatType(String repeatType) { this.repeatType = repeatType; }

    public int getReminderMinutes() { return reminderMinutes; }
    public void setReminderMinutes(int reminderMinutes) { this.reminderMinutes = reminderMinutes; }

    public int getColor() { return color; }
    public void setColor(int color) { this.color = color; }
} 