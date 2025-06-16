.class public Lcom/qweather/sdk/parameter/grid/GridWeatherParameter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qweather/sdk/parameter/ApiParameter;


# instance fields
.field private lang:Lcom/qweather/sdk/basic/Lang;

.field private final location:Ljava/lang/String;

.field private unit:Lcom/qweather/sdk/basic/Unit;


# direct methods
.method public constructor <init>(DD)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qweather/sdk/parameter/grid/GridWeatherParameter;->location:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public lang(Lcom/qweather/sdk/basic/Lang;)Lcom/qweather/sdk/parameter/grid/GridWeatherParameter;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/parameter/grid/GridWeatherParameter;->lang:Lcom/qweather/sdk/basic/Lang;

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
    iget-object v1, p0, Lcom/qweather/sdk/parameter/grid/GridWeatherParameter;->location:Ljava/lang/String;

    const-string v2, "location"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/qweather/sdk/parameter/grid/GridWeatherParameter;->lang:Lcom/qweather/sdk/basic/Lang;

    if-eqz v1, :cond_19

    .line 4
    invoke-virtual {v1}, Lcom/qweather/sdk/basic/Lang;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lang"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_19
    iget-object v1, p0, Lcom/qweather/sdk/parameter/grid/GridWeatherParameter;->unit:Lcom/qweather/sdk/basic/Unit;

    if-eqz v1, :cond_27

    .line 7
    invoke-virtual {v1}, Lcom/qweather/sdk/basic/Unit;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "unit"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    return-object v0
.end method

.method public unit(Lcom/qweather/sdk/basic/Unit;)Lcom/qweather/sdk/parameter/grid/GridWeatherParameter;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/parameter/grid/GridWeatherParameter;->unit:Lcom/qweather/sdk/basic/Unit;

    return-object p0
.end method
