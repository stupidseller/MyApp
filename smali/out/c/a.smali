.class public final Lc/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile d:J = -0x8000000000000000L


# instance fields
.field public a:I

.field public b:Z

.field public final c:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lc/a;->a:I

    .line 14
    iput-boolean v0, p0, Lc/a;->b:Z

    .line 21
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    iput-object v0, p0, Lc/a;->c:[I

    return-void

    :array_12
    .array-data 4
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
        0x200
        0x400
        0x800
        0x1000
        0x1c20
    .end array-data
.end method


# virtual methods
.method public final a()V
    .registers 9

    .line 1
    iget v0, p0, Lc/a;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/a;->a:I

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "errorCount: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lc/a;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/a;->a(Ljava/lang/String;)V

    .line 3
    iget v0, p0, Lc/a;->a:I

    const/16 v2, 0x42

    if-gt v0, v2, :cond_39

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lc/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " < minimumErrorCount: 66"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/a;->a(Ljava/lang/String;)V

    return-void

    :cond_39
    add-int/lit8 v0, v0, -0x43

    if-gez v0, :cond_3f

    const/4 v0, -0x1

    goto :goto_49

    .line 6
    :cond_3f
    iget-object v2, p0, Lc/a;->c:[I

    array-length v3, v2

    if-lt v0, v3, :cond_47

    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    :cond_47
    aget v0, v2, v0

    .line 7
    :goto_49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v4, v0

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    add-long/2addr v4, v2

    sput-wide v4, Lc/a;->d:J

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lc/a;->a:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > minimumErrorCount: 66, waitTime\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v1, Lc/a;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    .line 9
    iget-boolean v0, p0, Lc/a;->b:Z

    if-eqz v0, :cond_9

    .line 10
    const-string v0, "QWeatherBackoff"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method
