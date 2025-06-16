.class Landroidx/core/location/LocationManagerCompat$Api19Impl;
.super Ljava/lang/Object;
.source "LocationManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/location/LocationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api19Impl"
.end annotation


# static fields
.field private static sLocationRequestClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sRequestLocationUpdatesLooperMethod:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1209
    return-void
.end method

.method static tryRequestLocationUpdates(Landroid/location/LocationManager;Ljava/lang/String;Landroidx/core/location/LocationRequestCompat;Landroidx/core/location/LocationListenerCompat;Landroid/os/Looper;)Z
    .registers 12
    .param p0, "locationManager"    # Landroid/location/LocationManager;
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "locationRequest"    # Landroidx/core/location/LocationRequestCompat;
    .param p3, "listener"    # Landroidx/core/location/LocationListenerCompat;
    .param p4, "looper"    # Landroid/os/Looper;

    .line 1256
    nop

    .line 1258
    const/4 v0, 0x0

    :try_start_2
    sget-object v1, Landroidx/core/location/LocationManagerCompat$Api19Impl;->sLocationRequestClass:Ljava/lang/Class;

    if-nez v1, :cond_e

    .line 1259
    const-string v1, "android.location.LocationRequest"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Landroidx/core/location/LocationManagerCompat$Api19Impl;->sLocationRequestClass:Ljava/lang/Class;

    .line 1262
    :cond_e
    sget-object v1, Landroidx/core/location/LocationManagerCompat$Api19Impl;->sRequestLocationUpdatesLooperMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    if-nez v1, :cond_32

    .line 1263
    const-class v1, Landroid/location/LocationManager;

    const-string v3, "requestLocationUpdates"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Landroidx/core/location/LocationManagerCompat$Api19Impl;->sLocationRequestClass:Ljava/lang/Class;

    aput-object v5, v4, v0

    const-class v5, Landroid/location/LocationListener;

    aput-object v5, v4, v2

    const-class v5, Landroid/os/Looper;

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 1264
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/core/location/LocationManagerCompat$Api19Impl;->sRequestLocationUpdatesLooperMethod:Ljava/lang/reflect/Method;

    .line 1268
    sget-object v1, Landroidx/core/location/LocationManagerCompat$Api19Impl;->sRequestLocationUpdatesLooperMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1271
    :cond_32
    invoke-virtual {p2, p1}, Landroidx/core/location/LocationRequestCompat;->toLocationRequest(Ljava/lang/String;)Landroid/location/LocationRequest;

    move-result-object v1

    .line 1272
    .local v1, "request":Landroid/location/LocationRequest;
    if-eqz v1, :cond_42

    .line 1273
    sget-object v3, Landroidx/core/location/LocationManagerCompat$Api19Impl;->sRequestLocationUpdatesLooperMethod:Ljava/lang/reflect/Method;

    filled-new-array {v1, p3, p4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_41
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_41} :catch_4b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_41} :catch_49
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_41} :catch_47
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_41} :catch_45
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_41} :catch_43

    .line 1275
    return v2

    .line 1283
    .end local v1    # "request":Landroid/location/LocationRequest;
    :cond_42
    goto :goto_4c

    .line 1277
    :catch_43
    move-exception v1

    goto :goto_4c

    :catch_45
    move-exception v1

    goto :goto_4c

    :catch_47
    move-exception v1

    goto :goto_4c

    :catch_49
    move-exception v1

    goto :goto_4c

    :catch_4b
    move-exception v1

    .line 1285
    :goto_4c
    return v0
.end method

.method static tryRequestLocationUpdates(Landroid/location/LocationManager;Ljava/lang/String;Landroidx/core/location/LocationRequestCompat;Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;)Z
    .registers 11
    .param p0, "locationManager"    # Landroid/location/LocationManager;
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "locationRequest"    # Landroidx/core/location/LocationRequestCompat;
    .param p3, "transport"    # Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;

    .line 1217
    nop

    .line 1219
    const/4 v0, 0x0

    :try_start_2
    sget-object v1, Landroidx/core/location/LocationManagerCompat$Api19Impl;->sLocationRequestClass:Ljava/lang/Class;

    if-nez v1, :cond_e

    .line 1220
    const-string v1, "android.location.LocationRequest"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Landroidx/core/location/LocationManagerCompat$Api19Impl;->sLocationRequestClass:Ljava/lang/Class;

    .line 1222
    :cond_e
    sget-object v1, Landroidx/core/location/LocationManagerCompat$Api19Impl;->sRequestLocationUpdatesLooperMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    if-nez v1, :cond_32

    .line 1223
    const-class v1, Landroid/location/LocationManager;

    const-string v3, "requestLocationUpdates"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Landroidx/core/location/LocationManagerCompat$Api19Impl;->sLocationRequestClass:Ljava/lang/Class;

    aput-object v5, v4, v0

    const-class v5, Landroid/location/LocationListener;

    aput-object v5, v4, v2

    const-class v5, Landroid/os/Looper;

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 1224
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/core/location/LocationManagerCompat$Api19Impl;->sRequestLocationUpdatesLooperMethod:Ljava/lang/reflect/Method;

    .line 1228
    sget-object v1, Landroidx/core/location/LocationManagerCompat$Api19Impl;->sRequestLocationUpdatesLooperMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1231
    :cond_32
    invoke-virtual {p2, p1}, Landroidx/core/location/LocationRequestCompat;->toLocationRequest(Ljava/lang/String;)Landroid/location/LocationRequest;

    move-result-object v1

    .line 1232
    .local v1, "request":Landroid/location/LocationRequest;
    if-eqz v1, :cond_50

    .line 1233
    sget-object v3, Landroidx/core/location/LocationManagerCompat;->sLocationListeners:Ljava/util/WeakHashMap;

    monitor-enter v3
    :try_end_3b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_3b} :catch_59
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_3b} :catch_57
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_3b} :catch_55
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_3b} :catch_53
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_3b} :catch_51

    .line 1234
    :try_start_3b
    sget-object v4, Landroidx/core/location/LocationManagerCompat$Api19Impl;->sRequestLocationUpdatesLooperMethod:Ljava/lang/reflect/Method;

    .line 1235
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    filled-new-array {v1, p3, v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 1234
    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1236
    invoke-static {p0, p3}, Landroidx/core/location/LocationManagerCompat;->registerLocationListenerTransport(Landroid/location/LocationManager;Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;)V

    .line 1237
    monitor-exit v3

    return v2

    .line 1238
    :catchall_4d
    move-exception v2

    monitor-exit v3
    :try_end_4f
    .catchall {:try_start_3b .. :try_end_4f} :catchall_4d

    .end local p0    # "locationManager":Landroid/location/LocationManager;
    .end local p1    # "provider":Ljava/lang/String;
    .end local p2    # "locationRequest":Landroidx/core/location/LocationRequestCompat;
    .end local p3    # "transport":Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;
    :try_start_4f
    throw v2
    :try_end_50
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4f .. :try_end_50} :catch_59
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4f .. :try_end_50} :catch_57
    .catch Ljava/lang/IllegalAccessException; {:try_start_4f .. :try_end_50} :catch_55
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4f .. :try_end_50} :catch_53
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4f .. :try_end_50} :catch_51

    .line 1246
    .end local v1    # "request":Landroid/location/LocationRequest;
    .restart local p0    # "locationManager":Landroid/location/LocationManager;
    .restart local p1    # "provider":Ljava/lang/String;
    .restart local p2    # "locationRequest":Landroidx/core/location/LocationRequestCompat;
    .restart local p3    # "transport":Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;
    :cond_50
    goto :goto_5a

    .line 1240
    :catch_51
    move-exception v1

    goto :goto_5a

    :catch_53
    move-exception v1

    goto :goto_5a

    :catch_55
    move-exception v1

    goto :goto_5a

    :catch_57
    move-exception v1

    goto :goto_5a

    :catch_59
    move-exception v1

    .line 1248
    :goto_5a
    return v0
.end method
