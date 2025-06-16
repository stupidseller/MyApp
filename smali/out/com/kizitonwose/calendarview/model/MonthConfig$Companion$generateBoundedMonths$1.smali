.class final Lcom/kizitonwose/calendarview/model/MonthConfig$Companion$generateBoundedMonths$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MonthConfig.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kizitonwose/calendarview/model/MonthConfig$Companion;->generateBoundedMonths(Ljava/time/YearMonth;Ljava/time/YearMonth;Ljava/time/DayOfWeek;ILcom/kizitonwose/calendarview/model/InDateStyle;Lcom/kizitonwose/calendarview/model/OutDateStyle;Lkotlinx/coroutines/Job;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lcom/kizitonwose/calendarview/model/CalendarDay;",
        ">;>;",
        "Lcom/kizitonwose/calendarview/model/CalendarMonth;",
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
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0012\u0010\u0002\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lcom/kizitonwose/calendarview/model/CalendarMonth;",
        "monthDays",
        "",
        "Lcom/kizitonwose/calendarview/model/CalendarDay;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $currentMonth:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic $indexInSameMonth:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $numberOfSameMonth:I


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$IntRef;I)V
    .registers 4

    iput-object p1, p0, Lcom/kizitonwose/calendarview/model/MonthConfig$Companion$generateBoundedMonths$1;->$currentMonth:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/kizitonwose/calendarview/model/MonthConfig$Companion$generateBoundedMonths$1;->$indexInSameMonth:Lkotlin/jvm/internal/Ref$IntRef;

    iput p3, p0, Lcom/kizitonwose/calendarview/model/MonthConfig$Companion$generateBoundedMonths$1;->$numberOfSameMonth:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/util/List;)Lcom/kizitonwose/calendarview/model/CalendarMonth;
    .registers 8
    .param p1, "monthDays"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "Lcom/kizitonwose/calendarview/model/CalendarDay;",
            ">;>;)",
            "Lcom/kizitonwose/calendarview/model/CalendarMonth;"
        }
    .end annotation

    const-string v0, "monthDays"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    new-instance v0, Lcom/kizitonwose/calendarview/model/CalendarMonth;

    iget-object v1, p0, Lcom/kizitonwose/calendarview/model/MonthConfig$Companion$generateBoundedMonths$1;->$currentMonth:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/time/YearMonth;

    move-object v2, p1

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/kizitonwose/calendarview/model/MonthConfig$Companion$generateBoundedMonths$1;->$indexInSameMonth:Lkotlin/jvm/internal/Ref$IntRef;

    iget v4, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v3, p0, Lcom/kizitonwose/calendarview/model/MonthConfig$Companion$generateBoundedMonths$1;->$numberOfSameMonth:I

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kizitonwose/calendarview/model/CalendarMonth;-><init>(Ljava/time/YearMonth;Ljava/util/List;II)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 29
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/kizitonwose/calendarview/model/MonthConfig$Companion$generateBoundedMonths$1;->invoke(Ljava/util/List;)Lcom/kizitonwose/calendarview/model/CalendarMonth;

    move-result-object p1

    return-object p1
.end method
