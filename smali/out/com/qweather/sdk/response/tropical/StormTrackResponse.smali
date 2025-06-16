.class public Lcom/qweather/sdk/response/tropical/StormTrackResponse;
.super Lcom/qweather/sdk/response/BaseResponse;
.source "SourceFile"


# instance fields
.field private isActive:Ljava/lang/String;

.field private now:Lcom/qweather/sdk/response/tropical/StormNow;

.field private refer:Lcom/qweather/sdk/response/Refer;

.field private track:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qweather/sdk/response/tropical/StormTrack;",
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
.method public getIsActive()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/tropical/StormTrackResponse;->isActive:Ljava/lang/String;

    return-object v0
.end method

.method public getNow()Lcom/qweather/sdk/response/tropical/StormNow;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/tropical/StormTrackResponse;->now:Lcom/qweather/sdk/response/tropical/StormNow;

    return-object v0
.end method

.method public getRefer()Lcom/qweather/sdk/response/Refer;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/tropical/StormTrackResponse;->refer:Lcom/qweather/sdk/response/Refer;

    return-object v0
.end method

.method public getTrack()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qweather/sdk/response/tropical/StormTrack;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/tropical/StormTrackResponse;->track:Ljava/util/List;

    return-object v0
.end method

.method public setIsActive(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/tropical/StormTrackResponse;->isActive:Ljava/lang/String;

    return-void
.end method

.method public setNow(Lcom/qweather/sdk/response/tropical/StormNow;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/tropical/StormTrackResponse;->now:Lcom/qweather/sdk/response/tropical/StormNow;

    return-void
.end method

.method public setRefer(Lcom/qweather/sdk/response/Refer;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/tropical/StormTrackResponse;->refer:Lcom/qweather/sdk/response/Refer;

    return-void
.end method

.method public setTrack(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qweather/sdk/response/tropical/StormTrack;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/tropical/StormTrackResponse;->track:Ljava/util/List;

    return-void
.end method
