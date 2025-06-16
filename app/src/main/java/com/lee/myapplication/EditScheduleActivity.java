package com.lee.myapplication;

import android.app.DatePickerDialog;
import android.app.TimePickerDialog;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.Switch;
import androidx.appcompat.app.AppCompatActivity;
import java.util.Calendar;
import java.text.SimpleDateFormat;
import java.util.Locale;
import android.widget.Toast;

public class EditScheduleActivity extends AppCompatActivity {
    private EditText titleEdit, descriptionEdit;
    private Button startDateBtn, startTimeBtn, endDateBtn, endTimeBtn;
    private Spinner categorySpinner, repeatTypeSpinner, reminderSpinner;
    private Switch allDaySwitch;
    private Calendar startTime, endTime;
    private DatabaseHelper dbHelper;
    private SimpleDateFormat dateFormat;
    private SimpleDateFormat timeFormat;
    private Schedule currentSchedule;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_edit_schedule);
        
        // 设置返回按钮（添加空值检查）
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        }
        
        initViews();
        setupDateTimeButtons();
        setupSpinners();
        
        // 如果是编辑现有日程
        long scheduleId = getIntent().getLongExtra("schedule_id", -1);
        if (scheduleId != -1) {
            loadSchedule(scheduleId);
        }
    }

    private void initViews() {
        titleEdit = findViewById(R.id.titleEdit);
        descriptionEdit = findViewById(R.id.descriptionEdit);
        startDateBtn = findViewById(R.id.startDateBtn);
        startTimeBtn = findViewById(R.id.startTimeBtn);
        endDateBtn = findViewById(R.id.endDateBtn);
        endTimeBtn = findViewById(R.id.endTimeBtn);
        categorySpinner = findViewById(R.id.categorySpinner);
        repeatTypeSpinner = findViewById(R.id.repeatTypeSpinner);
        reminderSpinner = findViewById(R.id.reminderSpinner);
        allDaySwitch = findViewById(R.id.allDaySwitch);
        
        dbHelper = new DatabaseHelper(this);
        dateFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault());
        timeFormat = new SimpleDateFormat("HH:mm", Locale.getDefault());
        
        startTime = Calendar.getInstance();
        endTime = Calendar.getInstance();
        endTime.add(Calendar.HOUR_OF_DAY, 1);
        
        updateDateTimeButtons();
    }

    private void setupDateTimeButtons() {
        startDateBtn.setOnClickListener(v -> showDatePicker(startTime, startDateBtn));
        startTimeBtn.setOnClickListener(v -> showTimePicker(startTime, startTimeBtn));
        endDateBtn.setOnClickListener(v -> showDatePicker(endTime, endDateBtn));
        endTimeBtn.setOnClickListener(v -> showTimePicker(endTime, endTimeBtn));
        
        allDaySwitch.setOnCheckedChangeListener((buttonView, isChecked) -> {
            startTimeBtn.setEnabled(!isChecked);
            endTimeBtn.setEnabled(!isChecked);
        });
    }

    private void setupSpinners() {
        // 设置分类选项
        ArrayAdapter<String> categoryAdapter = new ArrayAdapter<>(this,
            android.R.layout.simple_spinner_item,
            new String[]{"工作", "学习", "生活", "其他"});
        categoryAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        categorySpinner.setAdapter(categoryAdapter);

        // 设置重复类型选项
        ArrayAdapter<String> repeatAdapter = new ArrayAdapter<>(this,
            android.R.layout.simple_spinner_item,
            new String[]{"不重复", "每天", "每周", "每月"});
        repeatAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        repeatTypeSpinner.setAdapter(repeatAdapter);

        // 设置提醒时间选项
        ArrayAdapter<String> reminderAdapter = new ArrayAdapter<>(this,
            android.R.layout.simple_spinner_item,
            new String[]{"不提醒", "提前5分钟", "提前15分钟", "提前30分钟", "提前1小时"});
        reminderAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        reminderSpinner.setAdapter(reminderAdapter);
    }

    private void showDatePicker(final Calendar calendar, final Button button) {
        new DatePickerDialog(this, (view, year, month, dayOfMonth) -> {
            calendar.set(year, month, dayOfMonth);
            updateDateTimeButtons();
        }, calendar.get(Calendar.YEAR), calendar.get(Calendar.MONTH),
           calendar.get(Calendar.DAY_OF_MONTH)).show();
    }

    private void showTimePicker(final Calendar calendar, final Button button) {
        new TimePickerDialog(this, (view, hourOfDay, minute) -> {
            calendar.set(Calendar.HOUR_OF_DAY, hourOfDay);
            calendar.set(Calendar.MINUTE, minute);
            updateDateTimeButtons();
        }, calendar.get(Calendar.HOUR_OF_DAY), calendar.get(Calendar.MINUTE), true).show();
    }

    private void updateDateTimeButtons() {
        startDateBtn.setText(dateFormat.format(startTime.getTime()));
        startTimeBtn.setText(timeFormat.format(startTime.getTime()));
        endDateBtn.setText(dateFormat.format(endTime.getTime()));
        endTimeBtn.setText(timeFormat.format(endTime.getTime()));
    }

    private void loadSchedule(long scheduleId) {
        // 从数据库加载日程数据
        currentSchedule = dbHelper.getScheduleById(scheduleId);
        
        if (currentSchedule != null) {
            // 填充UI控件
            titleEdit.setText(currentSchedule.getTitle());
            descriptionEdit.setText(currentSchedule.getDescription());
            
            // 设置日期和时间
            startTime = currentSchedule.getStartTime();
            endTime = currentSchedule.getEndTime();
            updateDateTimeButtons();
            
            // 设置全天选项
            allDaySwitch.setChecked(currentSchedule.isAllDay());
            
            // 设置分类
            String category = currentSchedule.getCategory();
            for (int i = 0; i < categorySpinner.getAdapter().getCount(); i++) {
                if (categorySpinner.getAdapter().getItem(i).toString().equals(category)) {
                    categorySpinner.setSelection(i);
                    break;
                }
            }
            
            // 设置重复类型
            String repeatType = currentSchedule.getRepeatType();
            for (int i = 0; i < repeatTypeSpinner.getAdapter().getCount(); i++) {
                if (repeatTypeSpinner.getAdapter().getItem(i).toString().equals(repeatType)) {
                    repeatTypeSpinner.setSelection(i);
                    break;
                }
            }
            
            // 设置提醒时间
            int reminderMinutes = currentSchedule.getReminderMinutes();
            int reminderPosition = 0; // 默认"不提醒"
            
            if (reminderMinutes == 5) {
                reminderPosition = 1; // "提前5分钟"
            } else if (reminderMinutes == 15) {
                reminderPosition = 2; // "提前15分钟"
            } else if (reminderMinutes == 30) {
                reminderPosition = 3; // "提前30分钟"
            } else if (reminderMinutes == 60) {
                reminderPosition = 4; // "提前1小时"
            }
            
            reminderSpinner.setSelection(reminderPosition);
        }
    }

    public void onSaveClick(View view) {
        // 检查标题是否为空
        String title = titleEdit.getText().toString().trim();
        if (title.isEmpty()) {
            Toast.makeText(this, "请输入日程标题", Toast.LENGTH_SHORT).show();
            return;
        }
        
        Schedule schedule = new Schedule();
        schedule.setTitle(title);
        schedule.setDescription(descriptionEdit.getText().toString());
        schedule.setStartTime(startTime);
        schedule.setEndTime(endTime);
        schedule.setCategory(categorySpinner.getSelectedItem().toString());
        schedule.setAllDay(allDaySwitch.isChecked());
        schedule.setRepeatType(repeatTypeSpinner.getSelectedItem().toString());
        
        // 设置提醒时间
        int[] reminderValues = {0, 5, 15, 30, 60};
        schedule.setReminderMinutes(reminderValues[reminderSpinner.getSelectedItemPosition()]);

        if (currentSchedule != null) {
            schedule.setId(currentSchedule.getId());
            // 更新日程时，先取消原有的提醒
            ReminderService.cancelReminder(this, currentSchedule.getId());
            dbHelper.updateSchedule(schedule);
            Toast.makeText(this, "日程已更新", Toast.LENGTH_SHORT).show();
        } else {
            long id = dbHelper.addSchedule(schedule);
            schedule.setId(id);
            Toast.makeText(this, "日程已创建", Toast.LENGTH_SHORT).show();
        }

        // 如果设置了提醒，创建提醒
        if (schedule.getReminderMinutes() > 0) {
            ReminderService.scheduleReminder(this, schedule);
        }

        finish();
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        if (item.getItemId() == android.R.id.home) {
            finish();
            return true;
        }
        return super.onOptionsItemSelected(item);
    }
} 