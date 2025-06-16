package com.lee.myapplication.weather;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import org.json.JSONObject;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class WeatherService {

    private static final String API_KEY = "b93e010c2e854ea5afdd1de97558";
    private static final String WEATHER_API_URL = "https://p263yvcpkn.re.qweathera0i.com/v7/weather/now";
    
    private static final String PREFS_NAME = "WeatherPrefs";
    private static final String LAST_WEATHER = "last_weather";
    private static final String LAST_LOCATION = "last_location";
    private static final long CACHE_DURATION = 30 * 60 * 1000; // 30分钟缓存

    private Context context;
    private ExecutorService executor;
    private Handler mainHandler;
    private SharedPreferences prefs;

    public interface WeatherCallback {
        void onWeatherReceived(Weather weather);
        void onError(String error);
    }

    public WeatherService(Context context) {
        this.context = context;
        this.executor = Executors.newSingleThreadExecutor();
        this.mainHandler = new Handler(Looper.getMainLooper());
        this.prefs = context.getSharedPreferences(PREFS_NAME, Context.MODE_PRIVATE);
    }

    public void getWeather(String location, WeatherCallback callback) {
        // 保存当前查询的位置
        prefs.edit().putString(LAST_LOCATION, location).apply();
        
        // 使用线程池执行网络请求
        executor.execute(() -> {
            try {
                String urlStr = String.format("%s?location=%s&key=%s", 
                    WEATHER_API_URL, location, API_KEY);
                URL url = new URL(urlStr);
                HttpURLConnection conn = (HttpURLConnection) url.openConnection();
                conn.setRequestMethod("GET");
                conn.setConnectTimeout(10000); // 设置连接超时
                conn.setReadTimeout(10000);    // 设置读取超时
                
                BufferedReader reader = new BufferedReader(
                    new InputStreamReader(conn.getInputStream()));
                StringBuilder response = new StringBuilder();
                String line;
                
                while ((line = reader.readLine()) != null) {
                    response.append(line);
                }
                reader.close();
                
                Weather weather = parseWeatherResponse(response.toString());
                weather.setUpdateTime(System.currentTimeMillis());
                
                // 保存到缓存
                saveWeatherToCache(weather);
                
                // 返回结果到主线程
                mainHandler.post(() -> callback.onWeatherReceived(weather));
                
            } catch (Exception e) {
                mainHandler.post(() -> callback.onError(e.getMessage()));
            }
        });
    }

    private Weather parseWeatherResponse(String response) throws Exception {
        JSONObject json = new JSONObject(response);
        if (json.getString("code").equals("200")) {
            JSONObject now = json.getJSONObject("now");
            
            Weather weather = new Weather();
            weather.setTemperature(now.getString("temp") + "°C");
            weather.setWeatherDesc(now.getString("text"));
            weather.setWeatherIcon(now.getString("icon"));
            weather.setHumidity(now.getString("humidity") + "%");
            weather.setWindSpeed(now.getString("windSpeed") + "km/h");
            weather.setWindDir(now.getString("windDir"));
            
            return weather;
        } else {
            throw new Exception("天气API返回错误：" + json.getString("code"));
        }
    }

    private void saveWeatherToCache(Weather weather) {
        JSONObject json = new JSONObject();
        try {
            json.put("temperature", weather.getTemperature());
            json.put("weatherDesc", weather.getWeatherDesc());
            json.put("weatherIcon", weather.getWeatherIcon());
            json.put("humidity", weather.getHumidity());
            json.put("windSpeed", weather.getWindSpeed());
            json.put("windDir", weather.getWindDir());
            json.put("updateTime", weather.getUpdateTime());
            
            prefs.edit().putString(LAST_WEATHER, json.toString()).apply();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 获取缓存的天气数据
     */
    public Weather getCachedWeather() {
        String cached = prefs.getString(LAST_WEATHER, null);
        if (cached != null) {
            try {
                JSONObject json = new JSONObject(cached);
                Weather weather = new Weather();
                weather.setTemperature(json.getString("temperature"));
                weather.setWeatherDesc(json.getString("weatherDesc"));
                weather.setWeatherIcon(json.getString("weatherIcon"));
                weather.setHumidity(json.getString("humidity"));
                weather.setWindSpeed(json.getString("windSpeed"));
                weather.setWindDir(json.getString("windDir"));
                weather.setUpdateTime(json.getLong("updateTime"));
                return weather;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    /**
     * 获取上次查询的位置
     */
    public String getLastLocation() {
        return prefs.getString(LAST_LOCATION, "101010100"); // 默认北京
    }

    /**
     * 检查是否需要更新天气数据
     * 如果没有缓存数据或者缓存数据已超过30分钟，则返回true
     */
    public boolean shouldUpdateWeather() {
        Weather cachedWeather = getCachedWeather();
        if (cachedWeather == null) {
            return true;
        }
        
        // 检查最后更新时间，如果超过缓存时间则更新
        long now = System.currentTimeMillis();
        return (now - cachedWeather.getUpdateTime() >= CACHE_DURATION);
    }
} 