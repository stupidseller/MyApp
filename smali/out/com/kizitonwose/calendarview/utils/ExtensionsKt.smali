.class public final Lcom/kizitonwose/calendarview/utils/ExtensionsKt;
.super Ljava/lang/Object;
.source "Extensions.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Extensions.kt\ncom/kizitonwose/calendarview/utils/ExtensionsKt\n*L\n1#1,42:1\n19#1:43\n*E\n*S KotlinDebug\n*F\n+ 1 Extensions.kt\ncom/kizitonwose/calendarview/utils/ExtensionsKt\n*L\n40#1:43\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u001a\u000c\u0010\u0016\u001a\u00020\u0001*\u00020\u0017H\u0000\u001a \u0010\u0018\u001a\u00020\u0017*\u00020\u00192\u0008\u0008\u0001\u0010\u001a\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001cH\u0000\u001a\u0014\u0010\u001d\u001a\u00020\u001c*\u0004\u0018\u00010\u001cH\u0080\u0008\u00a2\u0006\u0002\u0010\u001e\u001a\u0014\u0010\u001f\u001a\u00020\u0001*\u0004\u0018\u00010\u0001H\u0080\u0008\u00a2\u0006\u0002\u0010 \"\u000e\u0010\u0000\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\"\u0018\u0010\u0002\u001a\u00020\u0003*\u00020\u00048@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006\"\u0018\u0010\u0007\u001a\u00020\u0008*\u00020\t8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000b\"\u0015\u0010\u000c\u001a\u00020\r*\u00020\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000f\"\u0015\u0010\u0010\u001a\u00020\r*\u00020\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u000f\"\u0015\u0010\u0012\u001a\u00020\r*\u00020\u00138F\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006!"
    }
    d2 = {
        "NO_INDEX",
        "",
        "job",
        "Lkotlinx/coroutines/Job;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "getJob",
        "(Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;",
        "namedString",
        "",
        "Landroid/graphics/Rect;",
        "getNamedString",
        "(Landroid/graphics/Rect;)Ljava/lang/String;",
        "next",
        "Ljava/time/YearMonth;",
        "getNext",
        "(Ljava/time/YearMonth;)Ljava/time/YearMonth;",
        "previous",
        "getPrevious",
        "yearMonth",
        "Ljava/time/LocalDate;",
        "getYearMonth",
        "(Ljava/time/LocalDate;)Ljava/time/YearMonth;",
        "getVerticalMargins",
        "Landroid/view/View;",
        "inflate",
        "Landroid/view/ViewGroup;",
        "layoutRes",
        "attachToRoot",
        "",
        "orFalse",
        "(Ljava/lang/Boolean;)Z",
        "orZero",
        "(Ljava/lang/Integer;)I",
        "com.github.kizitonwose.CalendarView"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final NO_INDEX:I = -0x1


# direct methods
.method public static final getJob(Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;
    .registers 3
    .param p0, "$this$job"    # Lkotlinx/coroutines/CoroutineScope;

    const-string v0, "$this$job"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-interface {p0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    check-cast v1, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    if-eqz v0, :cond_16

    check-cast v0, Lkotlinx/coroutines/Job;

    return-object v0

    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value was null."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public static final getNamedString(Landroid/graphics/Rect;)Ljava/lang/String;
    .registers 3
    .param p0, "$this$namedString"    # Landroid/graphics/Rect;

    const-string v0, "$this$namedString"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[L: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", T: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "][R: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", B: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getNext(Ljava/time/YearMonth;)Ljava/time/YearMonth;
    .registers 3
    .param p0, "$this$next"    # Ljava/time/YearMonth;

    const-string v0, "$this$next"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/time/YearMonth;->plusMonths(J)Ljava/time/YearMonth;

    move-result-object v0

    const-string/jumbo v1, "this.plusMonths(1)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final getPrevious(Ljava/time/YearMonth;)Ljava/time/YearMonth;
    .registers 3
    .param p0, "$this$previous"    # Ljava/time/YearMonth;

    const-string v0, "$this$previous"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/time/YearMonth;->minusMonths(J)Ljava/time/YearMonth;

    move-result-object v0

    const-string/jumbo v1, "this.minusMonths(1)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final getVerticalMargins(Landroid/view/View;)I
    .registers 7
    .param p0, "$this$getVerticalMargins"    # Landroid/view/View;

    const-string v0, "$this$getVerticalMargins"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v2, 0x0

    if-nez v1, :cond_f

    move-object v0, v2

    :cond_f
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 40
    .local v0, "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v0, :cond_1a

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1b

    :cond_1a
    move-object v1, v2

    .local v1, "$this$orZero$iv":Ljava/lang/Integer;
    :goto_1b
    const/4 v3, 0x0

    .line 43
    .local v3, "$i$f$orZero":I
    const/4 v4, 0x0

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_25

    :cond_24
    move v5, v4

    .line 40
    .end local v1    # "$this$orZero$iv":Ljava/lang/Integer;
    .end local v3    # "$i$f$orZero":I
    :goto_25
    if-eqz v0, :cond_2d

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_2d
    move-object v1, v2

    .restart local v1    # "$this$orZero$iv":Ljava/lang/Integer;
    const/4 v2, 0x0

    .line 43
    .local v2, "$i$f$orZero":I
    if-eqz v1, :cond_35

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 40
    .end local v1    # "$this$orZero$iv":Ljava/lang/Integer;
    .end local v2    # "$i$f$orZero":I
    :cond_35
    add-int/2addr v5, v4

    return v5
.end method

.method public static final getYearMonth(Ljava/time/LocalDate;)Ljava/time/YearMonth;
    .registers 3
    .param p0, "$this$yearMonth"    # Ljava/time/LocalDate;

    const-string v0, "$this$yearMonth"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Ljava/time/LocalDate;->getYear()I

    move-result v0

    invoke-virtual {p0}, Ljava/time/LocalDate;->getMonth()Ljava/time/Month;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/YearMonth;->of(ILjava/time/Month;)Ljava/time/YearMonth;

    move-result-object v0

    const-string v1, "YearMonth.of(year, month)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final inflate(Landroid/view/ViewGroup;IZ)Landroid/view/View;
    .registers 5
    .param p0, "$this$inflate"    # Landroid/view/ViewGroup;
    .param p1, "layoutRes"    # I
    .param p2, "attachToRoot"    # Z

    const-string v0, "$this$inflate"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p1, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const-string v1, "LayoutInflater.from(cont\u2026tRes, this, attachToRoot)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic inflate$default(Landroid/view/ViewGroup;IZILjava/lang/Object;)Landroid/view/View;
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    .line 13
    const/4 p2, 0x0

    :cond_5
    invoke-static {p0, p1, p2}, Lcom/kizitonwose/calendarview/utils/ExtensionsKt;->inflate(Landroid/view/ViewGroup;IZ)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final orFalse(Ljava/lang/Boolean;)Z
    .registers 3
    .param p0, "$this$orFalse"    # Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 17
    .local v0, "$i$f$orFalse":I
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public static final orZero(Ljava/lang/Integer;)I
    .registers 3
    .param p0, "$this$orZero"    # Ljava/lang/Integer;

    const/4 v0, 0x0

    .line 19
    .local v0, "$i$f$orZero":I
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method
