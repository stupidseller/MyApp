.class public Lcom/lee/myapplication/MonthViewFragment;
.super Landroidx/fragment/app/Fragment;
.source "MonthViewFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private backgroundThread:Ljava/lang/Thread;

.field private calendarGrid:Landroid/widget/GridView;

.field private currentDate:Ljava/util/Calendar;

.field private dbHelper:Lcom/lee/myapplication/DatabaseHelper;

.field private fab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field private gestureDetector:Landroidx/core/view/GestureDetectorCompat;

.field private isFragmentActive:Z

.field private monthYearText:Landroid/widget/TextView;

.field private nextMonthBtn:Landroid/widget/Button;

.field private prevMonthBtn:Landroid/widget/Button;

.field private selectDateBtn:Landroid/widget/Button;

.field private todayBtn:Landroid/widget/Button;


# direct methods
.method public static synthetic $r8$lambda$lNf8q12fm9p9Yy18ZHvGJvz9kY0(Lcom/lee/myapplication/MonthViewFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/lee/myapplication/MonthViewFragment;->updateCalendarView()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lee/myapplication/MonthViewFragment;->isFragmentActive:Z

    return-void
.end method

.method static synthetic access$000(Lcom/lee/myapplication/MonthViewFragment;)Ljava/util/Calendar;
    .registers 2
    .param p0, "x0"    # Lcom/lee/myapplication/MonthViewFragment;

    .line 21
    iget-object v0, p0, Lcom/lee/myapplication/MonthViewFragment;->currentDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lee/myapplication/MonthViewFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/lee/myapplication/MonthViewFragment;

    .line 21
    invoke-direct {p0}, Lcom/lee/myapplication/MonthViewFragment;->updateCalendarView()V

    return-void
.end method

.method private getMonthDays()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lee/myapplication/CalendarDay;",
            ">;"
        }
    .end annotation

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .local v0, "days":Ljava/util/List;, "Ljava/util/List<Lcom/lee/myapplication/CalendarDay;>;"
    iget-object v1, p0, Lcom/lee/myapplication/MonthViewFragment;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    .line 270
    .local v1, "calendar":Ljava/util/Calendar;
    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 273
    const/4 v4, 0x7

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    sub-int/2addr v4, v3

    .line 276
    .local v4, "firstDayOfWeek":I
    neg-int v5, v4

    invoke-virtual {v1, v2, v5}, Ljava/util/Calendar;->add(II)V

    .line 279
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1d
    const/16 v6, 0x2a

    if-ge v5, v6, :cond_57

    .line 280
    new-instance v6, Lcom/lee/myapplication/CalendarDay;

    .line 281
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 282
    const/4 v8, 0x2

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 283
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-direct {v6, v7, v9, v10}, Lcom/lee/myapplication/CalendarDay;-><init>(III)V

    .line 287
    .local v6, "day":Lcom/lee/myapplication/CalendarDay;
    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iget-object v9, p0, Lcom/lee/myapplication/MonthViewFragment;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v9, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-ne v7, v8, :cond_41

    move v7, v3

    goto :goto_42

    :cond_41
    const/4 v7, 0x0

    :goto_42
    invoke-virtual {v6, v7}, Lcom/lee/myapplication/CalendarDay;->setCurrentMonth(Z)V

    .line 290
    invoke-direct {p0, v1}, Lcom/lee/myapplication/MonthViewFragment;->isToday(Ljava/util/Calendar;)Z

    move-result v7

    if-eqz v7, :cond_4e

    .line 291
    invoke-virtual {v6, v3}, Lcom/lee/myapplication/CalendarDay;->setToday(Z)V

    .line 294
    :cond_4e
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 279
    .end local v6    # "day":Lcom/lee/myapplication/CalendarDay;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    .line 298
    .end local v5    # "i":I
    :cond_57
    return-object v0
.end method

.method private isToday(Ljava/util/Calendar;)Z
    .registers 6
    .param p1, "date"    # Ljava/util/Calendar;

    .line 302
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 303
    .local v0, "today":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_26

    .line 304
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v3, v2, :cond_26

    .line 305
    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v3, v2, :cond_26

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    .line 303
    :goto_27
    return v1
.end method

.method private setupFab()V
    .registers 3

    .line 158
    iget-object v0, p0, Lcom/lee/myapplication/MonthViewFragment;->fab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance v1, Lcom/lee/myapplication/MonthViewFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/lee/myapplication/MonthViewFragment$$ExternalSyntheticLambda1;-><init>(Lcom/lee/myapplication/MonthViewFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    return-void
.end method

.method private showDatePickerDialog()V
    .registers 8

    .line 139
    new-instance v6, Landroid/app/DatePickerDialog;

    .line 140
    invoke-virtual {p0}, Lcom/lee/myapplication/MonthViewFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/lee/myapplication/MonthViewFragment$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lcom/lee/myapplication/MonthViewFragment$$ExternalSyntheticLambda10;-><init>(Lcom/lee/myapplication/MonthViewFragment;)V

    iget-object v0, p0, Lcom/lee/myapplication/MonthViewFragment;->currentDate:Ljava/util/Calendar;

    .line 145
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v0, p0, Lcom/lee/myapplication/MonthViewFragment;->currentDate:Ljava/util/Calendar;

    .line 146
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v0, p0, Lcom/lee/myapplication/MonthViewFragment;->currentDate:Ljava/util/Calendar;

    .line 147
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 149
    .local v0, "datePickerDialog":Landroid/app/DatePickerDialog;
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 150
    return-void
.end method

.method private showDaySchedules(Lcom/lee/myapplication/CalendarDay;)V
    .registers 7
    .param p1, "day"    # Lcom/lee/myapplication/CalendarDay;

    .line 310
    invoke-virtual {p1}, Lcom/lee/myapplication/CalendarDay;->getSchedules()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 311
    invoke-virtual {p1}, Lcom/lee/myapplication/CalendarDay;->getSchedules()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lee/myapplication/Schedule;

    .line 312
    .local v0, "schedule":Lcom/lee/myapplication/Schedule;
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/lee/myapplication/MonthViewFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/lee/myapplication/ScheduleDetailActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 313
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "schedule_id"

    invoke-virtual {v0}, Lcom/lee/myapplication/Schedule;->getId()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 314
    invoke-virtual {p0, v1}, Lcom/lee/myapplication/MonthViewFragment;->startActivity(Landroid/content/Intent;)V

    .line 315
    .end local v0    # "schedule":Lcom/lee/myapplication/Schedule;
    .end local v1    # "intent":Landroid/content/Intent;
    goto :goto_57

    .line 317
    :cond_2d
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/lee/myapplication/MonthViewFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/lee/myapplication/EditScheduleActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 318
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 319
    .local v1, "selectedDate":Ljava/util/Calendar;
    invoke-virtual {p1}, Lcom/lee/myapplication/CalendarDay;->getYear()I

    move-result v2

    invoke-virtual {p1}, Lcom/lee/myapplication/CalendarDay;->getMonth()I

    move-result v3

    invoke-virtual {p1}, Lcom/lee/myapplication/CalendarDay;->getDay()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Calendar;->set(III)V

    .line 320
    const-string v2, "selected_date"

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 321
    invoke-virtual {p0, v0}, Lcom/lee/myapplication/MonthViewFragment;->startActivity(Landroid/content/Intent;)V

    .line 323
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "selectedDate":Ljava/util/Calendar;
    :goto_57
    return-void
.end method

.method private updateCalendarView()V
    .registers 7

    .line 165
    iget-boolean v0, p0, Lcom/lee/myapplication/MonthViewFragment;->isFragmentActive:Z

    if-nez v0, :cond_5

    return-void

    .line 168
    :cond_5
    iget-object v0, p0, Lcom/lee/myapplication/MonthViewFragment;->currentDate:Ljava/util/Calendar;

    .line 169
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, p0, Lcom/lee/myapplication/MonthViewFragment;->currentDate:Ljava/util/Calendar;

    .line 170
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 168
    const-string v1, "%d\u5e74%d\u6708"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "monthYear":Ljava/lang/String;
    iget-object v1, p0, Lcom/lee/myapplication/MonthViewFragment;->monthYearText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    invoke-direct {p0}, Lcom/lee/myapplication/MonthViewFragment;->getMonthDays()Ljava/util/List;

    move-result-object v1

    .line 177
    .local v1, "days":Ljava/util/List;, "Ljava/util/List<Lcom/lee/myapplication/CalendarDay;>;"
    new-instance v2, Lcom/lee/myapplication/CalendarAdapter;

    invoke-virtual {p0}, Lcom/lee/myapplication/MonthViewFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/lee/myapplication/CalendarAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 178
    .local v2, "adapter":Lcom/lee/myapplication/CalendarAdapter;
    iget-object v3, p0, Lcom/lee/myapplication/MonthViewFragment;->calendarGrid:Landroid/widget/GridView;

    invoke-virtual {v3, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 181
    iget-object v3, p0, Lcom/lee/myapplication/MonthViewFragment;->calendarGrid:Landroid/widget/GridView;

    new-instance v4, Lcom/lee/myapplication/MonthViewFragment$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0}, Lcom/lee/myapplication/MonthViewFragment$$ExternalSyntheticLambda3;-><init>(Lcom/lee/myapplication/MonthViewFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 186
    iget-object v3, p0, Lcom/lee/myapplication/MonthViewFragment;->backgroundThread:Ljava/lang/Thread;

    if-eqz v3, :cond_5f

    iget-object v3, p0, Lcom/lee/myapplication/MonthViewFragment;->backgroundThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 188
    :try_start_53
    iget-object v3, p0, Lcom/lee/myapplication/MonthViewFragment;->backgroundThread:Ljava/lang/Thread;

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Ljava/lang/Thread;->join(J)V
    :try_end_5a
    .catch Ljava/lang/InterruptedException; {:try_start_53 .. :try_end_5a} :catch_5b

    .line 191
    goto :goto_5f

    .line 189
    :catch_5b
    move-exception v3

    .line 190
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 194
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_5f
    :goto_5f
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/lee/myapplication/MonthViewFragment$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0, v1}, Lcom/lee/myapplication/MonthViewFragment$$ExternalSyntheticLambda4;-><init>(Lcom/lee/myapplication/MonthViewFragment;Ljava/util/List;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, p0, Lcom/lee/myapplication/MonthViewFragment;->backgroundThread:Ljava/lang/Thread;

    .line 262
    iget-object v3, p0, Lcom/lee/myapplication/MonthViewFragment;->backgroundThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 263
    return-void
.end method


# virtual methods
.method synthetic lambda$onCreateView$0$com-lee-myapplication-MonthViewFragment(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 75
    iget-object v0, p0, Lcom/lee/myapplication/MonthViewFragment;->currentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 76
    invoke-direct {p0}, Lcom/lee/myapplication/MonthViewFragment;->updateCalendarView()V

    .line 77
    return-void
.end method

.method synthetic lambda$onCreateView$1$com-lee-myapplication-MonthViewFragment(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 80
    iget-object v0, p0, Lcom/lee/myapplication/MonthViewFragment;->currentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 81
    invoke-direct {p0}, Lcom/lee/myapplication/MonthViewFragment;->updateCalendarView()V

    .line 82
    return-void
.end method

.method synthetic lambda$onCreateView$2$com-lee-myapplication-MonthViewFragment(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .line 86
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/lee/myapplication/MonthViewFragment;->currentDate:Ljava/util/Calendar;

    .line 87
    invoke-direct {p0}, Lcom/lee/myapplication/MonthViewFragment;->updateCalendarView()V

    .line 88
    return-void
.end method

.method synthetic lambda$onCreateView$3$com-lee-myapplication-MonthViewFragment(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .line 91
    invoke-direct {p0}, Lcom/lee/myapplication/MonthViewFragment;->showDatePickerDialog()V

    return-void
.end method

.method synthetic lambda$setupFab$5$com-lee-myapplication-MonthViewFragment(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 159
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/lee/myapplication/MonthViewFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/lee/myapplication/EditScheduleActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 160
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/lee/myapplication/MonthViewFragment;->startActivity(Landroid/content/Intent;)V

    .line 161
    return-void
.end method

.method synthetic lambda$showDatePickerDialog$4$com-lee-myapplication-MonthViewFragment(Landroid/widget/DatePicker;III)V
    .registers 6
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "dayOfMonth"    # I

    .line 142
    iget-object v0, p0, Lcom/lee/myapplication/MonthViewFragment;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 143
    invoke-direct {p0}, Lcom/lee/myapplication/MonthViewFragment;->updateCalendarView()V

    .line 144
    return-void
.end method

.method synthetic lambda$updateCalendarView$6$com-lee-myapplication-MonthViewFragment(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 182
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lee/myapplication/CalendarDay;

    .line 183
    .local v0, "day":Lcom/lee/myapplication/CalendarDay;
    invoke-direct {p0, v0}, Lcom/lee/myapplication/MonthViewFragment;->showDaySchedules(Lcom/lee/myapplication/CalendarDay;)V

    .line 184
    return-void
.end method

.method synthetic lambda$updateCalendarView$7$com-lee-myapplication-MonthViewFragment()V
    .registers 2

    .line 237
    iget-boolean v0, p0, Lcom/lee/myapplication/MonthViewFragment;->isFragmentActive:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/lee/myapplication/MonthViewFragment;->calendarGrid:Landroid/widget/GridView;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/lee/myapplication/MonthViewFragment;->calendarGrid:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 238
    iget-object v0, p0, Lcom/lee/myapplication/MonthViewFragment;->calendarGrid:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/lee/myapplication/CalendarAdapter;

    invoke-virtual {v0}, Lcom/lee/myapplication/CalendarAdapter;->notifyDataSetChanged()V

    .line 240
    :cond_1b
    return-void
.end method

.method synthetic lambda$updateCalendarView$8$com-lee-myapplication-MonthViewFragment()V
    .registers 2

    .line 255
    iget-boolean v0, p0, Lcom/lee/myapplication/MonthViewFragment;->isFragmentActive:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/lee/myapplication/MonthViewFragment;->calendarGrid:Landroid/widget/GridView;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/lee/myapplication/MonthViewFragment;->calendarGrid:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 256
    iget-object v0, p0, Lcom/lee/myapplication/MonthViewFragment;->calendarGrid:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/lee/myapplication/CalendarAdapter;

    invoke-virtual {v0}, Lcom/lee/myapplication/CalendarAdapter;->notifyDataSetChanged()V

    .line 258
    :cond_1b
    return-void
.end method

.method synthetic lambda$updateCalendarView$9$com-lee-myapplication-MonthViewFragment(Ljava/util/List;)V
    .registers 15
    .param p1, "days"    # Ljava/util/List;

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 197
    .local v0, "daysToProcess":Ljava/util/List;, "Ljava/util/List<Lcom/lee/myapplication/CalendarDay;>;"
    iget-object v1, p0, Lcom/lee/myapplication/MonthViewFragment;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    .line 198
    .local v1, "monthStart":Ljava/util/Calendar;
    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 199
    const/16 v4, 0xb

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 200
    const/16 v6, 0xc

    invoke-virtual {v1, v6, v5}, Ljava/util/Calendar;->set(II)V

    .line 202
    invoke-virtual {v1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Calendar;

    .line 203
    .local v5, "monthEnd":Ljava/util/Calendar;
    const/4 v7, 0x2

    invoke-virtual {v5, v7, v3}, Ljava/util/Calendar;->add(II)V

    .line 204
    const/4 v7, -0x1

    invoke-virtual {v5, v2, v7}, Ljava/util/Calendar;->add(II)V

    .line 205
    const/16 v7, 0x17

    invoke-virtual {v5, v4, v7}, Ljava/util/Calendar;->set(II)V

    .line 206
    const/16 v4, 0x3b

    invoke-virtual {v5, v6, v4}, Ljava/util/Calendar;->set(II)V

    .line 208
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_39
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lee/myapplication/CalendarDay;

    .line 209
    .local v6, "day":Lcom/lee/myapplication/CalendarDay;
    iget-boolean v7, p0, Lcom/lee/myapplication/MonthViewFragment;->isFragmentActive:Z

    if-eqz v7, :cond_c0

    invoke-virtual {p0}, Lcom/lee/myapplication/MonthViewFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    if-nez v7, :cond_50

    goto :goto_c0

    .line 213
    :cond_50
    iget-object v7, p0, Lcom/lee/myapplication/MonthViewFragment;->dbHelper:Lcom/lee/myapplication/DatabaseHelper;

    if-nez v7, :cond_55

    .line 214
    return-void

    .line 217
    :cond_55
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 218
    .local v7, "dayDate":Ljava/util/Calendar;
    invoke-virtual {v6}, Lcom/lee/myapplication/CalendarDay;->getYear()I

    move-result v8

    invoke-virtual {v6}, Lcom/lee/myapplication/CalendarDay;->getMonth()I

    move-result v9

    invoke-virtual {v6}, Lcom/lee/myapplication/CalendarDay;->getDay()I

    move-result v10

    invoke-virtual {v7, v8, v9, v10}, Ljava/util/Calendar;->set(III)V

    .line 221
    :try_start_68
    iget-object v8, p0, Lcom/lee/myapplication/MonthViewFragment;->dbHelper:Lcom/lee/myapplication/DatabaseHelper;

    invoke-virtual {v8, v7}, Lcom/lee/myapplication/DatabaseHelper;->getSchedulesByDate(Ljava/util/Calendar;)Ljava/util/List;

    move-result-object v8

    .line 222
    .local v8, "schedules":Ljava/util/List;, "Ljava/util/List<Lcom/lee/myapplication/Schedule;>;"
    invoke-virtual {v6, v8}, Lcom/lee/myapplication/CalendarDay;->setSchedules(Ljava/util/List;)V

    .line 224
    invoke-virtual {v6}, Lcom/lee/myapplication/CalendarDay;->isCurrentMonth()Z

    move-result v9

    if-eqz v9, :cond_8d

    .line 225
    iget-object v9, p0, Lcom/lee/myapplication/MonthViewFragment;->dbHelper:Lcom/lee/myapplication/DatabaseHelper;

    invoke-virtual {v6}, Lcom/lee/myapplication/CalendarDay;->getYear()I

    move-result v10

    invoke-virtual {v6}, Lcom/lee/myapplication/CalendarDay;->getMonth()I

    move-result v11

    add-int/2addr v11, v3

    invoke-virtual {v6}, Lcom/lee/myapplication/CalendarDay;->getDay()I

    move-result v12

    invoke-virtual {v9, v10, v11, v12}, Lcom/lee/myapplication/DatabaseHelper;->getHolidaysForDate(III)Ljava/util/List;

    move-result-object v9

    .line 226
    .local v9, "holidays":Ljava/util/List;, "Ljava/util/List<Lcom/lee/myapplication/Holiday;>;"
    invoke-virtual {v6, v9}, Lcom/lee/myapplication/CalendarDay;->setHolidays(Ljava/util/List;)V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_8d} :catch_bb

    .line 231
    .end local v8    # "schedules":Ljava/util/List;, "Ljava/util/List<Lcom/lee/myapplication/Schedule;>;"
    .end local v9    # "holidays":Ljava/util/List;, "Ljava/util/List<Lcom/lee/myapplication/Holiday;>;"
    :cond_8d
    nop

    .line 233
    invoke-interface {v0, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    rem-int/2addr v8, v2

    if-nez v8, :cond_b9

    .line 234
    iget-boolean v8, p0, Lcom/lee/myapplication/MonthViewFragment;->isFragmentActive:Z

    if-eqz v8, :cond_b8

    invoke-virtual {p0}, Lcom/lee/myapplication/MonthViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    if-eqz v8, :cond_b8

    .line 235
    invoke-interface {v0, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 236
    .local v8, "processedDays":I
    invoke-virtual {p0}, Lcom/lee/myapplication/MonthViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    new-instance v10, Lcom/lee/myapplication/MonthViewFragment$$ExternalSyntheticLambda0;

    invoke-direct {v10, p0}, Lcom/lee/myapplication/MonthViewFragment$$ExternalSyntheticLambda0;-><init>(Lcom/lee/myapplication/MonthViewFragment;)V

    invoke-virtual {v9, v10}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 241
    .end local v8    # "processedDays":I
    nop

    .line 246
    const-wide/16 v8, 0xa

    :try_start_b2
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b5
    .catch Ljava/lang/InterruptedException; {:try_start_b2 .. :try_end_b5} :catch_b6

    .line 249
    goto :goto_b9

    .line 247
    :catch_b6
    move-exception v2

    .line 248
    .local v2, "e":Ljava/lang/InterruptedException;
    return-void

    .line 242
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_b8
    return-void

    .line 251
    .end local v6    # "day":Lcom/lee/myapplication/CalendarDay;
    .end local v7    # "dayDate":Ljava/util/Calendar;
    :cond_b9
    :goto_b9
    goto/16 :goto_39

    .line 228
    .restart local v6    # "day":Lcom/lee/myapplication/CalendarDay;
    .restart local v7    # "dayDate":Ljava/util/Calendar;
    :catch_bb
    move-exception v2

    .line 229
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 230
    return-void

    .line 210
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v7    # "dayDate":Ljava/util/Calendar;
    :cond_c0
    :goto_c0
    return-void

    .line 253
    .end local v6    # "day":Lcom/lee/myapplication/CalendarDay;
    :cond_c1
    iget-boolean v2, p0, Lcom/lee/myapplication/MonthViewFragment;->isFragmentActive:Z

    if-eqz v2, :cond_d7

    invoke-virtual {p0}, Lcom/lee/myapplication/MonthViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_d7

    .line 254
    invoke-virtual {p0}, Lcom/lee/myapplication/MonthViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/lee/myapplication/MonthViewFragment$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/lee/myapplication/MonthViewFragment$$ExternalSyntheticLambda2;-><init>(Lcom/lee/myapplication/MonthViewFragment;)V

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 260
    :cond_d7
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lee/myapplication/MonthViewFragment;->isFragmentActive:Z

    .line 36
    sget v0, Lcom/lee/myapplication/R$layout;->fragment_month_view:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 38
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/lee/myapplication/R$id;->calendarGrid:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/lee/myapplication/MonthViewFragment;->calendarGrid:Landroid/widget/GridView;

    .line 39
    sget v1, Lcom/lee/myapplication/R$id;->monthYearText:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lee/myapplication/MonthViewFragment;->monthYearText:Landroid/widget/TextView;

    .line 40
    sget v1, Lcom/lee/myapplication/R$id;->fab:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object v1, p0, Lcom/lee/myapplication/MonthViewFragment;->fab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 41
    sget v1, Lcom/lee/myapplication/R$id;->prevMonthBtn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/lee/myapplication/MonthViewFragment;->prevMonthBtn:Landroid/widget/Button;

    .line 42
    sget v1, Lcom/lee/myapplication/R$id;->nextMonthBtn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/lee/myapplication/MonthViewFragment;->nextMonthBtn:Landroid/widget/Button;

    .line 43
    sget v1, Lcom/lee/myapplication/R$id;->selectDateBtn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/lee/myapplication/MonthViewFragment;->selectDateBtn:Landroid/widget/Button;

    .line 44
    sget v1, Lcom/lee/myapplication/R$id;->todayBtn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/lee/myapplication/MonthViewFragment;->todayBtn:Landroid/widget/Button;

    .line 46
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/lee/myapplication/MonthViewFragment;->currentDate:Ljava/util/Calendar;

    .line 47
    new-instance v1, Lcom/lee/myapplication/DatabaseHelper;

    invoke-virtual {p0}, Lcom/lee/myapplication/MonthViewFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lee/myapplication/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lee/myapplication/MonthViewFragment;->dbHelper:Lcom/lee/myapplication/DatabaseHelper;

    .line 50
    new-instance v1, Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {p0}, Lcom/lee/myapplication/MonthViewFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/lee/myapplication/MonthViewFragment$1;

    invoke-direct {v3, p0}, Lcom/lee/myapplication/MonthViewFragment$1;-><init>(Lcom/lee/myapplication/MonthViewFragment;)V

    invoke-direct {v1, v2, v3}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/lee/myapplication/MonthViewFragment;->gestureDetector:Landroidx/core/view/GestureDetectorCompat;

    .line 71
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 74
    iget-object v1, p0, Lcom/lee/myapplication/MonthViewFragment;->prevMonthBtn:Landroid/widget/Button;

    new-instance v2, Lcom/lee/myapplication/MonthViewFragment$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/lee/myapplication/MonthViewFragment$$ExternalSyntheticLambda5;-><init>(Lcom/lee/myapplication/MonthViewFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v1, p0, Lcom/lee/myapplication/MonthViewFragment;->nextMonthBtn:Landroid/widget/Button;

    new-instance v2, Lcom/lee/myapplication/MonthViewFragment$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/lee/myapplication/MonthViewFragment$$ExternalSyntheticLambda6;-><init>(Lcom/lee/myapplication/MonthViewFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v1, p0, Lcom/lee/myapplication/MonthViewFragment;->todayBtn:Landroid/widget/Button;

    new-instance v2, Lcom/lee/myapplication/MonthViewFragment$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/lee/myapplication/MonthViewFragment$$ExternalSyntheticLambda7;-><init>(Lcom/lee/myapplication/MonthViewFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v1, p0, Lcom/lee/myapplication/MonthViewFragment;->selectDateBtn:Landroid/widget/Button;

    new-instance v2, Lcom/lee/myapplication/MonthViewFragment$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lcom/lee/myapplication/MonthViewFragment$$ExternalSyntheticLambda8;-><init>(Lcom/lee/myapplication/MonthViewFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    new-instance v1, Lcom/lee/myapplication/MonthViewFragment$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/lee/myapplication/MonthViewFragment$$ExternalSyntheticLambda9;-><init>(Lcom/lee/myapplication/MonthViewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 95
    invoke-direct {p0}, Lcom/lee/myapplication/MonthViewFragment;->setupFab()V

    .line 97
    return-object v0
.end method

.method public onDestroy()V
    .registers 4

    .line 122
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lee/myapplication/MonthViewFragment;->isFragmentActive:Z

    .line 124
    iget-object v0, p0, Lcom/lee/myapplication/MonthViewFragment;->backgroundThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/lee/myapplication/MonthViewFragment;->backgroundThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 126
    :try_start_12
    iget-object v0, p0, Lcom/lee/myapplication/MonthViewFragment;->backgroundThread:Ljava/lang/Thread;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_19} :catch_1a

    .line 129
    goto :goto_1e

    .line 127
    :catch_1a
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 132
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1e
    :goto_1e
    iget-object v0, p0, Lcom/lee/myapplication/MonthViewFragment;->dbHelper:Lcom/lee/myapplication/DatabaseHelper;

    if-eqz v0, :cond_2a

    .line 133
    iget-object v0, p0, Lcom/lee/myapplication/MonthViewFragment;->dbHelper:Lcom/lee/myapplication/DatabaseHelper;

    invoke-virtual {v0}, Lcom/lee/myapplication/DatabaseHelper;->close()V

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lee/myapplication/MonthViewFragment;->dbHelper:Lcom/lee/myapplication/DatabaseHelper;

    .line 136
    :cond_2a
    return-void
.end method

.method public onPause()V
    .registers 4

    .line 109
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lee/myapplication/MonthViewFragment;->isFragmentActive:Z

    .line 111
    iget-object v0, p0, Lcom/lee/myapplication/MonthViewFragment;->backgroundThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/lee/myapplication/MonthViewFragment;->backgroundThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 113
    :try_start_12
    iget-object v0, p0, Lcom/lee/myapplication/MonthViewFragment;->backgroundThread:Ljava/lang/Thread;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_19} :catch_1a

    .line 116
    goto :goto_1e

    .line 114
    :catch_1a
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 118
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1e
    :goto_1e
    return-void
.end method

.method public onResume()V
    .registers 2

    .line 102
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lee/myapplication/MonthViewFragment;->isFragmentActive:Z

    .line 104
    invoke-direct {p0}, Lcom/lee/myapplication/MonthViewFragment;->updateCalendarView()V

    .line 105
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 154
    iget-object v0, p0, Lcom/lee/myapplication/MonthViewFragment;->gestureDetector:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {v0, p2}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
