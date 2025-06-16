.class public Lcom/qweather/sdk/parameter/historical/HistoricalWeatherParameter;
.super Lcom/qweather/sdk/parameter/historical/HistoricalAirParameter;
.source "SourceFile"


# instance fields
.field private unit:Lcom/qweather/sdk/basic/Unit;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/qweather/sdk/parameter/historical/HistoricalAirParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public toMap()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/qweather/sdk/parameter/historical/HistoricalAirParameter;->toMap()Ljava/util/Map;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/qweather/sdk/parameter/historical/HistoricalWeatherParameter;->unit:Lcom/qweather/sdk/basic/Unit;

    if-eqz v1, :cond_12

    .line 3
    invoke-virtual {v1}, Lcom/qweather/sdk/basic/Unit;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "unit"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    return-object v0
.end method

.method public unit(Lcom/qweather/sdk/basic/Unit;)Lcom/qweather/sdk/parameter/historical/HistoricalWeatherParameter;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/parameter/historical/HistoricalWeatherParameter;->unit:Lcom/qweather/sdk/basic/Unit;

    return-object p0
.end method
