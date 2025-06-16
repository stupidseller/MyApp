.class public Lcom/lee/myapplication/CalendarPagerAdapter;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "CalendarPagerAdapter.java"


# static fields
.field private static final NUM_PAGES:I = 0x4


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .registers 2
    .param p1, "fragmentActivity"    # Landroidx/fragment/app/FragmentActivity;

    .line 11
    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 12
    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .registers 3
    .param p1, "position"    # I

    .line 16
    packed-switch p1, :pswitch_data_22

    .line 26
    new-instance v0, Lcom/lee/myapplication/MonthViewFragment;

    invoke-direct {v0}, Lcom/lee/myapplication/MonthViewFragment;-><init>()V

    return-object v0

    .line 24
    :pswitch_9
    new-instance v0, Lcom/lee/myapplication/ScheduleListFragment;

    invoke-direct {v0}, Lcom/lee/myapplication/ScheduleListFragment;-><init>()V

    return-object v0

    .line 22
    :pswitch_f
    new-instance v0, Lcom/lee/myapplication/DayViewFragment;

    invoke-direct {v0}, Lcom/lee/myapplication/DayViewFragment;-><init>()V

    return-object v0

    .line 20
    :pswitch_15
    new-instance v0, Lcom/lee/myapplication/WeekViewFragment;

    invoke-direct {v0}, Lcom/lee/myapplication/WeekViewFragment;-><init>()V

    return-object v0

    .line 18
    :pswitch_1b
    new-instance v0, Lcom/lee/myapplication/MonthViewFragment;

    invoke-direct {v0}, Lcom/lee/myapplication/MonthViewFragment;-><init>()V

    return-object v0

    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_15
        :pswitch_f
        :pswitch_9
    .end packed-switch
.end method

.method public getItemCount()I
    .registers 2

    .line 32
    const/4 v0, 0x4

    return v0
.end method
