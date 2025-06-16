.class public final Lcom/kizitonwose/calendarview/utils/Size;
.super Ljava/lang/Object;
.source "Size.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\n\u001a\u00020\u0003H\u00c6\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u000f\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0010\u001a\u00020\u0011H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/kizitonwose/calendarview/utils/Size;",
        "",
        "width",
        "",
        "height",
        "(II)V",
        "getHeight",
        "()I",
        "getWidth",
        "component1",
        "component2",
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
.field private final height:I

.field private final width:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/kizitonwose/calendarview/utils/Size;->width:I

    iput p2, p0, Lcom/kizitonwose/calendarview/utils/Size;->height:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/kizitonwose/calendarview/utils/Size;IIILjava/lang/Object;)Lcom/kizitonwose/calendarview/utils/Size;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget p1, p0, Lcom/kizitonwose/calendarview/utils/Size;->width:I

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget p2, p0, Lcom/kizitonwose/calendarview/utils/Size;->height:I

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/kizitonwose/calendarview/utils/Size;->copy(II)Lcom/kizitonwose/calendarview/utils/Size;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 2

    iget v0, p0, Lcom/kizitonwose/calendarview/utils/Size;->width:I

    return v0
.end method

.method public final component2()I
    .registers 2

    iget v0, p0, Lcom/kizitonwose/calendarview/utils/Size;->height:I

    return v0
.end method

.method public final copy(II)Lcom/kizitonwose/calendarview/utils/Size;
    .registers 4

    new-instance v0, Lcom/kizitonwose/calendarview/utils/Size;

    invoke-direct {v0, p1, p2}, Lcom/kizitonwose/calendarview/utils/Size;-><init>(II)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_17

    instance-of v0, p1, Lcom/kizitonwose/calendarview/utils/Size;

    if-eqz v0, :cond_15

    check-cast p1, Lcom/kizitonwose/calendarview/utils/Size;

    iget v0, p0, Lcom/kizitonwose/calendarview/utils/Size;->width:I

    iget v1, p1, Lcom/kizitonwose/calendarview/utils/Size;->width:I

    if-ne v0, v1, :cond_15

    iget v0, p0, Lcom/kizitonwose/calendarview/utils/Size;->height:I

    iget p1, p1, Lcom/kizitonwose/calendarview/utils/Size;->height:I

    if-ne v0, p1, :cond_15

    goto :goto_17

    :cond_15
    const/4 p1, 0x0

    return p1

    :cond_17
    :goto_17
    const/4 p1, 0x1

    return p1
.end method

.method public final getHeight()I
    .registers 2

    .line 9
    iget v0, p0, Lcom/kizitonwose/calendarview/utils/Size;->height:I

    return v0
.end method

.method public final getWidth()I
    .registers 2

    .line 9
    iget v0, p0, Lcom/kizitonwose/calendarview/utils/Size;->width:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/kizitonwose/calendarview/utils/Size;->width:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/kizitonwose/calendarview/utils/Size;->height:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Size(width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kizitonwose/calendarview/utils/Size;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kizitonwose/calendarview/utils/Size;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
