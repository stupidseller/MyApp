.class Lcom/lee/myapplication/CalendarAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "CalendarAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lee/myapplication/CalendarAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field dayText:Landroid/widget/TextView;

.field lunarText:Landroid/widget/TextView;

.field scheduleContainer:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lee/myapplication/CalendarAdapter$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/lee/myapplication/CalendarAdapter$1;

    .line 176
    invoke-direct {p0}, Lcom/lee/myapplication/CalendarAdapter$ViewHolder;-><init>()V

    return-void
.end method
