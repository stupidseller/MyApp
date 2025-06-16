.class public Lcom/lee/myapplication/ScheduleListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ScheduleListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lee/myapplication/ScheduleListAdapter$DaySchedules;,
        Lcom/lee/myapplication/ScheduleListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private categoryColors:[I

.field private context:Landroid/content/Context;

.field private dateSdf:Ljava/text/SimpleDateFormat;

.field private daySchedulesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lee/myapplication/ScheduleListAdapter$DaySchedules;",
            ">;"
        }
    .end annotation
.end field

.field private inflater:Landroid/view/LayoutInflater;

.field private timeSdf:Ljava/text/SimpleDateFormat;

.field private weekdaySdf:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    const v0, 0x1060014

    const v1, 0x1060018

    const v2, 0x1060016

    const v3, 0x1060012

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/lee/myapplication/ScheduleListAdapter;->categoryColors:[I

    .line 38
    iput-object p1, p0, Lcom/lee/myapplication/ScheduleListAdapter;->context:Landroid/content/Context;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lee/myapplication/ScheduleListAdapter;->daySchedulesList:Ljava/util/List;

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lee/myapplication/ScheduleListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 41
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/lee/myapplication/ScheduleListAdapter;->dateSdf:Ljava/text/SimpleDateFormat;

    .line 42
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "E"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/lee/myapplication/ScheduleListAdapter;->weekdaySdf:Ljava/text/SimpleDateFormat;

    .line 43
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/lee/myapplication/ScheduleListAdapter;->timeSdf:Ljava/text/SimpleDateFormat;

    .line 44
    return-void
.end method

.method private createScheduleItemView(Lcom/lee/myapplication/Schedule;)Landroid/view/View;
    .registers 11
    .param p1, "schedule"    # Lcom/lee/myapplication/Schedule;

    .line 151
    iget-object v0, p0, Lcom/lee/myapplication/ScheduleListAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/lee/myapplication/R$layout;->schedule_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 152
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/lee/myapplication/R$id;->scheduleTimeText:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 153
    .local v1, "timeText":Landroid/widget/TextView;
    sget v2, Lcom/lee/myapplication/R$id;->scheduleTitleText:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 154
    .local v2, "titleText":Landroid/widget/TextView;
    sget v3, Lcom/lee/myapplication/R$id;->scheduleDescText:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 155
    .local v3, "descText":Landroid/widget/TextView;
    sget v4, Lcom/lee/myapplication/R$id;->categoryIndicator:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 158
    .local v4, "categoryIndicator":Landroid/view/View;
    invoke-virtual {p1}, Lcom/lee/myapplication/Schedule;->isAllDay()Z

    move-result v5

    if-eqz v5, :cond_33

    .line 159
    const-string v5, "\u5168\u5929"

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_69

    .line 162
    :cond_33
    iget-object v5, p0, Lcom/lee/myapplication/ScheduleListAdapter;->timeSdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Lcom/lee/myapplication/Schedule;->getStartTime()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 163
    .local v5, "startTime":Ljava/lang/String;
    iget-object v6, p0, Lcom/lee/myapplication/ScheduleListAdapter;->timeSdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Lcom/lee/myapplication/Schedule;->getEndTime()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 164
    .local v6, "endTime":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\u81f3 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 165
    .local v7, "timeRange":Ljava/lang/String;
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    .end local v5    # "startTime":Ljava/lang/String;
    .end local v6    # "endTime":Ljava/lang/String;
    .end local v7    # "timeRange":Ljava/lang/String;
    :goto_69
    invoke-virtual {p1}, Lcom/lee/myapplication/Schedule;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    invoke-virtual {p1}, Lcom/lee/myapplication/Schedule;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    invoke-virtual {p1}, Lcom/lee/myapplication/Schedule;->getCategory()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/lee/myapplication/ScheduleListAdapter;->getCategoryColorIndex(Ljava/lang/String;)I

    move-result v5

    .line 174
    .local v5, "colorIndex":I
    iget-object v6, p0, Lcom/lee/myapplication/ScheduleListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/lee/myapplication/ScheduleListAdapter;->categoryColors:[I

    aget v7, v7, v5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 176
    return-object v0
.end method

.method private getCategoryColorIndex(Ljava/lang/String;)I
    .registers 6
    .param p1, "category"    # Ljava/lang/String;

    .line 180
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

    .line 184
    const/4 v0, 0x3

    return v0

    .line 183
    :pswitch_2f
    return v1

    .line 182
    :pswitch_30
    return v2

    .line 181
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


# virtual methods
.method public getCount()I
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/lee/myapplication/ScheduleListAdapter;->daySchedulesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .line 90
    iget-object v0, p0, Lcom/lee/myapplication/ScheduleListAdapter;->daySchedulesList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .line 95
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 102
    if-nez p2, :cond_3d

    .line 103
    iget-object v0, p0, Lcom/lee/myapplication/ScheduleListAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/lee/myapplication/R$layout;->schedule_list_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 104
    new-instance v0, Lcom/lee/myapplication/ScheduleListAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lee/myapplication/ScheduleListAdapter$ViewHolder;-><init>(Lcom/lee/myapplication/ScheduleListAdapter$1;)V

    .line 105
    .local v0, "holder":Lcom/lee/myapplication/ScheduleListAdapter$ViewHolder;
    sget v1, Lcom/lee/myapplication/R$id;->dateText:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/lee/myapplication/ScheduleListAdapter$ViewHolder;->dateText:Landroid/widget/TextView;

    .line 106
    sget v1, Lcom/lee/myapplication/R$id;->weekdayText:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/lee/myapplication/ScheduleListAdapter$ViewHolder;->weekdayText:Landroid/widget/TextView;

    .line 107
    sget v1, Lcom/lee/myapplication/R$id;->lunarDateText:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/lee/myapplication/ScheduleListAdapter$ViewHolder;->lunarDateText:Landroid/widget/TextView;

    .line 108
    sget v1, Lcom/lee/myapplication/R$id;->scheduleItemContainer:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/lee/myapplication/ScheduleListAdapter$ViewHolder;->scheduleItemContainer:Landroid/widget/LinearLayout;

    .line 109
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_43

    .line 111
    .end local v0    # "holder":Lcom/lee/myapplication/ScheduleListAdapter$ViewHolder;
    :cond_3d
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lee/myapplication/ScheduleListAdapter$ViewHolder;

    .line 114
    .restart local v0    # "holder":Lcom/lee/myapplication/ScheduleListAdapter$ViewHolder;
    :goto_43
    iget-object v1, p0, Lcom/lee/myapplication/ScheduleListAdapter;->daySchedulesList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lee/myapplication/ScheduleListAdapter$DaySchedules;

    .line 115
    .local v1, "daySchedules":Lcom/lee/myapplication/ScheduleListAdapter$DaySchedules;
    iget-object v2, v1, Lcom/lee/myapplication/ScheduleListAdapter$DaySchedules;->date:Ljava/util/Calendar;

    .line 118
    .local v2, "date":Ljava/util/Calendar;
    iget-object v3, v0, Lcom/lee/myapplication/ScheduleListAdapter$ViewHolder;->dateText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/lee/myapplication/ScheduleListAdapter;->dateSdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v3, v0, Lcom/lee/myapplication/ScheduleListAdapter$ViewHolder;->weekdayText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/lee/myapplication/ScheduleListAdapter;->weekdaySdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    :try_start_6b
    iget-object v3, v0, Lcom/lee/myapplication/ScheduleListAdapter$ViewHolder;->lunarDateText:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/lee/myapplication/LunarCalendarUtil;->getLunarDate(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_74} :catch_75

    .line 129
    goto :goto_80

    .line 126
    :catch_75
    move-exception v3

    .line 127
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 128
    iget-object v4, v0, Lcom/lee/myapplication/ScheduleListAdapter$ViewHolder;->lunarDateText:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_80
    iget-object v3, v0, Lcom/lee/myapplication/ScheduleListAdapter$ViewHolder;->scheduleItemContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 135
    iget-object v3, v1, Lcom/lee/myapplication/ScheduleListAdapter$DaySchedules;->schedules:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lee/myapplication/Schedule;

    .line 136
    .local v4, "schedule":Lcom/lee/myapplication/Schedule;
    invoke-direct {p0, v4}, Lcom/lee/myapplication/ScheduleListAdapter;->createScheduleItemView(Lcom/lee/myapplication/Schedule;)Landroid/view/View;

    move-result-object v5

    .line 137
    .local v5, "scheduleItemView":Landroid/view/View;
    iget-object v6, v0, Lcom/lee/myapplication/ScheduleListAdapter$ViewHolder;->scheduleItemContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 140
    new-instance v6, Lcom/lee/myapplication/ScheduleListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, v4}, Lcom/lee/myapplication/ScheduleListAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/lee/myapplication/ScheduleListAdapter;Lcom/lee/myapplication/Schedule;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    .end local v4    # "schedule":Lcom/lee/myapplication/Schedule;
    .end local v5    # "scheduleItemView":Landroid/view/View;
    goto :goto_8b

    .line 147
    :cond_a9
    return-object p2
.end method

.method synthetic lambda$getView$0$com-lee-myapplication-ScheduleListAdapter(Lcom/lee/myapplication/Schedule;Landroid/view/View;)V
    .registers 7
    .param p1, "schedule"    # Lcom/lee/myapplication/Schedule;
    .param p2, "v"    # Landroid/view/View;

    .line 141
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lee/myapplication/ScheduleListAdapter;->context:Landroid/content/Context;

    const-class v2, Lcom/lee/myapplication/ScheduleDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 142
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "schedule_id"

    invoke-virtual {p1}, Lcom/lee/myapplication/Schedule;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 143
    iget-object v1, p0, Lcom/lee/myapplication/ScheduleListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 144
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lee/myapplication/Schedule;",
            ">;)V"
        }
    .end annotation

    .line 48
    .local p1, "schedules":Ljava/util/List;, "Ljava/util/List<Lcom/lee/myapplication/Schedule;>;"
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 50
    .local v0, "dateMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/lee/myapplication/Schedule;>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lee/myapplication/Schedule;

    .line 51
    .local v2, "schedule":Lcom/lee/myapplication/Schedule;
    invoke-virtual {v2}, Lcom/lee/myapplication/Schedule;->getStartTime()Ljava/util/Calendar;

    move-result-object v3

    .line 52
    .local v3, "calendar":Ljava/util/Calendar;
    iget-object v4, p0, Lcom/lee/myapplication/ScheduleListAdapter;->dateSdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 54
    .local v4, "dateKey":Ljava/lang/String;
    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_31

    .line 55
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_31
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    .end local v2    # "schedule":Lcom/lee/myapplication/Schedule;
    .end local v3    # "calendar":Ljava/util/Calendar;
    .end local v4    # "dateKey":Ljava/lang/String;
    goto :goto_9

    .line 61
    :cond_3b
    iget-object v1, p0, Lcom/lee/myapplication/ScheduleListAdapter;->daySchedulesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 62
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_48
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_82

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 63
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/lee/myapplication/Schedule;>;>;"
    new-instance v3, Lcom/lee/myapplication/ScheduleListAdapter$DaySchedules;

    invoke-direct {v3}, Lcom/lee/myapplication/ScheduleListAdapter$DaySchedules;-><init>()V

    .line 67
    .local v3, "daySchedules":Lcom/lee/myapplication/ScheduleListAdapter$DaySchedules;
    :try_start_59
    iget-object v4, p0, Lcom/lee/myapplication/ScheduleListAdapter;->dateSdf:Ljava/text/SimpleDateFormat;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 68
    .local v4, "date":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 69
    .local v5, "calendar":Ljava/util/Calendar;
    invoke-virtual {v5, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 71
    iput-object v5, v3, Lcom/lee/myapplication/ScheduleListAdapter$DaySchedules;->date:Ljava/util/Calendar;

    .line 72
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    iput-object v6, v3, Lcom/lee/myapplication/ScheduleListAdapter$DaySchedules;->schedules:Ljava/util/List;

    .line 74
    iget-object v6, p0, Lcom/lee/myapplication/ScheduleListAdapter;->daySchedulesList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_7b} :catch_7d

    .line 77
    nop

    .end local v4    # "date":Ljava/util/Date;
    .end local v5    # "calendar":Ljava/util/Calendar;
    goto :goto_81

    .line 75
    :catch_7d
    move-exception v4

    .line 76
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 78
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/lee/myapplication/Schedule;>;>;"
    .end local v3    # "daySchedules":Lcom/lee/myapplication/ScheduleListAdapter$DaySchedules;
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_81
    goto :goto_48

    .line 80
    :cond_82
    invoke-virtual {p0}, Lcom/lee/myapplication/ScheduleListAdapter;->notifyDataSetChanged()V

    .line 81
    return-void
.end method
