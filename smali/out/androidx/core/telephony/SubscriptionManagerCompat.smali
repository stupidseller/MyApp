.class public Landroidx/core/telephony/SubscriptionManagerCompat;
.super Ljava/lang/Object;
.source "SubscriptionManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/telephony/SubscriptionManagerCompat$Api29Impl;
    }
.end annotation


# static fields
.field private static sGetSlotIndexMethod:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSlotIndex(I)I
    .registers 8
    .param p0, "subId"    # I

    .line 43
    const/4 v0, -0x1

    if-ne p0, v0, :cond_4

    .line 44
    return v0

    .line 47
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_f

    .line 48
    invoke-static {p0}, Landroidx/core/telephony/SubscriptionManagerCompat$Api29Impl;->getSlotIndex(I)I

    move-result v0

    return v0

    .line 51
    :cond_f
    :try_start_f
    sget-object v1, Landroidx/core/telephony/SubscriptionManagerCompat;->sGetSlotIndexMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_41

    .line 52
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v1, v2, :cond_2c

    .line 53
    const-class v1, Landroid/telephony/SubscriptionManager;

    const-string v2, "getSlotIndex"

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    invoke-virtual {v1, v2, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/core/telephony/SubscriptionManagerCompat;->sGetSlotIndexMethod:Ljava/lang/reflect/Method;

    goto :goto_3c

    .line 56
    :cond_2c
    const-class v1, Landroid/telephony/SubscriptionManager;

    const-string v2, "getSlotId"

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    invoke-virtual {v1, v2, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/core/telephony/SubscriptionManagerCompat;->sGetSlotIndexMethod:Ljava/lang/reflect/Method;

    .line 59
    :goto_3c
    sget-object v1, Landroidx/core/telephony/SubscriptionManagerCompat;->sGetSlotIndexMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 62
    :cond_41
    sget-object v1, Landroidx/core/telephony/SubscriptionManagerCompat;->sGetSlotIndexMethod:Ljava/lang/reflect/Method;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 63
    .local v1, "slotIdx":Ljava/lang/Integer;
    if-eqz v1, :cond_59

    .line 64
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_58
    .catch Ljava/lang/NoSuchMethodException; {:try_start_f .. :try_end_58} :catch_5e
    .catch Ljava/lang/IllegalAccessException; {:try_start_f .. :try_end_58} :catch_5c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_f .. :try_end_58} :catch_5a

    return v0

    .line 63
    .end local v1    # "slotIdx":Ljava/lang/Integer;
    :cond_59
    goto :goto_5f

    .line 68
    :catch_5a
    move-exception v1

    goto :goto_60

    .line 67
    :catch_5c
    move-exception v1

    goto :goto_5f

    .line 66
    :catch_5e
    move-exception v1

    .line 69
    :goto_5f
    nop

    .line 71
    :goto_60
    return v0
.end method
