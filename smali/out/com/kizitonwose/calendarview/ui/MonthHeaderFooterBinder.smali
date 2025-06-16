.class public interface abstract Lcom/kizitonwose/calendarview/ui/MonthHeaderFooterBinder;
.super Ljava/lang/Object;
.source "Types.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/kizitonwose/calendarview/ui/ViewContainer;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0003J\u001d\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00028\u00002\u0006\u0010\u0007\u001a\u00020\u0008H&\u00a2\u0006\u0002\u0010\tJ\u0015\u0010\n\u001a\u00028\u00002\u0006\u0010\u000b\u001a\u00020\u000cH&\u00a2\u0006\u0002\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/kizitonwose/calendarview/ui/MonthHeaderFooterBinder;",
        "T",
        "Lcom/kizitonwose/calendarview/ui/ViewContainer;",
        "",
        "bind",
        "",
        "container",
        "month",
        "Lcom/kizitonwose/calendarview/model/CalendarMonth;",
        "(Lcom/kizitonwose/calendarview/ui/ViewContainer;Lcom/kizitonwose/calendarview/model/CalendarMonth;)V",
        "create",
        "view",
        "Landroid/view/View;",
        "(Landroid/view/View;)Lcom/kizitonwose/calendarview/ui/ViewContainer;",
        "com.github.kizitonwose.CalendarView"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# virtual methods
.method public abstract bind(Lcom/kizitonwose/calendarview/ui/ViewContainer;Lcom/kizitonwose/calendarview/model/CalendarMonth;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/kizitonwose/calendarview/model/CalendarMonth;",
            ")V"
        }
    .end annotation
.end method

.method public abstract create(Landroid/view/View;)Lcom/kizitonwose/calendarview/ui/ViewContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation
.end method
