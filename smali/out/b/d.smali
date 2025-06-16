.class public final Lb/d;
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
    iput p1, p0, Lb/d;->a:I

    .line 3
    iput-object p2, p0, Lb/d;->b:Lcom/qweather/sdk/parameter/ApiParameter;

    return-void
.end method


# virtual methods
.method public final a()Lcom/qweather/sdk/parameter/ApiParameter;
    .registers 2

    .line 1
    iget-object v0, p0, Lb/d;->b:Lcom/qweather/sdk/parameter/ApiParameter;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 6

    .line 1
    iget v0, p0, Lb/d;->a:I

    invoke-static {v0}, La/b;->a(I)I

    move-result v0

    if-eqz v0, :cond_44

    const/4 v1, 0x1

    if-eq v0, v1, :cond_41

    const/4 v2, 0x2

    if-ne v0, v2, :cond_11

    .line 7
    const-string v0, "/v7/sdk5/astronomy/solar-elevation-angle"

    return-object v0

    .line 9
    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "unknown path \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lb/d;->a:I

    if-eq v4, v1, :cond_2d

    if-eq v4, v2, :cond_2a

    const/4 v1, 0x3

    if-eq v4, v1, :cond_27

    const-string v1, "null"

    goto :goto_2f

    :cond_27
    const-string v1, "ASTRONOMY_SOLAR_ELEVATION_ANGEL"

    goto :goto_2f

    :cond_2a
    const-string v1, "ASTRONOMY_MOON"

    goto :goto_2f

    :cond_2d
    const-string v1, "ASTRONOMY_SUN"

    :goto_2f
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
    :cond_41
    const-string v0, "/v7/sdk5/astronomy/moon"

    return-object v0

    .line 11
    :cond_44
    const-string v0, "/v7/sdk5/astronomy/sun"

    return-object v0
.end method
