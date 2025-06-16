.class public Lcom/lee/myapplication/CalendarAdapter;
.super Landroid/widget/BaseAdapter;
.source "CalendarAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lee/myapplication/CalendarAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private days:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lee/myapplication/CalendarDay;",
            ">;"
        }
    .end annotation
.end field

.field private inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/lee/myapplication/CalendarDay;",
            ">;)V"
        }
    .end annotation

    .line 18
    .local p2, "days":Ljava/util/List;, "Ljava/util/List<Lcom/lee/myapplication/CalendarDay;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/lee/myapplication/CalendarAdapter;->context:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lcom/lee/myapplication/CalendarAdapter;->days:Ljava/util/List;

    .line 21
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lee/myapplication/CalendarAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 22
    return-void
.end method

.method private dpToPx(I)I
    .registers 4
    .param p1, "dp"    # I

    .line 172
    iget-object v0, p0, Lcom/lee/myapplication/CalendarAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 173
    .local v0, "density":F
    int-to-float v1, p1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/lee/myapplication/CalendarAdapter;->days:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .line 31
    iget-object v0, p0, Lcom/lee/myapplication/CalendarAdapter;->days:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .line 36
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 25
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 43
    move-object/from16 v1, p0

    const/4 v2, 0x0

    if-nez p2, :cond_39

    .line 44
    iget-object v0, v1, Lcom/lee/myapplication/CalendarAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/lee/myapplication/R$layout;->calendar_day_item:I

    move-object/from16 v4, p3

    invoke-virtual {v0, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 45
    .end local p2    # "convertView":Landroid/view/View;
    .local v0, "convertView":Landroid/view/View;
    new-instance v3, Lcom/lee/myapplication/CalendarAdapter$ViewHolder;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lcom/lee/myapplication/CalendarAdapter$ViewHolder;-><init>(Lcom/lee/myapplication/CalendarAdapter$1;)V

    .line 46
    .local v3, "holder":Lcom/lee/myapplication/CalendarAdapter$ViewHolder;
    sget v5, Lcom/lee/myapplication/R$id;->dayText:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/lee/myapplication/CalendarAdapter$ViewHolder;->dayText:Landroid/widget/TextView;

    .line 47
    sget v5, Lcom/lee/myapplication/R$id;->lunarText:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/lee/myapplication/CalendarAdapter$ViewHolder;->lunarText:Landroid/widget/TextView;

    .line 48
    sget v5, Lcom/lee/myapplication/R$id;->scheduleContainer:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, v3, Lcom/lee/myapplication/CalendarAdapter$ViewHolder;->scheduleContainer:Landroid/widget/LinearLayout;

    .line 49
    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v5, v3

    move-object v3, v0

    goto :goto_45

    .line 51
    .end local v0    # "convertView":Landroid/view/View;
    .end local v3    # "holder":Lcom/lee/myapplication/CalendarAdapter$ViewHolder;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_39
    move-object/from16 v4, p3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/lee/myapplication/CalendarAdapter$ViewHolder;

    move-object v5, v3

    move-object/from16 v3, p2

    .line 54
    .end local p2    # "convertView":Landroid/view/View;
    .local v3, "convertView":Landroid/view/View;
    .local v5, "holder":Lcom/lee/myapplication/CalendarAdapter$ViewHolder;
    :goto_45
    iget-object v0, v1, Lcom/lee/myapplication/CalendarAdapter;->days:Ljava/util/List;

    move/from16 v6, p1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/lee/myapplication/CalendarDay;

    .line 55
    .local v7, "day":Lcom/lee/myapplication/CalendarDay;
    iget-object v0, v5, Lcom/lee/myapplication/CalendarAdapter$ViewHolder;->dayText:Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/lee/myapplication/CalendarDay;->getDay()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, v5, Lcom/lee/myapplication/CalendarAdapter$ViewHolder;->dayText:Landroid/widget/TextView;

    const v8, 0x106000d

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 59
    iget-object v0, v5, Lcom/lee/myapplication/CalendarAdapter$ViewHolder;->dayText:Landroid/widget/TextView;

    iget-object v8, v1, Lcom/lee/myapplication/CalendarAdapter;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v7}, Lcom/lee/myapplication/CalendarDay;->isCurrentMonth()Z

    move-result v9

    const/high16 v10, 0x1060000

    if-eqz v9, :cond_79

    .line 60
    const v9, 0x106000c

    goto :goto_7a

    :cond_79
    move v9, v10

    .line 59
    :goto_7a
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    iget-object v0, v5, Lcom/lee/myapplication/CalendarAdapter$ViewHolder;->scheduleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 64
    invoke-virtual {v7}, Lcom/lee/myapplication/CalendarDay;->isToday()Z

    move-result v0

    const v8, 0x106000b

    if-eqz v0, :cond_a6

    .line 65
    iget-object v0, v5, Lcom/lee/myapplication/CalendarAdapter$ViewHolder;->dayText:Landroid/widget/TextView;

    sget v9, Lcom/lee/myapplication/R$drawable;->today_background:I

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 66
    iget-object v0, v5, Lcom/lee/myapplication/CalendarAdapter$ViewHolder;->dayText:Landroid/widget/TextView;

    iget-object v9, v1, Lcom/lee/myapplication/CalendarAdapter;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_c2

    .line 67
    :cond_a6
    invoke-virtual {v7}, Lcom/lee/myapplication/CalendarDay;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 68
    iget-object v0, v5, Lcom/lee/myapplication/CalendarAdapter$ViewHolder;->dayText:Landroid/widget/TextView;

    sget v9, Lcom/lee/myapplication/R$drawable;->selected_background:I

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 69
    iget-object v0, v5, Lcom/lee/myapplication/CalendarAdapter$ViewHolder;->dayText:Landroid/widget/TextView;

    iget-object v9, v1, Lcom/lee/myapplication/CalendarAdapter;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    :cond_c2
    :goto_c2
    iget-object v0, v5, Lcom/lee/myapplication/CalendarAdapter$ViewHolder;->lunarText:Landroid/widget/TextView;

    const-string v8, ""

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-virtual {v7}, Lcom/lee/myapplication/CalendarDay;->isCurrentMonth()Z

    move-result v0

    if-eqz v0, :cond_e6

    .line 75
    iget-object v0, v5, Lcom/lee/myapplication/CalendarAdapter$ViewHolder;->lunarText:Landroid/widget/TextView;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setAlpha(F)V

    .line 76
    iget-object v0, v5, Lcom/lee/myapplication/CalendarAdapter$ViewHolder;->lunarText:Landroid/widget/TextView;

    iget-object v9, v1, Lcom/lee/myapplication/CalendarAdapter;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_fc

    .line 78
    :cond_e6
    iget-object v0, v5, Lcom/lee/myapplication/CalendarAdapter$ViewHolder;->lunarText:Landroid/widget/TextView;

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setAlpha(F)V

    .line 79
    iget-object v0, v5, Lcom/lee/myapplication/CalendarAdapter$ViewHolder;->lunarText:Landroid/widget/TextView;

    iget-object v9, v1, Lcom/lee/myapplication/CalendarAdapter;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    :goto_fc
    invoke-virtual {v7}, Lcom/lee/myapplication/CalendarDay;->getFirstHoliday()Lcom/lee/myapplication/Holiday;

    move-result-object v9

    .line 84
    .local v9, "firstHoliday":Lcom/lee/myapplication/Holiday;
    const v0, 0x1060016

    if-eqz v9, :cond_139

    .line 86
    iget-object v8, v5, Lcom/lee/myapplication/CalendarAdapter$ViewHolder;->lunarText:Landroid/widget/TextView;

    invoke-virtual {v9}, Lcom/lee/myapplication/Holiday;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v8, v5, Lcom/lee/myapplication/CalendarAdapter$ViewHolder;->lunarText:Landroid/widget/TextView;

    iget-object v10, v1, Lcom/lee/myapplication/CalendarAdapter;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 90
    invoke-virtual {v9}, Lcom/lee/myapplication/Holiday;->isRestDay()Z

    move-result v8

    if-eqz v8, :cond_186

    invoke-virtual {v7}, Lcom/lee/myapplication/CalendarDay;->isCurrentMonth()Z

    move-result v8

    if-eqz v8, :cond_186

    .line 91
    iget-object v8, v5, Lcom/lee/myapplication/CalendarAdapter$ViewHolder;->dayText:Landroid/widget/TextView;

    iget-object v10, v1, Lcom/lee/myapplication/CalendarAdapter;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_186

    .line 96
    :cond_139
    :try_start_139
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 97
    .local v10, "calendar":Ljava/util/Calendar;
    invoke-virtual {v7}, Lcom/lee/myapplication/CalendarDay;->getYear()I

    move-result v11

    invoke-virtual {v7}, Lcom/lee/myapplication/CalendarDay;->getMonth()I

    move-result v12

    invoke-virtual {v7}, Lcom/lee/myapplication/CalendarDay;->getDay()I

    move-result v13

    invoke-virtual {v10, v11, v12, v13}, Ljava/util/Calendar;->set(III)V

    .line 98
    invoke-static {v10}, Lcom/lee/myapplication/LunarCalendarUtil;->getLunarDate(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v11

    .line 99
    .local v11, "lunarDate":Ljava/lang/String;
    iget-object v12, v5, Lcom/lee/myapplication/CalendarAdapter$ViewHolder;->lunarText:Landroid/widget/TextView;

    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-virtual {v7}, Lcom/lee/myapplication/CalendarDay;->isWeekend()Z

    move-result v12

    if-eqz v12, :cond_17c

    invoke-virtual {v7}, Lcom/lee/myapplication/CalendarDay;->isCurrentMonth()Z

    move-result v12

    if-eqz v12, :cond_17c

    .line 103
    invoke-virtual {v7}, Lcom/lee/myapplication/CalendarDay;->isToday()Z

    move-result v12

    if-nez v12, :cond_17c

    invoke-virtual {v7}, Lcom/lee/myapplication/CalendarDay;->isSelected()Z

    move-result v12

    if-nez v12, :cond_17c

    .line 104
    iget-object v12, v5, Lcom/lee/myapplication/CalendarAdapter$ViewHolder;->dayText:Landroid/widget/TextView;

    iget-object v13, v1, Lcom/lee/myapplication/CalendarAdapter;->context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_17c
    .catch Ljava/lang/Exception; {:try_start_139 .. :try_end_17c} :catch_17d

    .line 110
    .end local v10    # "calendar":Ljava/util/Calendar;
    .end local v11    # "lunarDate":Ljava/lang/String;
    :cond_17c
    goto :goto_186

    .line 106
    :catch_17d
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 109
    iget-object v10, v5, Lcom/lee/myapplication/CalendarAdapter$ViewHolder;->lunarText:Landroid/widget/TextView;

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_186
    :goto_186
    invoke-virtual {v7}, Lcom/lee/myapplication/CalendarDay;->getSchedules()Ljava/util/List;

    move-result-object v0

    .line 115
    .local v0, "schedules":Ljava/util/List;, "Ljava/util/List<Lcom/lee/myapplication/Schedule;>;"
    if-eqz v0, :cond_28a

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_28a

    .line 117
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 119
    .local v8, "cellHeight":I
    const/16 v10, 0x46

    invoke-direct {v1, v10}, Lcom/lee/myapplication/CalendarAdapter;->dpToPx(I)I

    move-result v10

    sub-int v10, v8, v10

    .line 121
    .local v10, "availableSpace":I
    const/16 v11, 0x12

    invoke-direct {v1, v11}, Lcom/lee/myapplication/CalendarAdapter;->dpToPx(I)I

    move-result v11

    .line 124
    .local v11, "scheduleHeight":I
    div-int v12, v10, v11

    const/4 v13, 0x3

    invoke-static {v13, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    const/4 v14, 0x1

    invoke-static {v14, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 126
    .local v12, "maxSchedulesToShow":I
    const/4 v15, 0x0

    .line 127
    .local v15, "count":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1b5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_21f

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v14, v17

    check-cast v14, Lcom/lee/myapplication/Schedule;

    .line 128
    .local v14, "schedule":Lcom/lee/myapplication/Schedule;
    if-lt v15, v12, :cond_1cc

    move-object/from16 v18, v7

    move/from16 v19, v8

    move-object/from16 v20, v9

    goto :goto_225

    .line 130
    :cond_1cc
    new-instance v2, Lcom/lee/myapplication/ScheduleView;

    iget-object v13, v1, Lcom/lee/myapplication/CalendarAdapter;->context:Landroid/content/Context;

    invoke-direct {v2, v13, v14}, Lcom/lee/myapplication/ScheduleView;-><init>(Landroid/content/Context;Lcom/lee/myapplication/Schedule;)V

    .line 132
    .local v2, "scheduleView":Lcom/lee/myapplication/ScheduleView;
    const/16 v13, 0xc

    invoke-direct {v1, v13}, Lcom/lee/myapplication/CalendarAdapter;->dpToPx(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/lee/myapplication/ScheduleView;->setMinimumHeight(I)V

    .line 134
    const/high16 v4, 0x41100000    # 9.0f

    invoke-virtual {v2, v4}, Lcom/lee/myapplication/ScheduleView;->setTextSize(F)V

    .line 136
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 138
    invoke-direct {v1, v13}, Lcom/lee/myapplication/CalendarAdapter;->dpToPx(I)I

    move-result v13

    const/4 v6, -0x1

    invoke-direct {v4, v6, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 142
    .local v4, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v6, 0x1

    invoke-direct {v1, v6}, Lcom/lee/myapplication/CalendarAdapter;->dpToPx(I)I

    move-result v13

    move-object/from16 v18, v7

    move/from16 v19, v8

    const/4 v7, 0x3

    .end local v7    # "day":Lcom/lee/myapplication/CalendarDay;
    .end local v8    # "cellHeight":I
    .local v18, "day":Lcom/lee/myapplication/CalendarDay;
    .local v19, "cellHeight":I
    invoke-direct {v1, v7}, Lcom/lee/myapplication/CalendarAdapter;->dpToPx(I)I

    move-result v8

    move-object/from16 v20, v9

    .end local v9    # "firstHoliday":Lcom/lee/myapplication/Holiday;
    .local v20, "firstHoliday":Lcom/lee/myapplication/Holiday;
    invoke-direct {v1, v6}, Lcom/lee/myapplication/CalendarAdapter;->dpToPx(I)I

    move-result v9

    invoke-direct {v1, v7}, Lcom/lee/myapplication/CalendarAdapter;->dpToPx(I)I

    move-result v6

    invoke-virtual {v4, v13, v8, v9, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 143
    invoke-virtual {v2, v4}, Lcom/lee/myapplication/ScheduleView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    iget-object v6, v5, Lcom/lee/myapplication/CalendarAdapter$ViewHolder;->scheduleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 146
    nop

    .end local v2    # "scheduleView":Lcom/lee/myapplication/ScheduleView;
    .end local v4    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v14    # "schedule":Lcom/lee/myapplication/Schedule;
    add-int/lit8 v15, v15, 0x1

    .line 147
    move/from16 v6, p1

    move-object/from16 v4, p3

    move-object/from16 v7, v18

    move/from16 v8, v19

    move-object/from16 v9, v20

    const/4 v2, 0x0

    const/4 v13, 0x3

    const/4 v14, 0x1

    goto :goto_1b5

    .line 127
    .end local v18    # "day":Lcom/lee/myapplication/CalendarDay;
    .end local v19    # "cellHeight":I
    .end local v20    # "firstHoliday":Lcom/lee/myapplication/Holiday;
    .restart local v7    # "day":Lcom/lee/myapplication/CalendarDay;
    .restart local v8    # "cellHeight":I
    .restart local v9    # "firstHoliday":Lcom/lee/myapplication/Holiday;
    :cond_21f
    move-object/from16 v18, v7

    move/from16 v19, v8

    move-object/from16 v20, v9

    .line 150
    .end local v7    # "day":Lcom/lee/myapplication/CalendarDay;
    .end local v8    # "cellHeight":I
    .end local v9    # "firstHoliday":Lcom/lee/myapplication/Holiday;
    .restart local v18    # "day":Lcom/lee/myapplication/CalendarDay;
    .restart local v19    # "cellHeight":I
    .restart local v20    # "firstHoliday":Lcom/lee/myapplication/Holiday;
    :goto_225
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v12, :cond_28e

    .line 151
    new-instance v2, Landroid/widget/TextView;

    iget-object v4, v1, Lcom/lee/myapplication/CalendarAdapter;->context:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 152
    .local v2, "moreText":Landroid/widget/TextView;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v12

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\u4e2a\u65e5\u7a0b"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v4, v1, Lcom/lee/myapplication/CalendarAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x1060013

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 154
    const/high16 v4, 0x41100000    # 9.0f

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 157
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x1

    invoke-direct {v4, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 161
    .local v4, "moreParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v6, 0x1

    invoke-direct {v1, v6}, Lcom/lee/myapplication/CalendarAdapter;->dpToPx(I)I

    move-result v7

    const/4 v8, 0x3

    invoke-direct {v1, v8}, Lcom/lee/myapplication/CalendarAdapter;->dpToPx(I)I

    move-result v8

    invoke-direct {v1, v6}, Lcom/lee/myapplication/CalendarAdapter;->dpToPx(I)I

    move-result v6

    const/4 v9, 0x0

    invoke-virtual {v4, v7, v8, v6, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 162
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    iget-object v6, v5, Lcom/lee/myapplication/CalendarAdapter$ViewHolder;->scheduleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_28e

    .line 115
    .end local v2    # "moreText":Landroid/widget/TextView;
    .end local v4    # "moreParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v10    # "availableSpace":I
    .end local v11    # "scheduleHeight":I
    .end local v12    # "maxSchedulesToShow":I
    .end local v15    # "count":I
    .end local v18    # "day":Lcom/lee/myapplication/CalendarDay;
    .end local v19    # "cellHeight":I
    .end local v20    # "firstHoliday":Lcom/lee/myapplication/Holiday;
    .restart local v7    # "day":Lcom/lee/myapplication/CalendarDay;
    .restart local v9    # "firstHoliday":Lcom/lee/myapplication/Holiday;
    :cond_28a
    move-object/from16 v18, v7

    move-object/from16 v20, v9

    .line 168
    .end local v7    # "day":Lcom/lee/myapplication/CalendarDay;
    .end local v9    # "firstHoliday":Lcom/lee/myapplication/Holiday;
    .restart local v18    # "day":Lcom/lee/myapplication/CalendarDay;
    .restart local v20    # "firstHoliday":Lcom/lee/myapplication/Holiday;
    :cond_28e
    :goto_28e
    return-object v3
.end method
