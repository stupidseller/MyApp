.class public Lcom/qweather/sdk/response/error/ErrorResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private error:Lcom/qweather/sdk/response/error/ErrorDetail;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/qweather/sdk/response/error/ErrorDetail;

    invoke-direct {v0}, Lcom/qweather/sdk/response/error/ErrorDetail;-><init>()V

    iput-object v0, p0, Lcom/qweather/sdk/response/error/ErrorResponse;->error:Lcom/qweather/sdk/response/error/ErrorDetail;

    return-void
.end method

.method public static tooManyRequests()Lcom/qweather/sdk/response/error/ErrorResponse;
    .registers 3

    .line 1
    new-instance v0, Lcom/qweather/sdk/response/error/ErrorResponse;

    invoke-direct {v0}, Lcom/qweather/sdk/response/error/ErrorResponse;-><init>()V

    .line 2
    new-instance v1, Lcom/qweather/sdk/response/error/ErrorDetail;

    invoke-direct {v1}, Lcom/qweather/sdk/response/error/ErrorDetail;-><init>()V

    .line 3
    const/16 v2, 0x1ad

    invoke-virtual {v1, v2}, Lcom/qweather/sdk/response/error/ErrorDetail;->setStatus(I)V

    .line 4
    const-string v2, "https://dev.qweather.com/docs/resource/error-code/#too-many-requests"

    invoke-virtual {v1, v2}, Lcom/qweather/sdk/response/error/ErrorDetail;->setType(Ljava/lang/String;)V

    .line 5
    const-string v2, "Too Many Requests"

    invoke-virtual {v1, v2}, Lcom/qweather/sdk/response/error/ErrorDetail;->setTitle(Ljava/lang/String;)V

    .line 6
    const-string v2, "Exceed the query-per-minute limit or accumulate a lot of invalid requests. Wait or fix the error before retrying."

    invoke-virtual {v1, v2}, Lcom/qweather/sdk/response/error/ErrorDetail;->setDetail(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/qweather/sdk/response/error/ErrorResponse;->setError(Lcom/qweather/sdk/response/error/ErrorDetail;)V

    return-object v0
.end method


# virtual methods
.method public getError()Lcom/qweather/sdk/response/error/ErrorDetail;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/error/ErrorResponse;->error:Lcom/qweather/sdk/response/error/ErrorDetail;

    return-object v0
.end method

.method public setError(Lcom/qweather/sdk/response/error/ErrorDetail;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/error/ErrorResponse;->error:Lcom/qweather/sdk/response/error/ErrorDetail;

    return-void
.end method
