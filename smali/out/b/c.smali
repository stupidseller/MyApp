.class public final Lb/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/n;


# instance fields
.field public final a:Lcom/qweather/sdk/parameter/air/AirV1StationParameter;


# direct methods
.method public constructor <init>(Lcom/qweather/sdk/parameter/air/AirV1StationParameter;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/c;->a:Lcom/qweather/sdk/parameter/air/AirV1StationParameter;

    return-void
.end method


# virtual methods
.method public final a()Lcom/qweather/sdk/parameter/ApiParameter;
    .registers 2

    .line 1
    iget-object v0, p0, Lb/c;->a:Lcom/qweather/sdk/parameter/air/AirV1StationParameter;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lb/c;->a:Lcom/qweather/sdk/parameter/air/AirV1StationParameter;

    instance-of v1, v0, Lcom/qweather/sdk/parameter/air/AirV1StationParameter;

    if-eqz v1, :cond_1a

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "airquality/v1/sdk5/station/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/qweather/sdk/parameter/air/AirV1StationParameter;->getLocationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6
    :cond_1a
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "wrong parameter \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lb/c;->a:Lcom/qweather/sdk/parameter/air/AirV1StationParameter;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
