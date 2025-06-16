.class public interface abstract Landroidx/constraintlayout/core/motion/utils/TypedValues$CycleType;
.super Ljava/lang/Object;
.source "TypedValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/TypedValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CycleType"
.end annotation


# static fields
.field public static final KEY_WORDS:[Ljava/lang/String;

.field public static final NAME:Ljava/lang/String; = "KeyCycle"

.field public static final S_ALPHA:Ljava/lang/String; = "alpha"

.field public static final S_CURVE_FIT:Ljava/lang/String; = "curveFit"

.field public static final S_CUSTOM_WAVE_SHAPE:Ljava/lang/String; = "customWave"

.field public static final S_EASING:Ljava/lang/String; = "easing"

.field public static final S_ELEVATION:Ljava/lang/String; = "elevation"

.field public static final S_PATH_ROTATE:Ljava/lang/String; = "pathRotate"

.field public static final S_PIVOT_X:Ljava/lang/String; = "pivotX"

.field public static final S_PIVOT_Y:Ljava/lang/String; = "pivotY"

.field public static final S_PROGRESS:Ljava/lang/String; = "progress"

.field public static final S_ROTATION_X:Ljava/lang/String; = "rotationX"

.field public static final S_ROTATION_Y:Ljava/lang/String; = "rotationY"

.field public static final S_ROTATION_Z:Ljava/lang/String; = "rotationZ"

.field public static final S_SCALE_X:Ljava/lang/String; = "scaleX"

.field public static final S_SCALE_Y:Ljava/lang/String; = "scaleY"

.field public static final S_TRANSLATION_X:Ljava/lang/String; = "translationX"

.field public static final S_TRANSLATION_Y:Ljava/lang/String; = "translationY"

.field public static final S_TRANSLATION_Z:Ljava/lang/String; = "translationZ"

.field public static final S_VISIBILITY:Ljava/lang/String; = "visibility"

.field public static final S_WAVE_OFFSET:Ljava/lang/String; = "offset"

.field public static final S_WAVE_PERIOD:Ljava/lang/String; = "period"

.field public static final S_WAVE_PHASE:Ljava/lang/String; = "phase"

.field public static final S_WAVE_SHAPE:Ljava/lang/String; = "waveShape"

.field public static final TYPE_ALPHA:I = 0x193

.field public static final TYPE_CURVE_FIT:I = 0x191

.field public static final TYPE_CUSTOM_WAVE_SHAPE:I = 0x1a6

.field public static final TYPE_EASING:I = 0x1a4

.field public static final TYPE_ELEVATION:I = 0x133

.field public static final TYPE_PATH_ROTATE:I = 0x1a0

.field public static final TYPE_PIVOT_X:I = 0x139

.field public static final TYPE_PIVOT_Y:I = 0x13a

.field public static final TYPE_PROGRESS:I = 0x13b

.field public static final TYPE_ROTATION_X:I = 0x134

.field public static final TYPE_ROTATION_Y:I = 0x135

.field public static final TYPE_ROTATION_Z:I = 0x136

.field public static final TYPE_SCALE_X:I = 0x137

.field public static final TYPE_SCALE_Y:I = 0x138

.field public static final TYPE_TRANSLATION_X:I = 0x130

.field public static final TYPE_TRANSLATION_Y:I = 0x131

.field public static final TYPE_TRANSLATION_Z:I = 0x132

.field public static final TYPE_VISIBILITY:I = 0x192

.field public static final TYPE_WAVE_OFFSET:I = 0x1a8

.field public static final TYPE_WAVE_PERIOD:I = 0x1a7

.field public static final TYPE_WAVE_PHASE:I = 0x1a9

.field public static final TYPE_WAVE_SHAPE:I = 0x1a5


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 271
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "curveFit"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "visibility"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "alpha"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "translationX"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "translationY"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "translationZ"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "elevation"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "rotationX"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "rotationY"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "rotationZ"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "scaleX"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "scaleY"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "pivotX"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "pivotY"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "progress"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "pathRotate"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "easing"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "waveShape"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "customWave"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "period"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "offset"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "phase"

    aput-object v2, v0, v1

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$CycleType;->KEY_WORDS:[Ljava/lang/String;

    return-void
.end method

.method public static getId(Ljava/lang/String;)I
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 305
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_f2

    :cond_8
    goto/16 :goto_bc

    :sswitch_a
    const-string/jumbo v0, "visibility"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto/16 :goto_bd

    :sswitch_16
    const-string v0, "pathRotate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xe

    goto/16 :goto_bd

    :sswitch_22
    const-string v0, "curveFit"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto/16 :goto_bd

    :sswitch_2d
    const-string v0, "alpha"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    goto/16 :goto_bd

    :sswitch_38
    const-string v0, "scaleY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xa

    goto/16 :goto_bd

    :sswitch_44
    const-string v0, "scaleX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    goto/16 :goto_bd

    :sswitch_50
    const-string v0, "pivotY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xc

    goto :goto_bd

    :sswitch_5b
    const-string v0, "pivotX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xb

    goto :goto_bd

    :sswitch_66
    const-string v0, "progress"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xd

    goto :goto_bd

    :sswitch_71
    const-string/jumbo v0, "translationZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x5

    goto :goto_bd

    :sswitch_7c
    const-string/jumbo v0, "translationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x4

    goto :goto_bd

    :sswitch_87
    const-string/jumbo v0, "translationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    goto :goto_bd

    :sswitch_92
    const-string v0, "rotationZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x8

    goto :goto_bd

    :sswitch_9d
    const-string v0, "rotationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x7

    goto :goto_bd

    :sswitch_a7
    const-string v0, "rotationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x6

    goto :goto_bd

    :sswitch_b1
    const-string v0, "easing"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xf

    goto :goto_bd

    :goto_bc
    move v0, v1

    :goto_bd
    packed-switch v0, :pswitch_data_134

    .line 339
    return v1

    .line 337
    :pswitch_c1
    const/16 v0, 0x1a4

    return v0

    .line 335
    :pswitch_c4
    const/16 v0, 0x1a0

    return v0

    .line 333
    :pswitch_c7
    const/16 v0, 0x13b

    return v0

    .line 331
    :pswitch_ca
    const/16 v0, 0x13a

    return v0

    .line 329
    :pswitch_cd
    const/16 v0, 0x139

    return v0

    .line 327
    :pswitch_d0
    const/16 v0, 0x138

    return v0

    .line 325
    :pswitch_d3
    const/16 v0, 0x137

    return v0

    .line 323
    :pswitch_d6
    const/16 v0, 0x136

    return v0

    .line 321
    :pswitch_d9
    const/16 v0, 0x135

    return v0

    .line 319
    :pswitch_dc
    const/16 v0, 0x134

    return v0

    .line 317
    :pswitch_df
    const/16 v0, 0x132

    return v0

    .line 315
    :pswitch_e2
    const/16 v0, 0x131

    return v0

    .line 313
    :pswitch_e5
    const/16 v0, 0x130

    return v0

    .line 311
    :pswitch_e8
    const/16 v0, 0x193

    return v0

    .line 309
    :pswitch_eb
    const/16 v0, 0x192

    return v0

    .line 307
    :pswitch_ee
    const/16 v0, 0x191

    return v0

    nop

    :sswitch_data_f2
    .sparse-switch
        -0x4e19c2d5 -> :sswitch_b1
        -0x4a771f66 -> :sswitch_a7
        -0x4a771f65 -> :sswitch_9d
        -0x4a771f64 -> :sswitch_92
        -0x490b9c39 -> :sswitch_87
        -0x490b9c38 -> :sswitch_7c
        -0x490b9c37 -> :sswitch_71
        -0x3bab3dd3 -> :sswitch_66
        -0x3ae243aa -> :sswitch_5b
        -0x3ae243a9 -> :sswitch_50
        -0x3621dfb2 -> :sswitch_44
        -0x3621dfb1 -> :sswitch_38
        0x589b15e -> :sswitch_2d
        0x2283b8a2 -> :sswitch_22
        0x2fdfbde0 -> :sswitch_16
        0x73b66312 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_134
    .packed-switch 0x0
        :pswitch_ee
        :pswitch_eb
        :pswitch_e8
        :pswitch_e5
        :pswitch_e2
        :pswitch_df
        :pswitch_dc
        :pswitch_d9
        :pswitch_d6
        :pswitch_d3
        :pswitch_d0
        :pswitch_cd
        :pswitch_ca
        :pswitch_c7
        :pswitch_c4
        :pswitch_c1
    .end packed-switch
.end method

.method public static getType(I)I
    .registers 2
    .param p0, "name"    # I

    .line 343
    sparse-switch p0, :sswitch_data_c

    .line 371
    const/4 v0, -0x1

    return v0

    .line 365
    :sswitch_5
    const/4 v0, 0x4

    return v0

    .line 369
    :sswitch_7
    const/16 v0, 0x8

    return v0

    .line 347
    :sswitch_a
    const/4 v0, 0x2

    return v0

    :sswitch_data_c
    .sparse-switch
        0x64 -> :sswitch_a
        0x65 -> :sswitch_7
        0x130 -> :sswitch_5
        0x131 -> :sswitch_5
        0x132 -> :sswitch_5
        0x133 -> :sswitch_5
        0x134 -> :sswitch_5
        0x135 -> :sswitch_5
        0x136 -> :sswitch_5
        0x137 -> :sswitch_5
        0x138 -> :sswitch_5
        0x139 -> :sswitch_5
        0x13a -> :sswitch_5
        0x13b -> :sswitch_5
        0x191 -> :sswitch_a
        0x192 -> :sswitch_a
        0x193 -> :sswitch_5
        0x1a0 -> :sswitch_5
        0x1a4 -> :sswitch_7
        0x1a5 -> :sswitch_7
        0x1a7 -> :sswitch_5
        0x1a8 -> :sswitch_5
        0x1a9 -> :sswitch_5
    .end sparse-switch
.end method
