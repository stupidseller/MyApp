.class public Lcom/lee/myapplication/weather/Weather;
.super Ljava/lang/Object;
.source "Weather.java"


# instance fields
.field private humidity:Ljava/lang/String;

.field private temperature:Ljava/lang/String;

.field private updateTime:J

.field private weatherDesc:Ljava/lang/String;

.field private weatherIcon:Ljava/lang/String;

.field private windDir:Ljava/lang/String;

.field private windSpeed:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHumidity()Ljava/lang/String;
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/lee/myapplication/weather/Weather;->humidity:Ljava/lang/String;

    return-object v0
.end method

.method public getTemperature()Ljava/lang/String;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/lee/myapplication/weather/Weather;->temperature:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateTime()J
    .registers 3

    .line 33
    iget-wide v0, p0, Lcom/lee/myapplication/weather/Weather;->updateTime:J

    return-wide v0
.end method

.method public getWeatherDesc()Ljava/lang/String;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/lee/myapplication/weather/Weather;->weatherDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getWeatherIcon()Ljava/lang/String;
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/lee/myapplication/weather/Weather;->weatherIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getWindDir()Ljava/lang/String;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/lee/myapplication/weather/Weather;->windDir:Ljava/lang/String;

    return-object v0
.end method

.method public getWindSpeed()Ljava/lang/String;
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/lee/myapplication/weather/Weather;->windSpeed:Ljava/lang/String;

    return-object v0
.end method

.method public setHumidity(Ljava/lang/String;)V
    .registers 2
    .param p1, "humidity"    # Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/lee/myapplication/weather/Weather;->humidity:Ljava/lang/String;

    return-void
.end method

.method public setTemperature(Ljava/lang/String;)V
    .registers 2
    .param p1, "temperature"    # Ljava/lang/String;

    .line 16
    iput-object p1, p0, Lcom/lee/myapplication/weather/Weather;->temperature:Ljava/lang/String;

    return-void
.end method

.method public setUpdateTime(J)V
    .registers 3
    .param p1, "updateTime"    # J

    .line 34
    iput-wide p1, p0, Lcom/lee/myapplication/weather/Weather;->updateTime:J

    return-void
.end method

.method public setWeatherDesc(Ljava/lang/String;)V
    .registers 2
    .param p1, "weatherDesc"    # Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/lee/myapplication/weather/Weather;->weatherDesc:Ljava/lang/String;

    return-void
.end method

.method public setWeatherIcon(Ljava/lang/String;)V
    .registers 2
    .param p1, "weatherIcon"    # Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/lee/myapplication/weather/Weather;->weatherIcon:Ljava/lang/String;

    return-void
.end method

.method public setWindDir(Ljava/lang/String;)V
    .registers 2
    .param p1, "windDir"    # Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/lee/myapplication/weather/Weather;->windDir:Ljava/lang/String;

    return-void
.end method

.method public setWindSpeed(Ljava/lang/String;)V
    .registers 2
    .param p1, "windSpeed"    # Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/lee/myapplication/weather/Weather;->windSpeed:Ljava/lang/String;

    return-void
.end method
