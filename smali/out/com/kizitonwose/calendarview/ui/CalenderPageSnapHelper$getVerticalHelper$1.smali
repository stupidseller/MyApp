.class final synthetic Lcom/kizitonwose/calendarview/ui/CalenderPageSnapHelper$getVerticalHelper$1;
.super Lkotlin/jvm/internal/MutablePropertyReference0Impl;
.source "CalenderPageSnapHelper.kt"


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
.method constructor <init>(Lcom/kizitonwose/calendarview/ui/CalenderPageSnapHelper;)V
    .registers 8

    const-class v2, Lcom/kizitonwose/calendarview/ui/CalenderPageSnapHelper;

    const-string v4, "getVerticalHelper()Landroidx/recyclerview/widget/OrientationHelper;"

    const/4 v5, 0x0

    const-string/jumbo v3, "verticalHelper"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/MutablePropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/kizitonwose/calendarview/ui/CalenderPageSnapHelper$getVerticalHelper$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/kizitonwose/calendarview/ui/CalenderPageSnapHelper;

    .line 38
    invoke-static {v0}, Lcom/kizitonwose/calendarview/ui/CalenderPageSnapHelper;->access$getVerticalHelper$p(Lcom/kizitonwose/calendarview/ui/CalenderPageSnapHelper;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Object;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/Object;

    iget-object v0, p0, Lcom/kizitonwose/calendarview/ui/CalenderPageSnapHelper$getVerticalHelper$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/kizitonwose/calendarview/ui/CalenderPageSnapHelper;

    .line 38
    move-object v1, p1

    check-cast v1, Landroidx/recyclerview/widget/OrientationHelper;

    invoke-static {v0, v1}, Lcom/kizitonwose/calendarview/ui/CalenderPageSnapHelper;->access$setVerticalHelper$p(Lcom/kizitonwose/calendarview/ui/CalenderPageSnapHelper;Landroidx/recyclerview/widget/OrientationHelper;)V

    return-void
.end method
