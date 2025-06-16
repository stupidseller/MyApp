.class final Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager$CalendarSmoothScroller;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "CalendarLayoutManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CalendarSmoothScroller"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0018\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0003H\u0016J\u0018\u0010\r\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0003H\u0016J\u0008\u0010\u000e\u001a\u00020\u0003H\u0014J\u0008\u0010\u000f\u001a\u00020\u0003H\u0014R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager$CalendarSmoothScroller;",
        "Landroidx/recyclerview/widget/LinearSmoothScroller;",
        "position",
        "",
        "day",
        "Lcom/kizitonwose/calendarview/model/CalendarDay;",
        "(Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;ILcom/kizitonwose/calendarview/model/CalendarDay;)V",
        "getDay",
        "()Lcom/kizitonwose/calendarview/model/CalendarDay;",
        "calculateDxToMakeVisible",
        "view",
        "Landroid/view/View;",
        "snapPreference",
        "calculateDyToMakeVisible",
        "getHorizontalSnapPreference",
        "getVerticalSnapPreference",
        "com.github.kizitonwose.CalendarView"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final day:Lcom/kizitonwose/calendarview/model/CalendarDay;

.field final synthetic this$0:Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;


# direct methods
.method public constructor <init>(Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;ILcom/kizitonwose/calendarview/model/CalendarDay;)V
    .registers 5
    .param p1, "this$0"    # Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;
    .param p2, "position"    # I
    .param p3, "day"    # Lcom/kizitonwose/calendarview/model/CalendarDay;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/kizitonwose/calendarview/model/CalendarDay;",
            ")V"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager$CalendarSmoothScroller;->this$0:Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;

    .line 72
    invoke-static {p1}, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;->access$getContext$p(Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager$CalendarSmoothScroller;->day:Lcom/kizitonwose/calendarview/model/CalendarDay;

    .line 74
    nop

    .line 75
    invoke-virtual {p0, p2}, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager$CalendarSmoothScroller;->setTargetPosition(I)V

    .line 76
    return-void
.end method


# virtual methods
.method public calculateDxToMakeVisible(Landroid/view/View;I)I
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "snapPreference"    # I

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateDxToMakeVisible(Landroid/view/View;I)I

    move-result v0

    .line 93
    .local v0, "dx":I
    iget-object v1, p0, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager$CalendarSmoothScroller;->day:Lcom/kizitonwose/calendarview/model/CalendarDay;

    if-nez v1, :cond_f

    .line 94
    return v0

    .line 96
    :cond_f
    iget-object v1, p0, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager$CalendarSmoothScroller;->this$0:Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;

    iget-object v2, p0, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager$CalendarSmoothScroller;->day:Lcom/kizitonwose/calendarview/model/CalendarDay;

    invoke-static {v1, v2, p1}, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;->access$calculateDayViewOffsetInParent(Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;Lcom/kizitonwose/calendarview/model/CalendarDay;Landroid/view/View;)I

    move-result v1

    .line 97
    .local v1, "offset":I
    sub-int v2, v0, v1

    return v2
.end method

.method public calculateDyToMakeVisible(Landroid/view/View;I)I
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "snapPreference"    # I

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateDyToMakeVisible(Landroid/view/View;I)I

    move-result v0

    .line 84
    .local v0, "dy":I
    iget-object v1, p0, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager$CalendarSmoothScroller;->day:Lcom/kizitonwose/calendarview/model/CalendarDay;

    if-nez v1, :cond_f

    .line 85
    return v0

    .line 87
    :cond_f
    iget-object v1, p0, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager$CalendarSmoothScroller;->this$0:Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;

    iget-object v2, p0, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager$CalendarSmoothScroller;->day:Lcom/kizitonwose/calendarview/model/CalendarDay;

    invoke-static {v1, v2, p1}, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;->access$calculateDayViewOffsetInParent(Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;Lcom/kizitonwose/calendarview/model/CalendarDay;Landroid/view/View;)I

    move-result v1

    .line 88
    .local v1, "offset":I
    sub-int v2, v0, v1

    return v2
.end method

.method public final getDay()Lcom/kizitonwose/calendarview/model/CalendarDay;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager$CalendarSmoothScroller;->day:Lcom/kizitonwose/calendarview/model/CalendarDay;

    return-object v0
.end method

.method protected getHorizontalSnapPreference()I
    .registers 2

    .line 80
    const/4 v0, -0x1

    return v0
.end method

.method protected getVerticalSnapPreference()I
    .registers 2

    .line 78
    const/4 v0, -0x1

    return v0
.end method
