package com.lee.myapplication.weather;

import android.content.Context;
import android.graphics.drawable.Drawable;
import androidx.core.content.ContextCompat;
import com.lee.myapplication.R;

public class WeatherIconUtil {
    public static int getWeatherIconResource(String iconCode) {
        switch (iconCode) {
            // 晴
            case "100":
                return R.drawable.ic_weather_sunny;
            // 多云
            case "101":
            case "102":
            case "103":
                return R.drawable.ic_weather_cloudy;
            // 阴
            case "104":
                return R.drawable.ic_weather_overcast;
            // 雨
            case "300":
            case "301":
            case "302":
            case "303":
            case "304":
            case "305":
            case "306":
            case "307":
            case "308":
            case "309":
            case "310":
            case "311":
            case "312":
            case "313":
            case "314":
            case "315":
            case "316":
            case "317":
            case "318":
            case "399":
                return R.drawable.ic_weather_rain;
            // 雪
            case "400":
            case "401":
            case "402":
            case "403":
            case "404":
            case "405":
            case "406":
            case "407":
            case "408":
            case "409":
            case "410":
            case "499":
                return R.drawable.ic_weather_snow;
            // 雾
            case "500":
            case "501":
            case "502":
            case "503":
            case "504":
            case "507":
            case "508":
            case "509":
            case "510":
            case "511":
            case "512":
            case "513":
            case "514":
            case "515":
                return R.drawable.ic_weather_fog;
            // 默认
            default:
                return R.drawable.ic_weather_unknown;
        }
    }
} 