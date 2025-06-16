.class final Lcom/kizitonwose/calendarview/ui/CalendarAdapter$notifyMonthScrollListenerIfNeeded$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "CalendarAdapter.kt"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->notifyMonthScrollListenerIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCalendarAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CalendarAdapter.kt\ncom/kizitonwose/calendarview/ui/CalendarAdapter$notifyMonthScrollListenerIfNeeded$2$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,341:1\n307#2:342\n321#2,4:343\n308#2:347\n*E\n*S KotlinDebug\n*F\n+ 1 CalendarAdapter.kt\ncom/kizitonwose/calendarview/ui/CalendarAdapter$notifyMonthScrollListenerIfNeeded$2$1\n*L\n233#1:342\n233#1,4:343\n233#1:347\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/animation/ValueAnimator;",
        "kotlin.jvm.PlatformType",
        "onAnimationUpdate",
        "com/kizitonwose/calendarview/ui/CalendarAdapter$notifyMonthScrollListenerIfNeeded$2$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $visibleVH$inlined:Lcom/kizitonwose/calendarview/ui/MonthViewHolder;

.field final synthetic this$0:Lcom/kizitonwose/calendarview/ui/CalendarAdapter;


# direct methods
.method constructor <init>(Lcom/kizitonwose/calendarview/ui/CalendarAdapter;Lcom/kizitonwose/calendarview/ui/MonthViewHolder;)V
    .registers 3

    iput-object p1, p0, Lcom/kizitonwose/calendarview/ui/CalendarAdapter$notifyMonthScrollListenerIfNeeded$$inlined$apply$lambda$1;->this$0:Lcom/kizitonwose/calendarview/ui/CalendarAdapter;

    iput-object p2, p0, Lcom/kizitonwose/calendarview/ui/CalendarAdapter$notifyMonthScrollListenerIfNeeded$$inlined$apply$lambda$1;->$visibleVH$inlined:Lcom/kizitonwose/calendarview/ui/MonthViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 11
    .param p1, "it"    # Landroid/animation/ValueAnimator;

    .line 233
    iget-object v0, p0, Lcom/kizitonwose/calendarview/ui/CalendarAdapter$notifyMonthScrollListenerIfNeeded$$inlined$apply$lambda$1;->this$0:Lcom/kizitonwose/calendarview/ui/CalendarAdapter;

    invoke-static {v0}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->access$getCalView$p(Lcom/kizitonwose/calendarview/ui/CalendarAdapter;)Lcom/kizitonwose/calendarview/CalendarView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "$this$updateLayoutParams$iv":Landroid/view/View;
    const/4 v1, 0x0

    .line 342
    .local v1, "$i$f$updateLayoutParams":I
    move-object v2, v0

    .local v2, "$this$updateLayoutParams$iv$iv":Landroid/view/View;
    const/4 v3, 0x0

    .line 343
    .local v3, "$i$f$updateLayoutParamsTyped":I
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-eqz v4, :cond_3b

    .line 344
    .local v4, "params$iv$iv":Landroid/view/ViewGroup$LayoutParams;
    move-object v5, v4

    .local v5, "$this$updateLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v6, 0x0

    .line 233
    .local v6, "$i$a$-updateLayoutParams-CalendarAdapter$notifyMonthScrollListenerIfNeeded$2$1$1":I
    const-string v7, "it"

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_33

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 345
    .end local v5    # "$this$updateLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v6    # "$i$a$-updateLayoutParams-CalendarAdapter$notifyMonthScrollListenerIfNeeded$2$1$1":I
    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 346
    nop

    .line 347
    .end local v2    # "$this$updateLayoutParams$iv$iv":Landroid/view/View;
    .end local v3    # "$i$f$updateLayoutParamsTyped":I
    .end local v4    # "params$iv$iv":Landroid/view/ViewGroup$LayoutParams;
    nop

    .line 234
    .end local v0    # "$this$updateLayoutParams$iv":Landroid/view/View;
    .end local v1    # "$i$f$updateLayoutParams":I
    iget-object v0, p0, Lcom/kizitonwose/calendarview/ui/CalendarAdapter$notifyMonthScrollListenerIfNeeded$$inlined$apply$lambda$1;->$visibleVH$inlined:Lcom/kizitonwose/calendarview/ui/MonthViewHolder;

    iget-object v0, v0, Lcom/kizitonwose/calendarview/ui/MonthViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 235
    return-void

    .line 233
    .restart local v0    # "$this$updateLayoutParams$iv":Landroid/view/View;
    .restart local v1    # "$i$f$updateLayoutParams":I
    .restart local v2    # "$this$updateLayoutParams$iv$iv":Landroid/view/View;
    .restart local v3    # "$i$f$updateLayoutParamsTyped":I
    .restart local v4    # "params$iv$iv":Landroid/view/ViewGroup$LayoutParams;
    .restart local v5    # "$this$updateLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    .restart local v6    # "$i$a$-updateLayoutParams-CalendarAdapter$notifyMonthScrollListenerIfNeeded$2$1$1":I
    :cond_33
    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "null cannot be cast to non-null type kotlin.Int"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 343
    .end local v4    # "params$iv$iv":Landroid/view/ViewGroup$LayoutParams;
    .end local v5    # "$this$updateLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v6    # "$i$a$-updateLayoutParams-CalendarAdapter$notifyMonthScrollListenerIfNeeded$2$1$1":I
    :cond_3b
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
