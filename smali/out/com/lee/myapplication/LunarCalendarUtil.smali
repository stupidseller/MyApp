.class public Lcom/lee/myapplication/LunarCalendarUtil;
.super Ljava/lang/Object;
.source "LunarCalendarUtil.java"


# static fields
.field private static final CHINESE_ZODIAC:[Ljava/lang/String;

.field private static final LUNAR_DAY:[Ljava/lang/String;

.field private static final LUNAR_INFO:[J

.field private static final LUNAR_MONTH:[Ljava/lang/String;

.field private static final SOLAR_TERM:[Ljava/lang/String;

.field private static final SOLAR_TERM_INFO:[I


# direct methods
.method static constructor <clinit>()V
    .registers 17

    .line 7
    const/16 v0, 0x96

    new-array v0, v0, [J

    fill-array-data v0, :array_1a6

    sput-object v0, Lcom/lee/myapplication/LunarCalendarUtil;->LUNAR_INFO:[J

    .line 25
    const/16 v0, 0xc

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "\u9f20"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "\u725b"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "\u864e"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "\u5154"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "\u9f99"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string v2, "\u86c7"

    const/4 v8, 0x5

    aput-object v2, v1, v8

    const-string v2, "\u9a6c"

    const/4 v9, 0x6

    aput-object v2, v1, v9

    const-string v2, "\u7f8a"

    const/4 v10, 0x7

    aput-object v2, v1, v10

    const-string v2, "\u7334"

    const/16 v11, 0x8

    aput-object v2, v1, v11

    const-string v2, "\u9e21"

    const/16 v12, 0x9

    aput-object v2, v1, v12

    const-string v2, "\u72d7"

    const/16 v13, 0xa

    aput-object v2, v1, v13

    const-string v2, "\u732a"

    const/16 v14, 0xb

    aput-object v2, v1, v14

    sput-object v1, Lcom/lee/myapplication/LunarCalendarUtil;->CHINESE_ZODIAC:[Ljava/lang/String;

    .line 29
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "\u6b63"

    aput-object v2, v1, v3

    const-string v2, "\u4e8c"

    aput-object v2, v1, v4

    const-string v2, "\u4e09"

    aput-object v2, v1, v5

    const-string v2, "\u56db"

    aput-object v2, v1, v6

    const-string v2, "\u4e94"

    aput-object v2, v1, v7

    const-string v2, "\u516d"

    aput-object v2, v1, v8

    const-string v2, "\u4e03"

    aput-object v2, v1, v9

    const-string v2, "\u516b"

    aput-object v2, v1, v10

    const-string v2, "\u4e5d"

    aput-object v2, v1, v11

    const-string v2, "\u5341"

    aput-object v2, v1, v12

    const-string v2, "\u51ac"

    aput-object v2, v1, v13

    const-string v2, "\u814a"

    aput-object v2, v1, v14

    sput-object v1, Lcom/lee/myapplication/LunarCalendarUtil;->LUNAR_MONTH:[Ljava/lang/String;

    .line 33
    const/16 v1, 0x1e

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u521d\u4e00"

    aput-object v2, v1, v3

    const-string v2, "\u521d\u4e8c"

    aput-object v2, v1, v4

    const-string v2, "\u521d\u4e09"

    aput-object v2, v1, v5

    const-string v2, "\u521d\u56db"

    aput-object v2, v1, v6

    const-string v2, "\u521d\u4e94"

    aput-object v2, v1, v7

    const-string v2, "\u521d\u516d"

    aput-object v2, v1, v8

    const-string v2, "\u521d\u4e03"

    aput-object v2, v1, v9

    const-string v2, "\u521d\u516b"

    aput-object v2, v1, v10

    const-string v2, "\u521d\u4e5d"

    aput-object v2, v1, v11

    const-string v2, "\u521d\u5341"

    aput-object v2, v1, v12

    const-string v2, "\u5341\u4e00"

    aput-object v2, v1, v13

    const-string v2, "\u5341\u4e8c"

    aput-object v2, v1, v14

    const-string v2, "\u5341\u4e09"

    aput-object v2, v1, v0

    const/16 v2, 0xd

    const-string v15, "\u5341\u56db"

    aput-object v15, v1, v2

    const/16 v2, 0xe

    const-string v15, "\u5341\u4e94"

    aput-object v15, v1, v2

    const/16 v2, 0xf

    const-string v15, "\u5341\u516d"

    aput-object v15, v1, v2

    const/16 v2, 0x10

    const-string v15, "\u5341\u4e03"

    aput-object v15, v1, v2

    const/16 v2, 0x11

    const-string v15, "\u5341\u516b"

    aput-object v15, v1, v2

    const/16 v2, 0x12

    const-string v15, "\u5341\u4e5d"

    aput-object v15, v1, v2

    const/16 v2, 0x13

    const-string v15, "\u4e8c\u5341"

    aput-object v15, v1, v2

    const/16 v2, 0x14

    const-string v15, "\u5eff\u4e00"

    aput-object v15, v1, v2

    const/16 v2, 0x15

    const-string v15, "\u5eff\u4e8c"

    aput-object v15, v1, v2

    const/16 v2, 0x16

    const-string v15, "\u5eff\u4e09"

    aput-object v15, v1, v2

    const/16 v2, 0x17

    const-string v15, "\u5eff\u56db"

    aput-object v15, v1, v2

    const-string v2, "\u5eff\u4e94"

    const/16 v15, 0x18

    aput-object v2, v1, v15

    const/16 v2, 0x19

    const-string v16, "\u5eff\u516d"

    aput-object v16, v1, v2

    const/16 v2, 0x1a

    const-string v16, "\u5eff\u4e03"

    aput-object v16, v1, v2

    const/16 v2, 0x1b

    const-string v16, "\u5eff\u516b"

    aput-object v16, v1, v2

    const/16 v2, 0x1c

    const-string v16, "\u5eff\u4e5d"

    aput-object v16, v1, v2

    const/16 v2, 0x1d

    const-string v16, "\u4e09\u5341"

    aput-object v16, v1, v2

    sput-object v1, Lcom/lee/myapplication/LunarCalendarUtil;->LUNAR_DAY:[Ljava/lang/String;

    .line 39
    new-array v1, v15, [Ljava/lang/String;

    const-string v2, "\u5c0f\u5bd2"

    aput-object v2, v1, v3

    const-string v2, "\u5927\u5bd2"

    aput-object v2, v1, v4

    const-string v2, "\u7acb\u6625"

    aput-object v2, v1, v5

    const-string v2, "\u96e8\u6c34"

    aput-object v2, v1, v6

    const-string v2, "\u60ca\u86f0"

    aput-object v2, v1, v7

    const-string v2, "\u6625\u5206"

    aput-object v2, v1, v8

    const-string v2, "\u6e05\u660e"

    aput-object v2, v1, v9

    const-string v2, "\u8c37\u96e8"

    aput-object v2, v1, v10

    const-string v2, "\u7acb\u590f"

    aput-object v2, v1, v11

    const-string v2, "\u5c0f\u6ee1"

    aput-object v2, v1, v12

    const-string v2, "\u8292\u79cd"

    aput-object v2, v1, v13

    const-string v2, "\u590f\u81f3"

    aput-object v2, v1, v14

    const-string v2, "\u5c0f\u6691"

    aput-object v2, v1, v0

    const/16 v0, 0xd

    const-string v2, "\u5927\u6691"

    aput-object v2, v1, v0

    const/16 v0, 0xe

    const-string v2, "\u7acb\u79cb"

    aput-object v2, v1, v0

    const/16 v0, 0xf

    const-string v2, "\u5904\u6691"

    aput-object v2, v1, v0

    const/16 v0, 0x10

    const-string v2, "\u767d\u9732"

    aput-object v2, v1, v0

    const/16 v0, 0x11

    const-string v2, "\u79cb\u5206"

    aput-object v2, v1, v0

    const/16 v0, 0x12

    const-string v2, "\u5bd2\u9732"

    aput-object v2, v1, v0

    const/16 v0, 0x13

    const-string v2, "\u971c\u964d"

    aput-object v2, v1, v0

    const/16 v0, 0x14

    const-string v2, "\u7acb\u51ac"

    aput-object v2, v1, v0

    const/16 v0, 0x15

    const-string v2, "\u5c0f\u96ea"

    aput-object v2, v1, v0

    const/16 v0, 0x16

    const-string v2, "\u5927\u96ea"

    aput-object v2, v1, v0

    const/16 v0, 0x17

    const-string v2, "\u51ac\u81f3"

    aput-object v2, v1, v0

    sput-object v1, Lcom/lee/myapplication/LunarCalendarUtil;->SOLAR_TERM:[Ljava/lang/String;

    .line 46
    new-array v0, v15, [I

    fill-array-data v0, :array_402

    sput-object v0, Lcom/lee/myapplication/LunarCalendarUtil;->SOLAR_TERM_INFO:[I

    return-void

    nop

    :array_1a6
    .array-data 8
        0x4bd8
        0x4ae0
        0xa570
        0x54d5
        0xd260
        0xd950
        0x16554
        0x56a0
        0x9ad0
        0x55d2
        0x4ae0
        0xa5b6
        0xa4d0
        0xd250
        0x1d255
        0xb540
        0xd6a0
        0xada2
        0x95b0
        0x14977
        0x4970
        0xa4b0
        0xb4b5
        0x6a50
        0x6d40
        0x1ab54
        0x2b60
        0x9570
        0x52f2
        0x4970
        0x6566
        0xd4a0
        0xea50
        0x6e95
        0x5ad0
        0x2b60
        0x186e3
        0x92e0
        0x1c8d7
        0xc950
        0xd4a0
        0x1d8a6
        0xb550
        0x56a0
        0x1a5b4
        0x25d0
        0x92d0
        0xd2b2
        0xa950
        0xb557
        0x6ca0
        0xb550
        0x15355
        0x4da0
        0xa5d0
        0x14573
        0x52d0
        0xa9a8
        0xe950
        0x6aa0
        0xaea6
        0xab50
        0x4b60
        0xaae4
        0xa570
        0x5260
        0xf263
        0xd950
        0x5b57
        0x56a0
        0x96d0
        0x4dd5
        0x4ad0
        0xa4d0
        0xd4d4
        0xd250
        0xd558
        0xb540
        0xb5a0
        0x195a6
        0x95b0
        0x49b0
        0xa974
        0xa4b0
        0xb27a
        0x6a50
        0x6d40
        0xaf46
        0xab60
        0x9570
        0x4af5
        0x4970
        0x64b0
        0x74a3
        0xea50
        0x6b58
        0x55c0
        0xab60
        0x96d5
        0x92e0
        0xc960
        0xd954
        0xd4a0
        0xda50
        0x7552
        0x56a0
        0xabb7
        0x25d0
        0x92d0
        0xcab5
        0xa950
        0xb4a0
        0xbaa4
        0xad50
        0x55d9
        0x4ba0
        0xa5b0
        0x15176
        0x52b0
        0xa930
        0x7954
        0x6aa0
        0xad50
        0x5b52
        0x4b60
        0xa6e6
        0xa4e0
        0xd260
        0xea65
        0xd530
        0x5aa0
        0x76a3
        0x96d0
        0x4bd7
        0x4ad0
        0xa4d0
        0x1d0b6
        0xd250
        0xd520
        0xdd45
        0xb5a0
        0x56d0
        0x55b2
        0x49b0
        0xa577
        0xa4b0
        0xaa50
        0x1b255
        0x6d20
        0xada0
    .end array-data

    :array_402
    .array-data 4
        0x0
        0x52d8
        0xa5e3
        0xf95c
        0x14d59
        0x1a206
        0x1f763
        0x24d89
        0x2a45d
        0x2fbdf
        0x353d8
        0x3ac35
        0x404af
        0x45d25
        0x4b553
        0x50d19
        0x56446
        0x5bac6
        0x61087
        0x6658a
        0x6b9db
        0x70d90
        0x760cc
        0x7b3b6
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChineseZodiac(I)Ljava/lang/String;
    .registers 3
    .param p0, "year"    # I

    .line 92
    sget-object v0, Lcom/lee/myapplication/LunarCalendarUtil;->CHINESE_ZODIAC:[Ljava/lang/String;

    add-int/lit8 v1, p0, -0x4

    rem-int/lit8 v1, v1, 0xc

    aget-object v0, v0, v1

    return-object v0
.end method

.method private static getDateDays(III)J
    .registers 6
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I

    .line 233
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 234
    .local v0, "calendar":Ljava/util/Calendar;
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, p0, v1, p2}, Ljava/util/Calendar;->set(III)V

    .line 235
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method private static getLeapMonth(I)I
    .registers 6
    .param p0, "year"    # I

    .line 204
    const/16 v0, 0x76c

    if-lt p0, v0, :cond_1c

    const/16 v0, 0x801

    if-gt p0, v0, :cond_1c

    add-int/lit16 v0, p0, -0x76c

    sget-object v1, Lcom/lee/myapplication/LunarCalendarUtil;->LUNAR_INFO:[J

    array-length v1, v1

    if-lt v0, v1, :cond_10

    goto :goto_1c

    .line 207
    :cond_10
    sget-object v0, Lcom/lee/myapplication/LunarCalendarUtil;->LUNAR_INFO:[J

    add-int/lit16 v1, p0, -0x76c

    aget-wide v1, v0, v1

    const-wide/16 v3, 0xf

    and-long v0, v1, v3

    long-to-int v0, v0

    return v0

    .line 205
    :cond_1c
    :goto_1c
    const/4 v0, 0x0

    return v0
.end method

.method private static getLeapMonthDays(I)I
    .registers 6
    .param p0, "year"    # I

    .line 215
    const/16 v0, 0x76c

    const/4 v1, 0x0

    if-lt p0, v0, :cond_2f

    const/16 v0, 0x801

    if-gt p0, v0, :cond_2f

    add-int/lit16 v0, p0, -0x76c

    sget-object v2, Lcom/lee/myapplication/LunarCalendarUtil;->LUNAR_INFO:[J

    array-length v2, v2

    if-lt v0, v2, :cond_11

    goto :goto_2f

    .line 219
    :cond_11
    invoke-static {p0}, Lcom/lee/myapplication/LunarCalendarUtil;->getLeapMonth(I)I

    move-result v0

    if-lez v0, :cond_2e

    .line 220
    sget-object v0, Lcom/lee/myapplication/LunarCalendarUtil;->LUNAR_INFO:[J

    add-int/lit16 v1, p0, -0x76c

    aget-wide v1, v0, v1

    const-wide/32 v3, 0x10000

    and-long v0, v1, v3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2b

    .line 221
    const/16 v0, 0x1e

    return v0

    .line 223
    :cond_2b
    const/16 v0, 0x1d

    return v0

    .line 226
    :cond_2e
    return v1

    .line 216
    :cond_2f
    :goto_2f
    return v1
.end method

.method public static getLunarDate(Ljava/util/Calendar;)Ljava/lang/String;
    .registers 7
    .param p0, "calendar"    # Ljava/util/Calendar;

    .line 57
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 58
    .local v1, "year":I
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v0

    .line 59
    .local v3, "month":I
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 61
    .local v0, "day":I
    invoke-static {v1, v3, v0}, Lcom/lee/myapplication/LunarCalendarUtil;->solarToLunar(III)[I

    move-result-object v4

    .line 62
    .local v4, "lunar":[I
    aget v2, v4, v2

    .line 65
    .local v2, "lunarDay":I
    invoke-static {v2}, Lcom/lee/myapplication/LunarCalendarUtil;->getLunarDayText(I)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static getLunarDayText(I)Ljava/lang/String;
    .registers 3
    .param p0, "day"    # I

    .line 82
    const/4 v0, 0x1

    if-lt p0, v0, :cond_f

    const/16 v0, 0x1e

    if-le p0, v0, :cond_8

    goto :goto_f

    .line 85
    :cond_8
    sget-object v0, Lcom/lee/myapplication/LunarCalendarUtil;->LUNAR_DAY:[Ljava/lang/String;

    add-int/lit8 v1, p0, -0x1

    aget-object v0, v0, v1

    return-object v0

    .line 83
    :cond_f
    :goto_f
    const-string v0, "\u65e5"

    return-object v0
.end method

.method private static getLunarMonthDays(II)I
    .registers 8
    .param p0, "year"    # I
    .param p1, "month"    # I

    .line 177
    const/16 v0, 0x76c

    const/16 v1, 0x1e

    if-lt p0, v0, :cond_3c

    const/16 v0, 0x801

    if-gt p0, v0, :cond_3c

    add-int/lit16 v0, p0, -0x76c

    sget-object v2, Lcom/lee/myapplication/LunarCalendarUtil;->LUNAR_INFO:[J

    array-length v2, v2

    if-lt v0, v2, :cond_12

    goto :goto_3c

    .line 181
    :cond_12
    const/16 v0, 0xc

    if-le p1, v0, :cond_27

    .line 183
    invoke-static {p0}, Lcom/lee/myapplication/LunarCalendarUtil;->getLeapMonth(I)I

    move-result v0

    .line 184
    .local v0, "leapMonth":I
    if-lez v0, :cond_25

    add-int/lit8 v1, v0, 0x1

    if-ne p1, v1, :cond_25

    .line 186
    invoke-static {p0}, Lcom/lee/myapplication/LunarCalendarUtil;->getLeapMonthDays(I)I

    move-result v1

    return v1

    .line 188
    :cond_25
    const/4 v1, 0x0

    return v1

    .line 192
    .end local v0    # "leapMonth":I
    :cond_27
    sget-object v0, Lcom/lee/myapplication/LunarCalendarUtil;->LUNAR_INFO:[J

    add-int/lit16 v2, p0, -0x76c

    aget-wide v2, v0, v2

    const/high16 v0, 0x10000

    shr-int/2addr v0, p1

    int-to-long v4, v0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_3b

    .line 193
    const/16 v0, 0x1d

    return v0

    .line 195
    :cond_3b
    return v1

    .line 178
    :cond_3c
    :goto_3c
    return v1
.end method

.method private static getLunarMonthText(I)Ljava/lang/String;
    .registers 5
    .param p0, "month"    # I

    .line 72
    const/4 v0, 0x1

    const-string v1, "\u6708"

    if-lt p0, v0, :cond_22

    const/16 v0, 0xc

    if-le p0, v0, :cond_a

    goto :goto_22

    .line 75
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/lee/myapplication/LunarCalendarUtil;->LUNAR_MONTH:[Ljava/lang/String;

    add-int/lit8 v3, p0, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 73
    :cond_22
    :goto_22
    return-object v1
.end method

.method private static getLunarYearDays(I)I
    .registers 4
    .param p0, "year"    # I

    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, "total":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_2
    const/16 v2, 0xc

    if-gt v1, v2, :cond_e

    .line 160
    invoke-static {p0, v1}, Lcom/lee/myapplication/LunarCalendarUtil;->getLunarMonthDays(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 164
    .end local v1    # "i":I
    :cond_e
    invoke-static {p0}, Lcom/lee/myapplication/LunarCalendarUtil;->getLeapMonth(I)I

    move-result v1

    .line 165
    .local v1, "leapMonth":I
    if-lez v1, :cond_19

    .line 166
    invoke-static {p0}, Lcom/lee/myapplication/LunarCalendarUtil;->getLeapMonthDays(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 169
    :cond_19
    return v0
.end method

.method private static getSolarTerm(III)Ljava/lang/String;
    .registers 16
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I

    .line 242
    const/16 v0, 0x18

    new-array v1, v0, [I

    .line 243
    .local v1, "solarTermDays":[I
    add-int/lit16 v2, p0, -0x76c

    mul-int/lit8 v2, v2, 0xc

    .line 245
    .local v2, "tempYear":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    if-ge v3, v0, :cond_3a

    .line 246
    add-int/lit16 v4, p0, -0x76c

    int-to-long v4, v4

    const-wide v6, 0x758f07a16L

    mul-long/2addr v4, v6

    sget-object v6, Lcom/lee/myapplication/LunarCalendarUtil;->SOLAR_TERM_INFO:[I

    aget v6, v6, v3

    int-to-long v6, v6

    const-wide/32 v8, 0xea60

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    .line 247
    .local v4, "seconds":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 248
    .local v6, "cal":Ljava/util/Calendar;
    const/4 v11, 0x5

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x2

    invoke-static/range {v7 .. v12}, Ljava/util/Date;->UTC(IIIIII)J

    move-result-wide v7

    add-long/2addr v7, v4

    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 249
    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    aput v7, v1, v3

    .line 245
    .end local v4    # "seconds":J
    .end local v6    # "cal":Ljava/util/Calendar;
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 252
    .end local v3    # "i":I
    :cond_3a
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, -0x2

    aget v0, v1, v0

    if-ne p2, v0, :cond_4b

    .line 253
    sget-object v0, Lcom/lee/myapplication/LunarCalendarUtil;->SOLAR_TERM:[Ljava/lang/String;

    mul-int/lit8 v3, p1, 0x2

    add-int/lit8 v3, v3, -0x2

    aget-object v0, v0, v3

    return-object v0

    .line 254
    :cond_4b
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, -0x1

    aget v0, v1, v0

    if-ne p2, v0, :cond_5c

    .line 255
    sget-object v0, Lcom/lee/myapplication/LunarCalendarUtil;->SOLAR_TERM:[Ljava/lang/String;

    mul-int/lit8 v3, p1, 0x2

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v0, v3

    return-object v0

    .line 258
    :cond_5c
    const/4 v0, 0x0

    return-object v0
.end method

.method public static solarToLunar(III)[I
    .registers 13
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I

    .line 100
    const/16 v0, 0xc

    const/16 v1, 0x76c

    if-lt p0, v1, :cond_5b

    const/16 v2, 0x801

    if-le p0, v2, :cond_b

    goto :goto_5b

    .line 106
    :cond_b
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 107
    .local v2, "baseDate":Ljava/util/Calendar;
    const/4 v3, 0x0

    const/16 v4, 0x1f

    invoke-virtual {v2, v1, v3, v4}, Ljava/util/Calendar;->set(III)V

    .line 110
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 111
    .local v1, "currentDate":Ljava/util/Calendar;
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v1, p0, v3, p2}, Ljava/util/Calendar;->set(III)V

    .line 114
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x5265c00

    div-long/2addr v3, v5

    .line 117
    .local v3, "offset":J
    const/16 v5, 0x76c

    .line 121
    .local v5, "lunarYear":I
    :goto_2d
    invoke-static {v5}, Lcom/lee/myapplication/LunarCalendarUtil;->getLunarYearDays(I)I

    move-result v6

    .line 122
    .local v6, "daysInLunarYear":I
    int-to-long v7, v6

    cmp-long v7, v3, v7

    if-gez v7, :cond_55

    .line 123
    nop

    .line 130
    .end local v6    # "daysInLunarYear":I
    const/4 v6, 0x1

    .line 134
    .local v6, "lunarMonth":I
    :goto_38
    invoke-static {v5, v6}, Lcom/lee/myapplication/LunarCalendarUtil;->getLunarMonthDays(II)I

    move-result v7

    .line 135
    .local v7, "daysInLunarMonth":I
    int-to-long v8, v7

    cmp-long v8, v3, v8

    if-gez v8, :cond_4b

    .line 136
    nop

    .line 149
    .end local v7    # "daysInLunarMonth":I
    const-wide/16 v7, 0x1

    add-long/2addr v7, v3

    long-to-int v0, v7

    .line 151
    .local v0, "lunarDay":I
    filled-new-array {v5, v6, v0}, [I

    move-result-object v7

    return-object v7

    .line 138
    .end local v0    # "lunarDay":I
    .restart local v7    # "daysInLunarMonth":I
    :cond_4b
    int-to-long v8, v7

    sub-long/2addr v3, v8

    .line 139
    add-int/lit8 v6, v6, 0x1

    .line 142
    if-le v6, v0, :cond_54

    .line 143
    const/4 v6, 0x1

    .line 144
    add-int/lit8 v5, v5, 0x1

    .line 146
    .end local v7    # "daysInLunarMonth":I
    :cond_54
    goto :goto_38

    .line 125
    .local v6, "daysInLunarYear":I
    :cond_55
    int-to-long v7, v6

    sub-long/2addr v3, v7

    .line 126
    nop

    .end local v6    # "daysInLunarYear":I
    add-int/lit8 v5, v5, 0x1

    .line 127
    goto :goto_2d

    .line 102
    .end local v1    # "currentDate":Ljava/util/Calendar;
    .end local v2    # "baseDate":Ljava/util/Calendar;
    .end local v3    # "offset":J
    .end local v5    # "lunarYear":I
    :cond_5b
    :goto_5b
    const/16 v1, 0x1e

    filled-new-array {p0, v0, v1}, [I

    move-result-object v0

    return-object v0
.end method
