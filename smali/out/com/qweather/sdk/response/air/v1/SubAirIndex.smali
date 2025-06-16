.class public Lcom/qweather/sdk/response/air/v1/SubAirIndex;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aqi:Ljava/lang/Double;

.field private aqiDisplay:Ljava/lang/String;

.field private code:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAqi()Ljava/lang/Double;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/air/v1/SubAirIndex;->aqi:Ljava/lang/Double;

    return-object v0
.end method

.method public getAqiDisplay()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/air/v1/SubAirIndex;->aqiDisplay:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/air/v1/SubAirIndex;->code:Ljava/lang/String;

    return-object v0
.end method

.method public setAqi(Ljava/lang/Double;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/air/v1/SubAirIndex;->aqi:Ljava/lang/Double;

    return-void
.end method

.method public setAqiDisplay(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/air/v1/SubAirIndex;->aqiDisplay:Ljava/lang/String;

    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/air/v1/SubAirIndex;->code:Ljava/lang/String;

    return-void
.end method
