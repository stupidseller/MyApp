.class public Lcom/qweather/sdk/parameter/geo/GeoCityLookupParameter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qweather/sdk/parameter/ApiParameter;


# instance fields
.field private adm:Ljava/lang/String;

.field private lang:Lcom/qweather/sdk/basic/Lang;

.field private final location:Ljava/lang/String;

.field private number:Ljava/lang/Integer;

.field private range:Lcom/qweather/sdk/basic/Range;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qweather/sdk/parameter/geo/GeoCityLookupParameter;->location:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public adm(Ljava/lang/String;)Lcom/qweather/sdk/parameter/geo/GeoCityLookupParameter;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/parameter/geo/GeoCityLookupParameter;->adm:Ljava/lang/String;

    return-object p0
.end method

.method public lang(Lcom/qweather/sdk/basic/Lang;)Lcom/qweather/sdk/parameter/geo/GeoCityLookupParameter;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/parameter/geo/GeoCityLookupParameter;->lang:Lcom/qweather/sdk/basic/Lang;

    return-object p0
.end method

.method public number(Ljava/lang/Integer;)Lcom/qweather/sdk/parameter/geo/GeoCityLookupParameter;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/parameter/geo/GeoCityLookupParameter;->number:Ljava/lang/Integer;

    return-object p0
.end method

.method public range(Lcom/qweather/sdk/basic/Range;)Lcom/qweather/sdk/parameter/geo/GeoCityLookupParameter;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/parameter/geo/GeoCityLookupParameter;->range:Lcom/qweather/sdk/basic/Range;

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
    iget-object v1, p0, Lcom/qweather/sdk/parameter/geo/GeoCityLookupParameter;->location:Ljava/lang/String;

    const-string v2, "location"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/qweather/sdk/parameter/geo/GeoCityLookupParameter;->adm:Ljava/lang/String;

    if-eqz v1, :cond_15

    .line 4
    const-string v2, "adm"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_15
    iget-object v1, p0, Lcom/qweather/sdk/parameter/geo/GeoCityLookupParameter;->range:Lcom/qweather/sdk/basic/Range;

    if-eqz v1, :cond_22

    .line 7
    invoke-virtual {v1}, Lcom/qweather/sdk/basic/Range;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "range"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_22
    iget-object v1, p0, Lcom/qweather/sdk/parameter/geo/GeoCityLookupParameter;->number:Ljava/lang/Integer;

    if-eqz v1, :cond_2f

    .line 10
    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "number"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_2f
    iget-object v1, p0, Lcom/qweather/sdk/parameter/geo/GeoCityLookupParameter;->lang:Lcom/qweather/sdk/basic/Lang;

    if-eqz v1, :cond_3c

    .line 13
    invoke-virtual {v1}, Lcom/qweather/sdk/basic/Lang;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lang"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3c
    return-object v0
.end method
