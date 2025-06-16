.class public Lcom/qweather/sdk/response/minutely/MinutelyResponse;
.super Lcom/qweather/sdk/response/BaseResponse;
.source "SourceFile"


# instance fields
.field private minutely:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qweather/sdk/response/minutely/Minutely;",
            ">;"
        }
    .end annotation
.end field

.field private refer:Lcom/qweather/sdk/response/Refer;

.field private summary:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/qweather/sdk/response/BaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getMinutely()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qweather/sdk/response/minutely/Minutely;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/minutely/MinutelyResponse;->minutely:Ljava/util/List;

    return-object v0
.end method

.method public getRefer()Lcom/qweather/sdk/response/Refer;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/minutely/MinutelyResponse;->refer:Lcom/qweather/sdk/response/Refer;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/minutely/MinutelyResponse;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public setMinutely(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qweather/sdk/response/minutely/Minutely;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/minutely/MinutelyResponse;->minutely:Ljava/util/List;

    return-void
.end method

.method public setRefer(Lcom/qweather/sdk/response/Refer;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/minutely/MinutelyResponse;->refer:Lcom/qweather/sdk/response/Refer;

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/minutely/MinutelyResponse;->summary:Ljava/lang/String;

    return-void
.end method
