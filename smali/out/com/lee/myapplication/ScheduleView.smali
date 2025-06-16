.class public Lcom/lee/myapplication/ScheduleView;
.super Landroid/widget/TextView;
.source "ScheduleView.java"


# instance fields
.field private bounds:Landroid/graphics/RectF;

.field private categoryColors:[I

.field private paint:Landroid/graphics/Paint;

.field private schedule:Lcom/lee/myapplication/Schedule;

.field private timeFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lee/myapplication/Schedule;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "schedule"    # Lcom/lee/myapplication/Schedule;

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 20
    nop

    .line 21
    const-string v0, "#FF4081"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 22
    const-string v1, "#3F51B5"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 23
    const-string v2, "#4CAF50"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 24
    const-string v3, "#FF9800"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/lee/myapplication/ScheduleView;->categoryColors:[I

    .line 26
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/lee/myapplication/ScheduleView;->timeFormat:Ljava/text/SimpleDateFormat;

    .line 30
    iput-object p2, p0, Lcom/lee/myapplication/ScheduleView;->schedule:Lcom/lee/myapplication/Schedule;

    .line 31
    invoke-direct {p0}, Lcom/lee/myapplication/ScheduleView;->init()V

    .line 32
    return-void
.end method

.method private getCategoryColorIndex(Ljava/lang/String;)I
    .registers 6
    .param p1, "category"    # Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_32

    :cond_a
    goto :goto_29

    :sswitch_b
    const-string v0, "\u751f\u6d3b"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_2a

    :sswitch_15
    const-string v0, "\u5de5\u4f5c"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v3

    goto :goto_2a

    :sswitch_1f
    const-string v0, "\u5b66\u4e60"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v2

    goto :goto_2a

    :goto_29
    const/4 v0, -0x1

    :goto_2a
    packed-switch v0, :pswitch_data_40

    .line 70
    const/4 v0, 0x3

    return v0

    .line 69
    :pswitch_2f
    return v1

    .line 68
    :pswitch_30
    return v2

    .line 67
    :pswitch_31
    return v3

    :sswitch_data_32
    .sparse-switch
        0xb5fba -> :sswitch_1f
        0xbae17 -> :sswitch_15
        0xe9bfc -> :sswitch_b
    .end sparse-switch

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_31
        :pswitch_30
        :pswitch_2f
    .end packed-switch
.end method

.method private init()V
    .registers 6

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lee/myapplication/ScheduleView;->paint:Landroid/graphics/Paint;

    .line 36
    iget-object v0, p0, Lcom/lee/myapplication/ScheduleView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 37
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/lee/myapplication/ScheduleView;->bounds:Landroid/graphics/RectF;

    .line 40
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/lee/myapplication/ScheduleView;->setTextColor(I)V

    .line 41
    const/high16 v0, 0x41400000    # 12.0f

    const/4 v2, 0x2

    invoke-virtual {p0, v2, v0}, Lcom/lee/myapplication/ScheduleView;->setTextSize(IF)V

    .line 42
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v2, v0, v2}, Lcom/lee/myapplication/ScheduleView;->setPadding(IIII)V

    .line 43
    invoke-virtual {p0, v1}, Lcom/lee/myapplication/ScheduleView;->setMaxLines(I)V

    .line 44
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lcom/lee/myapplication/ScheduleView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 47
    iget-object v0, p0, Lcom/lee/myapplication/ScheduleView;->schedule:Lcom/lee/myapplication/Schedule;

    invoke-virtual {v0}, Lcom/lee/myapplication/Schedule;->getCategory()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lee/myapplication/ScheduleView;->getCategoryColorIndex(Ljava/lang/String;)I

    move-result v0

    .line 48
    .local v0, "colorIndex":I
    iget-object v1, p0, Lcom/lee/myapplication/ScheduleView;->categoryColors:[I

    aget v1, v1, v0

    .line 49
    .local v1, "color":I
    iget-object v2, p0, Lcom/lee/myapplication/ScheduleView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .local v2, "builder":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/lee/myapplication/ScheduleView;->schedule:Lcom/lee/myapplication/Schedule;

    invoke-virtual {v3}, Lcom/lee/myapplication/Schedule;->isAllDay()Z

    move-result v3

    if-nez v3, :cond_63

    .line 55
    iget-object v3, p0, Lcom/lee/myapplication/ScheduleView;->timeFormat:Ljava/text/SimpleDateFormat;

    iget-object v4, p0, Lcom/lee/myapplication/ScheduleView;->schedule:Lcom/lee/myapplication/Schedule;

    invoke-virtual {v4}, Lcom/lee/myapplication/Schedule;->getStartTime()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 56
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    :cond_63
    iget-object v3, p0, Lcom/lee/myapplication/ScheduleView;->schedule:Lcom/lee/myapplication/Schedule;

    invoke-virtual {v3}, Lcom/lee/myapplication/Schedule;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lee/myapplication/ScheduleView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    new-instance v3, Lcom/lee/myapplication/ScheduleView$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/lee/myapplication/ScheduleView$$ExternalSyntheticLambda0;-><init>(Lcom/lee/myapplication/ScheduleView;)V

    invoke-virtual {p0, v3}, Lcom/lee/myapplication/ScheduleView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    return-void
.end method

.method private showScheduleDetails()V
    .registers 5

    .line 92
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/lee/myapplication/ScheduleView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/lee/myapplication/ScheduleDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/lee/myapplication/ScheduleView;->schedule:Lcom/lee/myapplication/Schedule;

    invoke-virtual {v1}, Lcom/lee/myapplication/Schedule;->getId()J

    move-result-wide v1

    const-string v3, "schedule_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 94
    invoke-virtual {p0}, Lcom/lee/myapplication/ScheduleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 95
    return-void
.end method


# virtual methods
.method public getSchedule()Lcom/lee/myapplication/Schedule;
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/lee/myapplication/ScheduleView;->schedule:Lcom/lee/myapplication/Schedule;

    return-object v0
.end method

.method synthetic lambda$init$0$com-lee-myapplication-ScheduleView(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .line 62
    invoke-direct {p0}, Lcom/lee/myapplication/ScheduleView;->showScheduleDetails()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 77
    iget-object v0, p0, Lcom/lee/myapplication/ScheduleView;->bounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/lee/myapplication/ScheduleView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/lee/myapplication/ScheduleView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 78
    iget-object v0, p0, Lcom/lee/myapplication/ScheduleView;->bounds:Landroid/graphics/RectF;

    const/high16 v1, 0x40800000    # 4.0f

    iget-object v2, p0, Lcom/lee/myapplication/ScheduleView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 81
    iget-object v0, p0, Lcom/lee/myapplication/ScheduleView;->schedule:Lcom/lee/myapplication/Schedule;

    invoke-virtual {v0}, Lcom/lee/myapplication/Schedule;->getReminderMinutes()I

    move-result v0

    if-lez v0, :cond_3a

    .line 82
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/lee/myapplication/ScheduleView;->paint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 83
    .local v0, "reminderPaint":Landroid/graphics/Paint;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    invoke-virtual {p0}, Lcom/lee/myapplication/ScheduleView;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    int-to-float v1, v1

    const/high16 v2, 0x41000000    # 8.0f

    const/high16 v3, 0x40400000    # 3.0f

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 87
    .end local v0    # "reminderPaint":Landroid/graphics/Paint;
    :cond_3a
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 88
    return-void
.end method

.method public setTextSize(F)V
    .registers 3
    .param p1, "size"    # F

    .line 105
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/lee/myapplication/ScheduleView;->setTextSize(IF)V

    .line 106
    return-void
.end method
