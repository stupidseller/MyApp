.class Landroidx/core/os/ProcessCompat$Api16Impl;
.super Ljava/lang/Object;
.source "ProcessCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/os/ProcessCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api16Impl"
.end annotation


# static fields
.field private static sMethodUserIdIsAppMethod:Ljava/lang/reflect/Method;

.field private static sResolved:Z

.field private static final sResolvedLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/os/ProcessCompat$Api16Impl;->sResolvedLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    return-void
.end method

.method static isApplicationUid(I)Z
    .registers 8
    .param p0, "uid"    # I

    .line 135
    const/4 v0, 0x1

    :try_start_1
    sget-object v1, Landroidx/core/os/ProcessCompat$Api16Impl;->sResolvedLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_46

    .line 136
    :try_start_4
    sget-boolean v2, Landroidx/core/os/ProcessCompat$Api16Impl;->sResolved:Z

    if-nez v2, :cond_1f

    .line 137
    sput-boolean v0, Landroidx/core/os/ProcessCompat$Api16Impl;->sResolved:Z

    .line 138
    const-string v2, "android.os.UserId"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "isApp"

    new-array v4, v0, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 139
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroidx/core/os/ProcessCompat$Api16Impl;->sMethodUserIdIsAppMethod:Ljava/lang/reflect/Method;

    .line 141
    :cond_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_43

    .line 142
    :try_start_20
    sget-object v1, Landroidx/core/os/ProcessCompat$Api16Impl;->sMethodUserIdIsAppMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_42

    .line 143
    sget-object v1, Landroidx/core/os/ProcessCompat$Api16Impl;->sMethodUserIdIsAppMethod:Ljava/lang/reflect/Method;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 144
    .local v1, "result":Ljava/lang/Boolean;
    if-eqz v1, :cond_3c

    .line 148
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 146
    :cond_3c
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    .end local p0    # "uid":I
    throw v2
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_42} :catch_46

    .line 152
    .end local v1    # "result":Ljava/lang/Boolean;
    .restart local p0    # "uid":I
    :cond_42
    goto :goto_4a

    .line 141
    :catchall_43
    move-exception v2

    :try_start_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    .end local p0    # "uid":I
    :try_start_45
    throw v2
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_46} :catch_46

    .line 150
    .restart local p0    # "uid":I
    :catch_46
    move-exception v1

    .line 151
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 153
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4a
    return v0
.end method
