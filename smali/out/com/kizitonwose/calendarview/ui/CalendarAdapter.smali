.class public final Lcom/kizitonwose/calendarview/ui/CalendarAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CalendarAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/kizitonwose/calendarview/ui/MonthViewHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCalendarAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CalendarAdapter.kt\ncom/kizitonwose/calendarview/ui/CalendarAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Extensions.kt\ncom/kizitonwose/calendarview/utils/ExtensionsKt\n*L\n1#1,341:1\n1517#2:342\n1588#2,3:343\n2448#2:346\n1517#2:349\n1588#2,3:350\n1819#2,2:353\n318#2,7:359\n318#2,3:366\n1711#2,3:369\n321#2,4:372\n318#2,3:376\n1711#2,3:379\n321#2,4:382\n256#2,2:386\n1#3:347\n1#3:348\n19#4:355\n19#4:356\n19#4:357\n19#4:358\n*E\n*S KotlinDebug\n*F\n+ 1 CalendarAdapter.kt\ncom/kizitonwose/calendarview/ui/CalendarAdapter\n*L\n92#1:342\n92#1,3:343\n93#1:346\n146#1:349\n146#1,3:350\n152#1,2:353\n249#1,7:359\n263#1,3:366\n264#1,3:369\n263#1,4:372\n269#1,3:376\n270#1,3:379\n269#1,4:382\n334#1,2:386\n93#1:347\n220#1:355\n221#1:356\n226#1:357\n227#1:358\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0016\u0010+\u001a\u0008\u0012\u0004\u0012\u00020,0\"2\u0006\u0010-\u001a\u00020.H\u0002J\u0008\u0010/\u001a\u0004\u0018\u000100J\u0008\u00101\u001a\u0004\u0018\u00010#J\u0008\u00102\u001a\u00020\u000eH\u0002J\u0008\u00103\u001a\u0004\u0018\u000100J\u0008\u00104\u001a\u0004\u0018\u00010#J\u0008\u00105\u001a\u00020\u000eH\u0002J\u0012\u00106\u001a\u0004\u0018\u0001002\u0006\u00107\u001a\u00020\u000bH\u0002J\u0010\u00108\u001a\u00020\u000e2\u0006\u00107\u001a\u00020\u000bH\u0002J\u0015\u00109\u001a\u00020\u000e2\u0006\u0010:\u001a\u000200H\u0000\u00a2\u0006\u0002\u0008;J\u0015\u00109\u001a\u00020\u000e2\u0006\u0010<\u001a\u00020=H\u0000\u00a2\u0006\u0002\u0008;J\u0015\u00109\u001a\u00020\u000e2\u0006\u0010>\u001a\u00020?H\u0000\u00a2\u0006\u0002\u0008;J\u0010\u0010@\u001a\u00020#2\u0006\u0010A\u001a\u00020\u000eH\u0002J\u0008\u0010B\u001a\u00020\u000eH\u0016J\u0010\u0010C\u001a\u00020D2\u0006\u0010A\u001a\u00020\u000eH\u0016J\u0006\u0010E\u001a\u00020FJ\u0010\u0010G\u001a\u00020F2\u0006\u0010H\u001a\u00020IH\u0016J\u0018\u0010J\u001a\u00020F2\u0006\u0010K\u001a\u00020\u00022\u0006\u0010A\u001a\u00020\u000eH\u0016J&\u0010J\u001a\u00020F2\u0006\u0010K\u001a\u00020\u00022\u0006\u0010A\u001a\u00020\u000e2\u000c\u0010L\u001a\u0008\u0012\u0004\u0012\u00020M0\"H\u0016J\u0018\u0010N\u001a\u00020\u00022\u0006\u0010O\u001a\u00020P2\u0006\u0010Q\u001a\u00020\u000eH\u0016J\u0006\u0010R\u001a\u00020FJ\u000e\u0010S\u001a\u00020F2\u0006\u0010:\u001a\u000200J\u000e\u0010T\u001a\u00020F2\u0006\u0010>\u001a\u00020?R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000cR\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0010\"\u0004\u0008\u0015\u0010\u0012R\u000e\u0010\u0016\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u00020\u000b8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u0019\u001a\u00020\u001a8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001cR\u001a\u0010\u0007\u001a\u00020\u0008X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u001a\u0010!\u001a\u0008\u0012\u0004\u0012\u00020#0\"8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010%R\u001a\u0010\u0005\u001a\u00020\u0006X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R\u0010\u0010*\u001a\u0004\u0018\u00010#X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006U"
    }
    d2 = {
        "Lcom/kizitonwose/calendarview/ui/CalendarAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/kizitonwose/calendarview/ui/MonthViewHolder;",
        "calView",
        "Lcom/kizitonwose/calendarview/CalendarView;",
        "viewConfig",
        "Lcom/kizitonwose/calendarview/ui/ViewConfig;",
        "monthConfig",
        "Lcom/kizitonwose/calendarview/model/MonthConfig;",
        "(Lcom/kizitonwose/calendarview/CalendarView;Lcom/kizitonwose/calendarview/ui/ViewConfig;Lcom/kizitonwose/calendarview/model/MonthConfig;)V",
        "calWrapsHeight",
        "",
        "Ljava/lang/Boolean;",
        "footerViewId",
        "",
        "getFooterViewId",
        "()I",
        "setFooterViewId",
        "(I)V",
        "headerViewId",
        "getHeaderViewId",
        "setHeaderViewId",
        "initialLayout",
        "isAttached",
        "()Z",
        "layoutManager",
        "Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;",
        "getLayoutManager",
        "()Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;",
        "getMonthConfig$com_github_kizitonwose_CalendarView",
        "()Lcom/kizitonwose/calendarview/model/MonthConfig;",
        "setMonthConfig$com_github_kizitonwose_CalendarView",
        "(Lcom/kizitonwose/calendarview/model/MonthConfig;)V",
        "months",
        "",
        "Lcom/kizitonwose/calendarview/model/CalendarMonth;",
        "getMonths",
        "()Ljava/util/List;",
        "getViewConfig$com_github_kizitonwose_CalendarView",
        "()Lcom/kizitonwose/calendarview/ui/ViewConfig;",
        "setViewConfig$com_github_kizitonwose_CalendarView",
        "(Lcom/kizitonwose/calendarview/ui/ViewConfig;)V",
        "visibleMonth",
        "createDayHolders",
        "Lcom/kizitonwose/calendarview/ui/DayHolder;",
        "dayConfig",
        "Lcom/kizitonwose/calendarview/ui/DayConfig;",
        "findFirstVisibleDay",
        "Lcom/kizitonwose/calendarview/model/CalendarDay;",
        "findFirstVisibleMonth",
        "findFirstVisibleMonthPosition",
        "findLastVisibleDay",
        "findLastVisibleMonth",
        "findLastVisibleMonthPosition",
        "findVisibleDay",
        "isFirst",
        "findVisibleMonthPosition",
        "getAdapterPosition",
        "day",
        "getAdapterPosition$com_github_kizitonwose_CalendarView",
        "date",
        "Ljava/time/LocalDate;",
        "month",
        "Ljava/time/YearMonth;",
        "getItem",
        "position",
        "getItemCount",
        "getItemId",
        "",
        "notifyMonthScrollListenerIfNeeded",
        "",
        "onAttachedToRecyclerView",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "onBindViewHolder",
        "holder",
        "payloads",
        "",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "reloadCalendar",
        "reloadDay",
        "reloadMonth",
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

.field private calWrapsHeight:Ljava/lang/Boolean;

.field private footerViewId:I

.field private headerViewId:I

.field private initialLayout:Z

.field private monthConfig:Lcom/kizitonwose/calendarview/model/MonthConfig;

.field private viewConfig:Lcom/kizitonwose/calendarview/ui/ViewConfig;

.field private visibleMonth:Lcom/kizitonwose/calendarview/model/CalendarMonth;


# direct methods
.method public constructor <init>(Lcom/kizitonwose/calendarview/CalendarView;Lcom/kizitonwose/calendarview/ui/ViewConfig;Lcom/kizitonwose/calendarview/model/MonthConfig;)V
    .registers 6
    .param p1, "calView"    # Lcom/kizitonwose/calendarview/CalendarView;
    .param p2, "viewConfig"    # Lcom/kizitonwose/calendarview/ui/ViewConfig;
    .param p3, "monthConfig"    # Lcom/kizitonwose/calendarview/model/MonthConfig;

    const-string v0, "calView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "viewConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "monthConfig"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    nop

    .line 36
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->calView:Lcom/kizitonwose/calendarview/CalendarView;

    iput-object p2, p0, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->viewConfig:Lcom/kizitonwose/calendarview/ui/ViewConfig;

    iput-object p3, p0, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->monthConfig:Lcom/kizitonwose/calendarview/model/MonthConfig;

    .line 43
    invoke-static {}, Landroidx/core/view/ViewCompat;->generateViewId()I

    move-result v0

    iput v0, p0, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->headerViewId:I

    .line 44
    invoke-static {}, Landroidx/core/view/ViewCompat;->generateViewId()I

    move-result v0

    iput v0, p0, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->footerViewId:I

    .line 46
    nop

    .line 47
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->setHasStableIds(Z)V

    .line 48
    new-instance v1, Lcom/kizitonwose/calendarview/ui/CalendarAdapter$1;

    invoke-direct {v1, p0}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter$1;-><init>(Lcom/kizitonwose/calendarview/ui/CalendarAdapter;)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p0, v1}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 53
    nop

    .line 179
    iput-boolean v0, p0, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->initialLayout:Z

    return-void
.end method

.method public static final synthetic access$getCalView$p(Lcom/kizitonwose/calendarview/ui/CalendarAdapter;)Lcom/kizitonwose/calendarview/CalendarView;
    .registers 2
    .param p0, "$this"    # Lcom/kizitonwose/calendarview/ui/CalendarAdapter;

    .line 32
    iget-object v0, p0, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->calView:Lcom/kizitonwose/calendarview/CalendarView;

    return-object v0
.end method

.method public static final synthetic access$getInitialLayout$p(Lcom/kizitonwose/calendarview/ui/CalendarAdapter;)Z
    .registers 2
    .param p0, "$this"    # Lcom/kizitonwose/calendarview/ui/CalendarAdapter;

    .line 32
    iget-boolean v0, p0, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->initialLayout:Z

    return v0
.end method

.method public static final synthetic access$setInitialLayout$p(Lcom/kizitonwose/calendarview/ui/CalendarAdapter;Z)V
    .registers 2
    .param p0, "$this"    # Lcom/kizitonwose/calendarview/ui/CalendarAdapter;
    .param p1, "<set-?>"    # Z

    .line 32
    iput-boolean p1, p0, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->initialLayout:Z

    return-void
.end method

.method private final createDayHolders(Lcom/kizitonwose/calendarview/ui/DayConfig;)Ljava/util/List;
    .registers 12
    .param p1, "dayConfig"    # Lcom/kizitonwose/calendarview/ui/DayConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kizitonwose/calendarview/ui/DayConfig;",
            ")",
            "Ljava/util/List<",
            "Lcom/kizitonwose/calendarview/ui/DayHolder;",
            ">;"
        }
    .end annotation

    .line 146
    new-instance v0, Lkotlin/ranges/IntRange;

    const/4 v1, 0x7

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lkotlin/ranges/IntRange;-><init>(II)V

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 349
    .local v1, "$i$f$map":I
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 350
    .local v4, "$i$f$mapTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_35

    move-object v6, v5

    check-cast v6, Lkotlin/collections/IntIterator;

    invoke-virtual {v6}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v6

    .line 351
    .local v6, "item$iv$iv":I
    move v7, v6

    .local v7, "it":I
    const/4 v8, 0x0

    .line 146
    .local v8, "$i$a$-map-CalendarAdapter$createDayHolders$1":I
    new-instance v9, Lcom/kizitonwose/calendarview/ui/DayHolder;

    invoke-direct {v9, p1}, Lcom/kizitonwose/calendarview/ui/DayHolder;-><init>(Lcom/kizitonwose/calendarview/ui/DayConfig;)V

    .end local v7    # "it":I
    .end local v8    # "$i$a$-map-CalendarAdapter$createDayHolders$1":I
    invoke-interface {v2, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 350
    .end local v6    # "item$iv$iv":I
    goto :goto_1d

    .line 352
    :cond_35
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$mapTo":I
    check-cast v2, Ljava/util/List;

    .line 349
    nop

    .line 146
    .end local v0    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$map":I
    return-object v2
.end method

.method private final findFirstVisibleMonthPosition()I
    .registers 2

    .line 286
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->findVisibleMonthPosition(Z)I

    move-result v0

    return v0
.end method

.method private final findLastVisibleMonthPosition()I
    .registers 2

    .line 288
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->findVisibleMonthPosition(Z)I

    move-result v0

    return v0
.end method

.method private final findVisibleDay(Z)Lcom/kizitonwose/calendarview/model/CalendarDay;
    .registers 15
    .param p1, "isFirst"    # Z

    .line 324
    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->findFirstVisibleMonthPosition()I

    move-result v0

    goto :goto_b

    :cond_7
    invoke-direct {p0}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->findLastVisibleMonthPosition()I

    move-result v0

    .line 325
    .local v0, "visibleIndex":I
    :goto_b
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_10

    return-object v2

    .line 327
    :cond_10
    invoke-direct {p0}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->getLayoutManager()Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_8a

    const-string v3, "layoutManager.findViewBy\u2026ibleIndex) ?: return null"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    .local v1, "visibleItemView":Landroid/view/View;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 329
    .local v3, "monthRect":Landroid/graphics/Rect;
    invoke-virtual {v1, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 331
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 332
    .local v4, "dayRect":Landroid/graphics/Rect;
    nop

    .line 334
    nop

    .line 332
    nop

    .line 333
    nop

    .line 332
    invoke-direct {p0}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->getMonths()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kizitonwose/calendarview/model/CalendarMonth;

    invoke-virtual {v5}, Lcom/kizitonwose/calendarview/model/CalendarMonth;->getWeekDays()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->flatten(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    .line 333
    nop

    .line 348
    .local v5, "$this$run":Ljava/util/List;
    const/4 v6, 0x0

    .line 333
    .local v6, "$i$a$-run-CalendarAdapter$findVisibleDay$1":I
    if-eqz p1, :cond_49

    goto :goto_51

    :cond_49
    move-object v7, v5

    check-cast v7, Ljava/lang/Iterable;

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v7

    move-object v5, v7

    .end local v5    # "$this$run":Ljava/util/List;
    .end local v6    # "$i$a$-run-CalendarAdapter$findVisibleDay$1":I
    :goto_51
    check-cast v5, Ljava/lang/Iterable;

    .line 334
    nop

    .local v5, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 386
    .local v6, "$i$f$firstOrNull":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_59
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_86

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "element$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Lcom/kizitonwose/calendarview/model/CalendarDay;

    .local v9, "it":Lcom/kizitonwose/calendarview/model/CalendarDay;
    const/4 v10, 0x0

    .line 335
    .local v10, "$i$a$-firstOrNull-CalendarAdapter$findVisibleDay$2":I
    invoke-virtual {v9}, Lcom/kizitonwose/calendarview/model/CalendarDay;->getDate()Ljava/time/LocalDate;

    move-result-object v11

    invoke-virtual {v11}, Ljava/time/LocalDate;->hashCode()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_81

    .line 336
    .local v11, "dayView":Landroid/view/View;
    invoke-virtual {v11, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 337
    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v12

    goto :goto_82

    .line 335
    .end local v11    # "dayView":Landroid/view/View;
    :cond_81
    const/4 v12, 0x0

    .line 337
    .end local v9    # "it":Lcom/kizitonwose/calendarview/model/CalendarDay;
    .end local v10    # "$i$a$-firstOrNull-CalendarAdapter$findVisibleDay$2":I
    :goto_82
    if-eqz v12, :cond_59

    move-object v2, v8

    goto :goto_87

    .line 387
    .end local v8    # "element$iv":Ljava/lang/Object;
    :cond_86
    nop

    .end local v5    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$firstOrNull":I
    :goto_87
    check-cast v2, Lcom/kizitonwose/calendarview/model/CalendarDay;

    .line 332
    return-object v2

    .line 327
    .end local v1    # "visibleItemView":Landroid/view/View;
    .end local v3    # "monthRect":Landroid/graphics/Rect;
    .end local v4    # "dayRect":Landroid/graphics/Rect;
    :cond_8a
    return-object v2
.end method

.method private final findVisibleMonthPosition(Z)I
    .registers 8
    .param p1, "isFirst"    # Z

    .line 291
    nop

    .line 292
    invoke-direct {p0}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->getLayoutManager()Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;

    move-result-object v0

    if-eqz p1, :cond_c

    invoke-virtual {v0}, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    goto :goto_10

    :cond_c
    invoke-virtual {v0}, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .line 291
    :goto_10
    nop

    .line 294
    .local v0, "visibleItemPos":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_61

    .line 297
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .local v2, "rect":Landroid/graphics/Rect;
    const/4 v3, 0x0

    .line 298
    .local v3, "$i$a$-let-CalendarAdapter$findVisibleMonthPosition$visibleItemPx$1":I
    invoke-direct {p0}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->getLayoutManager()Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_60

    const-string v1, "layoutManager.findViewBy\u2026emPos) ?: return NO_INDEX"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v4

    .line 299
    .local v1, "visibleItemView":Landroid/view/View;
    invoke-virtual {v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 300
    iget-object v4, p0, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->calView:Lcom/kizitonwose/calendarview/CalendarView;

    invoke-virtual {v4}, Lcom/kizitonwose/calendarview/CalendarView;->isVertical$com_github_kizitonwose_CalendarView()Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 301
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    goto :goto_41

    .line 303
    :cond_3b
    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v5, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    .line 300
    nop

    .line 297
    .end local v1    # "visibleItemView":Landroid/view/View;
    .end local v2    # "rect":Landroid/graphics/Rect;
    .end local v3    # "$i$a$-let-CalendarAdapter$findVisibleMonthPosition$visibleItemPx$1":I
    :goto_41
    move v1, v4

    .line 311
    .local v1, "visibleItemPx":I
    const/4 v2, 0x7

    if-gt v1, v2, :cond_61

    .line 312
    if-eqz p1, :cond_4a

    add-int/lit8 v2, v0, 0x1

    goto :goto_4c

    :cond_4a
    add-int/lit8 v2, v0, -0x1

    .line 313
    .local v2, "nextItemPosition":I
    :goto_4c
    invoke-direct {p0}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->getMonths()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->getIndices(Ljava/util/Collection;)Lkotlin/ranges/IntRange;

    move-result-object v3

    invoke-virtual {v3, v2}, Lkotlin/ranges/IntRange;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 314
    move v3, v2

    goto :goto_5f

    .line 316
    :cond_5e
    move v3, v0

    .line 313
    :goto_5f
    return v3

    .line 298
    .end local v1    # "visibleItemPx":I
    .local v2, "rect":Landroid/graphics/Rect;
    .restart local v3    # "$i$a$-let-CalendarAdapter$findVisibleMonthPosition$visibleItemPx$1":I
    :cond_60
    return v1

    .line 320
    .end local v2    # "rect":Landroid/graphics/Rect;
    .end local v3    # "$i$a$-let-CalendarAdapter$findVisibleMonthPosition$visibleItemPx$1":I
    :cond_61
    return v0
.end method

.method private final getItem(I)Lcom/kizitonwose/calendarview/model/CalendarMonth;
    .registers 3
    .param p1, "position"    # I

    .line 62
    invoke-direct {p0}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->getMonths()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kizitonwose/calendarview/model/CalendarMonth;

    return-object v0
.end method

.method private final getLayoutManager()Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;
    .registers 3

    .line 276
    iget-object v0, p0, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->calView:Lcom/kizitonwose/calendarview/CalendarView;

    invoke-virtual {v0}, Lcom/kizitonwose/calendarview/CalendarView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_b

    check-cast v0, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;

    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type com.kizitonwose.calendarview.ui.CalendarLayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final getMonths()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kizitonwose/calendarview/model/CalendarMonth;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->monthConfig:Lcom/kizitonwose/calendarview/model/MonthConfig;

    invoke-virtual {v0}, Lcom/kizitonwose/calendarview/model/MonthConfig;->getMonths$com_github_kizitonwose_CalendarView()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final isAttached()Z
    .registers 3

    .line 56
    iget-object v0, p0, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->calView:Lcom/kizitonwose/calendarview/CalendarView;

    invoke-virtual {v0}, Lcom/kizitonwose/calendarview/CalendarView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method


# virtual methods
.method public final findFirstVisibleDay()Lcom/kizitonwose/calendarview/model/CalendarDay;
    .registers 2

    .line 282
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->findVisibleDay(Z)Lcom/kizitonwose/calendarview/model/CalendarDay;

    move-result-object v0

    return-object v0
.end method

.method public final findFirstVisibleMonth()Lcom/kizitonwose/calendarview/model/CalendarMonth;
    .registers 3

    .line 278
    invoke-direct {p0}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->getMonths()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->findFirstVisibleMonthPosition()I

    move-result v1

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kizitonwose/calendarview/model/CalendarMonth;

    return-object v0
.end method

.method public final findLastVisibleDay()Lcom/kizitonwose/calendarview/model/CalendarDay;
    .registers 2

    .line 284
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->findVisibleDay(Z)Lcom/kizitonwose/calendarview/model/CalendarDay;

    move-result-object v0

    return-object v0
.end method

.method public final findLastVisibleMonth()Lcom/kizitonwose/calendarview/model/CalendarMonth;
    .registers 3

    .line 280
    invoke-direct {p0}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->getMonths()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->findLastVisibleMonthPosition()I

    move-result v1

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kizitonwose/calendarview/model/CalendarMonth;

    return-object v0
.end method

.method public final getAdapterPosition$com_github_kizitonwose_CalendarView(Lcom/kizitonwose/calendarview/model/CalendarDay;)I
    .registers 25
    .param p1, "day"    # Lcom/kizitonwose/calendarview/model/CalendarDay;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "day"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    iget-object v2, v0, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->monthConfig:Lcom/kizitonwose/calendarview/model/MonthConfig;

    invoke-virtual {v2}, Lcom/kizitonwose/calendarview/model/MonthConfig;->getHasBoundaries$com_github_kizitonwose_CalendarView()Z

    move-result v2

    const/4 v4, -0x1

    if-eqz v2, :cond_cd

    .line 258
    invoke-virtual/range {p1 .. p1}, Lcom/kizitonwose/calendarview/model/CalendarDay;->getPositionYearMonth$com_github_kizitonwose_CalendarView()Ljava/time/YearMonth;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->getAdapterPosition$com_github_kizitonwose_CalendarView(Ljava/time/YearMonth;)I

    move-result v2

    .line 259
    .local v2, "firstMonthIndex":I
    if-ne v2, v4, :cond_1d

    return v4

    .line 261
    :cond_1d
    invoke-direct/range {p0 .. p0}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->getMonths()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kizitonwose/calendarview/model/CalendarMonth;

    .line 262
    .local v6, "firstCalMonth":Lcom/kizitonwose/calendarview/model/CalendarMonth;
    invoke-direct/range {p0 .. p0}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->getMonths()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6}, Lcom/kizitonwose/calendarview/model/CalendarMonth;->getNumberOfSameMonth$com_github_kizitonwose_CalendarView()I

    move-result v8

    add-int/2addr v8, v2

    invoke-static {v2, v8}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/collections/CollectionsKt;->slice(Ljava/util/List;Lkotlin/ranges/IntRange;)Ljava/util/List;

    move-result-object v7

    .line 263
    .local v7, "sameMonths":Ljava/util/List;
    move-object v8, v7

    .local v8, "$this$indexOfFirst$iv":Ljava/util/List;
    const/4 v9, 0x0

    .line 366
    .local v9, "$i$f$indexOfFirst":I
    const/4 v10, 0x0

    .line 367
    .local v10, "index$iv":I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3f
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 368
    .local v12, "item$iv":Ljava/lang/Object;
    move-object v13, v12

    check-cast v13, Lcom/kizitonwose/calendarview/model/CalendarMonth;

    .local v13, "months":Lcom/kizitonwose/calendarview/model/CalendarMonth;
    const/4 v14, 0x0

    .line 264
    .local v14, "$i$a$-indexOfFirst-CalendarAdapter$getAdapterPosition$indexWithDateInSameMonth$1":I
    invoke-virtual {v13}, Lcom/kizitonwose/calendarview/model/CalendarMonth;->getWeekDays()Ljava/util/List;

    move-result-object v15

    check-cast v15, Ljava/lang/Iterable;

    .local v15, "$this$any$iv":Ljava/lang/Iterable;
    const/16 v16, 0x0

    .line 369
    .local v16, "$i$f$any":I
    instance-of v3, v15, Ljava/util/Collection;

    if-eqz v3, :cond_64

    move-object v3, v15

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_64

    const/4 v5, 0x0

    goto :goto_b6

    .line 370
    :cond_64
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_68
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_b5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    .local v17, "element$iv":Ljava/lang/Object;
    move-object/from16 v18, v17

    check-cast v18, Ljava/util/List;

    .local v18, "weeks":Ljava/util/List;
    const/16 v19, 0x0

    .line 264
    .local v19, "$i$a$-any-CalendarAdapter$getAdapterPosition$indexWithDateInSameMonth$1$1":I
    move-object/from16 v5, v18

    check-cast v5, Ljava/lang/Iterable;

    .local v5, "$this$any$iv":Ljava/lang/Iterable;
    const/16 v20, 0x0

    .line 369
    .local v20, "$i$f$any":I
    instance-of v4, v5, Ljava/util/Collection;

    if-eqz v4, :cond_8d

    move-object v4, v5

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8d

    const/4 v0, 0x0

    goto :goto_ad

    .line 370
    :cond_8d
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_91
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_ac

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    .local v21, "element$iv":Ljava/lang/Object;
    move-object/from16 v0, v21

    check-cast v0, Lcom/kizitonwose/calendarview/model/CalendarDay;

    .local v0, "it":Lcom/kizitonwose/calendarview/model/CalendarDay;
    const/16 v22, 0x0

    .line 264
    .local v22, "$i$a$-any-CalendarAdapter$getAdapterPosition$indexWithDateInSameMonth$1$1$1":I
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .end local v0    # "it":Lcom/kizitonwose/calendarview/model/CalendarDay;
    .end local v22    # "$i$a$-any-CalendarAdapter$getAdapterPosition$indexWithDateInSameMonth$1$1$1":I
    if-eqz v0, :cond_a9

    const/4 v0, 0x1

    goto :goto_ad

    :cond_a9
    move-object/from16 v0, p0

    goto :goto_91

    .line 371
    .end local v21    # "element$iv":Ljava/lang/Object;
    :cond_ac
    const/4 v0, 0x0

    .end local v5    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v18    # "weeks":Ljava/util/List;
    .end local v19    # "$i$a$-any-CalendarAdapter$getAdapterPosition$indexWithDateInSameMonth$1$1":I
    .end local v20    # "$i$f$any":I
    :goto_ad
    if-eqz v0, :cond_b1

    const/4 v5, 0x1

    goto :goto_b6

    :cond_b1
    const/4 v4, -0x1

    move-object/from16 v0, p0

    goto :goto_68

    .end local v17    # "element$iv":Ljava/lang/Object;
    :cond_b5
    const/4 v5, 0x0

    .end local v13    # "months":Lcom/kizitonwose/calendarview/model/CalendarMonth;
    .end local v14    # "$i$a$-indexOfFirst-CalendarAdapter$getAdapterPosition$indexWithDateInSameMonth$1":I
    .end local v15    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v16    # "$i$f$any":I
    :goto_b6
    if-eqz v5, :cond_b9

    .line 372
    goto :goto_c2

    .line 373
    :cond_b9
    nop

    .end local v12    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v10, v10, 0x1

    .line 367
    const/4 v4, -0x1

    move-object/from16 v0, p0

    goto/16 :goto_3f

    .line 375
    :cond_c1
    const/4 v10, -0x1

    .line 263
    .end local v8    # "$this$indexOfFirst$iv":Ljava/util/List;
    .end local v9    # "$i$f$indexOfFirst":I
    .end local v10    # "index$iv":I
    :goto_c2
    move v0, v10

    .line 267
    .local v0, "indexWithDateInSameMonth":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_c9

    move v4, v3

    goto/16 :goto_163

    :cond_c9
    add-int v4, v2, v0

    .end local v0    # "indexWithDateInSameMonth":I
    .end local v2    # "firstMonthIndex":I
    .end local v6    # "firstCalMonth":Lcom/kizitonwose/calendarview/model/CalendarMonth;
    .end local v7    # "sameMonths":Ljava/util/List;
    goto/16 :goto_163

    .line 269
    :cond_cd
    move v3, v4

    invoke-direct/range {p0 .. p0}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->getMonths()Ljava/util/List;

    move-result-object v0

    .local v0, "$this$indexOfFirst$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 376
    .local v2, "$i$f$indexOfFirst":I
    const/4 v4, 0x0

    .line 377
    .local v4, "index$iv":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_d8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_160

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 378
    .local v6, "item$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lcom/kizitonwose/calendarview/model/CalendarMonth;

    .local v7, "months":Lcom/kizitonwose/calendarview/model/CalendarMonth;
    const/4 v8, 0x0

    .line 270
    .local v8, "$i$a$-indexOfFirst-CalendarAdapter$getAdapterPosition$2":I
    invoke-virtual {v7}, Lcom/kizitonwose/calendarview/model/CalendarMonth;->getWeekDays()Ljava/util/List;

    move-result-object v9

    check-cast v9, Ljava/lang/Iterable;

    .local v9, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v10, 0x0

    .line 379
    .local v10, "$i$f$any":I
    instance-of v11, v9, Ljava/util/Collection;

    if-eqz v11, :cond_fe

    move-object v11, v9

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_fe

    move-object/from16 v18, v0

    const/4 v0, 0x0

    goto :goto_155

    .line 380
    :cond_fe
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_102
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_152

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .local v12, "element$iv":Ljava/lang/Object;
    move-object v13, v12

    check-cast v13, Ljava/util/List;

    .local v13, "weeks":Ljava/util/List;
    const/4 v14, 0x0

    .line 270
    .local v14, "$i$a$-any-CalendarAdapter$getAdapterPosition$2$1":I
    move-object v15, v13

    check-cast v15, Ljava/lang/Iterable;

    .restart local v15    # "$this$any$iv":Ljava/lang/Iterable;
    const/16 v16, 0x0

    .line 379
    .restart local v16    # "$i$f$any":I
    instance-of v3, v15, Ljava/util/Collection;

    if-eqz v3, :cond_126

    move-object v3, v15

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_126

    move-object/from16 v18, v0

    const/4 v0, 0x0

    goto :goto_14a

    .line 380
    :cond_126
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_147

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v0

    .end local v0    # "$this$indexOfFirst$iv":Ljava/util/List;
    .restart local v17    # "element$iv":Ljava/lang/Object;
    .local v18, "$this$indexOfFirst$iv":Ljava/util/List;
    move-object/from16 v0, v17

    check-cast v0, Lcom/kizitonwose/calendarview/model/CalendarDay;

    .local v0, "it":Lcom/kizitonwose/calendarview/model/CalendarDay;
    const/16 v19, 0x0

    .line 270
    .local v19, "$i$a$-any-CalendarAdapter$getAdapterPosition$2$1$1":I
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .end local v0    # "it":Lcom/kizitonwose/calendarview/model/CalendarDay;
    .end local v19    # "$i$a$-any-CalendarAdapter$getAdapterPosition$2$1$1":I
    if-eqz v0, :cond_144

    const/4 v0, 0x1

    goto :goto_14a

    :cond_144
    move-object/from16 v0, v18

    goto :goto_12a

    .line 381
    .end local v17    # "element$iv":Ljava/lang/Object;
    .end local v18    # "$this$indexOfFirst$iv":Ljava/util/List;
    .local v0, "$this$indexOfFirst$iv":Ljava/util/List;
    :cond_147
    move-object/from16 v18, v0

    .end local v0    # "$this$indexOfFirst$iv":Ljava/util/List;
    .restart local v18    # "$this$indexOfFirst$iv":Ljava/util/List;
    const/4 v0, 0x0

    .end local v13    # "weeks":Ljava/util/List;
    .end local v14    # "$i$a$-any-CalendarAdapter$getAdapterPosition$2$1":I
    .end local v15    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v16    # "$i$f$any":I
    :goto_14a
    if-eqz v0, :cond_14e

    const/4 v0, 0x1

    goto :goto_155

    :cond_14e
    move-object/from16 v0, v18

    const/4 v3, -0x1

    goto :goto_102

    .end local v12    # "element$iv":Ljava/lang/Object;
    .end local v18    # "$this$indexOfFirst$iv":Ljava/util/List;
    .restart local v0    # "$this$indexOfFirst$iv":Ljava/util/List;
    :cond_152
    move-object/from16 v18, v0

    .end local v0    # "$this$indexOfFirst$iv":Ljava/util/List;
    .restart local v18    # "$this$indexOfFirst$iv":Ljava/util/List;
    const/4 v0, 0x0

    .end local v7    # "months":Lcom/kizitonwose/calendarview/model/CalendarMonth;
    .end local v8    # "$i$a$-indexOfFirst-CalendarAdapter$getAdapterPosition$2":I
    .end local v9    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v10    # "$i$f$any":I
    :goto_155
    if-eqz v0, :cond_158

    .line 382
    goto :goto_163

    .line 383
    :cond_158
    nop

    .end local v6    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    .line 377
    move-object/from16 v0, v18

    const/4 v3, -0x1

    goto/16 :goto_d8

    .line 385
    .end local v18    # "$this$indexOfFirst$iv":Ljava/util/List;
    .restart local v0    # "$this$indexOfFirst$iv":Ljava/util/List;
    :cond_160
    move-object/from16 v18, v0

    .end local v0    # "$this$indexOfFirst$iv":Ljava/util/List;
    .restart local v18    # "$this$indexOfFirst$iv":Ljava/util/List;
    const/4 v4, -0x1

    .line 257
    .end local v2    # "$i$f$indexOfFirst":I
    .end local v4    # "index$iv":I
    .end local v18    # "$this$indexOfFirst$iv":Ljava/util/List;
    :goto_163
    return v4
.end method

.method public final getAdapterPosition$com_github_kizitonwose_CalendarView(Ljava/time/LocalDate;)I
    .registers 4
    .param p1, "date"    # Ljava/time/LocalDate;

    const-string v0, "date"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    new-instance v0, Lcom/kizitonwose/calendarview/model/CalendarDay;

    sget-object v1, Lcom/kizitonwose/calendarview/model/DayOwner;->THIS_MONTH:Lcom/kizitonwose/calendarview/model/DayOwner;

    invoke-direct {v0, p1, v1}, Lcom/kizitonwose/calendarview/model/CalendarDay;-><init>(Ljava/time/LocalDate;Lcom/kizitonwose/calendarview/model/DayOwner;)V

    invoke-virtual {p0, v0}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->getAdapterPosition$com_github_kizitonwose_CalendarView(Lcom/kizitonwose/calendarview/model/CalendarDay;)I

    move-result v0

    return v0
.end method

.method public final getAdapterPosition$com_github_kizitonwose_CalendarView(Ljava/time/YearMonth;)I
    .registers 10
    .param p1, "month"    # Ljava/time/YearMonth;

    const-string v0, "month"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    invoke-direct {p0}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->getMonths()Ljava/util/List;

    move-result-object v0

    .local v0, "$this$indexOfFirst$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 359
    .local v1, "$i$f$indexOfFirst":I
    const/4 v2, 0x0

    .line 360
    .local v2, "index$iv":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 361
    .local v4, "item$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lcom/kizitonwose/calendarview/model/CalendarMonth;

    .local v5, "it":Lcom/kizitonwose/calendarview/model/CalendarMonth;
    const/4 v6, 0x0

    .line 249
    .local v6, "$i$a$-indexOfFirst-CalendarAdapter$getAdapterPosition$1":I
    invoke-virtual {v5}, Lcom/kizitonwose/calendarview/model/CalendarMonth;->getYearMonth()Ljava/time/YearMonth;

    move-result-object v7

    invoke-static {v7, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    .end local v5    # "it":Lcom/kizitonwose/calendarview/model/CalendarMonth;
    .end local v6    # "$i$a$-indexOfFirst-CalendarAdapter$getAdapterPosition$1":I
    if-eqz v5, :cond_28

    .line 362
    goto :goto_2e

    .line 363
    :cond_28
    nop

    .end local v4    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    .line 360
    goto :goto_f

    .line 365
    :cond_2c
    const/4 v3, -0x1

    move v2, v3

    .line 249
    .end local v0    # "$this$indexOfFirst$iv":Ljava/util/List;
    .end local v1    # "$i$f$indexOfFirst":I
    .end local v2    # "index$iv":I
    :goto_2e
    return v2
.end method

.method public final getFooterViewId()I
    .registers 2

    .line 44
    iget v0, p0, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->footerViewId:I

    return v0
.end method

.method public final getHeaderViewId()I
    .registers 2

    .line 43
    iget v0, p0, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->headerViewId:I

    return v0
.end method

.method public getItemCount()I
    .registers 2

    .line 66
    invoke-direct {p0}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->getMonths()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .line 64
    invoke-direct {p0, p1}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->getItem(I)Lcom/kizitonwose/calendarview/model/CalendarMonth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kizitonwose/calendarview/model/CalendarMonth;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final getMonthConfig$com_github_kizitonwose_CalendarView()Lcom/kizitonwose/calendarview/model/MonthConfig;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->monthConfig:Lcom/kizitonwose/calendarview/model/MonthConfig;

    return-object v0
.end method

.method public final getViewConfig$com_github_kizitonwose_CalendarView()Lcom/kizitonwose/calendarview/ui/ViewConfig;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->viewConfig:Lcom/kizitonwose/calendarview/ui/ViewConfig;

    return-object v0
.end method

.method public final notifyMonthScrollListenerIfNeeded()V
    .registers 11

    .line 182
    invoke-direct {p0}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->isAttached()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 184
    :cond_7
    iget-object v0, p0, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->calView:Lcom/kizitonwose/calendarview/CalendarView;

    invoke-virtual {v0}, Lcom/kizitonwose/calendarview/CalendarView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 190
    iget-object v0, p0, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->calView:Lcom/kizitonwose/calendarview/CalendarView;

    invoke-virtual {v0}, Lcom/kizitonwose/calendarview/CalendarView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    if-eqz v0, :cond_21

    new-instance v1, Lcom/kizitonwose/calendarview/ui/CalendarAdapter$notifyMonthScrollListenerIfNeeded$1;

    invoke-direct {v1, p0}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter$notifyMonthScrollListenerIfNeeded$1;-><init>(Lcom/kizitonwose/calendarview/ui/CalendarAdapter;)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)Z

    .line 193
    :cond_21
    return-void

    .line 195
    :cond_22
    invoke-direct {p0}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->findFirstVisibleMonthPosition()I

    move-result v0

    .line 196
    .local v0, "visibleItemPos":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_14c

    .line 197
    invoke-direct {p0}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->getMonths()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kizitonwose/calendarview/model/CalendarMonth;

    .line 199
    .local v1, "visibleMonth":Lcom/kizitonwose/calendarview/model/CalendarMonth;
    iget-object v2, p0, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->visibleMonth:Lcom/kizitonwose/calendarview/model/CalendarMonth;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14c

    .line 200
    iput-object v1, p0, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->visibleMonth:Lcom/kizitonwose/calendarview/model/CalendarMonth;

    .line 201
    iget-object v2, p0, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->calView:Lcom/kizitonwose/calendarview/CalendarView;

    invoke-virtual {v2}, Lcom/kizitonwose/calendarview/CalendarView;->getMonthScrollListener()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    if-eqz v2, :cond_4b

    invoke-interface {v2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Unit;

    .line 212
    :cond_4b
    iget-object v2, p0, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->calView:Lcom/kizitonwose/calendarview/CalendarView;

    invoke-virtual {v2}, Lcom/kizitonwose/calendarview/CalendarView;->getScrollMode()Lcom/kizitonwose/calendarview/model/ScrollMode;

    move-result-object v2

    sget-object v3, Lcom/kizitonwose/calendarview/model/ScrollMode;->PAGED:Lcom/kizitonwose/calendarview/model/ScrollMode;

    if-ne v2, v3, :cond_14c

    .line 213
    iget-object v2, p0, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->calWrapsHeight:Ljava/lang/Boolean;

    const/4 v3, 0x0

    if-eqz v2, :cond_5f

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_77

    :cond_5f
    iget-object v2, p0, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->calView:Lcom/kizitonwose/calendarview/CalendarView;

    invoke-virtual {v2}, Lcom/kizitonwose/calendarview/CalendarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v4, -0x2

    if-ne v2, v4, :cond_6c

    const/4 v2, 0x1

    goto :goto_6d

    :cond_6c
    move v2, v3

    :goto_6d
    move v4, v2

    .local v4, "it":Z
    const/4 v5, 0x0

    .line 215
    .local v5, "$i$a$-also-CalendarAdapter$notifyMonthScrollListenerIfNeeded$calWrapsHeight$1":I
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->calWrapsHeight:Ljava/lang/Boolean;

    .line 216
    nop

    .line 213
    .end local v4    # "it":Z
    .end local v5    # "$i$a$-also-CalendarAdapter$notifyMonthScrollListenerIfNeeded$calWrapsHeight$1":I
    nop

    .line 217
    .local v2, "calWrapsHeight":Z
    :goto_77
    if-nez v2, :cond_7a

    return-void

    .line 218
    :cond_7a
    nop

    .line 219
    iget-object v4, p0, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->calView:Lcom/kizitonwose/calendarview/CalendarView;

    invoke-virtual {v4, v0}, Lcom/kizitonwose/calendarview/CalendarView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    instance-of v5, v4, Lcom/kizitonwose/calendarview/ui/MonthViewHolder;

    const/4 v6, 0x0

    if-nez v5, :cond_87

    move-object v4, v6

    :cond_87
    check-cast v4, Lcom/kizitonwose/calendarview/ui/MonthViewHolder;

    if-eqz v4, :cond_14b

    .line 218
    nop

    .line 220
    .local v4, "visibleVH":Lcom/kizitonwose/calendarview/ui/MonthViewHolder;
    invoke-virtual {v4}, Lcom/kizitonwose/calendarview/ui/MonthViewHolder;->getHeaderView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_9b

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_9c

    :cond_9b
    move-object v5, v6

    .local v5, "$this$orZero$iv":Ljava/lang/Integer;
    :goto_9c
    const/4 v7, 0x0

    .line 355
    .local v7, "$i$f$orZero":I
    if-eqz v5, :cond_a4

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_a5

    :cond_a4
    move v8, v3

    .line 221
    .end local v5    # "$this$orZero$iv":Ljava/lang/Integer;
    .end local v7    # "$i$f$orZero":I
    :goto_a5
    invoke-virtual {v4}, Lcom/kizitonwose/calendarview/ui/MonthViewHolder;->getHeaderView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_b4

    invoke-static {v5}, Lcom/kizitonwose/calendarview/utils/ExtensionsKt;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_b5

    :cond_b4
    move-object v5, v6

    .restart local v5    # "$this$orZero$iv":Ljava/lang/Integer;
    :goto_b5
    const/4 v7, 0x0

    .line 356
    .restart local v7    # "$i$f$orZero":I
    if-eqz v5, :cond_bd

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_be

    :cond_bd
    move v9, v3

    .line 220
    .end local v5    # "$this$orZero$iv":Ljava/lang/Integer;
    .end local v7    # "$i$f$orZero":I
    :goto_be
    add-int/2addr v8, v9

    .line 225
    invoke-virtual {v1}, Lcom/kizitonwose/calendarview/model/CalendarMonth;->getWeekDays()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget-object v7, p0, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->calView:Lcom/kizitonwose/calendarview/CalendarView;

    invoke-virtual {v7}, Lcom/kizitonwose/calendarview/CalendarView;->getDaySize()Lcom/kizitonwose/calendarview/utils/Size;

    move-result-object v7

    invoke-virtual {v7}, Lcom/kizitonwose/calendarview/utils/Size;->getHeight()I

    move-result v7

    mul-int/2addr v5, v7

    .line 221
    add-int/2addr v8, v5

    .line 226
    invoke-virtual {v4}, Lcom/kizitonwose/calendarview/ui/MonthViewHolder;->getFooterView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_e2

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_e3

    :cond_e2
    move-object v5, v6

    .restart local v5    # "$this$orZero$iv":Ljava/lang/Integer;
    :goto_e3
    const/4 v7, 0x0

    .line 357
    .restart local v7    # "$i$f$orZero":I
    if-eqz v5, :cond_eb

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_ec

    :cond_eb
    move v9, v3

    .line 225
    .end local v5    # "$this$orZero$iv":Ljava/lang/Integer;
    .end local v7    # "$i$f$orZero":I
    :goto_ec
    add-int/2addr v8, v9

    .line 227
    invoke-virtual {v4}, Lcom/kizitonwose/calendarview/ui/MonthViewHolder;->getFooterView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_fb

    invoke-static {v5}, Lcom/kizitonwose/calendarview/utils/ExtensionsKt;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :cond_fb
    move-object v5, v6

    .restart local v5    # "$this$orZero$iv":Ljava/lang/Integer;
    const/4 v6, 0x0

    .line 358
    .local v6, "$i$f$orZero":I
    if-eqz v5, :cond_104

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_105

    :cond_104
    move v7, v3

    .line 226
    .end local v5    # "$this$orZero$iv":Ljava/lang/Integer;
    .end local v6    # "$i$f$orZero":I
    :goto_105
    add-int/2addr v8, v7

    .line 220
    move v5, v8

    .line 228
    .local v5, "newHeight":I
    iget-object v6, p0, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->calView:Lcom/kizitonwose/calendarview/CalendarView;

    invoke-virtual {v6}, Lcom/kizitonwose/calendarview/CalendarView;->getHeight()I

    move-result v6

    if-eq v6, v5, :cond_13e

    .line 229
    iget-object v6, p0, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->calView:Lcom/kizitonwose/calendarview/CalendarView;

    invoke-virtual {v6}, Lcom/kizitonwose/calendarview/CalendarView;->getHeight()I

    move-result v6

    filled-new-array {v6, v5}, [I

    move-result-object v6

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v6

    .local v6, "$this$apply":Landroid/animation/ValueAnimator;
    const/4 v7, 0x0

    .line 231
    .local v7, "$i$a$-apply-CalendarAdapter$notifyMonthScrollListenerIfNeeded$2":I
    iget-boolean v8, p0, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->initialLayout:Z

    if-eqz v8, :cond_125

    const-wide/16 v8, 0x0

    goto :goto_12c

    :cond_125
    iget-object v8, p0, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->calView:Lcom/kizitonwose/calendarview/CalendarView;

    invoke-virtual {v8}, Lcom/kizitonwose/calendarview/CalendarView;->getWrappedPageHeightAnimationDuration()I

    move-result v8

    int-to-long v8, v8

    :goto_12c
    invoke-virtual {v6, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 232
    new-instance v8, Lcom/kizitonwose/calendarview/ui/CalendarAdapter$notifyMonthScrollListenerIfNeeded$$inlined$apply$lambda$1;

    invoke-direct {v8, p0, v4}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter$notifyMonthScrollListenerIfNeeded$$inlined$apply$lambda$1;-><init>(Lcom/kizitonwose/calendarview/ui/CalendarAdapter;Lcom/kizitonwose/calendarview/ui/MonthViewHolder;)V

    check-cast v8, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v6, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 236
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    .line 237
    nop

    .line 229
    .end local v6    # "$this$apply":Landroid/animation/ValueAnimator;
    .end local v7    # "$i$a$-apply-CalendarAdapter$notifyMonthScrollListenerIfNeeded$2":I
    goto :goto_143

    .line 240
    :cond_13e
    iget-object v6, v4, Lcom/kizitonwose/calendarview/ui/MonthViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->requestLayout()V

    .line 241
    :goto_143
    nop

    .line 242
    iget-boolean v6, p0, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->initialLayout:Z

    if-eqz v6, :cond_14c

    iput-boolean v3, p0, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->initialLayout:Z

    goto :goto_14c

    .line 219
    .end local v4    # "visibleVH":Lcom/kizitonwose/calendarview/ui/MonthViewHolder;
    .end local v5    # "newHeight":I
    :cond_14b
    return-void

    .line 246
    .end local v1    # "visibleMonth":Lcom/kizitonwose/calendarview/model/CalendarMonth;
    .end local v2    # "calWrapsHeight":Z
    :cond_14c
    :goto_14c
    return-void
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 4
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->calView:Lcom/kizitonwose/calendarview/CalendarView;

    new-instance v1, Lcom/kizitonwose/calendarview/ui/CalendarAdapter$onAttachedToRecyclerView$1;

    invoke-direct {v1, p0}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter$onAttachedToRecyclerView$1;-><init>(Lcom/kizitonwose/calendarview/ui/CalendarAdapter;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/kizitonwose/calendarview/CalendarView;->post(Ljava/lang/Runnable;)Z

    .line 60
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 32
    check-cast p1, Lcom/kizitonwose/calendarview/ui/MonthViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->onBindViewHolder(Lcom/kizitonwose/calendarview/ui/MonthViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .registers 4

    .line 32
    check-cast p1, Lcom/kizitonwose/calendarview/ui/MonthViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->onBindViewHolder(Lcom/kizitonwose/calendarview/ui/MonthViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/kizitonwose/calendarview/ui/MonthViewHolder;I)V
    .registers 4
    .param p1, "holder"    # Lcom/kizitonwose/calendarview/ui/MonthViewHolder;
    .param p2, "position"    # I

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    invoke-direct {p0, p2}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->getItem(I)Lcom/kizitonwose/calendarview/model/CalendarMonth;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kizitonwose/calendarview/ui/MonthViewHolder;->bindMonth(Lcom/kizitonwose/calendarview/model/CalendarMonth;)V

    .line 160
    return-void
.end method

.method public onBindViewHolder(Lcom/kizitonwose/calendarview/ui/MonthViewHolder;ILjava/util/List;)V
    .registers 11
    .param p1, "holder"    # Lcom/kizitonwose/calendarview/ui/MonthViewHolder;
    .param p2, "position"    # I
    .param p3, "payloads"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kizitonwose/calendarview/ui/MonthViewHolder;",
            "I",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 150
    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-super {p0, v0, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    goto :goto_3e

    .line 152
    :cond_17
    move-object v0, p3

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 353
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    .local v4, "it":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 153
    .local v5, "$i$a$-forEach-CalendarAdapter$onBindViewHolder$1":I
    if-eqz v4, :cond_35

    move-object v6, v4

    check-cast v6, Lcom/kizitonwose/calendarview/model/CalendarDay;

    invoke-virtual {p1, v6}, Lcom/kizitonwose/calendarview/ui/MonthViewHolder;->reloadDay(Lcom/kizitonwose/calendarview/model/CalendarDay;)V

    .line 154
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    .end local v4    # "it":Ljava/lang/Object;
    .end local v5    # "$i$a$-forEach-CalendarAdapter$onBindViewHolder$1":I
    goto :goto_1f

    .line 153
    .restart local v3    # "element$iv":Ljava/lang/Object;
    .restart local v4    # "it":Ljava/lang/Object;
    .restart local v5    # "$i$a$-forEach-CalendarAdapter$onBindViewHolder$1":I
    :cond_35
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v6, "null cannot be cast to non-null type com.kizitonwose.calendarview.model.CalendarDay"

    invoke-direct {v2, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 354
    .end local v3    # "element$iv":Ljava/lang/Object;
    .end local v4    # "it":Ljava/lang/Object;
    .end local v5    # "$i$a$-forEach-CalendarAdapter$onBindViewHolder$1":I
    :cond_3d
    nop

    .line 155
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    :goto_3e
    nop

    .line 156
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/kizitonwose/calendarview/ui/MonthViewHolder;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/kizitonwose/calendarview/ui/MonthViewHolder;
    .registers 22
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    move-object/from16 v6, p0

    const-string v0, "parent"

    move-object/from16 v7, p1

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 70
    .local v8, "context":Landroid/content/Context;
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v1, v0

    .local v1, "$this$apply":Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    .line 71
    .local v2, "$i$a$-apply-CalendarAdapter$onCreateViewHolder$rootLayout$1":I
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 72
    nop

    .line 70
    .end local v1    # "$this$apply":Landroid/widget/LinearLayout;
    .end local v2    # "$i$a$-apply-CalendarAdapter$onCreateViewHolder$rootLayout$1":I
    move-object v9, v0

    .line 74
    .local v9, "rootLayout":Landroid/widget/LinearLayout;
    iget-object v0, v6, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->viewConfig:Lcom/kizitonwose/calendarview/ui/ViewConfig;

    invoke-virtual {v0}, Lcom/kizitonwose/calendarview/ui/ViewConfig;->getMonthHeaderRes()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v0, :cond_49

    .line 75
    move-object v0, v9

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v10, v6, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->viewConfig:Lcom/kizitonwose/calendarview/ui/ViewConfig;

    invoke-virtual {v10}, Lcom/kizitonwose/calendarview/ui/ViewConfig;->getMonthHeaderRes()I

    move-result v10

    invoke-static {v0, v10, v5, v4, v2}, Lcom/kizitonwose/calendarview/utils/ExtensionsKt;->inflate$default(Landroid/view/ViewGroup;IZILjava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 77
    .local v0, "monthHeaderView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v10

    if-ne v10, v1, :cond_3f

    .line 78
    iget v10, v6, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->headerViewId:I

    invoke-virtual {v0, v10}, Landroid/view/View;->setId(I)V

    goto :goto_45

    .line 80
    :cond_3f
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v10

    iput v10, v6, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->headerViewId:I

    .line 81
    :goto_45
    nop

    .line 82
    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 86
    .end local v0    # "monthHeaderView":Landroid/view/View;
    :cond_49
    new-instance v0, Lcom/kizitonwose/calendarview/ui/DayConfig;

    .line 87
    iget-object v10, v6, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->calView:Lcom/kizitonwose/calendarview/CalendarView;

    invoke-virtual {v10}, Lcom/kizitonwose/calendarview/CalendarView;->getDaySize()Lcom/kizitonwose/calendarview/utils/Size;

    move-result-object v10

    iget-object v11, v6, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->viewConfig:Lcom/kizitonwose/calendarview/ui/ViewConfig;

    invoke-virtual {v11}, Lcom/kizitonwose/calendarview/ui/ViewConfig;->getDayViewRes()I

    move-result v11

    .line 88
    iget-object v12, v6, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->calView:Lcom/kizitonwose/calendarview/CalendarView;

    invoke-virtual {v12}, Lcom/kizitonwose/calendarview/CalendarView;->getDayBinder()Lcom/kizitonwose/calendarview/ui/DayBinder;

    move-result-object v12

    if-eqz v12, :cond_169

    .line 86
    invoke-direct {v0, v10, v11, v12}, Lcom/kizitonwose/calendarview/ui/DayConfig;-><init>(Lcom/kizitonwose/calendarview/utils/Size;ILcom/kizitonwose/calendarview/ui/DayBinder;)V

    move-object v10, v0

    .line 91
    .local v10, "dayConfig":Lcom/kizitonwose/calendarview/ui/DayConfig;
    nop

    .line 93
    nop

    .line 91
    nop

    .line 92
    nop

    .line 91
    new-instance v0, Lkotlin/ranges/IntRange;

    const/4 v11, 0x6

    invoke-direct {v0, v3, v11}, Lkotlin/ranges/IntRange;-><init>(II)V

    check-cast v0, Ljava/lang/Iterable;

    .line 92
    nop

    .local v0, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v11, 0x0

    .line 342
    .local v11, "$i$f$map":I
    new-instance v12, Ljava/util/ArrayList;

    const/16 v13, 0xa

    invoke-static {v0, v13}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v12, Ljava/util/Collection;

    .local v12, "destination$iv$iv":Ljava/util/Collection;
    move-object v13, v0

    .local v13, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v14, 0x0

    .line 343
    .local v14, "$i$f$mapTo":I
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_84
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_a5

    move-object/from16 v16, v15

    check-cast v16, Lkotlin/collections/IntIterator;

    invoke-virtual/range {v16 .. v16}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v16

    .line 344
    .local v16, "item$iv$iv":I
    move/from16 v17, v16

    .local v17, "it":I
    const/16 v18, 0x0

    .line 92
    .local v18, "$i$a$-map-CalendarAdapter$onCreateViewHolder$weekHolders$1":I
    new-instance v3, Lcom/kizitonwose/calendarview/ui/WeekHolder;

    invoke-direct {v6, v10}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->createDayHolders(Lcom/kizitonwose/calendarview/ui/DayConfig;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/kizitonwose/calendarview/ui/WeekHolder;-><init>(Ljava/util/List;)V

    .end local v17    # "it":I
    .end local v18    # "$i$a$-map-CalendarAdapter$onCreateViewHolder$weekHolders$1":I
    invoke-interface {v12, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 343
    .end local v16    # "item$iv$iv":I
    const/4 v1, -0x1

    const/4 v3, 0x1

    goto :goto_84

    .line 345
    :cond_a5
    nop

    .end local v12    # "destination$iv$iv":Ljava/util/Collection;
    .end local v13    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v14    # "$i$f$mapTo":I
    move-object v1, v12

    check-cast v1, Ljava/util/List;

    .line 342
    nop

    .end local v0    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v11    # "$i$f$map":I
    check-cast v1, Ljava/lang/Iterable;

    .line 93
    move-object v0, v1

    .local v0, "$this$onEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 346
    .local v1, "$i$f$onEach":I
    move-object v3, v0

    .line 347
    .local v3, "$this$apply$iv":Ljava/lang/Iterable;
    const/4 v11, 0x0

    .line 346
    .local v11, "$i$a$-apply-CollectionsKt___CollectionsKt$onEach$1$iv":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_b4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_cb

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .local v13, "element$iv":Ljava/lang/Object;
    move-object v14, v13

    check-cast v14, Lcom/kizitonwose/calendarview/ui/WeekHolder;

    .local v14, "weekHolder":Lcom/kizitonwose/calendarview/ui/WeekHolder;
    const/4 v15, 0x0

    .line 93
    .local v15, "$i$a$-onEach-CalendarAdapter$onCreateViewHolder$weekHolders$2":I
    invoke-virtual {v14, v9}, Lcom/kizitonwose/calendarview/ui/WeekHolder;->inflateWeekView(Landroid/widget/LinearLayout;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v2, 0x0

    .end local v13    # "element$iv":Ljava/lang/Object;
    .end local v14    # "weekHolder":Lcom/kizitonwose/calendarview/ui/WeekHolder;
    .end local v15    # "$i$a$-onEach-CalendarAdapter$onCreateViewHolder$weekHolders$2":I
    goto :goto_b4

    .line 91
    .end local v0    # "$this$onEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$onEach":I
    .end local v3    # "$this$apply$iv":Ljava/lang/Iterable;
    .end local v11    # "$i$a$-apply-CollectionsKt___CollectionsKt$onEach$1$iv":I
    :cond_cb
    move-object v11, v0

    check-cast v11, Ljava/util/List;

    .line 95
    .local v11, "weekHolders":Ljava/util/List;
    iget-object v0, v6, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->viewConfig:Lcom/kizitonwose/calendarview/ui/ViewConfig;

    invoke-virtual {v0}, Lcom/kizitonwose/calendarview/ui/ViewConfig;->getMonthFooterRes()I

    move-result v0

    if-eqz v0, :cond_fb

    .line 96
    move-object v0, v9

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, v6, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->viewConfig:Lcom/kizitonwose/calendarview/ui/ViewConfig;

    invoke-virtual {v1}, Lcom/kizitonwose/calendarview/ui/ViewConfig;->getMonthFooterRes()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v5, v4, v2}, Lcom/kizitonwose/calendarview/utils/ExtensionsKt;->inflate$default(Landroid/view/ViewGroup;IZILjava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 98
    .local v0, "monthFooterView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_f1

    .line 99
    iget v1, v6, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->footerViewId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    goto :goto_f7

    .line 101
    :cond_f1
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    iput v1, v6, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->footerViewId:I

    .line 102
    :goto_f7
    nop

    .line 103
    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 106
    .end local v0    # "monthFooterView":Landroid/view/View;
    :cond_fb
    new-instance v0, Lcom/kizitonwose/calendarview/ui/CalendarAdapter$onCreateViewHolder$1;

    invoke-direct {v0, v6}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter$onCreateViewHolder$1;-><init>(Lcom/kizitonwose/calendarview/ui/CalendarAdapter;)V

    move-object v12, v0

    .line 126
    .local v12, "$fun$setupRoot$1":Lcom/kizitonwose/calendarview/ui/CalendarAdapter$onCreateViewHolder$1;
    iget-object v0, v6, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->viewConfig:Lcom/kizitonwose/calendarview/ui/ViewConfig;

    invoke-virtual {v0}, Lcom/kizitonwose/calendarview/ui/ViewConfig;->getMonthViewClass()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_142

    .local v0, "it":Ljava/lang/String;
    const/4 v1, 0x0

    .line 127
    .local v1, "$i$a$-let-CalendarAdapter$onCreateViewHolder$userRoot$1":I
    nop

    .line 129
    nop

    .line 127
    nop

    .line 128
    nop

    .line 127
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    .line 128
    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 129
    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_13a

    check-cast v2, Landroid/view/ViewGroup;

    .line 127
    nop

    .line 130
    .local v2, "customLayout":Landroid/view/ViewGroup;
    move-object v3, v2

    .local v3, "$this$apply":Landroid/view/ViewGroup;
    const/4 v4, 0x0

    .line 131
    .local v4, "$i$a$-apply-CalendarAdapter$onCreateViewHolder$userRoot$1$1":I
    invoke-virtual {v12, v3}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter$onCreateViewHolder$1;->invoke(Landroid/view/ViewGroup;)V

    .line 132
    move-object v5, v9

    check-cast v5, Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 133
    nop

    .line 130
    .end local v3    # "$this$apply":Landroid/view/ViewGroup;
    .end local v4    # "$i$a$-apply-CalendarAdapter$onCreateViewHolder$userRoot$1$1":I
    nop

    .line 126
    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-let-CalendarAdapter$onCreateViewHolder$userRoot$1":I
    .end local v2    # "customLayout":Landroid/view/ViewGroup;
    if-eqz v2, :cond_142

    goto :goto_14e

    .line 129
    .restart local v0    # "it":Ljava/lang/String;
    .restart local v1    # "$i$a$-let-CalendarAdapter$onCreateViewHolder$userRoot$1":I
    :cond_13a
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 134
    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-let-CalendarAdapter$onCreateViewHolder$userRoot$1":I
    :cond_142
    move-object v0, v9

    .line 348
    .local v0, "$this$apply":Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    .line 134
    .local v1, "$i$a$-apply-CalendarAdapter$onCreateViewHolder$userRoot$2":I
    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v12, v2}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter$onCreateViewHolder$1;->invoke(Landroid/view/ViewGroup;)V

    .end local v0    # "$this$apply":Landroid/widget/LinearLayout;
    .end local v1    # "$i$a$-apply-CalendarAdapter$onCreateViewHolder$userRoot$2":I
    move-object v0, v9

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    .line 126
    :goto_14e
    nop

    .line 136
    .local v2, "userRoot":Landroid/view/ViewGroup;
    nop

    .line 137
    new-instance v13, Lcom/kizitonwose/calendarview/ui/MonthViewHolder;

    .line 138
    nop

    .line 139
    nop

    .line 140
    nop

    .line 141
    iget-object v0, v6, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->calView:Lcom/kizitonwose/calendarview/CalendarView;

    invoke-virtual {v0}, Lcom/kizitonwose/calendarview/CalendarView;->getMonthHeaderBinder()Lcom/kizitonwose/calendarview/ui/MonthHeaderFooterBinder;

    move-result-object v4

    .line 142
    iget-object v0, v6, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->calView:Lcom/kizitonwose/calendarview/CalendarView;

    invoke-virtual {v0}, Lcom/kizitonwose/calendarview/CalendarView;->getMonthFooterBinder()Lcom/kizitonwose/calendarview/ui/MonthHeaderFooterBinder;

    move-result-object v5

    .line 137
    move-object v0, v13

    move-object/from16 v1, p0

    move-object v3, v11

    invoke-direct/range {v0 .. v5}, Lcom/kizitonwose/calendarview/ui/MonthViewHolder;-><init>(Lcom/kizitonwose/calendarview/ui/CalendarAdapter;Landroid/view/ViewGroup;Ljava/util/List;Lcom/kizitonwose/calendarview/ui/MonthHeaderFooterBinder;Lcom/kizitonwose/calendarview/ui/MonthHeaderFooterBinder;)V

    return-object v13

    .line 88
    .end local v2    # "userRoot":Landroid/view/ViewGroup;
    .end local v10    # "dayConfig":Lcom/kizitonwose/calendarview/ui/DayConfig;
    .end local v11    # "weekHolders":Ljava/util/List;
    .end local v12    # "$fun$setupRoot$1":Lcom/kizitonwose/calendarview/ui/CalendarAdapter$onCreateViewHolder$1;
    :cond_169
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type com.kizitonwose.calendarview.ui.DayBinder<com.kizitonwose.calendarview.ui.ViewContainer>"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final reloadCalendar()V
    .registers 3

    .line 174
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->getItemCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->notifyItemRangeChanged(II)V

    .line 175
    return-void
.end method

.method public final reloadDay(Lcom/kizitonwose/calendarview/model/CalendarDay;)V
    .registers 4
    .param p1, "day"    # Lcom/kizitonwose/calendarview/model/CalendarDay;

    const-string v0, "day"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0, p1}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->getAdapterPosition$com_github_kizitonwose_CalendarView(Lcom/kizitonwose/calendarview/model/CalendarDay;)I

    move-result v0

    .line 164
    .local v0, "position":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    .line 165
    invoke-virtual {p0, v0, p1}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 167
    :cond_f
    return-void
.end method

.method public final reloadMonth(Ljava/time/YearMonth;)V
    .registers 3
    .param p1, "month"    # Ljava/time/YearMonth;

    const-string v0, "month"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0, p1}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->getAdapterPosition$com_github_kizitonwose_CalendarView(Ljava/time/YearMonth;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->notifyItemChanged(I)V

    .line 171
    return-void
.end method

.method public final setFooterViewId(I)V
    .registers 2
    .param p1, "<set-?>"    # I

    .line 44
    iput p1, p0, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->footerViewId:I

    return-void
.end method

.method public final setHeaderViewId(I)V
    .registers 2
    .param p1, "<set-?>"    # I

    .line 43
    iput p1, p0, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->headerViewId:I

    return-void
.end method

.method public final setMonthConfig$com_github_kizitonwose_CalendarView(Lcom/kizitonwose/calendarview/model/MonthConfig;)V
    .registers 3
    .param p1, "<set-?>"    # Lcom/kizitonwose/calendarview/model/MonthConfig;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->monthConfig:Lcom/kizitonwose/calendarview/model/MonthConfig;

    return-void
.end method

.method public final setViewConfig$com_github_kizitonwose_CalendarView(Lcom/kizitonwose/calendarview/ui/ViewConfig;)V
    .registers 3
    .param p1, "<set-?>"    # Lcom/kizitonwose/calendarview/ui/ViewConfig;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->viewConfig:Lcom/kizitonwose/calendarview/ui/ViewConfig;

    return-void
.end method
