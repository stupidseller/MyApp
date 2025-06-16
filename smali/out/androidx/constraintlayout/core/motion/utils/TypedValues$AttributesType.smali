.class public interface abstract Landroidx/constraintlayout/core/motion/utils/TypedValues$AttributesType;
.super Ljava/lang/Object;
.source "TypedValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/TypedValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AttributesType"
.end annotation


# static fields
.field public static final KEY_WORDS:[Ljava/lang/String;

.field public static final NAME:Ljava/lang/String; = "KeyAttributes"

.field public static final S_ALPHA:Ljava/lang/String; = "alpha"

.field public static final S_CURVE_FIT:Ljava/lang/String; = "curveFit"

.field public static final S_CUSTOM:Ljava/lang/String; = "CUSTOM"

.field public static final S_EASING:Ljava/lang/String; = "easing"

.field public static final S_ELEVATION:Ljava/lang/String; = "elevation"

.field public static final S_FRAME:Ljava/lang/String; = "frame"

.field public static final S_PATH_ROTATE:Ljava/lang/String; = "pathRotate"

.field public static final S_PIVOT_TARGET:Ljava/lang/String; = "pivotTarget"

.field public static final S_PIVOT_X:Ljava/lang/String; = "pivotX"

.field public static final S_PIVOT_Y:Ljava/lang/String; = "pivotY"

.field public static final S_PROGRESS:Ljava/lang/String; = "progress"

.field public static final S_ROTATION_X:Ljava/lang/String; = "rotationX"

.field public static final S_ROTATION_Y:Ljava/lang/String; = "rotationY"

.field public static final S_ROTATION_Z:Ljava/lang/String; = "rotationZ"

.field public static final S_SCALE_X:Ljava/lang/String; = "scaleX"

.field public static final S_SCALE_Y:Ljava/lang/String; = "scaleY"

.field public static final S_TARGET:Ljava/lang/String; = "target"

.field public static final S_TRANSLATION_X:Ljava/lang/String; = "translationX"

.field public static final S_TRANSLATION_Y:Ljava/lang/String; = "translationY"

.field public static final S_TRANSLATION_Z:Ljava/lang/String; = "translationZ"

.field public static final S_VISIBILITY:Ljava/lang/String; = "visibility"

.field public static final TYPE_ALPHA:I = 0x12f

.field public static final TYPE_CURVE_FIT:I = 0x12d

.field public static final TYPE_EASING:I = 0x13d

.field public static final TYPE_ELEVATION:I = 0x133

.field public static final TYPE_PATH_ROTATE:I = 0x13c

.field public static final TYPE_PIVOT_TARGET:I = 0x13e

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

.field public static final TYPE_VISIBILITY:I = 0x12e


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 115
    const/16 v0, 0x15

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

    const-string v2, "CUSTOM"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "frame"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "target"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "pivotTarget"

    aput-object v2, v0, v1

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$AttributesType;->KEY_WORDS:[Ljava/lang/String;

    return-void
.end method

.method public static getId(Ljava/lang/String;)I
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 147
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_130

    :cond_8
    goto/16 :goto_ee

    :sswitch_a
    const-string/jumbo v0, "visibility"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto/16 :goto_ef

    :sswitch_16
    const-string v0, "pivotTarget"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x13

    goto/16 :goto_ef

    :sswitch_22
    const-string v0, "pathRotate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xf

    goto/16 :goto_ef

    :sswitch_2e
    const-string v0, "curveFit"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto/16 :goto_ef

    :sswitch_39
    const-string v0, "frame"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x11

    goto/16 :goto_ef

    :sswitch_45
    const-string v0, "alpha"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    goto/16 :goto_ef

    :sswitch_50
    const-string v0, "elevation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x6

    goto/16 :goto_ef

    :sswitch_5b
    const-string/jumbo v0, "target"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x12

    goto/16 :goto_ef

    :sswitch_68
    const-string v0, "scaleY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xb

    goto/16 :goto_ef

    :sswitch_74
    const-string v0, "scaleX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xa

    goto/16 :goto_ef

    :sswitch_80
    const-string v0, "pivotY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xd

    goto/16 :goto_ef

    :sswitch_8c
    const-string v0, "pivotX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xc

    goto :goto_ef

    :sswitch_97
    const-string v0, "progress"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xe

    goto :goto_ef

    :sswitch_a2
    const-string/jumbo v0, "translationZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x5

    goto :goto_ef

    :sswitch_ad
    const-string/jumbo v0, "translationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x4

    goto :goto_ef

    :sswitch_b8
    const-string/jumbo v0, "translationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    goto :goto_ef

    :sswitch_c3
    const-string v0, "rotationZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    goto :goto_ef

    :sswitch_ce
    const-string v0, "rotationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x8

    goto :goto_ef

    :sswitch_d9
    const-string v0, "rotationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x7

    goto :goto_ef

    :sswitch_e3
    const-string v0, "easing"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x10

    goto :goto_ef

    :goto_ee
    move v0, v1

    :goto_ef
    packed-switch v0, :pswitch_data_182

    .line 189
    return v1

    .line 187
    :pswitch_f3
    const/16 v0, 0x13e

    return v0

    .line 185
    :pswitch_f6
    const/16 v0, 0x65

    return v0

    .line 183
    :pswitch_f9
    const/16 v0, 0x64

    return v0

    .line 181
    :pswitch_fc
    const/16 v0, 0x13d

    return v0

    .line 179
    :pswitch_ff
    const/16 v0, 0x13c

    return v0

    .line 177
    :pswitch_102
    const/16 v0, 0x13b

    return v0

    .line 175
    :pswitch_105
    const/16 v0, 0x13a

    return v0

    .line 173
    :pswitch_108
    const/16 v0, 0x139

    return v0

    .line 171
    :pswitch_10b
    const/16 v0, 0x138

    return v0

    .line 169
    :pswitch_10e
    const/16 v0, 0x137

    return v0

    .line 167
    :pswitch_111
    const/16 v0, 0x136

    return v0

    .line 165
    :pswitch_114
    const/16 v0, 0x135

    return v0

    .line 163
    :pswitch_117
    const/16 v0, 0x134

    return v0

    .line 161
    :pswitch_11a
    const/16 v0, 0x133

    return v0

    .line 159
    :pswitch_11d
    const/16 v0, 0x132

    return v0

    .line 157
    :pswitch_120
    const/16 v0, 0x131

    return v0

    .line 155
    :pswitch_123
    const/16 v0, 0x130

    return v0

    .line 153
    :pswitch_126
    const/16 v0, 0x12f

    return v0

    .line 151
    :pswitch_129
    const/16 v0, 0x12e

    return v0

    .line 149
    :pswitch_12c
    const/16 v0, 0x12d

    return v0

    nop

    :sswitch_data_130
    .sparse-switch
        -0x4e19c2d5 -> :sswitch_e3
        -0x4a771f66 -> :sswitch_d9
        -0x4a771f65 -> :sswitch_ce
        -0x4a771f64 -> :sswitch_c3
        -0x490b9c39 -> :sswitch_b8
        -0x490b9c38 -> :sswitch_ad
        -0x490b9c37 -> :sswitch_a2
        -0x3bab3dd3 -> :sswitch_97
        -0x3ae243aa -> :sswitch_8c
        -0x3ae243a9 -> :sswitch_80
        -0x3621dfb2 -> :sswitch_74
        -0x3621dfb1 -> :sswitch_68
        -0x34818e6f -> :sswitch_5b
        -0x42d1a3 -> :sswitch_50
        0x589b15e -> :sswitch_45
        0x5d2a96d -> :sswitch_39
        0x2283b8a2 -> :sswitch_2e
        0x2fdfbde0 -> :sswitch_22
        0x45917073 -> :sswitch_16
        0x73b66312 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_182
    .packed-switch 0x0
        :pswitch_12c
        :pswitch_129
        :pswitch_126
        :pswitch_123
        :pswitch_120
        :pswitch_11d
        :pswitch_11a
        :pswitch_117
        :pswitch_114
        :pswitch_111
        :pswitch_10e
        :pswitch_10b
        :pswitch_108
        :pswitch_105
        :pswitch_102
        :pswitch_ff
        :pswitch_fc
        :pswitch_f9
        :pswitch_f6
        :pswitch_f3
    .end packed-switch
.end method

.method public static getType(I)I
    .registers 2
    .param p0, "name"    # I

    .line 193
    sparse-switch p0, :sswitch_data_c

    .line 218
    const/4 v0, -0x1

    return v0

    .line 212
    :sswitch_5
    const/4 v0, 0x4

    return v0

    .line 216
    :sswitch_7
    const/16 v0, 0x8

    return v0

    .line 197
    :sswitch_a
    const/4 v0, 0x2

    return v0

    :sswitch_data_c
    .sparse-switch
        0x64 -> :sswitch_a
        0x65 -> :sswitch_7
        0x12d -> :sswitch_a
        0x12e -> :sswitch_a
        0x12f -> :sswitch_5
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
        0x13c -> :sswitch_5
        0x13d -> :sswitch_7
        0x13e -> :sswitch_7
    .end sparse-switch
.end method
