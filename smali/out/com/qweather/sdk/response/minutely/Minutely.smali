.class public Lcom/qweather/sdk/response/minutely/Minutely;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private fxTime:Ljava/lang/String;

.field private precip:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFxTime()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/minutely/Minutely;->fxTime:Ljava/lang/String;

    return-object v0
.end method

.method public getPrecip()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/minutely/Minutely;->precip:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/minutely/Minutely;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setFxTime(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/minutely/Minutely;->fxTime:Ljava/lang/String;

    return-void
.end method

.method public setPrecip(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/minutely/Minutely;->precip:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/minutely/Minutely;->type:Ljava/lang/String;

    return-void
.end method
