.class public final Lcom/kizitonwose/calendarview/ui/CalenderPageSnapHelper;
.super Landroidx/recyclerview/widget/PagerSnapHelper;
.source "CalenderPageSnapHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0018\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u0004H\u0002J\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\tH\u0002J\u0010\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\tH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/kizitonwose/calendarview/ui/CalenderPageSnapHelper;",
        "Landroidx/recyclerview/widget/PagerSnapHelper;",
        "()V",
        "horizontalHelper",
        "Landroidx/recyclerview/widget/OrientationHelper;",
        "verticalHelper",
        "calculateDistanceToFinalSnap",
        "",
        "layoutManager",
        "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;",
        "targetView",
        "Landroid/view/View;",
        "distanceToStart",
        "",
        "helper",
        "getHorizontalHelper",
        "getVerticalHelper",
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
.field private horizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

.field private verticalHelper:Landroidx/recyclerview/widget/OrientationHelper;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Landroidx/recyclerview/widget/PagerSnapHelper;-><init>()V

    return-void
.end method

.method public static final synthetic access$getHorizontalHelper$p(Lcom/kizitonwose/calendarview/ui/CalenderPageSnapHelper;)Landroidx/recyclerview/widget/OrientationHelper;
    .registers 3
    .param p0, "$this"    # Lcom/kizitonwose/calendarview/ui/CalenderPageSnapHelper;

    .line 8
    iget-object v0, p0, Lcom/kizitonwose/calendarview/ui/CalenderPageSnapHelper;->horizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    if-nez v0, :cond_9

    const-string v1, "horizontalHelper"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    return-object v0
.end method

.method public static final synthetic access$getVerticalHelper$p(Lcom/kizitonwose/calendarview/ui/CalenderPageSnapHelper;)Landroidx/recyclerview/widget/OrientationHelper;
    .registers 3
    .param p0, "$this"    # Lcom/kizitonwose/calendarview/ui/CalenderPageSnapHelper;

    .line 8
    iget-object v0, p0, Lcom/kizitonwose/calendarview/ui/CalenderPageSnapHelper;->verticalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    if-nez v0, :cond_a

    const-string/jumbo v1, "verticalHelper"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    return-object v0
.end method

.method public static final synthetic access$setHorizontalHelper$p(Lcom/kizitonwose/calendarview/ui/CalenderPageSnapHelper;Landroidx/recyclerview/widget/OrientationHelper;)V
    .registers 2
    .param p0, "$this"    # Lcom/kizitonwose/calendarview/ui/CalenderPageSnapHelper;
    .param p1, "<set-?>"    # Landroidx/recyclerview/widget/OrientationHelper;

    .line 8
    iput-object p1, p0, Lcom/kizitonwose/calendarview/ui/CalenderPageSnapHelper;->horizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    return-void
.end method

.method public static final synthetic access$setVerticalHelper$p(Lcom/kizitonwose/calendarview/ui/CalenderPageSnapHelper;Landroidx/recyclerview/widget/OrientationHelper;)V
    .registers 2
    .param p0, "$this"    # Lcom/kizitonwose/calendarview/ui/CalenderPageSnapHelper;
    .param p1, "<set-?>"    # Landroidx/recyclerview/widget/OrientationHelper;

    .line 8
    iput-object p1, p0, Lcom/kizitonwose/calendarview/ui/CalenderPageSnapHelper;->verticalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    return-void
.end method

.method private final distanceToStart(Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)I
    .registers 6
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "helper"    # Landroidx/recyclerview/widget/OrientationHelper;

    .line 29
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    .line 30
    .local v0, "childStart":I
    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    .line 31
    .local v1, "containerStart":I
    sub-int v2, v0, v1

    return v2
.end method

.method private final getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;
    .registers 5
    .param p1, "layoutManager"    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 45
    move-object v0, p0

    check-cast v0, Lcom/kizitonwose/calendarview/ui/CalenderPageSnapHelper;

    iget-object v0, v0, Lcom/kizitonwose/calendarview/ui/CalenderPageSnapHelper;->horizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    const-string v1, "horizontalHelper"

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/kizitonwose/calendarview/ui/CalenderPageSnapHelper;->horizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    if-nez v0, :cond_10

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_10
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 46
    :cond_1a
    invoke-static {p1}, Landroidx/recyclerview/widget/OrientationHelper;->createHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    const-string v2, "OrientationHelper.create\u2026ntalHelper(layoutManager)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kizitonwose/calendarview/ui/CalenderPageSnapHelper;->horizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 48
    :cond_25
    iget-object v0, p0, Lcom/kizitonwose/calendarview/ui/CalenderPageSnapHelper;->horizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    if-nez v0, :cond_2c

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2c
    return-object v0
.end method

.method private final getVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;
    .registers 5
    .param p1, "layoutManager"    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 38
    move-object v0, p0

    check-cast v0, Lcom/kizitonwose/calendarview/ui/CalenderPageSnapHelper;

    iget-object v0, v0, Lcom/kizitonwose/calendarview/ui/CalenderPageSnapHelper;->verticalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    const-string/jumbo v1, "verticalHelper"

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/kizitonwose/calendarview/ui/CalenderPageSnapHelper;->verticalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    if-nez v0, :cond_11

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_11
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 39
    :cond_1b
    invoke-static {p1}, Landroidx/recyclerview/widget/OrientationHelper;->createVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    const-string v2, "OrientationHelper.create\u2026icalHelper(layoutManager)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kizitonwose/calendarview/ui/CalenderPageSnapHelper;->verticalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 41
    :cond_26
    iget-object v0, p0, Lcom/kizitonwose/calendarview/ui/CalenderPageSnapHelper;->verticalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    if-nez v0, :cond_2d

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2d
    return-object v0
.end method


# virtual methods
.method public calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I
    .registers 8
    .param p1, "layoutManager"    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .param p2, "targetView"    # Landroid/view/View;

    const-string v0, "layoutManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "targetView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    const/4 v0, 0x2

    new-array v0, v0, [I

    move-object v1, v0

    .local v1, "$this$apply":[I
    const/4 v2, 0x0

    .line 20
    .local v2, "$i$a$-apply-CalenderPageSnapHelper$calculateDistanceToFinalSnap$1":I
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_20

    .line 21
    invoke-direct {p0, p1}, Lcom/kizitonwose/calendarview/ui/CalenderPageSnapHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v3

    invoke-direct {p0, p2, v3}, Lcom/kizitonwose/calendarview/ui/CalenderPageSnapHelper;->distanceToStart(Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)I

    move-result v3

    goto :goto_21

    :cond_20
    move v3, v4

    .line 20
    :goto_21
    aput v3, v1, v4

    .line 23
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 24
    invoke-direct {p0, p1}, Lcom/kizitonwose/calendarview/ui/CalenderPageSnapHelper;->getVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v3

    invoke-direct {p0, p2, v3}, Lcom/kizitonwose/calendarview/ui/CalenderPageSnapHelper;->distanceToStart(Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)I

    move-result v4

    goto :goto_33

    :cond_32
    nop

    .line 23
    :goto_33
    const/4 v3, 0x1

    aput v4, v1, v3

    .line 25
    nop

    .line 19
    .end local v1    # "$this$apply":[I
    .end local v2    # "$i$a$-apply-CalenderPageSnapHelper$calculateDistanceToFinalSnap$1":I
    return-object v0
.end method
