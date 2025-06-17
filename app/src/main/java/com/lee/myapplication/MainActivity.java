package com.lee.myapplication;

import android.os.Bundle;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.tabs.TabLayout;
import com.google.android.material.tabs.TabLayoutMediator;

public class MainActivity extends AppCompatActivity {
    private ViewPager2 viewPager;
    private TabLayout tabLayout;
    private TextView temperatureText;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        initViews();

        // 使用post延迟初始化操作，让界面先显示出来
        viewPager.post(() -> {
            setupViewPager();
        });
    }

    @Override
    protected void onResume() {
        super.onResume();
    }

    private void initViews() {
        viewPager = findViewById(R.id.viewPager);
        tabLayout = findViewById(R.id.tabLayout);

        temperatureText = findViewById(R.id.temperatureText);
    }

    private void setupViewPager() {
        // 使用setOffscreenPageLimit减少页面重建
        viewPager.setOffscreenPageLimit(3);
        
        CalendarPagerAdapter pagerAdapter = new CalendarPagerAdapter(this);
        viewPager.setAdapter(pagerAdapter);

        new TabLayoutMediator(tabLayout, viewPager,
            (tab, position) -> {
                switch (position) {
                    case 0:
                        tab.setText("月视图");
                        break;
                    case 1:
                        tab.setText("周视图");
                        break;
                    case 2:
                        tab.setText("日视图");
                        break;
                    case 3:
                        tab.setText("日程");
                        break;
                }
            }
        ).attach();
    }

    private void showCityInputDialog() {
    }

}