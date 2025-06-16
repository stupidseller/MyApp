.class public Lcom/lee/myapplication/ReminderService;
.super Landroid/app/Service;
.source "ReminderService.java"


# static fields
.field private static final CHANNEL_ID:Ljava/lang/String; = "schedule_reminder_channel"

.field private static final CHANNEL_NAME:Ljava/lang/String; = "\u65e5\u7a0b\u63d0\u9192"


# instance fields
.field private context:Landroid/content/Context;

.field private dbHelper:Lcom/lee/myapplication/DatabaseHelper;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static cancelReminder(Landroid/content/Context;J)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "scheduleId"    # J

    .line 122
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lee/myapplication/ReminderService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    .local v0, "intent":Landroid/content/Intent;
    long-to-int v1, p1

    const/high16 v2, 0xc000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 130
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 131
    .local v2, "alarmManager":Landroid/app/AlarmManager;
    invoke-virtual {v2, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 132
    return-void
.end method

.method private createNotificationChannel()V
    .registers 5

    .line 48
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_24

    .line 49
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "\u65e5\u7a0b\u63d0\u9192"

    const/4 v2, 0x4

    const-string v3, "schedule_reminder_channel"

    invoke-direct {v0, v3, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 54
    .local v0, "channel":Landroid/app/NotificationChannel;
    const-string v1, "\u65e5\u7a0b\u63d0\u9192\u901a\u77e5"

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 55
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 57
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Lcom/lee/myapplication/ReminderService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 58
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 60
    .end local v0    # "channel":Landroid/app/NotificationChannel;
    .end local v1    # "notificationManager":Landroid/app/NotificationManager;
    :cond_24
    return-void
.end method

.method public static scheduleReminder(Landroid/content/Context;Lcom/lee/myapplication/Schedule;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "schedule"    # Lcom/lee/myapplication/Schedule;

    .line 89
    invoke-virtual {p1}, Lcom/lee/myapplication/Schedule;->getStartTime()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 90
    .local v0, "reminderTime":Ljava/util/Calendar;
    invoke-virtual {p1}, Lcom/lee/myapplication/Schedule;->getReminderMinutes()I

    move-result v1

    neg-int v1, v1

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 93
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/lee/myapplication/ReminderService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "schedule_id"

    invoke-virtual {p1}, Lcom/lee/myapplication/Schedule;->getId()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 97
    nop

    .line 99
    invoke-virtual {p1}, Lcom/lee/myapplication/Schedule;->getId()J

    move-result-wide v2

    long-to-int v2, v2

    .line 97
    const/high16 v3, 0xc000000

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 105
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 106
    .local v3, "alarmManager":Landroid/app/AlarmManager;
    nop

    .line 107
    nop

    .line 109
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 107
    const/4 v6, 0x0

    invoke-virtual {v3, v6, v4, v5, v2}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 119
    return-void
.end method

.method private showNotification(Lcom/lee/myapplication/Schedule;)V
    .registers 8
    .param p1, "schedule"    # Lcom/lee/myapplication/Schedule;

    .line 63
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lee/myapplication/ScheduleDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "schedule_id"

    invoke-virtual {p1}, Lcom/lee/myapplication/Schedule;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 66
    nop

    .line 68
    invoke-virtual {p1}, Lcom/lee/myapplication/Schedule;->getId()J

    move-result-wide v1

    long-to-int v1, v1

    .line 66
    const/high16 v2, 0xc000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 73
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    const-string v3, "schedule_reminder_channel"

    invoke-direct {v2, p0, v3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v3, Lcom/lee/myapplication/R$drawable;->ic_notification:I

    .line 74
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 75
    invoke-virtual {p1}, Lcom/lee/myapplication/Schedule;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 76
    invoke-virtual {p1}, Lcom/lee/myapplication/Schedule;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 77
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 78
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 79
    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [J

    fill-array-data v3, :array_66

    .line 80
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setVibrate([J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 82
    .local v2, "builder":Landroidx/core/app/NotificationCompat$Builder;
    nop

    .line 83
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Lcom/lee/myapplication/ReminderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 84
    .local v3, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {p1}, Lcom/lee/myapplication/Schedule;->getId()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 85
    return-void

    :array_66
    .array-data 8
        0x0
        0x1f4
        0xc8
        0x1f4
    .end array-data
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 2

    .line 24
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 25
    new-instance v0, Lcom/lee/myapplication/DatabaseHelper;

    invoke-direct {v0, p0}, Lcom/lee/myapplication/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lee/myapplication/ReminderService;->dbHelper:Lcom/lee/myapplication/DatabaseHelper;

    .line 26
    invoke-direct {p0}, Lcom/lee/myapplication/ReminderService;->createNotificationChannel()V

    .line 27
    iput-object p0, p0, Lcom/lee/myapplication/ReminderService;->context:Landroid/content/Context;

    .line 28
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 32
    if-eqz p1, :cond_1b

    const-string v0, "schedule_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 33
    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 34
    .local v0, "scheduleId":J
    iget-object v2, p0, Lcom/lee/myapplication/ReminderService;->dbHelper:Lcom/lee/myapplication/DatabaseHelper;

    invoke-virtual {v2, v0, v1}, Lcom/lee/myapplication/DatabaseHelper;->getScheduleById(J)Lcom/lee/myapplication/Schedule;

    move-result-object v2

    .line 35
    .local v2, "schedule":Lcom/lee/myapplication/Schedule;
    if-eqz v2, :cond_1b

    .line 36
    invoke-direct {p0, v2}, Lcom/lee/myapplication/ReminderService;->showNotification(Lcom/lee/myapplication/Schedule;)V

    .line 39
    .end local v0    # "scheduleId":J
    .end local v2    # "schedule":Lcom/lee/myapplication/Schedule;
    :cond_1b
    const/4 v0, 0x2

    return v0
.end method
