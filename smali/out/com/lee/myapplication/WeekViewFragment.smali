.class public Lcom/lee/myapplication/WeekViewFragment;
.super Landroidx/fragment/app/Fragment;
.source "WeekViewFragment.java"


# static fields
.field private static final TIME_SLOT_HEIGHT:I = 0x3c


# instance fields
.field private currentDate:Ljava/util/Calendar;

.field private dateFormat:Ljava/text/SimpleDateFormat;

.field private dbHelper:Lcom/lee/myapplication/DatabaseHelper;

.field private isFragmentActive:Z

.field private weekContainer:Landroid/widget/LinearLayout;

.field private weekDayFormat:Ljava/text/SimpleDateFormat;

.field private weekDayHeaderContainer:Landroid/widget/LinearLayout;

.field private weekNextBtn:Landroid/widget/Button;

.field private weekPrevBtn:Landroid/widget/Button;

.field private weekTodayBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lee/myapplication/WeekViewFragment;->isFragmentActive:Z

    return-void
.end method

.method private createDayColumn(Ljava/util/Calendar;)Landroid/view/View;
    .registers 24
    .param p1, "date"    # Ljava/util/Calendar;

    .line 235
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/lee/myapplication/WeekViewFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object v3, v0

    .line 236
    .local v3, "column":Landroid/widget/FrameLayout;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-direct {v0, v5, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/lee/myapplication/WeekViewFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v4, v0

    .line 244
    .local v4, "timeSlotContainer":Landroid/widget/LinearLayout;
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 245
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v0, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    iget-object v0, v1, Lcom/lee/myapplication/WeekViewFragment;->dbHelper:Lcom/lee/myapplication/DatabaseHelper;

    invoke-virtual {v0, v2}, Lcom/lee/myapplication/DatabaseHelper;->getSchedulesByDate(Ljava/util/Calendar;)Ljava/util/List;

    move-result-object v9

    .line 252
    .local v9, "schedules":Ljava/util/List;, "Ljava/util/List<Lcom/lee/myapplication/Schedule;>;"
    const/4 v10, 0x0

    .line 254
    .local v10, "holidays":Ljava/util/List;, "Ljava/util/List<Lcom/lee/myapplication/Holiday;>;"
    const/4 v11, 0x2

    :try_start_39
    iget-object v0, v1, Lcom/lee/myapplication/WeekViewFragment;->dbHelper:Lcom/lee/myapplication/DatabaseHelper;

    .line 255
    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 256
    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v13

    add-int/2addr v13, v7

    .line 257
    const/4 v14, 0x5

    invoke-virtual {v2, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    .line 254
    invoke-virtual {v0, v12, v13, v14}, Lcom/lee/myapplication/DatabaseHelper;->getHolidaysForDate(III)Ljava/util/List;

    move-result-object v0
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_4d} :catch_4f

    move-object v10, v0

    .line 261
    goto :goto_53

    .line 259
    :catch_4f
    move-exception v0

    .line 260
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 264
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_53
    const/4 v0, 0x0

    .local v0, "hour":I
    :goto_54
    const/16 v12, 0x18

    const/16 v13, 0x3c

    if-ge v0, v12, :cond_86

    .line 265
    new-instance v12, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/lee/myapplication/WeekViewFragment;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v12, v14}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 266
    .local v12, "timeSlot":Landroid/view/View;
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 268
    invoke-direct {v1, v13}, Lcom/lee/myapplication/WeekViewFragment;->dpToPx(I)I

    move-result v13

    invoke-direct {v14, v6, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 266
    invoke-virtual {v12, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    invoke-direct/range {p0 .. p1}, Lcom/lee/myapplication/WeekViewFragment;->isToday(Ljava/util/Calendar;)Z

    move-result v13

    if-eqz v13, :cond_7b

    .line 273
    sget v13, Lcom/lee/myapplication/R$drawable;->today_time_slot_background:I

    invoke-virtual {v12, v13}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_80

    .line 275
    :cond_7b
    sget v13, Lcom/lee/myapplication/R$drawable;->time_slot_background:I

    invoke-virtual {v12, v13}, Landroid/view/View;->setBackgroundResource(I)V

    .line 278
    :goto_80
    invoke-virtual {v4, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 264
    .end local v12    # "timeSlot":Landroid/view/View;
    add-int/lit8 v0, v0, 0x1

    goto :goto_54

    .line 282
    .end local v0    # "hour":I
    :cond_86
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 285
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/lee/myapplication/WeekViewFragment;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v0, v12}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 286
    .local v0, "allDayContainer":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 287
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v6, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 292
    const/4 v7, 0x0

    .line 295
    .local v7, "hasAllDaySchedules":Z
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_a2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    const/4 v15, 0x4

    if-eqz v14, :cond_ed

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/lee/myapplication/Schedule;

    .line 296
    .local v14, "schedule":Lcom/lee/myapplication/Schedule;
    invoke-virtual {v14}, Lcom/lee/myapplication/Schedule;->isAllDay()Z

    move-result v16

    if-eqz v16, :cond_e5

    .line 297
    const/4 v7, 0x1

    .line 298
    new-instance v5, Lcom/lee/myapplication/ScheduleView;

    invoke-virtual/range {p0 .. p0}, Lcom/lee/myapplication/WeekViewFragment;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v5, v13, v14}, Lcom/lee/myapplication/ScheduleView;-><init>(Landroid/content/Context;Lcom/lee/myapplication/Schedule;)V

    .line 300
    .local v5, "scheduleView":Lcom/lee/myapplication/ScheduleView;
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v13, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 304
    .local v13, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v1, v15}, Lcom/lee/myapplication/WeekViewFragment;->dpToPx(I)I

    move-result v8

    invoke-direct {v1, v11}, Lcom/lee/myapplication/WeekViewFragment;->dpToPx(I)I

    move-result v6

    invoke-direct {v1, v15}, Lcom/lee/myapplication/WeekViewFragment;->dpToPx(I)I

    move-result v15

    invoke-direct {v1, v11}, Lcom/lee/myapplication/WeekViewFragment;->dpToPx(I)I

    move-result v2

    invoke-virtual {v13, v8, v6, v15, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 305
    invoke-virtual {v5, v13}, Lcom/lee/myapplication/ScheduleView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 308
    new-instance v2, Lcom/lee/myapplication/WeekViewFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, v14}, Lcom/lee/myapplication/WeekViewFragment$$ExternalSyntheticLambda0;-><init>(Lcom/lee/myapplication/WeekViewFragment;Lcom/lee/myapplication/Schedule;)V

    invoke-virtual {v5, v2}, Lcom/lee/myapplication/ScheduleView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 316
    .end local v5    # "scheduleView":Lcom/lee/myapplication/ScheduleView;
    .end local v13    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v14    # "schedule":Lcom/lee/myapplication/Schedule;
    :cond_e5
    move-object/from16 v2, p1

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v8, -0x2

    const/16 v13, 0x3c

    goto :goto_a2

    .line 318
    :cond_ed
    if-eqz v7, :cond_f2

    .line 319
    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 323
    :cond_f2
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lee/myapplication/Schedule;

    .line 324
    .local v5, "schedule":Lcom/lee/myapplication/Schedule;
    invoke-virtual {v5}, Lcom/lee/myapplication/Schedule;->isAllDay()Z

    move-result v6

    if-nez v6, :cond_18a

    .line 325
    new-instance v6, Lcom/lee/myapplication/ScheduleView;

    invoke-virtual/range {p0 .. p0}, Lcom/lee/myapplication/WeekViewFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8, v5}, Lcom/lee/myapplication/ScheduleView;-><init>(Landroid/content/Context;Lcom/lee/myapplication/Schedule;)V

    .line 328
    .local v6, "scheduleView":Lcom/lee/myapplication/ScheduleView;
    invoke-virtual {v5}, Lcom/lee/myapplication/Schedule;->getStartTime()Ljava/util/Calendar;

    move-result-object v8

    const/16 v12, 0xb

    invoke-virtual {v8, v12}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 329
    .local v8, "startHour":I
    invoke-virtual {v5}, Lcom/lee/myapplication/Schedule;->getStartTime()Ljava/util/Calendar;

    move-result-object v13

    const/16 v14, 0xc

    invoke-virtual {v13, v14}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 330
    .local v13, "startMinute":I
    invoke-virtual {v5}, Lcom/lee/myapplication/Schedule;->getEndTime()Ljava/util/Calendar;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 331
    .local v11, "endHour":I
    invoke-virtual {v5}, Lcom/lee/myapplication/Schedule;->getEndTime()Ljava/util/Calendar;

    move-result-object v12

    invoke-virtual {v12, v14}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 334
    .local v12, "endMinute":I
    mul-int/lit8 v14, v8, 0x3c

    add-int/2addr v14, v13

    const/16 v15, 0x3c

    invoke-direct {v1, v15}, Lcom/lee/myapplication/WeekViewFragment;->dpToPx(I)I

    move-result v17

    mul-int v14, v14, v17

    div-int/2addr v14, v15

    .line 337
    .local v14, "topMargin":I
    mul-int/lit8 v15, v11, 0x3c

    add-int/2addr v15, v12

    mul-int/lit8 v19, v8, 0x3c

    add-int v19, v19, v13

    sub-int v15, v15, v19

    .line 338
    .local v15, "duration":I
    move-object/from16 v19, v0

    .end local v0    # "allDayContainer":Landroid/widget/LinearLayout;
    .local v19, "allDayContainer":Landroid/widget/LinearLayout;
    const/16 v0, 0x1e

    invoke-direct {v1, v0}, Lcom/lee/myapplication/WeekViewFragment;->dpToPx(I)I

    move-result v0

    move-object/from16 v20, v2

    const/16 v2, 0x3c

    invoke-direct {v1, v2}, Lcom/lee/myapplication/WeekViewFragment;->dpToPx(I)I

    move-result v17

    mul-int v17, v17, v15

    move-object/from16 v21, v4

    .end local v4    # "timeSlotContainer":Landroid/widget/LinearLayout;
    .local v21, "timeSlotContainer":Landroid/widget/LinearLayout;
    div-int/lit8 v4, v17, 0x3c

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 341
    .local v0, "height":I
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v4, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 345
    .local v4, "params":Landroid/widget/FrameLayout$LayoutParams;
    iput v14, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 346
    move/from16 v18, v0

    const/4 v2, 0x4

    .end local v0    # "height":I
    .local v18, "height":I
    invoke-direct {v1, v2}, Lcom/lee/myapplication/WeekViewFragment;->dpToPx(I)I

    move-result v0

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 347
    invoke-direct {v1, v2}, Lcom/lee/myapplication/WeekViewFragment;->dpToPx(I)I

    move-result v0

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 348
    invoke-virtual {v6, v4}, Lcom/lee/myapplication/ScheduleView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 351
    new-instance v0, Lcom/lee/myapplication/WeekViewFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, v1, v5}, Lcom/lee/myapplication/WeekViewFragment$$ExternalSyntheticLambda1;-><init>(Lcom/lee/myapplication/WeekViewFragment;Lcom/lee/myapplication/Schedule;)V

    invoke-virtual {v6, v0}, Lcom/lee/myapplication/ScheduleView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_191

    .line 324
    .end local v6    # "scheduleView":Lcom/lee/myapplication/ScheduleView;
    .end local v8    # "startHour":I
    .end local v11    # "endHour":I
    .end local v12    # "endMinute":I
    .end local v13    # "startMinute":I
    .end local v14    # "topMargin":I
    .end local v15    # "duration":I
    .end local v18    # "height":I
    .end local v19    # "allDayContainer":Landroid/widget/LinearLayout;
    .end local v21    # "timeSlotContainer":Landroid/widget/LinearLayout;
    .local v0, "allDayContainer":Landroid/widget/LinearLayout;
    .local v4, "timeSlotContainer":Landroid/widget/LinearLayout;
    :cond_18a
    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v21, v4

    move v2, v15

    .line 359
    .end local v0    # "allDayContainer":Landroid/widget/LinearLayout;
    .end local v4    # "timeSlotContainer":Landroid/widget/LinearLayout;
    .end local v5    # "schedule":Lcom/lee/myapplication/Schedule;
    .restart local v19    # "allDayContainer":Landroid/widget/LinearLayout;
    .restart local v21    # "timeSlotContainer":Landroid/widget/LinearLayout;
    :goto_191
    move v15, v2

    move-object/from16 v0, v19

    move-object/from16 v2, v20

    move-object/from16 v4, v21

    const/4 v11, 0x2

    goto/16 :goto_f6

    .line 362
    .end local v19    # "allDayContainer":Landroid/widget/LinearLayout;
    .end local v21    # "timeSlotContainer":Landroid/widget/LinearLayout;
    .restart local v0    # "allDayContainer":Landroid/widget/LinearLayout;
    .restart local v4    # "timeSlotContainer":Landroid/widget/LinearLayout;
    :cond_19b
    move-object/from16 v19, v0

    move-object/from16 v21, v4

    .end local v0    # "allDayContainer":Landroid/widget/LinearLayout;
    .end local v4    # "timeSlotContainer":Landroid/widget/LinearLayout;
    .restart local v19    # "allDayContainer":Landroid/widget/LinearLayout;
    .restart local v21    # "timeSlotContainer":Landroid/widget/LinearLayout;
    if-eqz v10, :cond_1e8

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e8

    .line 363
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lee/myapplication/Holiday;

    .line 364
    .local v0, "holiday":Lcom/lee/myapplication/Holiday;
    if-eqz v0, :cond_1e8

    .line 365
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/lee/myapplication/WeekViewFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 366
    .local v2, "holidayText":Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/lee/myapplication/Holiday;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    invoke-virtual/range {p0 .. p0}, Lcom/lee/myapplication/WeekViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1060016

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 368
    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 369
    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 370
    const/4 v4, 0x2

    invoke-direct {v1, v4}, Lcom/lee/myapplication/WeekViewFragment;->dpToPx(I)I

    move-result v5

    invoke-direct {v1, v4}, Lcom/lee/myapplication/WeekViewFragment;->dpToPx(I)I

    move-result v4

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v5, v6, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 373
    invoke-virtual {v3, v2, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 377
    .end local v0    # "holiday":Lcom/lee/myapplication/Holiday;
    .end local v2    # "holidayText":Landroid/widget/TextView;
    :cond_1e8
    return-object v3
.end method

.method private createDayHeader(Ljava/util/Calendar;)Landroid/view/View;
    .registers 7
    .param p1, "date"    # Ljava/util/Calendar;

    .line 109
    invoke-virtual {p0}, Lcom/lee/myapplication/WeekViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/lee/myapplication/R$layout;->calendar_day_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 112
    .local v0, "headerView":Landroid/view/View;
    sget v1, Lcom/lee/myapplication/R$id;->dayText:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 113
    .local v1, "dayText":Landroid/widget/TextView;
    sget v2, Lcom/lee/myapplication/R$id;->lunarText:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 116
    .local v2, "lunarText":Landroid/widget/TextView;
    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    :try_start_2b
    invoke-static {p1}, Lcom/lee/myapplication/LunarCalendarUtil;->getLunarDate(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v3

    .line 121
    .local v3, "lunarDate":Ljava/lang/String;
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_32} :catch_33

    .line 125
    .end local v3    # "lunarDate":Ljava/lang/String;
    goto :goto_3c

    .line 122
    :catch_33
    move-exception v3

    .line 123
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 124
    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_3c
    invoke-direct {p0, p1}, Lcom/lee/myapplication/WeekViewFragment;->isToday(Ljava/util/Calendar;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 129
    sget v3, Lcom/lee/myapplication/R$drawable;->today_background:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 130
    invoke-virtual {p0}, Lcom/lee/myapplication/WeekViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x106000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_6a

    .line 131
    :cond_56
    invoke-direct {p0, p1}, Lcom/lee/myapplication/WeekViewFragment;->isWeekend(Ljava/util/Calendar;)Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 132
    invoke-virtual {p0}, Lcom/lee/myapplication/WeekViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1060016

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    :cond_6a
    :goto_6a
    new-instance v3, Lcom/lee/myapplication/WeekViewFragment$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1}, Lcom/lee/myapplication/WeekViewFragment$$ExternalSyntheticLambda2;-><init>(Lcom/lee/myapplication/WeekViewFragment;Ljava/util/Calendar;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    return-object v0
.end method

.method private createTimeColumn()Landroid/view/View;
    .registers 12

    .line 187
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/lee/myapplication/WeekViewFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 188
    .local v0, "column":Landroid/widget/LinearLayout;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 189
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 190
    const/16 v3, 0x32

    invoke-direct {p0, v3}, Lcom/lee/myapplication/WeekViewFragment;->dpToPx(I)I

    move-result v3

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 189
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    const/4 v2, 0x0

    .local v2, "hour":I
    :goto_1d
    const/16 v3, 0x18

    if-ge v2, v3, :cond_bc

    .line 196
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lee/myapplication/WeekViewFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 197
    .local v3, "timeSlot":Landroid/widget/TextView;
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 199
    const/16 v6, 0x3c

    invoke-direct {p0, v6}, Lcom/lee/myapplication/WeekViewFragment;->dpToPx(I)I

    move-result v7

    invoke-direct {v5, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 197
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, "%02d:00"

    invoke-static {v5, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    const/high16 v5, 0x41400000    # 12.0f

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 207
    invoke-virtual {p0}, Lcom/lee/myapplication/WeekViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v7, 0x1060000

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 208
    const v5, 0x800015

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 209
    const/4 v5, 0x4

    invoke-direct {p0, v5}, Lcom/lee/myapplication/WeekViewFragment;->dpToPx(I)I

    move-result v8

    invoke-direct {p0, v5}, Lcom/lee/myapplication/WeekViewFragment;->dpToPx(I)I

    move-result v9

    const/16 v10, 0x8

    invoke-direct {p0, v10}, Lcom/lee/myapplication/WeekViewFragment;->dpToPx(I)I

    move-result v10

    invoke-direct {p0, v5}, Lcom/lee/myapplication/WeekViewFragment;->dpToPx(I)I

    move-result v5

    invoke-virtual {v3, v8, v9, v10, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 212
    new-instance v5, Landroid/view/View;

    invoke-virtual {p0}, Lcom/lee/myapplication/WeekViewFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 213
    .local v5, "divider":Landroid/view/View;
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    invoke-virtual {p0}, Lcom/lee/myapplication/WeekViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 218
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/lee/myapplication/WeekViewFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 219
    .local v7, "hourContainer":Landroid/widget/LinearLayout;
    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 220
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 222
    invoke-direct {p0, v6}, Lcom/lee/myapplication/WeekViewFragment;->dpToPx(I)I

    move-result v6

    invoke-direct {v8, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 220
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 226
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 228
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 195
    .end local v3    # "timeSlot":Landroid/widget/TextView;
    .end local v5    # "divider":Landroid/view/View;
    .end local v7    # "hourContainer":Landroid/widget/LinearLayout;
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1d

    .line 231
    .end local v2    # "hour":I
    :cond_bc
    return-object v0
.end method

.method private dpToPx(I)I
    .registers 4
    .param p1, "dp"    # I

    .line 388
    invoke-virtual {p0}, Lcom/lee/myapplication/WeekViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 389
    .local v0, "density":F
    int-to-float v1, p1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method

.method private isToday(Ljava/util/Calendar;)Z
    .registers 6
    .param p1, "date"    # Ljava/util/Calendar;

    .line 381
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 382
    .local v0, "today":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_26

    .line 383
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v3, v2, :cond_26

    .line 384
    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v3, v2, :cond_26

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    .line 382
    :goto_27
    return v1
.end method

.method private isWeekend(Ljava/util/Calendar;)Z
    .registers 5
    .param p1, "date"    # Ljava/util/Calendar;

    .line 159
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 160
    .local v1, "dayOfWeek":I
    const/4 v2, 0x1

    if-eq v1, v0, :cond_c

    if-ne v1, v2, :cond_b

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    :cond_c
    :goto_c
    return v2
.end method

.method private updateWeekView()V
    .registers 11

    .line 74
    iget-boolean v0, p0, Lcom/lee/myapplication/WeekViewFragment;->isFragmentActive:Z

    if-eqz v0, :cond_6a

    invoke-virtual {p0}, Lcom/lee/myapplication/WeekViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_6a

    .line 76
    :cond_b
    iget-object v0, p0, Lcom/lee/myapplication/WeekViewFragment;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 79
    .local v0, "tempDate":Ljava/util/Calendar;
    iget-object v1, p0, Lcom/lee/myapplication/WeekViewFragment;->weekContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 80
    iget-object v1, p0, Lcom/lee/myapplication/WeekViewFragment;->weekDayHeaderContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 83
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lee/myapplication/WeekViewFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 84
    .local v1, "emptyHeaderView":Landroid/widget/TextView;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 85
    const/16 v3, 0x32

    invoke-direct {p0, v3}, Lcom/lee/myapplication/WeekViewFragment;->dpToPx(I)I

    move-result v3

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 84
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    iget-object v2, p0, Lcom/lee/myapplication/WeekViewFragment;->weekDayHeaderContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 89
    invoke-direct {p0}, Lcom/lee/myapplication/WeekViewFragment;->createTimeColumn()Landroid/view/View;

    move-result-object v2

    .line 90
    .local v2, "timeColumn":Landroid/view/View;
    iget-object v3, p0, Lcom/lee/myapplication/WeekViewFragment;->weekContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 93
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_44
    const/4 v5, 0x7

    if-ge v3, v5, :cond_69

    .line 95
    invoke-direct {p0, v0}, Lcom/lee/myapplication/WeekViewFragment;->createDayHeader(Ljava/util/Calendar;)Landroid/view/View;

    move-result-object v5

    .line 96
    .local v5, "headerView":Landroid/view/View;
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v6, v7, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 98
    .local v6, "headerParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v7, p0, Lcom/lee/myapplication/WeekViewFragment;->weekDayHeaderContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    invoke-direct {p0, v0}, Lcom/lee/myapplication/WeekViewFragment;->createDayColumn(Ljava/util/Calendar;)Landroid/view/View;

    move-result-object v7

    .line 102
    .local v7, "dayColumn":Landroid/view/View;
    iget-object v8, p0, Lcom/lee/myapplication/WeekViewFragment;->weekContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 104
    const/4 v8, 0x5

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->add(II)V

    .line 93
    .end local v5    # "headerView":Landroid/view/View;
    .end local v6    # "headerParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v7    # "dayColumn":Landroid/view/View;
    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    .line 106
    .end local v3    # "i":I
    :cond_69
    return-void

    .line 74
    .end local v0    # "tempDate":Ljava/util/Calendar;
    .end local v1    # "emptyHeaderView":Landroid/widget/TextView;
    .end local v2    # "timeColumn":Landroid/view/View;
    :cond_6a
    :goto_6a
    return-void
.end method


# virtual methods
.method synthetic lambda$createDayColumn$4$com-lee-myapplication-WeekViewFragment(Lcom/lee/myapplication/Schedule;Landroid/view/View;)V
    .registers 7
    .param p1, "schedule"    # Lcom/lee/myapplication/Schedule;
    .param p2, "v"    # Landroid/view/View;

    .line 309
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/lee/myapplication/WeekViewFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/lee/myapplication/ScheduleDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 310
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "schedule_id"

    invoke-virtual {p1}, Lcom/lee/myapplication/Schedule;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 311
    invoke-virtual {p0, v0}, Lcom/lee/myapplication/WeekViewFragment;->startActivity(Landroid/content/Intent;)V

    .line 312
    return-void
.end method

.method synthetic lambda$createDayColumn$5$com-lee-myapplication-WeekViewFragment(Lcom/lee/myapplication/Schedule;Landroid/view/View;)V
    .registers 7
    .param p1, "schedule"    # Lcom/lee/myapplication/Schedule;
    .param p2, "v"    # Landroid/view/View;

    .line 352
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/lee/myapplication/WeekViewFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/lee/myapplication/ScheduleDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 353
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "schedule_id"

    invoke-virtual {p1}, Lcom/lee/myapplication/Schedule;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 354
    invoke-virtual {p0, v0}, Lcom/lee/myapplication/WeekViewFragment;->startActivity(Landroid/content/Intent;)V

    .line 355
    return-void
.end method

.method synthetic lambda$createDayHeader$3$com-lee-myapplication-WeekViewFragment(Ljava/util/Calendar;Landroid/view/View;)V
    .registers 9
    .param p1, "date"    # Ljava/util/Calendar;
    .param p2, "v"    # Landroid/view/View;

    .line 138
    iget-object v0, p0, Lcom/lee/myapplication/WeekViewFragment;->dbHelper:Lcom/lee/myapplication/DatabaseHelper;

    invoke-virtual {v0, p1}, Lcom/lee/myapplication/DatabaseHelper;->getSchedulesByDate(Ljava/util/Calendar;)Ljava/util/List;

    move-result-object v0

    .line 140
    .local v0, "schedules":Ljava/util/List;, "Ljava/util/List<Lcom/lee/myapplication/Schedule;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 142
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lee/myapplication/Schedule;

    .line 143
    .local v1, "schedule":Lcom/lee/myapplication/Schedule;
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/lee/myapplication/WeekViewFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/lee/myapplication/ScheduleDetailActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 144
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "schedule_id"

    invoke-virtual {v1}, Lcom/lee/myapplication/Schedule;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 145
    invoke-virtual {p0, v2}, Lcom/lee/myapplication/WeekViewFragment;->startActivity(Landroid/content/Intent;)V

    .line 146
    .end local v1    # "schedule":Lcom/lee/myapplication/Schedule;
    .end local v2    # "intent":Landroid/content/Intent;
    goto :goto_48

    .line 148
    :cond_2b
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/lee/myapplication/WeekViewFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/lee/myapplication/EditScheduleActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 149
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    .line 150
    .local v2, "selectedDate":Ljava/util/Calendar;
    const-string v3, "selected_date"

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 151
    invoke-virtual {p0, v1}, Lcom/lee/myapplication/WeekViewFragment;->startActivity(Landroid/content/Intent;)V

    .line 153
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "selectedDate":Ljava/util/Calendar;
    :goto_48
    return-void
.end method

.method synthetic lambda$onCreateView$0$com-lee-myapplication-WeekViewFragment(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 52
    iget-object v0, p0, Lcom/lee/myapplication/WeekViewFragment;->currentDate:Ljava/util/Calendar;

    const/4 v1, 0x3

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 53
    invoke-direct {p0}, Lcom/lee/myapplication/WeekViewFragment;->updateWeekView()V

    .line 54
    return-void
.end method

.method synthetic lambda$onCreateView$1$com-lee-myapplication-WeekViewFragment(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 57
    iget-object v0, p0, Lcom/lee/myapplication/WeekViewFragment;->currentDate:Ljava/util/Calendar;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 58
    invoke-direct {p0}, Lcom/lee/myapplication/WeekViewFragment;->updateWeekView()V

    .line 59
    return-void
.end method

.method synthetic lambda$onCreateView$2$com-lee-myapplication-WeekViewFragment(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 62
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/lee/myapplication/WeekViewFragment;->currentDate:Ljava/util/Calendar;

    .line 63
    :goto_6
    iget-object v0, p0, Lcom/lee/myapplication/WeekViewFragment;->currentDate:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_18

    .line 64
    iget-object v0, p0, Lcom/lee/myapplication/WeekViewFragment;->currentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_6

    .line 66
    :cond_18
    invoke-direct {p0}, Lcom/lee/myapplication/WeekViewFragment;->updateWeekView()V

    .line 67
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lee/myapplication/WeekViewFragment;->isFragmentActive:Z

    .line 32
    sget v0, Lcom/lee/myapplication/R$layout;->fragment_week_view:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 34
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/lee/myapplication/R$id;->weekContainer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lee/myapplication/WeekViewFragment;->weekContainer:Landroid/widget/LinearLayout;

    .line 35
    sget v1, Lcom/lee/myapplication/R$id;->weekDayHeaderContainer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lee/myapplication/WeekViewFragment;->weekDayHeaderContainer:Landroid/widget/LinearLayout;

    .line 36
    sget v1, Lcom/lee/myapplication/R$id;->weekPrevBtn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/lee/myapplication/WeekViewFragment;->weekPrevBtn:Landroid/widget/Button;

    .line 37
    sget v1, Lcom/lee/myapplication/R$id;->weekNextBtn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/lee/myapplication/WeekViewFragment;->weekNextBtn:Landroid/widget/Button;

    .line 38
    sget v1, Lcom/lee/myapplication/R$id;->weekTodayBtn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/lee/myapplication/WeekViewFragment;->weekTodayBtn:Landroid/widget/Button;

    .line 40
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/lee/myapplication/WeekViewFragment;->currentDate:Ljava/util/Calendar;

    .line 41
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/lee/myapplication/WeekViewFragment;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 42
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "E"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/lee/myapplication/WeekViewFragment;->weekDayFormat:Ljava/text/SimpleDateFormat;

    .line 43
    new-instance v1, Lcom/lee/myapplication/DatabaseHelper;

    invoke-virtual {p0}, Lcom/lee/myapplication/WeekViewFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lee/myapplication/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lee/myapplication/WeekViewFragment;->dbHelper:Lcom/lee/myapplication/DatabaseHelper;

    .line 46
    :goto_67
    iget-object v1, p0, Lcom/lee/myapplication/WeekViewFragment;->currentDate:Ljava/util/Calendar;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_79

    .line 47
    iget-object v1, p0, Lcom/lee/myapplication/WeekViewFragment;->currentDate:Ljava/util/Calendar;

    const/4 v2, 0x5

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    goto :goto_67

    .line 51
    :cond_79
    iget-object v1, p0, Lcom/lee/myapplication/WeekViewFragment;->weekPrevBtn:Landroid/widget/Button;

    new-instance v2, Lcom/lee/myapplication/WeekViewFragment$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/lee/myapplication/WeekViewFragment$$ExternalSyntheticLambda3;-><init>(Lcom/lee/myapplication/WeekViewFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v1, p0, Lcom/lee/myapplication/WeekViewFragment;->weekNextBtn:Landroid/widget/Button;

    new-instance v2, Lcom/lee/myapplication/WeekViewFragment$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/lee/myapplication/WeekViewFragment$$ExternalSyntheticLambda4;-><init>(Lcom/lee/myapplication/WeekViewFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v1, p0, Lcom/lee/myapplication/WeekViewFragment;->weekTodayBtn:Landroid/widget/Button;

    new-instance v2, Lcom/lee/myapplication/WeekViewFragment$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/lee/myapplication/WeekViewFragment$$ExternalSyntheticLambda5;-><init>(Lcom/lee/myapplication/WeekViewFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    invoke-direct {p0}, Lcom/lee/myapplication/WeekViewFragment;->updateWeekView()V

    .line 70
    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    .line 178
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lee/myapplication/WeekViewFragment;->isFragmentActive:Z

    .line 180
    iget-object v0, p0, Lcom/lee/myapplication/WeekViewFragment;->dbHelper:Lcom/lee/myapplication/DatabaseHelper;

    if-eqz v0, :cond_12

    .line 181
    iget-object v0, p0, Lcom/lee/myapplication/WeekViewFragment;->dbHelper:Lcom/lee/myapplication/DatabaseHelper;

    invoke-virtual {v0}, Lcom/lee/myapplication/DatabaseHelper;->close()V

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lee/myapplication/WeekViewFragment;->dbHelper:Lcom/lee/myapplication/DatabaseHelper;

    .line 184
    :cond_12
    return-void
.end method

.method public onPause()V
    .registers 2

    .line 172
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lee/myapplication/WeekViewFragment;->isFragmentActive:Z

    .line 174
    return-void
.end method

.method public onResume()V
    .registers 2

    .line 165
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lee/myapplication/WeekViewFragment;->isFragmentActive:Z

    .line 167
    invoke-direct {p0}, Lcom/lee/myapplication/WeekViewFragment;->updateWeekView()V

    .line 168
    return-void
.end method
