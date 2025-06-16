.class public final enum Lcom/qweather/sdk/basic/Basin;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qweather/sdk/basic/Basin;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qweather/sdk/basic/Basin;

.field public static final enum AL:Lcom/qweather/sdk/basic/Basin;

.field public static final enum EP:Lcom/qweather/sdk/basic/Basin;

.field public static final enum NI:Lcom/qweather/sdk/basic/Basin;

.field public static final enum NP:Lcom/qweather/sdk/basic/Basin;

.field public static final enum SI:Lcom/qweather/sdk/basic/Basin;

.field public static final enum SP:Lcom/qweather/sdk/basic/Basin;


# instance fields
.field private final code:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/qweather/sdk/basic/Basin;
    .registers 6

    .line 1
    sget-object v0, Lcom/qweather/sdk/basic/Basin;->AL:Lcom/qweather/sdk/basic/Basin;

    sget-object v1, Lcom/qweather/sdk/basic/Basin;->EP:Lcom/qweather/sdk/basic/Basin;

    sget-object v2, Lcom/qweather/sdk/basic/Basin;->NP:Lcom/qweather/sdk/basic/Basin;

    sget-object v3, Lcom/qweather/sdk/basic/Basin;->SP:Lcom/qweather/sdk/basic/Basin;

    sget-object v4, Lcom/qweather/sdk/basic/Basin;->NI:Lcom/qweather/sdk/basic/Basin;

    sget-object v5, Lcom/qweather/sdk/basic/Basin;->SI:Lcom/qweather/sdk/basic/Basin;

    filled-new-array/range {v0 .. v5}, [Lcom/qweather/sdk/basic/Basin;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/qweather/sdk/basic/Basin;

    const-string v1, "AL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/qweather/sdk/basic/Basin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/qweather/sdk/basic/Basin;->AL:Lcom/qweather/sdk/basic/Basin;

    .line 4
    new-instance v0, Lcom/qweather/sdk/basic/Basin;

    const-string v1, "EP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/qweather/sdk/basic/Basin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/qweather/sdk/basic/Basin;->EP:Lcom/qweather/sdk/basic/Basin;

    .line 7
    new-instance v0, Lcom/qweather/sdk/basic/Basin;

    const-string v1, "NP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Lcom/qweather/sdk/basic/Basin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/qweather/sdk/basic/Basin;->NP:Lcom/qweather/sdk/basic/Basin;

    .line 10
    new-instance v0, Lcom/qweather/sdk/basic/Basin;

    const-string v1, "SP"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v1}, Lcom/qweather/sdk/basic/Basin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/qweather/sdk/basic/Basin;->SP:Lcom/qweather/sdk/basic/Basin;

    .line 13
    new-instance v0, Lcom/qweather/sdk/basic/Basin;

    const-string v1, "NI"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v1}, Lcom/qweather/sdk/basic/Basin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/qweather/sdk/basic/Basin;->NI:Lcom/qweather/sdk/basic/Basin;

    .line 16
    new-instance v0, Lcom/qweather/sdk/basic/Basin;

    const-string v1, "SI"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v1}, Lcom/qweather/sdk/basic/Basin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/qweather/sdk/basic/Basin;->SI:Lcom/qweather/sdk/basic/Basin;

    .line 17
    invoke-static {}, Lcom/qweather/sdk/basic/Basin;->$values()[Lcom/qweather/sdk/basic/Basin;

    move-result-object v0

    sput-object v0, Lcom/qweather/sdk/basic/Basin;->$VALUES:[Lcom/qweather/sdk/basic/Basin;

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
    iput-object p3, p0, Lcom/qweather/sdk/basic/Basin;->code:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qweather/sdk/basic/Basin;
    .registers 2

    .line 1
    const-class v0, Lcom/qweather/sdk/basic/Basin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qweather/sdk/basic/Basin;

    return-object p0
.end method

.method public static values()[Lcom/qweather/sdk/basic/Basin;
    .registers 1

    .line 1
    sget-object v0, Lcom/qweather/sdk/basic/Basin;->$VALUES:[Lcom/qweather/sdk/basic/Basin;

    invoke-virtual {v0}, [Lcom/qweather/sdk/basic/Basin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qweather/sdk/basic/Basin;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/basic/Basin;->code:Ljava/lang/String;

    return-object v0
.end method
