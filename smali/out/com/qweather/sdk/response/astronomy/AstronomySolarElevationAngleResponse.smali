.class public Lcom/qweather/sdk/response/astronomy/AstronomySolarElevationAngleResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private code:Ljava/lang/String;

.field private hourAngle:Ljava/lang/String;

.field private refer:Lcom/qweather/sdk/response/Refer;

.field private solarAzimuthAngle:Ljava/lang/String;

.field private solarElevationAngle:Ljava/lang/String;

.field private solarHour:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/astronomy/AstronomySolarElevationAngleResponse;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getHourAngle()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/astronomy/AstronomySolarElevationAngleResponse;->hourAngle:Ljava/lang/String;

    return-object v0
.end method

.method public getRefer()Lcom/qweather/sdk/response/Refer;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/astronomy/AstronomySolarElevationAngleResponse;->refer:Lcom/qweather/sdk/response/Refer;

    return-object v0
.end method

.method public getSolarAzimuthAngle()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/astronomy/AstronomySolarElevationAngleResponse;->solarAzimuthAngle:Ljava/lang/String;

    return-object v0
.end method

.method public getSolarElevationAngle()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/astronomy/AstronomySolarElevationAngleResponse;->solarElevationAngle:Ljava/lang/String;

    return-object v0
.end method

.method public getSolarHour()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/astronomy/AstronomySolarElevationAngleResponse;->solarHour:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/astronomy/AstronomySolarElevationAngleResponse;->code:Ljava/lang/String;

    return-void
.end method

.method public setHourAngle(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/astronomy/AstronomySolarElevationAngleResponse;->hourAngle:Ljava/lang/String;

    return-void
.end method

.method public setRefer(Lcom/qweather/sdk/response/Refer;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/astronomy/AstronomySolarElevationAngleResponse;->refer:Lcom/qweather/sdk/response/Refer;

    return-void
.end method

.method public setSolarAzimuthAngle(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/astronomy/AstronomySolarElevationAngleResponse;->solarAzimuthAngle:Ljava/lang/String;

    return-void
.end method

.method public setSolarElevationAngle(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/astronomy/AstronomySolarElevationAngleResponse;->solarElevationAngle:Ljava/lang/String;

    return-void
.end method

.method public setSolarHour(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/astronomy/AstronomySolarElevationAngleResponse;->solarHour:Ljava/lang/String;

    return-void
.end method
