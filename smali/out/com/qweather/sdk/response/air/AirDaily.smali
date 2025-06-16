.class public Lcom/qweather/sdk/response/air/AirDaily;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aqi:Ljava/lang/String;

.field private category:Ljava/lang/String;

.field private fxDate:Ljava/lang/String;

.field private level:Ljava/lang/String;

.field private primary:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAqi()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/air/AirDaily;->aqi:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/air/AirDaily;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getFxDate()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/air/AirDaily;->fxDate:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/air/AirDaily;->level:Ljava/lang/String;

    return-object v0
.end method

.method public getPrimary()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/air/AirDaily;->primary:Ljava/lang/String;

    return-object v0
.end method

.method public setAqi(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/air/AirDaily;->aqi:Ljava/lang/String;

    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/air/AirDaily;->category:Ljava/lang/String;

    return-void
.end method

.method public setFxDate(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/air/AirDaily;->fxDate:Ljava/lang/String;

    return-void
.end method

.method public setLevel(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/air/AirDaily;->level:Ljava/lang/String;

    return-void
.end method

.method public setPrimary(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/air/AirDaily;->primary:Ljava/lang/String;

    return-void
.end method
