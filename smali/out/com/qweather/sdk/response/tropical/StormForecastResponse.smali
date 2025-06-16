.class public Lcom/qweather/sdk/response/tropical/StormForecastResponse;
.super Lcom/qweather/sdk/response/BaseResponse;
.source "SourceFile"


# instance fields
.field private forecast:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qweather/sdk/response/tropical/StormForecast;",
            ">;"
        }
    .end annotation
.end field

.field private refer:Lcom/qweather/sdk/response/Refer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/qweather/sdk/response/BaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getForecast()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qweather/sdk/response/tropical/StormForecast;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/tropical/StormForecastResponse;->forecast:Ljava/util/List;

    return-object v0
.end method

.method public getRefer()Lcom/qweather/sdk/response/Refer;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/tropical/StormForecastResponse;->refer:Lcom/qweather/sdk/response/Refer;

    return-object v0
.end method

.method public setForecast(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qweather/sdk/response/tropical/StormForecast;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/tropical/StormForecastResponse;->forecast:Ljava/util/List;

    return-void
.end method

.method public setRefer(Lcom/qweather/sdk/response/Refer;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/tropical/StormForecastResponse;->refer:Lcom/qweather/sdk/response/Refer;

    return-void
.end method
