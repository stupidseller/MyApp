.class public interface abstract Lcom/lee/myapplication/weather/WeatherService$WeatherCallback;
.super Ljava/lang/Object;
.source "WeatherService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lee/myapplication/weather/WeatherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WeatherCallback"
.end annotation


# virtual methods
.method public abstract onError(Ljava/lang/String;)V
.end method

.method public abstract onWeatherReceived(Lcom/lee/myapplication/weather/Weather;)V
.end method
