.class public interface abstract Landroidx/constraintlayout/core/motion/utils/TypedValues$MotionScene;
.super Ljava/lang/Object;
.source "TypedValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/TypedValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MotionScene"
.end annotation


# static fields
.field public static final KEY_WORDS:[Ljava/lang/String;

.field public static final NAME:Ljava/lang/String; = "MotionScene"

.field public static final S_DEFAULT_DURATION:Ljava/lang/String; = "defaultDuration"

.field public static final S_LAYOUT_DURING_TRANSITION:Ljava/lang/String; = "layoutDuringTransition"

.field public static final TYPE_DEFAULT_DURATION:I = 0x258

.field public static final TYPE_LAYOUT_DURING_TRANSITION:I = 0x259


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 679
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "defaultDuration"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "layoutDuringTransition"

    aput-object v2, v0, v1

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$MotionScene;->KEY_WORDS:[Ljava/lang/String;

    return-void
.end method

.method public static getId(Ljava/lang/String;)I
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 702
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_28

    :cond_8
    goto :goto_1d

    :sswitch_9
    const-string v0, "layoutDuringTransition"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_1e

    :sswitch_13
    const-string v0, "defaultDuration"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_1e

    :goto_1d
    move v0, v1

    :goto_1e
    packed-switch v0, :pswitch_data_32

    .line 708
    return v1

    .line 706
    :pswitch_22
    const/16 v0, 0x259

    return v0

    .line 704
    :pswitch_25
    const/16 v0, 0x258

    return v0

    :sswitch_data_28
    .sparse-switch
        0x5cb6f5 -> :sswitch_13
        0x3d519dc0 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_25
        :pswitch_22
    .end packed-switch
.end method

.method public static getType(I)I
    .registers 2
    .param p0, "name"    # I

    .line 685
    packed-switch p0, :pswitch_data_a

    .line 691
    const/4 v0, -0x1

    return v0

    .line 689
    :pswitch_5
    const/4 v0, 0x1

    return v0

    .line 687
    :pswitch_7
    const/4 v0, 0x2

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x258
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method
