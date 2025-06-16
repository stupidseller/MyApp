.class Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggleHoneycomb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionBarDrawerToggleHC"

.field private static final THEME_ATTRS:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    const v0, 0x101030b

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb;->THEME_ATTRS:[I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    return-void
.end method

.method public static getThemeUpIndicator(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;

    .line 90
    sget-object v0, Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb;->THEME_ATTRS:[I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 91
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 92
    .local v1, "result":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 93
    return-object v1
.end method

.method public static setActionBarDescription(Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;Landroid/app/Activity;I)Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;
    .registers 6
    .param p0, "info"    # Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "contentDescRes"    # I

    .line 70
    if-nez p0, :cond_8

    .line 71
    new-instance v0, Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;

    invoke-direct {v0, p1}, Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;-><init>(Landroid/app/Activity;)V

    move-object p0, v0

    .line 73
    :cond_8
    iget-object v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->setHomeAsUpIndicator:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_27

    .line 75
    :try_start_c
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 76
    .local v0, "actionBar":Landroid/app/ActionBar;
    iget-object v1, p0, Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->setHomeActionContentDescription:Ljava/lang/reflect/Method;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1d} :catch_1f

    .line 77
    nop

    .line 84
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    goto :goto_27

    .line 82
    :catch_1f
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ActionBarDrawerToggleHC"

    const-string v2, "Couldn\'t set content description via JB-MR2 API"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_27
    :goto_27
    return-object p0
.end method

.method public static setActionBarUpIndicator(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;
    .registers 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "contentDescRes"    # I

    .line 51
    new-instance v0, Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;-><init>(Landroid/app/Activity;)V

    .line 52
    .local v0, "info":Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;
    iget-object v1, v0, Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->setHomeAsUpIndicator:Ljava/lang/reflect/Method;

    const-string v2, "ActionBarDrawerToggleHC"

    if-eqz v1, :cond_2e

    .line 54
    :try_start_b
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 55
    .local v1, "actionBar":Landroid/app/ActionBar;
    iget-object v3, v0, Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->setHomeAsUpIndicator:Ljava/lang/reflect/Method;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v3, v0, Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->setHomeActionContentDescription:Ljava/lang/reflect/Method;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_25} :catch_27

    .line 59
    nop

    .end local v1    # "actionBar":Landroid/app/ActionBar;
    goto :goto_3d

    .line 57
    :catch_27
    move-exception v1

    .line 58
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Couldn\'t set home-as-up indicator via JB-MR2 API"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_3d

    .line 60
    :cond_2e
    iget-object v1, v0, Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->upIndicatorView:Landroid/widget/ImageView;

    if-eqz v1, :cond_38

    .line 61
    iget-object v1, v0, Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->upIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3d

    .line 63
    :cond_38
    const-string v1, "Couldn\'t set home-as-up indicator"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :goto_3d
    return-object v0
.end method
