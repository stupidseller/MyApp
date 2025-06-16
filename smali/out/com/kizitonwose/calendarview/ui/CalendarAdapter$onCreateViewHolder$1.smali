.class final Lcom/kizitonwose/calendarview/ui/CalendarAdapter$onCreateViewHolder$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CalendarAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/kizitonwose/calendarview/ui/MonthViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/ViewGroup;",
        "Lkotlin/Unit;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "setupRoot",
        "",
        "root",
        "Landroid/view/ViewGroup;",
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
.field final synthetic this$0:Lcom/kizitonwose/calendarview/ui/CalendarAdapter;


# direct methods
.method constructor <init>(Lcom/kizitonwose/calendarview/ui/CalendarAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/kizitonwose/calendarview/ui/CalendarAdapter$onCreateViewHolder$1;->this$0:Lcom/kizitonwose/calendarview/ui/CalendarAdapter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 32
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter$onCreateViewHolder$1;->invoke(Landroid/view/ViewGroup;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/ViewGroup;)V
    .registers 7
    .param p1, "root"    # Landroid/view/ViewGroup;

    const-string v0, "root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    nop

    .line 108
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    .line 109
    iget-object v1, p0, Lcom/kizitonwose/calendarview/ui/CalendarAdapter$onCreateViewHolder$1;->this$0:Lcom/kizitonwose/calendarview/ui/CalendarAdapter;

    invoke-static {v1}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->access$getCalView$p(Lcom/kizitonwose/calendarview/ui/CalendarAdapter;)Lcom/kizitonwose/calendarview/CalendarView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kizitonwose/calendarview/CalendarView;->getMonthPaddingStart()I

    move-result v1

    iget-object v2, p0, Lcom/kizitonwose/calendarview/ui/CalendarAdapter$onCreateViewHolder$1;->this$0:Lcom/kizitonwose/calendarview/ui/CalendarAdapter;

    invoke-static {v2}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->access$getCalView$p(Lcom/kizitonwose/calendarview/ui/CalendarAdapter;)Lcom/kizitonwose/calendarview/CalendarView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kizitonwose/calendarview/CalendarView;->getMonthPaddingTop()I

    move-result v2

    .line 110
    iget-object v3, p0, Lcom/kizitonwose/calendarview/ui/CalendarAdapter$onCreateViewHolder$1;->this$0:Lcom/kizitonwose/calendarview/ui/CalendarAdapter;

    invoke-static {v3}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->access$getCalView$p(Lcom/kizitonwose/calendarview/ui/CalendarAdapter;)Lcom/kizitonwose/calendarview/CalendarView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kizitonwose/calendarview/CalendarView;->getMonthPaddingEnd()I

    move-result v3

    iget-object v4, p0, Lcom/kizitonwose/calendarview/ui/CalendarAdapter$onCreateViewHolder$1;->this$0:Lcom/kizitonwose/calendarview/ui/CalendarAdapter;

    invoke-static {v4}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->access$getCalView$p(Lcom/kizitonwose/calendarview/ui/CalendarAdapter;)Lcom/kizitonwose/calendarview/CalendarView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kizitonwose/calendarview/CalendarView;->getMonthPaddingBottom()I

    move-result v4

    .line 107
    invoke-static {v0, v1, v2, v3, v4}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 112
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    move-object v1, v0

    .local v1, "$this$apply":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v2, 0x0

    .line 113
    .local v2, "$i$a$-apply-CalendarAdapter$onCreateViewHolder$1$1":I
    iget-object v3, p0, Lcom/kizitonwose/calendarview/ui/CalendarAdapter$onCreateViewHolder$1;->this$0:Lcom/kizitonwose/calendarview/ui/CalendarAdapter;

    invoke-static {v3}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->access$getCalView$p(Lcom/kizitonwose/calendarview/ui/CalendarAdapter;)Lcom/kizitonwose/calendarview/CalendarView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kizitonwose/calendarview/CalendarView;->getMonthMarginBottom()I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 114
    iget-object v3, p0, Lcom/kizitonwose/calendarview/ui/CalendarAdapter$onCreateViewHolder$1;->this$0:Lcom/kizitonwose/calendarview/ui/CalendarAdapter;

    invoke-static {v3}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->access$getCalView$p(Lcom/kizitonwose/calendarview/ui/CalendarAdapter;)Lcom/kizitonwose/calendarview/CalendarView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kizitonwose/calendarview/CalendarView;->getMonthMarginTop()I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 116
    nop

    .line 117
    iget-object v3, p0, Lcom/kizitonwose/calendarview/ui/CalendarAdapter$onCreateViewHolder$1;->this$0:Lcom/kizitonwose/calendarview/ui/CalendarAdapter;

    invoke-static {v3}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->access$getCalView$p(Lcom/kizitonwose/calendarview/ui/CalendarAdapter;)Lcom/kizitonwose/calendarview/CalendarView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kizitonwose/calendarview/CalendarView;->getMonthMarginStart()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 118
    iget-object v3, p0, Lcom/kizitonwose/calendarview/ui/CalendarAdapter$onCreateViewHolder$1;->this$0:Lcom/kizitonwose/calendarview/ui/CalendarAdapter;

    invoke-static {v3}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->access$getCalView$p(Lcom/kizitonwose/calendarview/ui/CalendarAdapter;)Lcom/kizitonwose/calendarview/CalendarView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kizitonwose/calendarview/CalendarView;->getMonthMarginEnd()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 122
    nop

    .line 123
    nop

    .end local v1    # "$this$apply":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v2    # "$i$a$-apply-CalendarAdapter$onCreateViewHolder$1$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 112
    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    return-void
.end method
