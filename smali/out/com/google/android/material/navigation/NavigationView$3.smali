.class Lcom/google/android/material/navigation/NavigationView$3;
.super Ljava/lang/Object;
.source "NavigationView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/navigation/NavigationView;->setupInsetScrimsListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/navigation/NavigationView;


# direct methods
.method constructor <init>(Lcom/google/android/material/navigation/NavigationView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/android/material/navigation/NavigationView;

    .line 1056
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationView$3;->this$0:Lcom/google/android/material/navigation/NavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 11

    .line 1059
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView$3;->this$0:Lcom/google/android/material/navigation/NavigationView;

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView$3;->this$0:Lcom/google/android/material/navigation/NavigationView;

    invoke-static {v1}, Lcom/google/android/material/navigation/NavigationView;->access$100(Lcom/google/android/material/navigation/NavigationView;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/navigation/NavigationView;->getLocationOnScreen([I)V

    .line 1060
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView$3;->this$0:Lcom/google/android/material/navigation/NavigationView;

    invoke-static {v0}, Lcom/google/android/material/navigation/NavigationView;->access$100(Lcom/google/android/material/navigation/NavigationView;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_19

    move v0, v1

    goto :goto_1a

    :cond_19
    move v0, v2

    .line 1061
    .local v0, "isBehindStatusBar":Z
    :goto_1a
    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationView$3;->this$0:Lcom/google/android/material/navigation/NavigationView;

    invoke-static {v3}, Lcom/google/android/material/navigation/NavigationView;->access$200(Lcom/google/android/material/navigation/NavigationView;)Lcom/google/android/material/internal/NavigationMenuPresenter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setBehindStatusBar(Z)V

    .line 1062
    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationView$3;->this$0:Lcom/google/android/material/navigation/NavigationView;

    if-eqz v0, :cond_31

    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationView$3;->this$0:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v4}, Lcom/google/android/material/navigation/NavigationView;->isTopInsetScrimEnabled()Z

    move-result v4

    if-eqz v4, :cond_31

    move v4, v1

    goto :goto_32

    :cond_31
    move v4, v2

    :goto_32
    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/NavigationView;->setDrawTopInsetForeground(Z)V

    .line 1066
    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationView$3;->this$0:Lcom/google/android/material/navigation/NavigationView;

    invoke-static {v3}, Lcom/google/android/material/navigation/NavigationView;->access$100(Lcom/google/android/material/navigation/NavigationView;)[I

    move-result-object v3

    aget v3, v3, v2

    if-eqz v3, :cond_53

    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationView$3;->this$0:Lcom/google/android/material/navigation/NavigationView;

    invoke-static {v3}, Lcom/google/android/material/navigation/NavigationView;->access$100(Lcom/google/android/material/navigation/NavigationView;)[I

    move-result-object v3

    aget v3, v3, v2

    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationView$3;->this$0:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v4}, Lcom/google/android/material/navigation/NavigationView;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    if-nez v3, :cond_51

    goto :goto_53

    :cond_51
    move v3, v2

    goto :goto_54

    :cond_53
    :goto_53
    move v3, v1

    .line 1067
    .local v3, "isOnLeftSide":Z
    :goto_54
    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationView$3;->this$0:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v4, v3}, Lcom/google/android/material/navigation/NavigationView;->setDrawLeftInsetForeground(Z)V

    .line 1069
    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationView$3;->this$0:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v4}, Lcom/google/android/material/navigation/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/material/internal/ContextUtils;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v4

    .line 1070
    .local v4, "activity":Landroid/app/Activity;
    if-eqz v4, :cond_d4

    .line 1071
    invoke-static {v4}, Lcom/google/android/material/internal/WindowUtils;->getCurrentWindowBounds(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v5

    .line 1073
    .local v5, "displayBounds":Landroid/graphics/Rect;
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget-object v7, p0, Lcom/google/android/material/navigation/NavigationView$3;->this$0:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v7}, Lcom/google/android/material/navigation/NavigationView;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/google/android/material/navigation/NavigationView$3;->this$0:Lcom/google/android/material/navigation/NavigationView;

    invoke-static {v7}, Lcom/google/android/material/navigation/NavigationView;->access$100(Lcom/google/android/material/navigation/NavigationView;)[I

    move-result-object v7

    aget v7, v7, v1

    if-ne v6, v7, :cond_80

    move v6, v1

    goto :goto_81

    :cond_80
    move v6, v2

    .line 1074
    .local v6, "isBehindSystemNav":Z
    :goto_81
    nop

    .line 1075
    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getNavigationBarColor()I

    move-result v7

    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    if-eqz v7, :cond_92

    move v7, v1

    goto :goto_93

    :cond_92
    move v7, v2

    .line 1076
    .local v7, "hasNonZeroAlpha":Z
    :goto_93
    iget-object v8, p0, Lcom/google/android/material/navigation/NavigationView$3;->this$0:Lcom/google/android/material/navigation/NavigationView;

    if-eqz v6, :cond_a3

    if-eqz v7, :cond_a3

    iget-object v9, p0, Lcom/google/android/material/navigation/NavigationView$3;->this$0:Lcom/google/android/material/navigation/NavigationView;

    .line 1077
    invoke-virtual {v9}, Lcom/google/android/material/navigation/NavigationView;->isBottomInsetScrimEnabled()Z

    move-result v9

    if-eqz v9, :cond_a3

    move v9, v1

    goto :goto_a4

    :cond_a3
    move v9, v2

    .line 1076
    :goto_a4
    invoke-virtual {v8, v9}, Lcom/google/android/material/navigation/NavigationView;->setDrawBottomInsetForeground(Z)V

    .line 1081
    nop

    .line 1082
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget-object v9, p0, Lcom/google/android/material/navigation/NavigationView$3;->this$0:Lcom/google/android/material/navigation/NavigationView;

    invoke-static {v9}, Lcom/google/android/material/navigation/NavigationView;->access$100(Lcom/google/android/material/navigation/NavigationView;)[I

    move-result-object v9

    aget v9, v9, v2

    if-eq v8, v9, :cond_ce

    .line 1083
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget-object v9, p0, Lcom/google/android/material/navigation/NavigationView$3;->this$0:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v9}, Lcom/google/android/material/navigation/NavigationView;->getWidth()I

    move-result v9

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/google/android/material/navigation/NavigationView$3;->this$0:Lcom/google/android/material/navigation/NavigationView;

    invoke-static {v9}, Lcom/google/android/material/navigation/NavigationView;->access$100(Lcom/google/android/material/navigation/NavigationView;)[I

    move-result-object v9

    aget v9, v9, v2

    if-ne v8, v9, :cond_cc

    goto :goto_ce

    :cond_cc
    move v1, v2

    goto :goto_cf

    :cond_ce
    :goto_ce
    nop

    .line 1085
    .local v1, "isOnRightSide":Z
    :goto_cf
    iget-object v2, p0, Lcom/google/android/material/navigation/NavigationView$3;->this$0:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v2, v1}, Lcom/google/android/material/navigation/NavigationView;->setDrawRightInsetForeground(Z)V

    .line 1087
    .end local v1    # "isOnRightSide":Z
    .end local v5    # "displayBounds":Landroid/graphics/Rect;
    .end local v6    # "isBehindSystemNav":Z
    .end local v7    # "hasNonZeroAlpha":Z
    :cond_d4
    return-void
.end method
