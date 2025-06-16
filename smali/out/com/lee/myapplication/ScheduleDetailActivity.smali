.class public Lcom/lee/myapplication/ScheduleDetailActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ScheduleDetailActivity.java"


# instance fields
.field private categoryTextView:Landroid/widget/TextView;

.field private dateFormat:Ljava/text/SimpleDateFormat;

.field private dbHelper:Lcom/lee/myapplication/DatabaseHelper;

.field private deleteButton:Landroid/widget/Button;

.field private descriptionTextView:Landroid/widget/TextView;

.field private editButton:Landroid/widget/Button;

.field private reminderTextView:Landroid/widget/TextView;

.field private repeatTypeTextView:Landroid/widget/TextView;

.field private schedule:Lcom/lee/myapplication/Schedule;

.field private scheduleId:J

.field private timeTextView:Landroid/widget/TextView;

.field private titleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 15
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 26
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/lee/myapplication/ScheduleDetailActivity;->dateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private deleteSchedule()V
    .registers 4

    .line 135
    iget-object v0, p0, Lcom/lee/myapplication/ScheduleDetailActivity;->schedule:Lcom/lee/myapplication/Schedule;

    if-eqz v0, :cond_31

    .line 137
    iget-object v0, p0, Lcom/lee/myapplication/ScheduleDetailActivity;->schedule:Lcom/lee/myapplication/Schedule;

    invoke-virtual {v0}, Lcom/lee/myapplication/Schedule;->getReminderMinutes()I

    move-result v0

    if-lez v0, :cond_15

    .line 138
    iget-object v0, p0, Lcom/lee/myapplication/ScheduleDetailActivity;->schedule:Lcom/lee/myapplication/Schedule;

    invoke-virtual {v0}, Lcom/lee/myapplication/Schedule;->getId()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/lee/myapplication/ReminderService;->cancelReminder(Landroid/content/Context;J)V

    .line 142
    :cond_15
    iget-object v0, p0, Lcom/lee/myapplication/ScheduleDetailActivity;->dbHelper:Lcom/lee/myapplication/DatabaseHelper;

    iget-object v1, p0, Lcom/lee/myapplication/ScheduleDetailActivity;->schedule:Lcom/lee/myapplication/Schedule;

    invoke-virtual {v1}, Lcom/lee/myapplication/Schedule;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/lee/myapplication/DatabaseHelper;->deleteSchedule(J)V

    .line 144
    const-string v0, "\u65e5\u7a0b\u5df2\u5220\u9664"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 147
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/lee/myapplication/ScheduleDetailActivity;->setResult(I)V

    .line 150
    invoke-virtual {p0}, Lcom/lee/myapplication/ScheduleDetailActivity;->finish()V

    .line 152
    :cond_31
    return-void
.end method

.method private loadSchedule(J)V
    .registers 6
    .param p1, "scheduleId"    # J

    .line 77
    iget-object v0, p0, Lcom/lee/myapplication/ScheduleDetailActivity;->dbHelper:Lcom/lee/myapplication/DatabaseHelper;

    invoke-virtual {v0, p1, p2}, Lcom/lee/myapplication/DatabaseHelper;->getScheduleById(J)Lcom/lee/myapplication/Schedule;

    move-result-object v0

    iput-object v0, p0, Lcom/lee/myapplication/ScheduleDetailActivity;->schedule:Lcom/lee/myapplication/Schedule;

    .line 78
    iget-object v0, p0, Lcom/lee/myapplication/ScheduleDetailActivity;->schedule:Lcom/lee/myapplication/Schedule;

    if-eqz v0, :cond_a4

    .line 80
    iget-object v0, p0, Lcom/lee/myapplication/ScheduleDetailActivity;->titleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lee/myapplication/ScheduleDetailActivity;->schedule:Lcom/lee/myapplication/Schedule;

    invoke-virtual {v1}, Lcom/lee/myapplication/Schedule;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lee/myapplication/ScheduleDetailActivity;->dateFormat:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/lee/myapplication/ScheduleDetailActivity;->schedule:Lcom/lee/myapplication/Schedule;

    invoke-virtual {v2}, Lcom/lee/myapplication/Schedule;->getStartTime()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lee/myapplication/ScheduleDetailActivity;->dateFormat:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/lee/myapplication/ScheduleDetailActivity;->schedule:Lcom/lee/myapplication/Schedule;

    .line 84
    invoke-virtual {v2}, Lcom/lee/myapplication/Schedule;->getEndTime()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "timeText":Ljava/lang/String;
    iget-object v1, p0, Lcom/lee/myapplication/ScheduleDetailActivity;->timeTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v1, p0, Lcom/lee/myapplication/ScheduleDetailActivity;->descriptionTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lee/myapplication/ScheduleDetailActivity;->schedule:Lcom/lee/myapplication/Schedule;

    invoke-virtual {v2}, Lcom/lee/myapplication/Schedule;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v1, p0, Lcom/lee/myapplication/ScheduleDetailActivity;->categoryTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lee/myapplication/ScheduleDetailActivity;->schedule:Lcom/lee/myapplication/Schedule;

    invoke-virtual {v2}, Lcom/lee/myapplication/Schedule;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v1, p0, Lcom/lee/myapplication/ScheduleDetailActivity;->repeatTypeTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lee/myapplication/ScheduleDetailActivity;->schedule:Lcom/lee/myapplication/Schedule;

    invoke-virtual {v2}, Lcom/lee/myapplication/Schedule;->getRepeatType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v1, p0, Lcom/lee/myapplication/ScheduleDetailActivity;->schedule:Lcom/lee/myapplication/Schedule;

    invoke-virtual {v1}, Lcom/lee/myapplication/Schedule;->getReminderMinutes()I

    move-result v1

    if-lez v1, :cond_9c

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u63d0\u524d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lee/myapplication/ScheduleDetailActivity;->schedule:Lcom/lee/myapplication/Schedule;

    invoke-virtual {v2}, Lcom/lee/myapplication/Schedule;->getReminderMinutes()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5206\u949f\u63d0\u9192"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_9e

    .line 93
    :cond_9c
    const-string v1, "\u65e0\u63d0\u9192"

    :goto_9e
    nop

    .line 94
    .local v1, "reminderText":Ljava/lang/String;
    iget-object v2, p0, Lcom/lee/myapplication/ScheduleDetailActivity;->reminderTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    .end local v0    # "timeText":Ljava/lang/String;
    .end local v1    # "reminderText":Ljava/lang/String;
    :cond_a4
    return-void
.end method

.method private showDeleteConfirmDialog()V
    .registers 4

    .line 124
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 125
    const-string v1, "\u5220\u9664\u65e5\u7a0b"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 126
    const-string v1, "\u786e\u5b9a\u8981\u5220\u9664\u8fd9\u4e2a\u65e5\u7a0b\u5417\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/lee/myapplication/ScheduleDetailActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/lee/myapplication/ScheduleDetailActivity$$ExternalSyntheticLambda2;-><init>(Lcom/lee/myapplication/ScheduleDetailActivity;)V

    .line 127
    const-string v2, "\u786e\u5b9a"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 130
    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 132
    return-void
.end method


# virtual methods
.method synthetic lambda$onCreate$0$com-lee-myapplication-ScheduleDetailActivity(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .line 57
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lee/myapplication/EditScheduleActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    .local v0, "editIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/lee/myapplication/ScheduleDetailActivity;->schedule:Lcom/lee/myapplication/Schedule;

    invoke-virtual {v1}, Lcom/lee/myapplication/Schedule;->getId()J

    move-result-wide v1

    const-string v3, "schedule_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 59
    invoke-virtual {p0, v0}, Lcom/lee/myapplication/ScheduleDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 60
    return-void
.end method

.method synthetic lambda$onCreate$1$com-lee-myapplication-ScheduleDetailActivity(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .line 63
    invoke-direct {p0}, Lcom/lee/myapplication/ScheduleDetailActivity;->showDeleteConfirmDialog()V

    .line 64
    return-void
.end method

.method synthetic lambda$showDeleteConfirmDialog$2$com-lee-myapplication-ScheduleDetailActivity(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 128
    invoke-direct {p0}, Lcom/lee/myapplication/ScheduleDetailActivity;->deleteSchedule()V

    .line 129
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 31
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    sget v0, Lcom/lee/myapplication/R$layout;->activity_schedule_detail:I

    invoke-virtual {p0, v0}, Lcom/lee/myapplication/ScheduleDetailActivity;->setContentView(I)V

    .line 35
    sget v0, Lcom/lee/myapplication/R$id;->title_text:I

    invoke-virtual {p0, v0}, Lcom/lee/myapplication/ScheduleDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lee/myapplication/ScheduleDetailActivity;->titleTextView:Landroid/widget/TextView;

    .line 36
    sget v0, Lcom/lee/myapplication/R$id;->time_text:I

    invoke-virtual {p0, v0}, Lcom/lee/myapplication/ScheduleDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lee/myapplication/ScheduleDetailActivity;->timeTextView:Landroid/widget/TextView;

    .line 37
    sget v0, Lcom/lee/myapplication/R$id;->description_text:I

    invoke-virtual {p0, v0}, Lcom/lee/myapplication/ScheduleDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lee/myapplication/ScheduleDetailActivity;->descriptionTextView:Landroid/widget/TextView;

    .line 38
    sget v0, Lcom/lee/myapplication/R$id;->category_text:I

    invoke-virtual {p0, v0}, Lcom/lee/myapplication/ScheduleDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lee/myapplication/ScheduleDetailActivity;->categoryTextView:Landroid/widget/TextView;

    .line 39
    sget v0, Lcom/lee/myapplication/R$id;->repeat_type_text:I

    invoke-virtual {p0, v0}, Lcom/lee/myapplication/ScheduleDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lee/myapplication/ScheduleDetailActivity;->repeatTypeTextView:Landroid/widget/TextView;

    .line 40
    sget v0, Lcom/lee/myapplication/R$id;->reminder_text:I

    invoke-virtual {p0, v0}, Lcom/lee/myapplication/ScheduleDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lee/myapplication/ScheduleDetailActivity;->reminderTextView:Landroid/widget/TextView;

    .line 41
    sget v0, Lcom/lee/myapplication/R$id;->btn_edit:I

    invoke-virtual {p0, v0}, Lcom/lee/myapplication/ScheduleDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lee/myapplication/ScheduleDetailActivity;->editButton:Landroid/widget/Button;

    .line 42
    sget v0, Lcom/lee/myapplication/R$id;->btn_delete:I

    invoke-virtual {p0, v0}, Lcom/lee/myapplication/ScheduleDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lee/myapplication/ScheduleDetailActivity;->deleteButton:Landroid/widget/Button;

    .line 44
    new-instance v0, Lcom/lee/myapplication/DatabaseHelper;

    invoke-direct {v0, p0}, Lcom/lee/myapplication/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lee/myapplication/ScheduleDetailActivity;->dbHelper:Lcom/lee/myapplication/DatabaseHelper;

    .line 47
    invoke-virtual {p0}, Lcom/lee/myapplication/ScheduleDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "schedule_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lee/myapplication/ScheduleDetailActivity;->scheduleId:J

    .line 48
    iget-wide v0, p0, Lcom/lee/myapplication/ScheduleDetailActivity;->scheduleId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_79

    .line 49
    iget-wide v0, p0, Lcom/lee/myapplication/ScheduleDetailActivity;->scheduleId:J

    invoke-direct {p0, v0, v1}, Lcom/lee/myapplication/ScheduleDetailActivity;->loadSchedule(J)V

    goto :goto_86

    .line 51
    :cond_79
    const-string v0, "\u65e0\u6cd5\u52a0\u8f7d\u65e5\u7a0b\u8be6\u60c5"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 52
    invoke-virtual {p0}, Lcom/lee/myapplication/ScheduleDetailActivity;->finish()V

    .line 56
    :goto_86
    iget-object v0, p0, Lcom/lee/myapplication/ScheduleDetailActivity;->editButton:Landroid/widget/Button;

    new-instance v1, Lcom/lee/myapplication/ScheduleDetailActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/lee/myapplication/ScheduleDetailActivity$$ExternalSyntheticLambda0;-><init>(Lcom/lee/myapplication/ScheduleDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/lee/myapplication/ScheduleDetailActivity;->deleteButton:Landroid/widget/Button;

    new-instance v1, Lcom/lee/myapplication/ScheduleDetailActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/lee/myapplication/ScheduleDetailActivity$$ExternalSyntheticLambda1;-><init>(Lcom/lee/myapplication/ScheduleDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;

    .line 100
    invoke-virtual {p0}, Lcom/lee/myapplication/ScheduleDetailActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/lee/myapplication/R$menu;->menu_schedule_detail:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .registers 2

    .line 156
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 157
    iget-object v0, p0, Lcom/lee/myapplication/ScheduleDetailActivity;->dbHelper:Lcom/lee/myapplication/DatabaseHelper;

    if-eqz v0, :cond_c

    .line 158
    iget-object v0, p0, Lcom/lee/myapplication/ScheduleDetailActivity;->dbHelper:Lcom/lee/myapplication/DatabaseHelper;

    invoke-virtual {v0}, Lcom/lee/myapplication/DatabaseHelper;->close()V

    .line 160
    :cond_c
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 106
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 108
    .local v0, "id":I
    sget v1, Lcom/lee/myapplication/R$id;->action_edit:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1f

    .line 110
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/lee/myapplication/EditScheduleActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    .local v1, "editIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/lee/myapplication/ScheduleDetailActivity;->schedule:Lcom/lee/myapplication/Schedule;

    invoke-virtual {v3}, Lcom/lee/myapplication/Schedule;->getId()J

    move-result-wide v3

    const-string v5, "schedule_id"

    invoke-virtual {v1, v5, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 112
    invoke-virtual {p0, v1}, Lcom/lee/myapplication/ScheduleDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 113
    return v2

    .line 114
    .end local v1    # "editIntent":Landroid/content/Intent;
    :cond_1f
    sget v1, Lcom/lee/myapplication/R$id;->action_delete:I

    if-ne v0, v1, :cond_27

    .line 116
    invoke-direct {p0}, Lcom/lee/myapplication/ScheduleDetailActivity;->showDeleteConfirmDialog()V

    .line 117
    return v2

    .line 120
    :cond_27
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method protected onResume()V
    .registers 5

    .line 69
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 71
    iget-wide v0, p0, Lcom/lee/myapplication/ScheduleDetailActivity;->scheduleId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    .line 72
    iget-wide v0, p0, Lcom/lee/myapplication/ScheduleDetailActivity;->scheduleId:J

    invoke-direct {p0, v0, v1}, Lcom/lee/myapplication/ScheduleDetailActivity;->loadSchedule(J)V

    .line 74
    :cond_10
    return-void
.end method
