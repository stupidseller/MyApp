.class public Lcom/qweather/sdk/response/air/v1/PollutantConcentration;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private unit:Ljava/lang/String;

.field private value:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUnit()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/air/v1/PollutantConcentration;->unit:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Double;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/air/v1/PollutantConcentration;->value:Ljava/lang/Double;

    return-object v0
.end method

.method public setUnit(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/air/v1/PollutantConcentration;->unit:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/Double;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/air/v1/PollutantConcentration;->value:Ljava/lang/Double;

    return-void
.end method
