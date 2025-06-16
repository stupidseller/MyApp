.class Landroidx/constraintlayout/motion/utils/ViewSpline$ProgressSet;
.super Landroidx/constraintlayout/motion/utils/ViewSpline;
.source "ViewSpline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/utils/ViewSpline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProgressSet"
.end annotation


# instance fields
.field mNoMethod:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .line 226
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewSpline;-><init>()V

    .line 227
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/utils/ViewSpline$ProgressSet;->mNoMethod:Z

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;F)V
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "t"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "t"
        }
    .end annotation

    .line 231
    const-string/jumbo v0, "unable to setProgress"

    const-string v1, "ViewSpline"

    instance-of v2, p1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-eqz v2, :cond_14

    .line 232
    move-object v0, p1

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/utils/ViewSpline$ProgressSet;->get(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    goto :goto_4d

    .line 234
    :cond_14
    iget-boolean v2, p0, Landroidx/constraintlayout/motion/utils/ViewSpline$ProgressSet;->mNoMethod:Z

    if-eqz v2, :cond_19

    .line 235
    return-void

    .line 237
    :cond_19
    const/4 v2, 0x0

    .line 239
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    :try_start_1b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "setProgress"

    new-array v6, v3, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_2c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1b .. :try_end_2c} :catch_2e

    move-object v2, v3

    .line 242
    goto :goto_31

    .line 240
    :catch_2e
    move-exception v4

    .line 241
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    iput-boolean v3, p0, Landroidx/constraintlayout/motion/utils/ViewSpline$ProgressSet;->mNoMethod:Z

    .line 243
    .end local v4    # "e":Ljava/lang/NoSuchMethodException;
    :goto_31
    if-eqz v2, :cond_4d

    .line 245
    :try_start_33
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/utils/ViewSpline$ProgressSet;->get(F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_42
    .catch Ljava/lang/IllegalAccessException; {:try_start_33 .. :try_end_42} :catch_48
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_33 .. :try_end_42} :catch_43

    goto :goto_4c

    .line 248
    :catch_43
    move-exception v3

    .line 249
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4d

    .line 246
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_48
    move-exception v3

    .line 247
    .local v3, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 250
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :goto_4c
    nop

    .line 254
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :cond_4d
    :goto_4d
    return-void
.end method
