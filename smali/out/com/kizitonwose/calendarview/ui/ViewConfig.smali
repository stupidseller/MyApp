.class public final Lcom/kizitonwose/calendarview/ui/ViewConfig;
.super Ljava/lang/Object;
.source "CalendarAdapter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0080\u0008\u0018\u00002\u00020\u0001B-\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J3\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0003\u0010\u0005\u001a\u00020\u00032\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0007H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\nR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/kizitonwose/calendarview/ui/ViewConfig;",
        "",
        "dayViewRes",
        "",
        "monthHeaderRes",
        "monthFooterRes",
        "monthViewClass",
        "",
        "(IIILjava/lang/String;)V",
        "getDayViewRes",
        "()I",
        "getMonthFooterRes",
        "getMonthHeaderRes",
        "getMonthViewClass",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
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

.field private final monthFooterRes:I

.field private final monthHeaderRes:I

.field private final monthViewClass:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIILjava/lang/String;)V
    .registers 5
    .param p1, "dayViewRes"    # I
    .param p2, "monthHeaderRes"    # I
    .param p3, "monthFooterRes"    # I
    .param p4, "monthViewClass"    # Ljava/lang/String;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/kizitonwose/calendarview/ui/ViewConfig;->dayViewRes:I

    iput p2, p0, Lcom/kizitonwose/calendarview/ui/ViewConfig;->monthHeaderRes:I

    iput p3, p0, Lcom/kizitonwose/calendarview/ui/ViewConfig;->monthFooterRes:I

    iput-object p4, p0, Lcom/kizitonwose/calendarview/ui/ViewConfig;->monthViewClass:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/kizitonwose/calendarview/ui/ViewConfig;IIILjava/lang/String;ILjava/lang/Object;)Lcom/kizitonwose/calendarview/ui/ViewConfig;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget p1, p0, Lcom/kizitonwose/calendarview/ui/ViewConfig;->dayViewRes:I

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget p2, p0, Lcom/kizitonwose/calendarview/ui/ViewConfig;->monthHeaderRes:I

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget p3, p0, Lcom/kizitonwose/calendarview/ui/ViewConfig;->monthFooterRes:I

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget-object p4, p0, Lcom/kizitonwose/calendarview/ui/ViewConfig;->monthViewClass:Ljava/lang/String;

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/kizitonwose/calendarview/ui/ViewConfig;->copy(IIILjava/lang/String;)Lcom/kizitonwose/calendarview/ui/ViewConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 2

    iget v0, p0, Lcom/kizitonwose/calendarview/ui/ViewConfig;->dayViewRes:I

    return v0
.end method

.method public final component2()I
    .registers 2

    iget v0, p0, Lcom/kizitonwose/calendarview/ui/ViewConfig;->monthHeaderRes:I

    return v0
.end method

.method public final component3()I
    .registers 2

    iget v0, p0, Lcom/kizitonwose/calendarview/ui/ViewConfig;->monthFooterRes:I

    return v0
.end method

.method public final component4()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kizitonwose/calendarview/ui/ViewConfig;->monthViewClass:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(IIILjava/lang/String;)Lcom/kizitonwose/calendarview/ui/ViewConfig;
    .registers 6

    new-instance v0, Lcom/kizitonwose/calendarview/ui/ViewConfig;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/kizitonwose/calendarview/ui/ViewConfig;-><init>(IIILjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_27

    instance-of v0, p1, Lcom/kizitonwose/calendarview/ui/ViewConfig;

    if-eqz v0, :cond_25

    check-cast p1, Lcom/kizitonwose/calendarview/ui/ViewConfig;

    iget v0, p0, Lcom/kizitonwose/calendarview/ui/ViewConfig;->dayViewRes:I

    iget v1, p1, Lcom/kizitonwose/calendarview/ui/ViewConfig;->dayViewRes:I

    if-ne v0, v1, :cond_25

    iget v0, p0, Lcom/kizitonwose/calendarview/ui/ViewConfig;->monthHeaderRes:I

    iget v1, p1, Lcom/kizitonwose/calendarview/ui/ViewConfig;->monthHeaderRes:I

    if-ne v0, v1, :cond_25

    iget v0, p0, Lcom/kizitonwose/calendarview/ui/ViewConfig;->monthFooterRes:I

    iget v1, p1, Lcom/kizitonwose/calendarview/ui/ViewConfig;->monthFooterRes:I

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Lcom/kizitonwose/calendarview/ui/ViewConfig;->monthViewClass:Ljava/lang/String;

    iget-object p1, p1, Lcom/kizitonwose/calendarview/ui/ViewConfig;->monthViewClass:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    goto :goto_27

    :cond_25
    const/4 p1, 0x0

    return p1

    :cond_27
    :goto_27
    const/4 p1, 0x1

    return p1
.end method

.method public final getDayViewRes()I
    .registers 2

    .line 26
    iget v0, p0, Lcom/kizitonwose/calendarview/ui/ViewConfig;->dayViewRes:I

    return v0
.end method

.method public final getMonthFooterRes()I
    .registers 2

    .line 28
    iget v0, p0, Lcom/kizitonwose/calendarview/ui/ViewConfig;->monthFooterRes:I

    return v0
.end method

.method public final getMonthHeaderRes()I
    .registers 2

    .line 27
    iget v0, p0, Lcom/kizitonwose/calendarview/ui/ViewConfig;->monthHeaderRes:I

    return v0
.end method

.method public final getMonthViewClass()Ljava/lang/String;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/kizitonwose/calendarview/ui/ViewConfig;->monthViewClass:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/kizitonwose/calendarview/ui/ViewConfig;->dayViewRes:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/kizitonwose/calendarview/ui/ViewConfig;->monthHeaderRes:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/kizitonwose/calendarview/ui/ViewConfig;->monthFooterRes:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/kizitonwose/calendarview/ui/ViewConfig;->monthViewClass:Ljava/lang/String;

    if-eqz v1, :cond_23

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewConfig(dayViewRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kizitonwose/calendarview/ui/ViewConfig;->dayViewRes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", monthHeaderRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kizitonwose/calendarview/ui/ViewConfig;->monthHeaderRes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", monthFooterRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kizitonwose/calendarview/ui/ViewConfig;->monthFooterRes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", monthViewClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kizitonwose/calendarview/ui/ViewConfig;->monthViewClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
