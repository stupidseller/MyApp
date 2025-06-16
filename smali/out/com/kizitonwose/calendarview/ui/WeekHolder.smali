.class public final Lcom/kizitonwose/calendarview/ui/WeekHolder;
.super Ljava/lang/Object;
.source "WeekHolder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWeekHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WeekHolder.kt\ncom/kizitonwose/calendarview/ui/WeekHolder\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,39:1\n296#2,2:40\n1828#3,3:42\n1711#3,3:45\n*E\n*S KotlinDebug\n*F\n+ 1 WeekHolder.kt\ncom/kizitonwose/calendarview/ui/WeekHolder\n*L\n29#1,2:40\n30#1,3:42\n37#1,3:45\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\u0013\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0002\u0010\u0005J\u0014\u0010\u0008\u001a\u00020\t2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0003J\u000e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0007J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000bR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/kizitonwose/calendarview/ui/WeekHolder;",
        "",
        "dayHolders",
        "",
        "Lcom/kizitonwose/calendarview/ui/DayHolder;",
        "(Ljava/util/List;)V",
        "container",
        "Landroid/widget/LinearLayout;",
        "bindWeekView",
        "",
        "daysOfWeek",
        "Lcom/kizitonwose/calendarview/model/CalendarDay;",
        "inflateWeekView",
        "Landroid/view/View;",
        "parent",
        "reloadDay",
        "",
        "day",
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
.field private container:Landroid/widget/LinearLayout;

.field private final dayHolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kizitonwose/calendarview/ui/DayHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .param p1, "dayHolders"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kizitonwose/calendarview/ui/DayHolder;",
            ">;)V"
        }
    .end annotation

    const-string v0, "dayHolders"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kizitonwose/calendarview/ui/WeekHolder;->dayHolders:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final bindWeekView(Ljava/util/List;)V
    .registers 11
    .param p1, "daysOfWeek"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kizitonwose/calendarview/model/CalendarDay;",
            ">;)V"
        }
    .end annotation

    const-string v0, "daysOfWeek"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/kizitonwose/calendarview/ui/WeekHolder;->container:Landroid/widget/LinearLayout;

    if-nez v0, :cond_e

    const-string v1, "container"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_e
    check-cast v0, Landroid/view/View;

    .local v0, "$this$isGone$iv":Landroid/view/View;
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    .local v1, "value$iv":Z
    const/4 v2, 0x0

    .line 40
    .local v2, "$i$f$setGone":I
    if-eqz v1, :cond_1a

    const/16 v3, 0x8

    goto :goto_1b

    :cond_1a
    const/4 v3, 0x0

    :goto_1b
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 41
    nop

    .line 30
    .end local v0    # "$this$isGone$iv":Landroid/view/View;
    .end local v1    # "value$iv":Z
    .end local v2    # "$i$f$setGone":I
    iget-object v0, p0, Lcom/kizitonwose/calendarview/ui/WeekHolder;->dayHolders:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 42
    .local v1, "$i$f$forEachIndexed":I
    const/4 v2, 0x0

    .line 43
    .local v2, "index$iv":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "item$iv":Ljava/lang/Object;
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "index$iv":I
    .local v5, "index$iv":I
    if-gez v2, :cond_3a

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_3a
    move-object v6, v4

    check-cast v6, Lcom/kizitonwose/calendarview/ui/DayHolder;

    .local v2, "index":I
    .local v6, "holder":Lcom/kizitonwose/calendarview/ui/DayHolder;
    const/4 v7, 0x0

    .line 33
    .local v7, "$i$a$-forEachIndexed-WeekHolder$bindWeekView$1":I
    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/kizitonwose/calendarview/model/CalendarDay;

    invoke-virtual {v6, v8}, Lcom/kizitonwose/calendarview/ui/DayHolder;->bindDayView(Lcom/kizitonwose/calendarview/model/CalendarDay;)V

    .line 34
    move v2, v5

    .end local v2    # "index":I
    .end local v4    # "item$iv":Ljava/lang/Object;
    .end local v6    # "holder":Lcom/kizitonwose/calendarview/ui/DayHolder;
    .end local v7    # "$i$a$-forEachIndexed-WeekHolder$bindWeekView$1":I
    goto :goto_29

    .line 44
    .end local v5    # "index$iv":I
    .local v2, "index$iv":I
    :cond_49
    nop

    .line 35
    .end local v0    # "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEachIndexed":I
    .end local v2    # "index$iv":I
    return-void
.end method

.method public final inflateWeekView(Landroid/widget/LinearLayout;)Landroid/view/View;
    .registers 8
    .param p1, "parent"    # Landroid/widget/LinearLayout;

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v1, v0

    .local v1, "$this$apply":Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    .line 15
    .local v2, "$i$a$-apply-WeekHolder$inflateWeekView$1":I
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 16
    nop

    .line 17
    nop

    .line 15
    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 20
    iget-object v3, p0, Lcom/kizitonwose/calendarview/ui/WeekHolder;->dayHolders:Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 21
    iget-object v3, p0, Lcom/kizitonwose/calendarview/ui/WeekHolder;->dayHolders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_33
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kizitonwose/calendarview/ui/DayHolder;

    .line 22
    .local v4, "holder":Lcom/kizitonwose/calendarview/ui/DayHolder;
    invoke-virtual {v4, v1}, Lcom/kizitonwose/calendarview/ui/DayHolder;->inflateDayView(Landroid/widget/LinearLayout;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 21
    .end local v4    # "holder":Lcom/kizitonwose/calendarview/ui/DayHolder;
    goto :goto_33

    .line 24
    :cond_47
    nop

    .end local v1    # "$this$apply":Landroid/widget/LinearLayout;
    .end local v2    # "$i$a$-apply-WeekHolder$inflateWeekView$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 14
    iput-object v0, p0, Lcom/kizitonwose/calendarview/ui/WeekHolder;->container:Landroid/widget/LinearLayout;

    .line 25
    iget-object v0, p0, Lcom/kizitonwose/calendarview/ui/WeekHolder;->container:Landroid/widget/LinearLayout;

    if-nez v0, :cond_55

    const-string v1, "container"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_55
    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final reloadDay(Lcom/kizitonwose/calendarview/model/CalendarDay;)Z
    .registers 9
    .param p1, "day"    # Lcom/kizitonwose/calendarview/model/CalendarDay;

    const-string v0, "day"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/kizitonwose/calendarview/ui/WeekHolder;->dayHolders:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 45
    .local v1, "$i$f$any":I
    instance-of v2, v0, Ljava/util/Collection;

    const/4 v3, 0x0

    if-eqz v2, :cond_19

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_34

    .line 46
    :cond_19
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lcom/kizitonwose/calendarview/ui/DayHolder;

    .local v5, "it":Lcom/kizitonwose/calendarview/ui/DayHolder;
    const/4 v6, 0x0

    .line 37
    .local v6, "$i$a$-any-WeekHolder$reloadDay$1":I
    invoke-virtual {v5, p1}, Lcom/kizitonwose/calendarview/ui/DayHolder;->reloadViewIfNecessary(Lcom/kizitonwose/calendarview/model/CalendarDay;)Z

    move-result v5

    .end local v5    # "it":Lcom/kizitonwose/calendarview/ui/DayHolder;
    .end local v6    # "$i$a$-any-WeekHolder$reloadDay$1":I
    if-eqz v5, :cond_1d

    const/4 v3, 0x1

    goto :goto_34

    .line 47
    .end local v4    # "element$iv":Ljava/lang/Object;
    :cond_33
    nop

    .line 37
    .end local v0    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$any":I
    :goto_34
    return v3
.end method
