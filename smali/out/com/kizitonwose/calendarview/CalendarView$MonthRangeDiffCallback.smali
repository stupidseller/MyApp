.class final Lcom/kizitonwose/calendarview/CalendarView$MonthRangeDiffCallback;
.super Landroidx/recyclerview/widget/DiffUtil$Callback;
.source "CalendarView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kizitonwose/calendarview/CalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MonthRangeDiffCallback"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u00020\u0001B!\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0002\u0010\u0006J\u0018\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0018\u0010\u000c\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0008\u0010\r\u001a\u00020\nH\u0016J\u0008\u0010\u000e\u001a\u00020\nH\u0016R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/kizitonwose/calendarview/CalendarView$MonthRangeDiffCallback;",
        "Landroidx/recyclerview/widget/DiffUtil$Callback;",
        "oldItems",
        "",
        "Lcom/kizitonwose/calendarview/model/CalendarMonth;",
        "newItems",
        "(Ljava/util/List;Ljava/util/List;)V",
        "areContentsTheSame",
        "",
        "oldItemPosition",
        "",
        "newItemPosition",
        "areItemsTheSame",
        "getNewListSize",
        "getOldListSize",
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
.field private final newItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kizitonwose/calendarview/model/CalendarMonth;",
            ">;"
        }
    .end annotation
.end field

.field private final oldItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kizitonwose/calendarview/model/CalendarMonth;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .param p1, "oldItems"    # Ljava/util/List;
    .param p2, "newItems"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kizitonwose/calendarview/model/CalendarMonth;",
            ">;",
            "Ljava/util/List<",
            "Lcom/kizitonwose/calendarview/model/CalendarMonth;",
            ">;)V"
        }
    .end annotation

    const-string v0, "oldItems"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItems"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 781
    nop

    .line 784
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;-><init>()V

    iput-object p1, p0, Lcom/kizitonwose/calendarview/CalendarView$MonthRangeDiffCallback;->oldItems:Ljava/util/List;

    iput-object p2, p0, Lcom/kizitonwose/calendarview/CalendarView$MonthRangeDiffCallback;->newItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .registers 4
    .param p1, "oldItemPosition"    # I
    .param p2, "newItemPosition"    # I

    .line 794
    invoke-virtual {p0, p1, p2}, Lcom/kizitonwose/calendarview/CalendarView$MonthRangeDiffCallback;->areItemsTheSame(II)Z

    move-result v0

    return v0
.end method

.method public areItemsTheSame(II)Z
    .registers 5
    .param p1, "oldItemPosition"    # I
    .param p2, "newItemPosition"    # I

    .line 791
    iget-object v0, p0, Lcom/kizitonwose/calendarview/CalendarView$MonthRangeDiffCallback;->oldItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kizitonwose/calendarview/model/CalendarMonth;

    iget-object v1, p0, Lcom/kizitonwose/calendarview/CalendarView$MonthRangeDiffCallback;->newItems:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kizitonwose/calendarview/model/CalendarMonth;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getNewListSize()I
    .registers 2

    .line 788
    iget-object v0, p0, Lcom/kizitonwose/calendarview/CalendarView$MonthRangeDiffCallback;->newItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOldListSize()I
    .registers 2

    .line 786
    iget-object v0, p0, Lcom/kizitonwose/calendarview/CalendarView$MonthRangeDiffCallback;->oldItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
