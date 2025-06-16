.class public final Lcom/kizitonwose/calendarview/ui/CalendarAdapter$1;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "CalendarAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kizitonwose/calendarview/ui/CalendarAdapter;-><init>(Lcom/kizitonwose/calendarview/CalendarView;Lcom/kizitonwose/calendarview/ui/ViewConfig;Lcom/kizitonwose/calendarview/model/MonthConfig;)V
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
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/kizitonwose/calendarview/ui/CalendarAdapter$1",
        "Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;",
        "onChanged",
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
.field final synthetic this$0:Lcom/kizitonwose/calendarview/ui/CalendarAdapter;


# direct methods
.method constructor <init>(Lcom/kizitonwose/calendarview/ui/CalendarAdapter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/kizitonwose/calendarview/ui/CalendarAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/kizitonwose/calendarview/ui/CalendarAdapter$1;->this$0:Lcom/kizitonwose/calendarview/ui/CalendarAdapter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 3

    .line 50
    iget-object v0, p0, Lcom/kizitonwose/calendarview/ui/CalendarAdapter$1;->this$0:Lcom/kizitonwose/calendarview/ui/CalendarAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->access$setInitialLayout$p(Lcom/kizitonwose/calendarview/ui/CalendarAdapter;Z)V

    .line 51
    return-void
.end method
