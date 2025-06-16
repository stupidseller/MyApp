.class public final Lcom/kizitonwose/calendarview/ui/DayConfig;
.super Ljava/lang/Object;
.source "DayHolder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0080\u0008\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0002\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0005H\u00c6\u0003J\u000f\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u00c6\u0003J-\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u00052\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/kizitonwose/calendarview/ui/DayConfig;",
        "",
        "size",
        "Lcom/kizitonwose/calendarview/utils/Size;",
        "dayViewRes",
        "",
        "viewBinder",
        "Lcom/kizitonwose/calendarview/ui/DayBinder;",
        "Lcom/kizitonwose/calendarview/ui/ViewContainer;",
        "(Lcom/kizitonwose/calendarview/utils/Size;ILcom/kizitonwose/calendarview/ui/DayBinder;)V",
        "getDayViewRes",
        "()I",
        "getSize",
        "()Lcom/kizitonwose/calendarview/utils/Size;",
        "getViewBinder",
        "()Lcom/kizitonwose/calendarview/ui/DayBinder;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
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
.field private final dayViewRes:I

.field private final size:Lcom/kizitonwose/calendarview/utils/Size;

.field private final viewBinder:Lcom/kizitonwose/calendarview/ui/DayBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kizitonwose/calendarview/ui/DayBinder<",
            "Lcom/kizitonwose/calendarview/ui/ViewContainer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/kizitonwose/calendarview/utils/Size;ILcom/kizitonwose/calendarview/ui/DayBinder;)V
    .registers 5
    .param p1, "size"    # Lcom/kizitonwose/calendarview/utils/Size;
    .param p2, "dayViewRes"    # I
    .param p3, "viewBinder"    # Lcom/kizitonwose/calendarview/ui/DayBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kizitonwose/calendarview/utils/Size;",
            "I",
            "Lcom/kizitonwose/calendarview/ui/DayBinder<",
            "Lcom/kizitonwose/calendarview/ui/ViewContainer;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "size"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "viewBinder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kizitonwose/calendarview/ui/DayConfig;->size:Lcom/kizitonwose/calendarview/utils/Size;

    iput p2, p0, Lcom/kizitonwose/calendarview/ui/DayConfig;->dayViewRes:I

    iput-object p3, p0, Lcom/kizitonwose/calendarview/ui/DayConfig;->viewBinder:Lcom/kizitonwose/calendarview/ui/DayBinder;

    return-void
.end method

.method public static synthetic copy$default(Lcom/kizitonwose/calendarview/ui/DayConfig;Lcom/kizitonwose/calendarview/utils/Size;ILcom/kizitonwose/calendarview/ui/DayBinder;ILjava/lang/Object;)Lcom/kizitonwose/calendarview/ui/DayConfig;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget-object p1, p0, Lcom/kizitonwose/calendarview/ui/DayConfig;->size:Lcom/kizitonwose/calendarview/utils/Size;

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget p2, p0, Lcom/kizitonwose/calendarview/ui/DayConfig;->dayViewRes:I

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget-object p3, p0, Lcom/kizitonwose/calendarview/ui/DayConfig;->viewBinder:Lcom/kizitonwose/calendarview/ui/DayBinder;

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/kizitonwose/calendarview/ui/DayConfig;->copy(Lcom/kizitonwose/calendarview/utils/Size;ILcom/kizitonwose/calendarview/ui/DayBinder;)Lcom/kizitonwose/calendarview/ui/DayConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/kizitonwose/calendarview/utils/Size;
    .registers 2

    iget-object v0, p0, Lcom/kizitonwose/calendarview/ui/DayConfig;->size:Lcom/kizitonwose/calendarview/utils/Size;

    return-object v0
.end method

.method public final component2()I
    .registers 2

    iget v0, p0, Lcom/kizitonwose/calendarview/ui/DayConfig;->dayViewRes:I

    return v0
.end method

.method public final component3()Lcom/kizitonwose/calendarview/ui/DayBinder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kizitonwose/calendarview/ui/DayBinder<",
            "Lcom/kizitonwose/calendarview/ui/ViewContainer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kizitonwose/calendarview/ui/DayConfig;->viewBinder:Lcom/kizitonwose/calendarview/ui/DayBinder;

    return-object v0
.end method

.method public final copy(Lcom/kizitonwose/calendarview/utils/Size;ILcom/kizitonwose/calendarview/ui/DayBinder;)Lcom/kizitonwose/calendarview/ui/DayConfig;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kizitonwose/calendarview/utils/Size;",
            "I",
            "Lcom/kizitonwose/calendarview/ui/DayBinder<",
            "Lcom/kizitonwose/calendarview/ui/ViewContainer;",
            ">;)",
            "Lcom/kizitonwose/calendarview/ui/DayConfig;"
        }
    .end annotation

    const-string/jumbo v0, "size"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "viewBinder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/kizitonwose/calendarview/ui/DayConfig;

    invoke-direct {v0, p1, p2, p3}, Lcom/kizitonwose/calendarview/ui/DayConfig;-><init>(Lcom/kizitonwose/calendarview/utils/Size;ILcom/kizitonwose/calendarview/ui/DayBinder;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_25

    instance-of v0, p1, Lcom/kizitonwose/calendarview/ui/DayConfig;

    if-eqz v0, :cond_23

    check-cast p1, Lcom/kizitonwose/calendarview/ui/DayConfig;

    iget-object v0, p0, Lcom/kizitonwose/calendarview/ui/DayConfig;->size:Lcom/kizitonwose/calendarview/utils/Size;

    iget-object v1, p1, Lcom/kizitonwose/calendarview/ui/DayConfig;->size:Lcom/kizitonwose/calendarview/utils/Size;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget v0, p0, Lcom/kizitonwose/calendarview/ui/DayConfig;->dayViewRes:I

    iget v1, p1, Lcom/kizitonwose/calendarview/ui/DayConfig;->dayViewRes:I

    if-ne v0, v1, :cond_23

    iget-object v0, p0, Lcom/kizitonwose/calendarview/ui/DayConfig;->viewBinder:Lcom/kizitonwose/calendarview/ui/DayBinder;

    iget-object p1, p1, Lcom/kizitonwose/calendarview/ui/DayConfig;->viewBinder:Lcom/kizitonwose/calendarview/ui/DayBinder;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    goto :goto_25

    :cond_23
    const/4 p1, 0x0

    return p1

    :cond_25
    :goto_25
    const/4 p1, 0x1

    return p1
.end method

.method public final getDayViewRes()I
    .registers 2

    .line 15
    iget v0, p0, Lcom/kizitonwose/calendarview/ui/DayConfig;->dayViewRes:I

    return v0
.end method

.method public final getSize()Lcom/kizitonwose/calendarview/utils/Size;
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/kizitonwose/calendarview/ui/DayConfig;->size:Lcom/kizitonwose/calendarview/utils/Size;

    return-object v0
.end method

.method public final getViewBinder()Lcom/kizitonwose/calendarview/ui/DayBinder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kizitonwose/calendarview/ui/DayBinder<",
            "Lcom/kizitonwose/calendarview/ui/ViewContainer;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/kizitonwose/calendarview/ui/DayConfig;->viewBinder:Lcom/kizitonwose/calendarview/ui/DayBinder;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/kizitonwose/calendarview/ui/DayConfig;->size:Lcom/kizitonwose/calendarview/utils/Size;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/kizitonwose/calendarview/ui/DayConfig;->dayViewRes:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kizitonwose/calendarview/ui/DayConfig;->viewBinder:Lcom/kizitonwose/calendarview/ui/DayBinder;

    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1e
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DayConfig(size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kizitonwose/calendarview/ui/DayConfig;->size:Lcom/kizitonwose/calendarview/utils/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dayViewRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kizitonwose/calendarview/ui/DayConfig;->dayViewRes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", viewBinder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kizitonwose/calendarview/ui/DayConfig;->viewBinder:Lcom/kizitonwose/calendarview/ui/DayBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
