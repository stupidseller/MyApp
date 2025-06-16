.class public final Lcom/kizitonwose/calendarview/CalendarView$scrollListenerInternal$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "CalendarView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kizitonwose/calendarview/CalendarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J \u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0007H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/kizitonwose/calendarview/CalendarView$scrollListenerInternal$1",
        "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
        "onScrollStateChanged",
        "",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "newState",
        "",
        "onScrolled",
        "dx",
        "dy",
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
.field final synthetic this$0:Lcom/kizitonwose/calendarview/CalendarView;


# direct methods
.method constructor <init>(Lcom/kizitonwose/calendarview/CalendarView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/kizitonwose/calendarview/CalendarView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 645
    iput-object p1, p0, Lcom/kizitonwose/calendarview/CalendarView$scrollListenerInternal$1;->this$0:Lcom/kizitonwose/calendarview/CalendarView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 4
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "newState"    # I

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 648
    if-nez p2, :cond_10

    .line 649
    iget-object v0, p0, Lcom/kizitonwose/calendarview/CalendarView$scrollListenerInternal$1;->this$0:Lcom/kizitonwose/calendarview/CalendarView;

    invoke-static {v0}, Lcom/kizitonwose/calendarview/CalendarView;->access$getCalendarAdapter$p(Lcom/kizitonwose/calendarview/CalendarView;)Lcom/kizitonwose/calendarview/ui/CalendarAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->notifyMonthScrollListenerIfNeeded()V

    .line 651
    :cond_10
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 5
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 646
    return-void
.end method
