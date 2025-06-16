.class public Lcom/qweather/sdk/response/historical/HistoricalAirResponse;
.super Lcom/qweather/sdk/response/historical/HistoricalResponse;
.source "SourceFile"


# instance fields
.field private airHourly:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qweather/sdk/response/historical/HistoricalAirHourly;",
            ">;"
        }
    .end annotation
.end field

.field private refer:Lcom/qweather/sdk/response/Refer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/qweather/sdk/response/historical/HistoricalResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getAirHourly()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qweather/sdk/response/historical/HistoricalAirHourly;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/historical/HistoricalAirResponse;->airHourly:Ljava/util/List;

    return-object v0
.end method

.method public getRefer()Lcom/qweather/sdk/response/Refer;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/historical/HistoricalAirResponse;->refer:Lcom/qweather/sdk/response/Refer;

    return-object v0
.end method

.method public setAirHourly(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qweather/sdk/response/historical/HistoricalAirHourly;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/historical/HistoricalAirResponse;->airHourly:Ljava/util/List;

    return-void
.end method

.method public setRefer(Lcom/qweather/sdk/response/Refer;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/historical/HistoricalAirResponse;->refer:Lcom/qweather/sdk/response/Refer;

    return-void
.end method
