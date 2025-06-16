.class public Lcom/lee/myapplication/weather/WeatherService;
.super Ljava/lang/Object;
.source "WeatherService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lee/myapplication/weather/WeatherService$WeatherCallback;
    }
.end annotation


# static fields
.field private static final API_KEY:Ljava/lang/String; = "b93e010c2e854ea5afdd1de575a97558"

.field private static final CACHE_DURATION:J = 0x1b7740L

.field private static final LAST_LOCATION:Ljava/lang/String; = "last_location"

.field private static final LAST_WEATHER:Ljava/lang/String; = "last_weather"

.field private static final PREFS_NAME:Ljava/lang/String; = "WeatherPrefs"

.field private static final WEATHER_API_URL:Ljava/lang/String; = "https://p263yvcpkn.re.qweathera0i.com/v7/weather/now"


# instance fields
.field private context:Landroid/content/Context;

.field private executor:Ljava/util/concurrent/ExecutorService;

.field private mainHandler:Landroid/os/Handler;

.field private prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/lee/myapplication/weather/WeatherService;->context:Landroid/content/Context;

    .line 39
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/lee/myapplication/weather/WeatherService;->executor:Ljava/util/concurrent/ExecutorService;

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lee/myapplication/weather/WeatherService;->mainHandler:Landroid/os/Handler;

    .line 41
    const-string v0, "WeatherPrefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/lee/myapplication/weather/WeatherService;->prefs:Landroid/content/SharedPreferences;

    .line 42
    return-void
.end method

.method static synthetic lambda$getWeather$0(Lcom/lee/myapplication/weather/WeatherService$WeatherCallback;Lcom/lee/myapplication/weather/Weather;)V
    .registers 2
    .param p0, "callback"    # Lcom/lee/myapplication/weather/WeatherService$WeatherCallback;
    .param p1, "weather"    # Lcom/lee/myapplication/weather/Weather;

    .line 76
    invoke-interface {p0, p1}, Lcom/lee/myapplication/weather/WeatherService$WeatherCallback;->onWeatherReceived(Lcom/lee/myapplication/weather/Weather;)V

    return-void
.end method

.method static synthetic lambda$getWeather$1(Lcom/lee/myapplication/weather/WeatherService$WeatherCallback;Ljava/lang/Exception;)V
    .registers 3
    .param p0, "callback"    # Lcom/lee/myapplication/weather/WeatherService$WeatherCallback;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 79
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/lee/myapplication/weather/WeatherService$WeatherCallback;->onError(Ljava/lang/String;)V

    return-void
.end method

.method private parseWeatherResponse(Ljava/lang/String;)Lcom/lee/myapplication/weather/Weather;
    .registers 7
    .param p1, "response"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 85
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "200"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 87
    const-string v1, "now"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 89
    .local v1, "now":Lorg/json/JSONObject;
    new-instance v2, Lcom/lee/myapplication/weather/Weather;

    invoke-direct {v2}, Lcom/lee/myapplication/weather/Weather;-><init>()V

    .line 90
    .local v2, "weather":Lcom/lee/myapplication/weather/Weather;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "temp"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u00b0C"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lee/myapplication/weather/Weather;->setTemperature(Ljava/lang/String;)V

    .line 91
    const-string v3, "text"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lee/myapplication/weather/Weather;->setWeatherDesc(Ljava/lang/String;)V

    .line 92
    const-string v3, "icon"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lee/myapplication/weather/Weather;->setWeatherIcon(Ljava/lang/String;)V

    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "humidity"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lee/myapplication/weather/Weather;->setHumidity(Ljava/lang/String;)V

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "windSpeed"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "km/h"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lee/myapplication/weather/Weather;->setWindSpeed(Ljava/lang/String;)V

    .line 95
    const-string v3, "windDir"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lee/myapplication/weather/Weather;->setWindDir(Ljava/lang/String;)V

    .line 97
    return-object v2

    .line 99
    .end local v1    # "now":Lorg/json/JSONObject;
    .end local v2    # "weather":Lcom/lee/myapplication/weather/Weather;
    :cond_8e
    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5929\u6c14API\u8fd4\u56de\u9519\u8bef\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private saveWeatherToCache(Lcom/lee/myapplication/weather/Weather;)V
    .registers 6
    .param p1, "weather"    # Lcom/lee/myapplication/weather/Weather;

    .line 104
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 106
    .local v0, "json":Lorg/json/JSONObject;
    :try_start_5
    const-string v1, "temperature"

    invoke-virtual {p1}, Lcom/lee/myapplication/weather/Weather;->getTemperature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    const-string v1, "weatherDesc"

    invoke-virtual {p1}, Lcom/lee/myapplication/weather/Weather;->getWeatherDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    const-string v1, "weatherIcon"

    invoke-virtual {p1}, Lcom/lee/myapplication/weather/Weather;->getWeatherIcon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    const-string v1, "humidity"

    invoke-virtual {p1}, Lcom/lee/myapplication/weather/Weather;->getHumidity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    const-string v1, "windSpeed"

    invoke-virtual {p1}, Lcom/lee/myapplication/weather/Weather;->getWindSpeed()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    const-string v1, "windDir"

    invoke-virtual {p1}, Lcom/lee/myapplication/weather/Weather;->getWindDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    const-string v1, "updateTime"

    invoke-virtual {p1}, Lcom/lee/myapplication/weather/Weather;->getUpdateTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 114
    iget-object v1, p0, Lcom/lee/myapplication/weather/WeatherService;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "last_weather"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_57} :catch_58

    .line 117
    goto :goto_5c

    .line 115
    :catch_58
    move-exception v1

    .line 116
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 118
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_5c
    return-void
.end method


# virtual methods
.method public getCachedWeather()Lcom/lee/myapplication/weather/Weather;
    .registers 7

    .line 124
    iget-object v0, p0, Lcom/lee/myapplication/weather/WeatherService;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "last_weather"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "cached":Ljava/lang/String;
    if-eqz v0, :cond_59

    .line 127
    :try_start_b
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 128
    .local v1, "json":Lorg/json/JSONObject;
    new-instance v3, Lcom/lee/myapplication/weather/Weather;

    invoke-direct {v3}, Lcom/lee/myapplication/weather/Weather;-><init>()V

    .line 129
    .local v3, "weather":Lcom/lee/myapplication/weather/Weather;
    const-string v4, "temperature"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lee/myapplication/weather/Weather;->setTemperature(Ljava/lang/String;)V

    .line 130
    const-string v4, "weatherDesc"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lee/myapplication/weather/Weather;->setWeatherDesc(Ljava/lang/String;)V

    .line 131
    const-string v4, "weatherIcon"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lee/myapplication/weather/Weather;->setWeatherIcon(Ljava/lang/String;)V

    .line 132
    const-string v4, "humidity"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lee/myapplication/weather/Weather;->setHumidity(Ljava/lang/String;)V

    .line 133
    const-string v4, "windSpeed"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lee/myapplication/weather/Weather;->setWindSpeed(Ljava/lang/String;)V

    .line 134
    const-string v4, "windDir"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lee/myapplication/weather/Weather;->setWindDir(Ljava/lang/String;)V

    .line 135
    const-string v4, "updateTime"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/lee/myapplication/weather/Weather;->setUpdateTime(J)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_54} :catch_55

    .line 136
    return-object v3

    .line 137
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v3    # "weather":Lcom/lee/myapplication/weather/Weather;
    :catch_55
    move-exception v1

    .line 138
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 141
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_59
    return-object v2
.end method

.method public getLastLocation()Ljava/lang/String;
    .registers 4

    .line 148
    iget-object v0, p0, Lcom/lee/myapplication/weather/WeatherService;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "last_location"

    const-string v2, "101010100"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWeather(Ljava/lang/String;Lcom/lee/myapplication/weather/WeatherService$WeatherCallback;)V
    .registers 5
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/lee/myapplication/weather/WeatherService$WeatherCallback;

    .line 46
    iget-object v0, p0, Lcom/lee/myapplication/weather/WeatherService;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_location"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 49
    iget-object v0, p0, Lcom/lee/myapplication/weather/WeatherService;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/lee/myapplication/weather/WeatherService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/lee/myapplication/weather/WeatherService$$ExternalSyntheticLambda0;-><init>(Lcom/lee/myapplication/weather/WeatherService;Ljava/lang/String;Lcom/lee/myapplication/weather/WeatherService$WeatherCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 82
    return-void
.end method

.method synthetic lambda$getWeather$2$com-lee-myapplication-weather-WeatherService(Ljava/lang/String;Lcom/lee/myapplication/weather/WeatherService$WeatherCallback;)V
    .registers 12
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/lee/myapplication/weather/WeatherService$WeatherCallback;

    .line 51
    :try_start_0
    const-string v0, "%s?location=%s&key=%s"

    const-string v1, "https://p263yvcpkn.re.qweathera0i.com/v7/weather/now"

    const-string v2, "b93e010c2e854ea5afdd1de575a97558"

    filled-new-array {v1, p1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "urlStr":Ljava/lang/String;
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 54
    .local v1, "url":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 55
    .local v2, "conn":Ljava/net/HttpURLConnection;
    const-string v3, "GET"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 56
    const/16 v3, 0x2710

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 57
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 59
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    .line 60
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 61
    .local v3, "reader":Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .local v4, "response":Ljava/lang/StringBuilder;
    :goto_39
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .local v6, "line":Ljava/lang/String;
    if-eqz v5, :cond_44

    .line 65
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_39

    .line 67
    :cond_44
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 69
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/lee/myapplication/weather/WeatherService;->parseWeatherResponse(Ljava/lang/String;)Lcom/lee/myapplication/weather/Weather;

    move-result-object v5

    .line 70
    .local v5, "weather":Lcom/lee/myapplication/weather/Weather;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/lee/myapplication/weather/Weather;->setUpdateTime(J)V

    .line 73
    invoke-direct {p0, v5}, Lcom/lee/myapplication/weather/WeatherService;->saveWeatherToCache(Lcom/lee/myapplication/weather/Weather;)V

    .line 76
    iget-object v7, p0, Lcom/lee/myapplication/weather/WeatherService;->mainHandler:Landroid/os/Handler;

    new-instance v8, Lcom/lee/myapplication/weather/WeatherService$$ExternalSyntheticLambda1;

    invoke-direct {v8, p2, v5}, Lcom/lee/myapplication/weather/WeatherService$$ExternalSyntheticLambda1;-><init>(Lcom/lee/myapplication/weather/WeatherService$WeatherCallback;Lcom/lee/myapplication/weather/Weather;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_63} :catch_65

    .line 80
    nop

    .end local v0    # "urlStr":Ljava/lang/String;
    .end local v1    # "url":Ljava/net/URL;
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "response":Ljava/lang/StringBuilder;
    .end local v5    # "weather":Lcom/lee/myapplication/weather/Weather;
    .end local v6    # "line":Ljava/lang/String;
    goto :goto_70

    .line 78
    :catch_65
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/lee/myapplication/weather/WeatherService;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/lee/myapplication/weather/WeatherService$$ExternalSyntheticLambda2;

    invoke-direct {v2, p2, v0}, Lcom/lee/myapplication/weather/WeatherService$$ExternalSyntheticLambda2;-><init>(Lcom/lee/myapplication/weather/WeatherService$WeatherCallback;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 81
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_70
    return-void
.end method

.method public shouldUpdateWeather()Z
    .registers 9

    .line 156
    invoke-virtual {p0}, Lcom/lee/myapplication/weather/WeatherService;->getCachedWeather()Lcom/lee/myapplication/weather/Weather;

    move-result-object v0

    .line 157
    .local v0, "cachedWeather":Lcom/lee/myapplication/weather/Weather;
    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 158
    return v1

    .line 162
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 163
    .local v2, "now":J
    invoke-virtual {v0}, Lcom/lee/myapplication/weather/Weather;->getUpdateTime()J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/32 v6, 0x1b7740

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return v1
.end method
