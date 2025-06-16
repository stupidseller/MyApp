.class public final enum Lcom/kizitonwose/calendarview/model/InDateStyle;
.super Ljava/lang/Enum;
.source "Enums.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kizitonwose/calendarview/model/InDateStyle;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/kizitonwose/calendarview/model/InDateStyle;",
        "",
        "(Ljava/lang/String;I)V",
        "ALL_MONTHS",
        "FIRST_MONTH",
        "NONE",
        "com.github.kizitonwose.CalendarView"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kizitonwose/calendarview/model/InDateStyle;

.field public static final enum ALL_MONTHS:Lcom/kizitonwose/calendarview/model/InDateStyle;

.field public static final enum FIRST_MONTH:Lcom/kizitonwose/calendarview/model/InDateStyle;

.field public static final enum NONE:Lcom/kizitonwose/calendarview/model/InDateStyle;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/kizitonwose/calendarview/model/InDateStyle;

    const-string v1, "ALL_MONTHS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kizitonwose/calendarview/model/InDateStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kizitonwose/calendarview/model/InDateStyle;->ALL_MONTHS:Lcom/kizitonwose/calendarview/model/InDateStyle;

    new-instance v1, Lcom/kizitonwose/calendarview/model/InDateStyle;

    const-string v2, "FIRST_MONTH"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/kizitonwose/calendarview/model/InDateStyle;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/kizitonwose/calendarview/model/InDateStyle;->FIRST_MONTH:Lcom/kizitonwose/calendarview/model/InDateStyle;

    new-instance v2, Lcom/kizitonwose/calendarview/model/InDateStyle;

    const-string v3, "NONE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/kizitonwose/calendarview/model/InDateStyle;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/kizitonwose/calendarview/model/InDateStyle;->NONE:Lcom/kizitonwose/calendarview/model/InDateStyle;

    filled-new-array {v0, v1, v2}, [Lcom/kizitonwose/calendarview/model/InDateStyle;

    move-result-object v0

    sput-object v0, Lcom/kizitonwose/calendarview/model/InDateStyle;->$VALUES:[Lcom/kizitonwose/calendarview/model/InDateStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "$enum$name"    # Ljava/lang/String;
    .param p2, "$enum$ordinal"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kizitonwose/calendarview/model/InDateStyle;
    .registers 2

    const-class v0, Lcom/kizitonwose/calendarview/model/InDateStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kizitonwose/calendarview/model/InDateStyle;

    return-object p0
.end method

.method public static values()[Lcom/kizitonwose/calendarview/model/InDateStyle;
    .registers 1

    sget-object v0, Lcom/kizitonwose/calendarview/model/InDateStyle;->$VALUES:[Lcom/kizitonwose/calendarview/model/InDateStyle;

    invoke-virtual {v0}, [Lcom/kizitonwose/calendarview/model/InDateStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kizitonwose/calendarview/model/InDateStyle;

    return-object v0
.end method
