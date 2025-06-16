.class public final Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "CalendarLayoutManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager$CalendarSmoothScroller;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001:\u0001\u001bB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0018\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0010\u001a\u00020\u0011J\u000e\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0018J\u000e\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u0010\u001a\u00020\u0011J\u000e\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0018R\u0014\u0010\u0007\u001a\u00020\u00088BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u00020\u000c8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;",
        "Landroidx/recyclerview/widget/LinearLayoutManager;",
        "calView",
        "Lcom/kizitonwose/calendarview/CalendarView;",
        "orientation",
        "",
        "(Lcom/kizitonwose/calendarview/CalendarView;I)V",
        "adapter",
        "Lcom/kizitonwose/calendarview/ui/CalendarAdapter;",
        "getAdapter",
        "()Lcom/kizitonwose/calendarview/ui/CalendarAdapter;",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "calculateDayViewOffsetInParent",
        "day",
        "Lcom/kizitonwose/calendarview/model/CalendarDay;",
        "itemView",
        "Landroid/view/View;",
        "scrollToDay",
        "",
        "scrollToMonth",
        "month",
        "Ljava/time/YearMonth;",
        "smoothScrollToDay",
        "smoothScrollToMonth",
        "CalendarSmoothScroller",
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
.field private final calView:Lcom/kizitonwose/calendarview/CalendarView;


# direct methods
.method public constructor <init>(Lcom/kizitonwose/calendarview/CalendarView;I)V
    .registers 5
    .param p1, "calView"    # Lcom/kizitonwose/calendarview/CalendarView;
    .param p2, "orientation"    # I

    const-string v0, "calView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    nop

    .line 17
    invoke-virtual {p1}, Lcom/kizitonwose/calendarview/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object p1, p0, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;->calView:Lcom/kizitonwose/calendarview/CalendarView;

    return-void
.end method

.method public static final synthetic access$calculateDayViewOffsetInParent(Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;Lcom/kizitonwose/calendarview/model/CalendarDay;Landroid/view/View;)I
    .registers 4
    .param p0, "$this"    # Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;
    .param p1, "day"    # Lcom/kizitonwose/calendarview/model/CalendarDay;
    .param p2, "itemView"    # Landroid/view/View;

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;->calculateDayViewOffsetInParent(Lcom/kizitonwose/calendarview/model/CalendarDay;Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$getAdapter$p(Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;)Lcom/kizitonwose/calendarview/ui/CalendarAdapter;
    .registers 2
    .param p0, "$this"    # Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;

    .line 16
    invoke-direct {p0}, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;->getAdapter()Lcom/kizitonwose/calendarview/ui/CalendarAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getCalView$p(Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;)Lcom/kizitonwose/calendarview/CalendarView;
    .registers 2
    .param p0, "$this"    # Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;

    .line 16
    iget-object v0, p0, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;->calView:Lcom/kizitonwose/calendarview/CalendarView;

    return-object v0
.end method

.method public static final synthetic access$getContext$p(Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;)Landroid/content/Context;
    .registers 2
    .param p0, "$this"    # Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;

    .line 16
    invoke-direct {p0}, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private final calculateDayViewOffsetInParent(Lcom/kizitonwose/calendarview/model/CalendarDay;Landroid/view/View;)I
    .registers 7
    .param p1, "day"    # Lcom/kizitonwose/calendarview/model/CalendarDay;
    .param p2, "itemView"    # Landroid/view/View;

    .line 64
    invoke-virtual {p1}, Lcom/kizitonwose/calendarview/model/CalendarDay;->getDate()Ljava/time/LocalDate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/LocalDate;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 65
    .local v0, "dayView":Landroid/view/View;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 66
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 67
    if-eqz p2, :cond_3d

    move-object v2, p2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 68
    iget-object v2, p0, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;->calView:Lcom/kizitonwose/calendarview/CalendarView;

    invoke-virtual {v2}, Lcom/kizitonwose/calendarview/CalendarView;->isVertical$com_github_kizitonwose_CalendarView()Z

    move-result v2

    if-eqz v2, :cond_33

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;->calView:Lcom/kizitonwose/calendarview/CalendarView;

    invoke-virtual {v3}, Lcom/kizitonwose/calendarview/CalendarView;->getMonthMarginTop()I

    move-result v3

    goto :goto_3b

    :cond_33
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;->calView:Lcom/kizitonwose/calendarview/CalendarView;

    invoke-virtual {v3}, Lcom/kizitonwose/calendarview/CalendarView;->getMonthMarginStart()I

    move-result v3

    :goto_3b
    add-int/2addr v2, v3

    return v2

    .line 67
    :cond_3d
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 64
    .end local v0    # "dayView":Landroid/view/View;
    .end local v1    # "rect":Landroid/graphics/Rect;
    :cond_45
    const/4 v0, 0x0

    return v0
.end method

.method private final getAdapter()Lcom/kizitonwose/calendarview/ui/CalendarAdapter;
    .registers 3

    .line 20
    iget-object v0, p0, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;->calView:Lcom/kizitonwose/calendarview/CalendarView;

    invoke-virtual {v0}, Lcom/kizitonwose/calendarview/CalendarView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_b

    check-cast v0, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;

    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type com.kizitonwose.calendarview.ui.CalendarAdapter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final getContext()Landroid/content/Context;
    .registers 3

    .line 23
    iget-object v0, p0, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;->calView:Lcom/kizitonwose/calendarview/CalendarView;

    invoke-virtual {v0}, Lcom/kizitonwose/calendarview/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "calView.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final scrollToDay(Lcom/kizitonwose/calendarview/model/CalendarDay;)V
    .registers 5
    .param p1, "day"    # Lcom/kizitonwose/calendarview/model/CalendarDay;

    const-string v0, "day"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;->getAdapter()Lcom/kizitonwose/calendarview/ui/CalendarAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->getAdapterPosition$com_github_kizitonwose_CalendarView(Lcom/kizitonwose/calendarview/model/CalendarDay;)I

    move-result v0

    .line 48
    .local v0, "monthPosition":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    return-void

    .line 49
    :cond_11
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;->scrollToPositionWithOffset(II)V

    .line 51
    iget-object v1, p0, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;->calView:Lcom/kizitonwose/calendarview/CalendarView;

    invoke-virtual {v1}, Lcom/kizitonwose/calendarview/CalendarView;->getScrollMode()Lcom/kizitonwose/calendarview/model/ScrollMode;

    move-result-object v1

    sget-object v2, Lcom/kizitonwose/calendarview/model/ScrollMode;->PAGED:Lcom/kizitonwose/calendarview/model/ScrollMode;

    if-ne v1, v2, :cond_2c

    .line 52
    iget-object v1, p0, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;->calView:Lcom/kizitonwose/calendarview/CalendarView;

    new-instance v2, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager$scrollToDay$1;

    invoke-direct {v2, p0}, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager$scrollToDay$1;-><init>(Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/kizitonwose/calendarview/CalendarView;->post(Ljava/lang/Runnable;)Z

    goto :goto_38

    .line 54
    :cond_2c
    iget-object v1, p0, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;->calView:Lcom/kizitonwose/calendarview/CalendarView;

    new-instance v2, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager$scrollToDay$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager$scrollToDay$2;-><init>(Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;ILcom/kizitonwose/calendarview/model/CalendarDay;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/kizitonwose/calendarview/CalendarView;->post(Ljava/lang/Runnable;)Z

    .line 60
    :goto_38
    nop

    .line 61
    return-void
.end method

.method public final scrollToMonth(Ljava/time/YearMonth;)V
    .registers 5
    .param p1, "month"    # Ljava/time/YearMonth;

    const-string v0, "month"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;->getAdapter()Lcom/kizitonwose/calendarview/ui/CalendarAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->getAdapterPosition$com_github_kizitonwose_CalendarView(Ljava/time/YearMonth;)I

    move-result v0

    .line 27
    .local v0, "position":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    return-void

    .line 28
    :cond_11
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;->scrollToPositionWithOffset(II)V

    .line 29
    iget-object v1, p0, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;->calView:Lcom/kizitonwose/calendarview/CalendarView;

    new-instance v2, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager$scrollToMonth$1;

    invoke-direct {v2, p0}, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager$scrollToMonth$1;-><init>(Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/kizitonwose/calendarview/CalendarView;->post(Ljava/lang/Runnable;)Z

    .line 30
    return-void
.end method

.method public final smoothScrollToDay(Lcom/kizitonwose/calendarview/model/CalendarDay;)V
    .registers 6
    .param p1, "day"    # Lcom/kizitonwose/calendarview/model/CalendarDay;

    const-string v0, "day"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;->getAdapter()Lcom/kizitonwose/calendarview/ui/CalendarAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->getAdapterPosition$com_github_kizitonwose_CalendarView(Lcom/kizitonwose/calendarview/model/CalendarDay;)I

    move-result v0

    .line 40
    .local v0, "monthPosition":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    return-void

    .line 42
    :cond_11
    iget-object v1, p0, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;->calView:Lcom/kizitonwose/calendarview/CalendarView;

    invoke-virtual {v1}, Lcom/kizitonwose/calendarview/CalendarView;->getScrollMode()Lcom/kizitonwose/calendarview/model/ScrollMode;

    move-result-object v1

    sget-object v2, Lcom/kizitonwose/calendarview/model/ScrollMode;->PAGED:Lcom/kizitonwose/calendarview/model/ScrollMode;

    if-ne v1, v2, :cond_1d

    const/4 v1, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    .line 43
    .local v1, "isPaged":Z
    :goto_1e
    new-instance v2, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager$CalendarSmoothScroller;

    if-eqz v1, :cond_24

    const/4 v3, 0x0

    goto :goto_25

    :cond_24
    move-object v3, p1

    :goto_25
    invoke-direct {v2, p0, v0, v3}, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager$CalendarSmoothScroller;-><init>(Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;ILcom/kizitonwose/calendarview/model/CalendarDay;)V

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    invoke-virtual {p0, v2}, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    .line 44
    return-void
.end method

.method public final smoothScrollToMonth(Ljava/time/YearMonth;)V
    .registers 5
    .param p1, "month"    # Ljava/time/YearMonth;

    const-string v0, "month"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;->getAdapter()Lcom/kizitonwose/calendarview/ui/CalendarAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->getAdapterPosition$com_github_kizitonwose_CalendarView(Ljava/time/YearMonth;)I

    move-result v0

    .line 34
    .local v0, "position":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    return-void

    .line 35
    :cond_11
    new-instance v1, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager$CalendarSmoothScroller;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager$CalendarSmoothScroller;-><init>(Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;ILcom/kizitonwose/calendarview/model/CalendarDay;)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    invoke-virtual {p0, v1}, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    .line 36
    return-void
.end method
