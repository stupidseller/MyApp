.class public final synthetic Lcom/lee/myapplication/ScheduleListFragment$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/lee/myapplication/ScheduleListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/lee/myapplication/ScheduleListFragment;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lee/myapplication/ScheduleListFragment$$ExternalSyntheticLambda4;->f$0:Lcom/lee/myapplication/ScheduleListFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/lee/myapplication/ScheduleListFragment$$ExternalSyntheticLambda4;->f$0:Lcom/lee/myapplication/ScheduleListFragment;

    invoke-virtual {v0}, Lcom/lee/myapplication/ScheduleListFragment;->lambda$loadSchedules$6$com-lee-myapplication-ScheduleListFragment()V

    return-void
.end method
