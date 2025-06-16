.class public Lcom/qweather/sdk/response/air/v1/HealthAdvice;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private generalPopulation:Ljava/lang/String;

.field private sensitivePopulation:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGeneralPopulation()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/air/v1/HealthAdvice;->generalPopulation:Ljava/lang/String;

    return-object v0
.end method

.method public getSensitivePopulation()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/air/v1/HealthAdvice;->sensitivePopulation:Ljava/lang/String;

    return-object v0
.end method

.method public setGeneralPopulation(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/air/v1/HealthAdvice;->generalPopulation:Ljava/lang/String;

    return-void
.end method

.method public setSensitivePopulation(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/air/v1/HealthAdvice;->sensitivePopulation:Ljava/lang/String;

    return-void
.end method
