.class public final synthetic Lcom/lee/myapplication/ScheduleDetailActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/lee/myapplication/ScheduleDetailActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/lee/myapplication/ScheduleDetailActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lee/myapplication/ScheduleDetailActivity$$ExternalSyntheticLambda2;->f$0:Lcom/lee/myapplication/ScheduleDetailActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/lee/myapplication/ScheduleDetailActivity$$ExternalSyntheticLambda2;->f$0:Lcom/lee/myapplication/ScheduleDetailActivity;

    invoke-virtual {v0, p1, p2}, Lcom/lee/myapplication/ScheduleDetailActivity;->lambda$showDeleteConfirmDialog$2$com-lee-myapplication-ScheduleDetailActivity(Landroid/content/DialogInterface;I)V

    return-void
.end method
