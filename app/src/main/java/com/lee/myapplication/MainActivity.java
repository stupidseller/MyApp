package com.lee.myapplication;

import android.Manifest;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.tabs.TabLayout;
import com.google.android.material.tabs.TabLayoutMediator;
import com.lee.myapplication.weather.Weather;
import com.lee.myapplication.weather.WeatherIconUtil;
import com.lee.myapplication.weather.WeatherService;
//import com.lee.myapplication.util.WeatherIconUtil;

public class MainActivity extends AppCompatActivity {
    private ViewPager2 viewPager;
    private TabLayout tabLayout;
    private WeatherService weatherService;
    private ImageView weatherIcon;
    private TextView weatherText;
    private TextView temperatureText;
    private static final int LOCATION_PERMISSION_REQUEST_CODE = 1001;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        initViews();
        
        // 使用post延迟初始化操作，让界面先显示出来
        viewPager.post(() -> {
            setupViewPager();
            setupWeatherService();
            checkLocationPermission();
        });
    }

    @Override
    protected void onResume() {
        super.onResume();
        // 在onResume中延迟检查天气更新，避免与UI渲染竞争
        new Handler().postDelayed(this::checkCachedWeatherAndUpdate, 500);
    }

    private void initViews() {
        viewPager = findViewById(R.id.viewPager);
        tabLayout = findViewById(R.id.tabLayout);
        weatherIcon = findViewById(R.id.weatherIcon);
        weatherText = findViewById(R.id.weatherText);
        temperatureText = findViewById(R.id.temperatureText);
        
        // 设置天气部分点击事件，弹出城市选择对话框
        View weatherContainer = findViewById(R.id.weatherContainer);
        weatherContainer.setOnClickListener(v -> showCityInputDialog());
    }

    private void setupViewPager() {
        // 使用setOffscreenPageLimit减少页面重建
        viewPager.setOffscreenPageLimit(3);
        
        CalendarPagerAdapter pagerAdapter = new CalendarPagerAdapter(this);
        viewPager.setAdapter(pagerAdapter);

        new TabLayoutMediator(tabLayout, viewPager,
            (tab, position) -> {
                switch (position) {
                    case 0:
                        tab.setText("月视图");
                        break;
                    case 1:
                        tab.setText("周视图");
                        break;
                    case 2:
                        tab.setText("日视图");
                        break;
                    case 3:
                        tab.setText("日程");
                        break;
                }
            }
        ).attach();
    }

    private void setupWeatherService() {
        weatherService = new WeatherService(this);
    }

    private void checkCachedWeatherAndUpdate() {
        // 先尝试显示缓存的天气数据
        Weather cachedWeather = weatherService.getCachedWeather();
        if (cachedWeather != null) {
            displayWeather(cachedWeather);
        }
        
        // 检查是否需要更新天气数据
        if (weatherService.shouldUpdateWeather()) {
            // 使用上次查询的位置或默认位置
            String location = weatherService.getLastLocation();
            updateWeatherAsync(location);
        }
    }

    private void updateWeatherAsync(String location) {
        // 使用异步方式获取天气，避免阻塞主线程
        new Thread(() -> {
            weatherService.getWeather(location, new WeatherService.WeatherCallback() {
                @Override
                public void onWeatherReceived(final Weather weather) {
                    // 确保在UI线程更新界面
                    runOnUiThread(() -> displayWeather(weather));
                }

                @Override
                public void onError(final String error) {
                    // 确保在UI线程显示错误
                    runOnUiThread(() -> {
                        // Toast.makeText(MainActivity.this, 
                        //     "获取天气信息失败: " + error, Toast.LENGTH_SHORT).show()
                        Log.e("WeatherService", "获取天气信息失败: " + error);
                    });
                }
            });
        }).start();
    }

    private void displayWeather(Weather weather) {
        if (weather == null) return;
        
        // 设置天气图标
        int iconResource = WeatherIconUtil.getWeatherIconResource(weather.getWeatherIcon());
        weatherIcon.setImageResource(iconResource);
        
        // 显示天气信息
        String weatherInfo = String.format("%s %s\n湿度: %s 风速: %s 风向: %s",
            weather.getWeatherDesc(),
            weather.getTemperature(),
            weather.getHumidity(),
            weather.getWindSpeed(),
            weather.getWindDir());
        weatherText.setText(weatherInfo);
        temperatureText.setText(weather.getTemperature());
    }

    private void checkLocationPermission() {
        if (ContextCompat.checkSelfPermission(this, 
                Manifest.permission.ACCESS_FINE_LOCATION) != PackageManager.PERMISSION_GRANTED) {
            ActivityCompat.requestPermissions(this,
                new String[]{Manifest.permission.ACCESS_FINE_LOCATION},
                LOCATION_PERMISSION_REQUEST_CODE);
        } else {
            String location = weatherService.getLastLocation();
            updateWeatherAsync(location);
        }
    }

    @Override
    public void onRequestPermissionsResult(int requestCode, 
            String[] permissions, int[] grantResults) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        if (requestCode == LOCATION_PERMISSION_REQUEST_CODE) {
            if (grantResults.length > 0 && grantResults[0] == PackageManager.PERMISSION_GRANTED) {
                String location = weatherService.getLastLocation();
                updateWeatherAsync(location);
            } else {
                Toast.makeText(this, "需要位置权限来获取天气信息", Toast.LENGTH_SHORT).show();
            }
        }
    }

    /**
     * 显示城市输入对话框
     */
    private void showCityInputDialog() {
        // 预设常用城市列表
        final String[] commonCities = {
            "北京", "上海", "广州", "深圳", "杭州",
            "南京", "武汉", "成都", "重庆", "西安"
        };
        final String[] cityCodes = {
            "101010100", "101020100", "101280101", "101280601", "101210101",
            "101190101", "101200101", "101270101", "101040100", "101110101"
        };

        // 创建对话框视图
        View dialogView = getLayoutInflater().inflate(R.layout.dialog_city_select, null);
        EditText cityInput = dialogView.findViewById(R.id.cityInput);
        ListView cityList = dialogView.findViewById(R.id.cityList);

        // 设置城市列表适配器
        ArrayAdapter<String> adapter = new ArrayAdapter<>(
            this, android.R.layout.simple_list_item_1, commonCities);
        cityList.setAdapter(adapter);

        // 创建对话框
        AlertDialog.Builder builder = new AlertDialog.Builder(this)
            .setTitle("选择或输入城市")
            .setView(dialogView)
            .setPositiveButton("确定", (dialog, which) -> {
                String cityName = cityInput.getText().toString().trim();
                if (!cityName.isEmpty()) {
                    // 这里简化处理，直接用城市名搜索，实际应用中需要转换为城市代码
                    searchWeatherByCity(cityName);
                }
            })
            .setNegativeButton("取消", null);

        AlertDialog dialog = builder.create();
        dialog.show();

        // 设置列表项点击事件
        cityList.setOnItemClickListener((parent, view, position, id) -> {
            // 选择预设城市，使用城市代码
            searchWeatherByCity(cityCodes[position]);
            dialog.dismiss();
        });
    }

    /**
     * 根据城市名称或城市代码查询天气
     */
    private void searchWeatherByCity(String location) {
        // 显示加载提示
        // Toast.makeText(this, "正在获取" + location + "的天气信息...", Toast.LENGTH_SHORT).show();
        
        // 检查输入的是城市名还是城市代码
        boolean isCode = true;
        for (char c : location.toCharArray()) {
            if (!Character.isDigit(c)) {
                isCode = false;
                break;
            }
        }
        
        // 如果是城市名，需要转换为城市代码
        final String cityLocation = isCode ? location : getCityCode(location);
        
        // 更新天气信息
        updateWeatherAsync(cityLocation);
    }
    
    /**
     * 简单的城市名到城市代码的转换（实际应用中应使用API或更完整的映射表）
     */
    private String getCityCode(String cityName) {
        // 这里是简化的映射表，实际应用中应该更完整或使用API
        switch (cityName) {
            case "北京": return "101010100";
            case "上海": return "101020100";
            case "广州": return "101280101";
            case "深圳": return "101280601";
            case "杭州": return "101210101";
            case "南京": return "101190101";
            case "武汉": return "101200101";
            case "成都": return "101270101";
            case "重庆": return "101040100";
            case "西安": return "101110101";
            default: return "101010100"; // 默认北京
        }
    }
}