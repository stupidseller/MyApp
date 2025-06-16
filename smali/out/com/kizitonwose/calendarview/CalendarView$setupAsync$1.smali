.class final Lcom/kizitonwose/calendarview/CalendarView$setupAsync$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CalendarView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kizitonwose/calendarview/CalendarView;->setupAsync(Ljava/time/YearMonth;Ljava/time/YearMonth;Ljava/time/DayOfWeek;Lkotlin/jvm/functions/Function0;)V
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
    c = "com.kizitonwose.calendarview.CalendarView$setupAsync$1"
    f = "CalendarView.kt"
    i = {}
    l = {
        0x2c1
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $completion:Lkotlin/jvm/functions/Function0;

.field final synthetic $endMonth:Ljava/time/YearMonth;

.field final synthetic $firstDayOfWeek:Ljava/time/DayOfWeek;

.field final synthetic $startMonth:Ljava/time/YearMonth;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/kizitonwose/calendarview/CalendarView;


# direct methods
.method constructor <init>(Lcom/kizitonwose/calendarview/CalendarView;Ljava/time/YearMonth;Ljava/time/YearMonth;Ljava/time/DayOfWeek;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V
    .registers 7

    iput-object p1, p0, Lcom/kizitonwose/calendarview/CalendarView$setupAsync$1;->this$0:Lcom/kizitonwose/calendarview/CalendarView;

    iput-object p2, p0, Lcom/kizitonwose/calendarview/CalendarView$setupAsync$1;->$startMonth:Ljava/time/YearMonth;

    iput-object p3, p0, Lcom/kizitonwose/calendarview/CalendarView$setupAsync$1;->$endMonth:Ljava/time/YearMonth;

    iput-object p4, p0, Lcom/kizitonwose/calendarview/CalendarView$setupAsync$1;->$firstDayOfWeek:Ljava/time/DayOfWeek;

    iput-object p5, p0, Lcom/kizitonwose/calendarview/CalendarView$setupAsync$1;->$completion:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 11
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

    new-instance v0, Lcom/kizitonwose/calendarview/CalendarView$setupAsync$1;

    iget-object v2, p0, Lcom/kizitonwose/calendarview/CalendarView$setupAsync$1;->this$0:Lcom/kizitonwose/calendarview/CalendarView;

    iget-object v3, p0, Lcom/kizitonwose/calendarview/CalendarView$setupAsync$1;->$startMonth:Ljava/time/YearMonth;

    iget-object v4, p0, Lcom/kizitonwose/calendarview/CalendarView$setupAsync$1;->$endMonth:Ljava/time/YearMonth;

    iget-object v5, p0, Lcom/kizitonwose/calendarview/CalendarView$setupAsync$1;->$firstDayOfWeek:Ljava/time/DayOfWeek;

    iget-object v6, p0, Lcom/kizitonwose/calendarview/CalendarView$setupAsync$1;->$completion:Lkotlin/jvm/functions/Function0;

    move-object v1, v0

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/kizitonwose/calendarview/CalendarView$setupAsync$1;-><init>(Lcom/kizitonwose/calendarview/CalendarView;Ljava/time/YearMonth;Ljava/time/YearMonth;Ljava/time/DayOfWeek;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/kizitonwose/calendarview/CalendarView$setupAsync$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/kizitonwose/calendarview/CalendarView$setupAsync$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/kizitonwose/calendarview/CalendarView$setupAsync$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/kizitonwose/calendarview/CalendarView$setupAsync$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 18

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 700
    move-object/from16 v1, p0

    iget v2, v1, Lcom/kizitonwose/calendarview/CalendarView$setupAsync$1;->label:I

    packed-switch v2, :pswitch_data_76

    .line 709
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 700
    :pswitch_13
    move-object/from16 v0, p0

    .local v0, "this":Lcom/kizitonwose/calendarview/CalendarView$setupAsync$1;
    move-object/from16 v2, p1

    .local v2, "$result":Ljava/lang/Object;
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_72

    .end local v0    # "this":Lcom/kizitonwose/calendarview/CalendarView$setupAsync$1;
    .end local v2    # "$result":Ljava/lang/Object;
    :pswitch_1b
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .local v2, "this":Lcom/kizitonwose/calendarview/CalendarView$setupAsync$1;
    move-object/from16 v3, p1

    .local v3, "$result":Ljava/lang/Object;
    iget-object v4, v2, Lcom/kizitonwose/calendarview/CalendarView$setupAsync$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    .line 701
    .local v4, "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v15, Lcom/kizitonwose/calendarview/model/MonthConfig;

    move-object v14, v5

    .line 702
    .local v14, "monthConfig":Lkotlin/jvm/internal/Ref$ObjectRef;
    iget-object v6, v2, Lcom/kizitonwose/calendarview/CalendarView$setupAsync$1;->this$0:Lcom/kizitonwose/calendarview/CalendarView;

    invoke-virtual {v6}, Lcom/kizitonwose/calendarview/CalendarView;->getOutDateStyle()Lcom/kizitonwose/calendarview/model/OutDateStyle;

    move-result-object v7

    iget-object v6, v2, Lcom/kizitonwose/calendarview/CalendarView$setupAsync$1;->this$0:Lcom/kizitonwose/calendarview/CalendarView;

    invoke-virtual {v6}, Lcom/kizitonwose/calendarview/CalendarView;->getInDateStyle()Lcom/kizitonwose/calendarview/model/InDateStyle;

    move-result-object v8

    iget-object v6, v2, Lcom/kizitonwose/calendarview/CalendarView$setupAsync$1;->this$0:Lcom/kizitonwose/calendarview/CalendarView;

    invoke-virtual {v6}, Lcom/kizitonwose/calendarview/CalendarView;->getMaxRowCount()I

    move-result v9

    iget-object v10, v2, Lcom/kizitonwose/calendarview/CalendarView$setupAsync$1;->$startMonth:Ljava/time/YearMonth;

    .line 703
    iget-object v11, v2, Lcom/kizitonwose/calendarview/CalendarView$setupAsync$1;->$endMonth:Ljava/time/YearMonth;

    iget-object v12, v2, Lcom/kizitonwose/calendarview/CalendarView$setupAsync$1;->$firstDayOfWeek:Ljava/time/DayOfWeek;

    iget-object v6, v2, Lcom/kizitonwose/calendarview/CalendarView$setupAsync$1;->this$0:Lcom/kizitonwose/calendarview/CalendarView;

    invoke-virtual {v6}, Lcom/kizitonwose/calendarview/CalendarView;->getHasBoundaries()Z

    move-result v13

    invoke-static {v4}, Lcom/kizitonwose/calendarview/utils/ExtensionsKt;->getJob(Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    move-result-object v4

    .line 701
    .end local v4    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    move-object v6, v15

    move-object v1, v14

    .end local v14    # "monthConfig":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v1, "monthConfig":Lkotlin/jvm/internal/Ref$ObjectRef;
    move-object v14, v4

    invoke-direct/range {v6 .. v14}, Lcom/kizitonwose/calendarview/model/MonthConfig;-><init>(Lcom/kizitonwose/calendarview/model/OutDateStyle;Lcom/kizitonwose/calendarview/model/InDateStyle;ILjava/time/YearMonth;Ljava/time/YearMonth;Ljava/time/DayOfWeek;ZLkotlinx/coroutines/Job;)V

    iput-object v15, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 705
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v4

    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    new-instance v5, Lcom/kizitonwose/calendarview/CalendarView$setupAsync$1$1;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v1, v6}, Lcom/kizitonwose/calendarview/CalendarView$setupAsync$1$1;-><init>(Lcom/kizitonwose/calendarview/CalendarView$setupAsync$1;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x1

    iput v6, v2, Lcom/kizitonwose/calendarview/CalendarView$setupAsync$1;->label:I

    invoke-static {v4, v5, v2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "monthConfig":Lkotlin/jvm/internal/Ref$ObjectRef;
    if-ne v1, v0, :cond_70

    .line 700
    return-object v0

    .line 705
    :cond_70
    move-object v0, v2

    move-object v2, v3

    .line 709
    .end local v3    # "$result":Ljava/lang/Object;
    .restart local v0    # "this":Lcom/kizitonwose/calendarview/CalendarView$setupAsync$1;
    .local v2, "$result":Ljava/lang/Object;
    :goto_72
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    nop

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_13
    .end packed-switch
.end method
