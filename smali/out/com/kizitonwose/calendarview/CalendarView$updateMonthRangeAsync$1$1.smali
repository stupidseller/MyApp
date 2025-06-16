.class final Lcom/kizitonwose/calendarview/CalendarView$updateMonthRangeAsync$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CalendarView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kizitonwose/calendarview/CalendarView$updateMonthRangeAsync$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.kizitonwose.calendarview.CalendarView$updateMonthRangeAsync$1$1"
    f = "CalendarView.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $config:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic $diff:Lkotlin/jvm/internal/Ref$ObjectRef;

.field label:I

.field final synthetic this$0:Lcom/kizitonwose/calendarview/CalendarView$updateMonthRangeAsync$1;


# direct methods
.method constructor <init>(Lcom/kizitonwose/calendarview/CalendarView$updateMonthRangeAsync$1;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V
    .registers 5

    iput-object p1, p0, Lcom/kizitonwose/calendarview/CalendarView$updateMonthRangeAsync$1$1;->this$0:Lcom/kizitonwose/calendarview/CalendarView$updateMonthRangeAsync$1;

    iput-object p2, p0, Lcom/kizitonwose/calendarview/CalendarView$updateMonthRangeAsync$1$1;->$config:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcom/kizitonwose/calendarview/CalendarView$updateMonthRangeAsync$1$1;->$diff:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 7
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

    new-instance v0, Lcom/kizitonwose/calendarview/CalendarView$updateMonthRangeAsync$1$1;

    iget-object v1, p0, Lcom/kizitonwose/calendarview/CalendarView$updateMonthRangeAsync$1$1;->this$0:Lcom/kizitonwose/calendarview/CalendarView$updateMonthRangeAsync$1;

    iget-object v2, p0, Lcom/kizitonwose/calendarview/CalendarView$updateMonthRangeAsync$1$1;->$config:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, p0, Lcom/kizitonwose/calendarview/CalendarView$updateMonthRangeAsync$1$1;->$diff:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/kizitonwose/calendarview/CalendarView$updateMonthRangeAsync$1$1;-><init>(Lcom/kizitonwose/calendarview/CalendarView$updateMonthRangeAsync$1;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/kizitonwose/calendarview/CalendarView$updateMonthRangeAsync$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/kizitonwose/calendarview/CalendarView$updateMonthRangeAsync$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/kizitonwose/calendarview/CalendarView$updateMonthRangeAsync$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 755
    iget v0, p0, Lcom/kizitonwose/calendarview/CalendarView$updateMonthRangeAsync$1$1;->label:I

    packed-switch v0, :pswitch_data_36

    .line 758
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 755
    :pswitch_10
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, p0

    .line 756
    .local v0, "this":Lcom/kizitonwose/calendarview/CalendarView$updateMonthRangeAsync$1$1;
    .local p1, "$result":Ljava/lang/Object;
    iget-object v1, v0, Lcom/kizitonwose/calendarview/CalendarView$updateMonthRangeAsync$1$1;->this$0:Lcom/kizitonwose/calendarview/CalendarView$updateMonthRangeAsync$1;

    iget-object v1, v1, Lcom/kizitonwose/calendarview/CalendarView$updateMonthRangeAsync$1;->this$0:Lcom/kizitonwose/calendarview/CalendarView;

    iget-object v2, v0, Lcom/kizitonwose/calendarview/CalendarView$updateMonthRangeAsync$1$1;->$config:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcom/kizitonwose/calendarview/model/MonthConfig;

    iget-object v3, v0, Lcom/kizitonwose/calendarview/CalendarView$updateMonthRangeAsync$1$1;->$diff:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    invoke-static {v1, v2, v3}, Lcom/kizitonwose/calendarview/CalendarView;->access$finishUpdateMonthRange(Lcom/kizitonwose/calendarview/CalendarView;Lcom/kizitonwose/calendarview/model/MonthConfig;Landroidx/recyclerview/widget/DiffUtil$DiffResult;)V

    .line 757
    iget-object v1, v0, Lcom/kizitonwose/calendarview/CalendarView$updateMonthRangeAsync$1$1;->this$0:Lcom/kizitonwose/calendarview/CalendarView$updateMonthRangeAsync$1;

    iget-object v1, v1, Lcom/kizitonwose/calendarview/CalendarView$updateMonthRangeAsync$1;->$completion:Lkotlin/jvm/functions/Function0;

    if-eqz v1, :cond_33

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Unit;

    .line 758
    :cond_33
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_10
    .end packed-switch
.end method
