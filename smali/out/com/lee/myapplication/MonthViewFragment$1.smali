.class Lcom/lee/myapplication/MonthViewFragment$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MonthViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lee/myapplication/MonthViewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lee/myapplication/MonthViewFragment;


# direct methods
.method constructor <init>(Lcom/lee/myapplication/MonthViewFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lee/myapplication/MonthViewFragment;

    .line 50
    iput-object p1, p0, Lcom/lee/myapplication/MonthViewFragment$1;->this$0:Lcom/lee/myapplication/MonthViewFragment;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 10
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .line 53
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_49

    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-lez v0, :cond_2c

    .line 56
    iget-object v0, p0, Lcom/lee/myapplication/MonthViewFragment$1;->this$0:Lcom/lee/myapplication/MonthViewFragment;

    invoke-static {v0}, Lcom/lee/myapplication/MonthViewFragment;->access$000(Lcom/lee/myapplication/MonthViewFragment;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 57
    iget-object v0, p0, Lcom/lee/myapplication/MonthViewFragment$1;->this$0:Lcom/lee/myapplication/MonthViewFragment;

    invoke-static {v0}, Lcom/lee/myapplication/MonthViewFragment;->access$100(Lcom/lee/myapplication/MonthViewFragment;)V

    .line 58
    return v3

    .line 59
    :cond_2c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v0, v4

    cmpl-float v0, v0, v1

    if-lez v0, :cond_49

    .line 61
    iget-object v0, p0, Lcom/lee/myapplication/MonthViewFragment$1;->this$0:Lcom/lee/myapplication/MonthViewFragment;

    invoke-static {v0}, Lcom/lee/myapplication/MonthViewFragment;->access$000(Lcom/lee/myapplication/MonthViewFragment;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 62
    iget-object v0, p0, Lcom/lee/myapplication/MonthViewFragment$1;->this$0:Lcom/lee/myapplication/MonthViewFragment;

    invoke-static {v0}, Lcom/lee/myapplication/MonthViewFragment;->access$100(Lcom/lee/myapplication/MonthViewFragment;)V

    .line 63
    return v3

    .line 66
    :cond_49
    const/4 v0, 0x0

    return v0
.end method
