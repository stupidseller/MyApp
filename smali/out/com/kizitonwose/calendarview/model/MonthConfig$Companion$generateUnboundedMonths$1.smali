.class final Lcom/kizitonwose/calendarview/model/MonthConfig$Companion$generateUnboundedMonths$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MonthConfig.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kizitonwose/calendarview/model/MonthConfig$Companion;->generateUnboundedMonths$com_github_kizitonwose_CalendarView(Ljava/time/YearMonth;Ljava/time/YearMonth;Ljava/time/DayOfWeek;ILcom/kizitonwose/calendarview/model/InDateStyle;Lcom/kizitonwose/calendarview/model/OutDateStyle;Lkotlinx/coroutines/Job;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lcom/kizitonwose/calendarview/model/CalendarDay;",
        ">;>;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMonthConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MonthConfig.kt\ncom/kizitonwose/calendarview/model/MonthConfig$Companion$generateUnboundedMonths$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,254:1\n1517#2:255\n1588#2,3:256\n1517#2:259\n1588#2,3:260\n*E\n*S KotlinDebug\n*F\n+ 1 MonthConfig.kt\ncom/kizitonwose/calendarview/model/MonthConfig$Companion$generateUnboundedMonths$1\n*L\n118#1:255\n118#1,3:256\n151#1:259\n151#1,3:260\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0012\u0010\u0002\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "ephemeralMonthWeeks",
        "",
        "Lcom/kizitonwose/calendarview/model/CalendarDay;",
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
.field final synthetic $calMonthsCount:I

.field final synthetic $calendarMonths:Ljava/util/List;

.field final synthetic $maxRowCount:I

.field final synthetic $outDateStyle:Lcom/kizitonwose/calendarview/model/OutDateStyle;

.field final synthetic $startMonth:Ljava/time/YearMonth;


# direct methods
.method constructor <init>(Lcom/kizitonwose/calendarview/model/OutDateStyle;ILjava/util/List;Ljava/time/YearMonth;I)V
    .registers 6

    iput-object p1, p0, Lcom/kizitonwose/calendarview/model/MonthConfig$Companion$generateUnboundedMonths$1;->$outDateStyle:Lcom/kizitonwose/calendarview/model/OutDateStyle;

    iput p2, p0, Lcom/kizitonwose/calendarview/model/MonthConfig$Companion$generateUnboundedMonths$1;->$maxRowCount:I

    iput-object p3, p0, Lcom/kizitonwose/calendarview/model/MonthConfig$Companion$generateUnboundedMonths$1;->$calendarMonths:Ljava/util/List;

    iput-object p4, p0, Lcom/kizitonwose/calendarview/model/MonthConfig$Companion$generateUnboundedMonths$1;->$startMonth:Ljava/time/YearMonth;

    iput p5, p0, Lcom/kizitonwose/calendarview/model/MonthConfig$Companion$generateUnboundedMonths$1;->$calMonthsCount:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 29
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/kizitonwose/calendarview/model/MonthConfig$Companion$generateUnboundedMonths$1;->invoke(Ljava/util/List;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/util/List;)Z
    .registers 21
    .param p1, "ephemeralMonthWeeks"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "Lcom/kizitonwose/calendarview/model/CalendarDay;",
            ">;>;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "ephemeralMonthWeeks"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    .line 115
    .local v2, "monthWeeks":Ljava/util/List;
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, "lastDay.date.plusDays(it.toLong())"

    const/16 v5, 0xa

    const/4 v6, 0x1

    const/4 v7, 0x7

    if-ge v3, v7, :cond_28

    iget-object v3, v0, Lcom/kizitonwose/calendarview/model/MonthConfig$Companion$generateUnboundedMonths$1;->$outDateStyle:Lcom/kizitonwose/calendarview/model/OutDateStyle;

    sget-object v8, Lcom/kizitonwose/calendarview/model/OutDateStyle;->END_OF_ROW:Lcom/kizitonwose/calendarview/model/OutDateStyle;

    if-eq v3, v8, :cond_2e

    :cond_28
    iget-object v3, v0, Lcom/kizitonwose/calendarview/model/MonthConfig$Companion$generateUnboundedMonths$1;->$outDateStyle:Lcom/kizitonwose/calendarview/model/OutDateStyle;

    sget-object v8, Lcom/kizitonwose/calendarview/model/OutDateStyle;->END_OF_GRID:Lcom/kizitonwose/calendarview/model/OutDateStyle;

    if-ne v3, v8, :cond_a9

    .line 116
    :cond_2e
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 117
    .local v3, "lastWeek":Ljava/util/List;
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/kizitonwose/calendarview/model/CalendarDay;

    .line 118
    .local v8, "lastDay":Lcom/kizitonwose/calendarview/model/CalendarDay;
    new-instance v9, Lkotlin/ranges/IntRange;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    rsub-int/lit8 v10, v10, 0x7

    invoke-direct {v9, v6, v10}, Lkotlin/ranges/IntRange;-><init>(II)V

    check-cast v9, Ljava/lang/Iterable;

    .local v9, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v10, 0x0

    .line 255
    .local v10, "$i$f$map":I
    new-instance v11, Ljava/util/ArrayList;

    invoke-static {v9, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v11, Ljava/util/Collection;

    .local v11, "destination$iv$iv":Ljava/util/Collection;
    move-object v12, v9

    .local v12, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v13, 0x0

    .line 256
    .local v13, "$i$f$mapTo":I
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_59
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8f

    move-object v15, v14

    check-cast v15, Lkotlin/collections/IntIterator;

    invoke-virtual {v15}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v15

    .line 257
    .local v15, "item$iv$iv":I
    move/from16 v16, v15

    .local v16, "it":I
    const/16 v17, 0x0

    .line 119
    .local v17, "$i$a$-map-MonthConfig$Companion$generateUnboundedMonths$1$outDates$1":I
    new-instance v5, Lcom/kizitonwose/calendarview/model/CalendarDay;

    invoke-virtual {v8}, Lcom/kizitonwose/calendarview/model/CalendarDay;->getDate()Ljava/time/LocalDate;

    move-result-object v6

    move-object/from16 v18, v9

    move/from16 v7, v16

    move-object/from16 v16, v8

    .end local v8    # "lastDay":Lcom/kizitonwose/calendarview/model/CalendarDay;
    .end local v9    # "$this$map$iv":Ljava/lang/Iterable;
    .local v7, "it":I
    .local v16, "lastDay":Lcom/kizitonwose/calendarview/model/CalendarDay;
    .local v18, "$this$map$iv":Ljava/lang/Iterable;
    int-to-long v8, v7

    invoke-virtual {v6, v8, v9}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v8, Lcom/kizitonwose/calendarview/model/DayOwner;->NEXT_MONTH:Lcom/kizitonwose/calendarview/model/DayOwner;

    invoke-direct {v5, v6, v8}, Lcom/kizitonwose/calendarview/model/CalendarDay;-><init>(Ljava/time/LocalDate;Lcom/kizitonwose/calendarview/model/DayOwner;)V

    .end local v7    # "it":I
    .end local v17    # "$i$a$-map-MonthConfig$Companion$generateUnboundedMonths$1$outDates$1":I
    invoke-interface {v11, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 256
    .end local v15    # "item$iv$iv":I
    move-object/from16 v8, v16

    move-object/from16 v9, v18

    const/16 v5, 0xa

    const/4 v6, 0x1

    const/4 v7, 0x7

    goto :goto_59

    .line 258
    .end local v16    # "lastDay":Lcom/kizitonwose/calendarview/model/CalendarDay;
    .end local v18    # "$this$map$iv":Ljava/lang/Iterable;
    .restart local v8    # "lastDay":Lcom/kizitonwose/calendarview/model/CalendarDay;
    .restart local v9    # "$this$map$iv":Ljava/lang/Iterable;
    :cond_8f
    move-object/from16 v16, v8

    move-object/from16 v18, v9

    .end local v8    # "lastDay":Lcom/kizitonwose/calendarview/model/CalendarDay;
    .end local v9    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v11    # "destination$iv$iv":Ljava/util/Collection;
    .end local v12    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v13    # "$i$f$mapTo":I
    .restart local v16    # "lastDay":Lcom/kizitonwose/calendarview/model/CalendarDay;
    .restart local v18    # "$this$map$iv":Ljava/lang/Iterable;
    move-object v5, v11

    check-cast v5, Ljava/util/List;

    .line 255
    nop

    .line 118
    .end local v10    # "$i$f$map":I
    .end local v18    # "$this$map$iv":Ljava/lang/Iterable;
    nop

    .line 121
    .local v5, "outDates":Ljava/util/List;
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v6

    move-object v7, v3

    check-cast v7, Ljava/util/Collection;

    move-object v8, v5

    check-cast v8, Ljava/lang/Iterable;

    invoke-static {v7, v8}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 125
    .end local v3    # "lastWeek":Ljava/util/List;
    .end local v5    # "outDates":Ljava/util/List;
    .end local v16    # "lastDay":Lcom/kizitonwose/calendarview/model/CalendarDay;
    :cond_a9
    :goto_a9
    nop

    .line 127
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    iget v5, v0, Lcom/kizitonwose/calendarview/model/MonthConfig$Companion$generateUnboundedMonths$1;->$maxRowCount:I

    if-ge v3, v5, :cond_b8

    iget-object v3, v0, Lcom/kizitonwose/calendarview/model/MonthConfig$Companion$generateUnboundedMonths$1;->$outDateStyle:Lcom/kizitonwose/calendarview/model/OutDateStyle;

    sget-object v5, Lcom/kizitonwose/calendarview/model/OutDateStyle;->END_OF_GRID:Lcom/kizitonwose/calendarview/model/OutDateStyle;

    if-eq v3, v5, :cond_d3

    :cond_b8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    iget v5, v0, Lcom/kizitonwose/calendarview/model/MonthConfig$Companion$generateUnboundedMonths$1;->$maxRowCount:I

    if-ne v3, v5, :cond_164

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x7

    if-ge v3, v5, :cond_164

    iget-object v3, v0, Lcom/kizitonwose/calendarview/model/MonthConfig$Companion$generateUnboundedMonths$1;->$outDateStyle:Lcom/kizitonwose/calendarview/model/OutDateStyle;

    sget-object v5, Lcom/kizitonwose/calendarview/model/OutDateStyle;->END_OF_GRID:Lcom/kizitonwose/calendarview/model/OutDateStyle;

    if-ne v3, v5, :cond_164

    .line 149
    :cond_d3
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kizitonwose/calendarview/model/CalendarDay;

    .line 151
    .local v3, "lastDay":Lcom/kizitonwose/calendarview/model/CalendarDay;
    new-instance v5, Lkotlin/ranges/IntRange;

    const/4 v6, 0x1

    const/4 v7, 0x7

    invoke-direct {v5, v6, v7}, Lkotlin/ranges/IntRange;-><init>(II)V

    check-cast v5, Ljava/lang/Iterable;

    .local v5, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 259
    .local v7, "$i$f$map":I
    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v5, v9}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v8, Ljava/util/Collection;

    .local v8, "destination$iv$iv":Ljava/util/Collection;
    move-object v10, v5

    .local v10, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v11, 0x0

    .line 260
    .local v11, "$i$f$mapTo":I
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_fc
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_12d

    move-object v13, v12

    check-cast v13, Lkotlin/collections/IntIterator;

    invoke-virtual {v13}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v13

    .line 261
    .local v13, "item$iv$iv":I
    move v14, v13

    .local v14, "it":I
    const/4 v15, 0x0

    .line 152
    .local v15, "$i$a$-map-MonthConfig$Companion$generateUnboundedMonths$1$nextRowDates$1":I
    new-instance v6, Lcom/kizitonwose/calendarview/model/CalendarDay;

    invoke-virtual {v3}, Lcom/kizitonwose/calendarview/model/CalendarDay;->getDate()Ljava/time/LocalDate;

    move-result-object v9

    move-object/from16 v16, v10

    move/from16 v17, v11

    .end local v10    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v11    # "$i$f$mapTo":I
    .local v16, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .local v17, "$i$f$mapTo":I
    int-to-long v10, v14

    invoke-virtual {v9, v10, v11}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v9

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v10, Lcom/kizitonwose/calendarview/model/DayOwner;->NEXT_MONTH:Lcom/kizitonwose/calendarview/model/DayOwner;

    invoke-direct {v6, v9, v10}, Lcom/kizitonwose/calendarview/model/CalendarDay;-><init>(Ljava/time/LocalDate;Lcom/kizitonwose/calendarview/model/DayOwner;)V

    .end local v14    # "it":I
    .end local v15    # "$i$a$-map-MonthConfig$Companion$generateUnboundedMonths$1$nextRowDates$1":I
    invoke-interface {v8, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 260
    .end local v13    # "item$iv$iv":I
    move-object/from16 v10, v16

    move/from16 v11, v17

    const/4 v6, 0x1

    const/16 v9, 0xa

    goto :goto_fc

    .line 262
    .end local v16    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v17    # "$i$f$mapTo":I
    .restart local v10    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .restart local v11    # "$i$f$mapTo":I
    :cond_12d
    move-object/from16 v16, v10

    move/from16 v17, v11

    .end local v8    # "destination$iv$iv":Ljava/util/Collection;
    .end local v10    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v11    # "$i$f$mapTo":I
    move-object v6, v8

    check-cast v6, Ljava/util/List;

    .line 259
    nop

    .line 151
    .end local v5    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$map":I
    move-object v5, v6

    .line 155
    .local v5, "nextRowDates":Ljava/util/List;
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x7

    if-ge v6, v7, :cond_15e

    .line 159
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v6

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Collection;

    move-object v9, v5

    check-cast v9, Ljava/lang/Iterable;

    invoke-static {v8, v9}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    invoke-static {v8, v7}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v8

    invoke-interface {v2, v6, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_161

    .line 161
    :cond_15e
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    .end local v3    # "lastDay":Lcom/kizitonwose/calendarview/model/CalendarDay;
    .end local v5    # "nextRowDates":Ljava/util/List;
    :goto_161
    nop

    .line 125
    goto/16 :goto_a9

    .line 165
    :cond_164
    iget-object v3, v0, Lcom/kizitonwose/calendarview/model/MonthConfig$Companion$generateUnboundedMonths$1;->$calendarMonths:Ljava/util/List;

    .line 168
    new-instance v4, Lcom/kizitonwose/calendarview/model/CalendarMonth;

    iget-object v5, v0, Lcom/kizitonwose/calendarview/model/MonthConfig$Companion$generateUnboundedMonths$1;->$startMonth:Ljava/time/YearMonth;

    iget-object v6, v0, Lcom/kizitonwose/calendarview/model/MonthConfig$Companion$generateUnboundedMonths$1;->$calendarMonths:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    iget v7, v0, Lcom/kizitonwose/calendarview/model/MonthConfig$Companion$generateUnboundedMonths$1;->$calMonthsCount:I

    invoke-direct {v4, v5, v2, v6, v7}, Lcom/kizitonwose/calendarview/model/CalendarMonth;-><init>(Ljava/time/YearMonth;Ljava/util/List;II)V

    .line 165
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .end local v2    # "monthWeeks":Ljava/util/List;
    return v2
.end method
