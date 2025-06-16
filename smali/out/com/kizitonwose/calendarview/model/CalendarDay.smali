.class public final Lcom/kizitonwose/calendarview/model/CalendarDay;
.super Ljava/lang/Object;
.source "CalendarDay.kt"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/kizitonwose/calendarview/model/CalendarDay;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B\u0017\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0011\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u0000H\u0096\u0002J\t\u0010\u0016\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0006H\u00c6\u0003J\u001d\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u001bH\u0096\u0002J\u0008\u0010\u001c\u001a\u00020\u000bH\u0016J\u0008\u0010\u001d\u001a\u00020\u001eH\u0016R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\u00118@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/kizitonwose/calendarview/model/CalendarDay;",
        "",
        "Ljava/io/Serializable;",
        "date",
        "Ljava/time/LocalDate;",
        "owner",
        "Lcom/kizitonwose/calendarview/model/DayOwner;",
        "(Ljava/time/LocalDate;Lcom/kizitonwose/calendarview/model/DayOwner;)V",
        "getDate",
        "()Ljava/time/LocalDate;",
        "day",
        "",
        "getDay",
        "()I",
        "getOwner",
        "()Lcom/kizitonwose/calendarview/model/DayOwner;",
        "positionYearMonth",
        "Ljava/time/YearMonth;",
        "getPositionYearMonth$com_github_kizitonwose_CalendarView",
        "()Ljava/time/YearMonth;",
        "compareTo",
        "other",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "",
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
.field private final date:Ljava/time/LocalDate;

.field private final day:I

.field private final owner:Lcom/kizitonwose/calendarview/model/DayOwner;


# direct methods
.method public constructor <init>(Ljava/time/LocalDate;Lcom/kizitonwose/calendarview/model/DayOwner;)V
    .registers 4
    .param p1, "date"    # Ljava/time/LocalDate;
    .param p2, "owner"    # Lcom/kizitonwose/calendarview/model/DayOwner;

    const-string v0, "date"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "owner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kizitonwose/calendarview/model/CalendarDay;->date:Ljava/time/LocalDate;

    iput-object p2, p0, Lcom/kizitonwose/calendarview/model/CalendarDay;->owner:Lcom/kizitonwose/calendarview/model/DayOwner;

    .line 12
    iget-object v0, p0, Lcom/kizitonwose/calendarview/model/CalendarDay;->date:Ljava/time/LocalDate;

    invoke-virtual {v0}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v0

    iput v0, p0, Lcom/kizitonwose/calendarview/model/CalendarDay;->day:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/kizitonwose/calendarview/model/CalendarDay;Ljava/time/LocalDate;Lcom/kizitonwose/calendarview/model/DayOwner;ILjava/lang/Object;)Lcom/kizitonwose/calendarview/model/CalendarDay;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Lcom/kizitonwose/calendarview/model/CalendarDay;->date:Ljava/time/LocalDate;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lcom/kizitonwose/calendarview/model/CalendarDay;->owner:Lcom/kizitonwose/calendarview/model/DayOwner;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/kizitonwose/calendarview/model/CalendarDay;->copy(Ljava/time/LocalDate;Lcom/kizitonwose/calendarview/model/DayOwner;)Lcom/kizitonwose/calendarview/model/CalendarDay;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public compareTo(Lcom/kizitonwose/calendarview/model/CalendarDay;)I
    .registers 4
    .param p1, "other"    # Lcom/kizitonwose/calendarview/model/CalendarDay;

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 28
    nop

    .line 27
    const-string v1, "Compare using the `date` parameter instead. Out and In dates can have the same date values as CalendarDay in another month."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 9
    check-cast p1, Lcom/kizitonwose/calendarview/model/CalendarDay;

    invoke-virtual {p0, p1}, Lcom/kizitonwose/calendarview/model/CalendarDay;->compareTo(Lcom/kizitonwose/calendarview/model/CalendarDay;)I

    move-result p1

    return p1
.end method

.method public final component1()Ljava/time/LocalDate;
    .registers 2

    iget-object v0, p0, Lcom/kizitonwose/calendarview/model/CalendarDay;->date:Ljava/time/LocalDate;

    return-object v0
.end method

.method public final component2()Lcom/kizitonwose/calendarview/model/DayOwner;
    .registers 2

    iget-object v0, p0, Lcom/kizitonwose/calendarview/model/CalendarDay;->owner:Lcom/kizitonwose/calendarview/model/DayOwner;

    return-object v0
.end method

.method public final copy(Ljava/time/LocalDate;Lcom/kizitonwose/calendarview/model/DayOwner;)Lcom/kizitonwose/calendarview/model/CalendarDay;
    .registers 4

    const-string v0, "date"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "owner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/kizitonwose/calendarview/model/CalendarDay;

    invoke-direct {v0, p1, p2}, Lcom/kizitonwose/calendarview/model/CalendarDay;-><init>(Ljava/time/LocalDate;Lcom/kizitonwose/calendarview/model/DayOwner;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 34
    move-object v0, p0

    check-cast v0, Lcom/kizitonwose/calendarview/model/CalendarDay;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_7

    return v1

    .line 35
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1b

    return v2

    .line 37
    :cond_1b
    if-eqz p1, :cond_39

    move-object v0, p1

    check-cast v0, Lcom/kizitonwose/calendarview/model/CalendarDay;

    .line 38
    iget-object v0, p0, Lcom/kizitonwose/calendarview/model/CalendarDay;->date:Ljava/time/LocalDate;

    move-object v3, p1

    check-cast v3, Lcom/kizitonwose/calendarview/model/CalendarDay;

    iget-object v3, v3, Lcom/kizitonwose/calendarview/model/CalendarDay;->date:Ljava/time/LocalDate;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/kizitonwose/calendarview/model/CalendarDay;->owner:Lcom/kizitonwose/calendarview/model/DayOwner;

    move-object v3, p1

    check-cast v3, Lcom/kizitonwose/calendarview/model/CalendarDay;

    iget-object v3, v3, Lcom/kizitonwose/calendarview/model/CalendarDay;->owner:Lcom/kizitonwose/calendarview/model/DayOwner;

    if-ne v0, v3, :cond_37

    goto :goto_38

    :cond_37
    move v1, v2

    :goto_38
    return v1

    .line 37
    :cond_39
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type com.kizitonwose.calendarview.model.CalendarDay"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getDate()Ljava/time/LocalDate;
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/kizitonwose/calendarview/model/CalendarDay;->date:Ljava/time/LocalDate;

    return-object v0
.end method

.method public final getDay()I
    .registers 2

    .line 12
    iget v0, p0, Lcom/kizitonwose/calendarview/model/CalendarDay;->day:I

    return v0
.end method

.method public final getOwner()Lcom/kizitonwose/calendarview/model/DayOwner;
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/kizitonwose/calendarview/model/CalendarDay;->owner:Lcom/kizitonwose/calendarview/model/DayOwner;

    return-object v0
.end method

.method public final getPositionYearMonth$com_github_kizitonwose_CalendarView()Ljava/time/YearMonth;
    .registers 3

    .line 16
    iget-object v0, p0, Lcom/kizitonwose/calendarview/model/CalendarDay;->owner:Lcom/kizitonwose/calendarview/model/DayOwner;

    sget-object v1, Lcom/kizitonwose/calendarview/model/CalendarDay$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/kizitonwose/calendarview/model/DayOwner;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_32

    .line 19
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_13
    iget-object v0, p0, Lcom/kizitonwose/calendarview/model/CalendarDay;->date:Ljava/time/LocalDate;

    invoke-static {v0}, Lcom/kizitonwose/calendarview/utils/ExtensionsKt;->getYearMonth(Ljava/time/LocalDate;)Ljava/time/YearMonth;

    move-result-object v0

    invoke-static {v0}, Lcom/kizitonwose/calendarview/utils/ExtensionsKt;->getPrevious(Ljava/time/YearMonth;)Ljava/time/YearMonth;

    move-result-object v0

    goto :goto_2f

    .line 18
    :pswitch_1e
    iget-object v0, p0, Lcom/kizitonwose/calendarview/model/CalendarDay;->date:Ljava/time/LocalDate;

    invoke-static {v0}, Lcom/kizitonwose/calendarview/utils/ExtensionsKt;->getYearMonth(Ljava/time/LocalDate;)Ljava/time/YearMonth;

    move-result-object v0

    invoke-static {v0}, Lcom/kizitonwose/calendarview/utils/ExtensionsKt;->getNext(Ljava/time/YearMonth;)Ljava/time/YearMonth;

    move-result-object v0

    goto :goto_2f

    .line 17
    :pswitch_29
    iget-object v0, p0, Lcom/kizitonwose/calendarview/model/CalendarDay;->date:Ljava/time/LocalDate;

    invoke-static {v0}, Lcom/kizitonwose/calendarview/utils/ExtensionsKt;->getYearMonth(Ljava/time/LocalDate;)Ljava/time/YearMonth;

    move-result-object v0

    .line 16
    :goto_2f
    nop

    .line 20
    return-object v0

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_29
        :pswitch_1e
        :pswitch_13
    .end packed-switch
.end method

.method public hashCode()I
    .registers 3

    .line 42
    iget-object v0, p0, Lcom/kizitonwose/calendarview/model/CalendarDay;->date:Ljava/time/LocalDate;

    invoke-virtual {v0}, Ljava/time/LocalDate;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/kizitonwose/calendarview/model/CalendarDay;->owner:Lcom/kizitonwose/calendarview/model/DayOwner;

    invoke-virtual {v1}, Lcom/kizitonwose/calendarview/model/DayOwner;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CalendarDay { date =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kizitonwose/calendarview/model/CalendarDay;->date:Ljava/time/LocalDate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", owner = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kizitonwose/calendarview/model/CalendarDay;->owner:Lcom/kizitonwose/calendarview/model/DayOwner;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
