package com.lee.myapplication;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

public class DatabaseHelper extends SQLiteOpenHelper {
    private static final String DATABASE_NAME = "calendar.db";
    private static final int DATABASE_VERSION = 1;

    // 日程表
    private static final String TABLE_SCHEDULE = "schedule";
    private static final String COLUMN_ID = "id";
    private static final String COLUMN_TITLE = "title";
    private static final String COLUMN_DESCRIPTION = "description";
    private static final String COLUMN_START_TIME = "start_time";
    private static final String COLUMN_END_TIME = "end_time";
    private static final String COLUMN_CATEGORY = "category";
    private static final String COLUMN_ALL_DAY = "all_day";
    private static final String COLUMN_REPEAT_TYPE = "repeat_type";
    private static final String COLUMN_REMINDER_MINUTES = "reminder_minutes";
    private static final String COLUMN_COLOR = "color";

    // 节假日表
    private static final String TABLE_HOLIDAYS = "holidays";
    private static final String COLUMN_HOLIDAY_ID = "id";
    private static final String COLUMN_HOLIDAY_NAME = "name";
    private static final String COLUMN_HOLIDAY_MONTH = "month";
    private static final String COLUMN_HOLIDAY_DAY = "day";
    private static final String COLUMN_HOLIDAY_IS_LUNAR = "is_lunar";
    private static final String COLUMN_HOLIDAY_IS_REST_DAY = "is_rest_day";
    private static final String COLUMN_HOLIDAY_DESCRIPTION = "description";

    public DatabaseHelper(Context context) {
        super(context, DATABASE_NAME, null, DATABASE_VERSION);
    }

    @Override
    public void onCreate(SQLiteDatabase db) {
        String CREATE_SCHEDULE_TABLE = "CREATE TABLE " + TABLE_SCHEDULE + "("
                + COLUMN_ID + " INTEGER PRIMARY KEY AUTOINCREMENT,"
                + COLUMN_TITLE + " TEXT,"
                + COLUMN_DESCRIPTION + " TEXT,"
                + COLUMN_START_TIME + " INTEGER,"
                + COLUMN_END_TIME + " INTEGER,"
                + COLUMN_CATEGORY + " TEXT,"
                + COLUMN_ALL_DAY + " INTEGER,"
                + COLUMN_REPEAT_TYPE + " TEXT,"
                + COLUMN_REMINDER_MINUTES + " INTEGER,"
                + COLUMN_COLOR + " INTEGER"
                + ")";
        db.execSQL(CREATE_SCHEDULE_TABLE);

        // 创建节假日表
        String CREATE_HOLIDAYS_TABLE = "CREATE TABLE " + TABLE_HOLIDAYS + "("
                + COLUMN_HOLIDAY_ID + " INTEGER PRIMARY KEY AUTOINCREMENT,"
                + COLUMN_HOLIDAY_NAME + " TEXT,"
                + COLUMN_HOLIDAY_MONTH + " INTEGER,"
                + COLUMN_HOLIDAY_DAY + " INTEGER,"
                + COLUMN_HOLIDAY_IS_LUNAR + " INTEGER,"
                + COLUMN_HOLIDAY_IS_REST_DAY + " INTEGER,"
                + COLUMN_HOLIDAY_DESCRIPTION + " TEXT"
                + ")";
        db.execSQL(CREATE_HOLIDAYS_TABLE);
        
        // 初始化默认节假日数据
        initializeHolidays(db);
    }

    @Override
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        db.execSQL("DROP TABLE IF EXISTS " + TABLE_SCHEDULE);
        db.execSQL("DROP TABLE IF EXISTS " + TABLE_HOLIDAYS);
        onCreate(db);
    }

    // 添加日程
    public long addSchedule(Schedule schedule) {
        SQLiteDatabase db = this.getWritableDatabase();
        ContentValues values = new ContentValues();

        values.put(COLUMN_TITLE, schedule.getTitle());
        values.put(COLUMN_DESCRIPTION, schedule.getDescription());
        values.put(COLUMN_START_TIME, schedule.getStartTime().getTimeInMillis());
        values.put(COLUMN_END_TIME, schedule.getEndTime().getTimeInMillis());
        values.put(COLUMN_CATEGORY, schedule.getCategory());
        values.put(COLUMN_ALL_DAY, schedule.isAllDay() ? 1 : 0);
        values.put(COLUMN_REPEAT_TYPE, schedule.getRepeatType());
        values.put(COLUMN_REMINDER_MINUTES, schedule.getReminderMinutes());
        values.put(COLUMN_COLOR, schedule.getColor());

        long id = db.insert(TABLE_SCHEDULE, null, values);
        db.close();
        return id;
    }

    // 获取指定日期的日程
    public List<Schedule> getSchedulesByDate(Calendar date) {
        List<Schedule> schedules = new ArrayList<>();
        
        // 设置日期范围
        Calendar startOfDay = (Calendar) date.clone();
        startOfDay.set(Calendar.HOUR_OF_DAY, 0);
        startOfDay.set(Calendar.MINUTE, 0);
        
        Calendar endOfDay = (Calendar) date.clone();
        endOfDay.set(Calendar.HOUR_OF_DAY, 23);
        endOfDay.set(Calendar.MINUTE, 59);

        String selection = COLUMN_START_TIME + " <= ? AND " + COLUMN_END_TIME + " >= ?";
        String[] selectionArgs = new String[]{
            String.valueOf(endOfDay.getTimeInMillis()),
            String.valueOf(startOfDay.getTimeInMillis())
        };

        SQLiteDatabase db = this.getReadableDatabase();
        Cursor cursor = db.query(TABLE_SCHEDULE, null, selection, selectionArgs,
            null, null, COLUMN_START_TIME + " ASC");

        if (cursor.moveToFirst()) {
            do {
                Schedule schedule = new Schedule();
                schedule.setId(cursor.getLong(cursor.getColumnIndex(COLUMN_ID)));
                schedule.setTitle(cursor.getString(cursor.getColumnIndex(COLUMN_TITLE)));
                schedule.setDescription(cursor.getString(cursor.getColumnIndex(COLUMN_DESCRIPTION)));
                
                Calendar startTime = Calendar.getInstance();
                startTime.setTimeInMillis(cursor.getLong(cursor.getColumnIndex(COLUMN_START_TIME)));
                schedule.setStartTime(startTime);
                
                Calendar endTime = Calendar.getInstance();
                endTime.setTimeInMillis(cursor.getLong(cursor.getColumnIndex(COLUMN_END_TIME)));
                schedule.setEndTime(endTime);
                
                schedule.setCategory(cursor.getString(cursor.getColumnIndex(COLUMN_CATEGORY)));
                schedule.setAllDay(cursor.getInt(cursor.getColumnIndex(COLUMN_ALL_DAY)) == 1);
                schedule.setRepeatType(cursor.getString(cursor.getColumnIndex(COLUMN_REPEAT_TYPE)));
                schedule.setReminderMinutes(cursor.getInt(cursor.getColumnIndex(COLUMN_REMINDER_MINUTES)));
                schedule.setColor(cursor.getInt(cursor.getColumnIndex(COLUMN_COLOR)));
                
                schedules.add(schedule);
            } while (cursor.moveToNext());
        }
        
        cursor.close();
        db.close();
        return schedules;
    }

    // 更新日程
    public int updateSchedule(Schedule schedule) {
        SQLiteDatabase db = this.getWritableDatabase();
        ContentValues values = new ContentValues();

        values.put(COLUMN_TITLE, schedule.getTitle());
        values.put(COLUMN_DESCRIPTION, schedule.getDescription());
        values.put(COLUMN_START_TIME, schedule.getStartTime().getTimeInMillis());
        values.put(COLUMN_END_TIME, schedule.getEndTime().getTimeInMillis());
        values.put(COLUMN_CATEGORY, schedule.getCategory());
        values.put(COLUMN_ALL_DAY, schedule.isAllDay() ? 1 : 0);
        values.put(COLUMN_REPEAT_TYPE, schedule.getRepeatType());
        values.put(COLUMN_REMINDER_MINUTES, schedule.getReminderMinutes());
        values.put(COLUMN_COLOR, schedule.getColor());

        int result = db.update(TABLE_SCHEDULE, values,
            COLUMN_ID + " = ?",
            new String[]{String.valueOf(schedule.getId())});
            
        db.close();
        return result;
    }

    // 删除日程
    public void deleteSchedule(long scheduleId) {
        // 先获取日程信息，检查是否有提醒需要取消
        Schedule schedule = getScheduleById(scheduleId);
        
        SQLiteDatabase db = this.getWritableDatabase();
        db.delete(TABLE_SCHEDULE,
            COLUMN_ID + " = ?",
            new String[]{String.valueOf(scheduleId)});
        db.close();
        
        // 如果设置了提醒，删除日程后需要取消提醒
        if (schedule != null && schedule.getReminderMinutes() > 0) {
            // 取消相关提醒，在外部执行
            // 此处不直接调用ReminderService.cancelReminder，避免耦合
        }
    }

    // 获取单个日程
    public Schedule getScheduleById(long scheduleId) {
        SQLiteDatabase db = this.getReadableDatabase();
        Cursor cursor = db.query(TABLE_SCHEDULE, null,
            COLUMN_ID + " = ?",
            new String[]{String.valueOf(scheduleId)},
            null, null, null);

        Schedule schedule = null;
        if (cursor.moveToFirst()) {
            schedule = new Schedule();
            schedule.setId(cursor.getLong(cursor.getColumnIndex(COLUMN_ID)));
            schedule.setTitle(cursor.getString(cursor.getColumnIndex(COLUMN_TITLE)));
            schedule.setDescription(cursor.getString(cursor.getColumnIndex(COLUMN_DESCRIPTION)));
            
            Calendar startTime = Calendar.getInstance();
            startTime.setTimeInMillis(cursor.getLong(cursor.getColumnIndex(COLUMN_START_TIME)));
            schedule.setStartTime(startTime);
            
            Calendar endTime = Calendar.getInstance();
            endTime.setTimeInMillis(cursor.getLong(cursor.getColumnIndex(COLUMN_END_TIME)));
            schedule.setEndTime(endTime);
            
            schedule.setCategory(cursor.getString(cursor.getColumnIndex(COLUMN_CATEGORY)));
            schedule.setAllDay(cursor.getInt(cursor.getColumnIndex(COLUMN_ALL_DAY)) == 1);
            schedule.setRepeatType(cursor.getString(cursor.getColumnIndex(COLUMN_REPEAT_TYPE)));
            schedule.setReminderMinutes(cursor.getInt(cursor.getColumnIndex(COLUMN_REMINDER_MINUTES)));
            schedule.setColor(cursor.getInt(cursor.getColumnIndex(COLUMN_COLOR)));
        }
        
        cursor.close();
        db.close();
        return schedule;
    }

    // 添加初始化节假日数据的方法
    private void initializeHolidays(SQLiteDatabase db) {
        // 添加公历节假日
        addHoliday(db, new Holiday("元旦", 1, 1, false, true, "新年第一天"));
        addHoliday(db, new Holiday("劳动节", 5, 1, false, true, "国际劳动节"));
        addHoliday(db, new Holiday("国庆节", 10, 1, false, true, "国庆节"));
        addHoliday(db, new Holiday("圣诞节", 12, 25, false, false, "圣诞节"));
        
        // 添加农历节假日
        addHoliday(db, new Holiday("春节", 1, 1, true, true, "农历新年"));
        addHoliday(db, new Holiday("元宵节", 1, 15, true, false, "正月十五元宵节"));
        addHoliday(db, new Holiday("端午节", 5, 5, true, true, "端午节"));
        addHoliday(db, new Holiday("中秋节", 8, 15, true, true, "中秋节"));
    }

    // 添加节假日的方法
    public void addHoliday(SQLiteDatabase db, Holiday holiday) {
        ContentValues values = new ContentValues();
        values.put(COLUMN_HOLIDAY_NAME, holiday.getName());
        values.put(COLUMN_HOLIDAY_MONTH, holiday.getMonth());
        values.put(COLUMN_HOLIDAY_DAY, holiday.getDay());
        values.put(COLUMN_HOLIDAY_IS_LUNAR, holiday.isLunar() ? 1 : 0);
        values.put(COLUMN_HOLIDAY_IS_REST_DAY, holiday.isRestDay() ? 1 : 0);
        values.put(COLUMN_HOLIDAY_DESCRIPTION, holiday.getDescription());
        
        db.insert(TABLE_HOLIDAYS, null, values);
    }

    // 获取指定日期的节假日
    public List<Holiday> getHolidaysForDate(int year, int month, int day) {
        List<Holiday> holidays = new ArrayList<>();
        SQLiteDatabase db = this.getReadableDatabase();
        
        // 查询公历节假日
        String selection = COLUMN_HOLIDAY_MONTH + " = ? AND " 
                + COLUMN_HOLIDAY_DAY + " = ? AND "
                + COLUMN_HOLIDAY_IS_LUNAR + " = 0";
        String[] selectionArgs = {String.valueOf(month), String.valueOf(day)};
        
        Cursor cursor = db.query(TABLE_HOLIDAYS, null, selection, selectionArgs, null, null, null);
        while (cursor.moveToNext()) {
            holidays.add(cursorToHoliday(cursor));
        }
        cursor.close();
        
        // 查询农历节假日
        int[] lunarDate = LunarCalendarUtil.solarToLunar(year, month, day);
        selection = COLUMN_HOLIDAY_MONTH + " = ? AND " 
                + COLUMN_HOLIDAY_DAY + " = ? AND "
                + COLUMN_HOLIDAY_IS_LUNAR + " = 1";
        selectionArgs = new String[]{String.valueOf(lunarDate[1]), String.valueOf(lunarDate[2])};
        
        cursor = db.query(TABLE_HOLIDAYS, null, selection, selectionArgs, null, null, null);
        while (cursor.moveToNext()) {
            holidays.add(cursorToHoliday(cursor));
        }
        cursor.close();
        
        return holidays;
    }

    // 将Cursor转换为Holiday对象
    private Holiday cursorToHoliday(Cursor cursor) {
        Holiday holiday = new Holiday();
        holiday.setId(cursor.getLong(cursor.getColumnIndex(COLUMN_HOLIDAY_ID)));
        holiday.setName(cursor.getString(cursor.getColumnIndex(COLUMN_HOLIDAY_NAME)));
        holiday.setMonth(cursor.getInt(cursor.getColumnIndex(COLUMN_HOLIDAY_MONTH)));
        holiday.setDay(cursor.getInt(cursor.getColumnIndex(COLUMN_HOLIDAY_DAY)));
        holiday.setLunar(cursor.getInt(cursor.getColumnIndex(COLUMN_HOLIDAY_IS_LUNAR)) == 1);
        holiday.setRestDay(cursor.getInt(cursor.getColumnIndex(COLUMN_HOLIDAY_IS_REST_DAY)) == 1);
        holiday.setDescription(cursor.getString(cursor.getColumnIndex(COLUMN_HOLIDAY_DESCRIPTION)));
        return holiday;
    }
} 