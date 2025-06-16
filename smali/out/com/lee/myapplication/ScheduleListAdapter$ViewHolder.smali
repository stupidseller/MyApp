.class Lcom/lee/myapplication/ScheduleListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ScheduleListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lee/myapplication/ScheduleListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field dateText:Landroid/widget/TextView;

.field lunarDateText:Landroid/widget/TextView;

.field scheduleItemContainer:Landroid/widget/LinearLayout;

.field weekdayText:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lee/myapplication/ScheduleListAdapter$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/lee/myapplication/ScheduleListAdapter$1;

    .line 188
    invoke-direct {p0}, Lcom/lee/myapplication/ScheduleListAdapter$ViewHolder;-><init>()V

    return-void
.end method
