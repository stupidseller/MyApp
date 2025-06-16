.class public Lcom/qweather/sdk/parameter/tropical/StormListParameter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qweather/sdk/parameter/ApiParameter;


# instance fields
.field private final basin:Lcom/qweather/sdk/basic/Basin;

.field private final year:I


# direct methods
.method public constructor <init>(Lcom/qweather/sdk/basic/Basin;I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qweather/sdk/parameter/tropical/StormListParameter;->basin:Lcom/qweather/sdk/basic/Basin;

    .line 3
    iput p2, p0, Lcom/qweather/sdk/parameter/tropical/StormListParameter;->year:I

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
    iget-object v1, p0, Lcom/qweather/sdk/parameter/tropical/StormListParameter;->basin:Lcom/qweather/sdk/basic/Basin;

    invoke-virtual {v1}, Lcom/qweather/sdk/basic/Basin;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "basin"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v1, p0, Lcom/qweather/sdk/parameter/tropical/StormListParameter;->year:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "year"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
