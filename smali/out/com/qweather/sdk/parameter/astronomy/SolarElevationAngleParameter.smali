.class public Lcom/qweather/sdk/parameter/astronomy/SolarElevationAngleParameter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qweather/sdk/parameter/ApiParameter;


# instance fields
.field private final alt:Ljava/lang/String;

.field private final date:Ljava/lang/String;

.field private final location:Ljava/lang/String;

.field private final time:Ljava/lang/String;

.field private final tz:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qweather/sdk/parameter/astronomy/SolarElevationAngleParameter;->location:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/qweather/sdk/parameter/astronomy/SolarElevationAngleParameter;->date:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/qweather/sdk/parameter/astronomy/SolarElevationAngleParameter;->time:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/qweather/sdk/parameter/astronomy/SolarElevationAngleParameter;->tz:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/qweather/sdk/parameter/astronomy/SolarElevationAngleParameter;->alt:Ljava/lang/String;

    return-void
.end method


# virtual methods
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
    iget-object v1, p0, Lcom/qweather/sdk/parameter/astronomy/SolarElevationAngleParameter;->location:Ljava/lang/String;

    const-string v2, "location"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/qweather/sdk/parameter/astronomy/SolarElevationAngleParameter;->date:Ljava/lang/String;

    const-string v2, "date"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/qweather/sdk/parameter/astronomy/SolarElevationAngleParameter;->time:Ljava/lang/String;

    const-string/jumbo v2, "time"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Lcom/qweather/sdk/parameter/astronomy/SolarElevationAngleParameter;->tz:Ljava/lang/String;

    const-string/jumbo v2, "tz"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lcom/qweather/sdk/parameter/astronomy/SolarElevationAngleParameter;->alt:Ljava/lang/String;

    const-string v2, "alt"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
