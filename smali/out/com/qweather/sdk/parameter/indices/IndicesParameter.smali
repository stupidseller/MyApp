.class public Lcom/qweather/sdk/parameter/indices/IndicesParameter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qweather/sdk/parameter/ApiParameter;


# instance fields
.field private lang:Lcom/qweather/sdk/basic/Lang;

.field private final location:Ljava/lang/String;

.field private final type:[Lcom/qweather/sdk/basic/Indices;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Lcom/qweather/sdk/basic/Indices;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qweather/sdk/parameter/indices/IndicesParameter;->location:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/qweather/sdk/parameter/indices/IndicesParameter;->type:[Lcom/qweather/sdk/basic/Indices;

    return-void
.end method


# virtual methods
.method public lang(Lcom/qweather/sdk/basic/Lang;)Lcom/qweather/sdk/parameter/indices/IndicesParameter;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/parameter/indices/IndicesParameter;->lang:Lcom/qweather/sdk/basic/Lang;

    return-object p0
.end method

.method public toMap()Ljava/util/Map;
    .registers 6
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
    iget-object v1, p0, Lcom/qweather/sdk/parameter/indices/IndicesParameter;->location:Ljava/lang/String;

    const-string v2, "location"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 4
    :goto_12
    iget-object v3, p0, Lcom/qweather/sdk/parameter/indices/IndicesParameter;->type:[Lcom/qweather/sdk/basic/Indices;

    array-length v4, v3

    if-ge v2, v4, :cond_2f

    .line 5
    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/qweather/sdk/basic/Indices;->getCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6
    iget-object v3, p0, Lcom/qweather/sdk/parameter/indices/IndicesParameter;->type:[Lcom/qweather/sdk/basic/Indices;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2c

    .line 7
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 10
    :cond_2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v1, p0, Lcom/qweather/sdk/parameter/indices/IndicesParameter;->lang:Lcom/qweather/sdk/basic/Lang;

    if-eqz v1, :cond_46

    .line 12
    invoke-virtual {v1}, Lcom/qweather/sdk/basic/Lang;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lang"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_46
    return-object v0
.end method
