.class public Lcom/kizitonwose/calendarview/CalendarView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "CalendarView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kizitonwose/calendarview/CalendarView$MonthRangeDiffCallback;,
        Lcom/kizitonwose/calendarview/CalendarView$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCalendarView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CalendarView.kt\ncom/kizitonwose/calendarview/CalendarView\n+ 2 Context.kt\nandroidx/core/content/ContextKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,839:1\n59#2,2:840\n1#3:842\n*E\n*S KotlinDebug\n*F\n+ 1 CalendarView.kt\ncom/kizitonwose/calendarview/CalendarView\n*L\n262#1,2:840\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00e1\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r*\u0001~\u0008\u0016\u0018\u0000 \u00c8\u00012\u00020\u0001:\u0004\u00c8\u0001\u00c9\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0017\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007B\u001f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\n\u0010\u008b\u0001\u001a\u0005\u0018\u00010\u008c\u0001J\t\u0010\u008d\u0001\u001a\u0004\u0018\u00010cJ\n\u0010\u008e\u0001\u001a\u0005\u0018\u00010\u008c\u0001J\t\u0010\u008f\u0001\u001a\u0004\u0018\u00010cJ\u0013\u0010\u0090\u0001\u001a\u00020d2\u0008\u0010\u0091\u0001\u001a\u00030\u0092\u0001H\u0002J\u001d\u0010\u0093\u0001\u001a\u00020d2\u0008\u0010\u0094\u0001\u001a\u00030\u0092\u00012\u0008\u0010\u0095\u0001\u001a\u00030\u0096\u0001H\u0002J\u0013\u0010\u0097\u0001\u001a\u00030\u0092\u00012\u0007\u0010\u0098\u0001\u001a\u00020\u0017H\u0002J!\u0010\u0099\u0001\u001a\u0011\u0012\u0005\u0012\u00030\u0092\u0001\u0012\u0005\u0012\u00030\u0096\u00010\u009a\u00012\u0007\u0010\u0098\u0001\u001a\u00020\u0017H\u0002J#\u0010\u009b\u0001\u001a\u00020d2\u0007\u0010\u009c\u0001\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\t2\u0007\u0010\u009d\u0001\u001a\u00020\tH\u0002J\t\u0010\u009e\u0001\u001a\u00020dH\u0002J\u0007\u0010\u009f\u0001\u001a\u00020dJ\u001f\u0010\u00a0\u0001\u001a\u00020d2\u0008\u0010\u00a1\u0001\u001a\u00030\u00a2\u00012\n\u0008\u0002\u0010\u00a3\u0001\u001a\u00030\u00a4\u0001H\u0007J\u0011\u0010\u00a5\u0001\u001a\u00020d2\u0008\u0010\u00a6\u0001\u001a\u00030\u008c\u0001J\u0010\u0010\u00a7\u0001\u001a\u00020d2\u0007\u0010\u00a8\u0001\u001a\u00020+J\t\u0010\u00a9\u0001\u001a\u00020dH\u0014J\u001b\u0010\u00aa\u0001\u001a\u00020d2\u0007\u0010\u00ab\u0001\u001a\u00020\t2\u0007\u0010\u00ac\u0001\u001a\u00020\tH\u0014J\t\u0010\u00ad\u0001\u001a\u00020+H\u0002J\t\u0010\u00ae\u0001\u001a\u00020-H\u0002J\t\u0010\u00af\u0001\u001a\u00020+H\u0002J\u001f\u0010\u00b0\u0001\u001a\u00020d2\u0008\u0010\u00a1\u0001\u001a\u00030\u00a2\u00012\n\u0008\u0002\u0010\u00a3\u0001\u001a\u00030\u00a4\u0001H\u0007J\u0011\u0010\u00b1\u0001\u001a\u00020d2\u0008\u0010\u00a6\u0001\u001a\u00030\u008c\u0001J\u0010\u0010\u00b2\u0001\u001a\u00020d2\u0007\u0010\u00a8\u0001\u001a\u00020+J3\u0010\u00b3\u0001\u001a\u00020d2\t\u0008\u0003\u0010\u00b4\u0001\u001a\u00020\t2\t\u0008\u0003\u0010\u00b5\u0001\u001a\u00020\t2\t\u0008\u0003\u0010\u00b6\u0001\u001a\u00020\t2\t\u0008\u0003\u0010\u00b7\u0001\u001a\u00020\tJ3\u0010\u00b8\u0001\u001a\u00020d2\t\u0008\u0003\u0010\u00b4\u0001\u001a\u00020\t2\t\u0008\u0003\u0010\u00b5\u0001\u001a\u00020\t2\t\u0008\u0003\u0010\u00b6\u0001\u001a\u00020\t2\t\u0008\u0003\u0010\u00b7\u0001\u001a\u00020\tJ \u0010\u00b9\u0001\u001a\u00020d2\u0007\u0010\u0087\u0001\u001a\u00020+2\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020-J=\u0010\u00ba\u0001\u001a\u00020d2\u0007\u0010\u0087\u0001\u001a\u00020+2\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020-2\u0019\u0008\u0002\u0010\u00bb\u0001\u001a\u0012\u0012\u0004\u0012\u00020d\u0018\u00010\u00bc\u0001j\u0005\u0018\u0001`\u00bd\u0001H\u0007J\u001f\u0010\u00be\u0001\u001a\u00020d2\u0008\u0010\u00a1\u0001\u001a\u00030\u00a2\u00012\n\u0008\u0002\u0010\u00a3\u0001\u001a\u00030\u00a4\u0001H\u0007J\u0011\u0010\u00bf\u0001\u001a\u00020d2\u0008\u0010\u00a6\u0001\u001a\u00030\u008c\u0001J\u0010\u0010\u00c0\u0001\u001a\u00020d2\u0007\u0010\u00a8\u0001\u001a\u00020+J\u0017\u0010\u00c1\u0001\u001a\u00020d2\u000c\u0008\u0002\u0010\u00c2\u0001\u001a\u0005\u0018\u00010\u0092\u0001H\u0002J\t\u0010\u00c3\u0001\u001a\u00020dH\u0002J/\u0010\u00c4\u0001\u001a\u00020d2\u0008\u0008\u0002\u00104\u001a\u0002032\u0008\u0008\u0002\u0010v\u001a\u00020u2\u0008\u0008\u0002\u0010>\u001a\u00020\t2\u0008\u0008\u0002\u0010.\u001a\u00020\u000cJJ\u0010\u00c5\u0001\u001a\u00020d2\u0008\u0008\u0002\u00104\u001a\u0002032\u0008\u0008\u0002\u0010v\u001a\u00020u2\u0008\u0008\u0002\u0010>\u001a\u00020\t2\u0008\u0008\u0002\u0010.\u001a\u00020\u000c2\u0019\u0008\u0002\u0010\u00bb\u0001\u001a\u0012\u0012\u0004\u0012\u00020d\u0018\u00010\u00bc\u0001j\u0005\u0018\u0001`\u00bd\u0001J\u001e\u0010\u00c6\u0001\u001a\u00020d2\t\u0008\u0002\u0010\u0087\u0001\u001a\u00020+2\u0008\u0008\u0002\u0010*\u001a\u00020+H\u0007J9\u0010\u00c7\u0001\u001a\u00020d2\t\u0008\u0002\u0010\u0087\u0001\u001a\u00020+2\u0008\u0008\u0002\u0010*\u001a\u00020+2\u0019\u0008\u0002\u0010\u00bb\u0001\u001a\u0012\u0012\u0004\u0012\u00020d\u0018\u00010\u00bc\u0001j\u0005\u0018\u0001`\u00bd\u0001H\u0007R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u00020\u000f8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\u00138BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R0\u0010\u001a\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00192\u000c\u0010\u0018\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0019@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR$\u0010 \u001a\u00020\u001f2\u0006\u0010\u0018\u001a\u00020\u001f@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R$\u0010%\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\t@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R\u0010\u0010*\u001a\u0004\u0018\u00010+X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010,\u001a\u0004\u0018\u00010-X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010.\u001a\u00020\u000c2\u0006\u0010\u0018\u001a\u00020\u000c@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102R$\u00104\u001a\u0002032\u0006\u0010\u0018\u001a\u000203@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108R\u000e\u00109\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010:\u001a\u00020\u000c8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008;\u00100R\u0014\u0010<\u001a\u00020\u000c8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008=\u00100R$\u0010>\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\t@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008?\u0010\'\"\u0004\u0008@\u0010)R0\u0010B\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010A2\u000c\u0010\u0018\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010A@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008C\u0010D\"\u0004\u0008E\u0010FR$\u0010G\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\t@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008H\u0010\'\"\u0004\u0008I\u0010)R0\u0010J\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010A2\u000c\u0010\u0018\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010A@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008K\u0010D\"\u0004\u0008L\u0010FR$\u0010M\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\t@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008N\u0010\'\"\u0004\u0008O\u0010)R \u0010Q\u001a\u00020\t2\u0006\u0010P\u001a\u00020\t8\u0006@BX\u0087\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008R\u0010\'R \u0010S\u001a\u00020\t2\u0006\u0010P\u001a\u00020\t8\u0006@BX\u0087\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008T\u0010\'R \u0010U\u001a\u00020\t2\u0006\u0010P\u001a\u00020\t8\u0006@BX\u0087\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008V\u0010\'R \u0010W\u001a\u00020\t2\u0006\u0010P\u001a\u00020\t8\u0006@BX\u0087\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008X\u0010\'R \u0010Y\u001a\u00020\t2\u0006\u0010P\u001a\u00020\t8\u0006@BX\u0087\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008Z\u0010\'R \u0010[\u001a\u00020\t2\u0006\u0010P\u001a\u00020\t8\u0006@BX\u0087\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\\\u0010\'R \u0010]\u001a\u00020\t2\u0006\u0010P\u001a\u00020\t8\u0006@BX\u0087\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008^\u0010\'R \u0010_\u001a\u00020\t2\u0006\u0010P\u001a\u00020\t8\u0006@BX\u0087\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008`\u0010\'R.\u0010a\u001a\u0016\u0012\u0004\u0012\u00020c\u0012\u0004\u0012\u00020d\u0018\u00010bj\u0004\u0018\u0001`eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008f\u0010g\"\u0004\u0008h\u0010iR(\u0010k\u001a\u0004\u0018\u00010j2\u0008\u0010\u0018\u001a\u0004\u0018\u00010j@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008l\u0010m\"\u0004\u0008n\u0010oR*\u0010p\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\t@FX\u0086\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008q\u0010r\u001a\u0004\u0008s\u0010\'\"\u0004\u0008t\u0010)R$\u0010v\u001a\u00020u2\u0006\u0010\u0018\u001a\u00020u@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008w\u0010x\"\u0004\u0008y\u0010zR\u000e\u0010{\u001a\u00020|X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010}\u001a\u00020~X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u007fR+\u0010\u0081\u0001\u001a\u00030\u0080\u00012\u0007\u0010\u0018\u001a\u00030\u0080\u0001@FX\u0086\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u0082\u0001\u0010\u0083\u0001\"\u0006\u0008\u0084\u0001\u0010\u0085\u0001R\u000f\u0010\u0086\u0001\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0087\u0001\u001a\u0004\u0018\u00010+X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0088\u0001\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0089\u0001\u0010\'\"\u0005\u0008\u008a\u0001\u0010)\u00a8\u0006\u00ca\u0001"
    }
    d2 = {
        "Lcom/kizitonwose/calendarview/CalendarView;",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "autoSize",
        "",
        "autoSizeHeight",
        "calendarAdapter",
        "Lcom/kizitonwose/calendarview/ui/CalendarAdapter;",
        "getCalendarAdapter",
        "()Lcom/kizitonwose/calendarview/ui/CalendarAdapter;",
        "calendarLayoutManager",
        "Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;",
        "getCalendarLayoutManager",
        "()Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;",
        "configJob",
        "Lkotlinx/coroutines/Job;",
        "value",
        "Lcom/kizitonwose/calendarview/ui/DayBinder;",
        "dayBinder",
        "getDayBinder",
        "()Lcom/kizitonwose/calendarview/ui/DayBinder;",
        "setDayBinder",
        "(Lcom/kizitonwose/calendarview/ui/DayBinder;)V",
        "Lcom/kizitonwose/calendarview/utils/Size;",
        "daySize",
        "getDaySize",
        "()Lcom/kizitonwose/calendarview/utils/Size;",
        "setDaySize",
        "(Lcom/kizitonwose/calendarview/utils/Size;)V",
        "dayViewResource",
        "getDayViewResource",
        "()I",
        "setDayViewResource",
        "(I)V",
        "endMonth",
        "Ljava/time/YearMonth;",
        "firstDayOfWeek",
        "Ljava/time/DayOfWeek;",
        "hasBoundaries",
        "getHasBoundaries",
        "()Z",
        "setHasBoundaries",
        "(Z)V",
        "Lcom/kizitonwose/calendarview/model/InDateStyle;",
        "inDateStyle",
        "getInDateStyle",
        "()Lcom/kizitonwose/calendarview/model/InDateStyle;",
        "setInDateStyle",
        "(Lcom/kizitonwose/calendarview/model/InDateStyle;)V",
        "internalConfigUpdate",
        "isHorizontal",
        "isHorizontal$com_github_kizitonwose_CalendarView",
        "isVertical",
        "isVertical$com_github_kizitonwose_CalendarView",
        "maxRowCount",
        "getMaxRowCount",
        "setMaxRowCount",
        "Lcom/kizitonwose/calendarview/ui/MonthHeaderFooterBinder;",
        "monthFooterBinder",
        "getMonthFooterBinder",
        "()Lcom/kizitonwose/calendarview/ui/MonthHeaderFooterBinder;",
        "setMonthFooterBinder",
        "(Lcom/kizitonwose/calendarview/ui/MonthHeaderFooterBinder;)V",
        "monthFooterResource",
        "getMonthFooterResource",
        "setMonthFooterResource",
        "monthHeaderBinder",
        "getMonthHeaderBinder",
        "setMonthHeaderBinder",
        "monthHeaderResource",
        "getMonthHeaderResource",
        "setMonthHeaderResource",
        "<set-?>",
        "monthMarginBottom",
        "getMonthMarginBottom",
        "monthMarginEnd",
        "getMonthMarginEnd",
        "monthMarginStart",
        "getMonthMarginStart",
        "monthMarginTop",
        "getMonthMarginTop",
        "monthPaddingBottom",
        "getMonthPaddingBottom",
        "monthPaddingEnd",
        "getMonthPaddingEnd",
        "monthPaddingStart",
        "getMonthPaddingStart",
        "monthPaddingTop",
        "getMonthPaddingTop",
        "monthScrollListener",
        "Lkotlin/Function1;",
        "Lcom/kizitonwose/calendarview/model/CalendarMonth;",
        "",
        "Lcom/kizitonwose/calendarview/ui/MonthScrollListener;",
        "getMonthScrollListener",
        "()Lkotlin/jvm/functions/Function1;",
        "setMonthScrollListener",
        "(Lkotlin/jvm/functions/Function1;)V",
        "",
        "monthViewClass",
        "getMonthViewClass",
        "()Ljava/lang/String;",
        "setMonthViewClass",
        "(Ljava/lang/String;)V",
        "orientation",
        "getOrientation$annotations",
        "()V",
        "getOrientation",
        "setOrientation",
        "Lcom/kizitonwose/calendarview/model/OutDateStyle;",
        "outDateStyle",
        "getOutDateStyle",
        "()Lcom/kizitonwose/calendarview/model/OutDateStyle;",
        "setOutDateStyle",
        "(Lcom/kizitonwose/calendarview/model/OutDateStyle;)V",
        "pagerSnapHelper",
        "Lcom/kizitonwose/calendarview/ui/CalenderPageSnapHelper;",
        "scrollListenerInternal",
        "com/kizitonwose/calendarview/CalendarView$scrollListenerInternal$1",
        "Lcom/kizitonwose/calendarview/CalendarView$scrollListenerInternal$1;",
        "Lcom/kizitonwose/calendarview/model/ScrollMode;",
        "scrollMode",
        "getScrollMode",
        "()Lcom/kizitonwose/calendarview/model/ScrollMode;",
        "setScrollMode",
        "(Lcom/kizitonwose/calendarview/model/ScrollMode;)V",
        "sizedInternally",
        "startMonth",
        "wrappedPageHeightAnimationDuration",
        "getWrappedPageHeightAnimationDuration",
        "setWrappedPageHeightAnimationDuration",
        "findFirstVisibleDay",
        "Lcom/kizitonwose/calendarview/model/CalendarDay;",
        "findFirstVisibleMonth",
        "findLastVisibleDay",
        "findLastVisibleMonth",
        "finishSetup",
        "monthConfig",
        "Lcom/kizitonwose/calendarview/model/MonthConfig;",
        "finishUpdateMonthRange",
        "newConfig",
        "diffResult",
        "Landroidx/recyclerview/widget/DiffUtil$DiffResult;",
        "generateMonthConfig",
        "job",
        "getMonthUpdateData",
        "Lkotlin/Pair;",
        "init",
        "attributeSet",
        "defStyleRes",
        "invalidateViewHolders",
        "notifyCalendarChanged",
        "notifyDateChanged",
        "date",
        "Ljava/time/LocalDate;",
        "owner",
        "Lcom/kizitonwose/calendarview/model/DayOwner;",
        "notifyDayChanged",
        "day",
        "notifyMonthChanged",
        "month",
        "onDetachedFromWindow",
        "onMeasure",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "requireEndMonth",
        "requireFirstDayOfWeek",
        "requireStartMonth",
        "scrollToDate",
        "scrollToDay",
        "scrollToMonth",
        "setMonthMargins",
        "start",
        "top",
        "end",
        "bottom",
        "setMonthPadding",
        "setup",
        "setupAsync",
        "completion",
        "Lkotlin/Function0;",
        "Lcom/kizitonwose/calendarview/Completion;",
        "smoothScrollToDate",
        "smoothScrollToDay",
        "smoothScrollToMonth",
        "updateAdapterMonthConfig",
        "config",
        "updateAdapterViewConfig",
        "updateMonthConfiguration",
        "updateMonthConfigurationAsync",
        "updateMonthRange",
        "updateMonthRangeAsync",
        "Companion",
        "MonthRangeDiffCallback",
        "com.github.kizitonwose.CalendarView"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final Companion:Lcom/kizitonwose/calendarview/CalendarView$Companion;

.field private static final SIZE_SQUARE:Lcom/kizitonwose/calendarview/utils/Size;

.field private static final SQUARE:I = -0x80000000


# instance fields
.field private autoSize:Z

.field private autoSizeHeight:I

.field private configJob:Lkotlinx/coroutines/Job;

.field private dayBinder:Lcom/kizitonwose/calendarview/ui/DayBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kizitonwose/calendarview/ui/DayBinder<",
            "*>;"
        }
    .end annotation
.end field

.field private daySize:Lcom/kizitonwose/calendarview/utils/Size;

.field private dayViewResource:I

.field private endMonth:Ljava/time/YearMonth;

.field private firstDayOfWeek:Ljava/time/DayOfWeek;

.field private hasBoundaries:Z

.field private inDateStyle:Lcom/kizitonwose/calendarview/model/InDateStyle;

.field private internalConfigUpdate:Z

.field private maxRowCount:I

.field private monthFooterBinder:Lcom/kizitonwose/calendarview/ui/MonthHeaderFooterBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kizitonwose/calendarview/ui/MonthHeaderFooterBinder<",
            "*>;"
        }
    .end annotation
.end field

.field private monthFooterResource:I

.field private monthHeaderBinder:Lcom/kizitonwose/calendarview/ui/MonthHeaderFooterBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kizitonwose/calendarview/ui/MonthHeaderFooterBinder<",
            "*>;"
        }
    .end annotation
.end field

.field private monthHeaderResource:I

.field private monthMarginBottom:I

.field private monthMarginEnd:I

.field private monthMarginStart:I

.field private monthMarginTop:I

.field private monthPaddingBottom:I

.field private monthPaddingEnd:I

.field private monthPaddingStart:I

.field private monthPaddingTop:I

.field private monthScrollListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/kizitonwose/calendarview/model/CalendarMonth;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private monthViewClass:Ljava/lang/String;

.field private orientation:I

.field private outDateStyle:Lcom/kizitonwose/calendarview/model/OutDateStyle;

.field private final pagerSnapHelper:Lcom/kizitonwose/calendarview/ui/CalenderPageSnapHelper;

.field private final scrollListenerInternal:Lcom/kizitonwose/calendarview/CalendarView$scrollListenerInternal$1;

.field private scrollMode:Lcom/kizitonwose/calendarview/model/ScrollMode;

.field private sizedInternally:Z

.field private startMonth:Ljava/time/YearMonth;

.field private wrappedPageHeightAnimationDuration:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/kizitonwose/calendarview/CalendarView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kizitonwose/calendarview/CalendarView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kizitonwose/calendarview/CalendarView;->Companion:Lcom/kizitonwose/calendarview/CalendarView$Companion;

    .line 830
    new-instance v0, Lcom/kizitonwose/calendarview/utils/Size;

    const/high16 v1, -0x80000000

    invoke-direct {v0, v1, v1}, Lcom/kizitonwose/calendarview/utils/Size;-><init>(II)V

    sput-object v0, Lcom/kizitonwose/calendarview/CalendarView;->SIZE_SQUARE:Lcom/kizitonwose/calendarview/utils/Size;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 120
    const/4 v0, 0x1

    iput v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->orientation:I

    .line 133
    sget-object v1, Lcom/kizitonwose/calendarview/model/ScrollMode;->CONTINUOUS:Lcom/kizitonwose/calendarview/model/ScrollMode;

    iput-object v1, p0, Lcom/kizitonwose/calendarview/CalendarView;->scrollMode:Lcom/kizitonwose/calendarview/model/ScrollMode;

    .line 151
    sget-object v1, Lcom/kizitonwose/calendarview/model/InDateStyle;->ALL_MONTHS:Lcom/kizitonwose/calendarview/model/InDateStyle;

    iput-object v1, p0, Lcom/kizitonwose/calendarview/CalendarView;->inDateStyle:Lcom/kizitonwose/calendarview/model/InDateStyle;

    .line 171
    sget-object v1, Lcom/kizitonwose/calendarview/model/OutDateStyle;->END_OF_ROW:Lcom/kizitonwose/calendarview/model/OutDateStyle;

    iput-object v1, p0, Lcom/kizitonwose/calendarview/CalendarView;->outDateStyle:Lcom/kizitonwose/calendarview/model/OutDateStyle;

    .line 188
    const/4 v1, 0x6

    iput v1, p0, Lcom/kizitonwose/calendarview/CalendarView;->maxRowCount:I

    .line 213
    iput-boolean v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->hasBoundaries:Z

    .line 228
    const/16 v1, 0xc8

    iput v1, p0, Lcom/kizitonwose/calendarview/CalendarView;->wrappedPageHeightAnimationDuration:I

    .line 230
    new-instance v1, Lcom/kizitonwose/calendarview/ui/CalenderPageSnapHelper;

    invoke-direct {v1}, Lcom/kizitonwose/calendarview/ui/CalenderPageSnapHelper;-><init>()V

    iput-object v1, p0, Lcom/kizitonwose/calendarview/CalendarView;->pagerSnapHelper:Lcom/kizitonwose/calendarview/ui/CalenderPageSnapHelper;

    .line 236
    iput-boolean v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->autoSize:Z

    .line 237
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->autoSizeHeight:I

    .line 313
    sget-object v0, Lcom/kizitonwose/calendarview/CalendarView;->SIZE_SQUARE:Lcom/kizitonwose/calendarview/utils/Size;

    iput-object v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->daySize:Lcom/kizitonwose/calendarview/utils/Size;

    .line 645
    new-instance v0, Lcom/kizitonwose/calendarview/CalendarView$scrollListenerInternal$1;

    invoke-direct {v0, p0}, Lcom/kizitonwose/calendarview/CalendarView$scrollListenerInternal$1;-><init>(Lcom/kizitonwose/calendarview/CalendarView;)V

    iput-object v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->scrollListenerInternal:Lcom/kizitonwose/calendarview/CalendarView$scrollListenerInternal$1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 120
    const/4 v0, 0x1

    iput v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->orientation:I

    .line 133
    sget-object v1, Lcom/kizitonwose/calendarview/model/ScrollMode;->CONTINUOUS:Lcom/kizitonwose/calendarview/model/ScrollMode;

    iput-object v1, p0, Lcom/kizitonwose/calendarview/CalendarView;->scrollMode:Lcom/kizitonwose/calendarview/model/ScrollMode;

    .line 151
    sget-object v1, Lcom/kizitonwose/calendarview/model/InDateStyle;->ALL_MONTHS:Lcom/kizitonwose/calendarview/model/InDateStyle;

    iput-object v1, p0, Lcom/kizitonwose/calendarview/CalendarView;->inDateStyle:Lcom/kizitonwose/calendarview/model/InDateStyle;

    .line 171
    sget-object v1, Lcom/kizitonwose/calendarview/model/OutDateStyle;->END_OF_ROW:Lcom/kizitonwose/calendarview/model/OutDateStyle;

    iput-object v1, p0, Lcom/kizitonwose/calendarview/CalendarView;->outDateStyle:Lcom/kizitonwose/calendarview/model/OutDateStyle;

    .line 188
    const/4 v1, 0x6

    iput v1, p0, Lcom/kizitonwose/calendarview/CalendarView;->maxRowCount:I

    .line 213
    iput-boolean v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->hasBoundaries:Z

    .line 228
    const/16 v1, 0xc8

    iput v1, p0, Lcom/kizitonwose/calendarview/CalendarView;->wrappedPageHeightAnimationDuration:I

    .line 230
    new-instance v1, Lcom/kizitonwose/calendarview/ui/CalenderPageSnapHelper;

    invoke-direct {v1}, Lcom/kizitonwose/calendarview/ui/CalenderPageSnapHelper;-><init>()V

    iput-object v1, p0, Lcom/kizitonwose/calendarview/CalendarView;->pagerSnapHelper:Lcom/kizitonwose/calendarview/ui/CalenderPageSnapHelper;

    .line 236
    iput-boolean v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->autoSize:Z

    .line 237
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->autoSizeHeight:I

    .line 313
    sget-object v0, Lcom/kizitonwose/calendarview/CalendarView;->SIZE_SQUARE:Lcom/kizitonwose/calendarview/utils/Size;

    iput-object v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->daySize:Lcom/kizitonwose/calendarview/utils/Size;

    .line 645
    new-instance v0, Lcom/kizitonwose/calendarview/CalendarView$scrollListenerInternal$1;

    invoke-direct {v0, p0}, Lcom/kizitonwose/calendarview/CalendarView$scrollListenerInternal$1;-><init>(Lcom/kizitonwose/calendarview/CalendarView;)V

    iput-object v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->scrollListenerInternal:Lcom/kizitonwose/calendarview/CalendarView$scrollListenerInternal$1;

    .line 252
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, v0}, Lcom/kizitonwose/calendarview/CalendarView;->init(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 120
    const/4 v0, 0x1

    iput v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->orientation:I

    .line 133
    sget-object v1, Lcom/kizitonwose/calendarview/model/ScrollMode;->CONTINUOUS:Lcom/kizitonwose/calendarview/model/ScrollMode;

    iput-object v1, p0, Lcom/kizitonwose/calendarview/CalendarView;->scrollMode:Lcom/kizitonwose/calendarview/model/ScrollMode;

    .line 151
    sget-object v1, Lcom/kizitonwose/calendarview/model/InDateStyle;->ALL_MONTHS:Lcom/kizitonwose/calendarview/model/InDateStyle;

    iput-object v1, p0, Lcom/kizitonwose/calendarview/CalendarView;->inDateStyle:Lcom/kizitonwose/calendarview/model/InDateStyle;

    .line 171
    sget-object v1, Lcom/kizitonwose/calendarview/model/OutDateStyle;->END_OF_ROW:Lcom/kizitonwose/calendarview/model/OutDateStyle;

    iput-object v1, p0, Lcom/kizitonwose/calendarview/CalendarView;->outDateStyle:Lcom/kizitonwose/calendarview/model/OutDateStyle;

    .line 188
    const/4 v1, 0x6

    iput v1, p0, Lcom/kizitonwose/calendarview/CalendarView;->maxRowCount:I

    .line 213
    iput-boolean v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->hasBoundaries:Z

    .line 228
    const/16 v1, 0xc8

    iput v1, p0, Lcom/kizitonwose/calendarview/CalendarView;->wrappedPageHeightAnimationDuration:I

    .line 230
    new-instance v1, Lcom/kizitonwose/calendarview/ui/CalenderPageSnapHelper;

    invoke-direct {v1}, Lcom/kizitonwose/calendarview/ui/CalenderPageSnapHelper;-><init>()V

    iput-object v1, p0, Lcom/kizitonwose/calendarview/CalendarView;->pagerSnapHelper:Lcom/kizitonwose/calendarview/ui/CalenderPageSnapHelper;

    .line 236
    iput-boolean v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->autoSize:Z

    .line 237
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->autoSizeHeight:I

    .line 313
    sget-object v0, Lcom/kizitonwose/calendarview/CalendarView;->SIZE_SQUARE:Lcom/kizitonwose/calendarview/utils/Size;

    iput-object v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->daySize:Lcom/kizitonwose/calendarview/utils/Size;

    .line 645
    new-instance v0, Lcom/kizitonwose/calendarview/CalendarView$scrollListenerInternal$1;

    invoke-direct {v0, p0}, Lcom/kizitonwose/calendarview/CalendarView$scrollListenerInternal$1;-><init>(Lcom/kizitonwose/calendarview/CalendarView;)V

    iput-object v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->scrollListenerInternal:Lcom/kizitonwose/calendarview/CalendarView$scrollListenerInternal$1;

    .line 256
    invoke-direct {p0, p2, p3, p3}, Lcom/kizitonwose/calendarview/CalendarView;->init(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static final synthetic access$finishSetup(Lcom/kizitonwose/calendarview/CalendarView;Lcom/kizitonwose/calendarview/model/MonthConfig;)V
    .registers 2
    .param p0, "$this"    # Lcom/kizitonwose/calendarview/CalendarView;
    .param p1, "monthConfig"    # Lcom/kizitonwose/calendarview/model/MonthConfig;

    .line 26
    invoke-direct {p0, p1}, Lcom/kizitonwose/calendarview/CalendarView;->finishSetup(Lcom/kizitonwose/calendarview/model/MonthConfig;)V

    return-void
.end method

.method public static final synthetic access$finishUpdateMonthRange(Lcom/kizitonwose/calendarview/CalendarView;Lcom/kizitonwose/calendarview/model/MonthConfig;Landroidx/recyclerview/widget/DiffUtil$DiffResult;)V
    .registers 3
    .param p0, "$this"    # Lcom/kizitonwose/calendarview/CalendarView;
    .param p1, "newConfig"    # Lcom/kizitonwose/calendarview/model/MonthConfig;
    .param p2, "diffResult"    # Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/kizitonwose/calendarview/CalendarView;->finishUpdateMonthRange(Lcom/kizitonwose/calendarview/model/MonthConfig;Landroidx/recyclerview/widget/DiffUtil$DiffResult;)V

    return-void
.end method

.method public static final synthetic access$generateMonthConfig(Lcom/kizitonwose/calendarview/CalendarView;Lkotlinx/coroutines/Job;)Lcom/kizitonwose/calendarview/model/MonthConfig;
    .registers 3
    .param p0, "$this"    # Lcom/kizitonwose/calendarview/CalendarView;
    .param p1, "job"    # Lkotlinx/coroutines/Job;

    .line 26
    invoke-direct {p0, p1}, Lcom/kizitonwose/calendarview/CalendarView;->generateMonthConfig(Lkotlinx/coroutines/Job;)Lcom/kizitonwose/calendarview/model/MonthConfig;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getCalendarAdapter$p(Lcom/kizitonwose/calendarview/CalendarView;)Lcom/kizitonwose/calendarview/ui/CalendarAdapter;
    .registers 2
    .param p0, "$this"    # Lcom/kizitonwose/calendarview/CalendarView;

    .line 26
    invoke-direct {p0}, Lcom/kizitonwose/calendarview/CalendarView;->getCalendarAdapter()Lcom/kizitonwose/calendarview/ui/CalendarAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getMonthUpdateData(Lcom/kizitonwose/calendarview/CalendarView;Lkotlinx/coroutines/Job;)Lkotlin/Pair;
    .registers 3
    .param p0, "$this"    # Lcom/kizitonwose/calendarview/CalendarView;
    .param p1, "job"    # Lkotlinx/coroutines/Job;

    .line 26
    invoke-direct {p0, p1}, Lcom/kizitonwose/calendarview/CalendarView;->getMonthUpdateData(Lkotlinx/coroutines/Job;)Lkotlin/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getSIZE_SQUARE$cp()Lcom/kizitonwose/calendarview/utils/Size;
    .registers 1

    .line 26
    sget-object v0, Lcom/kizitonwose/calendarview/CalendarView;->SIZE_SQUARE:Lcom/kizitonwose/calendarview/utils/Size;

    return-object v0
.end method

.method public static final synthetic access$updateAdapterMonthConfig(Lcom/kizitonwose/calendarview/CalendarView;Lcom/kizitonwose/calendarview/model/MonthConfig;)V
    .registers 2
    .param p0, "$this"    # Lcom/kizitonwose/calendarview/CalendarView;
    .param p1, "config"    # Lcom/kizitonwose/calendarview/model/MonthConfig;

    .line 26
    invoke-direct {p0, p1}, Lcom/kizitonwose/calendarview/CalendarView;->updateAdapterMonthConfig(Lcom/kizitonwose/calendarview/model/MonthConfig;)V

    return-void
.end method

.method private final finishSetup(Lcom/kizitonwose/calendarview/model/MonthConfig;)V
    .registers 8
    .param p1, "monthConfig"    # Lcom/kizitonwose/calendarview/model/MonthConfig;

    .line 713
    iget-object v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->scrollListenerInternal:Lcom/kizitonwose/calendarview/CalendarView$scrollListenerInternal$1;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p0, v0}, Lcom/kizitonwose/calendarview/CalendarView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 714
    iget-object v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->scrollListenerInternal:Lcom/kizitonwose/calendarview/CalendarView$scrollListenerInternal$1;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p0, v0}, Lcom/kizitonwose/calendarview/CalendarView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 716
    new-instance v0, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;

    iget v1, p0, Lcom/kizitonwose/calendarview/CalendarView;->orientation:I

    invoke-direct {v0, p0, v1}, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;-><init>(Lcom/kizitonwose/calendarview/CalendarView;I)V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0, v0}, Lcom/kizitonwose/calendarview/CalendarView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 717
    new-instance v0, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;

    .line 718
    nop

    .line 719
    new-instance v1, Lcom/kizitonwose/calendarview/ui/ViewConfig;

    iget v2, p0, Lcom/kizitonwose/calendarview/CalendarView;->dayViewResource:I

    iget v3, p0, Lcom/kizitonwose/calendarview/CalendarView;->monthHeaderResource:I

    iget v4, p0, Lcom/kizitonwose/calendarview/CalendarView;->monthFooterResource:I

    iget-object v5, p0, Lcom/kizitonwose/calendarview/CalendarView;->monthViewClass:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kizitonwose/calendarview/ui/ViewConfig;-><init>(IIILjava/lang/String;)V

    .line 720
    nop

    .line 717
    invoke-direct {v0, p0, v1, p1}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;-><init>(Lcom/kizitonwose/calendarview/CalendarView;Lcom/kizitonwose/calendarview/ui/ViewConfig;Lcom/kizitonwose/calendarview/model/MonthConfig;)V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p0, v0}, Lcom/kizitonwose/calendarview/CalendarView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 722
    return-void
.end method

.method private final finishUpdateMonthRange(Lcom/kizitonwose/calendarview/model/MonthConfig;Landroidx/recyclerview/widget/DiffUtil$DiffResult;)V
    .registers 4
    .param p1, "newConfig"    # Lcom/kizitonwose/calendarview/model/MonthConfig;
    .param p2, "diffResult"    # Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    .line 772
    invoke-direct {p0}, Lcom/kizitonwose/calendarview/CalendarView;->getCalendarAdapter()Lcom/kizitonwose/calendarview/ui/CalendarAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->setMonthConfig$com_github_kizitonwose_CalendarView(Lcom/kizitonwose/calendarview/model/MonthConfig;)V

    .line 773
    invoke-direct {p0}, Lcom/kizitonwose/calendarview/CalendarView;->getCalendarAdapter()Lcom/kizitonwose/calendarview/ui/CalendarAdapter;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 774
    return-void
.end method

.method private final generateMonthConfig(Lkotlinx/coroutines/Job;)Lcom/kizitonwose/calendarview/model/MonthConfig;
    .registers 12
    .param p1, "job"    # Lkotlinx/coroutines/Job;

    .line 798
    new-instance v9, Lcom/kizitonwose/calendarview/model/MonthConfig;

    .line 799
    iget-object v1, p0, Lcom/kizitonwose/calendarview/CalendarView;->outDateStyle:Lcom/kizitonwose/calendarview/model/OutDateStyle;

    .line 800
    iget-object v2, p0, Lcom/kizitonwose/calendarview/CalendarView;->inDateStyle:Lcom/kizitonwose/calendarview/model/InDateStyle;

    .line 801
    iget v3, p0, Lcom/kizitonwose/calendarview/CalendarView;->maxRowCount:I

    .line 802
    invoke-direct {p0}, Lcom/kizitonwose/calendarview/CalendarView;->requireStartMonth()Ljava/time/YearMonth;

    move-result-object v4

    .line 803
    invoke-direct {p0}, Lcom/kizitonwose/calendarview/CalendarView;->requireEndMonth()Ljava/time/YearMonth;

    move-result-object v5

    .line 804
    invoke-direct {p0}, Lcom/kizitonwose/calendarview/CalendarView;->requireFirstDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v6

    .line 805
    iget-boolean v7, p0, Lcom/kizitonwose/calendarview/CalendarView;->hasBoundaries:Z

    .line 806
    nop

    .line 798
    move-object v0, v9

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/kizitonwose/calendarview/model/MonthConfig;-><init>(Lcom/kizitonwose/calendarview/model/OutDateStyle;Lcom/kizitonwose/calendarview/model/InDateStyle;ILjava/time/YearMonth;Ljava/time/YearMonth;Ljava/time/DayOfWeek;ZLkotlinx/coroutines/Job;)V

    return-object v9
.end method

.method private final getCalendarAdapter()Lcom/kizitonwose/calendarview/ui/CalendarAdapter;
    .registers 3

    .line 391
    invoke-virtual {p0}, Lcom/kizitonwose/calendarview/CalendarView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_9

    check-cast v0, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type com.kizitonwose.calendarview.ui.CalendarAdapter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final getCalendarLayoutManager()Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;
    .registers 3

    .line 388
    invoke-virtual {p0}, Lcom/kizitonwose/calendarview/CalendarView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_9

    check-cast v0, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type com.kizitonwose.calendarview.ui.CalendarLayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final getMonthUpdateData(Lkotlinx/coroutines/Job;)Lkotlin/Pair;
    .registers 6
    .param p1, "job"    # Lkotlinx/coroutines/Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/Job;",
            ")",
            "Lkotlin/Pair<",
            "Lcom/kizitonwose/calendarview/model/MonthConfig;",
            "Landroidx/recyclerview/widget/DiffUtil$DiffResult;",
            ">;"
        }
    .end annotation

    .line 763
    invoke-direct {p0, p1}, Lcom/kizitonwose/calendarview/CalendarView;->generateMonthConfig(Lkotlinx/coroutines/Job;)Lcom/kizitonwose/calendarview/model/MonthConfig;

    move-result-object v0

    .line 764
    .local v0, "monthConfig":Lcom/kizitonwose/calendarview/model/MonthConfig;
    nop

    .line 765
    new-instance v1, Lcom/kizitonwose/calendarview/CalendarView$MonthRangeDiffCallback;

    invoke-direct {p0}, Lcom/kizitonwose/calendarview/CalendarView;->getCalendarAdapter()Lcom/kizitonwose/calendarview/ui/CalendarAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->getMonthConfig$com_github_kizitonwose_CalendarView()Lcom/kizitonwose/calendarview/model/MonthConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kizitonwose/calendarview/model/MonthConfig;->getMonths$com_github_kizitonwose_CalendarView()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lcom/kizitonwose/calendarview/model/MonthConfig;->getMonths$com_github_kizitonwose_CalendarView()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/kizitonwose/calendarview/CalendarView$MonthRangeDiffCallback;-><init>(Ljava/util/List;Ljava/util/List;)V

    check-cast v1, Landroidx/recyclerview/widget/DiffUtil$Callback;

    .line 766
    nop

    .line 764
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;Z)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v1

    const-string v2, "DiffUtil.calculateDiff(\n\u2026          false\n        )"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 768
    .local v1, "diffResult":Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static synthetic getOrientation$annotations()V
    .registers 0

    return-void
.end method

.method private final init(Landroid/util/AttributeSet;II)V
    .registers 14
    .param p1, "attributeSet"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I

    .line 260
    invoke-virtual {p0}, Lcom/kizitonwose/calendarview/CalendarView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 261
    :cond_7
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kizitonwose/calendarview/CalendarView;->setHasFixedSize(Z)V

    .line 262
    invoke-virtual {p0}, Lcom/kizitonwose/calendarview/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/kizitonwose/calendarview/R$styleable;->CalendarView:[I

    const-string v3, "R.styleable.CalendarView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .local v1, "$this$withStyledAttributes$iv":Landroid/content/Context;
    .local v2, "attrs$iv":[I
    const/4 v3, 0x0

    .line 840
    .local v3, "$i$f$withStyledAttributes":I
    invoke-virtual {v1, p1, v2, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    const-string v5, "obtainStyledAttributes(s\u2026efStyleAttr, defStyleRes)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v4

    .local v5, "$this$withStyledAttributes":Landroid/content/res/TypedArray;
    const/4 v6, 0x0

    .line 263
    .local v6, "$i$a$-withStyledAttributes-CalendarView$init$1":I
    sget v7, Lcom/kizitonwose/calendarview/R$styleable;->CalendarView_cv_dayViewResource:I

    iget v8, p0, Lcom/kizitonwose/calendarview/CalendarView;->dayViewResource:I

    invoke-virtual {v5, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/kizitonwose/calendarview/CalendarView;->setDayViewResource(I)V

    .line 264
    sget v7, Lcom/kizitonwose/calendarview/R$styleable;->CalendarView_cv_monthHeaderResource:I

    iget v8, p0, Lcom/kizitonwose/calendarview/CalendarView;->monthHeaderResource:I

    invoke-virtual {v5, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/kizitonwose/calendarview/CalendarView;->setMonthHeaderResource(I)V

    .line 265
    sget v7, Lcom/kizitonwose/calendarview/R$styleable;->CalendarView_cv_monthFooterResource:I

    iget v8, p0, Lcom/kizitonwose/calendarview/CalendarView;->monthFooterResource:I

    invoke-virtual {v5, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/kizitonwose/calendarview/CalendarView;->setMonthFooterResource(I)V

    .line 266
    sget v7, Lcom/kizitonwose/calendarview/R$styleable;->CalendarView_cv_orientation:I

    iget v8, p0, Lcom/kizitonwose/calendarview/CalendarView;->orientation:I

    invoke-virtual {v5, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/kizitonwose/calendarview/CalendarView;->setOrientation(I)V

    .line 267
    invoke-static {}, Lcom/kizitonwose/calendarview/model/ScrollMode;->values()[Lcom/kizitonwose/calendarview/model/ScrollMode;

    move-result-object v7

    sget v8, Lcom/kizitonwose/calendarview/R$styleable;->CalendarView_cv_scrollMode:I

    iget-object v9, p0, Lcom/kizitonwose/calendarview/CalendarView;->scrollMode:Lcom/kizitonwose/calendarview/model/ScrollMode;

    invoke-virtual {v9}, Lcom/kizitonwose/calendarview/model/ScrollMode;->ordinal()I

    move-result v9

    invoke-virtual {v5, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {p0, v7}, Lcom/kizitonwose/calendarview/CalendarView;->setScrollMode(Lcom/kizitonwose/calendarview/model/ScrollMode;)V

    .line 268
    invoke-static {}, Lcom/kizitonwose/calendarview/model/OutDateStyle;->values()[Lcom/kizitonwose/calendarview/model/OutDateStyle;

    move-result-object v7

    sget v8, Lcom/kizitonwose/calendarview/R$styleable;->CalendarView_cv_outDateStyle:I

    iget-object v9, p0, Lcom/kizitonwose/calendarview/CalendarView;->outDateStyle:Lcom/kizitonwose/calendarview/model/OutDateStyle;

    invoke-virtual {v9}, Lcom/kizitonwose/calendarview/model/OutDateStyle;->ordinal()I

    move-result v9

    invoke-virtual {v5, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {p0, v7}, Lcom/kizitonwose/calendarview/CalendarView;->setOutDateStyle(Lcom/kizitonwose/calendarview/model/OutDateStyle;)V

    .line 269
    invoke-static {}, Lcom/kizitonwose/calendarview/model/InDateStyle;->values()[Lcom/kizitonwose/calendarview/model/InDateStyle;

    move-result-object v7

    sget v8, Lcom/kizitonwose/calendarview/R$styleable;->CalendarView_cv_inDateStyle:I

    iget-object v9, p0, Lcom/kizitonwose/calendarview/CalendarView;->inDateStyle:Lcom/kizitonwose/calendarview/model/InDateStyle;

    invoke-virtual {v9}, Lcom/kizitonwose/calendarview/model/InDateStyle;->ordinal()I

    move-result v9

    invoke-virtual {v5, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {p0, v7}, Lcom/kizitonwose/calendarview/CalendarView;->setInDateStyle(Lcom/kizitonwose/calendarview/model/InDateStyle;)V

    .line 270
    sget v7, Lcom/kizitonwose/calendarview/R$styleable;->CalendarView_cv_maxRowCount:I

    iget v8, p0, Lcom/kizitonwose/calendarview/CalendarView;->maxRowCount:I

    invoke-virtual {v5, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/kizitonwose/calendarview/CalendarView;->setMaxRowCount(I)V

    .line 271
    sget v7, Lcom/kizitonwose/calendarview/R$styleable;->CalendarView_cv_monthViewClass:I

    invoke-virtual {v5, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/kizitonwose/calendarview/CalendarView;->setMonthViewClass(Ljava/lang/String;)V

    .line 272
    sget v7, Lcom/kizitonwose/calendarview/R$styleable;->CalendarView_cv_hasBoundaries:I

    iget-boolean v8, p0, Lcom/kizitonwose/calendarview/CalendarView;->hasBoundaries:Z

    invoke-virtual {v5, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    invoke-virtual {p0, v7}, Lcom/kizitonwose/calendarview/CalendarView;->setHasBoundaries(Z)V

    .line 273
    nop

    .line 274
    sget v7, Lcom/kizitonwose/calendarview/R$styleable;->CalendarView_cv_wrappedPageHeightAnimationDuration:I

    .line 275
    iget v8, p0, Lcom/kizitonwose/calendarview/CalendarView;->wrappedPageHeightAnimationDuration:I

    .line 273
    invoke-virtual {v5, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Lcom/kizitonwose/calendarview/CalendarView;->wrappedPageHeightAnimationDuration:I

    .line 277
    nop

    .line 840
    .end local v5    # "$this$withStyledAttributes":Landroid/content/res/TypedArray;
    .end local v6    # "$i$a$-withStyledAttributes-CalendarView$init$1":I
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 841
    nop

    .line 278
    .end local v1    # "$this$withStyledAttributes$iv":Landroid/content/Context;
    .end local v2    # "attrs$iv":[I
    .end local v3    # "$i$f$withStyledAttributes":I
    iget v1, p0, Lcom/kizitonwose/calendarview/CalendarView;->dayViewResource:I

    if-eqz v1, :cond_c6

    goto :goto_c7

    :cond_c6
    const/4 v0, 0x0

    :goto_c7
    if-eqz v0, :cond_ca

    .line 279
    return-void

    .line 842
    :cond_ca
    const/4 v0, 0x0

    .line 278
    .local v0, "$i$a$-check-CalendarView$init$2":I
    nop

    .end local v0    # "$i$a$-check-CalendarView$init$2":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No value set for `cv_dayViewResource` attribute."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method private final invalidateViewHolders()V
    .registers 3

    .line 407
    iget-boolean v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->internalConfigUpdate:Z

    if-eqz v0, :cond_5

    return-void

    .line 409
    :cond_5
    invoke-virtual {p0}, Lcom/kizitonwose/calendarview/CalendarView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual {p0}, Lcom/kizitonwose/calendarview/CalendarView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_12

    goto :goto_39

    .line 410
    :cond_12
    invoke-virtual {p0}, Lcom/kizitonwose/calendarview/CalendarView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    .line 411
    .local v0, "state":Landroid/os/Parcelable;
    :goto_1e
    invoke-virtual {p0}, Lcom/kizitonwose/calendarview/CalendarView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/kizitonwose/calendarview/CalendarView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 412
    invoke-virtual {p0}, Lcom/kizitonwose/calendarview/CalendarView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    if-eqz v1, :cond_2e

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 413
    :cond_2e
    new-instance v1, Lcom/kizitonwose/calendarview/CalendarView$invalidateViewHolders$1;

    invoke-direct {v1, p0}, Lcom/kizitonwose/calendarview/CalendarView$invalidateViewHolders$1;-><init>(Lcom/kizitonwose/calendarview/CalendarView;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/kizitonwose/calendarview/CalendarView;->post(Ljava/lang/Runnable;)Z

    .line 414
    return-void

    .line 409
    .end local v0    # "state":Landroid/os/Parcelable;
    :cond_39
    :goto_39
    return-void
.end method

.method public static synthetic notifyDateChanged$default(Lcom/kizitonwose/calendarview/CalendarView;Ljava/time/LocalDate;Lcom/kizitonwose/calendarview/model/DayOwner;ILjava/lang/Object;)V
    .registers 5

    if-nez p4, :cond_c

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_8

    .line 584
    sget-object p2, Lcom/kizitonwose/calendarview/model/DayOwner;->THIS_MONTH:Lcom/kizitonwose/calendarview/model/DayOwner;

    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/kizitonwose/calendarview/CalendarView;->notifyDateChanged(Ljava/time/LocalDate;Lcom/kizitonwose/calendarview/model/DayOwner;)V

    return-void

    .line 0
    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: notifyDateChanged"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final requireEndMonth()Ljava/time/YearMonth;
    .registers 3

    .line 815
    iget-object v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->endMonth:Ljava/time/YearMonth;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "`endMonth` is not set. Have you called `setup()`?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method private final requireFirstDayOfWeek()Ljava/time/DayOfWeek;
    .registers 3

    .line 819
    iget-object v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->firstDayOfWeek:Ljava/time/DayOfWeek;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "`firstDayOfWeek` is not set. Have you called `setup()`?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method private final requireStartMonth()Ljava/time/YearMonth;
    .registers 3

    .line 811
    iget-object v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->startMonth:Ljava/time/YearMonth;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "`startMonth` is not set. Have you called `setup()`?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public static synthetic scrollToDate$default(Lcom/kizitonwose/calendarview/CalendarView;Ljava/time/LocalDate;Lcom/kizitonwose/calendarview/model/DayOwner;ILjava/lang/Object;)V
    .registers 5

    if-nez p4, :cond_c

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_8

    .line 551
    sget-object p2, Lcom/kizitonwose/calendarview/model/DayOwner;->THIS_MONTH:Lcom/kizitonwose/calendarview/model/DayOwner;

    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/kizitonwose/calendarview/CalendarView;->scrollToDate(Ljava/time/LocalDate;Lcom/kizitonwose/calendarview/model/DayOwner;)V

    return-void

    .line 0
    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: scrollToDate"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic setMonthMargins$default(Lcom/kizitonwose/calendarview/CalendarView;IIIIILjava/lang/Object;)V
    .registers 7

    if-nez p6, :cond_1e

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_8

    .line 507
    iget p1, p0, Lcom/kizitonwose/calendarview/CalendarView;->monthMarginStart:I

    :cond_8
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_e

    .line 508
    iget p2, p0, Lcom/kizitonwose/calendarview/CalendarView;->monthMarginTop:I

    :cond_e
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_14

    .line 509
    iget p3, p0, Lcom/kizitonwose/calendarview/CalendarView;->monthMarginEnd:I

    :cond_14
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1a

    .line 510
    iget p4, p0, Lcom/kizitonwose/calendarview/CalendarView;->monthMarginBottom:I

    :cond_1a
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/kizitonwose/calendarview/CalendarView;->setMonthMargins(IIII)V

    return-void

    .line 0
    :cond_1e
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setMonthMargins"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic setMonthPadding$default(Lcom/kizitonwose/calendarview/CalendarView;IIIIILjava/lang/Object;)V
    .registers 7

    if-nez p6, :cond_1e

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_8

    .line 489
    iget p1, p0, Lcom/kizitonwose/calendarview/CalendarView;->monthPaddingStart:I

    :cond_8
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_e

    .line 490
    iget p2, p0, Lcom/kizitonwose/calendarview/CalendarView;->monthPaddingTop:I

    :cond_e
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_14

    .line 491
    iget p3, p0, Lcom/kizitonwose/calendarview/CalendarView;->monthPaddingEnd:I

    :cond_14
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1a

    .line 492
    iget p4, p0, Lcom/kizitonwose/calendarview/CalendarView;->monthPaddingBottom:I

    :cond_1a
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/kizitonwose/calendarview/CalendarView;->setMonthPadding(IIII)V

    return-void

    .line 0
    :cond_1e
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setMonthPadding"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic setupAsync$default(Lcom/kizitonwose/calendarview/CalendarView;Ljava/time/YearMonth;Ljava/time/YearMonth;Ljava/time/DayOfWeek;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .registers 7

    if-nez p6, :cond_e

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_a

    .line 694
    const/4 p4, 0x0

    move-object p5, p4

    check-cast p5, Lkotlin/jvm/functions/Function0;

    :cond_a
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/kizitonwose/calendarview/CalendarView;->setupAsync(Ljava/time/YearMonth;Ljava/time/YearMonth;Ljava/time/DayOfWeek;Lkotlin/jvm/functions/Function0;)V

    return-void

    .line 0
    :cond_e
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setupAsync"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic smoothScrollToDate$default(Lcom/kizitonwose/calendarview/CalendarView;Ljava/time/LocalDate;Lcom/kizitonwose/calendarview/model/DayOwner;ILjava/lang/Object;)V
    .registers 5

    if-nez p4, :cond_c

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_8

    .line 567
    sget-object p2, Lcom/kizitonwose/calendarview/model/DayOwner;->THIS_MONTH:Lcom/kizitonwose/calendarview/model/DayOwner;

    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/kizitonwose/calendarview/CalendarView;->smoothScrollToDate(Ljava/time/LocalDate;Lcom/kizitonwose/calendarview/model/DayOwner;)V

    return-void

    .line 0
    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: smoothScrollToDate"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final updateAdapterMonthConfig(Lcom/kizitonwose/calendarview/model/MonthConfig;)V
    .registers 13
    .param p1, "config"    # Lcom/kizitonwose/calendarview/model/MonthConfig;

    .line 417
    iget-boolean v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->internalConfigUpdate:Z

    if-eqz v0, :cond_5

    return-void

    .line 418
    :cond_5
    invoke-virtual {p0}, Lcom/kizitonwose/calendarview/CalendarView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_4e

    .line 419
    invoke-direct {p0}, Lcom/kizitonwose/calendarview/CalendarView;->getCalendarAdapter()Lcom/kizitonwose/calendarview/ui/CalendarAdapter;

    move-result-object v0

    if-eqz p1, :cond_13

    move-object v10, p1

    goto :goto_36

    :cond_13
    new-instance v10, Lcom/kizitonwose/calendarview/model/MonthConfig;

    .line 420
    iget-object v2, p0, Lcom/kizitonwose/calendarview/CalendarView;->outDateStyle:Lcom/kizitonwose/calendarview/model/OutDateStyle;

    .line 421
    iget-object v3, p0, Lcom/kizitonwose/calendarview/CalendarView;->inDateStyle:Lcom/kizitonwose/calendarview/model/InDateStyle;

    .line 422
    iget v4, p0, Lcom/kizitonwose/calendarview/CalendarView;->maxRowCount:I

    .line 423
    iget-object v5, p0, Lcom/kizitonwose/calendarview/CalendarView;->startMonth:Ljava/time/YearMonth;

    if-eqz v5, :cond_4d

    .line 424
    iget-object v6, p0, Lcom/kizitonwose/calendarview/CalendarView;->endMonth:Ljava/time/YearMonth;

    if-eqz v6, :cond_4c

    .line 425
    iget-object v7, p0, Lcom/kizitonwose/calendarview/CalendarView;->firstDayOfWeek:Ljava/time/DayOfWeek;

    if-eqz v7, :cond_4b

    .line 426
    iget-boolean v8, p0, Lcom/kizitonwose/calendarview/CalendarView;->hasBoundaries:Z

    const/4 v1, 0x1

    const/4 v9, 0x0

    invoke-static {v9, v1, v9}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lkotlinx/coroutines/Job;

    .line 419
    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lcom/kizitonwose/calendarview/model/MonthConfig;-><init>(Lcom/kizitonwose/calendarview/model/OutDateStyle;Lcom/kizitonwose/calendarview/model/InDateStyle;ILjava/time/YearMonth;Ljava/time/YearMonth;Ljava/time/DayOfWeek;ZLkotlinx/coroutines/Job;)V

    :goto_36
    invoke-virtual {v0, v10}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->setMonthConfig$com_github_kizitonwose_CalendarView(Lcom/kizitonwose/calendarview/model/MonthConfig;)V

    .line 428
    invoke-direct {p0}, Lcom/kizitonwose/calendarview/CalendarView;->getCalendarAdapter()Lcom/kizitonwose/calendarview/ui/CalendarAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->notifyDataSetChanged()V

    .line 429
    new-instance v0, Lcom/kizitonwose/calendarview/CalendarView$updateAdapterMonthConfig$1;

    invoke-direct {v0, p0}, Lcom/kizitonwose/calendarview/CalendarView$updateAdapterMonthConfig$1;-><init>(Lcom/kizitonwose/calendarview/CalendarView;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/kizitonwose/calendarview/CalendarView;->post(Ljava/lang/Runnable;)Z

    goto :goto_4e

    .line 425
    :cond_4b
    return-void

    .line 424
    :cond_4c
    return-void

    .line 423
    :cond_4d
    return-void

    .line 431
    :cond_4e
    :goto_4e
    return-void
.end method

.method static synthetic updateAdapterMonthConfig$default(Lcom/kizitonwose/calendarview/CalendarView;Lcom/kizitonwose/calendarview/model/MonthConfig;ILjava/lang/Object;)V
    .registers 4

    if-nez p3, :cond_e

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_a

    .line 416
    const/4 p1, 0x0

    move-object p2, p1

    check-cast p2, Lcom/kizitonwose/calendarview/model/MonthConfig;

    :cond_a
    invoke-direct {p0, p1}, Lcom/kizitonwose/calendarview/CalendarView;->updateAdapterMonthConfig(Lcom/kizitonwose/calendarview/model/MonthConfig;)V

    return-void

    .line 0
    :cond_e
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: updateAdapterMonthConfig"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final updateAdapterViewConfig()V
    .registers 7

    .line 394
    invoke-virtual {p0}, Lcom/kizitonwose/calendarview/CalendarView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 395
    nop

    .line 396
    invoke-direct {p0}, Lcom/kizitonwose/calendarview/CalendarView;->getCalendarAdapter()Lcom/kizitonwose/calendarview/ui/CalendarAdapter;

    move-result-object v0

    new-instance v1, Lcom/kizitonwose/calendarview/ui/ViewConfig;

    iget v2, p0, Lcom/kizitonwose/calendarview/CalendarView;->dayViewResource:I

    iget v3, p0, Lcom/kizitonwose/calendarview/CalendarView;->monthHeaderResource:I

    iget v4, p0, Lcom/kizitonwose/calendarview/CalendarView;->monthFooterResource:I

    iget-object v5, p0, Lcom/kizitonwose/calendarview/CalendarView;->monthViewClass:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kizitonwose/calendarview/ui/ViewConfig;-><init>(IIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->setViewConfig$com_github_kizitonwose_CalendarView(Lcom/kizitonwose/calendarview/ui/ViewConfig;)V

    .line 397
    invoke-direct {p0}, Lcom/kizitonwose/calendarview/CalendarView;->invalidateViewHolders()V

    .line 399
    :cond_1e
    return-void
.end method

.method public static synthetic updateMonthConfiguration$default(Lcom/kizitonwose/calendarview/CalendarView;Lcom/kizitonwose/calendarview/model/InDateStyle;Lcom/kizitonwose/calendarview/model/OutDateStyle;IZILjava/lang/Object;)V
    .registers 7

    if-nez p6, :cond_1e

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_8

    .line 439
    iget-object p1, p0, Lcom/kizitonwose/calendarview/CalendarView;->inDateStyle:Lcom/kizitonwose/calendarview/model/InDateStyle;

    :cond_8
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_e

    .line 440
    iget-object p2, p0, Lcom/kizitonwose/calendarview/CalendarView;->outDateStyle:Lcom/kizitonwose/calendarview/model/OutDateStyle;

    :cond_e
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_14

    .line 441
    iget p3, p0, Lcom/kizitonwose/calendarview/CalendarView;->maxRowCount:I

    :cond_14
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1a

    .line 442
    iget-boolean p4, p0, Lcom/kizitonwose/calendarview/CalendarView;->hasBoundaries:Z

    :cond_1a
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/kizitonwose/calendarview/CalendarView;->updateMonthConfiguration(Lcom/kizitonwose/calendarview/model/InDateStyle;Lcom/kizitonwose/calendarview/model/OutDateStyle;IZ)V

    return-void

    .line 0
    :cond_1e
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: updateMonthConfiguration"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic updateMonthConfigurationAsync$default(Lcom/kizitonwose/calendarview/CalendarView;Lcom/kizitonwose/calendarview/model/InDateStyle;Lcom/kizitonwose/calendarview/model/OutDateStyle;IZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .registers 11

    if-nez p7, :cond_38

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_8

    .line 461
    iget-object p1, p0, Lcom/kizitonwose/calendarview/CalendarView;->inDateStyle:Lcom/kizitonwose/calendarview/model/InDateStyle;

    :cond_8
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_10

    .line 462
    iget-object p2, p0, Lcom/kizitonwose/calendarview/CalendarView;->outDateStyle:Lcom/kizitonwose/calendarview/model/OutDateStyle;

    move-object p7, p2

    goto :goto_11

    .line 461
    :cond_10
    move-object p7, p2

    .line 462
    :goto_11
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_19

    .line 463
    iget p3, p0, Lcom/kizitonwose/calendarview/CalendarView;->maxRowCount:I

    move v0, p3

    goto :goto_1a

    .line 462
    :cond_19
    move v0, p3

    .line 463
    :goto_1a
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_22

    .line 464
    iget-boolean p4, p0, Lcom/kizitonwose/calendarview/CalendarView;->hasBoundaries:Z

    move v1, p4

    goto :goto_23

    .line 463
    :cond_22
    move v1, p4

    .line 464
    :goto_23
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_2d

    .line 465
    const/4 p5, 0x0

    move-object p2, p5

    check-cast p2, Lkotlin/jvm/functions/Function0;

    move-object v2, p5

    goto :goto_2e

    .line 464
    :cond_2d
    move-object v2, p5

    .line 465
    :goto_2e
    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move p5, v0

    move p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/kizitonwose/calendarview/CalendarView;->updateMonthConfigurationAsync(Lcom/kizitonwose/calendarview/model/InDateStyle;Lcom/kizitonwose/calendarview/model/OutDateStyle;IZLkotlin/jvm/functions/Function0;)V

    return-void

    .line 0
    :cond_38
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: updateMonthConfigurationAsync"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic updateMonthRange$default(Lcom/kizitonwose/calendarview/CalendarView;Ljava/time/YearMonth;Ljava/time/YearMonth;ILjava/lang/Object;)V
    .registers 5

    if-nez p4, :cond_16

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_a

    .line 730
    invoke-direct {p0}, Lcom/kizitonwose/calendarview/CalendarView;->requireStartMonth()Ljava/time/YearMonth;

    move-result-object p1

    :cond_a
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_12

    invoke-direct {p0}, Lcom/kizitonwose/calendarview/CalendarView;->requireEndMonth()Ljava/time/YearMonth;

    move-result-object p2

    :cond_12
    invoke-virtual {p0, p1, p2}, Lcom/kizitonwose/calendarview/CalendarView;->updateMonthRange(Ljava/time/YearMonth;Ljava/time/YearMonth;)V

    return-void

    .line 0
    :cond_16
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: updateMonthRange"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic updateMonthRangeAsync$default(Lcom/kizitonwose/calendarview/CalendarView;Ljava/time/YearMonth;Ljava/time/YearMonth;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .registers 6

    if-nez p5, :cond_1e

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_a

    .line 746
    invoke-direct {p0}, Lcom/kizitonwose/calendarview/CalendarView;->requireStartMonth()Ljava/time/YearMonth;

    move-result-object p1

    :cond_a
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_12

    .line 747
    invoke-direct {p0}, Lcom/kizitonwose/calendarview/CalendarView;->requireEndMonth()Ljava/time/YearMonth;

    move-result-object p2

    :cond_12
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1a

    .line 748
    const/4 p3, 0x0

    move-object p4, p3

    check-cast p4, Lkotlin/jvm/functions/Function0;

    :cond_1a
    invoke-virtual {p0, p1, p2, p3}, Lcom/kizitonwose/calendarview/CalendarView;->updateMonthRangeAsync(Ljava/time/YearMonth;Ljava/time/YearMonth;Lkotlin/jvm/functions/Function0;)V

    return-void

    .line 0
    :cond_1e
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: updateMonthRangeAsync"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final findFirstVisibleDay()Lcom/kizitonwose/calendarview/model/CalendarDay;
    .registers 2

    .line 632
    invoke-direct {p0}, Lcom/kizitonwose/calendarview/CalendarView;->getCalendarAdapter()Lcom/kizitonwose/calendarview/ui/CalendarAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->findFirstVisibleDay()Lcom/kizitonwose/calendarview/model/CalendarDay;

    move-result-object v0

    return-object v0
.end method

.method public final findFirstVisibleMonth()Lcom/kizitonwose/calendarview/model/CalendarMonth;
    .registers 2

    .line 613
    invoke-direct {p0}, Lcom/kizitonwose/calendarview/CalendarView;->getCalendarAdapter()Lcom/kizitonwose/calendarview/ui/CalendarAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->findFirstVisibleMonth()Lcom/kizitonwose/calendarview/model/CalendarMonth;

    move-result-object v0

    return-object v0
.end method

.method public final findLastVisibleDay()Lcom/kizitonwose/calendarview/model/CalendarDay;
    .registers 2

    .line 642
    invoke-direct {p0}, Lcom/kizitonwose/calendarview/CalendarView;->getCalendarAdapter()Lcom/kizitonwose/calendarview/ui/CalendarAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->findLastVisibleDay()Lcom/kizitonwose/calendarview/model/CalendarDay;

    move-result-object v0

    return-object v0
.end method

.method public final findLastVisibleMonth()Lcom/kizitonwose/calendarview/model/CalendarMonth;
    .registers 2

    .line 622
    invoke-direct {p0}, Lcom/kizitonwose/calendarview/CalendarView;->getCalendarAdapter()Lcom/kizitonwose/calendarview/ui/CalendarAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->findLastVisibleMonth()Lcom/kizitonwose/calendarview/model/CalendarMonth;

    move-result-object v0

    return-object v0
.end method

.method public final getDayBinder()Lcom/kizitonwose/calendarview/ui/DayBinder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kizitonwose/calendarview/ui/DayBinder<",
            "*>;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->dayBinder:Lcom/kizitonwose/calendarview/ui/DayBinder;

    return-object v0
.end method

.method public final getDaySize()Lcom/kizitonwose/calendarview/utils/Size;
    .registers 2

    .line 313
    iget-object v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->daySize:Lcom/kizitonwose/calendarview/utils/Size;

    return-object v0
.end method

.method public final getDayViewResource()I
    .registers 2

    .line 69
    iget v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->dayViewResource:I

    return v0
.end method

.method public final getHasBoundaries()Z
    .registers 2

    .line 213
    iget-boolean v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->hasBoundaries:Z

    return v0
.end method

.method public final getInDateStyle()Lcom/kizitonwose/calendarview/model/InDateStyle;
    .registers 2

    .line 151
    iget-object v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->inDateStyle:Lcom/kizitonwose/calendarview/model/InDateStyle;

    return-object v0
.end method

.method public final getMaxRowCount()I
    .registers 2

    .line 188
    iget v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->maxRowCount:I

    return v0
.end method

.method public final getMonthFooterBinder()Lcom/kizitonwose/calendarview/ui/MonthHeaderFooterBinder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kizitonwose/calendarview/ui/MonthHeaderFooterBinder<",
            "*>;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->monthFooterBinder:Lcom/kizitonwose/calendarview/ui/MonthHeaderFooterBinder;

    return-object v0
.end method

.method public final getMonthFooterResource()I
    .registers 2

    .line 94
    iget v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->monthFooterResource:I

    return v0
.end method

.method public final getMonthHeaderBinder()Lcom/kizitonwose/calendarview/ui/MonthHeaderFooterBinder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kizitonwose/calendarview/ui/MonthHeaderFooterBinder<",
            "*>;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->monthHeaderBinder:Lcom/kizitonwose/calendarview/ui/MonthHeaderFooterBinder;

    return-object v0
.end method

.method public final getMonthHeaderResource()I
    .registers 2

    .line 82
    iget v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->monthHeaderResource:I

    return v0
.end method

.method public final getMonthMarginBottom()I
    .registers 2

    .line 384
    iget v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->monthMarginBottom:I

    return v0
.end method

.method public final getMonthMarginEnd()I
    .registers 2

    .line 368
    iget v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->monthMarginEnd:I

    return v0
.end method

.method public final getMonthMarginStart()I
    .registers 2

    .line 360
    iget v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->monthMarginStart:I

    return v0
.end method

.method public final getMonthMarginTop()I
    .registers 2

    .line 376
    iget v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->monthMarginTop:I

    return v0
.end method

.method public final getMonthPaddingBottom()I
    .registers 2

    .line 352
    iget v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->monthPaddingBottom:I

    return v0
.end method

.method public final getMonthPaddingEnd()I
    .registers 2

    .line 336
    iget v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->monthPaddingEnd:I

    return v0
.end method

.method public final getMonthPaddingStart()I
    .registers 2

    .line 328
    iget v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->monthPaddingStart:I

    return v0
.end method

.method public final getMonthPaddingTop()I
    .registers 2

    .line 344
    iget v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->monthPaddingTop:I

    return v0
.end method

.method public final getMonthScrollListener()Lkotlin/jvm/functions/Function1;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/kizitonwose/calendarview/model/CalendarMonth;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->monthScrollListener:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getMonthViewClass()Ljava/lang/String;
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->monthViewClass:Ljava/lang/String;

    return-object v0
.end method

.method public final getOrientation()I
    .registers 2

    .line 120
    iget v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->orientation:I

    return v0
.end method

.method public final getOutDateStyle()Lcom/kizitonwose/calendarview/model/OutDateStyle;
    .registers 2

    .line 171
    iget-object v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->outDateStyle:Lcom/kizitonwose/calendarview/model/OutDateStyle;

    return-object v0
.end method

.method public final getScrollMode()Lcom/kizitonwose/calendarview/model/ScrollMode;
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->scrollMode:Lcom/kizitonwose/calendarview/model/ScrollMode;

    return-object v0
.end method

.method public final getWrappedPageHeightAnimationDuration()I
    .registers 2

    .line 228
    iget v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->wrappedPageHeightAnimationDuration:I

    return v0
.end method

.method public final isHorizontal$com_github_kizitonwose_CalendarView()Z
    .registers 2

    .line 244
    invoke-virtual {p0}, Lcom/kizitonwose/calendarview/CalendarView;->isVertical$com_github_kizitonwose_CalendarView()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final isVertical$com_github_kizitonwose_CalendarView()Z
    .registers 3

    .line 241
    iget v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public final notifyCalendarChanged()V
    .registers 2

    .line 604
    invoke-direct {p0}, Lcom/kizitonwose/calendarview/CalendarView;->getCalendarAdapter()Lcom/kizitonwose/calendarview/ui/CalendarAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->reloadCalendar()V

    .line 605
    return-void
.end method

.method public final notifyDateChanged(Ljava/time/LocalDate;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/kizitonwose/calendarview/CalendarView;->notifyDateChanged$default(Lcom/kizitonwose/calendarview/CalendarView;Ljava/time/LocalDate;Lcom/kizitonwose/calendarview/model/DayOwner;ILjava/lang/Object;)V

    return-void
.end method

.method public final notifyDateChanged(Ljava/time/LocalDate;Lcom/kizitonwose/calendarview/model/DayOwner;)V
    .registers 4
    .param p1, "date"    # Ljava/time/LocalDate;
    .param p2, "owner"    # Lcom/kizitonwose/calendarview/model/DayOwner;

    const-string v0, "date"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "owner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 585
    new-instance v0, Lcom/kizitonwose/calendarview/model/CalendarDay;

    invoke-direct {v0, p1, p2}, Lcom/kizitonwose/calendarview/model/CalendarDay;-><init>(Ljava/time/LocalDate;Lcom/kizitonwose/calendarview/model/DayOwner;)V

    invoke-virtual {p0, v0}, Lcom/kizitonwose/calendarview/CalendarView;->notifyDayChanged(Lcom/kizitonwose/calendarview/model/CalendarDay;)V

    .line 586
    return-void
.end method

.method public final notifyDayChanged(Lcom/kizitonwose/calendarview/model/CalendarDay;)V
    .registers 3
    .param p1, "day"    # Lcom/kizitonwose/calendarview/model/CalendarDay;

    const-string v0, "day"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 577
    invoke-direct {p0}, Lcom/kizitonwose/calendarview/CalendarView;->getCalendarAdapter()Lcom/kizitonwose/calendarview/ui/CalendarAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->reloadDay(Lcom/kizitonwose/calendarview/model/CalendarDay;)V

    .line 578
    return-void
.end method

.method public final notifyMonthChanged(Ljava/time/YearMonth;)V
    .registers 3
    .param p1, "month"    # Ljava/time/YearMonth;

    const-string v0, "month"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 596
    invoke-direct {p0}, Lcom/kizitonwose/calendarview/CalendarView;->getCalendarAdapter()Lcom/kizitonwose/calendarview/ui/CalendarAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kizitonwose/calendarview/ui/CalendarAdapter;->reloadMonth(Ljava/time/YearMonth;)V

    .line 597
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 4

    .line 777
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onDetachedFromWindow()V

    .line 778
    iget-object v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->configJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 779
    :cond_c
    return-void
.end method

.method protected onMeasure(II)V
    .registers 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 282
    iget-boolean v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->autoSize:Z

    if-eqz v0, :cond_59

    invoke-virtual {p0}, Lcom/kizitonwose/calendarview/CalendarView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_59

    .line 283
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 284
    .local v0, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 285
    .local v1, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 287
    .local v2, "heightMode":I
    if-nez v0, :cond_25

    if-eqz v2, :cond_1b

    goto :goto_25

    .line 288
    :cond_1b
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "Cannot calculate the values for day Width/Height with the current configuration."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 292
    :cond_25
    :goto_25
    iget v3, p0, Lcom/kizitonwose/calendarview/CalendarView;->monthPaddingStart:I

    iget v4, p0, Lcom/kizitonwose/calendarview/CalendarView;->monthPaddingEnd:I

    add-int/2addr v3, v4

    sub-int v3, v1, v3

    int-to-float v3, v3

    const/high16 v4, 0x40e00000    # 7.0f

    div-float/2addr v3, v4

    float-to-double v3, v3

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    add-double/2addr v3, v5

    double-to-int v3, v3

    .line 294
    .local v3, "size":I
    iget v4, p0, Lcom/kizitonwose/calendarview/CalendarView;->autoSizeHeight:I

    const/high16 v5, -0x80000000

    if-ne v4, v5, :cond_3d

    move v4, v3

    goto :goto_3f

    :cond_3d
    iget v4, p0, Lcom/kizitonwose/calendarview/CalendarView;->autoSizeHeight:I

    .line 295
    .local v4, "height":I
    :goto_3f
    iget-object v5, p0, Lcom/kizitonwose/calendarview/CalendarView;->daySize:Lcom/kizitonwose/calendarview/utils/Size;

    invoke-virtual {v5, v3, v4}, Lcom/kizitonwose/calendarview/utils/Size;->copy(II)Lcom/kizitonwose/calendarview/utils/Size;

    move-result-object v5

    .line 296
    .local v5, "computedSize":Lcom/kizitonwose/calendarview/utils/Size;
    iget-object v6, p0, Lcom/kizitonwose/calendarview/CalendarView;->daySize:Lcom/kizitonwose/calendarview/utils/Size;

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_59

    .line 297
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/kizitonwose/calendarview/CalendarView;->sizedInternally:Z

    .line 298
    invoke-virtual {p0, v5}, Lcom/kizitonwose/calendarview/CalendarView;->setDaySize(Lcom/kizitonwose/calendarview/utils/Size;)V

    .line 299
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/kizitonwose/calendarview/CalendarView;->sizedInternally:Z

    .line 300
    invoke-direct {p0}, Lcom/kizitonwose/calendarview/CalendarView;->invalidateViewHolders()V

    .line 303
    .end local v0    # "widthMode":I
    .end local v1    # "widthSize":I
    .end local v2    # "heightMode":I
    .end local v3    # "size":I
    .end local v4    # "height":I
    .end local v5    # "computedSize":Lcom/kizitonwose/calendarview/utils/Size;
    :cond_59
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onMeasure(II)V

    .line 304
    return-void
.end method

.method public final scrollToDate(Ljava/time/LocalDate;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/kizitonwose/calendarview/CalendarView;->scrollToDate$default(Lcom/kizitonwose/calendarview/CalendarView;Ljava/time/LocalDate;Lcom/kizitonwose/calendarview/model/DayOwner;ILjava/lang/Object;)V

    return-void
.end method

.method public final scrollToDate(Ljava/time/LocalDate;Lcom/kizitonwose/calendarview/model/DayOwner;)V
    .registers 4
    .param p1, "date"    # Ljava/time/LocalDate;
    .param p2, "owner"    # Lcom/kizitonwose/calendarview/model/DayOwner;

    const-string v0, "date"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "owner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 552
    new-instance v0, Lcom/kizitonwose/calendarview/model/CalendarDay;

    invoke-direct {v0, p1, p2}, Lcom/kizitonwose/calendarview/model/CalendarDay;-><init>(Ljava/time/LocalDate;Lcom/kizitonwose/calendarview/model/DayOwner;)V

    invoke-virtual {p0, v0}, Lcom/kizitonwose/calendarview/CalendarView;->scrollToDay(Lcom/kizitonwose/calendarview/model/CalendarDay;)V

    .line 553
    return-void
.end method

.method public final scrollToDay(Lcom/kizitonwose/calendarview/model/CalendarDay;)V
    .registers 3
    .param p1, "day"    # Lcom/kizitonwose/calendarview/model/CalendarDay;

    const-string v0, "day"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 544
    invoke-direct {p0}, Lcom/kizitonwose/calendarview/CalendarView;->getCalendarLayoutManager()Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;->scrollToDay(Lcom/kizitonwose/calendarview/model/CalendarDay;)V

    .line 545
    return-void
.end method

.method public final scrollToMonth(Ljava/time/YearMonth;)V
    .registers 3
    .param p1, "month"    # Ljava/time/YearMonth;

    const-string v0, "month"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 525
    invoke-direct {p0}, Lcom/kizitonwose/calendarview/CalendarView;->getCalendarLayoutManager()Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;->scrollToMonth(Ljava/time/YearMonth;)V

    .line 526
    return-void
.end method

.method public final setDayBinder(Lcom/kizitonwose/calendarview/ui/DayBinder;)V
    .registers 2
    .param p1, "value"    # Lcom/kizitonwose/calendarview/ui/DayBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kizitonwose/calendarview/ui/DayBinder<",
            "*>;)V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/kizitonwose/calendarview/CalendarView;->dayBinder:Lcom/kizitonwose/calendarview/ui/DayBinder;

    .line 36
    invoke-direct {p0}, Lcom/kizitonwose/calendarview/CalendarView;->invalidateViewHolders()V

    .line 37
    return-void
.end method

.method public final setDaySize(Lcom/kizitonwose/calendarview/utils/Size;)V
    .registers 4
    .param p1, "value"    # Lcom/kizitonwose/calendarview/utils/Size;

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    iput-object p1, p0, Lcom/kizitonwose/calendarview/CalendarView;->daySize:Lcom/kizitonwose/calendarview/utils/Size;

    .line 316
    iget-boolean v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->sizedInternally:Z

    if-nez v0, :cond_2b

    .line 317
    sget-object v0, Lcom/kizitonwose/calendarview/CalendarView;->SIZE_SQUARE:Lcom/kizitonwose/calendarview/utils/Size;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {p1}, Lcom/kizitonwose/calendarview/utils/Size;->getWidth()I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v0, 0x1

    :goto_20
    iput-boolean v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->autoSize:Z

    .line 318
    invoke-virtual {p1}, Lcom/kizitonwose/calendarview/utils/Size;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->autoSizeHeight:I

    .line 319
    invoke-direct {p0}, Lcom/kizitonwose/calendarview/CalendarView;->invalidateViewHolders()V

    .line 321
    :cond_2b
    return-void
.end method

.method public final setDayViewResource(I)V
    .registers 4
    .param p1, "value"    # I

    .line 71
    iget v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->dayViewResource:I

    if-eq v0, p1, :cond_16

    .line 72
    if-eqz p1, :cond_c

    .line 73
    iput p1, p0, Lcom/kizitonwose/calendarview/CalendarView;->dayViewResource:I

    .line 74
    invoke-direct {p0}, Lcom/kizitonwose/calendarview/CalendarView;->updateAdapterViewConfig()V

    goto :goto_16

    .line 72
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'dayViewResource\' attribute not provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 76
    :cond_16
    :goto_16
    return-void
.end method

.method public final setHasBoundaries(Z)V
    .registers 4
    .param p1, "value"    # Z

    .line 215
    iget-boolean v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->hasBoundaries:Z

    if-eq v0, p1, :cond_b

    .line 216
    iput-boolean p1, p0, Lcom/kizitonwose/calendarview/CalendarView;->hasBoundaries:Z

    .line 217
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Lcom/kizitonwose/calendarview/CalendarView;->updateAdapterMonthConfig$default(Lcom/kizitonwose/calendarview/CalendarView;Lcom/kizitonwose/calendarview/model/MonthConfig;ILjava/lang/Object;)V

    .line 219
    :cond_b
    return-void
.end method

.method public final setInDateStyle(Lcom/kizitonwose/calendarview/model/InDateStyle;)V
    .registers 4
    .param p1, "value"    # Lcom/kizitonwose/calendarview/model/InDateStyle;

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->inDateStyle:Lcom/kizitonwose/calendarview/model/InDateStyle;

    if-eq v0, p1, :cond_11

    .line 154
    iput-object p1, p0, Lcom/kizitonwose/calendarview/CalendarView;->inDateStyle:Lcom/kizitonwose/calendarview/model/InDateStyle;

    .line 155
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Lcom/kizitonwose/calendarview/CalendarView;->updateAdapterMonthConfig$default(Lcom/kizitonwose/calendarview/CalendarView;Lcom/kizitonwose/calendarview/model/MonthConfig;ILjava/lang/Object;)V

    .line 157
    :cond_11
    return-void
.end method

.method public final setMaxRowCount(I)V
    .registers 5
    .param p1, "value"    # I

    .line 190
    new-instance v0, Lkotlin/ranges/IntRange;

    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-virtual {v0, p1}, Lkotlin/ranges/IntRange;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 191
    iget v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->maxRowCount:I

    if-eq v0, p1, :cond_17

    .line 192
    iput p1, p0, Lcom/kizitonwose/calendarview/CalendarView;->maxRowCount:I

    .line 193
    const/4 v0, 0x0

    invoke-static {p0, v0, v2, v0}, Lcom/kizitonwose/calendarview/CalendarView;->updateAdapterMonthConfig$default(Lcom/kizitonwose/calendarview/CalendarView;Lcom/kizitonwose/calendarview/model/MonthConfig;ILjava/lang/Object;)V

    .line 195
    :cond_17
    return-void

    .line 190
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'maxRowCount\' should be between 1 to 6"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final setMonthFooterBinder(Lcom/kizitonwose/calendarview/ui/MonthHeaderFooterBinder;)V
    .registers 2
    .param p1, "value"    # Lcom/kizitonwose/calendarview/ui/MonthHeaderFooterBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kizitonwose/calendarview/ui/MonthHeaderFooterBinder<",
            "*>;)V"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/kizitonwose/calendarview/CalendarView;->monthFooterBinder:Lcom/kizitonwose/calendarview/ui/MonthHeaderFooterBinder;

    .line 56
    invoke-direct {p0}, Lcom/kizitonwose/calendarview/CalendarView;->invalidateViewHolders()V

    .line 57
    return-void
.end method

.method public final setMonthFooterResource(I)V
    .registers 3
    .param p1, "value"    # I

    .line 96
    iget v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->monthFooterResource:I

    if-eq v0, p1, :cond_9

    .line 97
    iput p1, p0, Lcom/kizitonwose/calendarview/CalendarView;->monthFooterResource:I

    .line 98
    invoke-direct {p0}, Lcom/kizitonwose/calendarview/CalendarView;->updateAdapterViewConfig()V

    .line 100
    :cond_9
    return-void
.end method

.method public final setMonthHeaderBinder(Lcom/kizitonwose/calendarview/ui/MonthHeaderFooterBinder;)V
    .registers 2
    .param p1, "value"    # Lcom/kizitonwose/calendarview/ui/MonthHeaderFooterBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kizitonwose/calendarview/ui/MonthHeaderFooterBinder<",
            "*>;)V"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/kizitonwose/calendarview/CalendarView;->monthHeaderBinder:Lcom/kizitonwose/calendarview/ui/MonthHeaderFooterBinder;

    .line 46
    invoke-direct {p0}, Lcom/kizitonwose/calendarview/CalendarView;->invalidateViewHolders()V

    .line 47
    return-void
.end method

.method public final setMonthHeaderResource(I)V
    .registers 3
    .param p1, "value"    # I

    .line 84
    iget v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->monthHeaderResource:I

    if-eq v0, p1, :cond_9

    .line 85
    iput p1, p0, Lcom/kizitonwose/calendarview/CalendarView;->monthHeaderResource:I

    .line 86
    invoke-direct {p0}, Lcom/kizitonwose/calendarview/CalendarView;->updateAdapterViewConfig()V

    .line 88
    :cond_9
    return-void
.end method

.method public final setMonthMargins(IIII)V
    .registers 5
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .line 512
    iput p1, p0, Lcom/kizitonwose/calendarview/CalendarView;->monthMarginStart:I

    .line 513
    iput p2, p0, Lcom/kizitonwose/calendarview/CalendarView;->monthMarginTop:I

    .line 514
    iput p3, p0, Lcom/kizitonwose/calendarview/CalendarView;->monthMarginEnd:I

    .line 515
    iput p4, p0, Lcom/kizitonwose/calendarview/CalendarView;->monthMarginBottom:I

    .line 516
    invoke-direct {p0}, Lcom/kizitonwose/calendarview/CalendarView;->invalidateViewHolders()V

    .line 517
    return-void
.end method

.method public final setMonthPadding(IIII)V
    .registers 5
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .line 494
    iput p1, p0, Lcom/kizitonwose/calendarview/CalendarView;->monthPaddingStart:I

    .line 495
    iput p2, p0, Lcom/kizitonwose/calendarview/CalendarView;->monthPaddingTop:I

    .line 496
    iput p3, p0, Lcom/kizitonwose/calendarview/CalendarView;->monthPaddingEnd:I

    .line 497
    iput p4, p0, Lcom/kizitonwose/calendarview/CalendarView;->monthPaddingBottom:I

    .line 498
    invoke-direct {p0}, Lcom/kizitonwose/calendarview/CalendarView;->invalidateViewHolders()V

    .line 499
    return-void
.end method

.method public final setMonthScrollListener(Lkotlin/jvm/functions/Function1;)V
    .registers 2
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/kizitonwose/calendarview/model/CalendarMonth;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/kizitonwose/calendarview/CalendarView;->monthScrollListener:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setMonthViewClass(Ljava/lang/String;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->monthViewClass:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 110
    iput-object p1, p0, Lcom/kizitonwose/calendarview/CalendarView;->monthViewClass:Ljava/lang/String;

    .line 111
    invoke-direct {p0}, Lcom/kizitonwose/calendarview/CalendarView;->updateAdapterViewConfig()V

    .line 113
    :cond_d
    return-void
.end method

.method public final setOrientation(I)V
    .registers 5
    .param p1, "value"    # I

    .line 122
    iget v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->orientation:I

    if-eq v0, p1, :cond_17

    .line 123
    iput p1, p0, Lcom/kizitonwose/calendarview/CalendarView;->orientation:I

    .line 124
    iget-object v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->startMonth:Ljava/time/YearMonth;

    if-eqz v0, :cond_16

    iget-object v1, p0, Lcom/kizitonwose/calendarview/CalendarView;->endMonth:Ljava/time/YearMonth;

    if-eqz v1, :cond_16

    iget-object v2, p0, Lcom/kizitonwose/calendarview/CalendarView;->firstDayOfWeek:Ljava/time/DayOfWeek;

    if-eqz v2, :cond_16

    invoke-virtual {p0, v0, v1, v2}, Lcom/kizitonwose/calendarview/CalendarView;->setup(Ljava/time/YearMonth;Ljava/time/YearMonth;Ljava/time/DayOfWeek;)V

    goto :goto_17

    :cond_16
    return-void

    .line 126
    :cond_17
    :goto_17
    return-void
.end method

.method public final setOutDateStyle(Lcom/kizitonwose/calendarview/model/OutDateStyle;)V
    .registers 4
    .param p1, "value"    # Lcom/kizitonwose/calendarview/model/OutDateStyle;

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->outDateStyle:Lcom/kizitonwose/calendarview/model/OutDateStyle;

    if-eq v0, p1, :cond_11

    .line 174
    iput-object p1, p0, Lcom/kizitonwose/calendarview/CalendarView;->outDateStyle:Lcom/kizitonwose/calendarview/model/OutDateStyle;

    .line 175
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Lcom/kizitonwose/calendarview/CalendarView;->updateAdapterMonthConfig$default(Lcom/kizitonwose/calendarview/CalendarView;Lcom/kizitonwose/calendarview/model/MonthConfig;ILjava/lang/Object;)V

    .line 177
    :cond_11
    return-void
.end method

.method public final setScrollMode(Lcom/kizitonwose/calendarview/model/ScrollMode;)V
    .registers 4
    .param p1, "value"    # Lcom/kizitonwose/calendarview/model/ScrollMode;

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->scrollMode:Lcom/kizitonwose/calendarview/model/ScrollMode;

    if-eq v0, p1, :cond_1a

    .line 136
    iput-object p1, p0, Lcom/kizitonwose/calendarview/CalendarView;->scrollMode:Lcom/kizitonwose/calendarview/model/ScrollMode;

    .line 137
    iget-object v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->pagerSnapHelper:Lcom/kizitonwose/calendarview/ui/CalenderPageSnapHelper;

    sget-object v1, Lcom/kizitonwose/calendarview/model/ScrollMode;->PAGED:Lcom/kizitonwose/calendarview/model/ScrollMode;

    if-ne p1, v1, :cond_14

    move-object v1, p0

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/kizitonwose/calendarview/ui/CalenderPageSnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 139
    :cond_1a
    return-void
.end method

.method public final setWrappedPageHeightAnimationDuration(I)V
    .registers 2
    .param p1, "<set-?>"    # I

    .line 228
    iput p1, p0, Lcom/kizitonwose/calendarview/CalendarView;->wrappedPageHeightAnimationDuration:I

    return-void
.end method

.method public final setup(Ljava/time/YearMonth;Ljava/time/YearMonth;Ljava/time/DayOfWeek;)V
    .registers 16
    .param p1, "startMonth"    # Ljava/time/YearMonth;
    .param p2, "endMonth"    # Ljava/time/YearMonth;
    .param p3, "firstDayOfWeek"    # Ljava/time/DayOfWeek;

    const-string/jumbo v0, "startMonth"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endMonth"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firstDayOfWeek"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 664
    iget-object v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->configJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 665
    :cond_19
    iput-object p1, p0, Lcom/kizitonwose/calendarview/CalendarView;->startMonth:Ljava/time/YearMonth;

    .line 666
    iput-object p2, p0, Lcom/kizitonwose/calendarview/CalendarView;->endMonth:Ljava/time/YearMonth;

    .line 667
    iput-object p3, p0, Lcom/kizitonwose/calendarview/CalendarView;->firstDayOfWeek:Ljava/time/DayOfWeek;

    .line 668
    nop

    .line 669
    new-instance v0, Lcom/kizitonwose/calendarview/model/MonthConfig;

    .line 670
    iget-object v4, p0, Lcom/kizitonwose/calendarview/CalendarView;->outDateStyle:Lcom/kizitonwose/calendarview/model/OutDateStyle;

    iget-object v5, p0, Lcom/kizitonwose/calendarview/CalendarView;->inDateStyle:Lcom/kizitonwose/calendarview/model/InDateStyle;

    iget v6, p0, Lcom/kizitonwose/calendarview/CalendarView;->maxRowCount:I

    .line 671
    iget-boolean v10, p0, Lcom/kizitonwose/calendarview/CalendarView;->hasBoundaries:Z

    invoke-static {v2, v1, v2}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lkotlinx/coroutines/Job;

    .line 669
    move-object v3, v0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v3 .. v11}, Lcom/kizitonwose/calendarview/model/MonthConfig;-><init>(Lcom/kizitonwose/calendarview/model/OutDateStyle;Lcom/kizitonwose/calendarview/model/InDateStyle;ILjava/time/YearMonth;Ljava/time/YearMonth;Ljava/time/DayOfWeek;ZLkotlinx/coroutines/Job;)V

    .line 668
    invoke-direct {p0, v0}, Lcom/kizitonwose/calendarview/CalendarView;->finishSetup(Lcom/kizitonwose/calendarview/model/MonthConfig;)V

    .line 674
    return-void
.end method

.method public final setupAsync(Ljava/time/YearMonth;Ljava/time/YearMonth;Ljava/time/DayOfWeek;)V
    .registers 11

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v6}, Lcom/kizitonwose/calendarview/CalendarView;->setupAsync$default(Lcom/kizitonwose/calendarview/CalendarView;Ljava/time/YearMonth;Ljava/time/YearMonth;Ljava/time/DayOfWeek;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public final setupAsync(Ljava/time/YearMonth;Ljava/time/YearMonth;Ljava/time/DayOfWeek;Lkotlin/jvm/functions/Function0;)V
    .registers 14
    .param p1, "startMonth"    # Ljava/time/YearMonth;
    .param p2, "endMonth"    # Ljava/time/YearMonth;
    .param p3, "firstDayOfWeek"    # Ljava/time/DayOfWeek;
    .param p4, "completion"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/YearMonth;",
            "Ljava/time/YearMonth;",
            "Ljava/time/DayOfWeek;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "startMonth"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endMonth"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firstDayOfWeek"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 696
    iget-object v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->configJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_19

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 697
    :cond_19
    iput-object p1, p0, Lcom/kizitonwose/calendarview/CalendarView;->startMonth:Ljava/time/YearMonth;

    .line 698
    iput-object p2, p0, Lcom/kizitonwose/calendarview/CalendarView;->endMonth:Ljava/time/YearMonth;

    .line 699
    iput-object p3, p0, Lcom/kizitonwose/calendarview/CalendarView;->firstDayOfWeek:Ljava/time/DayOfWeek;

    .line 700
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/kizitonwose/calendarview/CalendarView$setupAsync$1;

    const/4 v8, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/kizitonwose/calendarview/CalendarView$setupAsync$1;-><init>(Lcom/kizitonwose/calendarview/CalendarView;Ljava/time/YearMonth;Ljava/time/YearMonth;Ljava/time/DayOfWeek;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->configJob:Lkotlinx/coroutines/Job;

    .line 710
    return-void
.end method

.method public final smoothScrollToDate(Ljava/time/LocalDate;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/kizitonwose/calendarview/CalendarView;->smoothScrollToDate$default(Lcom/kizitonwose/calendarview/CalendarView;Ljava/time/LocalDate;Lcom/kizitonwose/calendarview/model/DayOwner;ILjava/lang/Object;)V

    return-void
.end method

.method public final smoothScrollToDate(Ljava/time/LocalDate;Lcom/kizitonwose/calendarview/model/DayOwner;)V
    .registers 4
    .param p1, "date"    # Ljava/time/LocalDate;
    .param p2, "owner"    # Lcom/kizitonwose/calendarview/model/DayOwner;

    const-string v0, "date"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "owner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 568
    new-instance v0, Lcom/kizitonwose/calendarview/model/CalendarDay;

    invoke-direct {v0, p1, p2}, Lcom/kizitonwose/calendarview/model/CalendarDay;-><init>(Ljava/time/LocalDate;Lcom/kizitonwose/calendarview/model/DayOwner;)V

    invoke-virtual {p0, v0}, Lcom/kizitonwose/calendarview/CalendarView;->smoothScrollToDay(Lcom/kizitonwose/calendarview/model/CalendarDay;)V

    .line 569
    return-void
.end method

.method public final smoothScrollToDay(Lcom/kizitonwose/calendarview/model/CalendarDay;)V
    .registers 3
    .param p1, "day"    # Lcom/kizitonwose/calendarview/model/CalendarDay;

    const-string v0, "day"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 560
    invoke-direct {p0}, Lcom/kizitonwose/calendarview/CalendarView;->getCalendarLayoutManager()Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;->smoothScrollToDay(Lcom/kizitonwose/calendarview/model/CalendarDay;)V

    .line 561
    return-void
.end method

.method public final smoothScrollToMonth(Ljava/time/YearMonth;)V
    .registers 3
    .param p1, "month"    # Ljava/time/YearMonth;

    const-string v0, "month"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 533
    invoke-direct {p0}, Lcom/kizitonwose/calendarview/CalendarView;->getCalendarLayoutManager()Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kizitonwose/calendarview/ui/CalendarLayoutManager;->smoothScrollToMonth(Ljava/time/YearMonth;)V

    .line 534
    return-void
.end method

.method public final updateMonthConfiguration(Lcom/kizitonwose/calendarview/model/InDateStyle;Lcom/kizitonwose/calendarview/model/OutDateStyle;IZ)V
    .registers 8
    .param p1, "inDateStyle"    # Lcom/kizitonwose/calendarview/model/InDateStyle;
    .param p2, "outDateStyle"    # Lcom/kizitonwose/calendarview/model/OutDateStyle;
    .param p3, "maxRowCount"    # I
    .param p4, "hasBoundaries"    # Z

    const-string v0, "inDateStyle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outDateStyle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->configJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 445
    :cond_13
    iput-boolean v1, p0, Lcom/kizitonwose/calendarview/CalendarView;->internalConfigUpdate:Z

    .line 446
    invoke-virtual {p0, p1}, Lcom/kizitonwose/calendarview/CalendarView;->setInDateStyle(Lcom/kizitonwose/calendarview/model/InDateStyle;)V

    .line 447
    invoke-virtual {p0, p2}, Lcom/kizitonwose/calendarview/CalendarView;->setOutDateStyle(Lcom/kizitonwose/calendarview/model/OutDateStyle;)V

    .line 448
    invoke-virtual {p0, p3}, Lcom/kizitonwose/calendarview/CalendarView;->setMaxRowCount(I)V

    .line 449
    invoke-virtual {p0, p4}, Lcom/kizitonwose/calendarview/CalendarView;->setHasBoundaries(Z)V

    .line 450
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->internalConfigUpdate:Z

    .line 451
    invoke-static {p0, v2, v1, v2}, Lcom/kizitonwose/calendarview/CalendarView;->updateAdapterMonthConfig$default(Lcom/kizitonwose/calendarview/CalendarView;Lcom/kizitonwose/calendarview/model/MonthConfig;ILjava/lang/Object;)V

    .line 452
    return-void
.end method

.method public final updateMonthConfigurationAsync(Lcom/kizitonwose/calendarview/model/InDateStyle;Lcom/kizitonwose/calendarview/model/OutDateStyle;IZLkotlin/jvm/functions/Function0;)V
    .registers 15
    .param p1, "inDateStyle"    # Lcom/kizitonwose/calendarview/model/InDateStyle;
    .param p2, "outDateStyle"    # Lcom/kizitonwose/calendarview/model/OutDateStyle;
    .param p3, "maxRowCount"    # I
    .param p4, "hasBoundaries"    # Z
    .param p5, "completion"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kizitonwose/calendarview/model/InDateStyle;",
            "Lcom/kizitonwose/calendarview/model/OutDateStyle;",
            "IZ",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "inDateStyle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outDateStyle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->configJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 468
    :cond_13
    iput-boolean v1, p0, Lcom/kizitonwose/calendarview/CalendarView;->internalConfigUpdate:Z

    .line 469
    invoke-virtual {p0, p1}, Lcom/kizitonwose/calendarview/CalendarView;->setInDateStyle(Lcom/kizitonwose/calendarview/model/InDateStyle;)V

    .line 470
    invoke-virtual {p0, p2}, Lcom/kizitonwose/calendarview/CalendarView;->setOutDateStyle(Lcom/kizitonwose/calendarview/model/OutDateStyle;)V

    .line 471
    invoke-virtual {p0, p3}, Lcom/kizitonwose/calendarview/CalendarView;->setMaxRowCount(I)V

    .line 472
    invoke-virtual {p0, p4}, Lcom/kizitonwose/calendarview/CalendarView;->setHasBoundaries(Z)V

    .line 473
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->internalConfigUpdate:Z

    .line 474
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/kizitonwose/calendarview/CalendarView$updateMonthConfigurationAsync$1;

    invoke-direct {v0, p0, p5, v2}, Lcom/kizitonwose/calendarview/CalendarView$updateMonthConfigurationAsync$1;-><init>(Lcom/kizitonwose/calendarview/CalendarView;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->configJob:Lkotlinx/coroutines/Job;

    .line 481
    return-void
.end method

.method public final updateMonthRange()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {p0, v0, v0, v1, v0}, Lcom/kizitonwose/calendarview/CalendarView;->updateMonthRange$default(Lcom/kizitonwose/calendarview/CalendarView;Ljava/time/YearMonth;Ljava/time/YearMonth;ILjava/lang/Object;)V

    return-void
.end method

.method public final updateMonthRange(Ljava/time/YearMonth;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/kizitonwose/calendarview/CalendarView;->updateMonthRange$default(Lcom/kizitonwose/calendarview/CalendarView;Ljava/time/YearMonth;Ljava/time/YearMonth;ILjava/lang/Object;)V

    return-void
.end method

.method public final updateMonthRange(Ljava/time/YearMonth;Ljava/time/YearMonth;)V
    .registers 6
    .param p1, "startMonth"    # Ljava/time/YearMonth;
    .param p2, "endMonth"    # Ljava/time/YearMonth;

    const-string/jumbo v0, "startMonth"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endMonth"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 731
    iget-object v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->configJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 732
    :cond_14
    iput-object p1, p0, Lcom/kizitonwose/calendarview/CalendarView;->startMonth:Ljava/time/YearMonth;

    .line 733
    iput-object p2, p0, Lcom/kizitonwose/calendarview/CalendarView;->endMonth:Ljava/time/YearMonth;

    .line 734
    invoke-static {v2, v1, v2}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/Job;

    invoke-direct {p0, v0}, Lcom/kizitonwose/calendarview/CalendarView;->getMonthUpdateData(Lkotlinx/coroutines/Job;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kizitonwose/calendarview/model/MonthConfig;

    .local v1, "config":Lcom/kizitonwose/calendarview/model/MonthConfig;
    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    .line 735
    .local v0, "diff":Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    invoke-direct {p0, v1, v0}, Lcom/kizitonwose/calendarview/CalendarView;->finishUpdateMonthRange(Lcom/kizitonwose/calendarview/model/MonthConfig;Landroidx/recyclerview/widget/DiffUtil$DiffResult;)V

    .line 736
    return-void
.end method

.method public final updateMonthRangeAsync()V
    .registers 7

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/kizitonwose/calendarview/CalendarView;->updateMonthRangeAsync$default(Lcom/kizitonwose/calendarview/CalendarView;Ljava/time/YearMonth;Ljava/time/YearMonth;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public final updateMonthRangeAsync(Ljava/time/YearMonth;)V
    .registers 8

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/kizitonwose/calendarview/CalendarView;->updateMonthRangeAsync$default(Lcom/kizitonwose/calendarview/CalendarView;Ljava/time/YearMonth;Ljava/time/YearMonth;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public final updateMonthRangeAsync(Ljava/time/YearMonth;Ljava/time/YearMonth;)V
    .registers 9

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/kizitonwose/calendarview/CalendarView;->updateMonthRangeAsync$default(Lcom/kizitonwose/calendarview/CalendarView;Ljava/time/YearMonth;Ljava/time/YearMonth;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public final updateMonthRangeAsync(Ljava/time/YearMonth;Ljava/time/YearMonth;Lkotlin/jvm/functions/Function0;)V
    .registers 12
    .param p1, "startMonth"    # Ljava/time/YearMonth;
    .param p2, "endMonth"    # Ljava/time/YearMonth;
    .param p3, "completion"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/YearMonth;",
            "Ljava/time/YearMonth;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "startMonth"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endMonth"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 750
    iget-object v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->configJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 751
    :cond_14
    iput-object p1, p0, Lcom/kizitonwose/calendarview/CalendarView;->startMonth:Ljava/time/YearMonth;

    .line 752
    iput-object p2, p0, Lcom/kizitonwose/calendarview/CalendarView;->endMonth:Ljava/time/YearMonth;

    .line 753
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/kizitonwose/calendarview/CalendarView$updateMonthRangeAsync$1;

    invoke-direct {v0, p0, p3, v1}, Lcom/kizitonwose/calendarview/CalendarView$updateMonthRangeAsync$1;-><init>(Lcom/kizitonwose/calendarview/CalendarView;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lcom/kizitonwose/calendarview/CalendarView;->configJob:Lkotlinx/coroutines/Job;

    .line 760
    return-void
.end method
