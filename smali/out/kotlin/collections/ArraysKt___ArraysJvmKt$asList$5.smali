.class public final Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$5;
.super Lkotlin/collections/AbstractList;
.source "_ArraysJvm.kt"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/collections/ArraysKt___ArraysJvmKt;->asList([F)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/collections/AbstractList<",
        "Ljava/lang/Float;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\n_ArraysJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _ArraysJvm.kt\nkotlin/collections/ArraysKt___ArraysJvmKt$asList$5\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,3420:1\n12794#2,2:3421\n1687#2,6:3423\n1795#2,6:3429\n*S KotlinDebug\n*F\n+ 1 _ArraysJvm.kt\nkotlin/collections/ArraysKt___ArraysJvmKt$asList$5\n*L\n199#1:3421,2\n201#1:3423,6\n202#1:3429,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0008*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00060\u0003j\u0002`\u0004J\u0011\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0002H\u0096\u0002J\u0016\u0010\u000c\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u0006H\u0096\u0002\u00a2\u0006\u0002\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0002H\u0016J\u0008\u0010\u0010\u001a\u00020\nH\u0016J\u0010\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0002H\u0016R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0012"
    }
    d2 = {
        "kotlin/collections/ArraysKt___ArraysJvmKt$asList$5",
        "Lkotlin/collections/AbstractList;",
        "",
        "Ljava/util/RandomAccess;",
        "Lkotlin/collections/RandomAccess;",
        "size",
        "",
        "getSize",
        "()I",
        "contains",
        "",
        "element",
        "get",
        "index",
        "(I)Ljava/lang/Float;",
        "indexOf",
        "isEmpty",
        "lastIndexOf",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $this_asList:[F


# direct methods
.method constructor <init>([F)V
    .registers 2
    .param p1, "$receiver"    # [F

    iput-object p1, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$5;->$this_asList:[F

    .line 196
    invoke-direct {p0}, Lkotlin/collections/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(F)Z
    .registers 13
    .param p1, "element"    # F

    .line 199
    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$5;->$this_asList:[F

    .local v0, "$this$any$iv":[F
    const/4 v1, 0x0

    .line 3421
    .local v1, "$i$f$any":I
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_6
    if-ge v4, v2, :cond_21

    aget v5, v0, v4

    .local v5, "element$iv":F
    move v6, v5

    .local v6, "it":F
    const/4 v7, 0x0

    .line 199
    .local v7, "$i$a$-any-ArraysKt___ArraysJvmKt$asList$5$contains$1":I
    invoke-static {v6}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v8

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v9

    const/4 v10, 0x1

    if-ne v8, v9, :cond_19

    move v8, v10

    goto :goto_1a

    :cond_19
    move v8, v3

    .line 3421
    .end local v6    # "it":F
    .end local v7    # "$i$a$-any-ArraysKt___ArraysJvmKt$asList$5$contains$1":I
    :goto_1a
    if-eqz v8, :cond_1e

    move v3, v10

    goto :goto_22

    .end local v5    # "element$iv":F
    :cond_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 3422
    :cond_21
    nop

    .line 199
    .end local v0    # "$this$any$iv":[F
    .end local v1    # "$i$f$any":I
    :goto_22
    return v3
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "element"    # Ljava/lang/Object;

    .line 196
    instance-of v0, p1, Ljava/lang/Float;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$5;->contains(F)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/lang/Float;
    .registers 3
    .param p1, "index"    # I

    .line 200
    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$5;->$this_asList:[F

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I

    .line 196
    invoke-virtual {p0, p1}, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$5;->get(I)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .registers 2

    .line 197
    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$5;->$this_asList:[F

    array-length v0, v0

    return v0
.end method

.method public indexOf(F)I
    .registers 10
    .param p1, "element"    # F

    .line 201
    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$5;->$this_asList:[F

    .local v0, "$this$indexOfFirst$iv":[F
    const/4 v1, 0x0

    .line 3423
    .local v1, "$i$f$indexOfFirst":I
    const/4 v2, 0x0

    .local v2, "index$iv":I
    array-length v3, v0

    :goto_5
    if-ge v2, v3, :cond_1d

    .line 3424
    aget v4, v0, v2

    .local v4, "it":F
    const/4 v5, 0x0

    .line 201
    .local v5, "$i$a$-indexOfFirst-ArraysKt___ArraysJvmKt$asList$5$indexOf$1":I
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v6

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v7

    if-ne v6, v7, :cond_16

    const/4 v6, 0x1

    goto :goto_17

    :cond_16
    const/4 v6, 0x0

    .line 3424
    .end local v4    # "it":F
    .end local v5    # "$i$a$-indexOfFirst-ArraysKt___ArraysJvmKt$asList$5$indexOf$1":I
    :goto_17
    if-eqz v6, :cond_1a

    .line 3425
    goto :goto_1e

    .line 3423
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 3428
    .end local v2    # "index$iv":I
    :cond_1d
    const/4 v2, -0x1

    .line 201
    .end local v0    # "$this$indexOfFirst$iv":[F
    .end local v1    # "$i$f$indexOfFirst":I
    :goto_1e
    return v2
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .registers 3
    .param p1, "element"    # Ljava/lang/Object;

    .line 196
    instance-of v0, p1, Ljava/lang/Float;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    return v0

    :cond_6
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$5;->indexOf(F)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 198
    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$5;->$this_asList:[F

    array-length v0, v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public lastIndexOf(F)I
    .registers 11
    .param p1, "element"    # F

    .line 202
    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$5;->$this_asList:[F

    .local v0, "$this$indexOfLast$iv":[F
    const/4 v1, 0x0

    .line 3429
    .local v1, "$i$f$indexOfLast":I
    array-length v2, v0

    const/4 v3, -0x1

    add-int/2addr v2, v3

    if-ltz v2, :cond_20

    :cond_8
    move v4, v2

    .local v4, "index$iv":I
    add-int/2addr v2, v3

    .line 3430
    aget v5, v0, v4

    .local v5, "it":F
    const/4 v6, 0x0

    .line 202
    .local v6, "$i$a$-indexOfLast-ArraysKt___ArraysJvmKt$asList$5$lastIndexOf$1":I
    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v7

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v8

    if-ne v7, v8, :cond_19

    const/4 v7, 0x1

    goto :goto_1a

    :cond_19
    const/4 v7, 0x0

    .line 3430
    .end local v5    # "it":F
    .end local v6    # "$i$a$-indexOfLast-ArraysKt___ArraysJvmKt$asList$5$lastIndexOf$1":I
    :goto_1a
    if-eqz v7, :cond_1e

    .line 3431
    move v3, v4

    goto :goto_21

    .line 3429
    :cond_1e
    if-gez v2, :cond_8

    .line 3434
    .end local v4    # "index$iv":I
    :cond_20
    nop

    .line 202
    .end local v0    # "$this$indexOfLast$iv":[F
    .end local v1    # "$i$f$indexOfLast":I
    :goto_21
    return v3
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .registers 3
    .param p1, "element"    # Ljava/lang/Object;

    .line 196
    instance-of v0, p1, Ljava/lang/Float;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    return v0

    :cond_6
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$5;->lastIndexOf(F)I

    move-result v0

    return v0
.end method
