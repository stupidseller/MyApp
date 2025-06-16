.class public Lcom/qweather/sdk/response/ocean/OceanCurrentsResponse;
.super Lcom/qweather/sdk/response/BaseResponse;
.source "SourceFile"


# instance fields
.field private currentsHourly:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qweather/sdk/response/ocean/CurrentsHourly;",
            ">;"
        }
    .end annotation
.end field

.field private currentsTable:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qweather/sdk/response/ocean/CurrentsTable;",
            ">;"
        }
    .end annotation
.end field

.field private refer:Lcom/qweather/sdk/response/Refer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/qweather/sdk/response/BaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentsHourly()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qweather/sdk/response/ocean/CurrentsHourly;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/ocean/OceanCurrentsResponse;->currentsHourly:Ljava/util/List;

    return-object v0
.end method

.method public getCurrentsTable()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qweather/sdk/response/ocean/CurrentsTable;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/ocean/OceanCurrentsResponse;->currentsTable:Ljava/util/List;

    return-object v0
.end method

.method public getRefer()Lcom/qweather/sdk/response/Refer;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/ocean/OceanCurrentsResponse;->refer:Lcom/qweather/sdk/response/Refer;

    return-object v0
.end method

.method public setCurrentsHourly(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qweather/sdk/response/ocean/CurrentsHourly;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/ocean/OceanCurrentsResponse;->currentsHourly:Ljava/util/List;

    return-void
.end method

.method public setCurrentsTable(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qweather/sdk/response/ocean/CurrentsTable;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/ocean/OceanCurrentsResponse;->currentsTable:Ljava/util/List;

    return-void
.end method

.method public setRefer(Lcom/qweather/sdk/response/Refer;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/ocean/OceanCurrentsResponse;->refer:Lcom/qweather/sdk/response/Refer;

    return-void
.end method
