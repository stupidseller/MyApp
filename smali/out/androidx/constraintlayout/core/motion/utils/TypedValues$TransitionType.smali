.class public interface abstract Landroidx/constraintlayout/core/motion/utils/TypedValues$TransitionType;
.super Ljava/lang/Object;
.source "TypedValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/TypedValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TransitionType"
.end annotation


# static fields
.field public static final KEY_WORDS:[Ljava/lang/String;

.field public static final NAME:Ljava/lang/String; = "Transitions"

.field public static final S_AUTO_TRANSITION:Ljava/lang/String; = "autoTransition"

.field public static final S_DURATION:Ljava/lang/String; = "duration"

.field public static final S_FROM:Ljava/lang/String; = "from"

.field public static final S_INTERPOLATOR:Ljava/lang/String; = "motionInterpolator"

.field public static final S_PATH_MOTION_ARC:Ljava/lang/String; = "pathMotionArc"

.field public static final S_STAGGERED:Ljava/lang/String; = "staggered"

.field public static final S_TO:Ljava/lang/String; = "to"

.field public static final S_TRANSITION_FLAGS:Ljava/lang/String; = "transitionFlags"

.field public static final TYPE_AUTO_TRANSITION:I = 0x2c0

.field public static final TYPE_DURATION:I = 0x2bc

.field public static final TYPE_FROM:I = 0x2bd

.field public static final TYPE_INTERPOLATOR:I = 0x2c1

.field public static final TYPE_PATH_MOTION_ARC:I = 0x1fd

.field public static final TYPE_STAGGERED:I = 0x2c2

.field public static final TYPE_TO:I = 0x2be

.field public static final TYPE_TRANSITION_FLAGS:I = 0x2c3


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 733
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "from"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v3, "to"

    aput-object v3, v0, v1

    const/4 v1, 0x3

    const-string v3, "pathMotionArc"

    aput-object v3, v0, v1

    const/4 v1, 0x4

    const-string v3, "autoTransition"

    aput-object v3, v0, v1

    const/4 v1, 0x5

    const-string v3, "motionInterpolator"

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v3, "staggered"

    aput-object v3, v0, v1

    const/4 v1, 0x7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "transitionFlags"

    aput-object v2, v0, v1

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$TransitionType;->KEY_WORDS:[Ljava/lang/String;

    return-void
.end method

.method public static getId(Ljava/lang/String;)I
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 770
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_7a

    :cond_8
    goto :goto_5c

    :sswitch_9
    const-string/jumbo v0, "staggered"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x6

    goto :goto_5d

    :sswitch_14
    const-string v0, "pathMotionArc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    goto :goto_5d

    :sswitch_1e
    const-string v0, "from"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_5d

    :sswitch_28
    const-string/jumbo v0, "to"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    goto :goto_5d

    :sswitch_33
    const-string v0, "autoTransition"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x4

    goto :goto_5d

    :sswitch_3d
    const-string v0, "motionInterpolator"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x5

    goto :goto_5d

    :sswitch_47
    const-string v0, "duration"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_5d

    :sswitch_51
    const-string/jumbo v0, "transitionFlags"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x7

    goto :goto_5d

    :goto_5c
    move v0, v1

    :goto_5d
    packed-switch v0, :pswitch_data_9c

    .line 788
    return v1

    .line 786
    :pswitch_61
    const/16 v0, 0x2c3

    return v0

    .line 784
    :pswitch_64
    const/16 v0, 0x2c2

    return v0

    .line 782
    :pswitch_67
    const/16 v0, 0x2c1

    return v0

    .line 780
    :pswitch_6a
    const/16 v0, 0x2c0

    return v0

    .line 778
    :pswitch_6d
    const/16 v0, 0x1fd

    return v0

    .line 776
    :pswitch_70
    const/16 v0, 0x2be

    return v0

    .line 774
    :pswitch_73
    const/16 v0, 0x2bd

    return v0

    .line 772
    :pswitch_76
    const/16 v0, 0x2bc

    return v0

    nop

    :sswitch_data_7a
    .sparse-switch
        -0x770661ce -> :sswitch_51
        -0x76bbb26c -> :sswitch_47
        -0x50ef8463 -> :sswitch_3d
        -0x4d5ee79c -> :sswitch_33
        0xe7b -> :sswitch_28
        0x3017aa -> :sswitch_1e
        0x4e203417 -> :sswitch_14
        0x6da0e50c -> :sswitch_9
    .end sparse-switch

    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_76
        :pswitch_73
        :pswitch_70
        :pswitch_6d
        :pswitch_6a
        :pswitch_67
        :pswitch_64
        :pswitch_61
    .end packed-switch
.end method

.method public static getType(I)I
    .registers 2
    .param p0, "name"    # I

    .line 746
    sparse-switch p0, :sswitch_data_c

    .line 759
    const/4 v0, -0x1

    return v0

    .line 757
    :sswitch_5
    const/4 v0, 0x4

    return v0

    .line 754
    :sswitch_7
    const/16 v0, 0x8

    return v0

    .line 749
    :sswitch_a
    const/4 v0, 0x2

    return v0

    :sswitch_data_c
    .sparse-switch
        0x1fd -> :sswitch_a
        0x2bc -> :sswitch_a
        0x2bd -> :sswitch_7
        0x2be -> :sswitch_7
        0x2c1 -> :sswitch_7
        0x2c2 -> :sswitch_5
        0x2c3 -> :sswitch_7
    .end sparse-switch
.end method
