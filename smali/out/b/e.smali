.class public final Lb/e;
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
    iput p1, p0, Lb/e;->a:I

    .line 3
    iput-object p2, p0, Lb/e;->b:Lcom/qweather/sdk/parameter/ApiParameter;

    return-void
.end method


# virtual methods
.method public final a()Lcom/qweather/sdk/parameter/ApiParameter;
    .registers 2

    .line 1
    iget-object v0, p0, Lb/e;->b:Lcom/qweather/sdk/parameter/ApiParameter;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 4

    .line 1
    iget v0, p0, Lb/e;->a:I

    invoke-static {v0}, La/b;->a(I)I

    move-result v0

    packed-switch v0, :pswitch_data_44

    .line 11
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unknown path \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lb/e;->a:I

    packed-switch v2, :pswitch_data_50

    const-string v2, "null"

    goto :goto_32

    .line 12
    :pswitch_1b
    const-string v0, "geo/v2/sdk5/poi/range"

    return-object v0

    .line 13
    :pswitch_1e
    const-string v0, "geo/v2/sdk5/poi/lookup"

    return-object v0

    .line 14
    :pswitch_21
    const-string v0, "geo/v2/sdk5/city/top"

    return-object v0

    .line 15
    :pswitch_24
    const-string v0, "geo/v2/sdk5/city/lookup"

    return-object v0

    .line 11
    :pswitch_27
    const-string v2, "POI_RANGE"

    goto :goto_32

    :pswitch_2a
    const-string v2, "POI_LOOKUP"

    goto :goto_32

    :pswitch_2d
    const-string v2, "CITY_TOP"

    goto :goto_32

    :pswitch_30
    const-string v2, "CITY_LOOKUP"

    :goto_32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
    .end packed-switch

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
    .end packed-switch
.end method
