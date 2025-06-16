package com.lee.myapplication;

public class Holiday {
    private long id;
    private String name;        // 节日名称
    private int month;         // 月份
    private int day;          // 日期
    private boolean isLunar;  // 是否为农历节日
    private boolean isRestDay; // 是否为休息日
    private String description; // 节日描述

    public Holiday() {}

    public Holiday(String name, int month, int day, boolean isLunar, boolean isRestDay, String description) {
        this.name = name;
        this.month = month;
        this.day = day;
        this.isLunar = isLunar;
        this.isRestDay = isRestDay;
        this.description = description;
    }

    // Getters and Setters
    public long getId() { return id; }
    public void setId(long id) { this.id = id; }

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public int getMonth() { return month; }
    public void setMonth(int month) { this.month = month; }

    public int getDay() { return day; }
    public void setDay(int day) { this.day = day; }

    public boolean isLunar() { return isLunar; }
    public void setLunar(boolean lunar) { isLunar = lunar; }

    public boolean isRestDay() { return isRestDay; }
    public void setRestDay(boolean restDay) { isRestDay = restDay; }

    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }
} 