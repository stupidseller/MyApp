.class public Lcom/qweather/sdk/response/air/v1/Pollutant;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private code:Ljava/lang/String;

.field private concentration:Lcom/qweather/sdk/response/air/v1/PollutantConcentration;

.field private fullName:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private subIndexes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qweather/sdk/response/air/v1/SubAirIndex;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/air/v1/Pollutant;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getConcentration()Lcom/qweather/sdk/response/air/v1/PollutantConcentration;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/air/v1/Pollutant;->concentration:Lcom/qweather/sdk/response/air/v1/PollutantConcentration;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/air/v1/Pollutant;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/air/v1/Pollutant;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSubIndexes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qweather/sdk/response/air/v1/SubAirIndex;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/air/v1/Pollutant;->subIndexes:Ljava/util/List;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/air/v1/Pollutant;->code:Ljava/lang/String;

    return-void
.end method

.method public setConcentration(Lcom/qweather/sdk/response/air/v1/PollutantConcentration;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/air/v1/Pollutant;->concentration:Lcom/qweather/sdk/response/air/v1/PollutantConcentration;

    return-void
.end method

.method public setFullName(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/air/v1/Pollutant;->fullName:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/air/v1/Pollutant;->name:Ljava/lang/String;

    return-void
.end method

.method public setSubIndexes(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qweather/sdk/response/air/v1/SubAirIndex;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/air/v1/Pollutant;->subIndexes:Ljava/util/List;

    return-void
.end method
