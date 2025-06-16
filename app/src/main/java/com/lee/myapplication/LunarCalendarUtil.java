package com.lee.myapplication;

import java.util.Calendar;
import java.util.Date;

public class LunarCalendarUtil {
    private static final long[] LUNAR_INFO = new long[]{
        0x04bd8,0x04ae0,0x0a570,0x054d5,0x0d260,0x0d950,0x16554,0x056a0,0x09ad0,0x055d2,
        0x04ae0,0x0a5b6,0x0a4d0,0x0d250,0x1d255,0x0b540,0x0d6a0,0x0ada2,0x095b0,0x14977,
        0x04970,0x0a4b0,0x0b4b5,0x06a50,0x06d40,0x1ab54,0x02b60,0x09570,0x052f2,0x04970,
        0x06566,0x0d4a0,0x0ea50,0x06e95,0x05ad0,0x02b60,0x186e3,0x092e0,0x1c8d7,0x0c950,
        0x0d4a0,0x1d8a6,0x0b550,0x056a0,0x1a5b4,0x025d0,0x092d0,0x0d2b2,0x0a950,0x0b557,
        0x06ca0,0x0b550,0x15355,0x04da0,0x0a5d0,0x14573,0x052d0,0x0a9a8,0x0e950,0x06aa0,
        0x0aea6,0x0ab50,0x04b60,0x0aae4,0x0a570,0x05260,0x0f263,0x0d950,0x05b57,0x056a0,
        0x096d0,0x04dd5,0x04ad0,0x0a4d0,0x0d4d4,0x0d250,0x0d558,0x0b540,0x0b5a0,0x195a6,
        0x095b0,0x049b0,0x0a974,0x0a4b0,0x0b27a,0x06a50,0x06d40,0x0af46,0x0ab60,0x09570,
        0x04af5,0x04970,0x064b0,0x074a3,0x0ea50,0x06b58,0x055c0,0x0ab60,0x096d5,0x092e0,
        0x0c960,0x0d954,0x0d4a0,0x0da50,0x07552,0x056a0,0x0abb7,0x025d0,0x092d0,0x0cab5,
        0x0a950,0x0b4a0,0x0baa4,0x0ad50,0x055d9,0x04ba0,0x0a5b0,0x15176,0x052b0,0x0a930,
        0x07954,0x06aa0,0x0ad50,0x05b52,0x04b60,0x0a6e6,0x0a4e0,0x0d260,0x0ea65,0x0d530,
        0x05aa0,0x076a3,0x096d0,0x04bd7,0x04ad0,0x0a4d0,0x1d0b6,0x0d250,0x0d520,0x0dd45,
        0x0b5a0,0x056d0,0x055b2,0x049b0,0x0a577,0x0a4b0,0x0aa50,0x1b255,0x06d20,0x0ada0
    };

    private static final String[] CHINESE_ZODIAC = {
        "鼠", "牛", "虎", "兔", "龙", "蛇", "马", "羊", "猴", "鸡", "狗", "猪"
    };

    private static final String[] LUNAR_MONTH = {
        "正", "二", "三", "四", "五", "六", "七", "八", "九", "十", "冬", "腊"
    };

    private static final String[] LUNAR_DAY = {
        "初一", "初二", "初三", "初四", "初五", "初六", "初七", "初八", "初九", "初十",
        "十一", "十二", "十三", "十四", "十五", "十六", "十七", "十八", "十九", "二十",
        "廿一", "廿二", "廿三", "廿四", "廿五", "廿六", "廿七", "廿八", "廿九", "三十"
    };

    private static final String[] SOLAR_TERM = {
        "小寒", "大寒", "立春", "雨水", "惊蛰", "春分",
        "清明", "谷雨", "立夏", "小满", "芒种", "夏至",
        "小暑", "大暑", "立秋", "处暑", "白露", "秋分",
        "寒露", "霜降", "立冬", "小雪", "大雪", "冬至"
    };

    private static final int[] SOLAR_TERM_INFO = {
        0, 21208, 42467, 63836, 85337, 107014,
        128867, 150921, 173149, 195551, 218072, 240693,
        263343, 285989, 308563, 331033, 353350, 375494,
        397447, 419210, 440795, 462224, 483532, 504758
    };

    /**
     * 获取农历日期表示
     */
    public static String getLunarDate(Calendar calendar) {
        int year = calendar.get(Calendar.YEAR);
        int month = calendar.get(Calendar.MONTH) + 1;
        int day = calendar.get(Calendar.DAY_OF_MONTH);
        
        int[] lunar = solarToLunar(year, month, day);
        int lunarDay = lunar[2];
        
        // 只返回农历日期，不包含月份
        return getLunarDayText(lunarDay);
    }
    
    /**
     * 获取农历月份文本
     */
    private static String getLunarMonthText(int month) {
        if (month < 1 || month > 12) {
            return "月";
        }
        return LUNAR_MONTH[month - 1] + "月";
    }
    
    /**
     * 获取农历日期文本
     */
    private static String getLunarDayText(int day) {
        if (day < 1 || day > 30) {
            return "日";
        }
        return LUNAR_DAY[day - 1];
    }

    /**
     * 获取生肖
     */
    public static String getChineseZodiac(int year) {
        return CHINESE_ZODIAC[(year - 4) % 12];
    }

    /**
     * 公历转农历
     */
    public static int[] solarToLunar(int year, int month, int day) {
        // 检查年份范围
        if (year < 1900 || year > 2049) {
            // 如果超出范围，返回当前日期作为默认值
            return new int[]{year, 12, 30}; // 默认腊月三十，这是问题所在
        }

        // 基准日期：1900年1月31日，阳历
        Calendar baseDate = Calendar.getInstance();
        baseDate.set(1900, 0, 31); // 月份从0开始

        // 当前日期
        Calendar currentDate = Calendar.getInstance();
        currentDate.set(year, month - 1, day); // 月份从0开始

        // 计算天数差
        long offset = (currentDate.getTimeInMillis() - baseDate.getTimeInMillis()) / (24 * 60 * 60 * 1000L);

        // 农历年份
        int lunarYear = 1900;
        
        // 从1900年开始遍历，计算每年的天数，直到剩余天数不足一年
        while (true) {
            int daysInLunarYear = getLunarYearDays(lunarYear);
            if (offset < daysInLunarYear) {
                break;
            }
            offset -= daysInLunarYear;
            lunarYear++;
        }

        // 农历月份
        int lunarMonth = 1;
        
        // 计算当年各个月份的天数，确定月份
        while (true) {
            int daysInLunarMonth = getLunarMonthDays(lunarYear, lunarMonth);
            if (offset < daysInLunarMonth) {
                break;
            }
            offset -= daysInLunarMonth;
            lunarMonth++;
            
            // 防止月份超出范围
            if (lunarMonth > 12) {
                lunarMonth = 1;
                lunarYear++;
            }
        }

        // 农历日
        int lunarDay = (int)(offset + 1);

        return new int[]{lunarYear, lunarMonth, lunarDay};
    }

    /**
     * 获取农历某年的总天数
     */
    private static int getLunarYearDays(int year) {
        int total = 0;
        for (int i = 1; i <= 12; i++) {
            total += getLunarMonthDays(year, i);
        }
        
        // 如果有闰月，加上闰月的天数
        int leapMonth = getLeapMonth(year);
        if (leapMonth > 0) {
            total += getLeapMonthDays(year);
        }
        
        return total;
    }

    /**
     * 获取农历某年某月的天数
     */
    private static int getLunarMonthDays(int year, int month) {
        // 检查年份范围
        if (year < 1900 || year > 2049 || year - 1900 >= LUNAR_INFO.length) {
            return 30; // 默认返回30天
        }
        
        if (month > 12) {
            // 超出12个月，可能是闰月
            int leapMonth = getLeapMonth(year);
            if (leapMonth > 0 && month == leapMonth + 1) {
                // 是闰月
                return getLeapMonthDays(year);
            }
            return 0;
        }
        
        // 农历月份天数 29 或 30
        if ((LUNAR_INFO[year - 1900] & (0x10000 >> month)) == 0) {
            return 29;
        } else {
            return 30;
        }
    }

    /**
     * 获取农历某年闰月是哪个月，如果没有闰月返回0
     */
    private static int getLeapMonth(int year) {
        // 检查年份范围
        if (year < 1900 || year > 2049 || year - 1900 >= LUNAR_INFO.length) {
            return 0; // 超出范围返回0，表示没有闰月
        }
        return (int)(LUNAR_INFO[year - 1900] & 0xf);
    }

    /**
     * 获取农历某年闰月的天数
     */
    private static int getLeapMonthDays(int year) {
        // 检查年份范围
        if (year < 1900 || year > 2049 || year - 1900 >= LUNAR_INFO.length) {
            return 0; // 超出范围返回0
        }
        
        if (getLeapMonth(year) > 0) {
            if ((LUNAR_INFO[year - 1900] & 0x10000) > 0) {
                return 30;
            } else {
                return 29;
            }
        }
        return 0;
    }

    /**
     * 获取公历日期的毫秒数
     */
    private static long getDateDays(int year, int month, int day) {
        Calendar calendar = Calendar.getInstance();
        calendar.set(year, month - 1, day);
        return calendar.getTimeInMillis();
    }

    /**
     * 获取节气
     */
    private static String getSolarTerm(int year, int month, int day) {
        int[] solarTermDays = new int[24];
        int tempYear = (year - 1900) * 12;
        
        for (int i = 0; i < 24; i++) {
            long seconds = (31556925974L * (year - 1900) + SOLAR_TERM_INFO[i] * 60000L);
            Calendar cal = Calendar.getInstance();
            cal.setTimeInMillis(seconds + Date.UTC(0, 0, 6, 2, 5, 0));
            solarTermDays[i] = cal.get(Calendar.DAY_OF_MONTH);
        }
        
        if (day == solarTermDays[month * 2 - 2]) {
            return SOLAR_TERM[month * 2 - 2];
        } else if (day == solarTermDays[month * 2 - 1]) {
            return SOLAR_TERM[month * 2 - 1];
        }
        
        return null;
    }
} 