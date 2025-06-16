.class final Landroidx/core/app/ActivityRecreator;
.super Ljava/lang/Object;
.source "ActivityRecreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ActivityRecreator"

.field protected static final activityThreadClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final mainHandler:Landroid/os/Handler;

.field protected static final mainThreadField:Ljava/lang/reflect/Field;

.field protected static final performStopActivity2ParamsMethod:Ljava/lang/reflect/Method;

.field protected static final performStopActivity3ParamsMethod:Ljava/lang/reflect/Method;

.field protected static final requestRelaunchActivityMethod:Ljava/lang/reflect/Method;

.field protected static final tokenField:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 91
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Landroidx/core/app/ActivityRecreator;->mainHandler:Landroid/os/Handler;

    .line 94
    invoke-static {}, Landroidx/core/app/ActivityRecreator;->getActivityThreadClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroidx/core/app/ActivityRecreator;->activityThreadClass:Ljava/lang/Class;

    .line 95
    invoke-static {}, Landroidx/core/app/ActivityRecreator;->getMainThreadField()Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/core/app/ActivityRecreator;->mainThreadField:Ljava/lang/reflect/Field;

    .line 96
    invoke-static {}, Landroidx/core/app/ActivityRecreator;->getTokenField()Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/core/app/ActivityRecreator;->tokenField:Ljava/lang/reflect/Field;

    .line 97
    sget-object v0, Landroidx/core/app/ActivityRecreator;->activityThreadClass:Ljava/lang/Class;

    invoke-static {v0}, Landroidx/core/app/ActivityRecreator;->getPerformStopActivity3Params(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/app/ActivityRecreator;->performStopActivity3ParamsMethod:Ljava/lang/reflect/Method;

    .line 98
    sget-object v0, Landroidx/core/app/ActivityRecreator;->activityThreadClass:Ljava/lang/Class;

    invoke-static {v0}, Landroidx/core/app/ActivityRecreator;->getPerformStopActivity2Params(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/app/ActivityRecreator;->performStopActivity2ParamsMethod:Ljava/lang/reflect/Method;

    .line 99
    sget-object v0, Landroidx/core/app/ActivityRecreator;->activityThreadClass:Ljava/lang/Class;

    invoke-static {v0}, Landroidx/core/app/ActivityRecreator;->getRequestRelaunchActivityMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/app/ActivityRecreator;->requestRelaunchActivityMethod:Ljava/lang/reflect/Method;

    .line 100
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getActivityThreadClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 378
    :try_start_0
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    return-object v0

    .line 379
    :catchall_7
    move-exception v0

    .line 380
    .local v0, "t":Ljava/lang/Throwable;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getMainThreadField()Ljava/lang/reflect/Field;
    .registers 2

    .line 358
    :try_start_0
    const-class v0, Landroid/app/Activity;

    const-string v1, "mMainThread"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 359
    .local v0, "mainThreadField":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    .line 360
    return-object v0

    .line 361
    .end local v0    # "mainThreadField":Ljava/lang/reflect/Field;
    :catchall_d
    move-exception v0

    .line 362
    .local v0, "t":Ljava/lang/Throwable;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getPerformStopActivity2Params(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 316
    .local p0, "activityThreadClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 317
    return-object v0

    .line 320
    :cond_4
    :try_start_4
    const-string v1, "performStopActivity"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/os/IBinder;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 322
    .local v1, "performStop":Ljava/lang/reflect/Method;
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_1b

    .line 323
    return-object v1

    .line 324
    .end local v1    # "performStop":Ljava/lang/reflect/Method;
    :catchall_1b
    move-exception v1

    .line 325
    .local v1, "t":Ljava/lang/Throwable;
    return-object v0
.end method

.method private static getPerformStopActivity3Params(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 302
    .local p0, "activityThreadClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 303
    return-object v0

    .line 306
    :cond_4
    :try_start_4
    const-string v1, "performStopActivity"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/os/IBinder;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x2

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 308
    .local v1, "performStop":Ljava/lang/reflect/Method;
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_20

    .line 309
    return-object v1

    .line 310
    .end local v1    # "performStop":Ljava/lang/reflect/Method;
    :catchall_20
    move-exception v1

    .line 311
    .local v1, "t":Ljava/lang/Throwable;
    return-object v0
.end method

.method private static getRequestRelaunchActivityMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 334
    .local p0, "activityThreadClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Landroidx/core/app/ActivityRecreator;->needsRelaunchCall()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_48

    if-nez p0, :cond_a

    goto :goto_48

    .line 338
    :cond_a
    :try_start_a
    const-string v0, "requestRelaunchActivity"

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/os/IBinder;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/util/List;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-class v3, Ljava/util/List;

    const/4 v5, 0x2

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x3

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x4

    aput-object v3, v2, v5

    const-class v3, Landroid/content/res/Configuration;

    const/4 v5, 0x5

    aput-object v3, v2, v5

    const-class v3, Landroid/content/res/Configuration;

    const/4 v5, 0x6

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x7

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v5, 0x8

    aput-object v3, v2, v5

    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 349
    .local v0, "relaunch":Ljava/lang/reflect/Method;
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_45
    .catchall {:try_start_a .. :try_end_45} :catchall_46

    .line 350
    return-object v0

    .line 351
    .end local v0    # "relaunch":Ljava/lang/reflect/Method;
    :catchall_46
    move-exception v0

    .line 352
    .local v0, "t":Ljava/lang/Throwable;
    return-object v1

    .line 335
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_48
    :goto_48
    return-object v1
.end method

.method private static getTokenField()Ljava/lang/reflect/Field;
    .registers 2

    .line 368
    :try_start_0
    const-class v0, Landroid/app/Activity;

    const-string v1, "mToken"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 369
    .local v0, "tokenField":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    .line 370
    return-object v0

    .line 371
    .end local v0    # "tokenField":Ljava/lang/reflect/Field;
    :catchall_d
    move-exception v0

    .line 372
    .local v0, "t":Ljava/lang/Throwable;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static needsRelaunchCall()Z
    .registers 2

    .line 330
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_f

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method protected static queueOnStopIfNecessary(Ljava/lang/Object;ILandroid/app/Activity;)Z
    .registers 8
    .param p0, "currentlyRecreatingToken"    # Ljava/lang/Object;
    .param p1, "currentlyRecreatingHashCode"    # I
    .param p2, "activity"    # Landroid/app/Activity;

    .line 257
    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Landroidx/core/app/ActivityRecreator;->tokenField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 258
    .local v1, "token":Ljava/lang/Object;
    if-ne v1, p0, :cond_22

    .line 259
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-eq v2, p1, :cond_10

    goto :goto_22

    .line 265
    :cond_10
    sget-object v2, Landroidx/core/app/ActivityRecreator;->mainThreadField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 269
    .local v2, "activityThread":Ljava/lang/Object;
    sget-object v3, Landroidx/core/app/ActivityRecreator;->mainHandler:Landroid/os/Handler;

    new-instance v4, Landroidx/core/app/ActivityRecreator$3;

    invoke-direct {v4, v2, v1}, Landroidx/core/app/ActivityRecreator$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_23

    .line 294
    const/4 v0, 0x1

    return v0

    .line 263
    .end local v2    # "activityThread":Ljava/lang/Object;
    :cond_22
    :goto_22
    return v0

    .line 295
    .end local v1    # "token":Ljava/lang/Object;
    :catchall_23
    move-exception v1

    .line 296
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "ActivityRecreator"

    const-string v3, "Exception while fetching field values"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 297
    return v0
.end method

.method static recreate(Landroid/app/Activity;)Z
    .registers 18
    .param p0, "activity"    # Landroid/app/Activity;

    .line 109
    move-object/from16 v1, p0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    const/4 v3, 0x1

    if-lt v0, v2, :cond_d

    .line 110
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->recreate()V

    .line 111
    return v3

    .line 115
    :cond_d
    invoke-static {}, Landroidx/core/app/ActivityRecreator;->needsRelaunchCall()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    sget-object v0, Landroidx/core/app/ActivityRecreator;->requestRelaunchActivityMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_19

    .line 116
    return v2

    .line 120
    :cond_19
    sget-object v0, Landroidx/core/app/ActivityRecreator;->performStopActivity2ParamsMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_22

    sget-object v0, Landroidx/core/app/ActivityRecreator;->performStopActivity3ParamsMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_22

    .line 121
    return v2

    .line 124
    :cond_22
    :try_start_22
    sget-object v0, Landroidx/core/app/ActivityRecreator;->tokenField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    .line 125
    .local v13, "token":Ljava/lang/Object;
    if-nez v13, :cond_2c

    .line 126
    return v2

    .line 128
    :cond_2c
    sget-object v0, Landroidx/core/app/ActivityRecreator;->mainThreadField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    .line 129
    .local v14, "activityThread":Ljava/lang/Object;
    if-nez v14, :cond_36

    .line 130
    return v2

    .line 133
    :cond_36
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    move-object v15, v0

    .line 134
    .local v15, "application":Landroid/app/Application;
    new-instance v0, Landroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;

    invoke-direct {v0, v1}, Landroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;-><init>(Landroid/app/Activity;)V

    move-object v12, v0

    .line 135
    .local v12, "callbacks":Landroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;
    invoke-virtual {v15, v12}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 143
    sget-object v0, Landroidx/core/app/ActivityRecreator;->mainHandler:Landroid/os/Handler;

    new-instance v4, Landroidx/core/app/ActivityRecreator$1;

    invoke-direct {v4, v12, v13}, Landroidx/core/app/ActivityRecreator$1;-><init>(Landroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4e
    .catchall {:try_start_22 .. :try_end_4e} :catchall_96

    .line 151
    :try_start_4e
    invoke-static {}, Landroidx/core/app/ActivityRecreator;->needsRelaunchCall()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 152
    sget-object v0, Landroidx/core/app/ActivityRecreator;->requestRelaunchActivityMethod:Ljava/lang/reflect/Method;

    .line 153
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16
    :try_end_66
    .catchall {:try_start_4e .. :try_end_66} :catchall_88

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v13

    move-object v2, v12

    .end local v12    # "callbacks":Landroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;
    .local v2, "callbacks":Landroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;
    move-object/from16 v12, v16

    :try_start_6e
    filled-new-array/range {v4 .. v12}, [Ljava/lang/Object;

    move-result-object v4

    .line 152
    invoke-virtual {v0, v14, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7a

    .line 155
    .end local v2    # "callbacks":Landroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;
    .restart local v12    # "callbacks":Landroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;
    :cond_76
    move-object v2, v12

    .end local v12    # "callbacks":Landroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;
    .restart local v2    # "callbacks":Landroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->recreate()V
    :try_end_7a
    .catchall {:try_start_6e .. :try_end_7a} :catchall_86

    .line 157
    :goto_7a
    nop

    .line 159
    :try_start_7b
    sget-object v0, Landroidx/core/app/ActivityRecreator;->mainHandler:Landroid/os/Handler;

    new-instance v4, Landroidx/core/app/ActivityRecreator$2;

    invoke-direct {v4, v15, v2}, Landroidx/core/app/ActivityRecreator$2;-><init>(Landroid/app/Application;Landroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 157
    return v3

    .line 159
    :catchall_86
    move-exception v0

    goto :goto_8a

    .end local v2    # "callbacks":Landroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;
    .restart local v12    # "callbacks":Landroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;
    :catchall_88
    move-exception v0

    move-object v2, v12

    .end local v12    # "callbacks":Landroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;
    .restart local v2    # "callbacks":Landroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;
    :goto_8a
    sget-object v3, Landroidx/core/app/ActivityRecreator;->mainHandler:Landroid/os/Handler;

    new-instance v4, Landroidx/core/app/ActivityRecreator$2;

    invoke-direct {v4, v15, v2}, Landroidx/core/app/ActivityRecreator$2;-><init>(Landroid/app/Application;Landroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 169
    nop

    .end local p0    # "activity":Landroid/app/Activity;
    throw v0
    :try_end_96
    .catchall {:try_start_7b .. :try_end_96} :catchall_96

    .line 170
    .end local v2    # "callbacks":Landroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;
    .end local v13    # "token":Ljava/lang/Object;
    .end local v14    # "activityThread":Ljava/lang/Object;
    .end local v15    # "application":Landroid/app/Application;
    .restart local p0    # "activity":Landroid/app/Activity;
    :catchall_96
    move-exception v0

    .line 171
    .local v0, "t":Ljava/lang/Throwable;
    const/4 v2, 0x0

    return v2
.end method
