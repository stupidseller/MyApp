.class final synthetic Lcom/kizitonwose/calendarview/ui/DayHolder$bindDayView$1;
.super Lkotlin/jvm/internal/MutablePropertyReference0Impl;
.source "DayHolder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/kizitonwose/calendarview/ui/DayHolder;)V
    .registers 8

    const-class v2, Lcom/kizitonwose/calendarview/ui/DayHolder;

    const-string v4, "getViewContainer()Lcom/kizitonwose/calendarview/ui/ViewContainer;"

    const/4 v5, 0x0

    const-string/jumbo v3, "viewContainer"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/MutablePropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/kizitonwose/calendarview/ui/DayHolder$bindDayView$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/kizitonwose/calendarview/ui/DayHolder;

    .line 41
    invoke-static {v0}, Lcom/kizitonwose/calendarview/ui/DayHolder;->access$getViewContainer$p(Lcom/kizitonwose/calendarview/ui/DayHolder;)Lcom/kizitonwose/calendarview/ui/ViewContainer;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Object;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/Object;

    iget-object v0, p0, Lcom/kizitonwose/calendarview/ui/DayHolder$bindDayView$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/kizitonwose/calendarview/ui/DayHolder;

    .line 41
    move-object v1, p1

    check-cast v1, Lcom/kizitonwose/calendarview/ui/ViewContainer;

    invoke-static {v0, v1}, Lcom/kizitonwose/calendarview/ui/DayHolder;->access$setViewContainer$p(Lcom/kizitonwose/calendarview/ui/DayHolder;Lcom/kizitonwose/calendarview/ui/ViewContainer;)V

    return-void
.end method
