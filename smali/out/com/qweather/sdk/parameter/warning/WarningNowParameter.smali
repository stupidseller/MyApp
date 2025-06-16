.class public Lcom/qweather/sdk/parameter/warning/WarningNowParameter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qweather/sdk/parameter/ApiParameter;


# instance fields
.field private lang:Lcom/qweather/sdk/basic/Lang;

.field private final location:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qweather/sdk/parameter/warning/WarningNowParameter;->location:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public lang(Lcom/qweather/sdk/basic/Lang;)Lcom/qweather/sdk/parameter/warning/WarningNowParameter;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/parameter/warning/WarningNowParameter;->lang:Lcom/qweather/sdk/basic/Lang;

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
    iget-object v1, p0, Lcom/qweather/sdk/parameter/warning/WarningNowParameter;->location:Ljava/lang/String;

    const-string v2, "location"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/qweather/sdk/parameter/warning/WarningNowParameter;->lang:Lcom/qweather/sdk/basic/Lang;

    if-eqz v1, :cond_19

    .line 4
    invoke-virtual {v1}, Lcom/qweather/sdk/basic/Lang;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lang"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    return-object v0
.end method
