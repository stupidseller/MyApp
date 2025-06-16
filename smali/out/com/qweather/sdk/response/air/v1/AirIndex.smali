.class public Lcom/qweather/sdk/response/air/v1/AirIndex;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aqi:D

.field private aqiDisplay:Ljava/lang/String;

.field private category:Ljava/lang/String;

.field private code:Ljava/lang/String;

.field private color:Lcom/qweather/sdk/response/air/v1/AirColor;

.field private health:Lcom/qweather/sdk/response/air/v1/Health;

.field private level:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private primaryPollutant:Lcom/qweather/sdk/response/air/v1/PrimaryPollutant;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAqi()D
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/qweather/sdk/response/air/v1/AirIndex;->aqi:D

    return-wide v0
.end method

.method public getAqiDisplay()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/air/v1/AirIndex;->aqiDisplay:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/air/v1/AirIndex;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/air/v1/AirIndex;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getColor()Lcom/qweather/sdk/response/air/v1/AirColor;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/air/v1/AirIndex;->color:Lcom/qweather/sdk/response/air/v1/AirColor;

    return-object v0
.end method

.method public getHealth()Lcom/qweather/sdk/response/air/v1/Health;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/air/v1/AirIndex;->health:Lcom/qweather/sdk/response/air/v1/Health;

    return-object v0
.end method

.method public getLevel()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/air/v1/AirIndex;->level:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/air/v1/AirIndex;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPrimaryPollutant()Lcom/qweather/sdk/response/air/v1/PrimaryPollutant;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/air/v1/AirIndex;->primaryPollutant:Lcom/qweather/sdk/response/air/v1/PrimaryPollutant;

    return-object v0
.end method

.method public setAqi(D)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/qweather/sdk/response/air/v1/AirIndex;->aqi:D

    return-void
.end method

.method public setAqiDisplay(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/air/v1/AirIndex;->aqiDisplay:Ljava/lang/String;

    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/air/v1/AirIndex;->category:Ljava/lang/String;

    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/air/v1/AirIndex;->code:Ljava/lang/String;

    return-void
.end method

.method public setColor(Lcom/qweather/sdk/response/air/v1/AirColor;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/air/v1/AirIndex;->color:Lcom/qweather/sdk/response/air/v1/AirColor;

    return-void
.end method

.method public setHealth(Lcom/qweather/sdk/response/air/v1/Health;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/air/v1/AirIndex;->health:Lcom/qweather/sdk/response/air/v1/Health;

    return-void
.end method

.method public setLevel(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/air/v1/AirIndex;->level:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/air/v1/AirIndex;->name:Ljava/lang/String;

    return-void
.end method

.method public setPrimaryPollutant(Lcom/qweather/sdk/response/air/v1/PrimaryPollutant;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/air/v1/AirIndex;->primaryPollutant:Lcom/qweather/sdk/response/air/v1/PrimaryPollutant;

    return-void
.end method
