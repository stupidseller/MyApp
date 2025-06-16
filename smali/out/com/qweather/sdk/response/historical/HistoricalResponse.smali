.class public Lcom/qweather/sdk/response/historical/HistoricalResponse;
.super Lcom/qweather/sdk/response/Response;
.source "SourceFile"


# instance fields
.field private fxLink:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/qweather/sdk/response/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public getFxLink()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/historical/HistoricalResponse;->fxLink:Ljava/lang/String;

    return-object v0
.end method

.method public setFxLink(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/historical/HistoricalResponse;->fxLink:Ljava/lang/String;

    return-void
.end method
