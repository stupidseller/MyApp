.class public final Lb/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/n;


# instance fields
.field public final a:Lcom/qweather/sdk/parameter/minutely/MinutelyParameter;


# direct methods
.method public constructor <init>(Lcom/qweather/sdk/parameter/minutely/MinutelyParameter;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lb/i;->a:Lcom/qweather/sdk/parameter/minutely/MinutelyParameter;

    return-void
.end method


# virtual methods
.method public final a()Lcom/qweather/sdk/parameter/ApiParameter;
    .registers 2

    .line 1
    iget-object v0, p0, Lb/i;->a:Lcom/qweather/sdk/parameter/minutely/MinutelyParameter;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 4

    .line 1
    const/4 v0, 0x1

    invoke-static {v0}, La/b;->a(I)I

    move-result v0

    if-nez v0, :cond_b

    .line 3
    const-string/jumbo v0, "v7/sdk5/minutely/5m"

    return-object v0

    .line 5
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unknown path \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "MINUTELY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
