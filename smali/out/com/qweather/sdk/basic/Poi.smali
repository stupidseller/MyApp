.class public final enum Lcom/qweather/sdk/basic/Poi;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qweather/sdk/basic/Poi;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qweather/sdk/basic/Poi;

.field public static final enum CSTA:Lcom/qweather/sdk/basic/Poi;

.field public static final enum SCENIC:Lcom/qweather/sdk/basic/Poi;

.field public static final enum TSTA:Lcom/qweather/sdk/basic/Poi;


# instance fields
.field private final code:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/qweather/sdk/basic/Poi;
    .registers 3

    .line 1
    sget-object v0, Lcom/qweather/sdk/basic/Poi;->SCENIC:Lcom/qweather/sdk/basic/Poi;

    sget-object v1, Lcom/qweather/sdk/basic/Poi;->CSTA:Lcom/qweather/sdk/basic/Poi;

    sget-object v2, Lcom/qweather/sdk/basic/Poi;->TSTA:Lcom/qweather/sdk/basic/Poi;

    filled-new-array {v0, v1, v2}, [Lcom/qweather/sdk/basic/Poi;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lcom/qweather/sdk/basic/Poi;

    const/4 v1, 0x0

    const-string v2, "scenic"

    const-string v3, "SCENIC"

    invoke-direct {v0, v3, v1, v2}, Lcom/qweather/sdk/basic/Poi;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/qweather/sdk/basic/Poi;->SCENIC:Lcom/qweather/sdk/basic/Poi;

    .line 6
    new-instance v0, Lcom/qweather/sdk/basic/Poi;

    const-string v1, "CSTA"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/qweather/sdk/basic/Poi;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/qweather/sdk/basic/Poi;->CSTA:Lcom/qweather/sdk/basic/Poi;

    .line 11
    new-instance v0, Lcom/qweather/sdk/basic/Poi;

    const-string v1, "TSTA"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Lcom/qweather/sdk/basic/Poi;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/qweather/sdk/basic/Poi;->TSTA:Lcom/qweather/sdk/basic/Poi;

    .line 12
    invoke-static {}, Lcom/qweather/sdk/basic/Poi;->$values()[Lcom/qweather/sdk/basic/Poi;

    move-result-object v0

    sput-object v0, Lcom/qweather/sdk/basic/Poi;->$VALUES:[Lcom/qweather/sdk/basic/Poi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/qweather/sdk/basic/Poi;->code:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qweather/sdk/basic/Poi;
    .registers 2

    .line 1
    const-class v0, Lcom/qweather/sdk/basic/Poi;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qweather/sdk/basic/Poi;

    return-object p0
.end method

.method public static values()[Lcom/qweather/sdk/basic/Poi;
    .registers 1

    .line 1
    sget-object v0, Lcom/qweather/sdk/basic/Poi;->$VALUES:[Lcom/qweather/sdk/basic/Poi;

    invoke-virtual {v0}, [Lcom/qweather/sdk/basic/Poi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qweather/sdk/basic/Poi;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/basic/Poi;->code:Ljava/lang/String;

    return-object v0
.end method
