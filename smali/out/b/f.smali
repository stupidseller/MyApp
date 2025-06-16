.class public final Lb/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/n;


# instance fields
.field public final a:Lcom/qweather/sdk/parameter/grid/GridWeatherParameter;

.field public final b:I


# direct methods
.method public constructor <init>(ILcom/qweather/sdk/parameter/grid/GridWeatherParameter;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lb/f;->b:I

    .line 3
    iput-object p2, p0, Lb/f;->a:Lcom/qweather/sdk/parameter/grid/GridWeatherParameter;

    return-void
.end method


# virtual methods
.method public final a()Lcom/qweather/sdk/parameter/ApiParameter;
    .registers 2

    .line 1
    iget-object v0, p0, Lb/f;->a:Lcom/qweather/sdk/parameter/grid/GridWeatherParameter;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 4

    .line 1
    iget v0, p0, Lb/f;->b:I

    invoke-static {v0}, La/b;->a(I)I

    move-result v0

    packed-switch v0, :pswitch_data_50

    .line 13
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unknown path \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lb/f;->b:I

    packed-switch v2, :pswitch_data_5e

    const-string v2, "null"

    goto :goto_3d

    .line 14
    :pswitch_1b
    const-string/jumbo v0, "v7/sdk5/grid-weather/72h"

    return-object v0

    .line 15
    :pswitch_1f
    const-string/jumbo v0, "v7/sdk5/grid-weather/24h"

    return-object v0

    .line 16
    :pswitch_23
    const-string/jumbo v0, "v7/sdk5/grid-weather/7d"

    return-object v0

    .line 17
    :pswitch_27
    const-string/jumbo v0, "v7/sdk5/grid-weather/3d"

    return-object v0

    .line 18
    :pswitch_2b
    const-string/jumbo v0, "v7/sdk5/grid-weather/now"

    return-object v0

    .line 13
    :pswitch_2f
    const-string v2, "GRID_WEATHER_72H"

    goto :goto_3d

    :pswitch_32
    const-string v2, "GRID_WEATHER_24H"

    goto :goto_3d

    :pswitch_35
    const-string v2, "GRID_WEATHER_7D"

    goto :goto_3d

    :pswitch_38
    const-string v2, "GRID_WEATHER_3D"

    goto :goto_3d

    :pswitch_3b
    const-string v2, "GRID_WEATHER_NOW"

    :goto_3d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_27
        :pswitch_23
        :pswitch_1f
        :pswitch_1b
    .end packed-switch

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
    .end packed-switch
.end method
