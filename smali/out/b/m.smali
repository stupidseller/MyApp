.class public final Lb/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/n;


# instance fields
.field public final a:Lcom/qweather/sdk/parameter/weather/WeatherParameter;

.field public final b:I


# direct methods
.method public constructor <init>(ILcom/qweather/sdk/parameter/weather/WeatherParameter;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lb/m;->b:I

    .line 3
    iput-object p2, p0, Lb/m;->a:Lcom/qweather/sdk/parameter/weather/WeatherParameter;

    return-void
.end method


# virtual methods
.method public final a()Lcom/qweather/sdk/parameter/ApiParameter;
    .registers 2

    .line 1
    iget-object v0, p0, Lb/m;->a:Lcom/qweather/sdk/parameter/weather/WeatherParameter;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 4

    .line 1
    iget v0, p0, Lb/m;->b:I

    invoke-static {v0}, La/b;->a(I)I

    move-result v0

    packed-switch v0, :pswitch_data_6c

    .line 21
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unknown path \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lb/m;->b:I

    packed-switch v2, :pswitch_data_82

    const-string v2, "null"

    goto :goto_59

    .line 22
    :pswitch_1b
    const-string/jumbo v0, "v7/sdk5/weather/168h"

    return-object v0

    .line 23
    :pswitch_1f
    const-string/jumbo v0, "v7/sdk5/weather/72h"

    return-object v0

    .line 24
    :pswitch_23
    const-string/jumbo v0, "v7/sdk5/weather/24h"

    return-object v0

    .line 25
    :pswitch_27
    const-string/jumbo v0, "v7/sdk5/weather/30d"

    return-object v0

    .line 26
    :pswitch_2b
    const-string/jumbo v0, "v7/sdk5/weather/15d"

    return-object v0

    .line 27
    :pswitch_2f
    const-string/jumbo v0, "v7/sdk5/weather/10d"

    return-object v0

    .line 28
    :pswitch_33
    const-string/jumbo v0, "v7/sdk5/weather/7d"

    return-object v0

    .line 29
    :pswitch_37
    const-string/jumbo v0, "v7/sdk5/weather/3d"

    return-object v0

    .line 30
    :pswitch_3b
    const-string/jumbo v0, "v7/sdk5/weather/now"

    return-object v0

    .line 21
    :pswitch_3f
    const-string v2, "WEATHER_168H"

    goto :goto_59

    :pswitch_42
    const-string v2, "WEATHER_72H"

    goto :goto_59

    :pswitch_45
    const-string v2, "WEATHER_24H"

    goto :goto_59

    :pswitch_48
    const-string v2, "WEATHER_30D"

    goto :goto_59

    :pswitch_4b
    const-string v2, "WEATHER_15D"

    goto :goto_59

    :pswitch_4e
    const-string v2, "WEATHER_10D"

    goto :goto_59

    :pswitch_51
    const-string v2, "WEATHER_7D"

    goto :goto_59

    :pswitch_54
    const-string v2, "WEATHER_3D"

    goto :goto_59

    :pswitch_57
    const-string v2, "WEATHER_NOW"

    :goto_59
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

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_37
        :pswitch_33
        :pswitch_2f
        :pswitch_2b
        :pswitch_27
        :pswitch_23
        :pswitch_1f
        :pswitch_1b
    .end packed-switch

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_57
        :pswitch_54
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3f
    .end packed-switch
.end method
