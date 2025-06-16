.class public Lcom/qweather/sdk/response/air/v1/AirV1StationResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private metadata:Lcom/qweather/sdk/response/Metadata;

.field private pollutants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qweather/sdk/response/air/v1/StationPollutant;",
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
.method public getMetadata()Lcom/qweather/sdk/response/Metadata;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/air/v1/AirV1StationResponse;->metadata:Lcom/qweather/sdk/response/Metadata;

    return-object v0
.end method

.method public getPollutants()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qweather/sdk/response/air/v1/StationPollutant;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/air/v1/AirV1StationResponse;->pollutants:Ljava/util/List;

    return-object v0
.end method

.method public setMetadata(Lcom/qweather/sdk/response/Metadata;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/air/v1/AirV1StationResponse;->metadata:Lcom/qweather/sdk/response/Metadata;

    return-void
.end method

.method public setPollutants(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qweather/sdk/response/air/v1/StationPollutant;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/air/v1/AirV1StationResponse;->pollutants:Ljava/util/List;

    return-void
.end method
