.class public final synthetic Lcom/lee/myapplication/EditScheduleActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/lee/myapplication/EditScheduleActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/lee/myapplication/EditScheduleActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lee/myapplication/EditScheduleActivity$$ExternalSyntheticLambda4;->f$0:Lcom/lee/myapplication/EditScheduleActivity;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/lee/myapplication/EditScheduleActivity$$ExternalSyntheticLambda4;->f$0:Lcom/lee/myapplication/EditScheduleActivity;

    invoke-virtual {v0, p1, p2}, Lcom/lee/myapplication/EditScheduleActivity;->lambda$setupDateTimeButtons$4$com-lee-myapplication-EditScheduleActivity(Landroid/widget/CompoundButton;Z)V

    return-void
.end method
