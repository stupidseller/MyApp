.class public final synthetic Lcom/lee/myapplication/WeekViewFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/lee/myapplication/WeekViewFragment;

.field public final synthetic f$1:Lcom/lee/myapplication/Schedule;


# direct methods
.method public synthetic constructor <init>(Lcom/lee/myapplication/WeekViewFragment;Lcom/lee/myapplication/Schedule;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lee/myapplication/WeekViewFragment$$ExternalSyntheticLambda1;->f$0:Lcom/lee/myapplication/WeekViewFragment;

    iput-object p2, p0, Lcom/lee/myapplication/WeekViewFragment$$ExternalSyntheticLambda1;->f$1:Lcom/lee/myapplication/Schedule;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/lee/myapplication/WeekViewFragment$$ExternalSyntheticLambda1;->f$0:Lcom/lee/myapplication/WeekViewFragment;

    iget-object v1, p0, Lcom/lee/myapplication/WeekViewFragment$$ExternalSyntheticLambda1;->f$1:Lcom/lee/myapplication/Schedule;

    invoke-virtual {v0, v1, p1}, Lcom/lee/myapplication/WeekViewFragment;->lambda$createDayColumn$5$com-lee-myapplication-WeekViewFragment(Lcom/lee/myapplication/Schedule;Landroid/view/View;)V

    return-void
.end method
