.class public final synthetic Lcom/lee/myapplication/MonthViewFragment$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/lee/myapplication/MonthViewFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/lee/myapplication/MonthViewFragment;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lee/myapplication/MonthViewFragment$$ExternalSyntheticLambda3;->f$0:Lcom/lee/myapplication/MonthViewFragment;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12

    .line 0
    iget-object v0, p0, Lcom/lee/myapplication/MonthViewFragment$$ExternalSyntheticLambda3;->f$0:Lcom/lee/myapplication/MonthViewFragment;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/lee/myapplication/MonthViewFragment;->lambda$updateCalendarView$6$com-lee-myapplication-MonthViewFragment(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
