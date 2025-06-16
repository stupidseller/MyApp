.class Landroidx/transition/ViewGroupUtils;
.super Ljava/lang/Object;
.source "ViewGroupUtils.java"


# static fields
.field private static sGetChildDrawingOrderMethod:Ljava/lang/reflect/Method;

.field private static sGetChildDrawingOrderMethodFetched:Z

.field private static sTryHiddenSuppressLayout:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    const/4 v0, 0x1

    sput-boolean v0, Landroidx/transition/ViewGroupUtils;->sTryHiddenSuppressLayout:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    return-void
.end method

.method static getChildDrawingOrder(Landroid/view/ViewGroup;I)I
    .registers 8
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;
    .param p1, "i"    # I

    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_b

    .line 84
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildDrawingOrder(I)I

    move-result v0

    return v0

    .line 86
    :cond_b
    sget-boolean v0, Landroidx/transition/ViewGroupUtils;->sGetChildDrawingOrderMethodFetched:Z

    if-nez v0, :cond_2f

    .line 88
    const/4 v0, 0x1

    :try_start_10
    const-class v1, Landroid/view/ViewGroup;

    const-string v2, "getChildDrawingOrder"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/transition/ViewGroupUtils;->sGetChildDrawingOrderMethod:Ljava/lang/reflect/Method;

    .line 90
    sget-object v1, Landroidx/transition/ViewGroupUtils;->sGetChildDrawingOrderMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_2b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_10 .. :try_end_2b} :catch_2c

    .line 93
    goto :goto_2d

    .line 91
    :catch_2c
    move-exception v1

    .line 94
    :goto_2d
    sput-boolean v0, Landroidx/transition/ViewGroupUtils;->sGetChildDrawingOrderMethodFetched:Z

    .line 96
    :cond_2f
    sget-object v0, Landroidx/transition/ViewGroupUtils;->sGetChildDrawingOrderMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_54

    .line 98
    :try_start_33
    sget-object v0, Landroidx/transition/ViewGroupUtils;->sGetChildDrawingOrderMethod:Ljava/lang/reflect/Method;

    .line 99
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 98
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_4f
    .catch Ljava/lang/IllegalAccessException; {:try_start_33 .. :try_end_4f} :catch_52
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_33 .. :try_end_4f} :catch_50

    return v0

    .line 101
    :catch_50
    move-exception v0

    goto :goto_54

    .line 100
    :catch_52
    move-exception v0

    .line 102
    nop

    .line 105
    :cond_54
    :goto_54
    return p1
.end method

.method static getOverlay(Landroid/view/ViewGroup;)Landroidx/transition/ViewGroupOverlayImpl;
    .registers 2
    .param p0, "group"    # Landroid/view/ViewGroup;

    .line 46
    nop

    .line 47
    new-instance v0, Landroidx/transition/ViewGroupOverlayApi18;

    invoke-direct {v0, p0}, Landroidx/transition/ViewGroupOverlayApi18;-><init>(Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method private static hiddenSuppressLayout(Landroid/view/ViewGroup;Z)V
    .registers 4
    .param p0, "group"    # Landroid/view/ViewGroup;
    .param p1, "suppress"    # Z

    .line 68
    sget-boolean v0, Landroidx/transition/ViewGroupUtils;->sTryHiddenSuppressLayout:Z

    if-eqz v0, :cond_c

    .line 72
    :try_start_4
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->suppressLayout(Z)V
    :try_end_7
    .catch Ljava/lang/NoSuchMethodError; {:try_start_4 .. :try_end_7} :catch_8

    .line 75
    goto :goto_c

    .line 73
    :catch_8
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    const/4 v1, 0x0

    sput-boolean v1, Landroidx/transition/ViewGroupUtils;->sTryHiddenSuppressLayout:Z

    .line 77
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    :cond_c
    :goto_c
    return-void
.end method

.method static suppressLayout(Landroid/view/ViewGroup;Z)V
    .registers 4
    .param p0, "group"    # Landroid/view/ViewGroup;
    .param p1, "suppress"    # Z

    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_a

    .line 57
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    goto :goto_e

    .line 58
    :cond_a
    nop

    .line 59
    invoke-static {p0, p1}, Landroidx/transition/ViewGroupUtils;->hiddenSuppressLayout(Landroid/view/ViewGroup;Z)V

    .line 63
    :goto_e
    return-void
.end method
