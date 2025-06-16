.class public Lcom/qweather/sdk/parameter/air/AirV1Parameter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qweather/sdk/parameter/ApiParameter;


# instance fields
.field private lang:Lcom/qweather/sdk/basic/Lang;

.field private final latitude:D

.field private final longitude:D


# direct methods
.method public constructor <init>(DD)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/qweather/sdk/parameter/air/AirV1Parameter;->latitude:D

    .line 3
    iput-wide p3, p0, Lcom/qweather/sdk/parameter/air/AirV1Parameter;->longitude:D

    return-void
.end method


# virtual methods
.method public getLatitude()D
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/qweather/sdk/parameter/air/AirV1Parameter;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/qweather/sdk/parameter/air/AirV1Parameter;->longitude:D

    return-wide v0
.end method

.method public setLang(Lcom/qweather/sdk/basic/Lang;)Lcom/qweather/sdk/parameter/air/AirV1Parameter;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/parameter/air/AirV1Parameter;->lang:Lcom/qweather/sdk/basic/Lang;

    return-object p0
.end method

.method public toMap()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/qweather/sdk/parameter/air/AirV1Parameter;->lang:Lcom/qweather/sdk/basic/Lang;

    if-eqz v1, :cond_12

    .line 3
    invoke-virtual {v1}, Lcom/qweather/sdk/basic/Lang;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lang"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    return-object v0
.end method
