.class public final synthetic Lcom/lee/myapplication/MonthViewFragment$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# instance fields
.field public final synthetic f$0:Lcom/lee/myapplication/MonthViewFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/lee/myapplication/MonthViewFragment;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lee/myapplication/MonthViewFragment$$ExternalSyntheticLambda10;->f$0:Lcom/lee/myapplication/MonthViewFragment;

    return-void
.end method


# virtual methods
.method public final onDateSet(Landroid/widget/DatePicker;III)V
    .registers 6

    .line 0
    iget-object v0, p0, Lcom/lee/myapplication/MonthViewFragment$$ExternalSyntheticLambda10;->f$0:Lcom/lee/myapplication/MonthViewFragment;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lee/myapplication/MonthViewFragment;->lambda$showDatePickerDialog$4$com-lee-myapplication-MonthViewFragment(Landroid/widget/DatePicker;III)V

    return-void
.end method
