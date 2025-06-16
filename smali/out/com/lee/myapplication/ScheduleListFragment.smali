.class public Lcom/lee/myapplication/ScheduleListFragment;
.super Landroidx/fragment/app/Fragment;
.source "ScheduleListFragment.java"


# static fields
.field private static final DAYS_TO_SHOW:I = 0x1e


# instance fields
.field private adapter:Lcom/lee/myapplication/ScheduleListAdapter;

.field private dateFilterBtn:Landroid/widget/Button;

.field private dbHelper:Lcom/lee/myapplication/DatabaseHelper;

.field private endDate:Ljava/util/Calendar;

.field private fab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field private isFragmentActive:Z

.field private scheduleListTitle:Landroid/widget/TextView;

.field private scheduleListView:Landroid/widget/ListView;

.field private startDate:Ljava/util/Calendar;

.field private swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;


# direct methods
.method public static synthetic $r8$lambda$Mt6LqPoXuADsjKil6lAxHT08fDY(Lcom/lee/myapplication/ScheduleListFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/lee/myapplication/ScheduleListFragment;->refreshSchedules()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lee/myapplication/ScheduleListFragment;->isFragmentActive:Z

    return-void
.end method

.method private getSchedulesByDateRange()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lee/myapplication/Schedule;",
            ">;"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/lee/myapplication/ScheduleListFragment;->dbHelper:Lcom/lee/myapplication/DatabaseHelper;

    if-nez v0, :cond_a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 182
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v0, "schedules":Ljava/util/List;, "Ljava/util/List<Lcom/lee/myapplication/Schedule;>;"
    iget-object v1, p0, Lcom/lee/myapplication/ScheduleListFragment;->startDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    .line 188
    .local v1, "current":Ljava/util/Calendar;
    :goto_17
    iget-object v2, p0, Lcom/lee/myapplication/ScheduleListFragment;->endDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 189
    iget-object v2, p0, Lcom/lee/myapplication/ScheduleListFragment;->dbHelper:Lcom/lee/myapplication/DatabaseHelper;

    invoke-virtual {v2, v1}, Lcom/lee/myapplication/DatabaseHelper;->getSchedulesByDate(Ljava/util/Calendar;)Ljava/util/List;

    move-result-object v2

    .line 190
    .local v2, "daySchedules":Ljava/util/List;, "Ljava/util/List<Lcom/lee/myapplication/Schedule;>;"
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 191
    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 192
    .end local v2    # "daySchedules":Ljava/util/List;, "Ljava/util/List<Lcom/lee/myapplication/Schedule;>;"
    goto :goto_17

    .line 194
    :cond_2e
    return-object v0
.end method

.method private initDateRange()V
    .registers 4

    .line 70
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/lee/myapplication/ScheduleListFragment;->startDate:Ljava/util/Calendar;

    .line 71
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/lee/myapplication/ScheduleListFragment;->endDate:Ljava/util/Calendar;

    .line 72
    iget-object v0, p0, Lcom/lee/myapplication/ScheduleListFragment;->endDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 74
    invoke-direct {p0}, Lcom/lee/myapplication/ScheduleListFragment;->updateTitleText()V

    .line 75
    return-void
.end method

.method private loadSchedules()V
    .registers 3

    .line 163
    iget-boolean v0, p0, Lcom/lee/myapplication/ScheduleListFragment;->isFragmentActive:Z

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/lee/myapplication/ScheduleListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_19

    .line 165
    :cond_b
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lee/myapplication/ScheduleListFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/lee/myapplication/ScheduleListFragment$$ExternalSyntheticLambda4;-><init>(Lcom/lee/myapplication/ScheduleListFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 176
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 177
    return-void

    .line 163
    :cond_19
    :goto_19
    return-void
.end method

.method private refreshSchedules()V
    .registers 1

    .line 198
    invoke-direct {p0}, Lcom/lee/myapplication/ScheduleListFragment;->loadSchedules()V

    .line 199
    return-void
.end method

.method private showDateFilterDialog()V
    .registers 5

    .line 85
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/lee/myapplication/ScheduleListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 86
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v1, "\u9009\u62e9\u65e5\u671f\u8303\u56f4"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 88
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\u4eca\u5929"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "\u672a\u67657\u5929"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "\u672a\u676530\u5929"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "\u672a\u67653\u4e2a\u6708"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "\u6240\u6709\u65e5\u7a0b"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "\u81ea\u5b9a\u4e49"

    aput-object v3, v1, v2

    .line 90
    .local v1, "options":[Ljava/lang/String;
    new-instance v2, Lcom/lee/myapplication/ScheduleListFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/lee/myapplication/ScheduleListFragment$$ExternalSyntheticLambda0;-><init>(Lcom/lee/myapplication/ScheduleListFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 121
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 122
    return-void
.end method

.method private showDateRangePickerDialog()V
    .registers 8

    .line 126
    new-instance v6, Landroid/app/DatePickerDialog;

    .line 127
    invoke-virtual {p0}, Lcom/lee/myapplication/ScheduleListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/lee/myapplication/ScheduleListFragment$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/lee/myapplication/ScheduleListFragment$$ExternalSyntheticLambda7;-><init>(Lcom/lee/myapplication/ScheduleListFragment;)V

    iget-object v0, p0, Lcom/lee/myapplication/ScheduleListFragment;->startDate:Ljava/util/Calendar;

    .line 154
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v0, p0, Lcom/lee/myapplication/ScheduleListFragment;->startDate:Ljava/util/Calendar;

    .line 155
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v0, p0, Lcom/lee/myapplication/ScheduleListFragment;->startDate:Ljava/util/Calendar;

    .line 156
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 159
    .local v0, "startDatePicker":Landroid/app/DatePickerDialog;
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 160
    return-void
.end method

.method private updateTitleText()V
    .registers 5

    .line 78
    iget-object v0, p0, Lcom/lee/myapplication/ScheduleListFragment;->endDate:Ljava/util/Calendar;

    .line 79
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/lee/myapplication/ScheduleListFragment;->startDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 78
    const-string v1, "\u65e5\u7a0b\u5217\u8868 (%d\u5929)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "title":Ljava/lang/String;
    iget-object v1, p0, Lcom/lee/myapplication/ScheduleListFragment;->scheduleListTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    return-void
.end method


# virtual methods
.method synthetic lambda$loadSchedules$5$com-lee-myapplication-ScheduleListFragment(Ljava/util/List;)V
    .registers 4
    .param p1, "schedules"    # Ljava/util/List;

    .line 170
    iget-object v0, p0, Lcom/lee/myapplication/ScheduleListFragment;->adapter:Lcom/lee/myapplication/ScheduleListAdapter;

    invoke-virtual {v0, p1}, Lcom/lee/myapplication/ScheduleListAdapter;->setData(Ljava/util/List;)V

    .line 171
    iget-object v0, p0, Lcom/lee/myapplication/ScheduleListFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 172
    iget-object v0, p0, Lcom/lee/myapplication/ScheduleListFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 174
    :cond_13
    return-void
.end method

.method synthetic lambda$loadSchedules$6$com-lee-myapplication-ScheduleListFragment()V
    .registers 4

    .line 166
    invoke-direct {p0}, Lcom/lee/myapplication/ScheduleListFragment;->getSchedulesByDateRange()Ljava/util/List;

    move-result-object v0

    .line 168
    .local v0, "schedules":Ljava/util/List;, "Ljava/util/List<Lcom/lee/myapplication/Schedule;>;"
    invoke-virtual {p0}, Lcom/lee/myapplication/ScheduleListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_1a

    iget-boolean v1, p0, Lcom/lee/myapplication/ScheduleListFragment;->isFragmentActive:Z

    if-eqz v1, :cond_1a

    .line 169
    invoke-virtual {p0}, Lcom/lee/myapplication/ScheduleListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/lee/myapplication/ScheduleListFragment$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, v0}, Lcom/lee/myapplication/ScheduleListFragment$$ExternalSyntheticLambda6;-><init>(Lcom/lee/myapplication/ScheduleListFragment;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 176
    :cond_1a
    return-void
.end method

.method synthetic lambda$onCreateView$0$com-lee-myapplication-ScheduleListFragment(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 56
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/lee/myapplication/ScheduleListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/lee/myapplication/EditScheduleActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/lee/myapplication/ScheduleListFragment;->startActivity(Landroid/content/Intent;)V

    .line 58
    return-void
.end method

.method synthetic lambda$onCreateView$1$com-lee-myapplication-ScheduleListFragment(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .line 61
    invoke-direct {p0}, Lcom/lee/myapplication/ScheduleListFragment;->showDateFilterDialog()V

    return-void
.end method

.method synthetic lambda$showDateFilterDialog$2$com-lee-myapplication-ScheduleListFragment(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 91
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 92
    .local v0, "today":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/lee/myapplication/ScheduleListFragment;->startDate:Ljava/util/Calendar;

    .line 93
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/lee/myapplication/ScheduleListFragment;->endDate:Ljava/util/Calendar;

    .line 95
    const/4 v1, 0x5

    const/4 v2, 0x1

    packed-switch p2, :pswitch_data_4a

    goto :goto_43

    .line 113
    :pswitch_16
    invoke-direct {p0}, Lcom/lee/myapplication/ScheduleListFragment;->showDateRangePickerDialog()V

    .line 114
    return-void

    .line 109
    :pswitch_1a
    iget-object v1, p0, Lcom/lee/myapplication/ScheduleListFragment;->startDate:Ljava/util/Calendar;

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 110
    iget-object v1, p0, Lcom/lee/myapplication/ScheduleListFragment;->endDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2, v2}, Ljava/util/Calendar;->add(II)V

    .line 111
    goto :goto_43

    .line 106
    :pswitch_26
    iget-object v1, p0, Lcom/lee/myapplication/ScheduleListFragment;->endDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 107
    goto :goto_43

    .line 103
    :pswitch_2e
    iget-object v2, p0, Lcom/lee/myapplication/ScheduleListFragment;->endDate:Ljava/util/Calendar;

    const/16 v3, 0x1e

    invoke-virtual {v2, v1, v3}, Ljava/util/Calendar;->add(II)V

    .line 104
    goto :goto_43

    .line 100
    :pswitch_36
    iget-object v2, p0, Lcom/lee/myapplication/ScheduleListFragment;->endDate:Ljava/util/Calendar;

    const/4 v3, 0x7

    invoke-virtual {v2, v1, v3}, Ljava/util/Calendar;->add(II)V

    .line 101
    goto :goto_43

    .line 97
    :pswitch_3d
    iget-object v3, p0, Lcom/lee/myapplication/ScheduleListFragment;->endDate:Ljava/util/Calendar;

    invoke-virtual {v3, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 98
    nop

    .line 117
    :goto_43
    invoke-direct {p0}, Lcom/lee/myapplication/ScheduleListFragment;->updateTitleText()V

    .line 118
    invoke-direct {p0}, Lcom/lee/myapplication/ScheduleListFragment;->loadSchedules()V

    .line 119
    return-void

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_36
        :pswitch_2e
        :pswitch_26
        :pswitch_1a
        :pswitch_16
    .end packed-switch
.end method

.method synthetic lambda$showDateRangePickerDialog$3$com-lee-myapplication-ScheduleListFragment(Landroid/widget/DatePicker;III)V
    .registers 7
    .param p1, "view2"    # Landroid/widget/DatePicker;
    .param p2, "year2"    # I
    .param p3, "month2"    # I
    .param p4, "dayOfMonth2"    # I

    .line 135
    iget-object v0, p0, Lcom/lee/myapplication/ScheduleListFragment;->endDate:Ljava/util/Calendar;

    invoke-virtual {v0, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 138
    iget-object v0, p0, Lcom/lee/myapplication/ScheduleListFragment;->endDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/lee/myapplication/ScheduleListFragment;->startDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 139
    iget-object v0, p0, Lcom/lee/myapplication/ScheduleListFragment;->startDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 140
    .local v0, "temp":Ljava/util/Calendar;
    iget-object v1, p0, Lcom/lee/myapplication/ScheduleListFragment;->endDate:Ljava/util/Calendar;

    iput-object v1, p0, Lcom/lee/myapplication/ScheduleListFragment;->startDate:Ljava/util/Calendar;

    .line 141
    iput-object v0, p0, Lcom/lee/myapplication/ScheduleListFragment;->endDate:Ljava/util/Calendar;

    .line 144
    .end local v0    # "temp":Ljava/util/Calendar;
    :cond_1d
    invoke-direct {p0}, Lcom/lee/myapplication/ScheduleListFragment;->updateTitleText()V

    .line 145
    invoke-direct {p0}, Lcom/lee/myapplication/ScheduleListFragment;->loadSchedules()V

    .line 146
    return-void
.end method

.method synthetic lambda$showDateRangePickerDialog$4$com-lee-myapplication-ScheduleListFragment(Landroid/widget/DatePicker;III)V
    .registers 12
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "dayOfMonth"    # I

    .line 129
    iget-object v0, p0, Lcom/lee/myapplication/ScheduleListFragment;->startDate:Ljava/util/Calendar;

    invoke-virtual {v0, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 132
    new-instance v0, Landroid/app/DatePickerDialog;

    .line 133
    invoke-virtual {p0}, Lcom/lee/myapplication/ScheduleListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/lee/myapplication/ScheduleListFragment$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lcom/lee/myapplication/ScheduleListFragment$$ExternalSyntheticLambda5;-><init>(Lcom/lee/myapplication/ScheduleListFragment;)V

    iget-object v1, p0, Lcom/lee/myapplication/ScheduleListFragment;->endDate:Ljava/util/Calendar;

    .line 147
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v1, p0, Lcom/lee/myapplication/ScheduleListFragment;->endDate:Ljava/util/Calendar;

    .line 148
    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget-object v1, p0, Lcom/lee/myapplication/ScheduleListFragment;->endDate:Ljava/util/Calendar;

    .line 149
    const/4 v6, 0x5

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 152
    .local v0, "endDatePicker":Landroid/app/DatePickerDialog;
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 153
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lee/myapplication/ScheduleListFragment;->isFragmentActive:Z

    .line 36
    sget v0, Lcom/lee/myapplication/R$layout;->fragment_schedule_list:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 38
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/lee/myapplication/R$id;->scheduleListView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/lee/myapplication/ScheduleListFragment;->scheduleListView:Landroid/widget/ListView;

    .line 39
    sget v1, Lcom/lee/myapplication/R$id;->swipeRefreshLayout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object v1, p0, Lcom/lee/myapplication/ScheduleListFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 40
    sget v1, Lcom/lee/myapplication/R$id;->fab:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object v1, p0, Lcom/lee/myapplication/ScheduleListFragment;->fab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 41
    sget v1, Lcom/lee/myapplication/R$id;->dateFilterBtn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/lee/myapplication/ScheduleListFragment;->dateFilterBtn:Landroid/widget/Button;

    .line 42
    sget v1, Lcom/lee/myapplication/R$id;->scheduleListTitle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lee/myapplication/ScheduleListFragment;->scheduleListTitle:Landroid/widget/TextView;

    .line 44
    new-instance v1, Lcom/lee/myapplication/DatabaseHelper;

    invoke-virtual {p0}, Lcom/lee/myapplication/ScheduleListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lee/myapplication/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lee/myapplication/ScheduleListFragment;->dbHelper:Lcom/lee/myapplication/DatabaseHelper;

    .line 45
    new-instance v1, Lcom/lee/myapplication/ScheduleListAdapter;

    invoke-virtual {p0}, Lcom/lee/myapplication/ScheduleListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lee/myapplication/ScheduleListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lee/myapplication/ScheduleListFragment;->adapter:Lcom/lee/myapplication/ScheduleListAdapter;

    .line 46
    iget-object v1, p0, Lcom/lee/myapplication/ScheduleListFragment;->scheduleListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/lee/myapplication/ScheduleListFragment;->adapter:Lcom/lee/myapplication/ScheduleListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 49
    invoke-direct {p0}, Lcom/lee/myapplication/ScheduleListFragment;->initDateRange()V

    .line 52
    iget-object v1, p0, Lcom/lee/myapplication/ScheduleListFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v2, Lcom/lee/myapplication/ScheduleListFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/lee/myapplication/ScheduleListFragment$$ExternalSyntheticLambda1;-><init>(Lcom/lee/myapplication/ScheduleListFragment;)V

    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 55
    iget-object v1, p0, Lcom/lee/myapplication/ScheduleListFragment;->fab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance v2, Lcom/lee/myapplication/ScheduleListFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/lee/myapplication/ScheduleListFragment$$ExternalSyntheticLambda2;-><init>(Lcom/lee/myapplication/ScheduleListFragment;)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v1, p0, Lcom/lee/myapplication/ScheduleListFragment;->dateFilterBtn:Landroid/widget/Button;

    new-instance v2, Lcom/lee/myapplication/ScheduleListFragment$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/lee/myapplication/ScheduleListFragment$$ExternalSyntheticLambda3;-><init>(Lcom/lee/myapplication/ScheduleListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    invoke-direct {p0}, Lcom/lee/myapplication/ScheduleListFragment;->loadSchedules()V

    .line 66
    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    .line 216
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lee/myapplication/ScheduleListFragment;->isFragmentActive:Z

    .line 218
    iget-object v0, p0, Lcom/lee/myapplication/ScheduleListFragment;->dbHelper:Lcom/lee/myapplication/DatabaseHelper;

    if-eqz v0, :cond_12

    .line 219
    iget-object v0, p0, Lcom/lee/myapplication/ScheduleListFragment;->dbHelper:Lcom/lee/myapplication/DatabaseHelper;

    invoke-virtual {v0}, Lcom/lee/myapplication/DatabaseHelper;->close()V

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lee/myapplication/ScheduleListFragment;->dbHelper:Lcom/lee/myapplication/DatabaseHelper;

    .line 222
    :cond_12
    return-void
.end method

.method public onPause()V
    .registers 2

    .line 210
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lee/myapplication/ScheduleListFragment;->isFragmentActive:Z

    .line 212
    return-void
.end method

.method public onResume()V
    .registers 2

    .line 203
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lee/myapplication/ScheduleListFragment;->isFragmentActive:Z

    .line 205
    invoke-direct {p0}, Lcom/lee/myapplication/ScheduleListFragment;->loadSchedules()V

    .line 206
    return-void
.end method
