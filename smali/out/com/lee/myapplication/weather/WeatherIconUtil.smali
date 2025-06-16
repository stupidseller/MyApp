.class public Lcom/lee/myapplication/weather/WeatherIconUtil;
.super Ljava/lang/Object;
.source "WeatherIconUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWeatherIconResource(Ljava/lang/String;)I
    .registers 2
    .param p0, "iconCode"    # Ljava/lang/String;

    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_274

    :cond_7
    goto/16 :goto_25b

    :sswitch_9
    const-string v0, "515"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x32

    goto/16 :goto_25c

    :sswitch_15
    const-string v0, "514"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x31

    goto/16 :goto_25c

    :sswitch_21
    const-string v0, "513"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x30

    goto/16 :goto_25c

    :sswitch_2d
    const-string v0, "512"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x2f

    goto/16 :goto_25c

    :sswitch_39
    const-string v0, "511"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x2e

    goto/16 :goto_25c

    :sswitch_45
    const-string v0, "510"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x2d

    goto/16 :goto_25c

    :sswitch_51
    const-string v0, "509"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x2c

    goto/16 :goto_25c

    :sswitch_5d
    const-string v0, "508"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x2b

    goto/16 :goto_25c

    :sswitch_69
    const-string v0, "507"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x2a

    goto/16 :goto_25c

    :sswitch_75
    const-string v0, "504"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x29

    goto/16 :goto_25c

    :sswitch_81
    const-string v0, "503"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x28

    goto/16 :goto_25c

    :sswitch_8d
    const-string v0, "502"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x27

    goto/16 :goto_25c

    :sswitch_99
    const-string v0, "501"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x26

    goto/16 :goto_25c

    :sswitch_a5
    const-string v0, "500"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x25

    goto/16 :goto_25c

    :sswitch_b1
    const-string v0, "499"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x24

    goto/16 :goto_25c

    :sswitch_bd
    const-string v0, "410"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x23

    goto/16 :goto_25c

    :sswitch_c9
    const-string v0, "409"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x22

    goto/16 :goto_25c

    :sswitch_d5
    const-string v0, "408"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x21

    goto/16 :goto_25c

    :sswitch_e1
    const-string v0, "407"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x20

    goto/16 :goto_25c

    :sswitch_ed
    const-string v0, "406"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x1f

    goto/16 :goto_25c

    :sswitch_f9
    const-string v0, "405"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x1e

    goto/16 :goto_25c

    :sswitch_105
    const-string v0, "404"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x1d

    goto/16 :goto_25c

    :sswitch_111
    const-string v0, "403"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x1c

    goto/16 :goto_25c

    :sswitch_11d
    const-string v0, "402"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x1b

    goto/16 :goto_25c

    :sswitch_129
    const-string v0, "401"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x1a

    goto/16 :goto_25c

    :sswitch_135
    const-string v0, "400"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x19

    goto/16 :goto_25c

    :sswitch_141
    const-string v0, "399"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x18

    goto/16 :goto_25c

    :sswitch_14d
    const-string v0, "318"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x17

    goto/16 :goto_25c

    :sswitch_159
    const-string v0, "317"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x16

    goto/16 :goto_25c

    :sswitch_165
    const-string v0, "316"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x15

    goto/16 :goto_25c

    :sswitch_171
    const-string v0, "315"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x14

    goto/16 :goto_25c

    :sswitch_17d
    const-string v0, "314"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x13

    goto/16 :goto_25c

    :sswitch_189
    const-string v0, "313"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x12

    goto/16 :goto_25c

    :sswitch_195
    const-string v0, "312"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x11

    goto/16 :goto_25c

    :sswitch_1a1
    const-string v0, "311"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x10

    goto/16 :goto_25c

    :sswitch_1ad
    const-string v0, "310"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xf

    goto/16 :goto_25c

    :sswitch_1b9
    const-string v0, "309"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xe

    goto/16 :goto_25c

    :sswitch_1c5
    const-string v0, "308"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xd

    goto/16 :goto_25c

    :sswitch_1d1
    const-string v0, "307"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xc

    goto/16 :goto_25c

    :sswitch_1dd
    const-string v0, "306"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xb

    goto/16 :goto_25c

    :sswitch_1e9
    const-string v0, "305"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xa

    goto/16 :goto_25c

    :sswitch_1f5
    const-string v0, "304"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x9

    goto :goto_25c

    :sswitch_200
    const-string v0, "303"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    goto :goto_25c

    :sswitch_20b
    const-string v0, "302"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    goto :goto_25c

    :sswitch_215
    const-string v0, "301"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto :goto_25c

    :sswitch_21f
    const-string v0, "300"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto :goto_25c

    :sswitch_229
    const-string v0, "104"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_25c

    :sswitch_233
    const-string v0, "103"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_25c

    :sswitch_23d
    const-string v0, "102"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_25c

    :sswitch_247
    const-string v0, "101"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_25c

    :sswitch_251
    const-string v0, "100"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_25c

    :goto_25b
    const/4 v0, -0x1

    :goto_25c
    packed-switch v0, :pswitch_data_342

    .line 76
    sget v0, Lcom/lee/myapplication/R$drawable;->ic_weather_unknown:I

    return v0

    .line 73
    :pswitch_262
    sget v0, Lcom/lee/myapplication/R$drawable;->ic_weather_fog:I

    return v0

    .line 57
    :pswitch_265
    sget v0, Lcom/lee/myapplication/R$drawable;->ic_weather_snow:I

    return v0

    .line 43
    :pswitch_268
    sget v0, Lcom/lee/myapplication/R$drawable;->ic_weather_rain:I

    return v0

    .line 21
    :pswitch_26b
    sget v0, Lcom/lee/myapplication/R$drawable;->ic_weather_overcast:I

    return v0

    .line 18
    :pswitch_26e
    sget v0, Lcom/lee/myapplication/R$drawable;->ic_weather_cloudy:I

    return v0

    .line 13
    :pswitch_271
    sget v0, Lcom/lee/myapplication/R$drawable;->ic_weather_sunny:I

    return v0

    :sswitch_data_274
    .sparse-switch
        0xbdf1 -> :sswitch_251
        0xbdf2 -> :sswitch_247
        0xbdf3 -> :sswitch_23d
        0xbdf4 -> :sswitch_233
        0xbdf5 -> :sswitch_229
        0xc573 -> :sswitch_21f
        0xc574 -> :sswitch_215
        0xc575 -> :sswitch_20b
        0xc576 -> :sswitch_200
        0xc577 -> :sswitch_1f5
        0xc578 -> :sswitch_1e9
        0xc579 -> :sswitch_1dd
        0xc57a -> :sswitch_1d1
        0xc57b -> :sswitch_1c5
        0xc57c -> :sswitch_1b9
        0xc592 -> :sswitch_1ad
        0xc593 -> :sswitch_1a1
        0xc594 -> :sswitch_195
        0xc595 -> :sswitch_189
        0xc596 -> :sswitch_17d
        0xc597 -> :sswitch_171
        0xc598 -> :sswitch_165
        0xc599 -> :sswitch_159
        0xc59a -> :sswitch_14d
        0xc693 -> :sswitch_141
        0xc934 -> :sswitch_135
        0xc935 -> :sswitch_129
        0xc936 -> :sswitch_11d
        0xc937 -> :sswitch_111
        0xc938 -> :sswitch_105
        0xc939 -> :sswitch_f9
        0xc93a -> :sswitch_ed
        0xc93b -> :sswitch_e1
        0xc93c -> :sswitch_d5
        0xc93d -> :sswitch_c9
        0xc953 -> :sswitch_bd
        0xca54 -> :sswitch_b1
        0xccf5 -> :sswitch_a5
        0xccf6 -> :sswitch_99
        0xccf7 -> :sswitch_8d
        0xccf8 -> :sswitch_81
        0xccf9 -> :sswitch_75
        0xccfc -> :sswitch_69
        0xccfd -> :sswitch_5d
        0xccfe -> :sswitch_51
        0xcd14 -> :sswitch_45
        0xcd15 -> :sswitch_39
        0xcd16 -> :sswitch_2d
        0xcd17 -> :sswitch_21
        0xcd18 -> :sswitch_15
        0xcd19 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_342
    .packed-switch 0x0
        :pswitch_271
        :pswitch_26e
        :pswitch_26e
        :pswitch_26e
        :pswitch_26b
        :pswitch_268
        :pswitch_268
        :pswitch_268
        :pswitch_268
        :pswitch_268
        :pswitch_268
        :pswitch_268
        :pswitch_268
        :pswitch_268
        :pswitch_268
        :pswitch_268
        :pswitch_268
        :pswitch_268
        :pswitch_268
        :pswitch_268
        :pswitch_268
        :pswitch_268
        :pswitch_268
        :pswitch_268
        :pswitch_268
        :pswitch_265
        :pswitch_265
        :pswitch_265
        :pswitch_265
        :pswitch_265
        :pswitch_265
        :pswitch_265
        :pswitch_265
        :pswitch_265
        :pswitch_265
        :pswitch_265
        :pswitch_265
        :pswitch_262
        :pswitch_262
        :pswitch_262
        :pswitch_262
        :pswitch_262
        :pswitch_262
        :pswitch_262
        :pswitch_262
        :pswitch_262
        :pswitch_262
        :pswitch_262
        :pswitch_262
        :pswitch_262
        :pswitch_262
    .end packed-switch
.end method
