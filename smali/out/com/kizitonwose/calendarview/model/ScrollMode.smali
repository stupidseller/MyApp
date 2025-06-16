.class public final enum Lcom/kizitonwose/calendarview/model/ScrollMode;
.super Ljava/lang/Enum;
.source "Enums.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kizitonwose/calendarview/model/ScrollMode;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0004\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/kizitonwose/calendarview/model/ScrollMode;",
        "",
        "(Ljava/lang/String;I)V",
        "CONTINUOUS",
        "PAGED",
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
.field private static final synthetic $VALUES:[Lcom/kizitonwose/calendarview/model/ScrollMode;

.field public static final enum CONTINUOUS:Lcom/kizitonwose/calendarview/model/ScrollMode;

.field public static final enum PAGED:Lcom/kizitonwose/calendarview/model/ScrollMode;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/kizitonwose/calendarview/model/ScrollMode;

    const-string v1, "CONTINUOUS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kizitonwose/calendarview/model/ScrollMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kizitonwose/calendarview/model/ScrollMode;->CONTINUOUS:Lcom/kizitonwose/calendarview/model/ScrollMode;

    new-instance v1, Lcom/kizitonwose/calendarview/model/ScrollMode;

    const-string v2, "PAGED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/kizitonwose/calendarview/model/ScrollMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/kizitonwose/calendarview/model/ScrollMode;->PAGED:Lcom/kizitonwose/calendarview/model/ScrollMode;

    filled-new-array {v0, v1}, [Lcom/kizitonwose/calendarview/model/ScrollMode;

    move-result-object v0

    sput-object v0, Lcom/kizitonwose/calendarview/model/ScrollMode;->$VALUES:[Lcom/kizitonwose/calendarview/model/ScrollMode;

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

    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kizitonwose/calendarview/model/ScrollMode;
    .registers 2

    const-class v0, Lcom/kizitonwose/calendarview/model/ScrollMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kizitonwose/calendarview/model/ScrollMode;

    return-object p0
.end method

.method public static values()[Lcom/kizitonwose/calendarview/model/ScrollMode;
    .registers 1

    sget-object v0, Lcom/kizitonwose/calendarview/model/ScrollMode;->$VALUES:[Lcom/kizitonwose/calendarview/model/ScrollMode;

    invoke-virtual {v0}, [Lcom/kizitonwose/calendarview/model/ScrollMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kizitonwose/calendarview/model/ScrollMode;

    return-object v0
.end method
