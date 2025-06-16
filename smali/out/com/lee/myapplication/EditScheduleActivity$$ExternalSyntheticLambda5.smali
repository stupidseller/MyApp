.class public final synthetic Lcom/lee/myapplication/EditScheduleActivity$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# instance fields
.field public final synthetic f$0:Lcom/lee/myapplication/EditScheduleActivity;

.field public final synthetic f$1:Ljava/util/Calendar;


# direct methods
.method public synthetic constructor <init>(Lcom/lee/myapplication/EditScheduleActivity;Ljava/util/Calendar;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lee/myapplication/EditScheduleActivity$$ExternalSyntheticLambda5;->f$0:Lcom/lee/myapplication/EditScheduleActivity;

    iput-object p2, p0, Lcom/lee/myapplication/EditScheduleActivity$$ExternalSyntheticLambda5;->f$1:Ljava/util/Calendar;

    return-void
.end method


# virtual methods
.method public final onDateSet(Landroid/widget/DatePicker;III)V
    .registers 11

    .line 0
    iget-object v0, p0, Lcom/lee/myapplication/EditScheduleActivity$$ExternalSyntheticLambda5;->f$0:Lcom/lee/myapplication/EditScheduleActivity;

    iget-object v1, p0, Lcom/lee/myapplication/EditScheduleActivity$$ExternalSyntheticLambda5;->f$1:Ljava/util/Calendar;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/lee/myapplication/EditScheduleActivity;->lambda$showDatePicker$5$com-lee-myapplication-EditScheduleActivity(Ljava/util/Calendar;Landroid/widget/DatePicker;III)V

    return-void
.end method
