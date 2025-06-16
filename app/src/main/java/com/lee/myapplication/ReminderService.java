package com.lee.myapplication;

import android.app.AlarmManager;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
import android.os.IBinder;
import androidx.core.app.NotificationCompat;
import java.util.Calendar;

public class ReminderService extends Service {
    private static final String CHANNEL_ID = "schedule_reminder_channel";
    private static final String CHANNEL_NAME = "日程提醒";
    private DatabaseHelper dbHelper;
    private Context context;

    @Override
    public void onCreate() {
        super.onCreate();
        dbHelper = new DatabaseHelper(this);
        createNotificationChannel();
        context = this;
    }

    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {
        if (intent != null && intent.hasExtra("schedule_id")) {
            long scheduleId = intent.getLongExtra("schedule_id", -1);
            Schedule schedule = dbHelper.getScheduleById(scheduleId);
            if (schedule != null) {
                showNotification(schedule);
            }
        }
        return START_NOT_STICKY;
    }

    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }

    private void createNotificationChannel() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            NotificationChannel channel = new NotificationChannel(
                CHANNEL_ID,
                CHANNEL_NAME,
                NotificationManager.IMPORTANCE_HIGH
            );
            channel.setDescription("日程提醒通知");
            channel.enableVibration(true);
            
            NotificationManager notificationManager = getSystemService(NotificationManager.class);
            notificationManager.createNotificationChannel(channel);
        }
    }

    private void showNotification(Schedule schedule) {
        Intent intent = new Intent(this, ScheduleDetailActivity.class);
        intent.putExtra("schedule_id", schedule.getId());
        
        PendingIntent pendingIntent = PendingIntent.getActivity(
            this,
            (int) schedule.getId(),
            intent,
            PendingIntent.FLAG_UPDATE_CURRENT | PendingIntent.FLAG_IMMUTABLE
        );

        NotificationCompat.Builder builder = new NotificationCompat.Builder(this, CHANNEL_ID)
            .setSmallIcon(R.drawable.ic_notification)
            .setContentTitle(schedule.getTitle())
            .setContentText(schedule.getDescription())
            .setPriority(NotificationCompat.PRIORITY_HIGH)
            .setAutoCancel(true)
            .setContentIntent(pendingIntent)
            .setVibrate(new long[]{0, 500, 200, 500});

        NotificationManager notificationManager = 
            (NotificationManager) getSystemService(Context.NOTIFICATION_SERVICE);
        notificationManager.notify((int) schedule.getId(), builder.build());
    }

    public static void scheduleReminder(Context context, Schedule schedule) {
        // 计算提醒时间
        Calendar reminderTime = (Calendar) schedule.getStartTime().clone();
        reminderTime.add(Calendar.MINUTE, -schedule.getReminderMinutes());

        // 创建Intent
        Intent intent = new Intent(context, ReminderService.class);
        intent.putExtra("schedule_id", schedule.getId());

        // 创建PendingIntent
        PendingIntent pendingIntent = PendingIntent.getService(
            context,
            (int) schedule.getId(),
            intent,
            PendingIntent.FLAG_UPDATE_CURRENT | PendingIntent.FLAG_IMMUTABLE
        );

        // 设置闹钟
        AlarmManager alarmManager = (AlarmManager) context.getSystemService(Context.ALARM_SERVICE);
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
            alarmManager.setExactAndAllowWhileIdle(
                AlarmManager.RTC_WAKEUP,
                reminderTime.getTimeInMillis(),
                pendingIntent
            );
        } else {
            alarmManager.setExact(
                AlarmManager.RTC_WAKEUP,
                reminderTime.getTimeInMillis(),
                pendingIntent
            );
        }
    }

    public static void cancelReminder(Context context, long scheduleId) {
        Intent intent = new Intent(context, ReminderService.class);
        PendingIntent pendingIntent = PendingIntent.getService(
            context,
            (int) scheduleId,
            intent,
            PendingIntent.FLAG_UPDATE_CURRENT | PendingIntent.FLAG_IMMUTABLE
        );

        AlarmManager alarmManager = (AlarmManager) context.getSystemService(Context.ALARM_SERVICE);
        alarmManager.cancel(pendingIntent);
    }
} 