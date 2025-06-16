.class public final synthetic Lcom/lee/myapplication/MonthViewFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/lee/myapplication/MonthViewFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/lee/myapplication/MonthViewFragment;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lee/myapplication/MonthViewFragment$$ExternalSyntheticLambda0;->f$0:Lcom/lee/myapplication/MonthViewFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/lee/myapplication/MonthViewFragment$$ExternalSyntheticLambda0;->f$0:Lcom/lee/myapplication/MonthViewFragment;

    invoke-virtual {v0}, Lcom/lee/myapplication/MonthViewFragment;->lambda$updateCalendarView$7$com-lee-myapplication-MonthViewFragment()V

    return-void
.end method
