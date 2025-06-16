.class public final Lcom/kizitonwose/calendarview/ui/DayHolder;
.super Ljava/lang/Object;
.source "DayHolder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDayHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DayHolder.kt\ncom/kizitonwose/calendarview/ui/DayHolder\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,69:1\n321#2,2:70\n342#2:72\n360#2:73\n323#2,2:74\n252#2:76\n254#2,2:77\n294#2:79\n296#2,2:80\n*E\n*S KotlinDebug\n*F\n+ 1 DayHolder.kt\ncom/kizitonwose/calendarview/ui/DayHolder\n*L\n30#1,2:70\n32#1:72\n32#1:73\n30#1,2:74\n51#1:76\n52#1,2:77\n55#1:79\n56#1,2:80\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u0008J\u000e\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\u0008R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/kizitonwose/calendarview/ui/DayHolder;",
        "",
        "config",
        "Lcom/kizitonwose/calendarview/ui/DayConfig;",
        "(Lcom/kizitonwose/calendarview/ui/DayConfig;)V",
        "dateView",
        "Landroid/view/View;",
        "day",
        "Lcom/kizitonwose/calendarview/model/CalendarDay;",
        "viewContainer",
        "Lcom/kizitonwose/calendarview/ui/ViewContainer;",
        "bindDayView",
        "",
        "currentDay",
        "inflateDayView",
        "parent",
        "Landroid/widget/LinearLayout;",
        "reloadViewIfNecessary",
        "",
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
.field private final config:Lcom/kizitonwose/calendarview/ui/DayConfig;

.field private dateView:Landroid/view/View;

.field private day:Lcom/kizitonwose/calendarview/model/CalendarDay;

.field private viewContainer:Lcom/kizitonwose/calendarview/ui/ViewContainer;


# direct methods
.method public constructor <init>(Lcom/kizitonwose/calendarview/ui/DayConfig;)V
    .registers 3
    .param p1, "config"    # Lcom/kizitonwose/calendarview/ui/DayConfig;

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kizitonwose/calendarview/ui/DayHolder;->config:Lcom/kizitonwose/calendarview/ui/DayConfig;

    return-void
.end method

.method public static final synthetic access$getViewContainer$p(Lcom/kizitonwose/calendarview/ui/DayHolder;)Lcom/kizitonwose/calendarview/ui/ViewContainer;
    .registers 3
    .param p0, "$this"    # Lcom/kizitonwose/calendarview/ui/DayHolder;

    .line 19
    iget-object v0, p0, Lcom/kizitonwose/calendarview/ui/DayHolder;->viewContainer:Lcom/kizitonwose/calendarview/ui/ViewContainer;

    if-nez v0, :cond_a

    const-string/jumbo v1, "viewContainer"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    return-object v0
.end method

.method public static final synthetic access$setViewContainer$p(Lcom/kizitonwose/calendarview/ui/DayHolder;Lcom/kizitonwose/calendarview/ui/ViewContainer;)V
    .registers 2
    .param p0, "$this"    # Lcom/kizitonwose/calendarview/ui/DayHolder;
    .param p1, "<set-?>"    # Lcom/kizitonwose/calendarview/ui/ViewContainer;

    .line 19
    iput-object p1, p0, Lcom/kizitonwose/calendarview/ui/DayHolder;->viewContainer:Lcom/kizitonwose/calendarview/ui/ViewContainer;

    return-void
.end method


# virtual methods
.method public final bindDayView(Lcom/kizitonwose/calendarview/model/CalendarDay;)V
    .registers 10
    .param p1, "currentDay"    # Lcom/kizitonwose/calendarview/model/CalendarDay;

    .line 40
    iput-object p1, p0, Lcom/kizitonwose/calendarview/ui/DayHolder;->day:Lcom/kizitonwose/calendarview/model/CalendarDay;

    .line 41
    move-object v0, p0

    check-cast v0, Lcom/kizitonwose/calendarview/ui/DayHolder;

    iget-object v0, v0, Lcom/kizitonwose/calendarview/ui/DayHolder;->viewContainer:Lcom/kizitonwose/calendarview/ui/ViewContainer;

    if-nez v0, :cond_1e

    .line 42
    iget-object v0, p0, Lcom/kizitonwose/calendarview/ui/DayHolder;->config:Lcom/kizitonwose/calendarview/ui/DayConfig;

    invoke-virtual {v0}, Lcom/kizitonwose/calendarview/ui/DayConfig;->getViewBinder()Lcom/kizitonwose/calendarview/ui/DayBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/kizitonwose/calendarview/ui/DayHolder;->dateView:Landroid/view/View;

    if-nez v1, :cond_18

    const-string v2, "dateView"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_18
    invoke-interface {v0, v1}, Lcom/kizitonwose/calendarview/ui/DayBinder;->create(Landroid/view/View;)Lcom/kizitonwose/calendarview/ui/ViewContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/kizitonwose/calendarview/ui/DayHolder;->viewContainer:Lcom/kizitonwose/calendarview/ui/ViewContainer;

    .line 45
    :cond_1e
    if-eqz p1, :cond_25

    invoke-virtual {p1}, Lcom/kizitonwose/calendarview/model/CalendarDay;->getDate()Ljava/time/LocalDate;

    move-result-object v0

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_2f

    :cond_2e
    move v0, v1

    .line 46
    .local v0, "dayHash":I
    :goto_2f
    iget-object v2, p0, Lcom/kizitonwose/calendarview/ui/DayHolder;->viewContainer:Lcom/kizitonwose/calendarview/ui/ViewContainer;

    const-string/jumbo v3, "viewContainer"

    if-nez v2, :cond_39

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_39
    invoke-virtual {v2}, Lcom/kizitonwose/calendarview/ui/ViewContainer;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5d

    .line 47
    iget-object v2, p0, Lcom/kizitonwose/calendarview/ui/DayHolder;->viewContainer:Lcom/kizitonwose/calendarview/ui/ViewContainer;

    if-nez v2, :cond_52

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_52
    invoke-virtual {v2}, Lcom/kizitonwose/calendarview/ui/ViewContainer;->getView()Landroid/view/View;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 50
    :cond_5d
    const/4 v2, 0x1

    if-eqz p1, :cond_98

    .line 51
    iget-object v4, p0, Lcom/kizitonwose/calendarview/ui/DayHolder;->viewContainer:Lcom/kizitonwose/calendarview/ui/ViewContainer;

    if-nez v4, :cond_67

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_67
    invoke-virtual {v4}, Lcom/kizitonwose/calendarview/ui/ViewContainer;->getView()Landroid/view/View;

    move-result-object v4

    .local v4, "$this$isVisible$iv":Landroid/view/View;
    const/4 v5, 0x0

    .line 76
    .local v5, "$i$f$isVisible":I
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_73

    goto :goto_74

    :cond_73
    move v2, v1

    .line 51
    .end local v4    # "$this$isVisible$iv":Landroid/view/View;
    .end local v5    # "$i$f$isVisible":I
    :goto_74
    if-nez v2, :cond_87

    .line 52
    iget-object v2, p0, Lcom/kizitonwose/calendarview/ui/DayHolder;->viewContainer:Lcom/kizitonwose/calendarview/ui/ViewContainer;

    if-nez v2, :cond_7d

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7d
    invoke-virtual {v2}, Lcom/kizitonwose/calendarview/ui/ViewContainer;->getView()Landroid/view/View;

    move-result-object v2

    .local v2, "$this$isVisible$iv":Landroid/view/View;
    const/4 v4, 0x1

    .local v4, "value$iv":Z
    const/4 v5, 0x0

    .line 77
    .local v5, "$i$f$setVisible":I
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 78
    nop

    .line 54
    .end local v2    # "$this$isVisible$iv":Landroid/view/View;
    .end local v4    # "value$iv":Z
    .end local v5    # "$i$f$setVisible":I
    :cond_87
    iget-object v1, p0, Lcom/kizitonwose/calendarview/ui/DayHolder;->config:Lcom/kizitonwose/calendarview/ui/DayConfig;

    invoke-virtual {v1}, Lcom/kizitonwose/calendarview/ui/DayConfig;->getViewBinder()Lcom/kizitonwose/calendarview/ui/DayBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/kizitonwose/calendarview/ui/DayHolder;->viewContainer:Lcom/kizitonwose/calendarview/ui/ViewContainer;

    if-nez v2, :cond_94

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_94
    invoke-interface {v1, v2, p1}, Lcom/kizitonwose/calendarview/ui/DayBinder;->bind(Lcom/kizitonwose/calendarview/ui/ViewContainer;Lcom/kizitonwose/calendarview/model/CalendarDay;)V

    goto :goto_c0

    .line 55
    :cond_98
    iget-object v4, p0, Lcom/kizitonwose/calendarview/ui/DayHolder;->viewContainer:Lcom/kizitonwose/calendarview/ui/ViewContainer;

    if-nez v4, :cond_9f

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9f
    invoke-virtual {v4}, Lcom/kizitonwose/calendarview/ui/ViewContainer;->getView()Landroid/view/View;

    move-result-object v4

    .local v4, "$this$isGone$iv":Landroid/view/View;
    const/4 v5, 0x0

    .line 79
    .local v5, "$i$f$isGone":I
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_ad

    move v1, v2

    .line 55
    .end local v4    # "$this$isGone$iv":Landroid/view/View;
    .end local v5    # "$i$f$isGone":I
    :cond_ad
    if-nez v1, :cond_c0

    .line 56
    iget-object v1, p0, Lcom/kizitonwose/calendarview/ui/DayHolder;->viewContainer:Lcom/kizitonwose/calendarview/ui/ViewContainer;

    if-nez v1, :cond_b6

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_b6
    invoke-virtual {v1}, Lcom/kizitonwose/calendarview/ui/ViewContainer;->getView()Landroid/view/View;

    move-result-object v1

    .local v1, "$this$isGone$iv":Landroid/view/View;
    const/4 v2, 0x1

    .local v2, "value$iv":Z
    const/4 v3, 0x0

    .line 80
    .local v3, "$i$f$setGone":I
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 81
    nop

    .line 57
    .end local v1    # "$this$isGone$iv":Landroid/view/View;
    .end local v2    # "value$iv":Z
    .end local v3    # "$i$f$setGone":I
    :cond_c0
    :goto_c0
    nop

    .line 58
    return-void
.end method

.method public final inflateDayView(Landroid/widget/LinearLayout;)Landroid/view/View;
    .registers 18
    .param p1, "parent"    # Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "parent"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, v0, Lcom/kizitonwose/calendarview/ui/DayHolder;->config:Lcom/kizitonwose/calendarview/ui/DayConfig;

    invoke-virtual {v3}, Lcom/kizitonwose/calendarview/ui/DayConfig;->getDayViewRes()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/kizitonwose/calendarview/utils/ExtensionsKt;->inflate$default(Landroid/view/ViewGroup;IZILjava/lang/Object;)Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    .local v3, "$this$apply":Landroid/view/View;
    const/4 v5, 0x0

    .line 30
    .local v5, "$i$a$-apply-DayHolder$inflateDayView$1":I
    move-object v7, v3

    .local v7, "$this$updateLayoutParams$iv":Landroid/view/View;
    const/4 v8, 0x0

    .line 70
    .local v8, "$i$f$updateLayoutParamsTyped":I
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    if-eqz v9, :cond_95

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    check-cast v9, Landroid/view/ViewGroup$LayoutParams;

    .line 71
    .local v9, "params$iv":Landroid/view/ViewGroup$LayoutParams;
    move-object v10, v9

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    .local v10, "$this$updateLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v11, 0x0

    .line 31
    .local v11, "$i$a$-updateLayoutParams-DayHolder$inflateDayView$1$1":I
    iget-object v12, v0, Lcom/kizitonwose/calendarview/ui/DayHolder;->config:Lcom/kizitonwose/calendarview/ui/DayConfig;

    invoke-virtual {v12}, Lcom/kizitonwose/calendarview/ui/DayConfig;->getSize()Lcom/kizitonwose/calendarview/utils/Size;

    move-result-object v12

    invoke-virtual {v12}, Lcom/kizitonwose/calendarview/utils/Size;->getWidth()I

    move-result v12

    move-object v13, v10

    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v13}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v13

    sub-int/2addr v12, v13

    move-object v13, v10

    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v13}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v13

    sub-int/2addr v12, v13

    iput v12, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 32
    iget-object v12, v0, Lcom/kizitonwose/calendarview/ui/DayHolder;->config:Lcom/kizitonwose/calendarview/ui/DayConfig;

    invoke-virtual {v12}, Lcom/kizitonwose/calendarview/ui/DayConfig;->getSize()Lcom/kizitonwose/calendarview/utils/Size;

    move-result-object v12

    invoke-virtual {v12}, Lcom/kizitonwose/calendarview/utils/Size;->getHeight()I

    move-result v12

    move-object v13, v3

    .local v13, "$this$marginTop$iv":Landroid/view/View;
    const/4 v14, 0x0

    .line 72
    .local v14, "$i$f$getMarginTop":I
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    instance-of v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v4, :cond_5c

    move-object v15, v6

    :cond_5c
    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v15, :cond_63

    iget v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_64

    :cond_63
    const/4 v4, 0x0

    .line 32
    .end local v13    # "$this$marginTop$iv":Landroid/view/View;
    .end local v14    # "$i$f$getMarginTop":I
    :goto_64
    sub-int/2addr v12, v4

    move-object v4, v3

    .local v4, "$this$marginBottom$iv":Landroid/view/View;
    const/4 v13, 0x0

    .line 73
    .local v13, "$i$f$getMarginBottom":I
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    instance-of v15, v14, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v15, :cond_70

    goto :goto_71

    :cond_70
    move-object v6, v14

    :goto_71
    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v6, :cond_79

    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move v4, v6

    goto :goto_7a

    :cond_79
    const/4 v4, 0x0

    .line 32
    .end local v4    # "$this$marginBottom$iv":Landroid/view/View;
    .end local v13    # "$i$f$getMarginBottom":I
    :goto_7a
    sub-int/2addr v12, v4

    iput v12, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 33
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 34
    nop

    .line 74
    .end local v10    # "$this$updateLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v11    # "$i$a$-updateLayoutParams-DayHolder$inflateDayView$1$1":I
    invoke-virtual {v7, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    nop

    .line 35
    .end local v7    # "$this$updateLayoutParams$iv":Landroid/view/View;
    .end local v8    # "$i$f$updateLayoutParamsTyped":I
    .end local v9    # "params$iv":Landroid/view/ViewGroup$LayoutParams;
    nop

    .end local v3    # "$this$apply":Landroid/view/View;
    .end local v5    # "$i$a$-apply-DayHolder$inflateDayView$1":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 26
    iput-object v2, v0, Lcom/kizitonwose/calendarview/ui/DayHolder;->dateView:Landroid/view/View;

    .line 36
    iget-object v2, v0, Lcom/kizitonwose/calendarview/ui/DayHolder;->dateView:Landroid/view/View;

    if-nez v2, :cond_94

    const-string v3, "dateView"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_94
    return-object v2

    .line 70
    .restart local v3    # "$this$apply":Landroid/view/View;
    .restart local v5    # "$i$a$-apply-DayHolder$inflateDayView$1":I
    .restart local v7    # "$this$updateLayoutParams$iv":Landroid/view/View;
    .restart local v8    # "$i$f$updateLayoutParamsTyped":I
    :cond_95
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v4, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    invoke-direct {v2, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final reloadViewIfNecessary(Lcom/kizitonwose/calendarview/model/CalendarDay;)Z
    .registers 3
    .param p1, "day"    # Lcom/kizitonwose/calendarview/model/CalendarDay;

    const-string v0, "day"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/kizitonwose/calendarview/ui/DayHolder;->day:Lcom/kizitonwose/calendarview/model/CalendarDay;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 62
    iget-object v0, p0, Lcom/kizitonwose/calendarview/ui/DayHolder;->day:Lcom/kizitonwose/calendarview/model/CalendarDay;

    invoke-virtual {p0, v0}, Lcom/kizitonwose/calendarview/ui/DayHolder;->bindDayView(Lcom/kizitonwose/calendarview/model/CalendarDay;)V

    .line 63
    const/4 v0, 0x1

    goto :goto_15

    .line 65
    :cond_14
    const/4 v0, 0x0

    .line 61
    :goto_15
    return v0
.end method
