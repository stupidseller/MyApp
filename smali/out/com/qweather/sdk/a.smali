.class public final Lcom/qweather/sdk/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Callback;


# instance fields
.field public final synthetic a:Lcom/qweather/sdk/Callback;

.field public final synthetic b:Ljava/lang/Class;

.field public final synthetic c:Lcom/qweather/sdk/QWeather;


# direct methods
.method public constructor <init>(Lcom/qweather/sdk/QWeather;Lcom/qweather/sdk/Callback;Ljava/lang/Class;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/a;->c:Lcom/qweather/sdk/QWeather;

    iput-object p2, p0, Lcom/qweather/sdk/a;->a:Lcom/qweather/sdk/Callback;

    iput-object p3, p0, Lcom/qweather/sdk/a;->b:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .registers 4

    .line 1
    sget-object p1, Lcom/qweather/sdk/QWeather;->instance:Lcom/qweather/sdk/QWeather;

    iget-boolean p1, p1, Lcom/qweather/sdk/QWeather;->i:Z

    if-eqz p1, :cond_1e

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Request on failure with Exception:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QWeather"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_1e
    :try_start_1e
    iget-object p1, p0, Lcom/qweather/sdk/a;->a:Lcom/qweather/sdk/Callback;

    invoke-interface {p1, p2}, Lcom/qweather/sdk/Callback;->onException(Ljava/lang/Throwable;)V
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_24

    goto :goto_25

    :catchall_24
    move-exception p1

    :goto_25
    return-void
.end method

.method public final onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .registers 7

    const-string p1, "QWeather"

    .line 1
    const-string v0, "Request response code is "

    :try_start_4
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/qweather/sdk/a;->c:Lcom/qweather/sdk/QWeather;

    iget-boolean v2, v2, Lcom/qweather/sdk/QWeather;->i:Z

    if-eqz v2, :cond_30

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " with data:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_30
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result p2

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_58

    .line 8
    iget-object p2, p0, Lcom/qweather/sdk/a;->c:Lcom/qweather/sdk/QWeather;

    iget-object p2, p2, Lcom/qweather/sdk/QWeather;->e:Lc/a;

    .line 9
    const-string v0, "Reset"

    .line 10
    invoke-virtual {p2, v0}, Lc/a;->a(Ljava/lang/String;)V

    .line 11
    const-wide/high16 v2, -0x8000000000000000L

    sput-wide v2, Lc/a;->d:J

    .line 12
    const/4 v0, 0x0

    iput v0, p2, Lc/a;->a:I

    .line 13
    iget-object p2, p0, Lcom/qweather/sdk/a;->c:Lcom/qweather/sdk/QWeather;

    iget-object p2, p2, Lcom/qweather/sdk/QWeather;->d:Lcom/google/gson/Gson;

    iget-object v0, p0, Lcom/qweather/sdk/a;->b:Ljava/lang/Class;

    invoke-virtual {p2, v1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    .line 14
    iget-object v0, p0, Lcom/qweather/sdk/a;->a:Lcom/qweather/sdk/Callback;

    invoke-interface {v0, p2}, Lcom/qweather/sdk/Callback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_97

    :cond_58
    const/16 v0, 0x190

    if-le p2, v0, :cond_63

    .line 17
    iget-object p2, p0, Lcom/qweather/sdk/a;->c:Lcom/qweather/sdk/QWeather;

    iget-object p2, p2, Lcom/qweather/sdk/QWeather;->e:Lc/a;

    invoke-virtual {p2}, Lc/a;->a()V

    .line 19
    :cond_63
    iget-object p2, p0, Lcom/qweather/sdk/a;->c:Lcom/qweather/sdk/QWeather;

    iget-object p2, p2, Lcom/qweather/sdk/QWeather;->d:Lcom/google/gson/Gson;

    const-class v0, Lcom/qweather/sdk/response/error/ErrorResponse;

    invoke-virtual {p2, v1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/qweather/sdk/response/error/ErrorResponse;

    .line 20
    iget-object v0, p0, Lcom/qweather/sdk/a;->a:Lcom/qweather/sdk/Callback;

    invoke-interface {v0, p2}, Lcom/qweather/sdk/Callback;->onFailure(Lcom/qweather/sdk/response/error/ErrorResponse;)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_74} :catch_75

    goto :goto_97

    .line 4
    :catch_75
    move-exception p2

    .line 23
    iget-object v0, p0, Lcom/qweather/sdk/a;->c:Lcom/qweather/sdk/QWeather;

    iget-boolean v0, v0, Lcom/qweather/sdk/QWeather;->i:Z

    if-eqz v0, :cond_92

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :cond_92
    iget-object p1, p0, Lcom/qweather/sdk/a;->a:Lcom/qweather/sdk/Callback;

    invoke-interface {p1, p2}, Lcom/qweather/sdk/Callback;->onException(Ljava/lang/Throwable;)V

    :goto_97
    return-void
.end method
