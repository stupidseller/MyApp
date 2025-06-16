package com.lee.myapplication;

import android.content.Context;
import android.content.Intent;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
import android.widget.TextView;
import android.graphics.Color;
import android.view.ViewGroup;
import android.util.TypedValue;
import java.text.SimpleDateFormat;
import java.util.Locale;

public class ScheduleView extends TextView {
    private Schedule schedule;
    private Paint paint;
    private RectF bounds;
    private int categoryColors[] = {
        Color.parseColor("#FF4081"), // 工作 - 粉红
        Color.parseColor("#3F51B5"), // 学习 - 靛蓝
        Color.parseColor("#4CAF50"), // 生活 - 绿色
        Color.parseColor("#FF9800")  // 其他 - 橙色
    };
    private SimpleDateFormat timeFormat = new SimpleDateFormat("HH:mm", Locale.getDefault());

    public ScheduleView(Context context, Schedule schedule) {
        super(context);
        this.schedule = schedule;
        init();
    }

    private void init() {
        paint = new Paint();
        paint.setAntiAlias(true);
        bounds = new RectF();
        
        // 设置文本样式
        setTextColor(Color.WHITE);
        setTextSize(TypedValue.COMPLEX_UNIT_SP, 12);
        setPadding(4, 2, 4, 2); // 减小内边距
        setMaxLines(1); // 限制为单行
        setEllipsize(android.text.TextUtils.TruncateAt.END);
        
        // 设置背景颜色
        int colorIndex = getCategoryColorIndex(schedule.getCategory());
        int color = categoryColors[colorIndex];
        paint.setColor(color);
        
        // 设置文本内容
        StringBuilder builder = new StringBuilder();
        if (!schedule.isAllDay()) {
            // 只显示开始时间，节省空间
            builder.append(timeFormat.format(schedule.getStartTime().getTime()))
                  .append(" ");
        }
        builder.append(schedule.getTitle());
        setText(builder.toString());
        
        // 设置点击和长按监听器
        setOnClickListener(v -> showScheduleDetails());
    }

    private int getCategoryColorIndex(String category) {
        switch (category) {
            case "工作": return 0;
            case "学习": return 1;
            case "生活": return 2;
            default: return 3;
        }
    }

    @Override
    protected void onDraw(Canvas canvas) {
        // 绘制圆角矩形背景
        bounds.set(0, 0, getWidth(), getHeight());
        canvas.drawRoundRect(bounds, 4, 4, paint);
        
        // 如果设置了提醒，绘制一个小图标
        if (schedule.getReminderMinutes() > 0) {
            Paint reminderPaint = new Paint(paint);
            reminderPaint.setColor(Color.WHITE);
            canvas.drawCircle(getWidth() - 8, 8, 3, reminderPaint);
        }
        
        super.onDraw(canvas);
    }

    private void showScheduleDetails() {
        // 跳转到日程详情页面
        Intent intent = new Intent(getContext(), ScheduleDetailActivity.class);
        intent.putExtra("schedule_id", schedule.getId());
        getContext().startActivity(intent);
    }

    public Schedule getSchedule() {
        return schedule;
    }
    
    /**
     * 设置文本大小
     */
    public void setTextSize(float size) {
        setTextSize(TypedValue.COMPLEX_UNIT_SP, size);
    }
} 