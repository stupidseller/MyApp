.class public Lcom/lee/myapplication/Schedule;
.super Ljava/lang/Object;
.source "Schedule.java"


# instance fields
.field private category:Ljava/lang/String;

.field private color:I

.field private description:Ljava/lang/String;

.field private endTime:Ljava/util/Calendar;

.field private id:J

.field private isAllDay:Z

.field private reminderMinutes:I

.field private repeatType:Ljava/lang/String;

.field private startTime:Ljava/util/Calendar;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/lee/myapplication/Schedule;->startTime:Ljava/util/Calendar;

    .line 19
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/lee/myapplication/Schedule;->endTime:Ljava/util/Calendar;

    .line 20
    iget-object v0, p0, Lcom/lee/myapplication/Schedule;->endTime:Ljava/util/Calendar;

    const/16 v1, 0xb

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 21
    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/lee/myapplication/Schedule;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getColor()I
    .registers 2

    .line 51
    iget v0, p0, Lcom/lee/myapplication/Schedule;->color:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/lee/myapplication/Schedule;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()Ljava/util/Calendar;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/lee/myapplication/Schedule;->endTime:Ljava/util/Calendar;

    return-object v0
.end method

.method public getId()J
    .registers 3

    .line 24
    iget-wide v0, p0, Lcom/lee/myapplication/Schedule;->id:J

    return-wide v0
.end method

.method public getReminderMinutes()I
    .registers 2

    .line 48
    iget v0, p0, Lcom/lee/myapplication/Schedule;->reminderMinutes:I

    return v0
.end method

.method public getRepeatType()Ljava/lang/String;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/lee/myapplication/Schedule;->repeatType:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()Ljava/util/Calendar;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/lee/myapplication/Schedule;->startTime:Ljava/util/Calendar;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/lee/myapplication/Schedule;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isAllDay()Z
    .registers 2

    .line 42
    iget-boolean v0, p0, Lcom/lee/myapplication/Schedule;->isAllDay:Z

    return v0
.end method

.method public setAllDay(Z)V
    .registers 2
    .param p1, "allDay"    # Z

    .line 43
    iput-boolean p1, p0, Lcom/lee/myapplication/Schedule;->isAllDay:Z

    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .registers 2
    .param p1, "category"    # Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/lee/myapplication/Schedule;->category:Ljava/lang/String;

    return-void
.end method

.method public setColor(I)V
    .registers 2
    .param p1, "color"    # I

    .line 52
    iput p1, p0, Lcom/lee/myapplication/Schedule;->color:I

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2
    .param p1, "description"    # Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/lee/myapplication/Schedule;->description:Ljava/lang/String;

    return-void
.end method

.method public setEndTime(Ljava/util/Calendar;)V
    .registers 2
    .param p1, "endTime"    # Ljava/util/Calendar;

    .line 37
    iput-object p1, p0, Lcom/lee/myapplication/Schedule;->endTime:Ljava/util/Calendar;

    return-void
.end method

.method public setId(J)V
    .registers 3
    .param p1, "id"    # J

    .line 25
    iput-wide p1, p0, Lcom/lee/myapplication/Schedule;->id:J

    return-void
.end method

.method public setReminderMinutes(I)V
    .registers 2
    .param p1, "reminderMinutes"    # I

    .line 49
    iput p1, p0, Lcom/lee/myapplication/Schedule;->reminderMinutes:I

    return-void
.end method

.method public setRepeatType(Ljava/lang/String;)V
    .registers 2
    .param p1, "repeatType"    # Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/lee/myapplication/Schedule;->repeatType:Ljava/lang/String;

    return-void
.end method

.method public setStartTime(Ljava/util/Calendar;)V
    .registers 2
    .param p1, "startTime"    # Ljava/util/Calendar;

    .line 34
    iput-object p1, p0, Lcom/lee/myapplication/Schedule;->startTime:Ljava/util/Calendar;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2
    .param p1, "title"    # Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/lee/myapplication/Schedule;->title:Ljava/lang/String;

    return-void
.end method
