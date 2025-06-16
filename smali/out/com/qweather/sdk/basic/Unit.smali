.class public final enum Lcom/qweather/sdk/basic/Unit;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qweather/sdk/basic/Unit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qweather/sdk/basic/Unit;

.field public static final enum IMPERIAL:Lcom/qweather/sdk/basic/Unit;

.field public static final enum METRIC:Lcom/qweather/sdk/basic/Unit;


# instance fields
.field private final code:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/qweather/sdk/basic/Unit;
    .registers 2

    .line 1
    sget-object v0, Lcom/qweather/sdk/basic/Unit;->IMPERIAL:Lcom/qweather/sdk/basic/Unit;

    sget-object v1, Lcom/qweather/sdk/basic/Unit;->METRIC:Lcom/qweather/sdk/basic/Unit;

    filled-new-array {v0, v1}, [Lcom/qweather/sdk/basic/Unit;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lcom/qweather/sdk/basic/Unit;

    const/4 v1, 0x0

    const-string v2, "i"

    const-string v3, "IMPERIAL"

    invoke-direct {v0, v3, v1, v2}, Lcom/qweather/sdk/basic/Unit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/qweather/sdk/basic/Unit;->IMPERIAL:Lcom/qweather/sdk/basic/Unit;

    .line 5
    new-instance v0, Lcom/qweather/sdk/basic/Unit;

    const/4 v1, 0x1

    const-string v2, "m"

    const-string v3, "METRIC"

    invoke-direct {v0, v3, v1, v2}, Lcom/qweather/sdk/basic/Unit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/qweather/sdk/basic/Unit;->METRIC:Lcom/qweather/sdk/basic/Unit;

    .line 6
    invoke-static {}, Lcom/qweather/sdk/basic/Unit;->$values()[Lcom/qweather/sdk/basic/Unit;

    move-result-object v0

    sput-object v0, Lcom/qweather/sdk/basic/Unit;->$VALUES:[Lcom/qweather/sdk/basic/Unit;

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
    iput-object p3, p0, Lcom/qweather/sdk/basic/Unit;->code:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qweather/sdk/basic/Unit;
    .registers 2

    .line 1
    const-class v0, Lcom/qweather/sdk/basic/Unit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qweather/sdk/basic/Unit;

    return-object p0
.end method

.method public static values()[Lcom/qweather/sdk/basic/Unit;
    .registers 1

    .line 1
    sget-object v0, Lcom/qweather/sdk/basic/Unit;->$VALUES:[Lcom/qweather/sdk/basic/Unit;

    invoke-virtual {v0}, [Lcom/qweather/sdk/basic/Unit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qweather/sdk/basic/Unit;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/basic/Unit;->code:Ljava/lang/String;

    return-object v0
.end method
