.class public final synthetic Lcom/kizitonwose/calendarview/model/MonthConfig$Companion$WhenMappings;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 5

    invoke-static {}, Lcom/kizitonwose/calendarview/model/InDateStyle;->values()[Lcom/kizitonwose/calendarview/model/InDateStyle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/kizitonwose/calendarview/model/MonthConfig$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v0, Lcom/kizitonwose/calendarview/model/MonthConfig$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/kizitonwose/calendarview/model/InDateStyle;->ALL_MONTHS:Lcom/kizitonwose/calendarview/model/InDateStyle;

    invoke-virtual {v1}, Lcom/kizitonwose/calendarview/model/InDateStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lcom/kizitonwose/calendarview/model/MonthConfig$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/kizitonwose/calendarview/model/InDateStyle;->FIRST_MONTH:Lcom/kizitonwose/calendarview/model/InDateStyle;

    invoke-virtual {v1}, Lcom/kizitonwose/calendarview/model/InDateStyle;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v0, Lcom/kizitonwose/calendarview/model/MonthConfig$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/kizitonwose/calendarview/model/InDateStyle;->NONE:Lcom/kizitonwose/calendarview/model/InDateStyle;

    invoke-virtual {v1}, Lcom/kizitonwose/calendarview/model/InDateStyle;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    invoke-static {}, Lcom/kizitonwose/calendarview/model/InDateStyle;->values()[Lcom/kizitonwose/calendarview/model/InDateStyle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/kizitonwose/calendarview/model/MonthConfig$Companion$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v0, Lcom/kizitonwose/calendarview/model/MonthConfig$Companion$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lcom/kizitonwose/calendarview/model/InDateStyle;->FIRST_MONTH:Lcom/kizitonwose/calendarview/model/InDateStyle;

    invoke-virtual {v1}, Lcom/kizitonwose/calendarview/model/InDateStyle;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lcom/kizitonwose/calendarview/model/MonthConfig$Companion$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lcom/kizitonwose/calendarview/model/InDateStyle;->ALL_MONTHS:Lcom/kizitonwose/calendarview/model/InDateStyle;

    invoke-virtual {v1}, Lcom/kizitonwose/calendarview/model/InDateStyle;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v0, Lcom/kizitonwose/calendarview/model/MonthConfig$Companion$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lcom/kizitonwose/calendarview/model/InDateStyle;->NONE:Lcom/kizitonwose/calendarview/model/InDateStyle;

    invoke-virtual {v1}, Lcom/kizitonwose/calendarview/model/InDateStyle;->ordinal()I

    move-result v1

    aput v4, v0, v1

    return-void
.end method
