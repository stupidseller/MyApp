package com.lee.myapplication;

import android.app.AlertDialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import java.text.SimpleDateFormat;
import java.util.Locale;

public class ScheduleDetailActivity extends AppCompatActivity {
    private Schedule schedule;
    private DatabaseHelper dbHelper;
    private TextView titleTextView;
    private TextView timeTextView;
    private TextView descriptionTextView;
    private TextView categoryTextView;
    private TextView repeatTypeTextView;
    private TextView reminderTextView;
    private Button editButton;
    private Button deleteButton;
    private SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm", Locale.getDefault());
    private long scheduleId;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_schedule_detail);
        
        // 初始化视图
        titleTextView = findViewById(R.id.title_text);
        timeTextView = findViewById(R.id.time_text);
        descriptionTextView = findViewById(R.id.description_text);
        categoryTextView = findViewById(R.id.category_text);
        repeatTypeTextView = findViewById(R.id.repeat_type_text);
        reminderTextView = findViewById(R.id.reminder_text);
        editButton = findViewById(R.id.btn_edit);
        deleteButton = findViewById(R.id.btn_delete);
        
        dbHelper = new DatabaseHelper(this);
        
        // 获取日程ID并加载数据
        scheduleId = getIntent().getLongExtra("schedule_id", -1);
        if (scheduleId != -1) {
            loadSchedule(scheduleId);
        } else {
            Toast.makeText(this, "无法加载日程详情", Toast.LENGTH_SHORT).show();
            finish();
        }
        
        // 设置按钮点击事件
        editButton.setOnClickListener(v -> {
            Intent editIntent = new Intent(this, EditScheduleActivity.class);
            editIntent.putExtra("schedule_id", schedule.getId());
            startActivity(editIntent);
        });
        
        deleteButton.setOnClickListener(v -> {
            showDeleteConfirmDialog();
        });
    }
    
    @Override
    protected void onResume() {
        super.onResume();
        // 刷新数据，以防数据被修改
        if (scheduleId != -1) {
            loadSchedule(scheduleId);
        }
    }

    private void loadSchedule(long scheduleId) {
        schedule = dbHelper.getScheduleById(scheduleId);
        if (schedule != null) {
            // 显示日程详情
            titleTextView.setText(schedule.getTitle());
            
            String timeText = dateFormat.format(schedule.getStartTime().getTime()) + 
                            " - " + 
                            dateFormat.format(schedule.getEndTime().getTime());
            timeTextView.setText(timeText);
            
            descriptionTextView.setText(schedule.getDescription());
            categoryTextView.setText(schedule.getCategory());
            repeatTypeTextView.setText(schedule.getRepeatType());
            
            String reminderText = schedule.getReminderMinutes() > 0 ? 
                                "提前" + schedule.getReminderMinutes() + "分钟提醒" : 
                                "无提醒";
            reminderTextView.setText(reminderText);
        }
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_schedule_detail, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        int id = item.getItemId();
        
        if (id == R.id.action_edit) {
            // 跳转到编辑页面
            Intent editIntent = new Intent(this, EditScheduleActivity.class);
            editIntent.putExtra("schedule_id", schedule.getId());
            startActivity(editIntent);
            return true;
        } else if (id == R.id.action_delete) {
            // 显示删除确认对话框
            showDeleteConfirmDialog();
            return true;
        }
        
        return super.onOptionsItemSelected(item);
    }

    private void showDeleteConfirmDialog() {
        new AlertDialog.Builder(this)
            .setTitle("删除日程")
            .setMessage("确定要删除这个日程吗？")
            .setPositiveButton("确定", (dialog, which) -> {
                deleteSchedule();
            })
            .setNegativeButton("取消", null)
            .show();
    }

    private void deleteSchedule() {
        if (schedule != null) {
            // 如果设置了提醒，取消它
            if (schedule.getReminderMinutes() > 0) {
                ReminderService.cancelReminder(this, schedule.getId());
            }
            
            // 从数据库中删除日程
            dbHelper.deleteSchedule(schedule.getId());
            
            Toast.makeText(this, "日程已删除", Toast.LENGTH_SHORT).show();
            
            // 设置返回结果，通知前一个页面刷新
            setResult(RESULT_OK);
            
            // 关闭当前页面
            finish();
        }
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        if (dbHelper != null) {
            dbHelper.close();
        }
    }
} 