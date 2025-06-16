.class public final Lb/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/n;


# instance fields
.field public final a:I

.field public final b:Lcom/qweather/sdk/parameter/historical/HistoricalAirParameter;


# direct methods
.method public constructor <init>(ILcom/qweather/sdk/parameter/historical/HistoricalAirParameter;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lb/g;->a:I

    .line 3
    iput-object p2, p0, Lb/g;->b:Lcom/qweather/sdk/parameter/historical/HistoricalAirParameter;

    return-void
.end method


# virtual methods
.method public final a()Lcom/qweather/sdk/parameter/ApiParameter;
    .registers 2

    .line 1
    iget-object v0, p0, Lb/g;->b:Lcom/qweather/sdk/parameter/historical/HistoricalAirParameter;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 5

    .line 1
    iget v0, p0, Lb/g;->a:I

    invoke-static {v0}, La/b;->a(I)I

    move-result v0

    if-eqz v0, :cond_3a

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 3
    const-string/jumbo v0, "v7/sdk5/historical/air"

    return-object v0

    .line 7
    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unknown path \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lb/g;->a:I

    if-eq v3, v1, :cond_26

    const/4 v1, 0x2

    if-eq v3, v1, :cond_23

    const-string v1, "null"

    goto :goto_28

    :cond_23
    const-string v1, "HISTORICAL_AIR"

    goto :goto_28

    :cond_26
    const-string v1, "HISTORICAL_WEATHER"

    :goto_28
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_3a
    const-string/jumbo v0, "v7/sdk5/historical/weather"

    return-object v0
.end method
