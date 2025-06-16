.class public Lcom/qweather/sdk/response/astronomy/AstronomySunResponse;
.super Lcom/qweather/sdk/response/BaseResponse;
.source "SourceFile"


# instance fields
.field private refer:Lcom/qweather/sdk/response/Refer;

.field private sunrise:Ljava/lang/String;

.field private sunset:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/qweather/sdk/response/BaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getRefer()Lcom/qweather/sdk/response/Refer;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/astronomy/AstronomySunResponse;->refer:Lcom/qweather/sdk/response/Refer;

    return-object v0
.end method

.method public getSunrise()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/astronomy/AstronomySunResponse;->sunrise:Ljava/lang/String;

    return-object v0
.end method

.method public getSunset()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/astronomy/AstronomySunResponse;->sunset:Ljava/lang/String;

    return-object v0
.end method

.method public setRefer(Lcom/qweather/sdk/response/Refer;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/astronomy/AstronomySunResponse;->refer:Lcom/qweather/sdk/response/Refer;

    return-void
.end method

.method public setSunrise(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/astronomy/AstronomySunResponse;->sunrise:Ljava/lang/String;

    return-void
.end method

.method public setSunset(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/astronomy/AstronomySunResponse;->sunset:Ljava/lang/String;

    return-void
.end method
