.class Lcom/google/android/material/shape/ShapeableDelegateV14;
.super Lcom/google/android/material/shape/ShapeableDelegate;
.source "ShapeableDelegateV14.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapeableDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method invalidateClippingMethod(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 35
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeableDelegateV14;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeableDelegateV14;->maskBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_17

    .line 39
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeableDelegateV14;->shouldUseCompatClipping()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 42
    :cond_16
    return-void

    .line 36
    :cond_17
    :goto_17
    return-void
.end method

.method shouldUseCompatClipping()Z
    .registers 2

    .line 30
    const/4 v0, 0x1

    return v0
.end method
