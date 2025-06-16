.class public final Lcom/google/android/material/motion/MaterialBackOrchestrator;
.super Ljava/lang/Object;
.source "MaterialBackOrchestrator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/motion/MaterialBackOrchestrator$Api33BackCallbackDelegate;,
        Lcom/google/android/material/motion/MaterialBackOrchestrator$Api34BackCallbackDelegate;,
        Lcom/google/android/material/motion/MaterialBackOrchestrator$BackCallbackDelegate;
    }
.end annotation


# instance fields
.field private final backCallbackDelegate:Lcom/google/android/material/motion/MaterialBackOrchestrator$BackCallbackDelegate;

.field private final backHandler:Lcom/google/android/material/motion/MaterialBackHandler;

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ":",
            "Lcom/google/android/material/motion/MaterialBackHandler;",
            ">(TT;)V"
        }
    .end annotation

    .line 49
    .local p1, "backHandlerView":Landroid/view/View;, "TT;"
    move-object v0, p1

    check-cast v0, Lcom/google/android/material/motion/MaterialBackHandler;

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/motion/MaterialBackOrchestrator;-><init>(Lcom/google/android/material/motion/MaterialBackHandler;Landroid/view/View;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/motion/MaterialBackHandler;Landroid/view/View;)V
    .registers 4
    .param p1, "backHandler"    # Lcom/google/android/material/motion/MaterialBackHandler;
    .param p2, "view"    # Landroid/view/View;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {}, Lcom/google/android/material/motion/MaterialBackOrchestrator;->createBackCallbackDelegate()Lcom/google/android/material/motion/MaterialBackOrchestrator$BackCallbackDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/motion/MaterialBackOrchestrator;->backCallbackDelegate:Lcom/google/android/material/motion/MaterialBackOrchestrator$BackCallbackDelegate;

    .line 53
    iput-object p1, p0, Lcom/google/android/material/motion/MaterialBackOrchestrator;->backHandler:Lcom/google/android/material/motion/MaterialBackHandler;

    .line 54
    iput-object p2, p0, Lcom/google/android/material/motion/MaterialBackOrchestrator;->view:Landroid/view/View;

    .line 55
    return-void
.end method

.method private static createBackCallbackDelegate()Lcom/google/android/material/motion/MaterialBackOrchestrator$BackCallbackDelegate;
    .registers 3

    .line 100
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    const/4 v2, 0x0

    if-lt v0, v1, :cond_d

    .line 101
    new-instance v0, Lcom/google/android/material/motion/MaterialBackOrchestrator$Api34BackCallbackDelegate;

    invoke-direct {v0, v2}, Lcom/google/android/material/motion/MaterialBackOrchestrator$Api34BackCallbackDelegate;-><init>(Lcom/google/android/material/motion/MaterialBackOrchestrator$1;)V

    return-object v0

    .line 102
    :cond_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_19

    .line 103
    new-instance v0, Lcom/google/android/material/motion/MaterialBackOrchestrator$Api33BackCallbackDelegate;

    invoke-direct {v0, v2}, Lcom/google/android/material/motion/MaterialBackOrchestrator$Api33BackCallbackDelegate;-><init>(Lcom/google/android/material/motion/MaterialBackOrchestrator$1;)V

    return-object v0

    .line 105
    :cond_19
    return-object v2
.end method

.method private startListeningForBackCallbacks(Z)V
    .registers 5
    .param p1, "priorityOverlay"    # Z

    .line 86
    iget-object v0, p0, Lcom/google/android/material/motion/MaterialBackOrchestrator;->backCallbackDelegate:Lcom/google/android/material/motion/MaterialBackOrchestrator$BackCallbackDelegate;

    if-eqz v0, :cond_d

    .line 87
    iget-object v0, p0, Lcom/google/android/material/motion/MaterialBackOrchestrator;->backCallbackDelegate:Lcom/google/android/material/motion/MaterialBackOrchestrator$BackCallbackDelegate;

    iget-object v1, p0, Lcom/google/android/material/motion/MaterialBackOrchestrator;->backHandler:Lcom/google/android/material/motion/MaterialBackHandler;

    iget-object v2, p0, Lcom/google/android/material/motion/MaterialBackOrchestrator;->view:Landroid/view/View;

    invoke-interface {v0, v1, v2, p1}, Lcom/google/android/material/motion/MaterialBackOrchestrator$BackCallbackDelegate;->startListeningForBackCallbacks(Lcom/google/android/material/motion/MaterialBackHandler;Landroid/view/View;Z)V

    .line 89
    :cond_d
    return-void
.end method


# virtual methods
.method public shouldListenForBackCallbacks()Z
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/google/android/material/motion/MaterialBackOrchestrator;->backCallbackDelegate:Lcom/google/android/material/motion/MaterialBackOrchestrator$BackCallbackDelegate;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public startListeningForBackCallbacks()V
    .registers 2

    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/material/motion/MaterialBackOrchestrator;->startListeningForBackCallbacks(Z)V

    .line 75
    return-void
.end method

.method public startListeningForBackCallbacksWithPriorityOverlay()V
    .registers 2

    .line 66
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/material/motion/MaterialBackOrchestrator;->startListeningForBackCallbacks(Z)V

    .line 67
    return-void
.end method

.method public stopListeningForBackCallbacks()V
    .registers 3

    .line 93
    iget-object v0, p0, Lcom/google/android/material/motion/MaterialBackOrchestrator;->backCallbackDelegate:Lcom/google/android/material/motion/MaterialBackOrchestrator$BackCallbackDelegate;

    if-eqz v0, :cond_b

    .line 94
    iget-object v0, p0, Lcom/google/android/material/motion/MaterialBackOrchestrator;->backCallbackDelegate:Lcom/google/android/material/motion/MaterialBackOrchestrator$BackCallbackDelegate;

    iget-object v1, p0, Lcom/google/android/material/motion/MaterialBackOrchestrator;->view:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/google/android/material/motion/MaterialBackOrchestrator$BackCallbackDelegate;->stopListeningForBackCallbacks(Landroid/view/View;)V

    .line 96
    :cond_b
    return-void
.end method
