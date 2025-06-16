.class final Lcom/kizitonwose/calendarview/CalendarView$updateMonthRangeAsync$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CalendarView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kizitonwose/calendarview/CalendarView;->updateMonthRangeAsync(Ljava/time/YearMonth;Ljava/time/YearMonth;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.kizitonwose.calendarview.CalendarView$updateMonthRangeAsync$1"
    f = "CalendarView.kt"
    i = {}
    l = {
        0x2f3
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $completion:Lkotlin/jvm/functions/Function0;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/kizitonwose/calendarview/CalendarView;


# direct methods
.method constructor <init>(Lcom/kizitonwose/calendarview/CalendarView;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V
    .registers 4

    iput-object p1, p0, Lcom/kizitonwose/calendarview/CalendarView$updateMonthRangeAsync$1;->this$0:Lcom/kizitonwose/calendarview/CalendarView;

    iput-object p2, p0, Lcom/kizitonwose/calendarview/CalendarView$updateMonthRangeAsync$1;->$completion:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/kizitonwose/calendarview/CalendarView$updateMonthRangeAsync$1;

    iget-object v1, p0, Lcom/kizitonwose/calendarview/CalendarView$updateMonthRangeAsync$1;->this$0:Lcom/kizitonwose/calendarview/CalendarView;

    iget-object v2, p0, Lcom/kizitonwose/calendarview/CalendarView$updateMonthRangeAsync$1;->$completion:Lkotlin/jvm/functions/Function0;

    invoke-direct {v0, v1, v2, p2}, Lcom/kizitonwose/calendarview/CalendarView$updateMonthRangeAsync$1;-><init>(Lcom/kizitonwose/calendarview/CalendarView;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/kizitonwose/calendarview/CalendarView$updateMonthRangeAsync$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/kizitonwose/calendarview/CalendarView$updateMonthRangeAsync$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/kizitonwose/calendarview/CalendarView$updateMonthRangeAsync$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/kizitonwose/calendarview/CalendarView$updateMonthRangeAsync$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 753
    iget v1, p0, Lcom/kizitonwose/calendarview/CalendarView$updateMonthRangeAsync$1;->label:I

    packed-switch v1, :pswitch_data_60

    .line 759
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 753
    :pswitch_11
    move-object v0, p0

    .local v0, "this":Lcom/kizitonwose/calendarview/CalendarView$updateMonthRangeAsync$1;
    .local p1, "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_5c

    .end local v0    # "this":Lcom/kizitonwose/calendarview/CalendarView$updateMonthRangeAsync$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_16
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .local v1, "this":Lcom/kizitonwose/calendarview/CalendarView$updateMonthRangeAsync$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lcom/kizitonwose/calendarview/CalendarView$updateMonthRangeAsync$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .line 754
    .local v2, "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v5, v1, Lcom/kizitonwose/calendarview/CalendarView$updateMonthRangeAsync$1;->this$0:Lcom/kizitonwose/calendarview/CalendarView;

    invoke-static {v2}, Lcom/kizitonwose/calendarview/utils/ExtensionsKt;->getJob(Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/kizitonwose/calendarview/CalendarView;->access$getMonthUpdateData(Lcom/kizitonwose/calendarview/CalendarView;Lkotlinx/coroutines/Job;)Lkotlin/Pair;

    move-result-object v5

    invoke-virtual {v5}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kizitonwose/calendarview/model/MonthConfig;

    iput-object v6, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {v5}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    iput-object v5, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .end local v2    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    move-object v2, v4

    .line 755
    .local v2, "diff":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v3, "config":Lkotlin/jvm/internal/Ref$ObjectRef;
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v4

    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    new-instance v5, Lcom/kizitonwose/calendarview/CalendarView$updateMonthRangeAsync$1$1;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v3, v2, v6}, Lcom/kizitonwose/calendarview/CalendarView$updateMonthRangeAsync$1$1;-><init>(Lcom/kizitonwose/calendarview/CalendarView$updateMonthRangeAsync$1;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x1

    iput v6, v1, Lcom/kizitonwose/calendarview/CalendarView$updateMonthRangeAsync$1;->label:I

    invoke-static {v4, v5, v1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "diff":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v3    # "config":Lkotlin/jvm/internal/Ref$ObjectRef;
    if-ne v2, v0, :cond_5b

    .line 753
    return-object v0

    .line 755
    :cond_5b
    move-object v0, v1

    .line 759
    .end local v1    # "this":Lcom/kizitonwose/calendarview/CalendarView$updateMonthRangeAsync$1;
    .restart local v0    # "this":Lcom/kizitonwose/calendarview/CalendarView$updateMonthRangeAsync$1;
    :goto_5c
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    nop

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_16
        :pswitch_11
    .end packed-switch
.end method
