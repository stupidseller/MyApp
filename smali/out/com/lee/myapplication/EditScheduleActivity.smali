.class public Lcom/lee/myapplication/EditScheduleActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "EditScheduleActivity.java"


# instance fields
.field private allDaySwitch:Landroid/widget/Switch;

.field private categorySpinner:Landroid/widget/Spinner;

.field private currentSchedule:Lcom/lee/myapplication/Schedule;

.field private dateFormat:Ljava/text/SimpleDateFormat;

.field private dbHelper:Lcom/lee/myapplication/DatabaseHelper;

.field private descriptionEdit:Landroid/widget/EditText;

.field private endDateBtn:Landroid/widget/Button;

.field private endTime:Ljava/util/Calendar;

.field private endTimeBtn:Landroid/widget/Button;

.field private reminderSpinner:Landroid/widget/Spinner;

.field private repeatTypeSpinner:Landroid/widget/Spinner;

.field private startDateBtn:Landroid/widget/Button;

.field private startTime:Ljava/util/Calendar;

.field private startTimeBtn:Landroid/widget/Button;

.field private timeFormat:Ljava/text/SimpleDateFormat;

.field private titleEdit:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private initViews()V
    .registers 4

    .line 52
    sget v0, Lcom/lee/myapplication/R$id;->titleEdit:I

    invoke-virtual {p0, v0}, Lcom/lee/myapplication/EditScheduleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lee/myapplication/EditScheduleActivity;->titleEdit:Landroid/widget/EditText;

    .line 53
    sget v0, Lcom/lee/myapplication/R$id;->descriptionEdit:I

    invoke-virtual {p0, v0}, Lcom/lee/myapplication/EditScheduleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lee/myapplication/EditScheduleActivity;->descriptionEdit:Landroid/widget/EditText;

    .line 54
    sget v0, Lcom/lee/myapplication/R$id;->startDateBtn:I

    invoke-virtual {p0, v0}, Lcom/lee/myapplication/EditScheduleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lee/myapplication/EditScheduleActivity;->startDateBtn:Landroid/widget/Button;

    .line 55
    sget v0, Lcom/lee/myapplication/R$id;->startTimeBtn:I

    invoke-virtual {p0, v0}, Lcom/lee/myapplication/EditScheduleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lee/myapplication/EditScheduleActivity;->startTimeBtn:Landroid/widget/Button;

    .line 56
    sget v0, Lcom/lee/myapplication/R$id;->endDateBtn:I

    invoke-virtual {p0, v0}, Lcom/lee/myapplication/EditScheduleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lee/myapplication/EditScheduleActivity;->endDateBtn:Landroid/widget/Button;

    .line 57
    sget v0, Lcom/lee/myapplication/R$id;->endTimeBtn:I

    invoke-virtual {p0, v0}, Lcom/lee/myapplication/EditScheduleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lee/myapplication/EditScheduleActivity;->endTimeBtn:Landroid/widget/Button;

    .line 58
    sget v0, Lcom/lee/myapplication/R$id;->categorySpinner:I

    invoke-virtual {p0, v0}, Lcom/lee/myapplication/EditScheduleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/lee/myapplication/EditScheduleActivity;->categorySpinner:Landroid/widget/Spinner;

    .line 59
    sget v0, Lcom/lee/myapplication/R$id;->repeatTypeSpinner:I

    invoke-virtual {p0, v0}, Lcom/lee/myapplication/EditScheduleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/lee/myapplication/EditScheduleActivity;->repeatTypeSpinner:Landroid/widget/Spinner;

    .line 60
    sget v0, Lcom/lee/myapplication/R$id;->reminderSpinner:I

    invoke-virtual {p0, v0}, Lcom/lee/myapplication/EditScheduleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/lee/myapplication/EditScheduleActivity;->reminderSpinner:Landroid/widget/Spinner;

    .line 61
    sget v0, Lcom/lee/myapplication/R$id;->allDaySwitch:I

    invoke-virtual {p0, v0}, Lcom/lee/myapplication/EditScheduleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/lee/myapplication/EditScheduleActivity;->allDaySwitch:Landroid/widget/Switch;

    .line 63
    new-instance v0, Lcom/lee/myapplication/DatabaseHelper;

    invoke-direct {v0, p0}, Lcom/lee/myapplication/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lee/myapplication/EditScheduleActivity;->dbHelper:Lcom/lee/myapplication/DatabaseHelper;

    .line 64
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/lee/myapplication/EditScheduleActivity;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 65
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/lee/myapplication/EditScheduleActivity;->timeFormat:Ljava/text/SimpleDateFormat;

    .line 67
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/lee/myapplication/EditScheduleActivity;->startTime:Ljava/util/Calendar;

    .line 68
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/lee/myapplication/EditScheduleActivity;->endTime:Ljava/util/Calendar;

    .line 69
    iget-object v0, p0, Lcom/lee/myapplication/EditScheduleActivity;->endTime:Ljava/util/Calendar;

    const/16 v1, 0xb

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 71
    invoke-direct {p0}, Lcom/lee/myapplication/EditScheduleActivity;->updateDateTimeButtons()V

    .line 72
    return-void
.end method

.method private loadSchedule(J)V
    .registers 8
    .param p1, "scheduleId"    # J

    .line 134
    iget-object v0, p0, Lcom/lee/myapplication/EditScheduleActivity;->dbHelper:Lcom/lee/myapplication/DatabaseHelper;

    invoke-virtual {v0, p1, p2}, Lcom/lee/myapplication/DatabaseHelper;->getScheduleById(J)Lcom/lee/myapplication/Schedule;

    move-result-object v0

    iput-object v0, p0, Lcom/lee/myapplication/EditScheduleActivity;->currentSchedule:Lcom/lee/myapplication/Schedule;

    .line 136
    iget-object v0, p0, Lcom/lee/myapplication/EditScheduleActivity;->currentSchedule:Lcom/lee/myapplication/Schedule;

    if-eqz v0, :cond_c2

    .line 138
    iget-object v0, p0, Lcom/lee/myapplication/EditScheduleActivity;->titleEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/lee/myapplication/EditScheduleActivity;->currentSchedule:Lcom/lee/myapplication/Schedule;

    invoke-virtual {v1}, Lcom/lee/myapplication/Schedule;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lcom/lee/myapplication/EditScheduleActivity;->descriptionEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/lee/myapplication/EditScheduleActivity;->currentSchedule:Lcom/lee/myapplication/Schedule;

    invoke-virtual {v1}, Lcom/lee/myapplication/Schedule;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Lcom/lee/myapplication/EditScheduleActivity;->currentSchedule:Lcom/lee/myapplication/Schedule;

    invoke-virtual {v0}, Lcom/lee/myapplication/Schedule;->getStartTime()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/lee/myapplication/EditScheduleActivity;->startTime:Ljava/util/Calendar;

    .line 143
    iget-object v0, p0, Lcom/lee/myapplication/EditScheduleActivity;->currentSchedule:Lcom/lee/myapplication/Schedule;

    invoke-virtual {v0}, Lcom/lee/myapplication/Schedule;->getEndTime()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/lee/myapplication/EditScheduleActivity;->endTime:Ljava/util/Calendar;

    .line 144
    invoke-direct {p0}, Lcom/lee/myapplication/EditScheduleActivity;->updateDateTimeButtons()V

    .line 147
    iget-object v0, p0, Lcom/lee/myapplication/EditScheduleActivity;->allDaySwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/lee/myapplication/EditScheduleActivity;->currentSchedule:Lcom/lee/myapplication/Schedule;

    invoke-virtual {v1}, Lcom/lee/myapplication/Schedule;->isAllDay()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 150
    iget-object v0, p0, Lcom/lee/myapplication/EditScheduleActivity;->currentSchedule:Lcom/lee/myapplication/Schedule;

    invoke-virtual {v0}, Lcom/lee/myapplication/Schedule;->getCategory()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "category":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_47
    iget-object v2, p0, Lcom/lee/myapplication/EditScheduleActivity;->categorySpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_70

    .line 152
    iget-object v2, p0, Lcom/lee/myapplication/EditScheduleActivity;->categorySpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/widget/SpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 153
    iget-object v2, p0, Lcom/lee/myapplication/EditScheduleActivity;->categorySpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 154
    goto :goto_70

    .line 151
    :cond_6d
    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    .line 159
    .end local v1    # "i":I
    :cond_70
    :goto_70
    iget-object v1, p0, Lcom/lee/myapplication/EditScheduleActivity;->currentSchedule:Lcom/lee/myapplication/Schedule;

    invoke-virtual {v1}, Lcom/lee/myapplication/Schedule;->getRepeatType()Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "repeatType":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_77
    iget-object v3, p0, Lcom/lee/myapplication/EditScheduleActivity;->repeatTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_a0

    .line 161
    iget-object v3, p0, Lcom/lee/myapplication/EditScheduleActivity;->repeatTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/widget/SpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9d

    .line 162
    iget-object v3, p0, Lcom/lee/myapplication/EditScheduleActivity;->repeatTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 163
    goto :goto_a0

    .line 160
    :cond_9d
    add-int/lit8 v2, v2, 0x1

    goto :goto_77

    .line 168
    .end local v2    # "i":I
    :cond_a0
    :goto_a0
    iget-object v2, p0, Lcom/lee/myapplication/EditScheduleActivity;->currentSchedule:Lcom/lee/myapplication/Schedule;

    invoke-virtual {v2}, Lcom/lee/myapplication/Schedule;->getReminderMinutes()I

    move-result v2

    .line 169
    .local v2, "reminderMinutes":I
    const/4 v3, 0x0

    .line 171
    .local v3, "reminderPosition":I
    const/4 v4, 0x5

    if-ne v2, v4, :cond_ac

    .line 172
    const/4 v3, 0x1

    goto :goto_bd

    .line 173
    :cond_ac
    const/16 v4, 0xf

    if-ne v2, v4, :cond_b2

    .line 174
    const/4 v3, 0x2

    goto :goto_bd

    .line 175
    :cond_b2
    const/16 v4, 0x1e

    if-ne v2, v4, :cond_b8

    .line 176
    const/4 v3, 0x3

    goto :goto_bd

    .line 177
    :cond_b8
    const/16 v4, 0x3c

    if-ne v2, v4, :cond_bd

    .line 178
    const/4 v3, 0x4

    .line 181
    :cond_bd
    :goto_bd
    iget-object v4, p0, Lcom/lee/myapplication/EditScheduleActivity;->reminderSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 183
    .end local v0    # "category":Ljava/lang/String;
    .end local v1    # "repeatType":Ljava/lang/String;
    .end local v2    # "reminderMinutes":I
    .end local v3    # "reminderPosition":I
    :cond_c2
    return-void
.end method

.method private setupDateTimeButtons()V
    .registers 3

    .line 75
    iget-object v0, p0, Lcom/lee/myapplication/EditScheduleActivity;->startDateBtn:Landroid/widget/Button;

    new-instance v1, Lcom/lee/myapplication/EditScheduleActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/lee/myapplication/EditScheduleActivity$$ExternalSyntheticLambda0;-><init>(Lcom/lee/myapplication/EditScheduleActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/lee/myapplication/EditScheduleActivity;->startTimeBtn:Landroid/widget/Button;

    new-instance v1, Lcom/lee/myapplication/EditScheduleActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/lee/myapplication/EditScheduleActivity$$ExternalSyntheticLambda1;-><init>(Lcom/lee/myapplication/EditScheduleActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/lee/myapplication/EditScheduleActivity;->endDateBtn:Landroid/widget/Button;

    new-instance v1, Lcom/lee/myapplication/EditScheduleActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/lee/myapplication/EditScheduleActivity$$ExternalSyntheticLambda2;-><init>(Lcom/lee/myapplication/EditScheduleActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/lee/myapplication/EditScheduleActivity;->endTimeBtn:Landroid/widget/Button;

    new-instance v1, Lcom/lee/myapplication/EditScheduleActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/lee/myapplication/EditScheduleActivity$$ExternalSyntheticLambda3;-><init>(Lcom/lee/myapplication/EditScheduleActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/lee/myapplication/EditScheduleActivity;->allDaySwitch:Landroid/widget/Switch;

    new-instance v1, Lcom/lee/myapplication/EditScheduleActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/lee/myapplication/EditScheduleActivity$$ExternalSyntheticLambda4;-><init>(Lcom/lee/myapplication/EditScheduleActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 84
    return-void
.end method

.method private setupSpinners()V
    .registers 13

    .line 88
    new-instance v0, Landroid/widget/ArrayAdapter;

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "\u5de5\u4f5c"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "\u5b66\u4e60"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "\u751f\u6d3b"

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-string v3, "\u5176\u4ed6"

    const/4 v7, 0x3

    aput-object v3, v2, v7

    const v3, 0x1090008

    invoke-direct {v0, p0, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 91
    .local v0, "categoryAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v2, 0x1090009

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 92
    iget-object v8, p0, Lcom/lee/myapplication/EditScheduleActivity;->categorySpinner:Landroid/widget/Spinner;

    invoke-virtual {v8, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 95
    new-instance v8, Landroid/widget/ArrayAdapter;

    new-array v9, v1, [Ljava/lang/String;

    const-string v10, "\u4e0d\u91cd\u590d"

    aput-object v10, v9, v4

    const-string v10, "\u6bcf\u5929"

    aput-object v10, v9, v5

    const-string v10, "\u6bcf\u5468"

    aput-object v10, v9, v6

    const-string v10, "\u6bcf\u6708"

    aput-object v10, v9, v7

    invoke-direct {v8, p0, v3, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 98
    .local v8, "repeatAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v8, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 99
    iget-object v9, p0, Lcom/lee/myapplication/EditScheduleActivity;->repeatTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9, v8}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 102
    new-instance v9, Landroid/widget/ArrayAdapter;

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/String;

    const-string v11, "\u4e0d\u63d0\u9192"

    aput-object v11, v10, v4

    const-string v4, "\u63d0\u524d5\u5206\u949f"

    aput-object v4, v10, v5

    const-string v4, "\u63d0\u524d15\u5206\u949f"

    aput-object v4, v10, v6

    const-string v4, "\u63d0\u524d30\u5206\u949f"

    aput-object v4, v10, v7

    const-string v4, "\u63d0\u524d1\u5c0f\u65f6"

    aput-object v4, v10, v1

    invoke-direct {v9, p0, v3, v10}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object v1, v9

    .line 105
    .local v1, "reminderAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 106
    iget-object v2, p0, Lcom/lee/myapplication/EditScheduleActivity;->reminderSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 107
    return-void
.end method

.method private showDatePicker(Ljava/util/Calendar;Landroid/widget/Button;)V
    .registers 10
    .param p1, "calendar"    # Ljava/util/Calendar;
    .param p2, "button"    # Landroid/widget/Button;

    .line 110
    new-instance v6, Landroid/app/DatePickerDialog;

    new-instance v2, Lcom/lee/myapplication/EditScheduleActivity$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p1}, Lcom/lee/myapplication/EditScheduleActivity$$ExternalSyntheticLambda5;-><init>(Lcom/lee/myapplication/EditScheduleActivity;Ljava/util/Calendar;)V

    .line 113
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 114
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {v6}, Landroid/app/DatePickerDialog;->show()V

    .line 115
    return-void
.end method

.method private showTimePicker(Ljava/util/Calendar;Landroid/widget/Button;)V
    .registers 10
    .param p1, "calendar"    # Ljava/util/Calendar;
    .param p2, "button"    # Landroid/widget/Button;

    .line 118
    new-instance v6, Landroid/app/TimePickerDialog;

    new-instance v2, Lcom/lee/myapplication/EditScheduleActivity$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, p1}, Lcom/lee/myapplication/EditScheduleActivity$$ExternalSyntheticLambda6;-><init>(Lcom/lee/myapplication/EditScheduleActivity;Ljava/util/Calendar;)V

    .line 122
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {v6}, Landroid/app/TimePickerDialog;->show()V

    .line 123
    return-void
.end method

.method private updateDateTimeButtons()V
    .registers 4

    .line 126
    iget-object v0, p0, Lcom/lee/myapplication/EditScheduleActivity;->startDateBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/lee/myapplication/EditScheduleActivity;->dateFormat:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/lee/myapplication/EditScheduleActivity;->startTime:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/lee/myapplication/EditScheduleActivity;->startTimeBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/lee/myapplication/EditScheduleActivity;->timeFormat:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/lee/myapplication/EditScheduleActivity;->startTime:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/lee/myapplication/EditScheduleActivity;->endDateBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/lee/myapplication/EditScheduleActivity;->dateFormat:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/lee/myapplication/EditScheduleActivity;->endTime:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcom/lee/myapplication/EditScheduleActivity;->endTimeBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/lee/myapplication/EditScheduleActivity;->timeFormat:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/lee/myapplication/EditScheduleActivity;->endTime:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 130
    return-void
.end method


# virtual methods
.method synthetic lambda$setupDateTimeButtons$0$com-lee-myapplication-EditScheduleActivity(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 75
    iget-object v0, p0, Lcom/lee/myapplication/EditScheduleActivity;->startTime:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/lee/myapplication/EditScheduleActivity;->startDateBtn:Landroid/widget/Button;

    invoke-direct {p0, v0, v1}, Lcom/lee/myapplication/EditScheduleActivity;->showDatePicker(Ljava/util/Calendar;Landroid/widget/Button;)V

    return-void
.end method

.method synthetic lambda$setupDateTimeButtons$1$com-lee-myapplication-EditScheduleActivity(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 76
    iget-object v0, p0, Lcom/lee/myapplication/EditScheduleActivity;->startTime:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/lee/myapplication/EditScheduleActivity;->startTimeBtn:Landroid/widget/Button;

    invoke-direct {p0, v0, v1}, Lcom/lee/myapplication/EditScheduleActivity;->showTimePicker(Ljava/util/Calendar;Landroid/widget/Button;)V

    return-void
.end method

.method synthetic lambda$setupDateTimeButtons$2$com-lee-myapplication-EditScheduleActivity(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 77
    iget-object v0, p0, Lcom/lee/myapplication/EditScheduleActivity;->endTime:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/lee/myapplication/EditScheduleActivity;->endDateBtn:Landroid/widget/Button;

    invoke-direct {p0, v0, v1}, Lcom/lee/myapplication/EditScheduleActivity;->showDatePicker(Ljava/util/Calendar;Landroid/widget/Button;)V

    return-void
.end method

.method synthetic lambda$setupDateTimeButtons$3$com-lee-myapplication-EditScheduleActivity(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 78
    iget-object v0, p0, Lcom/lee/myapplication/EditScheduleActivity;->endTime:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/lee/myapplication/EditScheduleActivity;->endTimeBtn:Landroid/widget/Button;

    invoke-direct {p0, v0, v1}, Lcom/lee/myapplication/EditScheduleActivity;->showTimePicker(Ljava/util/Calendar;Landroid/widget/Button;)V

    return-void
.end method

.method synthetic lambda$setupDateTimeButtons$4$com-lee-myapplication-EditScheduleActivity(Landroid/widget/CompoundButton;Z)V
    .registers 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 81
    iget-object v0, p0, Lcom/lee/myapplication/EditScheduleActivity;->startTimeBtn:Landroid/widget/Button;

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 82
    iget-object v0, p0, Lcom/lee/myapplication/EditScheduleActivity;->endTimeBtn:Landroid/widget/Button;

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 83
    return-void
.end method

.method synthetic lambda$showDatePicker$5$com-lee-myapplication-EditScheduleActivity(Ljava/util/Calendar;Landroid/widget/DatePicker;III)V
    .registers 6
    .param p1, "calendar"    # Ljava/util/Calendar;
    .param p2, "view"    # Landroid/widget/DatePicker;
    .param p3, "year"    # I
    .param p4, "month"    # I
    .param p5, "dayOfMonth"    # I

    .line 111
    invoke-virtual {p1, p3, p4, p5}, Ljava/util/Calendar;->set(III)V

    .line 112
    invoke-direct {p0}, Lcom/lee/myapplication/EditScheduleActivity;->updateDateTimeButtons()V

    .line 113
    return-void
.end method

.method synthetic lambda$showTimePicker$6$com-lee-myapplication-EditScheduleActivity(Ljava/util/Calendar;Landroid/widget/TimePicker;II)V
    .registers 6
    .param p1, "calendar"    # Ljava/util/Calendar;
    .param p2, "view"    # Landroid/widget/TimePicker;
    .param p3, "hourOfDay"    # I
    .param p4, "minute"    # I

    .line 119
    const/16 v0, 0xb

    invoke-virtual {p1, v0, p3}, Ljava/util/Calendar;->set(II)V

    .line 120
    const/16 v0, 0xc

    invoke-virtual {p1, v0, p4}, Ljava/util/Calendar;->set(II)V

    .line 121
    invoke-direct {p0}, Lcom/lee/myapplication/EditScheduleActivity;->updateDateTimeButtons()V

    .line 122
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 32
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    sget v0, Lcom/lee/myapplication/R$layout;->activity_edit_schedule:I

    invoke-virtual {p0, v0}, Lcom/lee/myapplication/EditScheduleActivity;->setContentView(I)V

    .line 36
    invoke-virtual {p0}, Lcom/lee/myapplication/EditScheduleActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 37
    invoke-virtual {p0}, Lcom/lee/myapplication/EditScheduleActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 40
    :cond_16
    invoke-direct {p0}, Lcom/lee/myapplication/EditScheduleActivity;->initViews()V

    .line 41
    invoke-direct {p0}, Lcom/lee/myapplication/EditScheduleActivity;->setupDateTimeButtons()V

    .line 42
    invoke-direct {p0}, Lcom/lee/myapplication/EditScheduleActivity;->setupSpinners()V

    .line 45
    invoke-virtual {p0}, Lcom/lee/myapplication/EditScheduleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "schedule_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 46
    .local v0, "scheduleId":J
    cmp-long v2, v0, v2

    if-eqz v2, :cond_32

    .line 47
    invoke-direct {p0, v0, v1}, Lcom/lee/myapplication/EditScheduleActivity;->loadSchedule(J)V

    .line 49
    :cond_32
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 228
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_e

    .line 229
    invoke-virtual {p0}, Lcom/lee/myapplication/EditScheduleActivity;->finish()V

    .line 230
    const/4 v0, 0x1

    return v0

    .line 232
    :cond_e
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onSaveClick(Landroid/view/View;)V
    .registers 9
    .param p1, "view"    # Landroid/view/View;

    .line 187
    iget-object v0, p0, Lcom/lee/myapplication/EditScheduleActivity;->titleEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "title":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    .line 189
    const-string v1, "\u8bf7\u8f93\u5165\u65e5\u7a0b\u6807\u9898"

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 190
    return-void

    .line 193
    :cond_1f
    new-instance v1, Lcom/lee/myapplication/Schedule;

    invoke-direct {v1}, Lcom/lee/myapplication/Schedule;-><init>()V

    .line 194
    .local v1, "schedule":Lcom/lee/myapplication/Schedule;
    invoke-virtual {v1, v0}, Lcom/lee/myapplication/Schedule;->setTitle(Ljava/lang/String;)V

    .line 195
    iget-object v3, p0, Lcom/lee/myapplication/EditScheduleActivity;->descriptionEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/lee/myapplication/Schedule;->setDescription(Ljava/lang/String;)V

    .line 196
    iget-object v3, p0, Lcom/lee/myapplication/EditScheduleActivity;->startTime:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Lcom/lee/myapplication/Schedule;->setStartTime(Ljava/util/Calendar;)V

    .line 197
    iget-object v3, p0, Lcom/lee/myapplication/EditScheduleActivity;->endTime:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Lcom/lee/myapplication/Schedule;->setEndTime(Ljava/util/Calendar;)V

    .line 198
    iget-object v3, p0, Lcom/lee/myapplication/EditScheduleActivity;->categorySpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/lee/myapplication/Schedule;->setCategory(Ljava/lang/String;)V

    .line 199
    iget-object v3, p0, Lcom/lee/myapplication/EditScheduleActivity;->allDaySwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/lee/myapplication/Schedule;->setAllDay(Z)V

    .line 200
    iget-object v3, p0, Lcom/lee/myapplication/EditScheduleActivity;->repeatTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/lee/myapplication/Schedule;->setRepeatType(Ljava/lang/String;)V

    .line 203
    const/16 v3, 0x1e

    const/16 v4, 0x3c

    const/4 v5, 0x5

    const/16 v6, 0xf

    filled-new-array {v2, v5, v6, v3, v4}, [I

    move-result-object v3

    .line 204
    .local v3, "reminderValues":[I
    iget-object v4, p0, Lcom/lee/myapplication/EditScheduleActivity;->reminderSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    aget v4, v3, v4

    invoke-virtual {v1, v4}, Lcom/lee/myapplication/Schedule;->setReminderMinutes(I)V

    .line 206
    iget-object v4, p0, Lcom/lee/myapplication/EditScheduleActivity;->currentSchedule:Lcom/lee/myapplication/Schedule;

    if-eqz v4, :cond_9c

    .line 207
    iget-object v4, p0, Lcom/lee/myapplication/EditScheduleActivity;->currentSchedule:Lcom/lee/myapplication/Schedule;

    invoke-virtual {v4}, Lcom/lee/myapplication/Schedule;->getId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/lee/myapplication/Schedule;->setId(J)V

    .line 209
    iget-object v4, p0, Lcom/lee/myapplication/EditScheduleActivity;->currentSchedule:Lcom/lee/myapplication/Schedule;

    invoke-virtual {v4}, Lcom/lee/myapplication/Schedule;->getId()J

    move-result-wide v4

    invoke-static {p0, v4, v5}, Lcom/lee/myapplication/ReminderService;->cancelReminder(Landroid/content/Context;J)V

    .line 210
    iget-object v4, p0, Lcom/lee/myapplication/EditScheduleActivity;->dbHelper:Lcom/lee/myapplication/DatabaseHelper;

    invoke-virtual {v4, v1}, Lcom/lee/myapplication/DatabaseHelper;->updateSchedule(Lcom/lee/myapplication/Schedule;)I

    .line 211
    const-string v4, "\u65e5\u7a0b\u5df2\u66f4\u65b0"

    invoke-static {p0, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_ae

    .line 213
    :cond_9c
    iget-object v4, p0, Lcom/lee/myapplication/EditScheduleActivity;->dbHelper:Lcom/lee/myapplication/DatabaseHelper;

    invoke-virtual {v4, v1}, Lcom/lee/myapplication/DatabaseHelper;->addSchedule(Lcom/lee/myapplication/Schedule;)J

    move-result-wide v4

    .line 214
    .local v4, "id":J
    invoke-virtual {v1, v4, v5}, Lcom/lee/myapplication/Schedule;->setId(J)V

    .line 215
    const-string v6, "\u65e5\u7a0b\u5df2\u521b\u5efa"

    invoke-static {p0, v6, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 219
    .end local v4    # "id":J
    :goto_ae
    invoke-virtual {v1}, Lcom/lee/myapplication/Schedule;->getReminderMinutes()I

    move-result v2

    if-lez v2, :cond_b7

    .line 220
    invoke-static {p0, v1}, Lcom/lee/myapplication/ReminderService;->scheduleReminder(Landroid/content/Context;Lcom/lee/myapplication/Schedule;)V

    .line 223
    :cond_b7
    invoke-virtual {p0}, Lcom/lee/myapplication/EditScheduleActivity;->finish()V

    .line 224
    return-void
.end method
