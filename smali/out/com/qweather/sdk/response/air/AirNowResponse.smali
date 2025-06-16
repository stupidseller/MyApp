.class public Lcom/qweather/sdk/response/air/AirNowResponse;
.super Lcom/qweather/sdk/response/BaseResponse;
.source "SourceFile"


# instance fields
.field private now:Lcom/qweather/sdk/response/air/AirNow;

.field private refer:Lcom/qweather/sdk/response/Refer;

.field private station:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qweather/sdk/response/air/AirStation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/qweather/sdk/response/BaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getNow()Lcom/qweather/sdk/response/air/AirNow;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/air/AirNowResponse;->now:Lcom/qweather/sdk/response/air/AirNow;

    return-object v0
.end method

.method public getRefer()Lcom/qweather/sdk/response/Refer;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/air/AirNowResponse;->refer:Lcom/qweather/sdk/response/Refer;

    return-object v0
.end method

.method public getStation()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qweather/sdk/response/air/AirStation;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/air/AirNowResponse;->station:Ljava/util/List;

    return-object v0
.end method

.method public setNow(Lcom/qweather/sdk/response/air/AirNow;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/air/AirNowResponse;->now:Lcom/qweather/sdk/response/air/AirNow;

    return-void
.end method

.method public setRefer(Lcom/qweather/sdk/response/Refer;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/air/AirNowResponse;->refer:Lcom/qweather/sdk/response/Refer;

    return-void
.end method

.method public setStation(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qweather/sdk/response/air/AirStation;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/air/AirNowResponse;->station:Ljava/util/List;

    return-void
.end method
