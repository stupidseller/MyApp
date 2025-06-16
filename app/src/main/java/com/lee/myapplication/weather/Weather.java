package com.lee.myapplication.weather;

public class Weather {
    private String temperature;    // 温度
    private String weatherDesc;    // 天气描述
    private String weatherIcon;    // 天气图标代码
    private String humidity;       // 湿度
    private String windSpeed;      // 风速
    private String windDir;        // 风向
    private long updateTime;       // 更新时间

    public Weather() {}

    // Getters and Setters
    public String getTemperature() { return temperature; }
    public void setTemperature(String temperature) { this.temperature = temperature; }

    public String getWeatherDesc() { return weatherDesc; }
    public void setWeatherDesc(String weatherDesc) { this.weatherDesc = weatherDesc; }

    public String getWeatherIcon() { return weatherIcon; }
    public void setWeatherIcon(String weatherIcon) { this.weatherIcon = weatherIcon; }

    public String getHumidity() { return humidity; }
    public void setHumidity(String humidity) { this.humidity = humidity; }

    public String getWindSpeed() { return windSpeed; }
    public void setWindSpeed(String windSpeed) { this.windSpeed = windSpeed; }

    public String getWindDir() { return windDir; }
    public void setWindDir(String windDir) { this.windDir = windDir; }

    public long getUpdateTime() { return updateTime; }
    public void setUpdateTime(long updateTime) { this.updateTime = updateTime; }
} 