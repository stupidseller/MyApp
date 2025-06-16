.class public Lcom/qweather/sdk/response/weather/WeatherNowResponse;
.super Lcom/qweather/sdk/response/BaseResponse;
.source "SourceFile"


# instance fields
.field private now:Lcom/qweather/sdk/response/weather/WeatherNow;

.field private refer:Lcom/qweather/sdk/response/Refer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/qweather/sdk/response/BaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getNow()Lcom/qweather/sdk/response/weather/WeatherNow;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/weather/WeatherNowResponse;->now:Lcom/qweather/sdk/response/weather/WeatherNow;

    return-object v0
.end method

.method public getRefer()Lcom/qweather/sdk/response/Refer;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/weather/WeatherNowResponse;->refer:Lcom/qweather/sdk/response/Refer;

    return-object v0
.end method

.method public setNow(Lcom/qweather/sdk/response/weather/WeatherNow;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/weather/WeatherNowResponse;->now:Lcom/qweather/sdk/response/weather/WeatherNow;

    return-void
.end method

.method public setRefer(Lcom/qweather/sdk/response/Refer;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/weather/WeatherNowResponse;->refer:Lcom/qweather/sdk/response/Refer;

    return-void
.end method
