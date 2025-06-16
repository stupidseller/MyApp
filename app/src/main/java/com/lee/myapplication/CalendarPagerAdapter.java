package com.lee.myapplication;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.viewpager2.adapter.FragmentStateAdapter;

public class CalendarPagerAdapter extends FragmentStateAdapter {
    private static final int NUM_PAGES = 4;

    public CalendarPagerAdapter(FragmentActivity fragmentActivity) {
        super(fragmentActivity);
    }

    @Override
    public Fragment createFragment(int position) {
        switch (position) {
            case 0:
                return new MonthViewFragment();
            case 1:
                return new WeekViewFragment();
            case 2:
                return new DayViewFragment();
            case 3:
                return new ScheduleListFragment();
            default:
                return new MonthViewFragment();
        }
    }

    @Override
    public int getItemCount() {
        return NUM_PAGES;
    }
} 