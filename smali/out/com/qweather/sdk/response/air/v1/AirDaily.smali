.class public Lcom/qweather/sdk/response/air/v1/AirDaily;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private forecastEndTime:Ljava/lang/String;

.field private forecastStartTime:Ljava/lang/String;

.field private indexes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qweather/sdk/response/air/v1/AirIndex;",
            ">;"
        }
    .end annotation
.end field

.field private pollutants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qweather/sdk/response/air/v1/Pollutant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getForecastEndTime()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/air/v1/AirDaily;->forecastEndTime:Ljava/lang/String;

    return-object v0
.end method

.method public getForecastStartTime()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/air/v1/AirDaily;->forecastStartTime:Ljava/lang/String;

    return-object v0
.end method

.method public getIndexes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qweather/sdk/response/air/v1/AirIndex;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/air/v1/AirDaily;->indexes:Ljava/util/List;

    return-object v0
.end method

.method public getPollutants()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qweather/sdk/response/air/v1/Pollutant;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/air/v1/AirDaily;->pollutants:Ljava/util/List;

    return-object v0
.end method

.method public setForecastEndTime(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/air/v1/AirDaily;->forecastEndTime:Ljava/lang/String;

    return-void
.end method

.method public setForecastStartTime(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/air/v1/AirDaily;->forecastStartTime:Ljava/lang/String;

    return-void
.end method

.method public setIndexes(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qweather/sdk/response/air/v1/AirIndex;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/air/v1/AirDaily;->indexes:Ljava/util/List;

    return-void
.end method

.method public setPollutants(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qweather/sdk/response/air/v1/Pollutant;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/air/v1/AirDaily;->pollutants:Ljava/util/List;

    return-void
.end method
