.class public final Lkotlin/io/CloseableKt;
.super Ljava/lang/Object;
.source "Closeable.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0018\u0010\u0000\u001a\u00020\u0001*\u0004\u0018\u00010\u00022\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0001\u001aH\u0010\u0005\u001a\u0002H\u0006\"\n\u0008\u0000\u0010\u0007*\u0004\u0018\u00010\u0002\"\u0004\u0008\u0001\u0010\u0006*\u0002H\u00072\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u0002H\u0007\u0012\u0004\u0012\u0002H\u00060\tH\u0087\u0008\u00f8\u0001\u0000\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0001 \u0001\u00a2\u0006\u0002\u0010\n\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u000b"
    }
    d2 = {
        "closeFinally",
        "",
        "Ljava/io/Closeable;",
        "cause",
        "",
        "use",
        "R",
        "T",
        "block",
        "Lkotlin/Function1;",
        "(Ljava/io/Closeable;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "$this$closeFinally"    # Ljava/io/Closeable;
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 54
    nop

    .line 55
    if-eqz p0, :cond_12

    .line 56
    if-nez p1, :cond_9

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    goto :goto_12

    .line 58
    :cond_9
    nop

    .line 59
    :try_start_a
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_e

    goto :goto_12

    .line 60
    :catchall_e
    move-exception v0

    .line 61
    .local v0, "closeException":Ljava/lang/Throwable;
    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 63
    .end local v0    # "closeException":Ljava/lang/Throwable;
    :cond_12
    :goto_12
    return-void
.end method

.method private static final use(Ljava/io/Closeable;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .registers 6
    .param p0, "$this$use"    # Ljava/io/Closeable;
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Closeable;",
            "R:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    nop

    .line 25
    const/4 v0, 0x0

    .line 26
    .local v0, "exception":Ljava/lang/Throwable;
    nop

    .line 27
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_a
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_25

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 32
    nop

    .line 33
    invoke-static {v2, v2, v1}, Lkotlin/internal/PlatformImplementationsKt;->apiVersionIsAtLeast(III)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-static {p0, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_21

    .line 34
    :cond_1c
    if-eqz p0, :cond_21

    .line 35
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    :cond_21
    :goto_21
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 27
    return-object v3

    .line 28
    :catchall_25
    move-exception v3

    .line 29
    .local v3, "e":Ljava/lang/Throwable;
    move-object v0, v3

    .line 30
    nop

    .end local v0    # "exception":Ljava/lang/Throwable;
    .end local p0    # "$this$use":Ljava/io/Closeable;
    .end local p1    # "block":Lkotlin/jvm/functions/Function1;
    :try_start_28
    throw v3
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_29

    .line 32
    .end local v3    # "e":Ljava/lang/Throwable;
    .restart local v0    # "exception":Ljava/lang/Throwable;
    .restart local p0    # "$this$use":Ljava/io/Closeable;
    .restart local p1    # "block":Lkotlin/jvm/functions/Function1;
    :catchall_29
    move-exception v3

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 33
    invoke-static {v2, v2, v1}, Lkotlin/internal/PlatformImplementationsKt;->apiVersionIsAtLeast(III)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 34
    if-eqz p0, :cond_40

    .line 35
    nop

    .line 37
    nop

    .line 38
    :try_start_37
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3b

    goto :goto_40

    .line 39
    :catchall_3b
    move-exception v1

    goto :goto_40

    .line 33
    :cond_3d
    invoke-static {p0, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 39
    :cond_40
    :goto_40
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v3
.end method
