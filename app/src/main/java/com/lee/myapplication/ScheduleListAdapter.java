package com.lee.myapplication;

import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;

public class ScheduleListAdapter extends BaseAdapter {
    private Context context;
    private List<DaySchedules> daySchedulesList;
    private LayoutInflater inflater;
    private SimpleDateFormat dateSdf;
    private SimpleDateFormat weekdaySdf;
    private SimpleDateFormat timeSdf;
    
    // 日程颜色
    private int[] categoryColors = {
        android.R.color.holo_red_light,    // 工作
        android.R.color.holo_blue_light,   // 学习
        android.R.color.holo_green_light,  // 生活
        android.R.color.holo_orange_light  // 其他
    };

    public ScheduleListAdapter(Context context) {
        this.context = context;
        this.daySchedulesList = new ArrayList<>();
        this.inflater = LayoutInflater.from(context);
        this.dateSdf = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault());
        this.weekdaySdf = new SimpleDateFormat("E", Locale.getDefault());
        this.timeSdf = new SimpleDateFormat("HH:mm", Locale.getDefault());
    }

    public void setData(List<Schedule> schedules) {
        // 按日期分组
        Map<String, List<Schedule>> dateMap = new TreeMap<>();
        
        for (Schedule schedule : schedules) {
            Calendar calendar = schedule.getStartTime();
            String dateKey = dateSdf.format(calendar.getTime());
            
            if (!dateMap.containsKey(dateKey)) {
                dateMap.put(dateKey, new ArrayList<>());
            }
            dateMap.get(dateKey).add(schedule);
        }
        
        // 转换为列表形式
        daySchedulesList.clear();
        for (Map.Entry<String, List<Schedule>> entry : dateMap.entrySet()) {
            DaySchedules daySchedules = new DaySchedules();
            
            // 设置日期
            try {
                Date date = dateSdf.parse(entry.getKey());
                Calendar calendar = Calendar.getInstance();
                calendar.setTime(date);
                
                daySchedules.date = calendar;
                daySchedules.schedules = entry.getValue();
                
                daySchedulesList.add(daySchedules);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        
        notifyDataSetChanged();
    }

    @Override
    public int getCount() {
        return daySchedulesList.size();
    }

    @Override
    public Object getItem(int position) {
        return daySchedulesList.get(position);
    }

    @Override
    public long getItemId(int position) {
        return position;
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        ViewHolder holder;
        
        if (convertView == null) {
            convertView = inflater.inflate(R.layout.schedule_list_item, parent, false);
            holder = new ViewHolder();
            holder.dateText = convertView.findViewById(R.id.dateText);
            holder.weekdayText = convertView.findViewById(R.id.weekdayText);
            holder.lunarDateText = convertView.findViewById(R.id.lunarDateText);
            holder.scheduleItemContainer = convertView.findViewById(R.id.scheduleItemContainer);
            convertView.setTag(holder);
        } else {
            holder = (ViewHolder) convertView.getTag();
        }
        
        DaySchedules daySchedules = daySchedulesList.get(position);
        Calendar date = daySchedules.date;
        
        // 设置日期
        holder.dateText.setText(dateSdf.format(date.getTime()));
        
        // 设置星期
        holder.weekdayText.setText(weekdaySdf.format(date.getTime()));
        
        // 设置农历
        try {
            holder.lunarDateText.setText(LunarCalendarUtil.getLunarDate(date));
        } catch (Exception e) {
            e.printStackTrace();
            holder.lunarDateText.setText("");
        }
        
        // 清除之前的日程
        holder.scheduleItemContainer.removeAllViews();
        
        // 添加当日日程
        for (Schedule schedule : daySchedules.schedules) {
            View scheduleItemView = createScheduleItemView(schedule);
            holder.scheduleItemContainer.addView(scheduleItemView);
            
            // 设置点击事件
            scheduleItemView.setOnClickListener(v -> {
                Intent intent = new Intent(context, ScheduleDetailActivity.class);
                intent.putExtra("schedule_id", schedule.getId());
                context.startActivity(intent);
            });
        }
        
        return convertView;
    }
    
    private View createScheduleItemView(Schedule schedule) {
        View view = inflater.inflate(R.layout.schedule_item, null);
        TextView timeText = view.findViewById(R.id.scheduleTimeText);
        TextView titleText = view.findViewById(R.id.scheduleTitleText);
        TextView descText = view.findViewById(R.id.scheduleDescText);
        View categoryIndicator = view.findViewById(R.id.categoryIndicator);
        
        // 设置时间
        if (schedule.isAllDay()) {
            timeText.setText("全天");
        } else {
            // 使用更清晰的时间格式
            String startTime = timeSdf.format(schedule.getStartTime().getTime());
            String endTime = timeSdf.format(schedule.getEndTime().getTime());
            String timeRange = startTime + "\n至 " + endTime;
            timeText.setText(timeRange);
        }
        
        // 设置标题和描述
        titleText.setText(schedule.getTitle());
        descText.setText(schedule.getDescription());
        
        // 设置分类颜色
        int colorIndex = getCategoryColorIndex(schedule.getCategory());
        categoryIndicator.setBackgroundColor(context.getResources().getColor(categoryColors[colorIndex]));
        
        return view;
    }
    
    private int getCategoryColorIndex(String category) {
        switch (category) {
            case "工作": return 0;
            case "学习": return 1;
            case "生活": return 2;
            default: return 3;
        }
    }
    
    private static class ViewHolder {
        TextView dateText;
        TextView weekdayText;
        TextView lunarDateText;
        LinearLayout scheduleItemContainer;
    }
    
    public static class DaySchedules {
        Calendar date;
        List<Schedule> schedules;
    }
} 