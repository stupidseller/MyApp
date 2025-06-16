.class public Landroidx/constraintlayout/core/widgets/Chain;
.super Ljava/lang/Object;
.source "Chain.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final USE_CHAIN_OPTIMIZATION:Z = false


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static applyChainConstraints(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;IILandroidx/constraintlayout/core/widgets/ChainHead;)V
    .registers 49
    .param p0, "container"    # Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;
    .param p1, "system"    # Landroidx/constraintlayout/core/LinearSystem;
    .param p2, "orientation"    # I
    .param p3, "offset"    # I
    .param p4, "chainHead"    # Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 83
    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v12, p4

    iget-object v13, v12, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirst:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 84
    .local v13, "first":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    iget-object v14, v12, Landroidx/constraintlayout/core/widgets/ChainHead;->mLast:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 85
    .local v14, "last":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    iget-object v15, v12, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirstVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 86
    .local v15, "firstVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    iget-object v9, v12, Landroidx/constraintlayout/core/widgets/ChainHead;->mLastVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 87
    .local v9, "lastVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    iget-object v8, v12, Landroidx/constraintlayout/core/widgets/ChainHead;->mHead:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 89
    .local v8, "head":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    move-object v1, v13

    .line 90
    .local v1, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    const/4 v2, 0x0

    .line 91
    .local v2, "next":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    const/4 v3, 0x0

    .line 93
    .local v3, "done":Z
    iget v4, v12, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalWeight:F

    .line 94
    .local v4, "totalWeights":F
    iget-object v7, v12, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirstMatchConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 95
    .local v7, "firstMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    iget-object v6, v12, Landroidx/constraintlayout/core/widgets/ChainHead;->mLastMatchConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 97
    .local v6, "previousMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    iget-object v5, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v5, v5, v11

    move-object/from16 v16, v1

    .end local v1    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v16, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v17, v2

    .end local v2    # "next":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v17, "next":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    if-ne v5, v1, :cond_29

    const/4 v1, 0x1

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    :goto_2a
    move/from16 v19, v1

    .line 98
    .local v19, "isWrapContent":Z
    const/4 v1, 0x0

    .line 99
    .local v1, "isChainSpread":Z
    const/4 v5, 0x0

    .line 100
    .local v5, "isChainSpreadInside":Z
    const/16 v20, 0x0

    .line 102
    .local v20, "isChainPacked":Z
    if-nez v11, :cond_57

    .line 103
    iget v2, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    if-nez v2, :cond_38

    const/4 v2, 0x1

    goto :goto_39

    :cond_38
    const/4 v2, 0x0

    :goto_39
    move v1, v2

    .line 104
    iget v2, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    move/from16 v23, v1

    const/4 v1, 0x1

    .end local v1    # "isChainSpread":Z
    .local v23, "isChainSpread":Z
    if-ne v2, v1, :cond_43

    const/4 v1, 0x1

    goto :goto_44

    :cond_43
    const/4 v1, 0x0

    .line 105
    .end local v5    # "isChainSpreadInside":Z
    .local v1, "isChainSpreadInside":Z
    :goto_44
    iget v2, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_4b

    const/4 v2, 0x1

    goto :goto_4c

    :cond_4b
    const/4 v2, 0x0

    :goto_4c
    move/from16 v22, v3

    move-object/from16 v5, v16

    move-object/from16 v20, v17

    move/from16 v16, v1

    move/from16 v17, v2

    .end local v20    # "isChainPacked":Z
    .local v2, "isChainPacked":Z
    goto :goto_7b

    .line 107
    .end local v2    # "isChainPacked":Z
    .end local v23    # "isChainSpread":Z
    .local v1, "isChainSpread":Z
    .restart local v5    # "isChainSpreadInside":Z
    .restart local v20    # "isChainPacked":Z
    :cond_57
    iget v2, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainStyle:I

    if-nez v2, :cond_5d

    const/4 v2, 0x1

    goto :goto_5e

    :cond_5d
    const/4 v2, 0x0

    :goto_5e
    move v1, v2

    .line 108
    iget v2, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainStyle:I

    move/from16 v23, v1

    const/4 v1, 0x1

    .end local v1    # "isChainSpread":Z
    .restart local v23    # "isChainSpread":Z
    if-ne v2, v1, :cond_68

    const/4 v1, 0x1

    goto :goto_69

    :cond_68
    const/4 v1, 0x0

    .line 109
    .end local v5    # "isChainSpreadInside":Z
    .local v1, "isChainSpreadInside":Z
    :goto_69
    iget v2, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainStyle:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_70

    const/4 v2, 0x1

    goto :goto_71

    :cond_70
    const/4 v2, 0x0

    :goto_71
    move/from16 v22, v3

    move-object/from16 v5, v16

    move-object/from16 v20, v17

    move/from16 v16, v1

    move/from16 v17, v2

    .line 125
    .end local v1    # "isChainSpreadInside":Z
    .end local v3    # "done":Z
    .local v5, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v16, "isChainSpreadInside":Z
    .local v17, "isChainPacked":Z
    .local v20, "next":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v22, "done":Z
    :goto_7b
    if-nez v22, :cond_17a

    .line 126
    iget-object v1, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    .line 128
    .local v1, "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    const/16 v25, 0x4

    .line 129
    .local v25, "strength":I
    if-eqz v17, :cond_87

    .line 130
    const/16 v25, 0x1

    .line 132
    :cond_87
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v26

    .line 133
    .local v26, "margin":I
    iget-object v3, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v3, v3, v11

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v2, :cond_9b

    iget-object v2, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    aget v2, v2, v11

    if-nez v2, :cond_9b

    const/4 v2, 0x1

    goto :goto_9c

    :cond_9b
    const/4 v2, 0x0

    .line 136
    .local v2, "isSpreadOnly":Z
    :goto_9c
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v3, :cond_ad

    if-eq v5, v13, :cond_ad

    .line 137
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    add-int v26, v26, v3

    move/from16 v3, v26

    goto :goto_af

    .line 140
    :cond_ad
    move/from16 v3, v26

    .end local v26    # "margin":I
    .local v3, "margin":I
    :goto_af
    if-eqz v17, :cond_b7

    if-eq v5, v13, :cond_b7

    if-eq v5, v15, :cond_b7

    .line 141
    const/16 v25, 0x8

    .line 144
    :cond_b7
    move/from16 v26, v4

    .end local v4    # "totalWeights":F
    .local v26, "totalWeights":F
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v4, :cond_fd

    .line 145
    if-ne v5, v15, :cond_ce

    .line 146
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v29, v6

    .end local v6    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v29, "previousMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v30, v7

    const/4 v7, 0x6

    .end local v7    # "firstMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v30, "firstMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    invoke-virtual {v10, v4, v6, v3, v7}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_dd

    .line 149
    .end local v29    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v30    # "firstMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v6    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v7    # "firstMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_ce
    move-object/from16 v29, v6

    move-object/from16 v30, v7

    .end local v6    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v7    # "firstMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v29    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v30    # "firstMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    const/16 v7, 0x8

    invoke-virtual {v10, v4, v6, v3, v7}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 152
    :goto_dd
    if-eqz v2, :cond_e3

    if-nez v17, :cond_e3

    .line 153
    const/16 v25, 0x5

    .line 155
    :cond_e3
    if-ne v5, v15, :cond_ef

    if-eqz v17, :cond_ef

    invoke-virtual {v5, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInBarrier(I)Z

    move-result v4

    if-eqz v4, :cond_ef

    .line 156
    const/4 v4, 0x5

    .end local v25    # "strength":I
    .local v4, "strength":I
    goto :goto_f1

    .line 158
    .end local v4    # "strength":I
    .restart local v25    # "strength":I
    :cond_ef
    move/from16 v4, v25

    .end local v25    # "strength":I
    .restart local v4    # "strength":I
    :goto_f1
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v7, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {v10, v6, v7, v3, v4}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    move/from16 v25, v4

    goto :goto_101

    .line 144
    .end local v4    # "strength":I
    .end local v29    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v30    # "firstMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v6    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v7    # "firstMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v25    # "strength":I
    :cond_fd
    move-object/from16 v29, v6

    move-object/from16 v30, v7

    .line 162
    .end local v6    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v7    # "firstMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v29    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v30    # "firstMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :goto_101
    if-eqz v19, :cond_13e

    .line 163
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v4

    const/16 v6, 0x8

    if-eq v4, v6, :cond_129

    iget-object v4, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v4, v4, v11

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v6, :cond_129

    .line 165
    iget-object v4, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v6, p3, 0x1

    aget-object v4, v4, v6

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v6, v6, p3

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v24, v1

    const/4 v1, 0x0

    const/4 v7, 0x5

    .end local v1    # "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .local v24, "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    invoke-virtual {v10, v4, v6, v1, v7}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_12b

    .line 163
    .end local v24    # "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v1    # "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    :cond_129
    move-object/from16 v24, v1

    .line 169
    .end local v1    # "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v24    # "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    :goto_12b
    iget-object v1, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v4, v4, p3

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-virtual {v10, v1, v4, v7, v6}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_140

    .line 162
    .end local v24    # "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v1    # "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    :cond_13e
    move-object/from16 v24, v1

    .line 175
    .end local v1    # "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v24    # "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    :goto_140
    iget-object v1, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v4, p3, 0x1

    aget-object v1, v1, v4

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 176
    .local v1, "nextAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    if-eqz v1, :cond_166

    .line 177
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 178
    .end local v20    # "next":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v4, "next":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    iget-object v6, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v6, v6, p3

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v6, :cond_162

    iget-object v6, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v6, v6, p3

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eq v6, v5, :cond_15f

    goto :goto_162

    :cond_15f
    move-object/from16 v20, v4

    goto :goto_169

    .line 179
    :cond_162
    :goto_162
    const/4 v4, 0x0

    move-object/from16 v20, v4

    goto :goto_169

    .line 182
    .end local v4    # "next":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v20    # "next":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_166
    const/4 v4, 0x0

    move-object/from16 v20, v4

    .line 184
    :goto_169
    if-eqz v20, :cond_16f

    .line 185
    move-object/from16 v4, v20

    move-object v5, v4

    .end local v5    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v4, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    goto :goto_172

    .line 187
    .end local v4    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v5    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_16f
    const/4 v4, 0x1

    move/from16 v22, v4

    .line 189
    .end local v1    # "nextAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v2    # "isSpreadOnly":Z
    .end local v3    # "margin":I
    .end local v24    # "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v25    # "strength":I
    :goto_172
    move/from16 v4, v26

    move-object/from16 v6, v29

    move-object/from16 v7, v30

    goto/16 :goto_7b

    .line 192
    .end local v26    # "totalWeights":F
    .end local v29    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v30    # "firstMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v4, "totalWeights":F
    .restart local v6    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v7    # "firstMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_17a
    move/from16 v26, v4

    move-object/from16 v29, v6

    move-object/from16 v30, v7

    .end local v4    # "totalWeights":F
    .end local v6    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v7    # "firstMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v26    # "totalWeights":F
    .restart local v29    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v30    # "firstMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    if-eqz v9, :cond_1e9

    iget-object v2, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v2, :cond_1e9

    .line 193
    iget-object v2, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    .line 194
    .local v2, "end":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    iget-object v3, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v3, v3, v11

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_1a2

    iget-object v3, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    aget v3, v3, v11

    if-nez v3, :cond_1a2

    const/4 v3, 0x1

    goto :goto_1a3

    :cond_1a2
    const/4 v3, 0x0

    .line 196
    .local v3, "isSpreadOnly":Z
    :goto_1a3
    if-eqz v3, :cond_1bd

    if-nez v17, :cond_1bd

    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-ne v4, v0, :cond_1bd

    .line 197
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v6, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    neg-int v7, v7

    const/4 v1, 0x5

    invoke-virtual {v10, v4, v6, v7, v1}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    goto :goto_1d4

    .line 199
    :cond_1bd
    if-eqz v17, :cond_1d4

    iget-object v1, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-ne v1, v0, :cond_1d4

    .line 200
    iget-object v1, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v6

    neg-int v6, v6

    const/4 v7, 0x4

    invoke-virtual {v10, v1, v4, v6, v7}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    .line 203
    :cond_1d4
    :goto_1d4
    iget-object v1, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v4, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v6, p3, 0x1

    aget-object v4, v4, v6

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 204
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v6

    neg-int v6, v6

    .line 203
    const/4 v7, 0x6

    invoke-virtual {v10, v1, v4, v6, v7}, Landroidx/constraintlayout/core/LinearSystem;->addLowerThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 209
    .end local v2    # "end":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v3    # "isSpreadOnly":Z
    :cond_1e9
    if-eqz v19, :cond_20a

    .line 210
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v2, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v3, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v4, p3, 0x1

    aget-object v3, v3, v4

    .line 212
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    .line 210
    const/16 v4, 0x8

    invoke-virtual {v10, v1, v2, v3, v4}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 216
    :cond_20a
    iget-object v7, v12, Landroidx/constraintlayout/core/widgets/ChainHead;->mWeightedMatchConstraintsWidgets:Ljava/util/ArrayList;

    .line 217
    .local v7, "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    if-eqz v7, :cond_2f3

    .line 218
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 219
    .local v1, "count":I
    const/4 v2, 0x1

    if-le v1, v2, :cond_2ea

    .line 220
    const/4 v3, 0x0

    .line 221
    .local v3, "lastMatch":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    const/4 v4, 0x0

    .line 223
    .local v4, "lastWeight":F
    iget-boolean v6, v12, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasUndefinedWeights:Z

    if-eqz v6, :cond_223

    iget-boolean v6, v12, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasComplexMatchWeights:Z

    if-nez v6, :cond_223

    .line 224
    iget v6, v12, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsMatchCount:I

    int-to-float v6, v6

    .end local v26    # "totalWeights":F
    .local v6, "totalWeights":F
    goto :goto_225

    .line 227
    .end local v6    # "totalWeights":F
    .restart local v26    # "totalWeights":F
    :cond_223
    move/from16 v6, v26

    .end local v26    # "totalWeights":F
    .restart local v6    # "totalWeights":F
    :goto_225
    const/16 v21, 0x0

    move/from16 v2, v21

    .local v2, "i":I
    :goto_229
    if-ge v2, v1, :cond_2dd

    .line 228
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v24

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 229
    .local v0, "match":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    move/from16 v24, v1

    .end local v1    # "count":I
    .local v24, "count":I
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    aget v1, v1, v11

    .line 231
    .local v1, "currentWeight":F
    const/16 v26, 0x0

    cmpg-float v28, v1, v26

    if-gez v28, :cond_269

    .line 232
    move/from16 v28, v1

    .end local v1    # "currentWeight":F
    .local v28, "currentWeight":F
    iget-boolean v1, v12, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasComplexMatchWeights:Z

    if-eqz v1, :cond_261

    .line 233
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v26, p3, 0x1

    aget-object v1, v1, v26

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v39, v5

    .end local v5    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v39, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    iget-object v5, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v5, v5, p3

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v40, v7

    const/4 v7, 0x4

    const/4 v12, 0x0

    .end local v7    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    .local v40, "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    invoke-virtual {v10, v1, v5, v12, v7}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    .line 235
    move-object/from16 v18, v8

    const/4 v8, 0x0

    goto/16 :goto_2cd

    .line 237
    .end local v39    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v40    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    .restart local v5    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v7    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    :cond_261
    move-object/from16 v39, v5

    move-object/from16 v40, v7

    const/4 v7, 0x4

    .end local v5    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v7    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    .restart local v39    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v40    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    const/high16 v1, 0x3f800000    # 1.0f

    .end local v28    # "currentWeight":F
    .restart local v1    # "currentWeight":F
    goto :goto_270

    .line 231
    .end local v39    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v40    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    .restart local v5    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v7    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    :cond_269
    move/from16 v28, v1

    move-object/from16 v39, v5

    move-object/from16 v40, v7

    const/4 v7, 0x4

    .line 239
    .end local v5    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v7    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    .restart local v39    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v40    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    :goto_270
    cmpl-float v5, v1, v26

    if-nez v5, :cond_28b

    .line 240
    iget-object v5, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v5, v5, v12

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v12, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v12, v12, p3

    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v18, v8

    const/16 v7, 0x8

    const/4 v8, 0x0

    .end local v8    # "head":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v18, "head":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    invoke-virtual {v10, v5, v12, v8, v7}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    .line 242
    goto :goto_2cd

    .line 245
    .end local v18    # "head":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v8    # "head":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_28b
    move-object/from16 v18, v8

    const/4 v8, 0x0

    .end local v8    # "head":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v18    # "head":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    if-eqz v3, :cond_2c9

    .line 246
    iget-object v5, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v5, v5, p3

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 247
    .local v5, "begin":Landroidx/constraintlayout/core/SolverVariable;
    iget-object v7, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v7, v7, v12

    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 248
    .local v7, "end":Landroidx/constraintlayout/core/SolverVariable;
    iget-object v12, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v12, v12, p3

    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 249
    .local v12, "nextBegin":Landroidx/constraintlayout/core/SolverVariable;
    iget-object v8, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v26, p3, 0x1

    aget-object v8, v8, v26

    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 250
    .local v8, "nextEnd":Landroidx/constraintlayout/core/SolverVariable;
    move-object/from16 v26, v3

    .end local v3    # "lastMatch":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v26, "lastMatch":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v3

    .line 251
    .local v3, "row":Landroidx/constraintlayout/core/ArrayRow;
    move-object/from16 v31, v3

    move/from16 v32, v4

    move/from16 v33, v6

    move/from16 v34, v1

    move-object/from16 v35, v5

    move-object/from16 v36, v7

    move-object/from16 v37, v12

    move-object/from16 v38, v8

    invoke-virtual/range {v31 .. v38}, Landroidx/constraintlayout/core/ArrayRow;->createRowEqualMatchDimensions(FFFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;)Landroidx/constraintlayout/core/ArrayRow;

    .line 253
    invoke-virtual {v10, v3}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    goto :goto_2cb

    .line 245
    .end local v5    # "begin":Landroidx/constraintlayout/core/SolverVariable;
    .end local v7    # "end":Landroidx/constraintlayout/core/SolverVariable;
    .end local v8    # "nextEnd":Landroidx/constraintlayout/core/SolverVariable;
    .end local v12    # "nextBegin":Landroidx/constraintlayout/core/SolverVariable;
    .end local v26    # "lastMatch":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v3, "lastMatch":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_2c9
    move-object/from16 v26, v3

    .line 256
    .end local v3    # "lastMatch":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v26    # "lastMatch":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :goto_2cb
    move-object v3, v0

    .line 257
    .end local v26    # "lastMatch":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v3    # "lastMatch":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    move v4, v1

    .line 227
    .end local v0    # "match":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v1    # "currentWeight":F
    :goto_2cd
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v12, p4

    move-object/from16 v8, v18

    move/from16 v1, v24

    move-object/from16 v5, v39

    move-object/from16 v7, v40

    goto/16 :goto_229

    .end local v18    # "head":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v24    # "count":I
    .end local v39    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v40    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    .local v1, "count":I
    .local v5, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v7, "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    .local v8, "head":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_2dd
    move/from16 v24, v1

    move-object/from16 v26, v3

    move-object/from16 v39, v5

    move-object/from16 v40, v7

    move-object/from16 v18, v8

    .end local v1    # "count":I
    .end local v3    # "lastMatch":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v5    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v7    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    .end local v8    # "head":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v18    # "head":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v24    # "count":I
    .restart local v26    # "lastMatch":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v39    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v40    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    move/from16 v26, v6

    goto :goto_2f9

    .line 219
    .end local v2    # "i":I
    .end local v4    # "lastWeight":F
    .end local v6    # "totalWeights":F
    .end local v18    # "head":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v24    # "count":I
    .end local v39    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v40    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    .restart local v1    # "count":I
    .restart local v5    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v7    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    .restart local v8    # "head":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v26, "totalWeights":F
    :cond_2ea
    move/from16 v24, v1

    move-object/from16 v39, v5

    move-object/from16 v40, v7

    move-object/from16 v18, v8

    .end local v1    # "count":I
    .end local v5    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v7    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    .end local v8    # "head":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v18    # "head":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v24    # "count":I
    .restart local v39    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v40    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    goto :goto_2f9

    .line 217
    .end local v18    # "head":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v24    # "count":I
    .end local v39    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v40    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    .restart local v5    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v7    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    .restart local v8    # "head":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_2f3
    move-object/from16 v39, v5

    move-object/from16 v40, v7

    move-object/from16 v18, v8

    .line 274
    .end local v5    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v7    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    .end local v8    # "head":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v18    # "head":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v39    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v40    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    :goto_2f9
    if-eqz v15, :cond_391

    if-eq v15, v9, :cond_30b

    if-eqz v17, :cond_300

    goto :goto_30b

    :cond_300
    move-object v0, v9

    move-object/from16 v32, v29

    move-object/from16 v31, v39

    move-object/from16 v33, v40

    move-object/from16 v29, v18

    goto/16 :goto_39a

    .line 275
    :cond_30b
    :goto_30b
    iget-object v1, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    .line 276
    .local v1, "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    iget-object v2, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    .line 277
    .local v2, "end":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v3, :cond_31e

    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    goto :goto_31f

    :cond_31e
    const/4 v3, 0x0

    :goto_31f
    move-object v12, v3

    .line 278
    .local v12, "beginTarget":Landroidx/constraintlayout/core/SolverVariable;
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v3, :cond_329

    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    goto :goto_32a

    :cond_329
    const/4 v3, 0x0

    :goto_32a
    move-object/from16 v21, v3

    .line 279
    .local v21, "endTarget":Landroidx/constraintlayout/core/SolverVariable;
    iget-object v3, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v8, v3, p3

    .line 280
    .end local v1    # "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .local v8, "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    if-eqz v9, :cond_33a

    .line 281
    iget-object v1, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v1, v3

    move-object v7, v2

    goto :goto_33b

    .line 280
    :cond_33a
    move-object v7, v2

    .line 283
    .end local v2    # "end":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .local v7, "end":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    :goto_33b
    if-eqz v12, :cond_380

    if-eqz v21, :cond_380

    .line 284
    const/high16 v1, 0x3f000000    # 0.5f

    .line 285
    .local v1, "bias":F
    if-nez v11, :cond_34a

    .line 286
    move-object/from16 v6, v18

    .end local v18    # "head":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v6, "head":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    iget v1, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    move/from16 v18, v1

    goto :goto_350

    .line 288
    .end local v6    # "head":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v18    # "head":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_34a
    move-object/from16 v6, v18

    .end local v18    # "head":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v6    # "head":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    iget v1, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    move/from16 v18, v1

    .line 290
    .end local v1    # "bias":F
    .local v18, "bias":F
    :goto_350
    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v24

    .line 291
    .local v24, "beginMargin":I
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v25

    .line 292
    .local v25, "endMargin":I
    iget-object v2, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v5, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    const/16 v27, 0x7

    move-object/from16 v1, p1

    move-object v3, v12

    move/from16 v4, v24

    move-object/from16 v28, v5

    move-object/from16 v31, v39

    .end local v39    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v31, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    move/from16 v5, v18

    move-object/from16 v32, v29

    move-object/from16 v29, v6

    .end local v6    # "head":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v29, "head":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v32, "previousMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    move-object/from16 v6, v21

    move-object/from16 v34, v7

    move-object/from16 v33, v40

    .end local v7    # "end":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v40    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    .local v33, "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    .local v34, "end":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    move-object/from16 v7, v28

    move-object/from16 v28, v8

    .end local v8    # "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .local v28, "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    move/from16 v8, v25

    move-object v0, v9

    .end local v9    # "lastVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v0, "lastVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    move/from16 v9, v27

    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/core/LinearSystem;->addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_38d

    .line 283
    .end local v0    # "lastVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v24    # "beginMargin":I
    .end local v25    # "endMargin":I
    .end local v28    # "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v31    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v32    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v33    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    .end local v34    # "end":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v7    # "end":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v8    # "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v9    # "lastVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v18, "head":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v29, "previousMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v39    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v40    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    :cond_380
    move-object/from16 v34, v7

    move-object/from16 v28, v8

    move-object v0, v9

    move-object/from16 v32, v29

    move-object/from16 v31, v39

    move-object/from16 v33, v40

    move-object/from16 v29, v18

    .line 295
    .end local v7    # "end":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v8    # "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v9    # "lastVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v12    # "beginTarget":Landroidx/constraintlayout/core/SolverVariable;
    .end local v18    # "head":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v21    # "endTarget":Landroidx/constraintlayout/core/SolverVariable;
    .end local v39    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v40    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    .restart local v0    # "lastVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v29, "head":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v31    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v32    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v33    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    :goto_38d
    move-object/from16 v12, p4

    goto/16 :goto_68e

    .line 274
    .end local v0    # "lastVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v31    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v32    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v33    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    .restart local v9    # "lastVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v18    # "head":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v29, "previousMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v39    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v40    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    :cond_391
    move-object v0, v9

    move-object/from16 v32, v29

    move-object/from16 v31, v39

    move-object/from16 v33, v40

    move-object/from16 v29, v18

    .line 295
    .end local v9    # "lastVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v18    # "head":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v39    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v40    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    .restart local v0    # "lastVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v29, "head":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v31    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v32    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v33    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    :goto_39a
    if-eqz v23, :cond_4e9

    if-eqz v15, :cond_4e9

    .line 297
    move-object v1, v15

    .line 298
    .end local v31    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v1, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    move-object v2, v15

    .line 299
    .local v2, "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    move-object/from16 v12, p4

    iget v3, v12, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsMatchCount:I

    if-lez v3, :cond_3af

    iget v3, v12, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsCount:I

    iget v4, v12, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsMatchCount:I

    if-ne v3, v4, :cond_3af

    const/16 v28, 0x1

    goto :goto_3b1

    :cond_3af
    const/16 v28, 0x0

    :goto_3b1
    move/from16 v18, v28

    move-object v8, v1

    move-object v9, v2

    .line 300
    .end local v1    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v2    # "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v8, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v9, "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v18, "applyFixedEquality":Z
    :goto_3b5
    if-eqz v8, :cond_4e1

    .line 301
    iget-object v1, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v1, v1, v11

    move-object v7, v1

    .line 302
    .end local v20    # "next":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v7, "next":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :goto_3bc
    if-eqz v7, :cond_3cb

    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_3cd

    .line 303
    iget-object v1, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v7, v1, v11

    goto :goto_3bc

    .line 302
    :cond_3cb
    const/16 v3, 0x8

    .line 305
    :cond_3cd
    if-nez v7, :cond_3da

    if-ne v8, v0, :cond_3d2

    goto :goto_3da

    :cond_3d2
    move-object/from16 v39, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    goto/16 :goto_4cd

    .line 306
    :cond_3da
    :goto_3da
    iget-object v1, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v6, v1, p3

    .line 307
    .local v6, "beginAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    iget-object v5, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 308
    .local v5, "begin":Landroidx/constraintlayout/core/SolverVariable;
    iget-object v1, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v1, :cond_3e9

    iget-object v1, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    goto :goto_3ea

    :cond_3e9
    const/4 v1, 0x0

    .line 309
    .local v1, "beginTarget":Landroidx/constraintlayout/core/SolverVariable;
    :goto_3ea
    if-eq v9, v8, :cond_3f7

    .line 310
    iget-object v2, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v4, p3, 0x1

    aget-object v2, v2, v4

    iget-object v1, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v20, v1

    goto :goto_411

    .line 311
    :cond_3f7
    if-ne v8, v15, :cond_40f

    .line 312
    iget-object v2, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v2, v2, p3

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v2, :cond_40a

    iget-object v2, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v2, v2, p3

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    goto :goto_40b

    :cond_40a
    const/4 v2, 0x0

    :goto_40b
    move-object v1, v2

    move-object/from16 v20, v1

    goto :goto_411

    .line 311
    :cond_40f
    move-object/from16 v20, v1

    .line 315
    .end local v1    # "beginTarget":Landroidx/constraintlayout/core/SolverVariable;
    .local v20, "beginTarget":Landroidx/constraintlayout/core/SolverVariable;
    :goto_411
    const/4 v1, 0x0

    .line 316
    .local v1, "beginNextAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    const/4 v2, 0x0

    .line 317
    .local v2, "beginNext":Landroidx/constraintlayout/core/SolverVariable;
    const/4 v4, 0x0

    .line 318
    .local v4, "beginNextTarget":Landroidx/constraintlayout/core/SolverVariable;
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v21

    .line 319
    .local v21, "beginMargin":I
    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v24, p3, 0x1

    aget-object v3, v3, v24

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    .line 321
    .local v3, "nextMargin":I
    if-eqz v7, :cond_431

    .line 322
    move-object/from16 v24, v1

    .end local v1    # "beginNextAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .local v24, "beginNextAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    iget-object v1, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    .line 323
    .end local v24    # "beginNextAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v1    # "beginNextAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v24, v1

    move-object/from16 v25, v2

    goto :goto_448

    .line 325
    :cond_431
    move-object/from16 v24, v1

    .end local v1    # "beginNextAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v24    # "beginNextAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    iget-object v1, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v25, p3, 0x1

    aget-object v1, v1, v25

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 326
    .end local v24    # "beginNextAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v1    # "beginNextAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    if-eqz v1, :cond_444

    .line 327
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v24, v1

    move-object/from16 v25, v2

    goto :goto_448

    .line 326
    :cond_444
    move-object/from16 v24, v1

    move-object/from16 v25, v2

    .line 330
    .end local v1    # "beginNextAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v2    # "beginNext":Landroidx/constraintlayout/core/SolverVariable;
    .restart local v24    # "beginNextAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .local v25, "beginNext":Landroidx/constraintlayout/core/SolverVariable;
    :goto_448
    iget-object v1, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 332
    if-eqz v24, :cond_45a

    .line 333
    invoke-virtual/range {v24 .. v24}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    add-int/2addr v3, v1

    move/from16 v28, v3

    goto :goto_45c

    .line 332
    :cond_45a
    move/from16 v28, v3

    .line 335
    .end local v3    # "nextMargin":I
    .local v28, "nextMargin":I
    :goto_45c
    iget-object v1, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    add-int v21, v21, v1

    .line 336
    if-eqz v5, :cond_4c1

    if-eqz v20, :cond_4c1

    if-eqz v25, :cond_4c1

    if-eqz v4, :cond_4c1

    .line 337
    move/from16 v1, v21

    .line 338
    .local v1, "margin1":I
    if-ne v8, v15, :cond_47f

    .line 339
    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v2, v2, p3

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    move/from16 v31, v1

    goto :goto_481

    .line 338
    :cond_47f
    move/from16 v31, v1

    .line 341
    .end local v1    # "margin1":I
    .local v31, "margin1":I
    :goto_481
    move/from16 v1, v28

    .line 342
    .local v1, "margin2":I
    if-ne v8, v0, :cond_492

    .line 343
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    move/from16 v34, v1

    goto :goto_494

    .line 342
    :cond_492
    move/from16 v34, v1

    .line 345
    .end local v1    # "margin2":I
    .local v34, "margin2":I
    :goto_494
    const/4 v1, 0x5

    .line 346
    .local v1, "strength":I
    if-eqz v18, :cond_49c

    .line 347
    const/16 v1, 0x8

    move/from16 v36, v1

    goto :goto_49e

    .line 346
    :cond_49c
    move/from16 v36, v1

    .line 349
    .end local v1    # "strength":I
    .local v36, "strength":I
    :goto_49e
    const/high16 v37, 0x3f000000    # 0.5f

    move-object/from16 v1, p1

    move-object v2, v5

    move-object/from16 v3, v20

    move-object/from16 v27, v4

    .end local v4    # "beginNextTarget":Landroidx/constraintlayout/core/SolverVariable;
    .local v27, "beginNextTarget":Landroidx/constraintlayout/core/SolverVariable;
    move/from16 v4, v31

    move-object/from16 v38, v5

    .end local v5    # "begin":Landroidx/constraintlayout/core/SolverVariable;
    .local v38, "begin":Landroidx/constraintlayout/core/SolverVariable;
    move/from16 v5, v37

    move-object/from16 v37, v6

    .end local v6    # "beginAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .local v37, "beginAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    move-object/from16 v6, v25

    move-object/from16 v39, v7

    .end local v7    # "next":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v39, "next":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    move-object/from16 v7, v27

    move-object/from16 v40, v8

    .end local v8    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v40, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    move/from16 v8, v34

    move-object/from16 v41, v9

    .end local v9    # "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v41, "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    move/from16 v9, v36

    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/core/LinearSystem;->addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_4cd

    .line 336
    .end local v27    # "beginNextTarget":Landroidx/constraintlayout/core/SolverVariable;
    .end local v31    # "margin1":I
    .end local v34    # "margin2":I
    .end local v36    # "strength":I
    .end local v37    # "beginAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v38    # "begin":Landroidx/constraintlayout/core/SolverVariable;
    .end local v39    # "next":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v40    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v41    # "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v4    # "beginNextTarget":Landroidx/constraintlayout/core/SolverVariable;
    .restart local v5    # "begin":Landroidx/constraintlayout/core/SolverVariable;
    .restart local v6    # "beginAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v7    # "next":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v8    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v9    # "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_4c1
    move-object/from16 v27, v4

    move-object/from16 v38, v5

    move-object/from16 v37, v6

    move-object/from16 v39, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    .line 354
    .end local v4    # "beginNextTarget":Landroidx/constraintlayout/core/SolverVariable;
    .end local v5    # "begin":Landroidx/constraintlayout/core/SolverVariable;
    .end local v6    # "beginAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v7    # "next":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v8    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v9    # "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v20    # "beginTarget":Landroidx/constraintlayout/core/SolverVariable;
    .end local v21    # "beginMargin":I
    .end local v24    # "beginNextAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v25    # "beginNext":Landroidx/constraintlayout/core/SolverVariable;
    .end local v28    # "nextMargin":I
    .restart local v39    # "next":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v40    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v41    # "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :goto_4cd
    invoke-virtual/range {v40 .. v40}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v1

    const/16 v9, 0x8

    if-eq v1, v9, :cond_4d8

    .line 355
    move-object/from16 v1, v40

    .end local v41    # "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v1, "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    goto :goto_4da

    .line 354
    .end local v1    # "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v41    # "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_4d8
    move-object/from16 v1, v41

    .line 357
    .end local v41    # "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v1    # "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :goto_4da
    move-object/from16 v8, v39

    move-object v9, v1

    move-object/from16 v20, v39

    .end local v40    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v8    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    goto/16 :goto_3b5

    .line 300
    .end local v1    # "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v39    # "next":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v9    # "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v20, "next":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_4e1
    move-object/from16 v40, v8

    move-object/from16 v41, v9

    .line 359
    .end local v8    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v9    # "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v18    # "applyFixedEquality":Z
    .restart local v40    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    move-object/from16 v31, v40

    goto/16 :goto_68e

    .line 295
    .end local v40    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v31, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_4e9
    move-object/from16 v12, p4

    const/16 v9, 0x8

    .line 359
    if-eqz v16, :cond_68e

    if-eqz v15, :cond_68e

    .line 361
    move-object v1, v15

    .line 362
    .end local v31    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v1, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    move-object v2, v15

    .line 363
    .local v2, "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    iget v3, v12, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsMatchCount:I

    if-lez v3, :cond_500

    iget v3, v12, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsCount:I

    iget v4, v12, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsMatchCount:I

    if-ne v3, v4, :cond_500

    const/16 v28, 0x1

    goto :goto_502

    :cond_500
    const/16 v28, 0x0

    :goto_502
    move/from16 v18, v28

    move-object v7, v1

    move-object v8, v2

    .line 364
    .end local v1    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v2    # "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v7, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v8, "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v18    # "applyFixedEquality":Z
    :goto_506
    if-eqz v7, :cond_5fb

    .line 365
    iget-object v1, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v1, v1, v11

    .line 366
    .end local v20    # "next":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v1, "next":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :goto_50c
    if-eqz v1, :cond_519

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v2

    if-ne v2, v9, :cond_519

    .line 367
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v1, v2, v11

    goto :goto_50c

    .line 369
    :cond_519
    if-eq v7, v15, :cond_5e1

    if-eq v7, v0, :cond_5e1

    if-eqz v1, :cond_5e1

    .line 370
    if-ne v1, v0, :cond_524

    .line 371
    const/4 v1, 0x0

    move-object v6, v1

    goto :goto_525

    .line 370
    :cond_524
    move-object v6, v1

    .line 373
    .end local v1    # "next":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v6, "next":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :goto_525
    iget-object v1, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v5, v1, p3

    .line 374
    .local v5, "beginAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    iget-object v4, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 375
    .local v4, "begin":Landroidx/constraintlayout/core/SolverVariable;
    iget-object v1, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v1, :cond_534

    iget-object v1, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    goto :goto_535

    :cond_534
    const/4 v1, 0x0

    .line 376
    .local v1, "beginTarget":Landroidx/constraintlayout/core/SolverVariable;
    :goto_535
    iget-object v2, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 377
    .end local v1    # "beginTarget":Landroidx/constraintlayout/core/SolverVariable;
    .local v3, "beginTarget":Landroidx/constraintlayout/core/SolverVariable;
    const/4 v1, 0x0

    .line 378
    .local v1, "beginNextAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    const/4 v2, 0x0

    .line 379
    .local v2, "beginNext":Landroidx/constraintlayout/core/SolverVariable;
    const/16 v20, 0x0

    .line 380
    .local v20, "beginNextTarget":Landroidx/constraintlayout/core/SolverVariable;
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v21

    .line 381
    .restart local v21    # "beginMargin":I
    iget-object v9, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v24, p3, 0x1

    aget-object v9, v9, v24

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v9

    .line 383
    .local v9, "nextMargin":I
    if-eqz v6, :cond_56c

    .line 384
    move-object/from16 v24, v1

    .end local v1    # "beginNextAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v24    # "beginNextAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    iget-object v1, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    .line 385
    .end local v24    # "beginNextAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v1    # "beginNextAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 386
    move-object/from16 v24, v2

    .end local v2    # "beginNext":Landroidx/constraintlayout/core/SolverVariable;
    .local v24, "beginNext":Landroidx/constraintlayout/core/SolverVariable;
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v2, :cond_564

    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    goto :goto_565

    :cond_564
    const/4 v2, 0x0

    :goto_565
    move-object/from16 v20, v2

    move-object/from16 v25, v24

    move-object/from16 v24, v1

    .end local v20    # "beginNextTarget":Landroidx/constraintlayout/core/SolverVariable;
    .local v2, "beginNextTarget":Landroidx/constraintlayout/core/SolverVariable;
    goto :goto_584

    .line 388
    .end local v24    # "beginNext":Landroidx/constraintlayout/core/SolverVariable;
    .local v2, "beginNext":Landroidx/constraintlayout/core/SolverVariable;
    .restart local v20    # "beginNextTarget":Landroidx/constraintlayout/core/SolverVariable;
    :cond_56c
    move-object/from16 v24, v1

    .end local v1    # "beginNextAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .local v24, "beginNextAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    .line 389
    .end local v24    # "beginNextAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v1    # "beginNextAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    if-eqz v1, :cond_576

    .line 390
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 392
    :cond_576
    move-object/from16 v24, v1

    .end local v1    # "beginNextAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v24    # "beginNextAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    iget-object v1, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v25, p3, 0x1

    aget-object v1, v1, v25

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v20, v1

    move-object/from16 v25, v2

    .line 395
    .end local v2    # "beginNext":Landroidx/constraintlayout/core/SolverVariable;
    .restart local v25    # "beginNext":Landroidx/constraintlayout/core/SolverVariable;
    :goto_584
    if-eqz v24, :cond_58e

    .line 396
    invoke-virtual/range {v24 .. v24}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    add-int/2addr v9, v1

    move/from16 v27, v9

    goto :goto_590

    .line 395
    :cond_58e
    move/from16 v27, v9

    .line 398
    .end local v9    # "nextMargin":I
    .local v27, "nextMargin":I
    :goto_590
    iget-object v1, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    add-int v21, v21, v1

    .line 399
    const/4 v1, 0x4

    .line 400
    .local v1, "strength":I
    if-eqz v18, :cond_5a4

    .line 401
    const/16 v1, 0x8

    move/from16 v28, v1

    goto :goto_5a6

    .line 400
    :cond_5a4
    move/from16 v28, v1

    .line 403
    .end local v1    # "strength":I
    .local v28, "strength":I
    :goto_5a6
    if-eqz v4, :cond_5d0

    if-eqz v3, :cond_5d0

    if-eqz v25, :cond_5d0

    if-eqz v20, :cond_5d0

    .line 404
    const/high16 v9, 0x3f000000    # 0.5f

    move-object/from16 v1, p1

    move-object v2, v4

    move-object/from16 v31, v3

    .end local v3    # "beginTarget":Landroidx/constraintlayout/core/SolverVariable;
    .local v31, "beginTarget":Landroidx/constraintlayout/core/SolverVariable;
    move-object/from16 v34, v4

    .end local v4    # "begin":Landroidx/constraintlayout/core/SolverVariable;
    .local v34, "begin":Landroidx/constraintlayout/core/SolverVariable;
    move/from16 v4, v21

    move-object/from16 v36, v5

    .end local v5    # "beginAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .local v36, "beginAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    move v5, v9

    move-object/from16 v37, v6

    .end local v6    # "next":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v37, "next":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    move-object/from16 v6, v25

    move-object/from16 v38, v7

    .end local v7    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v38, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    move-object/from16 v7, v20

    move-object/from16 v39, v8

    .end local v8    # "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v39, "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    move/from16 v8, v27

    const/16 v11, 0x8

    move/from16 v9, v28

    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/core/LinearSystem;->addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_5de

    .line 403
    .end local v31    # "beginTarget":Landroidx/constraintlayout/core/SolverVariable;
    .end local v34    # "begin":Landroidx/constraintlayout/core/SolverVariable;
    .end local v36    # "beginAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v37    # "next":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v38    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v39    # "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v3    # "beginTarget":Landroidx/constraintlayout/core/SolverVariable;
    .restart local v4    # "begin":Landroidx/constraintlayout/core/SolverVariable;
    .restart local v5    # "beginAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v6    # "next":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v7    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v8    # "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_5d0
    move-object/from16 v31, v3

    move-object/from16 v34, v4

    move-object/from16 v36, v5

    move-object/from16 v37, v6

    move-object/from16 v38, v7

    move-object/from16 v39, v8

    const/16 v11, 0x8

    .line 409
    .end local v3    # "beginTarget":Landroidx/constraintlayout/core/SolverVariable;
    .end local v4    # "begin":Landroidx/constraintlayout/core/SolverVariable;
    .end local v5    # "beginAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v6    # "next":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v7    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v8    # "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v20    # "beginNextTarget":Landroidx/constraintlayout/core/SolverVariable;
    .end local v21    # "beginMargin":I
    .end local v24    # "beginNextAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v25    # "beginNext":Landroidx/constraintlayout/core/SolverVariable;
    .end local v27    # "nextMargin":I
    .end local v28    # "strength":I
    .restart local v37    # "next":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v38    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v39    # "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :goto_5de
    move-object/from16 v20, v37

    goto :goto_5e8

    .line 369
    .end local v37    # "next":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v38    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v39    # "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v1, "next":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v7    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v8    # "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_5e1
    move-object/from16 v38, v7

    move-object/from16 v39, v8

    move v11, v9

    .line 409
    .end local v7    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v8    # "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v38    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v39    # "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    move-object/from16 v20, v1

    .end local v1    # "next":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v20, "next":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :goto_5e8
    invoke-virtual/range {v38 .. v38}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v1

    if-eq v1, v11, :cond_5f2

    .line 410
    move-object/from16 v1, v38

    move-object v8, v1

    .end local v39    # "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v1, "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    goto :goto_5f4

    .line 409
    .end local v1    # "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v39    # "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_5f2
    move-object/from16 v8, v39

    .line 412
    .end local v39    # "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v8    # "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :goto_5f4
    move-object/from16 v7, v20

    move v9, v11

    move/from16 v11, p2

    .end local v38    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v7    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    goto/16 :goto_506

    .line 414
    :cond_5fb
    move-object/from16 v38, v7

    move-object/from16 v39, v8

    .end local v7    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v8    # "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v38    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v39    # "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    iget-object v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v11, v1, p3

    .line 415
    .local v11, "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    iget-object v1, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    iget-object v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 416
    .local v9, "beginTarget":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v8, v1, v2

    .line 417
    .local v8, "end":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    iget-object v1, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    iget-object v7, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 418
    .local v7, "endTarget":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    const/4 v6, 0x5

    .line 419
    .local v6, "endPointsStrength":I
    if-eqz v9, :cond_669

    .line 420
    if-eq v15, v0, :cond_630

    .line 421
    iget-object v1, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v2, v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    invoke-virtual {v10, v1, v2, v3, v6}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    move/from16 v24, v6

    move-object/from16 v42, v7

    move-object/from16 v43, v8

    move-object/from16 v21, v9

    goto :goto_671

    .line 422
    :cond_630
    if-eqz v7, :cond_660

    .line 423
    iget-object v2, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v3, v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    iget-object v5, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v1, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 424
    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v21

    .line 423
    const/high16 v24, 0x3f000000    # 0.5f

    move-object/from16 v25, v1

    move-object/from16 v1, p1

    move-object/from16 v27, v5

    move/from16 v5, v24

    move/from16 v24, v6

    .end local v6    # "endPointsStrength":I
    .local v24, "endPointsStrength":I
    move-object/from16 v6, v27

    move-object/from16 v42, v7

    .end local v7    # "endTarget":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .local v42, "endTarget":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    move-object/from16 v7, v25

    move-object/from16 v43, v8

    .end local v8    # "end":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .local v43, "end":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    move/from16 v8, v21

    move-object/from16 v21, v9

    .end local v9    # "beginTarget":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .local v21, "beginTarget":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    move/from16 v9, v24

    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/core/LinearSystem;->addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_671

    .line 422
    .end local v21    # "beginTarget":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v24    # "endPointsStrength":I
    .end local v42    # "endTarget":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v43    # "end":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v6    # "endPointsStrength":I
    .restart local v7    # "endTarget":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v8    # "end":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v9    # "beginTarget":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    :cond_660
    move/from16 v24, v6

    move-object/from16 v42, v7

    move-object/from16 v43, v8

    move-object/from16 v21, v9

    .end local v6    # "endPointsStrength":I
    .end local v7    # "endTarget":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v8    # "end":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v9    # "beginTarget":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v21    # "beginTarget":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v24    # "endPointsStrength":I
    .restart local v42    # "endTarget":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v43    # "end":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    goto :goto_671

    .line 419
    .end local v21    # "beginTarget":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v24    # "endPointsStrength":I
    .end local v42    # "endTarget":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v43    # "end":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v6    # "endPointsStrength":I
    .restart local v7    # "endTarget":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v8    # "end":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v9    # "beginTarget":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    :cond_669
    move/from16 v24, v6

    move-object/from16 v42, v7

    move-object/from16 v43, v8

    move-object/from16 v21, v9

    .line 427
    .end local v6    # "endPointsStrength":I
    .end local v7    # "endTarget":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v8    # "end":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v9    # "beginTarget":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v21    # "beginTarget":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v24    # "endPointsStrength":I
    .restart local v42    # "endTarget":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v43    # "end":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    :goto_671
    move-object/from16 v1, v42

    .end local v42    # "endTarget":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .local v1, "endTarget":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    if-eqz v1, :cond_688

    if-eq v15, v0, :cond_688

    .line 428
    move-object/from16 v2, v43

    .end local v43    # "end":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .local v2, "end":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    neg-int v5, v5

    move/from16 v6, v24

    .end local v24    # "endPointsStrength":I
    .restart local v6    # "endPointsStrength":I
    invoke-virtual {v10, v3, v4, v5, v6}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    goto :goto_68c

    .line 427
    .end local v2    # "end":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v6    # "endPointsStrength":I
    .restart local v24    # "endPointsStrength":I
    .restart local v43    # "end":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    :cond_688
    move/from16 v6, v24

    move-object/from16 v2, v43

    .line 434
    .end local v1    # "endTarget":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v11    # "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v18    # "applyFixedEquality":Z
    .end local v21    # "beginTarget":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v24    # "endPointsStrength":I
    .end local v39    # "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v43    # "end":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    :goto_68c
    move-object/from16 v31, v38

    .end local v38    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v31, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_68e
    :goto_68e
    if-nez v23, :cond_692

    if-eqz v16, :cond_719

    :cond_692
    if-eqz v15, :cond_719

    if-eq v15, v0, :cond_719

    .line 435
    iget-object v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    .line 436
    .local v1, "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    if-nez v0, :cond_69e

    .line 437
    move-object v9, v15

    move-object v0, v9

    .line 439
    :cond_69e
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    .line 440
    .restart local v2    # "end":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v3, :cond_6ad

    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    goto :goto_6ae

    :cond_6ad
    const/4 v3, 0x0

    :goto_6ae
    move-object v11, v3

    .line 441
    .local v11, "beginTarget":Landroidx/constraintlayout/core/SolverVariable;
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v3, :cond_6b8

    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    goto :goto_6b9

    :cond_6b8
    const/4 v3, 0x0

    .line 442
    .local v3, "endTarget":Landroidx/constraintlayout/core/SolverVariable;
    :goto_6b9
    if-eq v14, v0, :cond_6d3

    .line 443
    iget-object v4, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v5, p3, 0x1

    aget-object v4, v4, v5

    .line 444
    .local v4, "realEnd":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v5, :cond_6cc

    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v35, v5

    goto :goto_6ce

    :cond_6cc
    const/16 v35, 0x0

    :goto_6ce
    move-object/from16 v3, v35

    move-object/from16 v18, v3

    goto :goto_6d5

    .line 442
    .end local v4    # "realEnd":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    :cond_6d3
    move-object/from16 v18, v3

    .line 446
    .end local v3    # "endTarget":Landroidx/constraintlayout/core/SolverVariable;
    .local v18, "endTarget":Landroidx/constraintlayout/core/SolverVariable;
    :goto_6d5
    if-ne v15, v0, :cond_6e4

    .line 447
    iget-object v3, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v1, v3, p3

    .line 448
    iget-object v3, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v4, p3, 0x1

    aget-object v2, v3, v4

    move-object v9, v1

    move-object v8, v2

    goto :goto_6e6

    .line 446
    :cond_6e4
    move-object v9, v1

    move-object v8, v2

    .line 450
    .end local v1    # "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v2    # "end":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v8    # "end":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .local v9, "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    :goto_6e6
    if-eqz v11, :cond_715

    if-eqz v18, :cond_715

    .line 451
    const/high16 v21, 0x3f000000    # 0.5f

    .line 452
    .local v21, "bias":F
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v24

    .line 453
    .local v24, "beginMargin":I
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v25

    .line 454
    .local v25, "endMargin":I
    iget-object v2, v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v7, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    const/16 v27, 0x5

    move-object/from16 v1, p1

    move-object v3, v11

    move/from16 v4, v24

    move/from16 v5, v21

    move-object/from16 v6, v18

    move-object/from16 v28, v8

    .end local v8    # "end":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .local v28, "end":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    move/from16 v8, v25

    move-object/from16 v34, v9

    .end local v9    # "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .local v34, "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    move/from16 v9, v27

    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/core/LinearSystem;->addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_719

    .line 450
    .end local v21    # "bias":F
    .end local v24    # "beginMargin":I
    .end local v25    # "endMargin":I
    .end local v28    # "end":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v34    # "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v8    # "end":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v9    # "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    :cond_715
    move-object/from16 v28, v8

    move-object/from16 v34, v9

    .line 458
    .end local v8    # "end":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v9    # "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v11    # "beginTarget":Landroidx/constraintlayout/core/SolverVariable;
    .end local v18    # "endTarget":Landroidx/constraintlayout/core/SolverVariable;
    :cond_719
    :goto_719
    move-object v9, v0

    .end local v0    # "lastVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v9, "lastVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    return-void
.end method

.method public static applyChainConstraints(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/ArrayList;I)V
    .registers 10
    .param p0, "constraintWidgetContainer"    # Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;
    .param p1, "system"    # Landroidx/constraintlayout/core/LinearSystem;
    .param p3, "orientation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;",
            "Landroidx/constraintlayout/core/LinearSystem;",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;I)V"
        }
    .end annotation

    .line 47
    .local p2, "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    const/4 v0, 0x0

    .line 48
    .local v0, "offset":I
    const/4 v1, 0x0

    .line 49
    .local v1, "chainsSize":I
    const/4 v2, 0x0

    .line 50
    .local v2, "chainsArray":[Landroidx/constraintlayout/core/widgets/ChainHead;
    if-nez p3, :cond_b

    .line 51
    const/4 v0, 0x0

    .line 52
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 53
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    goto :goto_10

    .line 55
    :cond_b
    const/4 v0, 0x2

    .line 56
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 57
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 60
    :goto_10
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    if-ge v3, v1, :cond_2a

    .line 61
    aget-object v4, v2, v3

    .line 64
    .local v4, "first":Landroidx/constraintlayout/core/widgets/ChainHead;
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ChainHead;->define()V

    .line 65
    if-eqz p2, :cond_24

    if-eqz p2, :cond_27

    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirst:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 66
    :cond_24
    invoke-static {p0, p1, p3, v0, v4}, Landroidx/constraintlayout/core/widgets/Chain;->applyChainConstraints(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;IILandroidx/constraintlayout/core/widgets/ChainHead;)V

    .line 60
    .end local v4    # "first":Landroidx/constraintlayout/core/widgets/ChainHead;
    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 69
    .end local v3    # "i":I
    :cond_2a
    return-void
.end method
