.class public Lcom/qweather/sdk/QWeather;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile instance:Lcom/qweather/sdk/QWeather;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lokhttp3/OkHttpClient;

.field public final d:Lcom/google/gson/Gson;

.field public final e:Lc/a;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public h:Lcom/qweather/sdk/TokenGenerator;

.field public i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 13

    const-string v0, "No signatures found for the package."

    const-string v1, "CertificateFingerprint"

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_9
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x40

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 3
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v4, :cond_20

    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    goto :goto_88

    .line 8
    :cond_20
    array-length v5, v4

    if-lez v5, :cond_84

    aget-object v4, v4, v2

    .line 9
    const-string v5, "SHA-1"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 10
    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 12
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move v6, v2

    .line 14
    :goto_3c
    array-length v7, v4

    if-ge v6, v7, :cond_66

    .line 15
    aget-byte v7, v4, v6

    and-int/lit16 v7, v7, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 16
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_53

    .line 17
    const/16 v8, 0x30

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    :cond_53
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    array-length v7, v4

    sub-int/2addr v7, v9

    if-ge v6, v7, :cond_63

    .line 21
    const/16 v7, 0x3a

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_63
    add-int/lit8 v6, v6, 0x1

    goto :goto_3c

    .line 24
    :cond_66
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_6a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_6a} :catch_6d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_6a} :catch_6b

    goto :goto_88

    .line 5
    :catch_6b
    move-exception v4

    goto :goto_6e

    :catch_6d
    move-exception v4

    .line 27
    :goto_6e
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error getting certificate fingerprint:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_84
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    :goto_88
    if-eqz v0, :cond_bc

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b4

    .line 35
    iput-object v0, p0, Lcom/qweather/sdk/QWeather;->a:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/qweather/sdk/QWeather;->b:Ljava/lang/String;

    .line 37
    new-instance p1, Lokhttp3/OkHttpClient;

    invoke-direct {p1}, Lokhttp3/OkHttpClient;-><init>()V

    iput-object p1, p0, Lcom/qweather/sdk/QWeather;->c:Lokhttp3/OkHttpClient;

    .line 38
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iput-object p1, p0, Lcom/qweather/sdk/QWeather;->d:Lcom/google/gson/Gson;

    .line 39
    new-instance p1, Lc/a;

    invoke-direct {p1}, Lc/a;-><init>()V

    iput-object p1, p0, Lcom/qweather/sdk/QWeather;->e:Lc/a;

    .line 40
    const-string p1, "5.1.0"

    iput-object p1, p0, Lcom/qweather/sdk/QWeather;->f:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/qweather/sdk/QWeather;->g:Ljava/lang/String;

    .line 42
    iput-object v3, p0, Lcom/qweather/sdk/QWeather;->h:Lcom/qweather/sdk/TokenGenerator;

    .line 43
    iput-boolean v2, p0, Lcom/qweather/sdk/QWeather;->i:Z

    return-void

    .line 44
    :cond_b4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "can not get app\'s package name."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 45
    :cond_bc
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "can not get app\'s certificate fingerprint."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/qweather/sdk/QWeather;
    .registers 4

    .line 1
    sget-object v0, Lcom/qweather/sdk/QWeather;->instance:Lcom/qweather/sdk/QWeather;

    if-nez v0, :cond_17

    .line 2
    const-class v0, Lcom/qweather/sdk/QWeather;

    monitor-enter v0

    .line 3
    :try_start_7
    sget-object v1, Lcom/qweather/sdk/QWeather;->instance:Lcom/qweather/sdk/QWeather;

    if-nez v1, :cond_12

    .line 4
    new-instance v1, Lcom/qweather/sdk/QWeather;

    invoke-direct {v1, p0, p1}, Lcom/qweather/sdk/QWeather;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/qweather/sdk/QWeather;->instance:Lcom/qweather/sdk/QWeather;

    .line 6
    :cond_12
    monitor-exit v0

    goto :goto_17

    .line 4
    :catchall_14
    move-exception p0

    .line 6
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    .line 8
    :cond_17
    :goto_17
    sget-object p0, Lcom/qweather/sdk/QWeather;->instance:Lcom/qweather/sdk/QWeather;

    return-object p0
.end method


# virtual methods
.method public final a(Lb/n;Ljava/lang/Class;Lcom/qweather/sdk/Callback;)V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/QWeather;->h:Lcom/qweather/sdk/TokenGenerator;

    if-nez v0, :cond_f

    .line 2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "\'token\' required"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p1}, Lcom/qweather/sdk/Callback;->onException(Ljava/lang/Throwable;)V

    return-void

    .line 8
    :cond_f
    :try_start_f
    invoke-interface {v0}, Lcom/qweather/sdk/TokenGenerator;->generator()Ljava/lang/String;

    move-result-object v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_13} :catch_187

    .line 14
    iget-object v1, p0, Lcom/qweather/sdk/QWeather;->e:Lc/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lc/a;->d:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_15f

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "requestEnable: true, errorCount\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lc/a;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", availableTime\uff1anull"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc/a;->a(Ljava/lang/String;)V

    .line 17
    invoke-interface {p1}, Lb/n;->b()Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-interface {p1}, Lb/n;->a()Lcom/qweather/sdk/parameter/ApiParameter;

    move-result-object p1

    invoke-interface {p1}, Lcom/qweather/sdk/parameter/ApiParameter;->toMap()Ljava/util/Map;

    move-result-object p1

    .line 21
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 22
    const-string v3, "client"

    const-string v4, "android"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v3, p0, Lcom/qweather/sdk/QWeather;->b:Ljava/lang/String;

    const-string v4, "X-Android-Package-Name"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v3, p0, Lcom/qweather/sdk/QWeather;->a:Ljava/lang/String;

    const-string v4, "X-Android-Cert"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Bearer "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Authorization"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v3, p0, Lcom/qweather/sdk/QWeather;->f:Ljava/lang/String;

    const-string v4, "SdkVersion"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string/jumbo v4, "version"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance v3, Lc/b;

    invoke-direct {v3}, Lc/b;-><init>()V

    iget-object v4, p0, Lcom/qweather/sdk/QWeather;->g:Ljava/lang/String;

    .line 29
    iput-object v4, v3, Lc/b;->a:Ljava/lang/String;

    .line 30
    iput-object v1, v3, Lc/b;->c:Ljava/lang/String;

    .line 31
    iput-object p1, v3, Lc/b;->d:Ljava/util/Map;

    .line 32
    iput-object v2, v3, Lc/b;->b:Ljava/util/HashMap;

    .line 33
    new-instance p1, Lokhttp3/HttpUrl$Builder;

    invoke-direct {p1}, Lokhttp3/HttpUrl$Builder;-><init>()V

    const-string v1, "https"

    invoke-virtual {p1, v1}, Lokhttp3/HttpUrl$Builder;->scheme(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object p1

    iget-object v1, v3, Lc/b;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lokhttp3/HttpUrl$Builder;->host(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object p1

    iget-object v1, v3, Lc/b;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lokhttp3/HttpUrl$Builder;->addPathSegments(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object p1

    .line 35
    iget-object v1, v3, Lc/b;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 36
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v4, v2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    goto :goto_b5

    .line 38
    :cond_d1
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {p1}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 39
    iget-object v1, v3, Lc/b;->b:Ljava/util/HashMap;

    if-eqz v1, :cond_106

    .line 40
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_ea
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_106

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 41
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v3, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_ea

    .line 42
    :cond_106
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 43
    iget-boolean v1, p0, Lcom/qweather/sdk/QWeather;->i:Z

    if-eqz v1, :cond_150

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VERSION: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/qweather/sdk/QWeather;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QWeather"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "TOKEN: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RequestURL: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_150
    iget-object v0, p0, Lcom/qweather/sdk/QWeather;->c:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    new-instance v0, Lcom/qweather/sdk/a;

    invoke-direct {v0, p0, p3, p2}, Lcom/qweather/sdk/a;-><init>(Lcom/qweather/sdk/QWeather;Lcom/qweather/sdk/Callback;Ljava/lang/Class;)V

    invoke-interface {p1, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void

    .line 50
    :cond_15f
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "requestEnable: false, errorCount: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, v1, Lc/a;->a:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", availableTime: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-wide v2, Lc/a;->d:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lc/a;->a(Ljava/lang/String;)V

    .line 51
    invoke-static {}, Lcom/qweather/sdk/response/error/ErrorResponse;->tooManyRequests()Lcom/qweather/sdk/response/error/ErrorResponse;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/qweather/sdk/Callback;->onFailure(Lcom/qweather/sdk/response/error/ErrorResponse;)V

    return-void

    :catch_187
    move-exception p1

    .line 52
    invoke-interface {p3, p1}, Lcom/qweather/sdk/Callback;->onException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public air5d(Lcom/qweather/sdk/parameter/air/AirParameter;Lcom/qweather/sdk/Callback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qweather/sdk/parameter/air/AirParameter;",
            "Lcom/qweather/sdk/Callback<",
            "Lcom/qweather/sdk/response/air/AirDailyResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/a;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1}, Lb/a;-><init>(ILcom/qweather/sdk/parameter/air/AirParameter;)V

    .line 2
    const-class p1, Lcom/qweather/sdk/response/air/AirDailyResponse;

    invoke-virtual {p0, v0, p1, p2}, Lcom/qweather/sdk/QWeather;->a(Lb/n;Ljava/lang/Class;Lcom/qweather/sdk/Callback;)V

    return-void
.end method

.method public airCurrent(Lcom/qweather/sdk/parameter/air/AirV1Parameter;Lcom/qweather/sdk/Callback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qweather/sdk/parameter/air/AirV1Parameter;",
            "Lcom/qweather/sdk/Callback<",
            "Lcom/qweather/sdk/response/air/v1/AirV1CurrentResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lb/b;-><init>(ILcom/qweather/sdk/parameter/air/AirV1Parameter;)V

    .line 2
    const-class p1, Lcom/qweather/sdk/response/air/v1/AirV1CurrentResponse;

    invoke-virtual {p0, v0, p1, p2}, Lcom/qweather/sdk/QWeather;->a(Lb/n;Ljava/lang/Class;Lcom/qweather/sdk/Callback;)V

    return-void
.end method

.method public airDaily(Lcom/qweather/sdk/parameter/air/AirV1Parameter;Lcom/qweather/sdk/Callback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qweather/sdk/parameter/air/AirV1Parameter;",
            "Lcom/qweather/sdk/Callback<",
            "Lcom/qweather/sdk/response/air/v1/AirV1DailyResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/b;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1}, Lb/b;-><init>(ILcom/qweather/sdk/parameter/air/AirV1Parameter;)V

    .line 2
    const-class p1, Lcom/qweather/sdk/response/air/v1/AirV1DailyResponse;

    invoke-virtual {p0, v0, p1, p2}, Lcom/qweather/sdk/QWeather;->a(Lb/n;Ljava/lang/Class;Lcom/qweather/sdk/Callback;)V

    return-void
.end method

.method public airHourly(Lcom/qweather/sdk/parameter/air/AirV1Parameter;Lcom/qweather/sdk/Callback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qweather/sdk/parameter/air/AirV1Parameter;",
            "Lcom/qweather/sdk/Callback<",
            "Lcom/qweather/sdk/response/air/v1/AirV1HourlyResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/b;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1}, Lb/b;-><init>(ILcom/qweather/sdk/parameter/air/AirV1Parameter;)V

    .line 2
    const-class p1, Lcom/qweather/sdk/response/air/v1/AirV1HourlyResponse;

    invoke-virtual {p0, v0, p1, p2}, Lcom/qweather/sdk/QWeather;->a(Lb/n;Ljava/lang/Class;Lcom/qweather/sdk/Callback;)V

    return-void
.end method

.method public airNow(Lcom/qweather/sdk/parameter/air/AirParameter;Lcom/qweather/sdk/Callback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qweather/sdk/parameter/air/AirParameter;",
            "Lcom/qweather/sdk/Callback<",
            "Lcom/qweather/sdk/response/air/AirNowResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lb/a;-><init>(ILcom/qweather/sdk/parameter/air/AirParameter;)V

    .line 2
    const-class p1, Lcom/qweather/sdk/response/air/AirNowResponse;

    invoke-virtual {p0, v0, p1, p2}, Lcom/qweather/sdk/QWeather;->a(Lb/n;Ljava/lang/Class;Lcom/qweather/sdk/Callback;)V

    return-void
.end method

.method public airStation(Lcom/qweather/sdk/parameter/air/AirV1StationParameter;Lcom/qweather/sdk/Callback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qweather/sdk/parameter/air/AirV1StationParameter;",
            "Lcom/qweather/sdk/Callback<",
            "Lcom/qweather/sdk/response/air/v1/AirV1StationResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/c;

    invoke-direct {v0, p1}, Lb/c;-><init>(Lcom/qweather/sdk/parameter/air/AirV1StationParameter;)V

    .line 2
    const-class p1, Lcom/qweather/sdk/response/air/v1/AirV1StationResponse;

    invoke-virtual {p0, v0, p1, p2}, Lcom/qweather/sdk/QWeather;->a(Lb/n;Ljava/lang/Class;Lcom/qweather/sdk/Callback;)V

    return-void
.end method

.method public astronomyMoon(Lcom/qweather/sdk/parameter/astronomy/AstronomyMoonParameter;Lcom/qweather/sdk/Callback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qweather/sdk/parameter/astronomy/AstronomyMoonParameter;",
            "Lcom/qweather/sdk/Callback<",
            "Lcom/qweather/sdk/response/astronomy/AstronomyMoonResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/d;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1}, Lb/d;-><init>(ILcom/qweather/sdk/parameter/ApiParameter;)V

    .line 2
    const-class p1, Lcom/qweather/sdk/response/astronomy/AstronomyMoonResponse;

    invoke-virtual {p0, v0, p1, p2}, Lcom/qweather/sdk/QWeather;->a(Lb/n;Ljava/lang/Class;Lcom/qweather/sdk/Callback;)V

    return-void
.end method

.method public astronomySolarElevationAngle(Lcom/qweather/sdk/parameter/astronomy/SolarElevationAngleParameter;Lcom/qweather/sdk/Callback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qweather/sdk/parameter/astronomy/SolarElevationAngleParameter;",
            "Lcom/qweather/sdk/Callback<",
            "Lcom/qweather/sdk/response/astronomy/AstronomySolarElevationAngleResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/d;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1}, Lb/d;-><init>(ILcom/qweather/sdk/parameter/ApiParameter;)V

    .line 2
    const-class p1, Lcom/qweather/sdk/response/astronomy/AstronomySolarElevationAngleResponse;

    invoke-virtual {p0, v0, p1, p2}, Lcom/qweather/sdk/QWeather;->a(Lb/n;Ljava/lang/Class;Lcom/qweather/sdk/Callback;)V

    return-void
.end method

.method public astronomySun(Lcom/qweather/sdk/parameter/astronomy/AstronomySunParameter;Lcom/qweather/sdk/Callback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qweather/sdk/parameter/astronomy/AstronomySunParameter;",
            "Lcom/qweather/sdk/Callback<",
            "Lcom/qweather/sdk/response/astronomy/AstronomySunResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lb/d;-><init>(ILcom/qweather/sdk/parameter/ApiParameter;)V

    .line 2
    const-class p1, Lcom/qweather/sdk/response/astronomy/AstronomySunResponse;

    invoke-virtual {p0, v0, p1, p2}, Lcom/qweather/sdk/QWeather;->a(Lb/n;Ljava/lang/Class;Lcom/qweather/sdk/Callback;)V

    return-void
.end method

.method public geoCityLookup(Lcom/qweather/sdk/parameter/geo/GeoCityLookupParameter;Lcom/qweather/sdk/Callback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qweather/sdk/parameter/geo/GeoCityLookupParameter;",
            "Lcom/qweather/sdk/Callback<",
            "Lcom/qweather/sdk/response/geo/GeoCityLookupResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/e;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lb/e;-><init>(ILcom/qweather/sdk/parameter/ApiParameter;)V

    .line 2
    const-class p1, Lcom/qweather/sdk/response/geo/GeoCityLookupResponse;

    invoke-virtual {p0, v0, p1, p2}, Lcom/qweather/sdk/QWeather;->a(Lb/n;Ljava/lang/Class;Lcom/qweather/sdk/Callback;)V

    return-void
.end method

.method public geoCityTop(Lcom/qweather/sdk/parameter/geo/GeoCityTopParameter;Lcom/qweather/sdk/Callback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qweather/sdk/parameter/geo/GeoCityTopParameter;",
            "Lcom/qweather/sdk/Callback<",
            "Lcom/qweather/sdk/response/geo/GeoCityTopResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/e;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1}, Lb/e;-><init>(ILcom/qweather/sdk/parameter/ApiParameter;)V

    .line 2
    const-class p1, Lcom/qweather/sdk/response/geo/GeoCityTopResponse;

    invoke-virtual {p0, v0, p1, p2}, Lcom/qweather/sdk/QWeather;->a(Lb/n;Ljava/lang/Class;Lcom/qweather/sdk/Callback;)V

    return-void
.end method

.method public geoPoiLookup(Lcom/qweather/sdk/parameter/geo/GeoPoiLookupParameter;Lcom/qweather/sdk/Callback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qweather/sdk/parameter/geo/GeoPoiLookupParameter;",
            "Lcom/qweather/sdk/Callback<",
            "Lcom/qweather/sdk/response/geo/GeoPoiResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/e;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1}, Lb/e;-><init>(ILcom/qweather/sdk/parameter/ApiParameter;)V

    .line 2
    const-class p1, Lcom/qweather/sdk/response/geo/GeoPoiResponse;

    invoke-virtual {p0, v0, p1, p2}, Lcom/qweather/sdk/QWeather;->a(Lb/n;Ljava/lang/Class;Lcom/qweather/sdk/Callback;)V

    return-void
.end method

.method public geoPoiRange(Lcom/qweather/sdk/parameter/geo/GeoPoiRangeParameter;Lcom/qweather/sdk/Callback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qweather/sdk/parameter/geo/GeoPoiRangeParameter;",
            "Lcom/qweather/sdk/Callback<",
            "Lcom/qweather/sdk/response/geo/GeoPoiResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/e;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1}, Lb/e;-><init>(ILcom/qweather/sdk/parameter/ApiParameter;)V

    .line 2
    const-class p1, Lcom/qweather/sdk/response/geo/GeoPoiResponse;

    invoke-virtual {p0, v0, p1, p2}, Lcom/qweather/sdk/QWeather;->a(Lb/n;Ljava/lang/Class;Lcom/qweather/sdk/Callback;)V

    return-void
.end method

.method public grid24h(Lcom/qweather/sdk/parameter/grid/GridWeatherParameter;Lcom/qweather/sdk/Callback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qweather/sdk/parameter/grid/GridWeatherParameter;",
            "Lcom/qweather/sdk/Callback<",
            "Lcom/qweather/sdk/response/grid/GridHourlyResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/f;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1}, Lb/f;-><init>(ILcom/qweather/sdk/parameter/grid/GridWeatherParameter;)V

    .line 2
    const-class p1, Lcom/qweather/sdk/response/grid/GridHourlyResponse;

    invoke-virtual {p0, v0, p1, p2}, Lcom/qweather/sdk/QWeather;->a(Lb/n;Ljava/lang/Class;Lcom/qweather/sdk/Callback;)V

    return-void
.end method

.method public grid3d(Lcom/qweather/sdk/parameter/grid/GridWeatherParameter;Lcom/qweather/sdk/Callback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qweather/sdk/parameter/grid/GridWeatherParameter;",
            "Lcom/qweather/sdk/Callback<",
            "Lcom/qweather/sdk/response/grid/GridDailyResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/f;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1}, Lb/f;-><init>(ILcom/qweather/sdk/parameter/grid/GridWeatherParameter;)V

    .line 2
    const-class p1, Lcom/qweather/sdk/response/grid/GridDailyResponse;

    invoke-virtual {p0, v0, p1, p2}, Lcom/qweather/sdk/QWeather;->a(Lb/n;Ljava/lang/Class;Lcom/qweather/sdk/Callback;)V

    return-void
.end method

.method public grid72h(Lcom/qweather/sdk/parameter/grid/GridWeatherParameter;Lcom/qweather/sdk/Callback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qweather/sdk/parameter/grid/GridWeatherParameter;",
            "Lcom/qweather/sdk/Callback<",
            "Lcom/qweather/sdk/response/grid/GridHourlyResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/f;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p1}, Lb/f;-><init>(ILcom/qweather/sdk/parameter/grid/GridWeatherParameter;)V

    .line 2
    const-class p1, Lcom/qweather/sdk/response/grid/GridHourlyResponse;

    invoke-virtual {p0, v0, p1, p2}, Lcom/qweather/sdk/QWeather;->a(Lb/n;Ljava/lang/Class;Lcom/qweather/sdk/Callback;)V

    return-void
.end method

.method public grid7d(Lcom/qweather/sdk/parameter/grid/GridWeatherParameter;Lcom/qweather/sdk/Callback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qweather/sdk/parameter/grid/GridWeatherParameter;",
            "Lcom/qweather/sdk/Callback<",
            "Lcom/qweather/sdk/response/grid/GridDailyResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/f;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1}, Lb/f;-><init>(ILcom/qweather/sdk/parameter/grid/GridWeatherParameter;)V

    .line 2
    const-class p1, Lcom/qweather/sdk/response/grid/GridDailyResponse;

    invoke-virtual {p0, v0, p1, p2}, Lcom/qweather/sdk/QWeather;->a(Lb/n;Ljava/lang/Class;Lcom/qweather/sdk/Callback;)V

    return-void
.end method

.method public gridNow(Lcom/qweather/sdk/parameter/grid/GridWeatherParameter;Lcom/qweather/sdk/Callback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qweather/sdk/parameter/grid/GridWeatherParameter;",
            "Lcom/qweather/sdk/Callback<",
            "Lcom/qweather/sdk/response/grid/GridNowResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lb/f;-><init>(ILcom/qweather/sdk/parameter/grid/GridWeatherParameter;)V

    .line 2
    const-class p1, Lcom/qweather/sdk/response/grid/GridNowResponse;

    invoke-virtual {p0, v0, p1, p2}, Lcom/qweather/sdk/QWeather;->a(Lb/n;Ljava/lang/Class;Lcom/qweather/sdk/Callback;)V

    return-void
.end method

.method public historicalAir(Lcom/qweather/sdk/parameter/historical/HistoricalAirParameter;Lcom/qweather/sdk/Callback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qweather/sdk/parameter/historical/HistoricalAirParameter;",
            "Lcom/qweather/sdk/Callback<",
            "Lcom/qweather/sdk/response/historical/HistoricalAirResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/g;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1}, Lb/g;-><init>(ILcom/qweather/sdk/parameter/historical/HistoricalAirParameter;)V

    .line 2
    const-class p1, Lcom/qweather/sdk/response/historical/HistoricalAirResponse;

    invoke-virtual {p0, v0, p1, p2}, Lcom/qweather/sdk/QWeather;->a(Lb/n;Ljava/lang/Class;Lcom/qweather/sdk/Callback;)V

    return-void
.end method

.method public historicalWeather(Lcom/qweather/sdk/parameter/historical/HistoricalWeatherParameter;Lcom/qweather/sdk/Callback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qweather/sdk/parameter/historical/HistoricalWeatherParameter;",
            "Lcom/qweather/sdk/Callback<",
            "Lcom/qweather/sdk/response/historical/HistoricalWeatherResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/g;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lb/g;-><init>(ILcom/qweather/sdk/parameter/historical/HistoricalAirParameter;)V

    .line 2
    const-class p1, Lcom/qweather/sdk/response/historical/HistoricalWeatherResponse;

    invoke-virtual {p0, v0, p1, p2}, Lcom/qweather/sdk/QWeather;->a(Lb/n;Ljava/lang/Class;Lcom/qweather/sdk/Callback;)V

    return-void
.end method

.method public indices1d(Lcom/qweather/sdk/parameter/indices/IndicesParameter;Lcom/qweather/sdk/Callback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qweather/sdk/parameter/indices/IndicesParameter;",
            "Lcom/qweather/sdk/Callback<",
            "Lcom/qweather/sdk/response/indices/IndicesDailyResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/h;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lb/h;-><init>(ILcom/qweather/sdk/parameter/indices/IndicesParameter;)V

    .line 2
    const-class p1, Lcom/qweather/sdk/response/indices/IndicesDailyResponse;

    invoke-virtual {p0, v0, p1, p2}, Lcom/qweather/sdk/QWeather;->a(Lb/n;Ljava/lang/Class;Lcom/qweather/sdk/Callback;)V

    return-void
.end method

.method public indices3d(Lcom/qweather/sdk/parameter/indices/IndicesParameter;Lcom/qweather/sdk/Callback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qweather/sdk/parameter/indices/IndicesParameter;",
            "Lcom/qweather/sdk/Callback<",
            "Lcom/qweather/sdk/response/indices/IndicesDailyResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1}, Lb/h;-><init>(ILcom/qweather/sdk/parameter/indices/IndicesParameter;)V

    .line 2
    const-class p1, Lcom/qweather/sdk/response/indices/IndicesDailyResponse;

    invoke-virtual {p0, v0, p1, p2}, Lcom/qweather/sdk/QWeather;->a(Lb/n;Ljava/lang/Class;Lcom/qweather/sdk/Callback;)V

    return-void
.end method

.method public minutely(Lcom/qweather/sdk/parameter/minutely/MinutelyParameter;Lcom/qweather/sdk/Callback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qweather/sdk/parameter/minutely/MinutelyParameter;",
            "Lcom/qweather/sdk/Callback<",
            "Lcom/qweather/sdk/response/minutely/MinutelyResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/i;

    invoke-direct {v0, p1}, Lb/i;-><init>(Lcom/qweather/sdk/parameter/minutely/MinutelyParameter;)V

    .line 2
    const-class p1, Lcom/qweather/sdk/response/minutely/MinutelyResponse;

    invoke-virtual {p0, v0, p1, p2}, Lcom/qweather/sdk/QWeather;->a(Lb/n;Ljava/lang/Class;Lcom/qweather/sdk/Callback;)V

    return-void
.end method

.method public oceanCurrents(Lcom/qweather/sdk/parameter/ocean/OceanParameter;Lcom/qweather/sdk/Callback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qweather/sdk/parameter/ocean/OceanParameter;",
            "Lcom/qweather/sdk/Callback<",
            "Lcom/qweather/sdk/response/ocean/OceanCurrentsResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/j;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1}, Lb/j;-><init>(ILcom/qweather/sdk/parameter/ocean/OceanParameter;)V

    .line 2
    const-class p1, Lcom/qweather/sdk/response/ocean/OceanCurrentsResponse;

    invoke-virtual {p0, v0, p1, p2}, Lcom/qweather/sdk/QWeather;->a(Lb/n;Ljava/lang/Class;Lcom/qweather/sdk/Callback;)V

    return-void
.end method

.method public oceanTide(Lcom/qweather/sdk/parameter/ocean/OceanParameter;Lcom/qweather/sdk/Callback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qweather/sdk/parameter/ocean/OceanParameter;",
            "Lcom/qweather/sdk/Callback<",
            "Lcom/qweather/sdk/response/ocean/OceanTideResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/j;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lb/j;-><init>(ILcom/qweather/sdk/parameter/ocean/OceanParameter;)V

    .line 2
    const-class p1, Lcom/qweather/sdk/response/ocean/OceanTideResponse;

    invoke-virtual {p0, v0, p1, p2}, Lcom/qweather/sdk/QWeather;->a(Lb/n;Ljava/lang/Class;Lcom/qweather/sdk/Callback;)V

    return-void
.end method

.method public setLogEnable(Z)Lcom/qweather/sdk/QWeather;
    .registers 3

    .line 1
    iput-boolean p1, p0, Lcom/qweather/sdk/QWeather;->i:Z

    .line 2
    iget-object v0, p0, Lcom/qweather/sdk/QWeather;->e:Lc/a;

    .line 3
    iput-boolean p1, v0, Lc/a;->b:Z

    return-object p0
.end method

.method public setTokenGenerator(Lcom/qweather/sdk/TokenGenerator;)Lcom/qweather/sdk/QWeather;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/QWeather;->h:Lcom/qweather/sdk/TokenGenerator;

    return-object p0
.end method

.method public tropicalStormForecast(Lcom/qweather/sdk/parameter/tropical/StormParameter;Lcom/qweather/sdk/Callback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qweather/sdk/parameter/tropical/StormParameter;",
            "Lcom/qweather/sdk/Callback<",
            "Lcom/qweather/sdk/response/tropical/StormForecastResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/k;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1}, Lb/k;-><init>(ILcom/qweather/sdk/parameter/ApiParameter;)V

    .line 2
    const-class p1, Lcom/qweather/sdk/response/tropical/StormForecastResponse;

    invoke-virtual {p0, v0, p1, p2}, Lcom/qweather/sdk/QWeather;->a(Lb/n;Ljava/lang/Class;Lcom/qweather/sdk/Callback;)V

    return-void
.end method

.method public tropicalStormList(Lcom/qweather/sdk/parameter/tropical/StormListParameter;Lcom/qweather/sdk/Callback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qweather/sdk/parameter/tropical/StormListParameter;",
            "Lcom/qweather/sdk/Callback<",
            "Lcom/qweather/sdk/response/tropical/StormListResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/k;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lb/k;-><init>(ILcom/qweather/sdk/parameter/ApiParameter;)V

    .line 2
    const-class p1, Lcom/qweather/sdk/response/tropical/StormListResponse;

    invoke-virtual {p0, v0, p1, p2}, Lcom/qweather/sdk/QWeather;->a(Lb/n;Ljava/lang/Class;Lcom/qweather/sdk/Callback;)V

    return-void
.end method

.method public tropicalStormTrack(Lcom/qweather/sdk/parameter/tropical/StormParameter;Lcom/qweather/sdk/Callback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qweather/sdk/parameter/tropical/StormParameter;",
            "Lcom/qweather/sdk/Callback<",
            "Lcom/qweather/sdk/response/tropical/StormTrackResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/k;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1}, Lb/k;-><init>(ILcom/qweather/sdk/parameter/ApiParameter;)V

    .line 2
    const-class p1, Lcom/qweather/sdk/response/tropical/StormTrackResponse;

    invoke-virtual {p0, v0, p1, p2}, Lcom/qweather/sdk/QWeather;->a(Lb/n;Ljava/lang/Class;Lcom/qweather/sdk/Callback;)V

    return-void
.end method

.method public warningList(Lcom/qweather/sdk/parameter/warning/WarningListParameter;Lcom/qweather/sdk/Callback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qweather/sdk/parameter/warning/WarningListParameter;",
            "Lcom/qweather/sdk/Callback<",
            "Lcom/qweather/sdk/response/warning/WarningListResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/l;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1}, Lb/l;-><init>(ILcom/qweather/sdk/parameter/ApiParameter;)V

    .line 2
    const-class p1, Lcom/qweather/sdk/response/warning/WarningListResponse;

    invoke-virtual {p0, v0, p1, p2}, Lcom/qweather/sdk/QWeather;->a(Lb/n;Ljava/lang/Class;Lcom/qweather/sdk/Callback;)V

    return-void
.end method

.method public warningNow(Lcom/qweather/sdk/parameter/warning/WarningNowParameter;Lcom/qweather/sdk/Callback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qweather/sdk/parameter/warning/WarningNowParameter;",
            "Lcom/qweather/sdk/Callback<",
            "Lcom/qweather/sdk/response/warning/WarningResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/l;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lb/l;-><init>(ILcom/qweather/sdk/parameter/ApiParameter;)V

    .line 2
    const-class p1, Lcom/qweather/sdk/response/warning/WarningResponse;

    invoke-virtual {p0, v0, p1, p2}, Lcom/qweather/sdk/QWeather;->a(Lb/n;Ljava/lang/Class;Lcom/qweather/sdk/Callback;)V

    return-void
.end method

.method public weather10d(Lcom/qweather/sdk/parameter/weather/WeatherParameter;Lcom/qweather/sdk/Callback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qweather/sdk/parameter/weather/WeatherParameter;",
            "Lcom/qweather/sdk/Callback<",
            "Lcom/qweather/sdk/response/weather/WeatherDailyResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/m;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1}, Lb/m;-><init>(ILcom/qweather/sdk/parameter/weather/WeatherParameter;)V

    .line 2
    const-class p1, Lcom/qweather/sdk/response/weather/WeatherDailyResponse;

    invoke-virtual {p0, v0, p1, p2}, Lcom/qweather/sdk/QWeather;->a(Lb/n;Ljava/lang/Class;Lcom/qweather/sdk/Callback;)V

    return-void
.end method

.method public weather15d(Lcom/qweather/sdk/parameter/weather/WeatherParameter;Lcom/qweather/sdk/Callback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qweather/sdk/parameter/weather/WeatherParameter;",
            "Lcom/qweather/sdk/Callback<",
            "Lcom/qweather/sdk/response/weather/WeatherDailyResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/m;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p1}, Lb/m;-><init>(ILcom/qweather/sdk/parameter/weather/WeatherParameter;)V

    .line 2
    const-class p1, Lcom/qweather/sdk/response/weather/WeatherDailyResponse;

    invoke-virtual {p0, v0, p1, p2}, Lcom/qweather/sdk/QWeather;->a(Lb/n;Ljava/lang/Class;Lcom/qweather/sdk/Callback;)V

    return-void
.end method

.method public weather168h(Lcom/qweather/sdk/parameter/weather/WeatherParameter;Lcom/qweather/sdk/Callback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qweather/sdk/parameter/weather/WeatherParameter;",
            "Lcom/qweather/sdk/Callback<",
            "Lcom/qweather/sdk/response/weather/WeatherHourlyResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/m;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p1}, Lb/m;-><init>(ILcom/qweather/sdk/parameter/weather/WeatherParameter;)V

    .line 2
    const-class p1, Lcom/qweather/sdk/response/weather/WeatherHourlyResponse;

    invoke-virtual {p0, v0, p1, p2}, Lcom/qweather/sdk/QWeather;->a(Lb/n;Ljava/lang/Class;Lcom/qweather/sdk/Callback;)V

    return-void
.end method

.method public weather24h(Lcom/qweather/sdk/parameter/weather/WeatherParameter;Lcom/qweather/sdk/Callback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qweather/sdk/parameter/weather/WeatherParameter;",
            "Lcom/qweather/sdk/Callback<",
            "Lcom/qweather/sdk/response/weather/WeatherHourlyResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/m;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p1}, Lb/m;-><init>(ILcom/qweather/sdk/parameter/weather/WeatherParameter;)V

    .line 2
    const-class p1, Lcom/qweather/sdk/response/weather/WeatherHourlyResponse;

    invoke-virtual {p0, v0, p1, p2}, Lcom/qweather/sdk/QWeather;->a(Lb/n;Ljava/lang/Class;Lcom/qweather/sdk/Callback;)V

    return-void
.end method

.method public weather30d(Lcom/qweather/sdk/parameter/weather/WeatherParameter;Lcom/qweather/sdk/Callback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qweather/sdk/parameter/weather/WeatherParameter;",
            "Lcom/qweather/sdk/Callback<",
            "Lcom/qweather/sdk/response/weather/WeatherDailyResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/m;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p1}, Lb/m;-><init>(ILcom/qweather/sdk/parameter/weather/WeatherParameter;)V

    .line 2
    const-class p1, Lcom/qweather/sdk/response/weather/WeatherDailyResponse;

    invoke-virtual {p0, v0, p1, p2}, Lcom/qweather/sdk/QWeather;->a(Lb/n;Ljava/lang/Class;Lcom/qweather/sdk/Callback;)V

    return-void
.end method

.method public weather3d(Lcom/qweather/sdk/parameter/weather/WeatherParameter;Lcom/qweather/sdk/Callback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qweather/sdk/parameter/weather/WeatherParameter;",
            "Lcom/qweather/sdk/Callback<",
            "Lcom/qweather/sdk/response/weather/WeatherDailyResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/m;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1}, Lb/m;-><init>(ILcom/qweather/sdk/parameter/weather/WeatherParameter;)V

    .line 2
    const-class p1, Lcom/qweather/sdk/response/weather/WeatherDailyResponse;

    invoke-virtual {p0, v0, p1, p2}, Lcom/qweather/sdk/QWeather;->a(Lb/n;Ljava/lang/Class;Lcom/qweather/sdk/Callback;)V

    return-void
.end method

.method public weather72h(Lcom/qweather/sdk/parameter/weather/WeatherParameter;Lcom/qweather/sdk/Callback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qweather/sdk/parameter/weather/WeatherParameter;",
            "Lcom/qweather/sdk/Callback<",
            "Lcom/qweather/sdk/response/weather/WeatherHourlyResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/m;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p1}, Lb/m;-><init>(ILcom/qweather/sdk/parameter/weather/WeatherParameter;)V

    .line 2
    const-class p1, Lcom/qweather/sdk/response/weather/WeatherHourlyResponse;

    invoke-virtual {p0, v0, p1, p2}, Lcom/qweather/sdk/QWeather;->a(Lb/n;Ljava/lang/Class;Lcom/qweather/sdk/Callback;)V

    return-void
.end method

.method public weather7d(Lcom/qweather/sdk/parameter/weather/WeatherParameter;Lcom/qweather/sdk/Callback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qweather/sdk/parameter/weather/WeatherParameter;",
            "Lcom/qweather/sdk/Callback<",
            "Lcom/qweather/sdk/response/weather/WeatherDailyResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/m;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1}, Lb/m;-><init>(ILcom/qweather/sdk/parameter/weather/WeatherParameter;)V

    .line 2
    const-class p1, Lcom/qweather/sdk/response/weather/WeatherDailyResponse;

    invoke-virtual {p0, v0, p1, p2}, Lcom/qweather/sdk/QWeather;->a(Lb/n;Ljava/lang/Class;Lcom/qweather/sdk/Callback;)V

    return-void
.end method

.method public weatherNow(Lcom/qweather/sdk/parameter/weather/WeatherParameter;Lcom/qweather/sdk/Callback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qweather/sdk/parameter/weather/WeatherParameter;",
            "Lcom/qweather/sdk/Callback<",
            "Lcom/qweather/sdk/response/weather/WeatherNowResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/m;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lb/m;-><init>(ILcom/qweather/sdk/parameter/weather/WeatherParameter;)V

    .line 2
    const-class p1, Lcom/qweather/sdk/response/weather/WeatherNowResponse;

    invoke-virtual {p0, v0, p1, p2}, Lcom/qweather/sdk/QWeather;->a(Lb/n;Ljava/lang/Class;Lcom/qweather/sdk/Callback;)V

    return-void
.end method
