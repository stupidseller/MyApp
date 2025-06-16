.class public final Lb/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/n;


# instance fields
.field public final a:I

.field public final b:Lcom/qweather/sdk/parameter/ApiParameter;


# direct methods
.method public constructor <init>(ILcom/qweather/sdk/parameter/ApiParameter;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lb/k;->a:I

    .line 3
    iput-object p2, p0, Lb/k;->b:Lcom/qweather/sdk/parameter/ApiParameter;

    return-void
.end method


# virtual methods
.method public final a()Lcom/qweather/sdk/parameter/ApiParameter;
    .registers 2

    .line 1
    iget-object v0, p0, Lb/k;->b:Lcom/qweather/sdk/parameter/ApiParameter;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 6

    .line 1
    iget v0, p0, Lb/k;->a:I

    invoke-static {v0}, La/b;->a(I)I

    move-result v0

    if-eqz v0, :cond_46

    const/4 v1, 0x1

    if-eq v0, v1, :cond_42

    const/4 v2, 0x2

    if-ne v0, v2, :cond_12

    .line 3
    const-string/jumbo v0, "v7/sdk5/tropical/storm-forecast"

    return-object v0

    .line 9
    :cond_12
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "unknown path \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lb/k;->a:I

    if-eq v4, v1, :cond_2e

    if-eq v4, v2, :cond_2b

    const/4 v1, 0x3

    if-eq v4, v1, :cond_28

    const-string v1, "null"

    goto :goto_30

    :cond_28
    const-string v1, "TROPICAL_FORECAST"

    goto :goto_30

    :cond_2b
    const-string v1, "TROPICAL_TRACK"

    goto :goto_30

    :cond_2e
    const-string v1, "TROPICAL_LIST"

    :goto_30
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_42
    const-string/jumbo v0, "v7/sdk5/tropical/storm-track"

    return-object v0

    .line 12
    :cond_46
    const-string/jumbo v0, "v7/sdk5/tropical/storm-list"

    return-object v0
.end method
