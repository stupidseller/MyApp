.class public Landroidx/recyclerview/widget/ItemTouchHelper;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "ItemTouchHelper.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;,
        Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;,
        Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;,
        Landroidx/recyclerview/widget/ItemTouchHelper$Callback;,
        Landroidx/recyclerview/widget/ItemTouchHelper$ViewDropHandler;
    }
.end annotation


# static fields
.field static final ACTION_MODE_DRAG_MASK:I = 0xff0000

.field private static final ACTION_MODE_IDLE_MASK:I = 0xff

.field static final ACTION_MODE_SWIPE_MASK:I = 0xff00

.field public static final ACTION_STATE_DRAG:I = 0x2

.field public static final ACTION_STATE_IDLE:I = 0x0

.field public static final ACTION_STATE_SWIPE:I = 0x1

.field private static final ACTIVE_POINTER_ID_NONE:I = -0x1

.field public static final ANIMATION_TYPE_DRAG:I = 0x8

.field public static final ANIMATION_TYPE_SWIPE_CANCEL:I = 0x4

.field public static final ANIMATION_TYPE_SWIPE_SUCCESS:I = 0x2

.field private static final DEBUG:Z = false

.field static final DIRECTION_FLAG_COUNT:I = 0x8

.field public static final DOWN:I = 0x2

.field public static final END:I = 0x20

.field public static final LEFT:I = 0x4

.field private static final PIXELS_PER_SECOND:I = 0x3e8

.field public static final RIGHT:I = 0x8

.field public static final START:I = 0x10

.field private static final TAG:Ljava/lang/String; = "ItemTouchHelper"

.field public static final UP:I = 0x1


# instance fields
.field private mActionState:I

.field mActivePointerId:I

.field mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

.field private mChildDrawingOrderCallback:Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;

.field private mDistances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDragScrollStartTimeInMs:J

.field mDx:F

.field mDy:F

.field mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

.field mInitialTouchX:F

.field mInitialTouchY:F

.field private mItemTouchHelperGestureListener:Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;

.field private mMaxSwipeVelocity:F

.field private final mOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

.field mOverdrawChild:Landroid/view/View;

.field mOverdrawChildPosition:I

.field final mPendingCleanup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mRecoverAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;",
            ">;"
        }
    .end annotation
.end field

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field final mScrollRunnable:Ljava/lang/Runnable;

.field mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field mSelectedFlags:I

.field private mSelectedStartX:F

.field private mSelectedStartY:F

.field private mSlop:I

.field private mSwapTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mSwipeEscapeVelocity:F

.field private final mTmpPosition:[F

.field private mTmpRect:Landroid/graphics/Rect;

.field mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V
    .registers 5
    .param p1, "callback"    # Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    .line 448
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    .line 173
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpPosition:[F

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 218
    const/4 v1, -0x1

    iput v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    .line 230
    const/4 v2, 0x0

    iput v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    .line 247
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    .line 258
    new-instance v2, Landroidx/recyclerview/widget/ItemTouchHelper$1;

    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/ItemTouchHelper$1;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper;)V

    iput-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;

    .line 286
    iput-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mChildDrawingOrderCallback:Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;

    .line 293
    iput-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 301
    iput v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChildPosition:I

    .line 315
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper$2;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/ItemTouchHelper$2;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 449
    iput-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    .line 450
    return-void
.end method

.method private addChildDrawingOrderCallback()V
    .registers 1

    .line 1294
    nop

    .line 1295
    return-void
.end method

.method private checkHorizontalSwipe(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)I
    .registers 10
    .param p1, "viewHolder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "flags"    # I

    .line 1241
    and-int/lit8 v0, p2, 0xc

    if-eqz v0, :cond_7c

    .line 1242
    iget v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/16 v2, 0x8

    const/4 v3, 0x4

    if-lez v0, :cond_10

    move v0, v2

    goto :goto_11

    :cond_10
    move v0, v3

    .line 1243
    .local v0, "dirFlag":I
    :goto_11
    iget-object v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_5f

    iget v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    const/4 v5, -0x1

    if-le v4, v5, :cond_5f

    .line 1244
    iget-object v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget-object v5, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    iget v6, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mMaxSwipeVelocity:F

    .line 1245
    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getSwipeVelocityThreshold(F)F

    move-result v5

    .line 1244
    const/16 v6, 0x3e8

    invoke-virtual {v4, v6, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1246
    iget-object v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v5, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v4

    .line 1247
    .local v4, "xVelocity":F
    iget-object v5, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v6, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {v5, v6}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v5

    .line 1248
    .local v5, "yVelocity":F
    cmpl-float v1, v4, v1

    if-lez v1, :cond_3e

    goto :goto_3f

    :cond_3e
    move v2, v3

    :goto_3f
    move v1, v2

    .line 1249
    .local v1, "velDirFlag":I
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1250
    .local v2, "absXVelocity":F
    and-int v3, v1, p2

    if-eqz v3, :cond_5f

    if-ne v0, v1, :cond_5f

    iget-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    iget v6, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSwipeEscapeVelocity:F

    .line 1251
    invoke-virtual {v3, v6}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getSwipeEscapeVelocity(F)F

    move-result v3

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_5f

    .line 1252
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_5f

    .line 1253
    return v1

    .line 1257
    .end local v1    # "velDirFlag":I
    .end local v2    # "absXVelocity":F
    .end local v4    # "xVelocity":F
    .end local v5    # "yVelocity":F
    :cond_5f
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    .line 1258
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getSwipeThreshold(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)F

    move-result v2

    mul-float/2addr v1, v2

    .line 1260
    .local v1, "threshold":F
    and-int v2, p2, v0

    if-eqz v2, :cond_7c

    iget v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_7c

    .line 1261
    return v0

    .line 1264
    .end local v0    # "dirFlag":I
    .end local v1    # "threshold":F
    :cond_7c
    const/4 v0, 0x0

    return v0
.end method

.method private checkVerticalSwipe(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)I
    .registers 10
    .param p1, "viewHolder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "flags"    # I

    .line 1268
    and-int/lit8 v0, p2, 0x3

    if-eqz v0, :cond_7b

    .line 1269
    iget v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-lez v0, :cond_f

    move v0, v2

    goto :goto_10

    :cond_f
    move v0, v3

    .line 1270
    .local v0, "dirFlag":I
    :goto_10
    iget-object v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_5e

    iget v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    const/4 v5, -0x1

    if-le v4, v5, :cond_5e

    .line 1271
    iget-object v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget-object v5, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    iget v6, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mMaxSwipeVelocity:F

    .line 1272
    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getSwipeVelocityThreshold(F)F

    move-result v5

    .line 1271
    const/16 v6, 0x3e8

    invoke-virtual {v4, v6, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1273
    iget-object v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v5, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v4

    .line 1274
    .local v4, "xVelocity":F
    iget-object v5, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v6, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {v5, v6}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v5

    .line 1275
    .local v5, "yVelocity":F
    cmpl-float v1, v5, v1

    if-lez v1, :cond_3d

    goto :goto_3e

    :cond_3d
    move v2, v3

    :goto_3e
    move v1, v2

    .line 1276
    .local v1, "velDirFlag":I
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1277
    .local v2, "absYVelocity":F
    and-int v3, v1, p2

    if-eqz v3, :cond_5e

    if-ne v1, v0, :cond_5e

    iget-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    iget v6, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSwipeEscapeVelocity:F

    .line 1278
    invoke-virtual {v3, v6}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getSwipeEscapeVelocity(F)F

    move-result v3

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_5e

    .line 1279
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_5e

    .line 1280
    return v1

    .line 1284
    .end local v1    # "velDirFlag":I
    .end local v2    # "absYVelocity":F
    .end local v4    # "xVelocity":F
    .end local v5    # "yVelocity":F
    :cond_5e
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    .line 1285
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getSwipeThreshold(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)F

    move-result v2

    mul-float/2addr v1, v2

    .line 1286
    .local v1, "threshold":F
    and-int v2, p2, v0

    if-eqz v2, :cond_7b

    iget v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_7b

    .line 1287
    return v0

    .line 1290
    .end local v0    # "dirFlag":I
    .end local v1    # "threshold":F
    :cond_7b
    const/4 v0, 0x0

    return v0
.end method

.method private destroyCallbacks()V
    .registers 7

    .line 496
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 497
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 498
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 500
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 501
    .local v0, "recoverAnimSize":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_19
    if-ltz v1, :cond_33

    .line 502
    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;

    .line 503
    .local v2, "recoverAnimation":Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;
    invoke-virtual {v2}, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->cancel()V

    .line 504
    iget-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    iget-object v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v2, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v3, v4, v5}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 501
    .end local v2    # "recoverAnimation":Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;
    add-int/lit8 v1, v1, -0x1

    goto :goto_19

    .line 506
    .end local v1    # "i":I
    :cond_33
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 507
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 508
    const/4 v1, -0x1

    iput v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChildPosition:I

    .line 509
    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper;->releaseVelocityTracker()V

    .line 510
    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper;->stopGestureDetection()V

    .line 511
    return-void
.end method

.method private findSwapTargets(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Ljava/util/List;
    .registers 22
    .param p1, "viewHolder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ")",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .line 804
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    if-nez v2, :cond_17

    .line 805
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    .line 806
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDistances:Ljava/util/List;

    goto :goto_21

    .line 808
    :cond_17
    iget-object v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 809
    iget-object v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDistances:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 811
    :goto_21
    iget-object v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getBoundingBoxMargin()I

    move-result v2

    .line 812
    .local v2, "margin":I
    iget v3, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartX:F

    iget v4, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-int/2addr v3, v2

    .line 813
    .local v3, "left":I
    iget v4, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartY:F

    iget v5, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    sub-int/2addr v4, v2

    .line 814
    .local v4, "top":I
    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v3

    mul-int/lit8 v6, v2, 0x2

    add-int/2addr v5, v6

    .line 815
    .local v5, "right":I
    iget-object v6, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v4

    mul-int/lit8 v7, v2, 0x2

    add-int/2addr v6, v7

    .line 816
    .local v6, "bottom":I
    add-int v7, v3, v5

    div-int/lit8 v7, v7, 0x2

    .line 817
    .local v7, "centerX":I
    add-int v8, v4, v6

    div-int/lit8 v8, v8, 0x2

    .line 818
    .local v8, "centerY":I
    iget-object v9, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v9

    .line 819
    .local v9, "lm":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v10

    .line 820
    .local v10, "childCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_62
    if-ge v11, v10, :cond_120

    .line 821
    invoke-virtual {v9, v11}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 822
    .local v12, "other":Landroid/view/View;
    iget-object v13, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne v12, v13, :cond_72

    .line 823
    move/from16 v19, v2

    move/from16 v16, v3

    goto/16 :goto_116

    .line 825
    :cond_72
    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v13

    if-lt v13, v4, :cond_112

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v13

    if-gt v13, v6, :cond_112

    .line 826
    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v13

    if-lt v13, v3, :cond_10d

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v13

    if-le v13, v5, :cond_90

    .line 827
    move/from16 v19, v2

    move/from16 v16, v3

    goto/16 :goto_116

    .line 829
    :cond_90
    iget-object v13, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v13, v12}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v13

    .line 830
    .local v13, "otherVh":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    iget-object v14, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    iget-object v15, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v14, v15, v1, v13}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->canDropOver(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v1

    if-eqz v1, :cond_108

    .line 832
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v14

    add-int/2addr v1, v14

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v7, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 833
    .local v1, "dx":I
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v14

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v15

    add-int/2addr v14, v15

    div-int/lit8 v14, v14, 0x2

    sub-int v14, v8, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    .line 834
    .local v14, "dy":I
    mul-int v15, v1, v1

    mul-int v16, v14, v14

    add-int v15, v15, v16

    .line 836
    .local v15, "dist":I
    const/16 v16, 0x0

    .line 837
    .local v16, "pos":I
    move/from16 v17, v1

    .end local v1    # "dx":I
    .local v17, "dx":I
    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 838
    .local v1, "cnt":I
    const/16 v18, 0x0

    move/from16 v19, v2

    move/from16 v2, v16

    move/from16 v16, v3

    move/from16 v3, v18

    .local v2, "pos":I
    .local v3, "j":I
    .local v16, "left":I
    .local v19, "margin":I
    :goto_de
    if-ge v3, v1, :cond_f7

    .line 839
    move/from16 v18, v1

    .end local v1    # "cnt":I
    .local v18, "cnt":I
    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDistances:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v15, v1, :cond_f9

    .line 840
    add-int/lit8 v2, v2, 0x1

    .line 838
    add-int/lit8 v3, v3, 0x1

    move/from16 v1, v18

    goto :goto_de

    .end local v18    # "cnt":I
    .restart local v1    # "cnt":I
    :cond_f7
    move/from16 v18, v1

    .line 845
    .end local v1    # "cnt":I
    .end local v3    # "j":I
    .restart local v18    # "cnt":I
    :cond_f9
    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    invoke-interface {v1, v2, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 846
    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDistances:Ljava/util/List;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_116

    .line 830
    .end local v14    # "dy":I
    .end local v15    # "dist":I
    .end local v16    # "left":I
    .end local v17    # "dx":I
    .end local v18    # "cnt":I
    .end local v19    # "margin":I
    .local v2, "margin":I
    .local v3, "left":I
    :cond_108
    move/from16 v19, v2

    move/from16 v16, v3

    .end local v2    # "margin":I
    .end local v3    # "left":I
    .restart local v16    # "left":I
    .restart local v19    # "margin":I
    goto :goto_116

    .line 826
    .end local v13    # "otherVh":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .end local v16    # "left":I
    .end local v19    # "margin":I
    .restart local v2    # "margin":I
    .restart local v3    # "left":I
    :cond_10d
    move/from16 v19, v2

    move/from16 v16, v3

    .end local v2    # "margin":I
    .end local v3    # "left":I
    .restart local v16    # "left":I
    .restart local v19    # "margin":I
    goto :goto_116

    .line 825
    .end local v16    # "left":I
    .end local v19    # "margin":I
    .restart local v2    # "margin":I
    .restart local v3    # "left":I
    :cond_112
    move/from16 v19, v2

    move/from16 v16, v3

    .line 820
    .end local v2    # "margin":I
    .end local v3    # "left":I
    .end local v12    # "other":Landroid/view/View;
    .restart local v16    # "left":I
    .restart local v19    # "margin":I
    :goto_116
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p1

    move/from16 v3, v16

    move/from16 v2, v19

    goto/16 :goto_62

    .line 849
    .end local v11    # "i":I
    .end local v16    # "left":I
    .end local v19    # "margin":I
    .restart local v2    # "margin":I
    .restart local v3    # "left":I
    :cond_120
    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    return-object v1
.end method

.method private findSwipedView(Landroid/view/MotionEvent;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 10
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 954
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 955
    .local v0, "lm":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    iget v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_d

    .line 956
    return-object v3

    .line 958
    :cond_d
    iget v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 959
    .local v1, "pointerIndex":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iget v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mInitialTouchX:F

    sub-float/2addr v2, v4

    .line 960
    .local v2, "dx":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iget v5, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mInitialTouchY:F

    sub-float/2addr v4, v5

    .line 961
    .local v4, "dy":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 962
    .local v5, "absDx":F
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 964
    .local v6, "absDy":F
    iget v7, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSlop:I

    int-to-float v7, v7

    cmpg-float v7, v5, v7

    if-gez v7, :cond_38

    iget v7, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSlop:I

    int-to-float v7, v7

    cmpg-float v7, v6, v7

    if-gez v7, :cond_38

    .line 965
    return-object v3

    .line 967
    :cond_38
    cmpl-float v7, v5, v6

    if-lez v7, :cond_43

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v7

    if-eqz v7, :cond_43

    .line 968
    return-object v3

    .line 969
    :cond_43
    cmpl-float v7, v6, v5

    if-lez v7, :cond_4e

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v7

    if-eqz v7, :cond_4e

    .line 970
    return-object v3

    .line 972
    :cond_4e
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v7

    .line 973
    .local v7, "child":Landroid/view/View;
    if-nez v7, :cond_55

    .line 974
    return-object v3

    .line 976
    :cond_55
    iget-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v7}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    return-object v3
.end method

.method private getSelectedDxDy([F)V
    .registers 5
    .param p1, "outPosition"    # [F

    .line 530
    iget v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedFlags:I

    and-int/lit8 v0, v0, 0xc

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 531
    iget v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartX:F

    iget v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    add-float/2addr v0, v2

    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    aput v0, p1, v1

    goto :goto_23

    .line 533
    :cond_19
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    aput v0, p1, v1

    .line 535
    :goto_23
    iget v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedFlags:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-eqz v0, :cond_3c

    .line 536
    iget v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartY:F

    iget v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    add-float/2addr v0, v2

    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    aput v0, p1, v1

    goto :goto_46

    .line 538
    :cond_3c
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    aput v0, p1, v1

    .line 540
    :goto_46
    return-void
.end method

.method private static hitTest(Landroid/view/View;FFFF)Z
    .registers 6
    .param p0, "child"    # Landroid/view/View;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "left"    # F
    .param p4, "top"    # F

    .line 453
    cmpl-float v0, p1, p3

    if-ltz v0, :cond_1e

    .line 454
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1e

    cmpl-float v0, p2, p4

    if-ltz v0, :cond_1e

    .line 456
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p4

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    .line 453
    :goto_1f
    return v0
.end method

.method private releaseVelocityTracker()V
    .registers 2

    .line 947
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_c

    .line 948
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 949
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 951
    :cond_c
    return-void
.end method

.method private setupCallbacks()V
    .registers 4

    .line 487
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 488
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSlop:I

    .line 489
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 490
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 491
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 492
    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper;->startGestureDetection()V

    .line 493
    return-void
.end method

.method private startGestureDetection()V
    .registers 4

    .line 514
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mItemTouchHelperGestureListener:Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;

    .line 515
    new-instance v0, Landroidx/core/view/GestureDetectorCompat;

    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mItemTouchHelperGestureListener:Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;

    invoke-direct {v0, v1, v2}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    .line 517
    return-void
.end method

.method private stopGestureDetection()V
    .registers 3

    .line 520
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mItemTouchHelperGestureListener:Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 521
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mItemTouchHelperGestureListener:Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->doNotReactToLongPress()V

    .line 522
    iput-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mItemTouchHelperGestureListener:Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;

    .line 524
    :cond_c
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    if-eqz v0, :cond_12

    .line 525
    iput-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    .line 527
    :cond_12
    return-void
.end method

.method private swipeIfNecessary(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .registers 9
    .param p1, "viewHolder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 1195
    iget v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_7

    .line 1196
    return v2

    .line 1198
    :cond_7
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v0

    .line 1199
    .local v0, "originalMovementFlags":I
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    iget-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 1201
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    .line 1199
    invoke-virtual {v1, v0, v3}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->convertToAbsoluteDirection(II)I

    move-result v1

    .line 1202
    .local v1, "absoluteMovementFlags":I
    const v3, 0xff00

    and-int v4, v1, v3

    shr-int/lit8 v4, v4, 0x8

    .line 1204
    .local v4, "flags":I
    if-nez v4, :cond_25

    .line 1205
    return v2

    .line 1207
    :cond_25
    and-int/2addr v3, v0

    shr-int/lit8 v3, v3, 0x8

    .line 1210
    .local v3, "originalFlags":I
    iget v5, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_57

    .line 1211
    invoke-direct {p0, p1, v4}, Landroidx/recyclerview/widget/ItemTouchHelper;->checkHorizontalSwipe(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)I

    move-result v5

    move v6, v5

    .local v6, "swipeDir":I
    if-lez v5, :cond_4f

    .line 1213
    and-int v2, v3, v6

    if-nez v2, :cond_4e

    .line 1215
    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 1216
    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    .line 1215
    invoke-static {v6, v2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->convertToRelativeDirection(II)I

    move-result v2

    return v2

    .line 1218
    :cond_4e
    return v6

    .line 1220
    :cond_4f
    invoke-direct {p0, p1, v4}, Landroidx/recyclerview/widget/ItemTouchHelper;->checkVerticalSwipe(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)I

    move-result v5

    move v6, v5

    if-lez v5, :cond_76

    .line 1221
    return v6

    .line 1224
    .end local v6    # "swipeDir":I
    :cond_57
    invoke-direct {p0, p1, v4}, Landroidx/recyclerview/widget/ItemTouchHelper;->checkVerticalSwipe(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)I

    move-result v5

    move v6, v5

    .restart local v6    # "swipeDir":I
    if-lez v5, :cond_5f

    .line 1225
    return v6

    .line 1227
    :cond_5f
    invoke-direct {p0, p1, v4}, Landroidx/recyclerview/widget/ItemTouchHelper;->checkHorizontalSwipe(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)I

    move-result v5

    move v6, v5

    if-lez v5, :cond_76

    .line 1229
    and-int v2, v3, v6

    if-nez v2, :cond_75

    .line 1231
    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 1232
    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    .line 1231
    invoke-static {v6, v2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->convertToRelativeDirection(II)I

    move-result v2

    return v2

    .line 1234
    :cond_75
    return v6

    .line 1237
    :cond_76
    return v2
.end method


# virtual methods
.method public attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 4
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;

    .line 469
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-ne v0, p1, :cond_5

    .line 470
    return-void

    .line 472
    :cond_5
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_c

    .line 473
    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper;->destroyCallbacks()V

    .line 475
    :cond_c
    iput-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 476
    if-eqz p1, :cond_27

    .line 477
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 478
    .local v0, "resources":Landroid/content/res/Resources;
    sget v1, Landroidx/recyclerview/R$dimen;->item_touch_helper_swipe_escape_velocity:I

    .line 479
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSwipeEscapeVelocity:F

    .line 480
    sget v1, Landroidx/recyclerview/R$dimen;->item_touch_helper_swipe_escape_max_velocity:I

    .line 481
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mMaxSwipeVelocity:F

    .line 482
    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper;->setupCallbacks()V

    .line 484
    .end local v0    # "resources":Landroid/content/res/Resources;
    :cond_27
    return-void
.end method

.method checkSelectForSwipe(ILandroid/view/MotionEvent;I)V
    .registers 16
    .param p1, "action"    # I
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;
    .param p3, "pointerIndex"    # I

    .line 984
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-nez v0, :cond_96

    const/4 v0, 0x2

    if-ne p1, v0, :cond_96

    iget v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    if-eq v1, v0, :cond_96

    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    .line 985
    invoke-virtual {v0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->isItemViewSwipeEnabled()Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_96

    .line 988
    :cond_15
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 989
    return-void

    .line 991
    :cond_1f
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/ItemTouchHelper;->findSwipedView(Landroid/view/MotionEvent;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 992
    .local v0, "vh":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    if-nez v0, :cond_26

    .line 993
    return-void

    .line 995
    :cond_26
    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    iget-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v3, v0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getAbsoluteMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v2

    .line 997
    .local v2, "movementFlags":I
    const v3, 0xff00

    and-int/2addr v3, v2

    shr-int/lit8 v3, v3, 0x8

    .line 1000
    .local v3, "swipeFlags":I
    if-nez v3, :cond_37

    .line 1001
    return-void

    .line 1006
    :cond_37
    invoke-virtual {p2, p3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 1007
    .local v4, "x":F
    invoke-virtual {p2, p3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 1010
    .local v5, "y":F
    iget v6, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mInitialTouchX:F

    sub-float v6, v4, v6

    .line 1011
    .local v6, "dx":F
    iget v7, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mInitialTouchY:F

    sub-float v7, v5, v7

    .line 1014
    .local v7, "dy":F
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 1015
    .local v8, "absDx":F
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 1017
    .local v9, "absDy":F
    iget v10, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSlop:I

    int-to-float v10, v10

    cmpg-float v10, v8, v10

    if-gez v10, :cond_5e

    iget v10, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSlop:I

    int-to-float v10, v10

    cmpg-float v10, v9, v10

    if-gez v10, :cond_5e

    .line 1018
    return-void

    .line 1020
    :cond_5e
    cmpl-float v10, v8, v9

    const/4 v11, 0x0

    if-lez v10, :cond_75

    .line 1021
    cmpg-float v10, v6, v11

    if-gez v10, :cond_6c

    and-int/lit8 v10, v3, 0x4

    if-nez v10, :cond_6c

    .line 1022
    return-void

    .line 1024
    :cond_6c
    cmpl-float v10, v6, v11

    if-lez v10, :cond_87

    and-int/lit8 v10, v3, 0x8

    if-nez v10, :cond_87

    .line 1025
    return-void

    .line 1028
    :cond_75
    cmpg-float v10, v7, v11

    if-gez v10, :cond_7e

    and-int/lit8 v10, v3, 0x1

    if-nez v10, :cond_7e

    .line 1029
    return-void

    .line 1031
    :cond_7e
    cmpl-float v10, v7, v11

    if-lez v10, :cond_87

    and-int/lit8 v10, v3, 0x2

    if-nez v10, :cond_87

    .line 1032
    return-void

    .line 1035
    :cond_87
    iput v11, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    iput v11, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 1036
    const/4 v10, 0x0

    invoke-virtual {p2, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    iput v10, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    .line 1037
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->select(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 1038
    return-void

    .line 986
    .end local v0    # "vh":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .end local v2    # "movementFlags":I
    .end local v3    # "swipeFlags":I
    .end local v4    # "x":F
    .end local v5    # "y":F
    .end local v6    # "dx":F
    .end local v7    # "dy":F
    .end local v8    # "absDx":F
    .end local v9    # "absDy":F
    :cond_96
    :goto_96
    return-void
.end method

.method endRecoverAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    .registers 7
    .param p1, "viewHolder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "override"    # Z

    .line 918
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 919
    .local v0, "recoverAnimSize":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_2b

    .line 920
    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;

    .line 921
    .local v2, "anim":Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;
    iget-object v3, v2, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-ne v3, p1, :cond_28

    .line 922
    iget-boolean v3, v2, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    or-int/2addr v3, p2

    iput-boolean v3, v2, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    .line 923
    iget-boolean v3, v2, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    if-nez v3, :cond_22

    .line 924
    invoke-virtual {v2}, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->cancel()V

    .line 926
    :cond_22
    iget-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 927
    return-void

    .line 919
    .end local v2    # "anim":Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;
    :cond_28
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 930
    .end local v1    # "i":I
    :cond_2b
    return-void
.end method

.method findAnimation(Landroid/view/MotionEvent;)Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1159
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 1160
    return-object v1

    .line 1162
    :cond_a
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    .line 1163
    .local v0, "target":Landroid/view/View;
    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_16
    if-ltz v2, :cond_2a

    .line 1164
    iget-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;

    .line 1165
    .local v3, "anim":Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;
    iget-object v4, v3, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne v4, v0, :cond_27

    .line 1166
    return-object v3

    .line 1163
    .end local v3    # "anim":Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;
    :cond_27
    add-int/lit8 v2, v2, -0x1

    goto :goto_16

    .line 1169
    .end local v2    # "i":I
    :cond_2a
    return-object v1
.end method

.method findChildView(Landroid/view/MotionEvent;)Landroid/view/View;
    .registers 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1043
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1044
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1045
    .local v1, "y":F
    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_21

    .line 1046
    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1047
    .local v2, "selectedView":Landroid/view/View;
    iget v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartX:F

    iget v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    add-float/2addr v3, v4

    iget v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartY:F

    iget v5, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    add-float/2addr v4, v5

    invoke-static {v2, v0, v1, v3, v4}, Landroidx/recyclerview/widget/ItemTouchHelper;->hitTest(Landroid/view/View;FFFF)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1048
    return-object v2

    .line 1051
    .end local v2    # "selectedView":Landroid/view/View;
    :cond_21
    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_29
    if-ltz v2, :cond_45

    .line 1052
    iget-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;

    .line 1053
    .local v3, "anim":Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;
    iget-object v4, v3, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1054
    .local v4, "view":Landroid/view/View;
    iget v5, v3, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mX:F

    iget v6, v3, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mY:F

    invoke-static {v4, v0, v1, v5, v6}, Landroidx/recyclerview/widget/ItemTouchHelper;->hitTest(Landroid/view/View;FFFF)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 1055
    return-object v4

    .line 1051
    .end local v3    # "anim":Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;
    .end local v4    # "view":Landroid/view/View;
    :cond_42
    add-int/lit8 v2, v2, -0x1

    goto :goto_29

    .line 1058
    .end local v2    # "i":I
    :cond_45
    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 5
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p4, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 935
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 936
    return-void
.end method

.method hasRunningRecoverAnim()Z
    .registers 4

    .line 727
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 728
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1a

    .line 729
    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;

    iget-boolean v2, v2, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    if-nez v2, :cond_17

    .line 730
    const/4 v2, 0x1

    return v2

    .line 728
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 733
    .end local v1    # "i":I
    :cond_1a
    const/4 v1, 0x0

    return v1
.end method

.method moveIfNecessary(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 19
    .param p1, "viewHolder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 857
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->isLayoutRequested()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 858
    return-void

    .line 860
    :cond_d
    iget v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_13

    .line 861
    return-void

    .line 864
    :cond_13
    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    invoke-virtual {v1, v9}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getMoveThreshold(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)F

    move-result v10

    .line 865
    .local v10, "threshold":F
    iget v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartX:F

    iget v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    add-float/2addr v1, v2

    float-to-int v11, v1

    .line 866
    .local v11, "x":I
    iget v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartY:F

    iget v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    add-float/2addr v1, v2

    float-to-int v12, v1

    .line 867
    .local v12, "y":I
    iget-object v1, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v1, v12, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v10

    cmpg-float v1, v1, v2

    if-gez v1, :cond_58

    iget-object v1, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 868
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v1, v11, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 869
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v10

    cmpg-float v1, v1, v2

    if-gez v1, :cond_58

    .line 870
    return-void

    .line 872
    :cond_58
    invoke-direct/range {p0 .. p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->findSwapTargets(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Ljava/util/List;

    move-result-object v13

    .line 873
    .local v13, "swapTargets":Ljava/util/List;, "Ljava/util/List<Landroidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_63

    .line 874
    return-void

    .line 877
    :cond_63
    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    invoke-virtual {v1, v9, v13, v11, v12}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->chooseDropTarget(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;II)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v14

    .line 878
    .local v14, "target":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    if-nez v14, :cond_76

    .line 879
    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 880
    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDistances:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 881
    return-void

    .line 883
    :cond_76
    invoke-virtual {v14}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result v15

    .line 884
    .local v15, "toPosition":I
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result v16

    .line 885
    .local v16, "fromPosition":I
    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    iget-object v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2, v9, v14}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 887
    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    iget-object v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v3, p1

    move/from16 v4, v16

    move-object v5, v14

    move v6, v15

    move v7, v11

    move v8, v12

    invoke-virtual/range {v1 .. v8}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onMoved(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;III)V

    .line 890
    :cond_97
    return-void
.end method

.method obtainVelocityTracker()V
    .registers 2

    .line 940
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_9

    .line 941
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 943
    :cond_9
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 944
    return-void
.end method

.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 894
    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 898
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    .line 899
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 900
    .local v0, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    if-nez v0, :cond_c

    .line 901
    return-void

    .line 903
    :cond_c
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-ne v0, v1, :cond_1a

    .line 904
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;->select(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    goto :goto_2e

    .line 906
    :cond_1a
    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;->endRecoverAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 907
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 908
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2, v0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 911
    :cond_2e
    :goto_2e
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 14
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p3, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 557
    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChildPosition:I

    .line 558
    const/4 v0, 0x0

    .local v0, "dx":F
    const/4 v1, 0x0

    .line 559
    .local v1, "dy":F
    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_18

    .line 560
    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpPosition:[F

    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;->getSelectedDxDy([F)V

    .line 561
    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpPosition:[F

    const/4 v3, 0x0

    aget v0, v2, v3

    .line 562
    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpPosition:[F

    const/4 v3, 0x1

    aget v1, v2, v3

    .line 564
    :cond_18
    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    iget-object v5, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v6, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    iget v7, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    move-object v3, p1

    move-object v4, p2

    move v8, v0

    move v9, v1

    invoke-virtual/range {v2 .. v9}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V

    .line 566
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 14
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p3, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 544
    const/4 v0, 0x0

    .local v0, "dx":F
    const/4 v1, 0x0

    .line 545
    .local v1, "dy":F
    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_15

    .line 546
    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpPosition:[F

    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;->getSelectedDxDy([F)V

    .line 547
    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpPosition:[F

    const/4 v3, 0x0

    aget v0, v2, v3

    .line 548
    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpPosition:[F

    const/4 v3, 0x1

    aget v1, v2, v3

    .line 550
    :cond_15
    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    iget-object v5, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v6, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    iget v7, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    move-object v3, p1

    move-object v4, p2

    move v8, v0

    move v9, v1

    invoke-virtual/range {v2 .. v9}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V

    .line 552
    return-void
.end method

.method postDispatchSwipe(Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;I)V
    .registers 5
    .param p1, "anim"    # Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;
    .param p2, "swipeDir"    # I

    .line 703
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/ItemTouchHelper$4;

    invoke-direct {v1, p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$4;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper;Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 723
    return-void
.end method

.method removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 1321
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    if-ne p1, v0, :cond_10

    .line 1322
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 1324
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mChildDrawingOrderCallback:Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;

    if-eqz v1, :cond_10

    .line 1325
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setChildDrawingOrderCallback(Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;)V

    .line 1328
    :cond_10
    return-void
.end method

.method scrollIfNecessary()Z
    .registers 24

    .line 741
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x0

    const-wide/high16 v3, -0x8000000000000000L

    if-nez v1, :cond_c

    .line 742
    iput-wide v3, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 743
    return v2

    .line 745
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 747
    .local v5, "now":J
    iget-wide v7, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    cmp-long v1, v7, v3

    if-nez v1, :cond_19

    const-wide/16 v7, 0x0

    goto :goto_1d

    :cond_19
    iget-wide v7, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    sub-long v7, v5, v7

    :goto_1d
    move-wide v14, v7

    .line 748
    .local v14, "scrollDuration":J
    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    .line 749
    .local v1, "lm":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    iget-object v7, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    if-nez v7, :cond_2f

    .line 750
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 752
    :cond_2f
    const/4 v7, 0x0

    .line 753
    .local v7, "scrollX":I
    const/4 v8, 0x0

    .line 754
    .local v8, "scrollY":I
    iget-object v9, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v10, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v9, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 755
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_83

    .line 756
    iget v9, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartX:F

    iget v11, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    add-float/2addr v9, v11

    float-to-int v9, v9

    .line 757
    .local v9, "curX":I
    iget-object v11, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    sub-int v11, v9, v11

    iget-object v12, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v12

    sub-int/2addr v11, v12

    .line 758
    .local v11, "leftDiff":I
    iget v12, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    cmpg-float v12, v12, v10

    if-gez v12, :cond_5e

    if-gez v11, :cond_5e

    .line 759
    move v7, v11

    goto :goto_83

    .line 760
    :cond_5e
    iget v12, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    cmpl-float v12, v12, v10

    if-lez v12, :cond_83

    .line 761
    iget-object v12, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 762
    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int/2addr v12, v9

    iget-object v13, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v13

    iget-object v13, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 763
    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v13

    iget-object v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v13, v2

    sub-int/2addr v12, v13

    .line 764
    .local v12, "rightDiff":I
    if-lez v12, :cond_83

    .line 765
    move v7, v12

    .line 769
    .end local v9    # "curX":I
    .end local v11    # "leftDiff":I
    .end local v12    # "rightDiff":I
    :cond_83
    :goto_83
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v2

    if-eqz v2, :cond_cb

    .line 770
    iget v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartY:F

    iget v9, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    add-float/2addr v2, v9

    float-to-int v2, v2

    .line 771
    .local v2, "curY":I
    iget-object v9, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int v9, v2, v9

    iget-object v11, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v11

    sub-int/2addr v9, v11

    .line 772
    .local v9, "topDiff":I
    iget v11, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    cmpg-float v11, v11, v10

    if-gez v11, :cond_a6

    if-gez v9, :cond_a6

    .line 773
    move v8, v9

    goto :goto_cb

    .line 774
    :cond_a6
    iget v11, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    cmpl-float v10, v11, v10

    if-lez v10, :cond_cb

    .line 775
    iget-object v10, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v10, v2

    iget-object v11, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v11

    iget-object v11, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 776
    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v11

    iget-object v12, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v12

    sub-int/2addr v11, v12

    sub-int/2addr v10, v11

    .line 777
    .local v10, "bottomDiff":I
    if-lez v10, :cond_cb

    .line 778
    move v8, v10

    .line 782
    .end local v2    # "curY":I
    .end local v9    # "topDiff":I
    .end local v10    # "bottomDiff":I
    :cond_cb
    :goto_cb
    if-eqz v7, :cond_e4

    .line 783
    iget-object v9, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    iget-object v10, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 784
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v11

    iget-object v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 785
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v13

    .line 783
    move v12, v7

    invoke-virtual/range {v9 .. v15}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->interpolateOutOfBoundsScroll(Landroidx/recyclerview/widget/RecyclerView;IIIJ)I

    move-result v7

    .line 787
    :cond_e4
    if-eqz v8, :cond_104

    .line 788
    iget-object v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    iget-object v9, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v10, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 789
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v18

    iget-object v10, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 790
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v20

    .line 788
    move-object/from16 v16, v2

    move-object/from16 v17, v9

    move/from16 v19, v8

    move-wide/from16 v21, v14

    invoke-virtual/range {v16 .. v22}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->interpolateOutOfBoundsScroll(Landroidx/recyclerview/widget/RecyclerView;IIIJ)I

    move-result v8

    .line 792
    :cond_104
    if-nez v7, :cond_10d

    if-eqz v8, :cond_109

    goto :goto_10d

    .line 799
    :cond_109
    iput-wide v3, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 800
    const/4 v2, 0x0

    return v2

    .line 793
    :cond_10d
    :goto_10d
    iget-wide v9, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    cmp-long v2, v9, v3

    if-nez v2, :cond_115

    .line 794
    iput-wide v5, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 796
    :cond_115
    iget-object v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v7, v8}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 797
    const/4 v2, 0x1

    return v2
.end method

.method select(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 29
    .param p1, "selected"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "actionState"    # I

    .line 577
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move/from16 v13, p2

    iget-object v0, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-ne v12, v0, :cond_f

    iget v0, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    if-ne v13, v0, :cond_f

    .line 578
    return-void

    .line 580
    :cond_f
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 581
    iget v14, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    .line 583
    .local v14, "prevActionState":I
    const/4 v15, 0x1

    invoke-virtual {v11, v12, v15}, Landroidx/recyclerview/widget/ItemTouchHelper;->endRecoverAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 584
    iput v13, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    .line 585
    const/4 v10, 0x2

    if-ne v13, v10, :cond_30

    .line 586
    if-eqz v12, :cond_28

    .line 593
    iget-object v0, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iput-object v0, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 594
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/ItemTouchHelper;->addChildDrawingOrderCallback()V

    goto :goto_30

    .line 587
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must pass a ViewHolder when dragging"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 596
    :cond_30
    :goto_30
    mul-int/lit8 v0, v13, 0x8

    add-int/lit8 v0, v0, 0x8

    shl-int v0, v15, v0

    add-int/lit8 v16, v0, -0x1

    .line 598
    .local v16, "actionStateMask":I
    const/16 v17, 0x0

    .line 600
    .local v17, "preventLayout":Z
    iget-object v0, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v9, 0x0

    if-eqz v0, :cond_f4

    .line 601
    iget-object v8, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 602
    .local v8, "prevSelected":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    iget-object v0, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_dd

    .line 603
    if-ne v14, v10, :cond_4d

    move v0, v9

    goto :goto_51

    .line 604
    :cond_4d
    invoke-direct {v11, v8}, Landroidx/recyclerview/widget/ItemTouchHelper;->swipeIfNecessary(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v0

    :goto_51
    move/from16 v18, v0

    .line 605
    .local v18, "swipeDir":I
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/ItemTouchHelper;->releaseVelocityTracker()V

    .line 609
    sparse-switch v18, :sswitch_data_158

    .line 623
    const/4 v1, 0x0

    .line 624
    .local v1, "targetTranslateX":F
    const/4 v0, 0x0

    move/from16 v19, v0

    move/from16 v20, v1

    .local v0, "targetTranslateY":F
    goto :goto_87

    .line 614
    .end local v0    # "targetTranslateY":F
    .end local v1    # "targetTranslateX":F
    :sswitch_60
    const/4 v0, 0x0

    .line 615
    .restart local v0    # "targetTranslateY":F
    iget v1, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    iget-object v2, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    .line 616
    .restart local v1    # "targetTranslateX":F
    move/from16 v19, v0

    move/from16 v20, v1

    goto :goto_87

    .line 619
    .end local v0    # "targetTranslateY":F
    .end local v1    # "targetTranslateX":F
    :sswitch_74
    const/4 v1, 0x0

    .line 620
    .restart local v1    # "targetTranslateX":F
    iget v0, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget-object v2, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    .line 621
    .restart local v0    # "targetTranslateY":F
    move/from16 v19, v0

    move/from16 v20, v1

    .line 626
    .end local v0    # "targetTranslateY":F
    .end local v1    # "targetTranslateX":F
    .local v19, "targetTranslateY":F
    .local v20, "targetTranslateX":F
    :goto_87
    if-ne v14, v10, :cond_8d

    .line 627
    const/16 v0, 0x8

    move v7, v0

    .local v0, "animationType":I
    goto :goto_94

    .line 628
    .end local v0    # "animationType":I
    :cond_8d
    if-lez v18, :cond_92

    .line 629
    const/4 v0, 0x2

    move v7, v0

    .restart local v0    # "animationType":I
    goto :goto_94

    .line 631
    .end local v0    # "animationType":I
    :cond_92
    const/4 v0, 0x4

    move v7, v0

    .line 633
    .local v7, "animationType":I
    :goto_94
    iget-object v0, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpPosition:[F

    invoke-direct {v11, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;->getSelectedDxDy([F)V

    .line 634
    iget-object v0, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpPosition:[F

    aget v21, v0, v9

    .line 635
    .local v21, "currentTranslateX":F
    iget-object v0, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpPosition:[F

    aget v22, v0, v15

    .line 636
    .local v22, "currentTranslateY":F
    new-instance v23, Landroidx/recyclerview/widget/ItemTouchHelper$3;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object v2, v8

    move v3, v7

    move v4, v14

    move/from16 v5, v21

    move/from16 v6, v22

    move v15, v7

    .end local v7    # "animationType":I
    .local v15, "animationType":I
    move/from16 v7, v20

    move-object/from16 v24, v8

    .end local v8    # "prevSelected":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .local v24, "prevSelected":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move/from16 v8, v19

    move/from16 v25, v14

    move v14, v9

    .end local v14    # "prevActionState":I
    .local v25, "prevActionState":I
    move/from16 v9, v18

    move v14, v10

    move-object/from16 v10, v24

    invoke-direct/range {v0 .. v10}, Landroidx/recyclerview/widget/ItemTouchHelper$3;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIFFFFILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 665
    .local v0, "rv":Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;
    iget-object v1, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    iget-object v2, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    sub-float v3, v20, v21

    sub-float v4, v19, v22

    invoke-virtual {v1, v2, v15, v3, v4}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getAnimationDuration(Landroidx/recyclerview/widget/RecyclerView;IFF)J

    move-result-wide v1

    .line 667
    .local v1, "duration":J
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->setDuration(J)V

    .line 668
    iget-object v3, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 669
    invoke-virtual {v0}, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->start()V

    .line 670
    const/4 v0, 0x1

    .line 671
    .end local v1    # "duration":J
    .end local v15    # "animationType":I
    .end local v17    # "preventLayout":Z
    .end local v18    # "swipeDir":I
    .end local v19    # "targetTranslateY":F
    .end local v20    # "targetTranslateX":F
    .end local v21    # "currentTranslateX":F
    .end local v22    # "currentTranslateY":F
    .local v0, "preventLayout":Z
    move/from16 v17, v0

    move-object/from16 v0, v24

    goto :goto_f0

    .line 672
    .end local v0    # "preventLayout":Z
    .end local v24    # "prevSelected":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .end local v25    # "prevActionState":I
    .restart local v8    # "prevSelected":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .restart local v14    # "prevActionState":I
    .restart local v17    # "preventLayout":Z
    :cond_dd
    move-object/from16 v24, v8

    move/from16 v25, v14

    move v14, v10

    .end local v8    # "prevSelected":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .end local v14    # "prevActionState":I
    .restart local v24    # "prevSelected":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .restart local v25    # "prevActionState":I
    move-object/from16 v0, v24

    .end local v24    # "prevSelected":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .local v0, "prevSelected":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    .line 673
    iget-object v1, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    iget-object v2, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2, v0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 675
    :goto_f0
    const/4 v1, 0x0

    iput-object v1, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    goto :goto_f7

    .line 600
    .end local v0    # "prevSelected":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .end local v25    # "prevActionState":I
    .restart local v14    # "prevActionState":I
    :cond_f4
    move/from16 v25, v14

    move v14, v10

    .line 677
    .end local v14    # "prevActionState":I
    .restart local v25    # "prevActionState":I
    :goto_f7
    if-eqz v12, :cond_12b

    .line 678
    iget-object v0, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    iget-object v1, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 679
    invoke-virtual {v0, v1, v12}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getAbsoluteMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v0

    and-int v0, v0, v16

    iget v1, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    mul-int/lit8 v1, v1, 0x8

    shr-int/2addr v0, v1

    iput v0, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedFlags:I

    .line 681
    iget-object v0, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iput v0, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartX:F

    .line 682
    iget-object v0, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    iput v0, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartY:F

    .line 683
    iput-object v12, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 685
    if-ne v13, v14, :cond_129

    .line 686
    iget-object v0, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_12c

    .line 685
    :cond_129
    const/4 v1, 0x0

    goto :goto_12c

    .line 677
    :cond_12b
    const/4 v1, 0x0

    .line 689
    :goto_12c
    iget-object v0, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 690
    .local v0, "rvParent":Landroid/view/ViewParent;
    if-eqz v0, :cond_13e

    .line 691
    iget-object v2, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_13a

    const/4 v15, 0x1

    goto :goto_13b

    :cond_13a
    move v15, v1

    :goto_13b
    invoke-interface {v0, v15}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 693
    :cond_13e
    if-nez v17, :cond_149

    .line 694
    iget-object v1, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestSimpleAnimationsInNextLayout()V

    .line 696
    :cond_149
    iget-object v1, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    iget-object v2, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget v3, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    invoke-virtual {v1, v2, v3}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 697
    iget-object v1, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->invalidate()V

    .line 698
    return-void

    :sswitch_data_158
    .sparse-switch
        0x1 -> :sswitch_74
        0x2 -> :sswitch_74
        0x4 -> :sswitch_60
        0x8 -> :sswitch_60
        0x10 -> :sswitch_60
        0x20 -> :sswitch_60
    .end sparse-switch
.end method

.method public startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 5
    .param p1, "viewHolder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 1096
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->hasDragFlag(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    const-string v1, "ItemTouchHelper"

    if-nez v0, :cond_12

    .line 1097
    const-string v0, "Start drag has been called but dragging is not enabled"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    return-void

    .line 1100
    :cond_12
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eq v0, v2, :cond_22

    .line 1101
    const-string v0, "Start drag has been called with a view holder which is not a child of the RecyclerView which is controlled by this ItemTouchHelper."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    return-void

    .line 1105
    :cond_22
    invoke-virtual {p0}, Landroidx/recyclerview/widget/ItemTouchHelper;->obtainVelocityTracker()V

    .line 1106
    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    iput v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 1107
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;->select(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 1108
    return-void
.end method

.method public startSwipe(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 5
    .param p1, "viewHolder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 1143
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->hasSwipeFlag(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    const-string v1, "ItemTouchHelper"

    if-nez v0, :cond_12

    .line 1144
    const-string v0, "Start swipe has been called but swiping is not enabled"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    return-void

    .line 1147
    :cond_12
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eq v0, v2, :cond_22

    .line 1148
    const-string v0, "Start swipe has been called with a view holder which is not a child of the RecyclerView controlled by this ItemTouchHelper."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    return-void

    .line 1152
    :cond_22
    invoke-virtual {p0}, Landroidx/recyclerview/widget/ItemTouchHelper;->obtainVelocityTracker()V

    .line 1153
    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    iput v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 1154
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;->select(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 1155
    return-void
.end method

.method updateDxDy(Landroid/view/MotionEvent;II)V
    .registers 8
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "directionFlags"    # I
    .param p3, "pointerIndex"    # I

    .line 1174
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 1175
    .local v0, "x":F
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 1178
    .local v1, "y":F
    iget v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mInitialTouchX:F

    sub-float v2, v0, v2

    iput v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 1179
    iget v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mInitialTouchY:F

    sub-float v2, v1, v2

    iput v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    .line 1180
    and-int/lit8 v2, p2, 0x4

    const/4 v3, 0x0

    if-nez v2, :cond_21

    .line 1181
    iget v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 1183
    :cond_21
    and-int/lit8 v2, p2, 0x8

    if-nez v2, :cond_2d

    .line 1184
    iget v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 1186
    :cond_2d
    and-int/lit8 v2, p2, 0x1

    if-nez v2, :cond_39

    .line 1187
    iget v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    .line 1189
    :cond_39
    and-int/lit8 v2, p2, 0x2

    if-nez v2, :cond_45

    .line 1190
    iget v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    .line 1192
    :cond_45
    return-void
.end method
