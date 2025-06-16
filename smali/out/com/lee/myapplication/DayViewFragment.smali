.class public Lcom/lee/myapplication/DayViewFragment;
.super Landroidx/fragment/app/Fragment;
.source "DayViewFragment.java"


# instance fields
.field private currentDate:Ljava/util/Calendar;

.field private dateFormat:Ljava/text/SimpleDateFormat;

.field private dateText:Landroid/widget/TextView;

.field private dayNextBtn:Landroid/widget/Button;

.field private dayPrevBtn:Landroid/widget/Button;

.field private dayTodayBtn:Landroid/widget/Button;

.field private dbHelper:Lcom/lee/myapplication/DatabaseHelper;

.field private fab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field private isFragmentActive:Z

.field private timeSlotContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lee/myapplication/DayViewFragment;->isFragmentActive:Z

    return-void
.end method

.method private setupFab()V
    .registers 3

    .line 92
    iget-object v0, p0, Lcom/lee/myapplication/DayViewFragment;->fab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance v1, Lcom/lee/myapplication/DayViewFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/lee/myapplication/DayViewFragment$$ExternalSyntheticLambda0;-><init>(Lcom/lee/myapplication/DayViewFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-void
.end method

.method private updateDayView()V
    .registers 12

    .line 100
    iget-boolean v0, p0, Lcom/lee/myapplication/DayViewFragment;->isFragmentActive:Z

    if-eqz v0, :cond_d6

    invoke-virtual {p0}, Lcom/lee/myapplication/DayViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_c

    goto/16 :goto_d6

    .line 103
    :cond_c
    iget-object v0, p0, Lcom/lee/myapplication/DayViewFragment;->dateText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lee/myapplication/DayViewFragment;->dateFormat:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/lee/myapplication/DayViewFragment;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/lee/myapplication/DayViewFragment;->timeSlotContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 110
    :try_start_22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v0, "schedules":Ljava/util/List;, "Ljava/util/List<Lcom/lee/myapplication/Schedule;>;"
    iget-object v1, p0, Lcom/lee/myapplication/DayViewFragment;->dbHelper:Lcom/lee/myapplication/DatabaseHelper;

    if-eqz v1, :cond_34

    .line 113
    iget-object v1, p0, Lcom/lee/myapplication/DayViewFragment;->dbHelper:Lcom/lee/myapplication/DatabaseHelper;

    iget-object v2, p0, Lcom/lee/myapplication/DayViewFragment;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Lcom/lee/myapplication/DatabaseHelper;->getSchedulesByDate(Ljava/util/Calendar;)Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .line 117
    :cond_34
    const/4 v1, 0x0

    .local v1, "hour":I
    :goto_35
    const/16 v2, 0x18

    if-ge v1, v2, :cond_d0

    .line 118
    invoke-virtual {p0}, Lcom/lee/myapplication/DayViewFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/lee/myapplication/R$layout;->day_time_slot_item:I

    iget-object v4, p0, Lcom/lee/myapplication/DayViewFragment;->timeSlotContainer:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 121
    .local v2, "timeSlotView":Landroid/view/View;
    sget v3, Lcom/lee/myapplication/R$id;->timeText:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 122
    .local v3, "timeText":Landroid/widget/TextView;
    sget v4, Lcom/lee/myapplication/R$id;->scheduleContainer:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 124
    .local v4, "scheduleContainer":Landroid/widget/LinearLayout;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const-string v6, "%02d:00"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_73
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lee/myapplication/Schedule;

    .line 128
    .local v6, "schedule":Lcom/lee/myapplication/Schedule;
    invoke-virtual {v6}, Lcom/lee/myapplication/Schedule;->getStartTime()Ljava/util/Calendar;

    move-result-object v7

    const/16 v8, 0xb

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 129
    .local v7, "startHour":I
    invoke-virtual {v6}, Lcom/lee/myapplication/Schedule;->getEndTime()Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 131
    .local v8, "endHour":I
    if-gt v7, v1, :cond_a1

    if-ge v1, v8, :cond_a1

    .line 132
    new-instance v9, Lcom/lee/myapplication/ScheduleView;

    invoke-virtual {p0}, Lcom/lee/myapplication/DayViewFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10, v6}, Lcom/lee/myapplication/ScheduleView;-><init>(Landroid/content/Context;Lcom/lee/myapplication/Schedule;)V

    .line 133
    .local v9, "scheduleView":Lcom/lee/myapplication/ScheduleView;
    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 135
    .end local v6    # "schedule":Lcom/lee/myapplication/Schedule;
    .end local v7    # "startHour":I
    .end local v8    # "endHour":I
    .end local v9    # "scheduleView":Lcom/lee/myapplication/ScheduleView;
    :cond_a1
    goto :goto_73

    .line 137
    :cond_a2
    iget-object v5, p0, Lcom/lee/myapplication/DayViewFragment;->timeSlotContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 140
    new-instance v5, Landroid/view/View;

    invoke-virtual {p0}, Lcom/lee/myapplication/DayViewFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 141
    .local v5, "divider":Landroid/view/View;
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    invoke-virtual {p0}, Lcom/lee/myapplication/DayViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x1060000

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 144
    iget-object v6, p0, Lcom/lee/myapplication/DayViewFragment;->timeSlotContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_cc} :catch_d1

    .line 117
    .end local v2    # "timeSlotView":Landroid/view/View;
    .end local v3    # "timeText":Landroid/widget/TextView;
    .end local v4    # "scheduleContainer":Landroid/widget/LinearLayout;
    .end local v5    # "divider":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_35

    .line 148
    .end local v0    # "schedules":Ljava/util/List;, "Ljava/util/List<Lcom/lee/myapplication/Schedule;>;"
    .end local v1    # "hour":I
    :cond_d0
    goto :goto_d5

    .line 146
    :catch_d1
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 149
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_d5
    return-void

    .line 100
    :cond_d6
    :goto_d6
    return-void
.end method


# virtual methods
.method synthetic lambda$onCreateView$0$com-lee-myapplication-DayViewFragment(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 47
    iget-object v0, p0, Lcom/lee/myapplication/DayViewFragment;->currentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 48
    invoke-direct {p0}, Lcom/lee/myapplication/DayViewFragment;->updateDayView()V

    .line 49
    return-void
.end method

.method synthetic lambda$onCreateView$1$com-lee-myapplication-DayViewFragment(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 52
    iget-object v0, p0, Lcom/lee/myapplication/DayViewFragment;->currentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 53
    invoke-direct {p0}, Lcom/lee/myapplication/DayViewFragment;->updateDayView()V

    .line 54
    return-void
.end method

.method synthetic lambda$onCreateView$2$com-lee-myapplication-DayViewFragment(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .line 57
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/lee/myapplication/DayViewFragment;->currentDate:Ljava/util/Calendar;

    .line 58
    invoke-direct {p0}, Lcom/lee/myapplication/DayViewFragment;->updateDayView()V

    .line 59
    return-void
.end method

.method synthetic lambda$setupFab$3$com-lee-myapplication-DayViewFragment(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .line 93
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/lee/myapplication/DayViewFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/lee/myapplication/EditScheduleActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/lee/myapplication/DayViewFragment;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const-string v3, "selected_date"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 95
    invoke-virtual {p0, v0}, Lcom/lee/myapplication/DayViewFragment;->startActivity(Landroid/content/Intent;)V

    .line 96
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lee/myapplication/DayViewFragment;->isFragmentActive:Z

    .line 32
    sget v0, Lcom/lee/myapplication/R$layout;->fragment_day_view:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 34
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/lee/myapplication/R$id;->dateText:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lee/myapplication/DayViewFragment;->dateText:Landroid/widget/TextView;

    .line 35
    sget v1, Lcom/lee/myapplication/R$id;->timeSlotContainer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lee/myapplication/DayViewFragment;->timeSlotContainer:Landroid/widget/LinearLayout;

    .line 36
    sget v1, Lcom/lee/myapplication/R$id;->fab:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object v1, p0, Lcom/lee/myapplication/DayViewFragment;->fab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 37
    sget v1, Lcom/lee/myapplication/R$id;->dayPrevBtn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/lee/myapplication/DayViewFragment;->dayPrevBtn:Landroid/widget/Button;

    .line 38
    sget v1, Lcom/lee/myapplication/R$id;->dayNextBtn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/lee/myapplication/DayViewFragment;->dayNextBtn:Landroid/widget/Button;

    .line 39
    sget v1, Lcom/lee/myapplication/R$id;->dayTodayBtn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/lee/myapplication/DayViewFragment;->dayTodayBtn:Landroid/widget/Button;

    .line 41
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/lee/myapplication/DayViewFragment;->currentDate:Ljava/util/Calendar;

    .line 42
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy\u5e74MM\u6708dd\u65e5 E"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/lee/myapplication/DayViewFragment;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 43
    new-instance v1, Lcom/lee/myapplication/DatabaseHelper;

    invoke-virtual {p0}, Lcom/lee/myapplication/DayViewFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lee/myapplication/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lee/myapplication/DayViewFragment;->dbHelper:Lcom/lee/myapplication/DatabaseHelper;

    .line 46
    iget-object v1, p0, Lcom/lee/myapplication/DayViewFragment;->dayPrevBtn:Landroid/widget/Button;

    new-instance v2, Lcom/lee/myapplication/DayViewFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/lee/myapplication/DayViewFragment$$ExternalSyntheticLambda1;-><init>(Lcom/lee/myapplication/DayViewFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v1, p0, Lcom/lee/myapplication/DayViewFragment;->dayNextBtn:Landroid/widget/Button;

    new-instance v2, Lcom/lee/myapplication/DayViewFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/lee/myapplication/DayViewFragment$$ExternalSyntheticLambda2;-><init>(Lcom/lee/myapplication/DayViewFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v1, p0, Lcom/lee/myapplication/DayViewFragment;->dayTodayBtn:Landroid/widget/Button;

    new-instance v2, Lcom/lee/myapplication/DayViewFragment$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/lee/myapplication/DayViewFragment$$ExternalSyntheticLambda3;-><init>(Lcom/lee/myapplication/DayViewFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    invoke-direct {p0}, Lcom/lee/myapplication/DayViewFragment;->updateDayView()V

    .line 62
    invoke-direct {p0}, Lcom/lee/myapplication/DayViewFragment;->setupFab()V

    .line 64
    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    .line 83
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lee/myapplication/DayViewFragment;->isFragmentActive:Z

    .line 85
    iget-object v0, p0, Lcom/lee/myapplication/DayViewFragment;->dbHelper:Lcom/lee/myapplication/DatabaseHelper;

    if-eqz v0, :cond_12

    .line 86
    iget-object v0, p0, Lcom/lee/myapplication/DayViewFragment;->dbHelper:Lcom/lee/myapplication/DatabaseHelper;

    invoke-virtual {v0}, Lcom/lee/myapplication/DatabaseHelper;->close()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lee/myapplication/DayViewFragment;->dbHelper:Lcom/lee/myapplication/DatabaseHelper;

    .line 89
    :cond_12
    return-void
.end method

.method public onPause()V
    .registers 2

    .line 77
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lee/myapplication/DayViewFragment;->isFragmentActive:Z

    .line 79
    return-void
.end method

.method public onResume()V
    .registers 2

    .line 69
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lee/myapplication/DayViewFragment;->isFragmentActive:Z

    .line 72
    invoke-direct {p0}, Lcom/lee/myapplication/DayViewFragment;->updateDayView()V

    .line 73
    return-void
.end method
