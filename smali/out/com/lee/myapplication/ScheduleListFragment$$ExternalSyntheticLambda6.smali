.class public final synthetic Lcom/lee/myapplication/ScheduleListFragment$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/lee/myapplication/ScheduleListFragment;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/lee/myapplication/ScheduleListFragment;Ljava/util/List;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lee/myapplication/ScheduleListFragment$$ExternalSyntheticLambda6;->f$0:Lcom/lee/myapplication/ScheduleListFragment;

    iput-object p2, p0, Lcom/lee/myapplication/ScheduleListFragment$$ExternalSyntheticLambda6;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/lee/myapplication/ScheduleListFragment$$ExternalSyntheticLambda6;->f$0:Lcom/lee/myapplication/ScheduleListFragment;

    iget-object v1, p0, Lcom/lee/myapplication/ScheduleListFragment$$ExternalSyntheticLambda6;->f$1:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/lee/myapplication/ScheduleListFragment;->lambda$loadSchedules$5$com-lee-myapplication-ScheduleListFragment(Ljava/util/List;)V

    return-void
.end method
