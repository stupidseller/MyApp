.class public abstract Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
.super Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;
.source "ViewTimeCycle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ProgressSet;,
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;,
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$TranslationZset;,
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$TranslationYset;,
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$TranslationXset;,
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ScaleYset;,
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ScaleXset;,
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$PathRotate;,
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$RotationYset;,
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$RotationXset;,
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$RotationSet;,
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;,
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ElevationSet;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewTimeCycle"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;-><init>()V

    return-void
.end method

.method public static makeCustomSpline(Ljava/lang/String;Landroid/util/SparseArray;)Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "str",
            "attrList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;)",
            "Landroidx/constraintlayout/motion/utils/ViewTimeCycle;"
        }
    .end annotation

    .line 69
    .local p1, "attrList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/constraintlayout/widget/ConstraintAttribute;>;"
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;

    invoke-direct {v0, p0, p1}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;-><init>(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-object v0
.end method

.method public static makeSpline(Ljava/lang/String;J)Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "currentTime"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "str",
            "currentTime"
        }
    .end annotation

    .line 74
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_de

    :cond_7
    goto/16 :goto_8b

    :sswitch_9
    const-string v0, "alpha"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto/16 :goto_8c

    :sswitch_14
    const-string/jumbo v0, "transitionPathRotate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto/16 :goto_8c

    :sswitch_20
    const-string v0, "elevation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8c

    :sswitch_2a
    const-string v0, "rotation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_8c

    :sswitch_34
    const-string v0, "scaleY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    goto :goto_8c

    :sswitch_3e
    const-string v0, "scaleX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto :goto_8c

    :sswitch_48
    const-string v0, "progress"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xb

    goto :goto_8c

    :sswitch_53
    const-string/jumbo v0, "translationZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xa

    goto :goto_8c

    :sswitch_5f
    const-string/jumbo v0, "translationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x9

    goto :goto_8c

    :sswitch_6b
    const-string/jumbo v0, "translationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    goto :goto_8c

    :sswitch_77
    const-string v0, "rotationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_8c

    :sswitch_81
    const-string v0, "rotationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_8c

    :goto_8b
    const/4 v0, -0x1

    :goto_8c
    packed-switch v0, :pswitch_data_110

    .line 112
    const/4 v0, 0x0

    return-object v0

    .line 109
    :pswitch_91
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ProgressSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ProgressSet;-><init>()V

    .line 110
    .local v0, "timeCycle":Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
    goto :goto_d9

    .line 106
    .end local v0    # "timeCycle":Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
    :pswitch_97
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$TranslationZset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$TranslationZset;-><init>()V

    .line 107
    .restart local v0    # "timeCycle":Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
    goto :goto_d9

    .line 103
    .end local v0    # "timeCycle":Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
    :pswitch_9d
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$TranslationYset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$TranslationYset;-><init>()V

    .line 104
    .restart local v0    # "timeCycle":Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
    goto :goto_d9

    .line 100
    .end local v0    # "timeCycle":Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
    :pswitch_a3
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$TranslationXset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$TranslationXset;-><init>()V

    .line 101
    .restart local v0    # "timeCycle":Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
    goto :goto_d9

    .line 97
    .end local v0    # "timeCycle":Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
    :pswitch_a9
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ScaleYset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ScaleYset;-><init>()V

    .line 98
    .restart local v0    # "timeCycle":Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
    goto :goto_d9

    .line 94
    .end local v0    # "timeCycle":Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
    :pswitch_af
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ScaleXset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ScaleXset;-><init>()V

    .line 95
    .restart local v0    # "timeCycle":Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
    goto :goto_d9

    .line 91
    .end local v0    # "timeCycle":Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
    :pswitch_b5
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$PathRotate;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$PathRotate;-><init>()V

    .line 92
    .restart local v0    # "timeCycle":Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
    goto :goto_d9

    .line 88
    .end local v0    # "timeCycle":Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
    :pswitch_bb
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$RotationYset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$RotationYset;-><init>()V

    .line 89
    .restart local v0    # "timeCycle":Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
    goto :goto_d9

    .line 85
    .end local v0    # "timeCycle":Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
    :pswitch_c1
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$RotationXset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$RotationXset;-><init>()V

    .line 86
    .restart local v0    # "timeCycle":Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
    goto :goto_d9

    .line 82
    .end local v0    # "timeCycle":Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
    :pswitch_c7
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$RotationSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$RotationSet;-><init>()V

    .line 83
    .restart local v0    # "timeCycle":Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
    goto :goto_d9

    .line 79
    .end local v0    # "timeCycle":Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
    :pswitch_cd
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ElevationSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ElevationSet;-><init>()V

    .line 80
    .restart local v0    # "timeCycle":Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
    goto :goto_d9

    .line 76
    .end local v0    # "timeCycle":Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
    :pswitch_d3
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;-><init>()V

    .line 77
    .restart local v0    # "timeCycle":Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
    nop

    .line 114
    :goto_d9
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->setStartTime(J)V

    .line 115
    return-object v0

    nop

    :sswitch_data_de
    .sparse-switch
        -0x4a771f66 -> :sswitch_81
        -0x4a771f65 -> :sswitch_77
        -0x490b9c39 -> :sswitch_6b
        -0x490b9c38 -> :sswitch_5f
        -0x490b9c37 -> :sswitch_53
        -0x3bab3dd3 -> :sswitch_48
        -0x3621dfb2 -> :sswitch_3e
        -0x3621dfb1 -> :sswitch_34
        -0x266f082 -> :sswitch_2a
        -0x42d1a3 -> :sswitch_20
        0x2382115 -> :sswitch_14
        0x589b15e -> :sswitch_9
    .end sparse-switch

    :pswitch_data_110
    .packed-switch 0x0
        :pswitch_d3
        :pswitch_cd
        :pswitch_c7
        :pswitch_c1
        :pswitch_bb
        :pswitch_b5
        :pswitch_af
        :pswitch_a9
        :pswitch_a3
        :pswitch_9d
        :pswitch_97
        :pswitch_91
    .end packed-switch
.end method


# virtual methods
.method public get(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)F
    .registers 24
    .param p1, "pos"    # F
    .param p2, "time"    # J
    .param p4, "view"    # Landroid/view/View;
    .param p5, "cache"    # Landroidx/constraintlayout/core/motion/utils/KeyCache;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pos",
            "time",
            "view",
            "cache"
        }
    .end annotation

    .line 44
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    iget-object v5, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    move/from16 v6, p1

    float-to-double v7, v6

    iget-object v9, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mCache:[F

    invoke-virtual {v5, v7, v8, v9}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[F)V

    .line 45
    iget-object v5, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mCache:[F

    const/4 v7, 0x1

    aget v5, v5, v7

    .line 46
    .local v5, "period":F
    const/4 v8, 0x0

    cmpl-float v9, v5, v8

    const/4 v10, 0x2

    const/4 v11, 0x0

    if-nez v9, :cond_25

    .line 47
    iput-boolean v11, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mContinue:Z

    .line 48
    iget-object v7, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mCache:[F

    aget v7, v7, v10

    return v7

    .line 50
    :cond_25
    iget v9, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->last_cycle:F

    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-eqz v9, :cond_3f

    .line 51
    iget-object v9, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mType:Ljava/lang/String;

    invoke-virtual {v4, v3, v9, v11}, Landroidx/constraintlayout/core/motion/utils/KeyCache;->getFloatValue(Ljava/lang/Object;Ljava/lang/String;I)F

    move-result v9

    iput v9, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->last_cycle:F

    .line 52
    iget v9, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->last_cycle:F

    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-eqz v9, :cond_3f

    .line 53
    iput v8, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->last_cycle:F

    .line 56
    :cond_3f
    iget-wide v12, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->last_time:J

    sub-long v12, v1, v12

    .line 57
    .local v12, "delta_time":J
    iget v9, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->last_cycle:F

    float-to-double v14, v9

    long-to-double v7, v12

    const-wide v16, 0x3e112e0be826d695L    # 1.0E-9

    mul-double v7, v7, v16

    float-to-double v9, v5

    mul-double/2addr v7, v9

    add-double/2addr v14, v7

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    rem-double/2addr v14, v7

    double-to-float v7, v14

    iput v7, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->last_cycle:F

    .line 58
    iget-object v7, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mType:Ljava/lang/String;

    iget v8, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->last_cycle:F

    invoke-virtual {v4, v3, v7, v11, v8}, Landroidx/constraintlayout/core/motion/utils/KeyCache;->setFloatValue(Ljava/lang/Object;Ljava/lang/String;IF)V

    .line 59
    iput-wide v1, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->last_time:J

    .line 60
    iget-object v7, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mCache:[F

    aget v7, v7, v11

    .line 61
    .local v7, "v":F
    iget v8, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->last_cycle:F

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->calcWave(F)F

    move-result v8

    .line 62
    .local v8, "wave":F
    iget-object v9, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mCache:[F

    const/4 v10, 0x2

    aget v9, v9, v10

    .line 63
    .local v9, "offset":F
    mul-float v10, v7, v8

    add-float/2addr v10, v9

    .line 64
    .local v10, "value":F
    const/4 v14, 0x0

    cmpl-float v15, v7, v14

    if-nez v15, :cond_7b

    cmpl-float v14, v5, v14

    if-eqz v14, :cond_7c

    :cond_7b
    const/4 v11, 0x1

    :cond_7c
    iput-boolean v11, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mContinue:Z

    .line 65
    return v10
.end method

.method public abstract setProperty(Landroid/view/View;FJLandroidx/constraintlayout/core/motion/utils/KeyCache;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "t",
            "time",
            "cache"
        }
    .end annotation
.end method
