.class public Lcom/qweather/sdk/parameter/geo/GeoPoiLookupParameter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qweather/sdk/parameter/ApiParameter;


# instance fields
.field private city:Ljava/lang/String;

.field private lang:Lcom/qweather/sdk/basic/Lang;

.field private final location:Ljava/lang/String;

.field private number:Ljava/lang/Integer;

.field private final poi:Lcom/qweather/sdk/basic/Poi;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/qweather/sdk/basic/Poi;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qweather/sdk/parameter/geo/GeoPoiLookupParameter;->location:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/qweather/sdk/parameter/geo/GeoPoiLookupParameter;->poi:Lcom/qweather/sdk/basic/Poi;

    return-void
.end method


# virtual methods
.method public city(Ljava/lang/String;)Lcom/qweather/sdk/parameter/geo/GeoPoiLookupParameter;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/parameter/geo/GeoPoiLookupParameter;->city:Ljava/lang/String;

    return-object p0
.end method

.method public lang(Lcom/qweather/sdk/basic/Lang;)Lcom/qweather/sdk/parameter/geo/GeoPoiLookupParameter;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/parameter/geo/GeoPoiLookupParameter;->lang:Lcom/qweather/sdk/basic/Lang;

    return-object p0
.end method

.method public number(Ljava/lang/Integer;)Lcom/qweather/sdk/parameter/geo/GeoPoiLookupParameter;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/parameter/geo/GeoPoiLookupParameter;->number:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/qweather/sdk/parameter/geo/GeoPoiLookupParameter;->location:Ljava/lang/String;

    const-string v2, "location"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/qweather/sdk/parameter/geo/GeoPoiLookupParameter;->poi:Lcom/qweather/sdk/basic/Poi;

    invoke-virtual {v1}, Lcom/qweather/sdk/basic/Poi;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/qweather/sdk/parameter/geo/GeoPoiLookupParameter;->city:Ljava/lang/String;

    if-eqz v1, :cond_21

    .line 5
    const-string v2, "city"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_21
    iget-object v1, p0, Lcom/qweather/sdk/parameter/geo/GeoPoiLookupParameter;->number:Ljava/lang/Integer;

    if-eqz v1, :cond_2e

    .line 8
    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "number"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_2e
    iget-object v1, p0, Lcom/qweather/sdk/parameter/geo/GeoPoiLookupParameter;->lang:Lcom/qweather/sdk/basic/Lang;

    if-eqz v1, :cond_3b

    .line 11
    invoke-virtual {v1}, Lcom/qweather/sdk/basic/Lang;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lang"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3b
    return-object v0
.end method
