.class Landroidx/core/graphics/BitmapCompat$Api29Impl;
.super Ljava/lang/Object;
.source "BitmapCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/BitmapCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api29Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    return-void
.end method

.method static setPaintBlendMode(Landroid/graphics/Paint;)V
    .registers 2
    .param p0, "paint"    # Landroid/graphics/Paint;

    .line 416
    sget-object v0, Landroid/graphics/BlendMode;->SRC:Landroid/graphics/BlendMode;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    .line 417
    return-void
.end method
