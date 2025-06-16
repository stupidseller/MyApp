.class public final Lcom/kizitonwose/calendarview/CalendarView$Companion;
.super Ljava/lang/Object;
.source "CalendarView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kizitonwose/calendarview/CalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\t\u001a\u00020\u00042\u0008\u0008\u0001\u0010\n\u001a\u00020\u0008R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/kizitonwose/calendarview/CalendarView$Companion;",
        "",
        "()V",
        "SIZE_SQUARE",
        "Lcom/kizitonwose/calendarview/utils/Size;",
        "getSIZE_SQUARE",
        "()Lcom/kizitonwose/calendarview/utils/Size;",
        "SQUARE",
        "",
        "sizeAutoWidth",
        "height",
        "com.github.kizitonwose.CalendarView"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 822
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 822
    invoke-direct {p0}, Lcom/kizitonwose/calendarview/CalendarView$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSIZE_SQUARE()Lcom/kizitonwose/calendarview/utils/Size;
    .registers 2

    .line 830
    invoke-static {}, Lcom/kizitonwose/calendarview/CalendarView;->access$getSIZE_SQUARE$cp()Lcom/kizitonwose/calendarview/utils/Size;

    move-result-object v0

    return-object v0
.end method

.method public final sizeAutoWidth(I)Lcom/kizitonwose/calendarview/utils/Size;
    .registers 4
    .param p1, "height"    # I

    .line 836
    new-instance v0, Lcom/kizitonwose/calendarview/utils/Size;

    const/high16 v1, -0x80000000

    invoke-direct {v0, v1, p1}, Lcom/kizitonwose/calendarview/utils/Size;-><init>(II)V

    return-object v0
.end method
