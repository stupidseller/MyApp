package com.lee.myapplication;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.Calendar;
import java.util.List;

public class CalendarAdapter extends BaseAdapter {
    private Context context;
    private List<CalendarDay> days;
    private LayoutInflater inflater;

    public CalendarAdapter(Context context, List<CalendarDay> days) {
        this.context = context;
        this.days = days;
        this.inflater = LayoutInflater.from(context);
    }

    @Override
    public int getCount() {
        return days.size();
    }

    @Override
    public Object getItem(int position) {
        return days.get(position);
    }

    @Override
    public long getItemId(int position) {
        return position;
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        ViewHolder holder;
        
        if (convertView == null) {
            convertView = inflater.inflate(R.layout.calendar_day_item, parent, false);
            holder = new ViewHolder();
            holder.dayText = convertView.findViewById(R.id.dayText);
            holder.lunarText = convertView.findViewById(R.id.lunarText);
            holder.scheduleContainer = convertView.findViewById(R.id.scheduleContainer);
            convertView.setTag(holder);
        } else {
            holder = (ViewHolder) convertView.getTag();
        }

        CalendarDay day = days.get(position);
        holder.dayText.setText(String.valueOf(day.getDay()));
        
        // 重置视图状态
        holder.dayText.setBackgroundResource(android.R.color.transparent);
        holder.dayText.setTextColor(context.getResources().getColor(day.isCurrentMonth() ? 
            android.R.color.black : android.R.color.darker_gray));
        holder.scheduleContainer.removeAllViews();
        
        // 设置日期样式
        if (day.isToday()) {
            holder.dayText.setBackgroundResource(R.drawable.today_background);
            holder.dayText.setTextColor(context.getResources().getColor(android.R.color.white));
        } else if (day.isSelected()) {
            holder.dayText.setBackgroundResource(R.drawable.selected_background);
            holder.dayText.setTextColor(context.getResources().getColor(android.R.color.white));
        }

        // 设置农历文本颜色和透明度
        holder.lunarText.setText("");
        if (day.isCurrentMonth()) {
            holder.lunarText.setAlpha(1.0f);
            holder.lunarText.setTextColor(context.getResources().getColor(android.R.color.darker_gray));
        } else {
            holder.lunarText.setAlpha(0.5f);
            holder.lunarText.setTextColor(context.getResources().getColor(android.R.color.darker_gray));
        }
        
        // 处理节假日信息
        Holiday firstHoliday = day.getFirstHoliday();
        if (firstHoliday != null) {
            // 如果有节假日，显示节假日名称
            holder.lunarText.setText(firstHoliday.getName());
            holder.lunarText.setTextColor(context.getResources().getColor(android.R.color.holo_red_light));
            
            // 如果是休息日，设置日期文字为红色
            if (firstHoliday.isRestDay() && day.isCurrentMonth()) {
                holder.dayText.setTextColor(context.getResources().getColor(android.R.color.holo_red_light));
            }
        } else {
            // 如果没有节假日，显示农历日期
            try {
                Calendar calendar = Calendar.getInstance();
                calendar.set(day.getYear(), day.getMonth(), day.getDay());
                String lunarDate = LunarCalendarUtil.getLunarDate(calendar);
                holder.lunarText.setText(lunarDate);
                
                // 周末显示为红色
                if ((day.isWeekend() && day.isCurrentMonth()) && 
                    !day.isToday() && !day.isSelected()) {
                    holder.dayText.setTextColor(context.getResources().getColor(android.R.color.holo_red_light));
                }
            } catch (Exception e) {
                e.printStackTrace();
                // 如果农历转换出错，显示空文本
                holder.lunarText.setText("");
            }
        }
        
        // 显示日程
        List<Schedule> schedules = day.getSchedules();
        if (schedules != null && !schedules.isEmpty()) {
            // 根据日期单元格的可用高度动态调整要显示的日程数量
            int cellHeight = convertView.getMeasuredHeight();
            // 减去日期和农历的高度(约70dp)估算可用空间
            int availableSpace = cellHeight - dpToPx(70);
            // 每个日程(包括间距)约占18dp高度
            int scheduleHeight = dpToPx(18);
            
            // 计算可显示的日程数量(最少1个，最多3个)
            int maxSchedulesToShow = Math.max(1, Math.min(3, availableSpace / scheduleHeight));
            
            int count = 0;
            for (Schedule schedule : schedules) {
                if (count >= maxSchedulesToShow) break;
                
                ScheduleView scheduleView = new ScheduleView(context, schedule);
                // 设置日程视图的高度
                scheduleView.setMinimumHeight(dpToPx(12));
                // 设置文本大小更小
                scheduleView.setTextSize(9);
                
                LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(
                    LinearLayout.LayoutParams.MATCH_PARENT,
                    dpToPx(12)
                );
                
                // 添加上下间距，确保日程之间有明显分隔
                params.setMargins(dpToPx(1), dpToPx(3), dpToPx(1), dpToPx(3));
                scheduleView.setLayoutParams(params);
                
                holder.scheduleContainer.addView(scheduleView);
                count++;
            }
            
            // 如果还有更多日程，显示一个"+更多"提示
            if (schedules.size() > maxSchedulesToShow) {
                TextView moreText = new TextView(context);
                moreText.setText("+" + (schedules.size() - maxSchedulesToShow) + "个日程");
                moreText.setTextColor(context.getResources().getColor(android.R.color.holo_blue_dark));
                moreText.setTextSize(9);
                
                // 设置"更多"提示的上边距，与最后一个日程保持距离
                LinearLayout.LayoutParams moreParams = new LinearLayout.LayoutParams(
                    LinearLayout.LayoutParams.MATCH_PARENT,
                    LinearLayout.LayoutParams.WRAP_CONTENT
                );
                moreParams.setMargins(dpToPx(1), dpToPx(3), dpToPx(1), 0);
                moreText.setLayoutParams(moreParams);
                
                holder.scheduleContainer.addView(moreText);
            }
        }

        return convertView;
    }

    private int dpToPx(int dp) {
        float density = context.getResources().getDisplayMetrics().density;
        return Math.round(dp * density);
    }

    private static class ViewHolder {
        TextView dayText;
        TextView lunarText;
        LinearLayout scheduleContainer;
    }
} 