.class public abstract synthetic La/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static synthetic a(I)I
    .registers 1

    if-eqz p0, :cond_5

    add-int/lit8 p0, p0, -0x1

    return p0

    :cond_5
    const/4 p0, 0x0

    throw p0
.end method
