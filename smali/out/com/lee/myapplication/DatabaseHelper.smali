.class public Lcom/lee/myapplication/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# static fields
.field private static final COLUMN_ALL_DAY:Ljava/lang/String; = "all_day"

.field private static final COLUMN_CATEGORY:Ljava/lang/String; = "category"

.field private static final COLUMN_COLOR:Ljava/lang/String; = "color"

.field private static final COLUMN_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final COLUMN_END_TIME:Ljava/lang/String; = "end_time"

.field private static final COLUMN_HOLIDAY_DAY:Ljava/lang/String; = "day"

.field private static final COLUMN_HOLIDAY_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final COLUMN_HOLIDAY_ID:Ljava/lang/String; = "id"

.field private static final COLUMN_HOLIDAY_IS_LUNAR:Ljava/lang/String; = "is_lunar"

.field private static final COLUMN_HOLIDAY_IS_REST_DAY:Ljava/lang/String; = "is_rest_day"

.field private static final COLUMN_HOLIDAY_MONTH:Ljava/lang/String; = "month"

.field private static final COLUMN_HOLIDAY_NAME:Ljava/lang/String; = "name"

.field private static final COLUMN_ID:Ljava/lang/String; = "id"

.field private static final COLUMN_REMINDER_MINUTES:Ljava/lang/String; = "reminder_minutes"

.field private static final COLUMN_REPEAT_TYPE:Ljava/lang/String; = "repeat_type"

.field private static final COLUMN_START_TIME:Ljava/lang/String; = "start_time"

.field private static final COLUMN_TITLE:Ljava/lang/String; = "title"

.field private static final DATABASE_NAME:Ljava/lang/String; = "calendar.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final TABLE_HOLIDAYS:Ljava/lang/String; = "holidays"

.field private static final TABLE_SCHEDULE:Ljava/lang/String; = "schedule"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "calendar.db"

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 41
    return-void
.end method

.method private cursorToHoliday(Landroid/database/Cursor;)Lcom/lee/myapplication/Holiday;
    .registers 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 294
    new-instance v0, Lcom/lee/myapplication/Holiday;

    invoke-direct {v0}, Lcom/lee/myapplication/Holiday;-><init>()V

    .line 295
    .local v0, "holiday":Lcom/lee/myapplication/Holiday;
    const-string v1, "id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/lee/myapplication/Holiday;->setId(J)V

    .line 296
    const-string v1, "name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lee/myapplication/Holiday;->setName(Ljava/lang/String;)V

    .line 297
    const-string v1, "month"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lee/myapplication/Holiday;->setMonth(I)V

    .line 298
    const-string v1, "day"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lee/myapplication/Holiday;->setDay(I)V

    .line 299
    const-string v1, "is_lunar"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_49

    move v1, v3

    goto :goto_4a

    :cond_49
    move v1, v2

    :goto_4a
    invoke-virtual {v0, v1}, Lcom/lee/myapplication/Holiday;->setLunar(Z)V

    .line 300
    const-string v1, "is_rest_day"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v3, :cond_5a

    move v2, v3

    :cond_5a
    invoke-virtual {v0, v2}, Lcom/lee/myapplication/Holiday;->setRestDay(Z)V

    .line 301
    const-string v1, "description"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lee/myapplication/Holiday;->setDescription(Ljava/lang/String;)V

    .line 302
    return-object v0
.end method

.method private initializeHolidays(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 19
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 234
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v9, Lcom/lee/myapplication/Holiday;

    const/4 v7, 0x1

    const-string v8, "\u65b0\u5e74\u7b2c\u4e00\u5929"

    const-string v3, "\u5143\u65e6"

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/lee/myapplication/Holiday;-><init>(Ljava/lang/String;IIZZLjava/lang/String;)V

    invoke-virtual {v0, v1, v9}, Lcom/lee/myapplication/DatabaseHelper;->addHoliday(Landroid/database/sqlite/SQLiteDatabase;Lcom/lee/myapplication/Holiday;)V

    .line 235
    new-instance v2, Lcom/lee/myapplication/Holiday;

    const/4 v15, 0x1

    const-string v16, "\u56fd\u9645\u52b3\u52a8\u8282"

    const-string v11, "\u52b3\u52a8\u8282"

    const/4 v12, 0x5

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Lcom/lee/myapplication/Holiday;-><init>(Ljava/lang/String;IIZZLjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/lee/myapplication/DatabaseHelper;->addHoliday(Landroid/database/sqlite/SQLiteDatabase;Lcom/lee/myapplication/Holiday;)V

    .line 236
    new-instance v2, Lcom/lee/myapplication/Holiday;

    const/4 v8, 0x1

    const-string v9, "\u56fd\u5e86\u8282"

    const-string v4, "\u56fd\u5e86\u8282"

    const/16 v5, 0xa

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/lee/myapplication/Holiday;-><init>(Ljava/lang/String;IIZZLjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/lee/myapplication/DatabaseHelper;->addHoliday(Landroid/database/sqlite/SQLiteDatabase;Lcom/lee/myapplication/Holiday;)V

    .line 237
    new-instance v2, Lcom/lee/myapplication/Holiday;

    const/4 v15, 0x0

    const-string v16, "\u5723\u8bde\u8282"

    const-string v11, "\u5723\u8bde\u8282"

    const/16 v12, 0xc

    const/16 v13, 0x19

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Lcom/lee/myapplication/Holiday;-><init>(Ljava/lang/String;IIZZLjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/lee/myapplication/DatabaseHelper;->addHoliday(Landroid/database/sqlite/SQLiteDatabase;Lcom/lee/myapplication/Holiday;)V

    .line 240
    new-instance v2, Lcom/lee/myapplication/Holiday;

    const-string v9, "\u519c\u5386\u65b0\u5e74"

    const-string v4, "\u6625\u8282"

    const/4 v5, 0x1

    const/4 v7, 0x1

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/lee/myapplication/Holiday;-><init>(Ljava/lang/String;IIZZLjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/lee/myapplication/DatabaseHelper;->addHoliday(Landroid/database/sqlite/SQLiteDatabase;Lcom/lee/myapplication/Holiday;)V

    .line 241
    new-instance v2, Lcom/lee/myapplication/Holiday;

    const-string v16, "\u6b63\u6708\u5341\u4e94\u5143\u5bb5\u8282"

    const-string v11, "\u5143\u5bb5\u8282"

    const/4 v12, 0x1

    const/16 v13, 0xf

    const/4 v14, 0x1

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Lcom/lee/myapplication/Holiday;-><init>(Ljava/lang/String;IIZZLjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/lee/myapplication/DatabaseHelper;->addHoliday(Landroid/database/sqlite/SQLiteDatabase;Lcom/lee/myapplication/Holiday;)V

    .line 242
    new-instance v2, Lcom/lee/myapplication/Holiday;

    const-string v9, "\u7aef\u5348\u8282"

    const-string v4, "\u7aef\u5348\u8282"

    const/4 v5, 0x5

    const/4 v6, 0x5

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/lee/myapplication/Holiday;-><init>(Ljava/lang/String;IIZZLjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/lee/myapplication/DatabaseHelper;->addHoliday(Landroid/database/sqlite/SQLiteDatabase;Lcom/lee/myapplication/Holiday;)V

    .line 243
    new-instance v2, Lcom/lee/myapplication/Holiday;

    const/4 v15, 0x1

    const-string v16, "\u4e2d\u79cb\u8282"

    const-string v11, "\u4e2d\u79cb\u8282"

    const/16 v12, 0x8

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Lcom/lee/myapplication/Holiday;-><init>(Ljava/lang/String;IIZZLjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/lee/myapplication/DatabaseHelper;->addHoliday(Landroid/database/sqlite/SQLiteDatabase;Lcom/lee/myapplication/Holiday;)V

    .line 244
    return-void
.end method


# virtual methods
.method public addHoliday(Landroid/database/sqlite/SQLiteDatabase;Lcom/lee/myapplication/Holiday;)V
    .registers 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "holiday"    # Lcom/lee/myapplication/Holiday;

    .line 248
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 249
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {p2}, Lcom/lee/myapplication/Holiday;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-virtual {p2}, Lcom/lee/myapplication/Holiday;->getMonth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "month"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 251
    invoke-virtual {p2}, Lcom/lee/myapplication/Holiday;->getDay()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "day"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 252
    invoke-virtual {p2}, Lcom/lee/myapplication/Holiday;->isLunar()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "is_lunar"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 253
    invoke-virtual {p2}, Lcom/lee/myapplication/Holiday;->isRestDay()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "is_rest_day"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 254
    const-string v1, "description"

    invoke-virtual {p2}, Lcom/lee/myapplication/Holiday;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v1, "holidays"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 257
    return-void
.end method

.method public addSchedule(Lcom/lee/myapplication/Schedule;)J
    .registers 6
    .param p1, "schedule"    # Lcom/lee/myapplication/Schedule;

    .line 84
    invoke-virtual {p0}, Lcom/lee/myapplication/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 85
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 87
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "title"

    invoke-virtual {p1}, Lcom/lee/myapplication/Schedule;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v2, "description"

    invoke-virtual {p1}, Lcom/lee/myapplication/Schedule;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1}, Lcom/lee/myapplication/Schedule;->getStartTime()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "start_time"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 90
    invoke-virtual {p1}, Lcom/lee/myapplication/Schedule;->getEndTime()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "end_time"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 91
    const-string v2, "category"

    invoke-virtual {p1}, Lcom/lee/myapplication/Schedule;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1}, Lcom/lee/myapplication/Schedule;->isAllDay()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "all_day"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 93
    const-string v2, "repeat_type"

    invoke-virtual {p1}, Lcom/lee/myapplication/Schedule;->getRepeatType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1}, Lcom/lee/myapplication/Schedule;->getReminderMinutes()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "reminder_minutes"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 95
    invoke-virtual {p1}, Lcom/lee/myapplication/Schedule;->getColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "color"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 97
    const-string v2, "schedule"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 98
    .local v2, "id":J
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 99
    return-wide v2
.end method

.method public deleteSchedule(J)V
    .registers 8
    .param p1, "scheduleId"    # J

    .line 181
    invoke-virtual {p0, p1, p2}, Lcom/lee/myapplication/DatabaseHelper;->getScheduleById(J)Lcom/lee/myapplication/Schedule;

    move-result-object v0

    .line 183
    .local v0, "schedule":Lcom/lee/myapplication/Schedule;
    invoke-virtual {p0}, Lcom/lee/myapplication/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 184
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 186
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 184
    const-string v3, "schedule"

    const-string v4, "id = ?"

    invoke-virtual {v1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 187
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 190
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/lee/myapplication/Schedule;->getReminderMinutes()I

    .line 194
    :cond_21
    return-void
.end method

.method public getHolidaysForDate(III)Ljava/util/List;
    .registers 21
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Lcom/lee/myapplication/Holiday;",
            ">;"
        }
    .end annotation

    .line 261
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .local v1, "holidays":Ljava/util/List;, "Ljava/util/List<Lcom/lee/myapplication/Holiday;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/lee/myapplication/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    .line 265
    .local v10, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v11, "month = ? AND day = ? AND is_lunar = 0"

    .line 268
    .local v11, "selection":Ljava/lang/String;
    const/4 v12, 0x2

    new-array v6, v12, [Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v13, 0x0

    aput-object v2, v6, v13

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v14, 0x1

    aput-object v2, v6, v14

    .line 270
    .local v6, "selectionArgs":[Ljava/lang/String;
    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v3, "holidays"

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v2, v10

    move-object v5, v11

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 271
    .local v15, "cursor":Landroid/database/Cursor;
    :goto_2a
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 272
    invoke-direct {v0, v15}, Lcom/lee/myapplication/DatabaseHelper;->cursorToHoliday(Landroid/database/Cursor;)Lcom/lee/myapplication/Holiday;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 274
    :cond_38
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 277
    invoke-static/range {p1 .. p3}, Lcom/lee/myapplication/LunarCalendarUtil;->solarToLunar(III)[I

    move-result-object v16

    .line 278
    .local v16, "lunarDate":[I
    const-string v11, "month = ? AND day = ? AND is_lunar = 1"

    .line 281
    new-array v2, v12, [Ljava/lang/String;

    aget v3, v16, v14

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v13

    aget v3, v16, v12

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v14

    move-object v6, v2

    .line 283
    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v3, "holidays"

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v2, v10

    move-object v5, v11

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 284
    .end local v15    # "cursor":Landroid/database/Cursor;
    .local v2, "cursor":Landroid/database/Cursor;
    :goto_60
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 285
    invoke-direct {v0, v2}, Lcom/lee/myapplication/DatabaseHelper;->cursorToHoliday(Landroid/database/Cursor;)Lcom/lee/myapplication/Holiday;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_60

    .line 287
    :cond_6e
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 289
    return-object v1
.end method

.method public getScheduleById(J)Lcom/lee/myapplication/Schedule;
    .registers 14
    .param p1, "scheduleId"    # J

    .line 198
    invoke-virtual {p0}, Lcom/lee/myapplication/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 199
    .local v8, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x1

    new-array v4, v9, [Ljava/lang/String;

    .line 201
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x0

    aput-object v0, v4, v10

    .line 199
    const-string v1, "schedule"

    const/4 v2, 0x0

    const-string v3, "id = ?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 204
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 205
    .local v1, "schedule":Lcom/lee/myapplication/Schedule;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_bc

    .line 206
    new-instance v2, Lcom/lee/myapplication/Schedule;

    invoke-direct {v2}, Lcom/lee/myapplication/Schedule;-><init>()V

    move-object v1, v2

    .line 207
    const-string v2, "id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/lee/myapplication/Schedule;->setId(J)V

    .line 208
    const-string v2, "title"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lee/myapplication/Schedule;->setTitle(Ljava/lang/String;)V

    .line 209
    const-string v2, "description"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lee/myapplication/Schedule;->setDescription(Ljava/lang/String;)V

    .line 211
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 212
    .local v2, "startTime":Ljava/util/Calendar;
    const-string v3, "start_time"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 213
    invoke-virtual {v1, v2}, Lcom/lee/myapplication/Schedule;->setStartTime(Ljava/util/Calendar;)V

    .line 215
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 216
    .local v3, "endTime":Ljava/util/Calendar;
    const-string v4, "end_time"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 217
    invoke-virtual {v1, v3}, Lcom/lee/myapplication/Schedule;->setEndTime(Ljava/util/Calendar;)V

    .line 219
    const-string v4, "category"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/lee/myapplication/Schedule;->setCategory(Ljava/lang/String;)V

    .line 220
    const-string v4, "all_day"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v9, :cond_91

    goto :goto_92

    :cond_91
    move v9, v10

    :goto_92
    invoke-virtual {v1, v9}, Lcom/lee/myapplication/Schedule;->setAllDay(Z)V

    .line 221
    const-string v4, "repeat_type"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/lee/myapplication/Schedule;->setRepeatType(Ljava/lang/String;)V

    .line 222
    const-string v4, "reminder_minutes"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/lee/myapplication/Schedule;->setReminderMinutes(I)V

    .line 223
    const-string v4, "color"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/lee/myapplication/Schedule;->setColor(I)V

    .line 226
    .end local v2    # "startTime":Ljava/util/Calendar;
    .end local v3    # "endTime":Ljava/util/Calendar;
    :cond_bc
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 227
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 228
    return-object v1
.end method

.method public getSchedulesByDate(Ljava/util/Calendar;)Ljava/util/List;
    .registers 17
    .param p1, "date"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Calendar;",
            ")",
            "Ljava/util/List<",
            "Lcom/lee/myapplication/Schedule;",
            ">;"
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v0, "schedules":Ljava/util/List;, "Ljava/util/List<Lcom/lee/myapplication/Schedule;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    .line 108
    .local v1, "startOfDay":Ljava/util/Calendar;
    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 109
    const/16 v4, 0xc

    invoke-virtual {v1, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 111
    invoke-virtual/range {p1 .. p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Calendar;

    .line 112
    .local v5, "endOfDay":Ljava/util/Calendar;
    const/16 v6, 0x17

    invoke-virtual {v5, v2, v6}, Ljava/util/Calendar;->set(II)V

    .line 113
    const/16 v2, 0x3b

    invoke-virtual {v5, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 115
    const-string v2, "start_time <= ? AND end_time >= ?"

    .line 116
    .local v2, "selection":Ljava/lang/String;
    const/4 v4, 0x2

    new-array v10, v4, [Ljava/lang/String;

    .line 117
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v10, v3

    .line 118
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v14, 0x1

    aput-object v4, v10, v14

    .line 121
    .local v10, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lee/myapplication/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 122
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v12, 0x0

    const-string v13, "start_time ASC"

    const-string v7, "schedule"

    const/4 v8, 0x0

    const/4 v11, 0x0

    move-object v6, v4

    move-object v9, v2

    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 125
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_fa

    .line 127
    :cond_57
    new-instance v7, Lcom/lee/myapplication/Schedule;

    invoke-direct {v7}, Lcom/lee/myapplication/Schedule;-><init>()V

    .line 128
    .local v7, "schedule":Lcom/lee/myapplication/Schedule;
    const-string v8, "id"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/lee/myapplication/Schedule;->setId(J)V

    .line 129
    const-string v8, "title"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/lee/myapplication/Schedule;->setTitle(Ljava/lang/String;)V

    .line 130
    const-string v8, "description"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/lee/myapplication/Schedule;->setDescription(Ljava/lang/String;)V

    .line 132
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 133
    .local v8, "startTime":Ljava/util/Calendar;
    const-string v9, "start_time"

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-virtual {v8, v11, v12}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 134
    invoke-virtual {v7, v8}, Lcom/lee/myapplication/Schedule;->setStartTime(Ljava/util/Calendar;)V

    .line 136
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 137
    .local v9, "endTime":Ljava/util/Calendar;
    const-string v11, "end_time"

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-virtual {v9, v11, v12}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 138
    invoke-virtual {v7, v9}, Lcom/lee/myapplication/Schedule;->setEndTime(Ljava/util/Calendar;)V

    .line 140
    const-string v11, "category"

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/lee/myapplication/Schedule;->setCategory(Ljava/lang/String;)V

    .line 141
    const-string v11, "all_day"

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-ne v11, v14, :cond_c6

    move v11, v14

    goto :goto_c7

    :cond_c6
    move v11, v3

    :goto_c7
    invoke-virtual {v7, v11}, Lcom/lee/myapplication/Schedule;->setAllDay(Z)V

    .line 142
    const-string v11, "repeat_type"

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/lee/myapplication/Schedule;->setRepeatType(Ljava/lang/String;)V

    .line 143
    const-string v11, "reminder_minutes"

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-virtual {v7, v11}, Lcom/lee/myapplication/Schedule;->setReminderMinutes(I)V

    .line 144
    const-string v11, "color"

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-virtual {v7, v11}, Lcom/lee/myapplication/Schedule;->setColor(I)V

    .line 146
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    .end local v7    # "schedule":Lcom/lee/myapplication/Schedule;
    .end local v8    # "startTime":Ljava/util/Calendar;
    .end local v9    # "endTime":Ljava/util/Calendar;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_57

    .line 150
    :cond_fa
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 151
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 152
    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 45
    const-string v0, "CREATE TABLE schedule(id INTEGER PRIMARY KEY AUTOINCREMENT,title TEXT,description TEXT,start_time INTEGER,end_time INTEGER,category TEXT,all_day INTEGER,repeat_type TEXT,reminder_minutes INTEGER,color INTEGER)"

    .line 57
    .local v0, "CREATE_SCHEDULE_TABLE":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 60
    const-string v1, "CREATE TABLE holidays(id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT,month INTEGER,day INTEGER,is_lunar INTEGER,is_rest_day INTEGER,description TEXT)"

    .line 69
    .local v1, "CREATE_HOLIDAYS_TABLE":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 72
    invoke-direct {p0, p1}, Lcom/lee/myapplication/DatabaseHelper;->initializeHolidays(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 73
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 77
    const-string v0, "DROP TABLE IF EXISTS schedule"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 78
    const-string v0, "DROP TABLE IF EXISTS holidays"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0, p1}, Lcom/lee/myapplication/DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 80
    return-void
.end method

.method public updateSchedule(Lcom/lee/myapplication/Schedule;)I
    .registers 7
    .param p1, "schedule"    # Lcom/lee/myapplication/Schedule;

    .line 157
    invoke-virtual {p0}, Lcom/lee/myapplication/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 158
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 160
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "title"

    invoke-virtual {p1}, Lcom/lee/myapplication/Schedule;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v2, "description"

    invoke-virtual {p1}, Lcom/lee/myapplication/Schedule;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {p1}, Lcom/lee/myapplication/Schedule;->getStartTime()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "start_time"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 163
    invoke-virtual {p1}, Lcom/lee/myapplication/Schedule;->getEndTime()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "end_time"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 164
    const-string v2, "category"

    invoke-virtual {p1}, Lcom/lee/myapplication/Schedule;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p1}, Lcom/lee/myapplication/Schedule;->isAllDay()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "all_day"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 166
    const-string v2, "repeat_type"

    invoke-virtual {p1}, Lcom/lee/myapplication/Schedule;->getRepeatType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p1}, Lcom/lee/myapplication/Schedule;->getReminderMinutes()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "reminder_minutes"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 168
    invoke-virtual {p1}, Lcom/lee/myapplication/Schedule;->getColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "color"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 170
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 172
    invoke-virtual {p1}, Lcom/lee/myapplication/Schedule;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 170
    const-string v3, "schedule"

    const-string v4, "id = ?"

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 174
    .local v2, "result":I
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 175
    return v2
.end method
