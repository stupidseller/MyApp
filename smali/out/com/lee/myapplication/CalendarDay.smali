.class public Lcom/lee/myapplication/CalendarDay;
.super Ljava/lang/Object;
.source "CalendarDay.java"


# instance fields
.field private day:I

.field private holidays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lee/myapplication/Holiday;",
            ">;"
        }
    .end annotation
.end field

.field private isCurrentMonth:Z

.field private isSelected:Z

.field private isToday:Z

.field private month:I

.field private schedules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lee/myapplication/Schedule;",
            ">;"
        }
    .end annotation
.end field

.field private year:I


# direct methods
.method public constructor <init>(III)V
    .registers 5
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/lee/myapplication/CalendarDay;->year:I

    .line 19
    iput p2, p0, Lcom/lee/myapplication/CalendarDay;->month:I

    .line 20
    iput p3, p0, Lcom/lee/myapplication/CalendarDay;->day:I

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lee/myapplication/CalendarDay;->schedules:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lee/myapplication/CalendarDay;->holidays:Ljava/util/List;

    .line 23
    return-void
.end method


# virtual methods
.method public addSchedule(Lcom/lee/myapplication/Schedule;)V
    .registers 3
    .param p1, "schedule"    # Lcom/lee/myapplication/Schedule;

    .line 46
    iget-object v0, p0, Lcom/lee/myapplication/CalendarDay;->schedules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getDay()I
    .registers 2

    .line 32
    iget v0, p0, Lcom/lee/myapplication/CalendarDay;->day:I

    return v0
.end method

.method public getFirstHoliday()Lcom/lee/myapplication/Holiday;
    .registers 3

    .line 55
    iget-object v0, p0, Lcom/lee/myapplication/CalendarDay;->holidays:Ljava/util/List;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/lee/myapplication/CalendarDay;->holidays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 56
    iget-object v0, p0, Lcom/lee/myapplication/CalendarDay;->holidays:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lee/myapplication/Holiday;

    return-object v0

    .line 58
    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHolidays()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lee/myapplication/Holiday;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/lee/myapplication/CalendarDay;->holidays:Ljava/util/List;

    return-object v0
.end method

.method public getMonth()I
    .registers 2

    .line 29
    iget v0, p0, Lcom/lee/myapplication/CalendarDay;->month:I

    return v0
.end method

.method public getSchedules()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lee/myapplication/Schedule;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/lee/myapplication/CalendarDay;->schedules:Ljava/util/List;

    return-object v0
.end method

.method public getYear()I
    .registers 2

    .line 26
    iget v0, p0, Lcom/lee/myapplication/CalendarDay;->year:I

    return v0
.end method

.method public isCurrentMonth()Z
    .registers 2

    .line 41
    iget-boolean v0, p0, Lcom/lee/myapplication/CalendarDay;->isCurrentMonth:Z

    return v0
.end method

.method public isRestDay()Z
    .registers 3

    .line 65
    invoke-virtual {p0}, Lcom/lee/myapplication/CalendarDay;->getFirstHoliday()Lcom/lee/myapplication/Holiday;

    move-result-object v0

    .line 66
    .local v0, "firstHoliday":Lcom/lee/myapplication/Holiday;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/lee/myapplication/Holiday;->isRestDay()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public isSelected()Z
    .registers 2

    .line 38
    iget-boolean v0, p0, Lcom/lee/myapplication/CalendarDay;->isSelected:Z

    return v0
.end method

.method public isToday()Z
    .registers 2

    .line 35
    iget-boolean v0, p0, Lcom/lee/myapplication/CalendarDay;->isToday:Z

    return v0
.end method

.method public isWeekend()Z
    .registers 5

    .line 73
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 74
    .local v0, "calendar":Ljava/util/Calendar;
    iget v1, p0, Lcom/lee/myapplication/CalendarDay;->year:I

    iget v2, p0, Lcom/lee/myapplication/CalendarDay;->month:I

    iget v3, p0, Lcom/lee/myapplication/CalendarDay;->day:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 75
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 76
    .local v2, "dayOfWeek":I
    const/4 v3, 0x1

    if-eq v2, v1, :cond_19

    if-ne v2, v3, :cond_18

    goto :goto_19

    :cond_18
    const/4 v3, 0x0

    :cond_19
    :goto_19
    return v3
.end method

.method public setCurrentMonth(Z)V
    .registers 2
    .param p1, "currentMonth"    # Z

    .line 42
    iput-boolean p1, p0, Lcom/lee/myapplication/CalendarDay;->isCurrentMonth:Z

    return-void
.end method

.method public setDay(I)V
    .registers 2
    .param p1, "day"    # I

    .line 33
    iput p1, p0, Lcom/lee/myapplication/CalendarDay;->day:I

    return-void
.end method

.method public setHolidays(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lee/myapplication/Holiday;",
            ">;)V"
        }
    .end annotation

    .line 49
    .local p1, "holidays":Ljava/util/List;, "Ljava/util/List<Lcom/lee/myapplication/Holiday;>;"
    iput-object p1, p0, Lcom/lee/myapplication/CalendarDay;->holidays:Ljava/util/List;

    return-void
.end method

.method public setMonth(I)V
    .registers 2
    .param p1, "month"    # I

    .line 30
    iput p1, p0, Lcom/lee/myapplication/CalendarDay;->month:I

    return-void
.end method

.method public setSchedules(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lee/myapplication/Schedule;",
            ">;)V"
        }
    .end annotation

    .line 45
    .local p1, "schedules":Ljava/util/List;, "Ljava/util/List<Lcom/lee/myapplication/Schedule;>;"
    iput-object p1, p0, Lcom/lee/myapplication/CalendarDay;->schedules:Ljava/util/List;

    return-void
.end method

.method public setSelected(Z)V
    .registers 2
    .param p1, "selected"    # Z

    .line 39
    iput-boolean p1, p0, Lcom/lee/myapplication/CalendarDay;->isSelected:Z

    return-void
.end method

.method public setToday(Z)V
    .registers 2
    .param p1, "today"    # Z

    .line 36
    iput-boolean p1, p0, Lcom/lee/myapplication/CalendarDay;->isToday:Z

    return-void
.end method

.method public setYear(I)V
    .registers 2
    .param p1, "year"    # I

    .line 27
    iput p1, p0, Lcom/lee/myapplication/CalendarDay;->year:I

    return-void
.end method
