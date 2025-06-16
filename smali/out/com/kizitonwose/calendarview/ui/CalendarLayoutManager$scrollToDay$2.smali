.class final Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager$scrollToDay$2;
.super Ljava/lang/Object;
.source "CalendarLayoutManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;->scrollToDay(Lcom/kizitonwose/calendarview/model/CalendarDay;)V
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
.field final synthetic $day:Lcom/kizitonwose/calendarview/model/CalendarDay;

.field final synthetic $monthPosition:I

.field final synthetic this$0:Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;


# direct methods
.method constructor <init>(Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;ILcom/kizitonwose/calendarview/model/CalendarDay;)V
    .registers 4

    iput-object p1, p0, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager$scrollToDay$2;->this$0:Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;

    iput p2, p0, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager$scrollToDay$2;->$monthPosition:I

    iput-object p3, p0, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager$scrollToDay$2;->$day:Lcom/kizitonwose/calendarview/model/CalendarDay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 55
    iget-object v0, p0, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager$scrollToDay$2;->this$0:Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;

    invoke-static {v0}, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;->access$getCalView$p(Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;)Lcom/kizitonwose/calendarview/CalendarView;

    move-result-object v0

    iget v1, p0, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager$scrollToDay$2;->$monthPosition:I

    invoke-virtual {v0, v1}, Lcom/kizitonwose/calendarview/CalendarView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    instance-of v1, v0, Lcom/kizitonwose/calendarview/ui/MonthViewHolder;

    if-nez v1, :cond_11

    const/4 v0, 0x0

    :cond_11
    check-cast v0, Lcom/kizitonwose/calendarview/ui/MonthViewHolder;

    if-eqz v0, :cond_3e

    .line 56
    .local v0, "viewHolder":Lcom/kizitonwose/calendarview/ui/MonthViewHolder;
    iget-object v1, p0, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager$scrollToDay$2;->this$0:Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;

    iget-object v2, p0, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager$scrollToDay$2;->$day:Lcom/kizitonwose/calendarview/model/CalendarDay;

    iget-object v3, v0, Lcom/kizitonwose/calendarview/ui/MonthViewHolder;->itemView:Landroid/view/View;

    const-string/jumbo v4, "viewHolder.itemView"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;->access$calculateDayViewOffsetInParent(Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;Lcom/kizitonwose/calendarview/model/CalendarDay;Landroid/view/View;)I

    move-result v1

    .line 57
    .local v1, "offset":I
    iget-object v2, p0, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager$scrollToDay$2;->this$0:Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;

    iget v3, p0, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager$scrollToDay$2;->$monthPosition:I

    neg-int v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;->scrollToPositionWithOffset(II)V

    .line 58
    iget-object v2, p0, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager$scrollToDay$2;->this$0:Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;

    invoke-static {v2}, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;->access$getCalView$p(Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;)Lcom/kizitonwose/calendarview/CalendarView;

    move-result-object v2

    new-instance v3, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager$scrollToDay$2$1;

    invoke-direct {v3, p0}, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager$scrollToDay$2$1;-><init>(Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager$scrollToDay$2;)V

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/kizitonwose/calendarview/CalendarView;->post(Ljava/lang/Runnable;)Z

    .line 59
    .end local v0    # "viewHolder":Lcom/kizitonwose/calendarview/ui/MonthViewHolder;
    .end local v1    # "offset":I
    return-void

    .line 55
    :cond_3e
    return-void
.end method
