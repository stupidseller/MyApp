.class public Lcom/qweather/sdk/response/astronomy/AstronomyMoonResponse;
.super Lcom/qweather/sdk/response/BaseResponse;
.source "SourceFile"


# instance fields
.field private moonPhase:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qweather/sdk/response/astronomy/MoonPhase;",
            ">;"
        }
    .end annotation
.end field

.field private moonrise:Ljava/lang/String;

.field private moonset:Ljava/lang/String;

.field private refer:Lcom/qweather/sdk/response/Refer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/qweather/sdk/response/BaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getMoonPhase()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qweather/sdk/response/astronomy/MoonPhase;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/astronomy/AstronomyMoonResponse;->moonPhase:Ljava/util/List;

    return-object v0
.end method

.method public getMoonrise()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/astronomy/AstronomyMoonResponse;->moonrise:Ljava/lang/String;

    return-object v0
.end method

.method public getMoonset()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/astronomy/AstronomyMoonResponse;->moonset:Ljava/lang/String;

    return-object v0
.end method

.method public getRefer()Lcom/qweather/sdk/response/Refer;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/astronomy/AstronomyMoonResponse;->refer:Lcom/qweather/sdk/response/Refer;

    return-object v0
.end method

.method public setMoonPhase(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qweather/sdk/response/astronomy/MoonPhase;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/astronomy/AstronomyMoonResponse;->moonPhase:Ljava/util/List;

    return-void
.end method

.method public setMoonrise(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/astronomy/AstronomyMoonResponse;->moonrise:Ljava/lang/String;

    return-void
.end method

.method public setMoonset(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/astronomy/AstronomyMoonResponse;->moonset:Ljava/lang/String;

    return-void
.end method

.method public setRefer(Lcom/qweather/sdk/response/Refer;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/astronomy/AstronomyMoonResponse;->refer:Lcom/qweather/sdk/response/Refer;

    return-void
.end method
