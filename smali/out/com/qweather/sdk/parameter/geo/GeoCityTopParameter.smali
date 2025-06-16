.class public Lcom/qweather/sdk/parameter/geo/GeoCityTopParameter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qweather/sdk/parameter/ApiParameter;


# instance fields
.field private lang:Lcom/qweather/sdk/basic/Lang;

.field private number:Ljava/lang/Integer;

.field private range:Lcom/qweather/sdk/basic/Range;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lang(Lcom/qweather/sdk/basic/Lang;)Lcom/qweather/sdk/parameter/geo/GeoCityTopParameter;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/parameter/geo/GeoCityTopParameter;->lang:Lcom/qweather/sdk/basic/Lang;

    return-object p0
.end method

.method public number(Ljava/lang/Integer;)Lcom/qweather/sdk/parameter/geo/GeoCityTopParameter;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/parameter/geo/GeoCityTopParameter;->number:Ljava/lang/Integer;

    return-object p0
.end method

.method public range(Lcom/qweather/sdk/basic/Range;)Lcom/qweather/sdk/parameter/geo/GeoCityTopParameter;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/parameter/geo/GeoCityTopParameter;->range:Lcom/qweather/sdk/basic/Range;

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
    iget-object v1, p0, Lcom/qweather/sdk/parameter/geo/GeoCityTopParameter;->range:Lcom/qweather/sdk/basic/Range;

    if-eqz v1, :cond_12

    .line 3
    invoke-virtual {v1}, Lcom/qweather/sdk/basic/Range;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "range"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_12
    iget-object v1, p0, Lcom/qweather/sdk/parameter/geo/GeoCityTopParameter;->number:Ljava/lang/Integer;

    if-eqz v1, :cond_1f

    .line 6
    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "number"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_1f
    iget-object v1, p0, Lcom/qweather/sdk/parameter/geo/GeoCityTopParameter;->lang:Lcom/qweather/sdk/basic/Lang;

    if-eqz v1, :cond_2c

    .line 9
    invoke-virtual {v1}, Lcom/qweather/sdk/basic/Lang;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lang"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c
    return-object v0
.end method
