.class public Lcom/qweather/sdk/response/ocean/CurrentsHourly;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private dir360:Ljava/lang/String;

.field private fxTime:Ljava/lang/String;

.field private speed:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDir360()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/ocean/CurrentsHourly;->dir360:Ljava/lang/String;

    return-object v0
.end method

.method public getFxTime()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/ocean/CurrentsHourly;->fxTime:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeed()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/ocean/CurrentsHourly;->speed:Ljava/lang/String;

    return-object v0
.end method

.method public setDir360(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/ocean/CurrentsHourly;->dir360:Ljava/lang/String;

    return-void
.end method

.method public setFxTime(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/ocean/CurrentsHourly;->fxTime:Ljava/lang/String;

    return-void
.end method

.method public setSpeed(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/ocean/CurrentsHourly;->speed:Ljava/lang/String;

    return-void
.end method
