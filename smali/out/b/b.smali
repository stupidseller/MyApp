.class public final Lb/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/n;


# instance fields
.field public final a:I

.field public final b:Lcom/qweather/sdk/parameter/air/AirV1Parameter;


# direct methods
.method public constructor <init>(ILcom/qweather/sdk/parameter/air/AirV1Parameter;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lb/b;->a:I

    .line 3
    iput-object p2, p0, Lb/b;->b:Lcom/qweather/sdk/parameter/air/AirV1Parameter;

    return-void
.end method


# virtual methods
.method public final a()Lcom/qweather/sdk/parameter/ApiParameter;
    .registers 2

    .line 1
    iget-object v0, p0, Lb/b;->b:Lcom/qweather/sdk/parameter/air/AirV1Parameter;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 7

    .line 1
    iget-object v0, p0, Lb/b;->b:Lcom/qweather/sdk/parameter/air/AirV1Parameter;

    instance-of v1, v0, Lcom/qweather/sdk/parameter/air/AirV1Parameter;

    const-string v2, "\' found"

    if-eqz v1, :cond_a6

    .line 5
    iget v1, p0, Lb/b;->a:I

    invoke-static {v1}, La/b;->a(I)I

    move-result v1

    const-string v3, "/"

    if-eqz v1, :cond_86

    const/4 v4, 0x1

    if-eq v1, v4, :cond_66

    const/4 v5, 0x2

    if-ne v1, v5, :cond_38

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "airquality/v1/sdk5/daily/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/qweather/sdk/parameter/air/AirV1Parameter;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/qweather/sdk/parameter/air/AirV1Parameter;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 13
    :cond_38
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unknown path \'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lb/b;->a:I

    if-eq v3, v4, :cond_54

    if-eq v3, v5, :cond_51

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4e

    const-string v3, "null"

    goto :goto_56

    :cond_4e
    const-string v3, "AIR_V1_DAILY"

    goto :goto_56

    :cond_51
    const-string v3, "AIR_V1_HOURLY"

    goto :goto_56

    :cond_54
    const-string v3, "AIR_V1_CURRENT"

    :goto_56
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_66
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "airquality/v1/sdk5/hourly/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/qweather/sdk/parameter/air/AirV1Parameter;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/qweather/sdk/parameter/air/AirV1Parameter;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 15
    :cond_86
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "airquality/v1/sdk5/current/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/qweather/sdk/parameter/air/AirV1Parameter;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/qweather/sdk/parameter/air/AirV1Parameter;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 16
    :cond_a6
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "wrong parameter \'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lb/b;->b:Lcom/qweather/sdk/parameter/air/AirV1Parameter;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
