.class Landroidx/core/app/BundleCompat$BeforeApi18Impl;
.super Ljava/lang/Object;
.source "BundleCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/BundleCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BeforeApi18Impl"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BundleCompatBaseImpl"

.field private static sGetIBinderMethod:Ljava/lang/reflect/Method;

.field private static sGetIBinderMethodFetched:Z

.field private static sPutIBinderMethod:Ljava/lang/reflect/Method;

.field private static sPutIBinderMethodFetched:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;
    .registers 9
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    .line 52
    sget-boolean v0, Landroidx/core/app/BundleCompat$BeforeApi18Impl;->sGetIBinderMethodFetched:Z

    const-string v1, "BundleCompatBaseImpl"

    if-nez v0, :cond_26

    .line 54
    const/4 v0, 0x1

    :try_start_7
    const-class v2, Landroid/os/Bundle;

    const-string v3, "getIBinder"

    new-array v4, v0, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroidx/core/app/BundleCompat$BeforeApi18Impl;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    .line 55
    sget-object v2, Landroidx/core/app/BundleCompat$BeforeApi18Impl;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_1d} :catch_1e

    .line 58
    goto :goto_24

    .line 56
    :catch_1e
    move-exception v2

    .line 57
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string v3, "Failed to retrieve getIBinder method"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :goto_24
    sput-boolean v0, Landroidx/core/app/BundleCompat$BeforeApi18Impl;->sGetIBinderMethodFetched:Z

    .line 62
    :cond_26
    sget-object v0, Landroidx/core/app/BundleCompat$BeforeApi18Impl;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-eqz v0, :cond_44

    .line 64
    :try_start_2b
    sget-object v0, Landroidx/core/app/BundleCompat$BeforeApi18Impl;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;
    :try_end_37
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2b .. :try_end_37} :catch_3c
    .catch Ljava/lang/IllegalAccessException; {:try_start_2b .. :try_end_37} :catch_3a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2b .. :try_end_37} :catch_38

    return-object v0

    .line 65
    :catch_38
    move-exception v0

    goto :goto_3d

    :catch_3a
    move-exception v0

    goto :goto_3d

    :catch_3c
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    :goto_3d
    const-string v3, "Failed to invoke getIBinder via reflection"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    sput-object v2, Landroidx/core/app/BundleCompat$BeforeApi18Impl;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    .line 71
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_44
    return-object v2
.end method

.method public static putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 10
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 75
    sget-boolean v0, Landroidx/core/app/BundleCompat$BeforeApi18Impl;->sPutIBinderMethodFetched:Z

    const-string v1, "BundleCompatBaseImpl"

    if-nez v0, :cond_2b

    .line 77
    const/4 v0, 0x1

    :try_start_7
    const-class v2, Landroid/os/Bundle;

    const-string v3, "putIBinder"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Landroid/os/IBinder;

    aput-object v5, v4, v0

    .line 78
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroidx/core/app/BundleCompat$BeforeApi18Impl;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    .line 79
    sget-object v2, Landroidx/core/app/BundleCompat$BeforeApi18Impl;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_22
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_22} :catch_23

    .line 82
    goto :goto_29

    .line 80
    :catch_23
    move-exception v2

    .line 81
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string v3, "Failed to retrieve putIBinder method"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :goto_29
    sput-boolean v0, Landroidx/core/app/BundleCompat$BeforeApi18Impl;->sPutIBinderMethodFetched:Z

    .line 86
    :cond_2b
    sget-object v0, Landroidx/core/app/BundleCompat$BeforeApi18Impl;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_46

    .line 88
    :try_start_2f
    sget-object v0, Landroidx/core/app/BundleCompat$BeforeApi18Impl;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2f .. :try_end_38} :catch_3d
    .catch Ljava/lang/IllegalAccessException; {:try_start_2f .. :try_end_38} :catch_3b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2f .. :try_end_38} :catch_39

    .line 93
    goto :goto_46

    .line 89
    :catch_39
    move-exception v0

    goto :goto_3e

    :catch_3b
    move-exception v0

    goto :goto_3e

    :catch_3d
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    :goto_3e
    const-string v2, "Failed to invoke putIBinder via reflection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    const/4 v1, 0x0

    sput-object v1, Landroidx/core/app/BundleCompat$BeforeApi18Impl;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    .line 95
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_46
    :goto_46
    return-void
.end method
