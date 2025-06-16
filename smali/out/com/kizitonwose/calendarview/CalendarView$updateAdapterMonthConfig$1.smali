.class final Lcom/kizitonwose/calendarview/CalendarView$updateAdapterMonthConfig$1;
.super Ljava/lang/Object;
.source "CalendarView.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kizitonwose/calendarview/CalendarView;->updateAdapterMonthConfig(Lcom/kizitonwose/calendarview/model/MonthConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kizitonwose/calendarview/CalendarView;


# direct methods
.method constructor <init>(Lcom/kizitonwose/calendarview/CalendarView;)V
    .registers 2

    iput-object p1, p0, Lcom/kizitonwose/calendarview/CalendarView$updateAdapterMonthConfig$1;->this$0:Lcom/kizitonwose/calendarview/CalendarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 429
    iget-object v0, p0, Lcom/kizitonwose/calendarview/CalendarView$updateAdapterMonthConfig$1;->this$0:Lcom/kizitonwose/calendarview/CalendarView;

    invoke-static {v0}, Lcom/kizitonwose/calendarview/CalendarView;->access$getCalendarAdapter$p(Lcom/kizitonwose/calendarview/CalendarView;)Lcom/kizitonwose/calendarview/ui/CalendarAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->notifyMonthScrollListenerIfNeeded()V

    return-void
.end method
