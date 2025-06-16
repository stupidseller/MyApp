.class public final enum Lcom/qweather/sdk/basic/Indices;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qweather/sdk/basic/Indices;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qweather/sdk/basic/Indices;

.field public static final enum AC:Lcom/qweather/sdk/basic/Indices;

.field public static final enum AG:Lcom/qweather/sdk/basic/Indices;

.field public static final enum ALL:Lcom/qweather/sdk/basic/Indices;

.field public static final enum AP:Lcom/qweather/sdk/basic/Indices;

.field public static final enum COMF:Lcom/qweather/sdk/basic/Indices;

.field public static final enum CW:Lcom/qweather/sdk/basic/Indices;

.field public static final enum DC:Lcom/qweather/sdk/basic/Indices;

.field public static final enum DRSG:Lcom/qweather/sdk/basic/Indices;

.field public static final enum FIS:Lcom/qweather/sdk/basic/Indices;

.field public static final enum FLU:Lcom/qweather/sdk/basic/Indices;

.field public static final enum GL:Lcom/qweather/sdk/basic/Indices;

.field public static final enum MU:Lcom/qweather/sdk/basic/Indices;

.field public static final enum PTFC:Lcom/qweather/sdk/basic/Indices;

.field public static final enum SPI:Lcom/qweather/sdk/basic/Indices;

.field public static final enum SPT:Lcom/qweather/sdk/basic/Indices;

.field public static final enum TRA:Lcom/qweather/sdk/basic/Indices;

.field public static final enum UV:Lcom/qweather/sdk/basic/Indices;


# instance fields
.field private final code:I


# direct methods
.method private static synthetic $values()[Lcom/qweather/sdk/basic/Indices;
    .registers 17

    .line 1
    sget-object v0, Lcom/qweather/sdk/basic/Indices;->ALL:Lcom/qweather/sdk/basic/Indices;

    sget-object v1, Lcom/qweather/sdk/basic/Indices;->SPT:Lcom/qweather/sdk/basic/Indices;

    sget-object v2, Lcom/qweather/sdk/basic/Indices;->CW:Lcom/qweather/sdk/basic/Indices;

    sget-object v3, Lcom/qweather/sdk/basic/Indices;->DRSG:Lcom/qweather/sdk/basic/Indices;

    sget-object v4, Lcom/qweather/sdk/basic/Indices;->FIS:Lcom/qweather/sdk/basic/Indices;

    sget-object v5, Lcom/qweather/sdk/basic/Indices;->UV:Lcom/qweather/sdk/basic/Indices;

    sget-object v6, Lcom/qweather/sdk/basic/Indices;->TRA:Lcom/qweather/sdk/basic/Indices;

    sget-object v7, Lcom/qweather/sdk/basic/Indices;->AG:Lcom/qweather/sdk/basic/Indices;

    sget-object v8, Lcom/qweather/sdk/basic/Indices;->COMF:Lcom/qweather/sdk/basic/Indices;

    sget-object v9, Lcom/qweather/sdk/basic/Indices;->FLU:Lcom/qweather/sdk/basic/Indices;

    sget-object v10, Lcom/qweather/sdk/basic/Indices;->AP:Lcom/qweather/sdk/basic/Indices;

    sget-object v11, Lcom/qweather/sdk/basic/Indices;->AC:Lcom/qweather/sdk/basic/Indices;

    sget-object v12, Lcom/qweather/sdk/basic/Indices;->GL:Lcom/qweather/sdk/basic/Indices;

    sget-object v13, Lcom/qweather/sdk/basic/Indices;->MU:Lcom/qweather/sdk/basic/Indices;

    sget-object v14, Lcom/qweather/sdk/basic/Indices;->DC:Lcom/qweather/sdk/basic/Indices;

    sget-object v15, Lcom/qweather/sdk/basic/Indices;->PTFC:Lcom/qweather/sdk/basic/Indices;

    sget-object v16, Lcom/qweather/sdk/basic/Indices;->SPI:Lcom/qweather/sdk/basic/Indices;

    filled-new-array/range {v0 .. v16}, [Lcom/qweather/sdk/basic/Indices;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/qweather/sdk/basic/Indices;

    const-string v1, "ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/qweather/sdk/basic/Indices;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qweather/sdk/basic/Indices;->ALL:Lcom/qweather/sdk/basic/Indices;

    .line 2
    new-instance v0, Lcom/qweather/sdk/basic/Indices;

    const-string v1, "SPT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/qweather/sdk/basic/Indices;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qweather/sdk/basic/Indices;->SPT:Lcom/qweather/sdk/basic/Indices;

    .line 3
    new-instance v0, Lcom/qweather/sdk/basic/Indices;

    const-string v1, "CW"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/qweather/sdk/basic/Indices;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qweather/sdk/basic/Indices;->CW:Lcom/qweather/sdk/basic/Indices;

    .line 4
    new-instance v0, Lcom/qweather/sdk/basic/Indices;

    const-string v1, "DRSG"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/qweather/sdk/basic/Indices;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qweather/sdk/basic/Indices;->DRSG:Lcom/qweather/sdk/basic/Indices;

    .line 5
    new-instance v0, Lcom/qweather/sdk/basic/Indices;

    const-string v1, "FIS"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/qweather/sdk/basic/Indices;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qweather/sdk/basic/Indices;->FIS:Lcom/qweather/sdk/basic/Indices;

    .line 6
    new-instance v0, Lcom/qweather/sdk/basic/Indices;

    const-string v1, "UV"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/qweather/sdk/basic/Indices;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qweather/sdk/basic/Indices;->UV:Lcom/qweather/sdk/basic/Indices;

    .line 7
    new-instance v0, Lcom/qweather/sdk/basic/Indices;

    const-string v1, "TRA"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lcom/qweather/sdk/basic/Indices;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qweather/sdk/basic/Indices;->TRA:Lcom/qweather/sdk/basic/Indices;

    .line 8
    new-instance v0, Lcom/qweather/sdk/basic/Indices;

    const-string v1, "AG"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lcom/qweather/sdk/basic/Indices;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qweather/sdk/basic/Indices;->AG:Lcom/qweather/sdk/basic/Indices;

    .line 9
    new-instance v0, Lcom/qweather/sdk/basic/Indices;

    const-string v1, "COMF"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v2}, Lcom/qweather/sdk/basic/Indices;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qweather/sdk/basic/Indices;->COMF:Lcom/qweather/sdk/basic/Indices;

    .line 10
    new-instance v0, Lcom/qweather/sdk/basic/Indices;

    const-string v1, "FLU"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v2}, Lcom/qweather/sdk/basic/Indices;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qweather/sdk/basic/Indices;->FLU:Lcom/qweather/sdk/basic/Indices;

    .line 11
    new-instance v0, Lcom/qweather/sdk/basic/Indices;

    const-string v1, "AP"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v2}, Lcom/qweather/sdk/basic/Indices;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qweather/sdk/basic/Indices;->AP:Lcom/qweather/sdk/basic/Indices;

    .line 12
    new-instance v0, Lcom/qweather/sdk/basic/Indices;

    const-string v1, "AC"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v2}, Lcom/qweather/sdk/basic/Indices;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qweather/sdk/basic/Indices;->AC:Lcom/qweather/sdk/basic/Indices;

    .line 13
    new-instance v0, Lcom/qweather/sdk/basic/Indices;

    const-string v1, "GL"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v2}, Lcom/qweather/sdk/basic/Indices;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qweather/sdk/basic/Indices;->GL:Lcom/qweather/sdk/basic/Indices;

    .line 14
    new-instance v0, Lcom/qweather/sdk/basic/Indices;

    const-string v1, "MU"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v2}, Lcom/qweather/sdk/basic/Indices;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qweather/sdk/basic/Indices;->MU:Lcom/qweather/sdk/basic/Indices;

    .line 15
    new-instance v0, Lcom/qweather/sdk/basic/Indices;

    const-string v1, "DC"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2, v2}, Lcom/qweather/sdk/basic/Indices;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qweather/sdk/basic/Indices;->DC:Lcom/qweather/sdk/basic/Indices;

    .line 16
    new-instance v0, Lcom/qweather/sdk/basic/Indices;

    const-string v1, "PTFC"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v2}, Lcom/qweather/sdk/basic/Indices;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qweather/sdk/basic/Indices;->PTFC:Lcom/qweather/sdk/basic/Indices;

    .line 17
    new-instance v0, Lcom/qweather/sdk/basic/Indices;

    const-string v1, "SPI"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, v2}, Lcom/qweather/sdk/basic/Indices;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qweather/sdk/basic/Indices;->SPI:Lcom/qweather/sdk/basic/Indices;

    .line 18
    invoke-static {}, Lcom/qweather/sdk/basic/Indices;->$values()[Lcom/qweather/sdk/basic/Indices;

    move-result-object v0

    sput-object v0, Lcom/qweather/sdk/basic/Indices;->$VALUES:[Lcom/qweather/sdk/basic/Indices;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/qweather/sdk/basic/Indices;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qweather/sdk/basic/Indices;
    .registers 2

    .line 1
    const-class v0, Lcom/qweather/sdk/basic/Indices;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qweather/sdk/basic/Indices;

    return-object p0
.end method

.method public static values()[Lcom/qweather/sdk/basic/Indices;
    .registers 1

    .line 1
    sget-object v0, Lcom/qweather/sdk/basic/Indices;->$VALUES:[Lcom/qweather/sdk/basic/Indices;

    invoke-virtual {v0}, [Lcom/qweather/sdk/basic/Indices;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qweather/sdk/basic/Indices;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/qweather/sdk/basic/Indices;->code:I

    return v0
.end method
