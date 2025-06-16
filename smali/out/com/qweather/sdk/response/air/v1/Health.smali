.class public Lcom/qweather/sdk/response/air/v1/Health;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private advice:Lcom/qweather/sdk/response/air/v1/HealthAdvice;

.field private effect:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdvice()Lcom/qweather/sdk/response/air/v1/HealthAdvice;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/air/v1/Health;->advice:Lcom/qweather/sdk/response/air/v1/HealthAdvice;

    return-object v0
.end method

.method public getEffect()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/air/v1/Health;->effect:Ljava/lang/String;

    return-object v0
.end method

.method public setAdvice(Lcom/qweather/sdk/response/air/v1/HealthAdvice;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/air/v1/Health;->advice:Lcom/qweather/sdk/response/air/v1/HealthAdvice;

    return-void
.end method

.method public setEffect(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/air/v1/Health;->effect:Ljava/lang/String;

    return-void
.end method
