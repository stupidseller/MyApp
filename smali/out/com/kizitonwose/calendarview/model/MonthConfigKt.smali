.class public final Lcom/kizitonwose/calendarview/model/MonthConfigKt;
.super Ljava/lang/Object;
.source "MonthConfig.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0082\u0004\u00a8\u0006\u0003"
    }
    d2 = {
        "roundDiv",
        "",
        "other",
        "com.github.kizitonwose.CalendarView"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method public static final synthetic access$roundDiv(II)I
    .registers 3
    .param p0, "$this$access_u24roundDiv"    # I
    .param p1, "other"    # I

    .line 1
    invoke-static {p0, p1}, Lcom/kizitonwose/calendarview/model/MonthConfigKt;->roundDiv(II)I

    move-result v0

    return v0
.end method

.method private static final roundDiv(II)I
    .registers 5
    .param p0, "$this$roundDiv"    # I
    .param p1, "other"    # I

    .line 249
    div-int v0, p0, p1

    .line 250
    .local v0, "div":I
    rem-int v1, p0, p1

    .line 252
    .local v1, "rem":I
    if-nez v1, :cond_8

    move v2, v0

    goto :goto_a

    :cond_8
    add-int/lit8 v2, v0, 0x1

    :goto_a
    return v2
.end method
