.class public final synthetic Lcom/lee/myapplication/EditScheduleActivity$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# instance fields
.field public final synthetic f$0:Lcom/lee/myapplication/EditScheduleActivity;

.field public final synthetic f$1:Ljava/util/Calendar;


# direct methods
.method public synthetic constructor <init>(Lcom/lee/myapplication/EditScheduleActivity;Ljava/util/Calendar;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lee/myapplication/EditScheduleActivity$$ExternalSyntheticLambda6;->f$0:Lcom/lee/myapplication/EditScheduleActivity;

    iput-object p2, p0, Lcom/lee/myapplication/EditScheduleActivity$$ExternalSyntheticLambda6;->f$1:Ljava/util/Calendar;

    return-void
.end method


# virtual methods
.method public final onTimeSet(Landroid/widget/TimePicker;II)V
    .registers 6

    .line 0
    iget-object v0, p0, Lcom/lee/myapplication/EditScheduleActivity$$ExternalSyntheticLambda6;->f$0:Lcom/lee/myapplication/EditScheduleActivity;

    iget-object v1, p0, Lcom/lee/myapplication/EditScheduleActivity$$ExternalSyntheticLambda6;->f$1:Ljava/util/Calendar;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/lee/myapplication/EditScheduleActivity;->lambda$showTimePicker$6$com-lee-myapplication-EditScheduleActivity(Ljava/util/Calendar;Landroid/widget/TimePicker;II)V

    return-void
.end method
