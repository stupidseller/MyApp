.class public abstract Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.super Ljava/lang/Object;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SpanSizeLookup"
.end annotation


# instance fields
.field private mCacheSpanGroupIndices:Z

.field private mCacheSpanIndices:Z

.field final mSpanGroupIndexCache:Landroid/util/SparseIntArray;

.field final mSpanIndexCache:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 844
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 846
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    .line 847
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanGroupIndexCache:Landroid/util/SparseIntArray;

    .line 849
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    .line 850
    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanGroupIndices:Z

    return-void
.end method

.method static findFirstKeyLessThan(Landroid/util/SparseIntArray;I)I
    .registers 6
    .param p0, "cache"    # Landroid/util/SparseIntArray;
    .param p1, "position"    # I

    .line 1007
    const/4 v0, 0x0

    .line 1008
    .local v0, "lo":I
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 1010
    .local v1, "hi":I
    :goto_7
    if-gt v0, v1, :cond_19

    .line 1013
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 1014
    .local v2, "mid":I
    invoke-virtual {p0, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 1015
    .local v3, "midVal":I
    if-ge v3, p1, :cond_16

    .line 1016
    add-int/lit8 v0, v2, 0x1

    goto :goto_18

    .line 1018
    :cond_16
    add-int/lit8 v1, v2, -0x1

    .line 1020
    .end local v2    # "mid":I
    .end local v3    # "midVal":I
    :goto_18
    goto :goto_7

    .line 1021
    :cond_19
    add-int/lit8 v2, v0, -0x1

    .line 1022
    .local v2, "index":I
    if-ltz v2, :cond_28

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_28

    .line 1023
    invoke-virtual {p0, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    return v3

    .line 1025
    :cond_28
    const/4 v3, -0x1

    return v3
.end method


# virtual methods
.method getCachedSpanGroupIndex(II)I
    .registers 6
    .param p1, "position"    # I
    .param p2, "spanCount"    # I

    .line 940
    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanGroupIndices:Z

    if-nez v0, :cond_9

    .line 941
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result v0

    return v0

    .line 943
    :cond_9
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanGroupIndexCache:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 944
    .local v0, "existing":I
    if-eq v0, v1, :cond_13

    .line 945
    return v0

    .line 947
    :cond_13
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result v1

    .line 948
    .local v1, "value":I
    iget-object v2, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanGroupIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 949
    return v1
.end method

.method getCachedSpanIndex(II)I
    .registers 6
    .param p1, "position"    # I
    .param p2, "spanCount"    # I

    .line 927
    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    if-nez v0, :cond_9

    .line 928
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    move-result v0

    return v0

    .line 930
    :cond_9
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 931
    .local v0, "existing":I
    if-eq v0, v1, :cond_13

    .line 932
    return v0

    .line 934
    :cond_13
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    move-result v1

    .line 935
    .local v1, "value":I
    iget-object v2, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 936
    return v1
.end method

.method public getSpanGroupIndex(II)I
    .registers 9
    .param p1, "adapterPosition"    # I
    .param p2, "spanCount"    # I

    .line 1039
    const/4 v0, 0x0

    .line 1040
    .local v0, "span":I
    const/4 v1, 0x0

    .line 1041
    .local v1, "group":I
    const/4 v2, 0x0

    .line 1042
    .local v2, "start":I
    iget-boolean v3, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanGroupIndices:Z

    if-eqz v3, :cond_27

    .line 1044
    iget-object v3, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanGroupIndexCache:Landroid/util/SparseIntArray;

    invoke-static {v3, p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->findFirstKeyLessThan(Landroid/util/SparseIntArray;I)I

    move-result v3

    .line 1045
    .local v3, "prevKey":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_27

    .line 1046
    iget-object v4, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanGroupIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 1047
    add-int/lit8 v2, v3, 0x1

    .line 1048
    invoke-virtual {p0, v3, p2}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result v4

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v5

    add-int v0, v4, v5

    .line 1049
    if-ne v0, p2, :cond_27

    .line 1050
    const/4 v0, 0x0

    .line 1051
    add-int/lit8 v1, v1, 0x1

    .line 1055
    .end local v3    # "prevKey":I
    :cond_27
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v3

    .line 1056
    .local v3, "positionSpanSize":I
    move v4, v2

    .local v4, "i":I
    :goto_2c
    if-ge v4, p1, :cond_41

    .line 1057
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v5

    .line 1058
    .local v5, "size":I
    add-int/2addr v0, v5

    .line 1059
    if-ne v0, p2, :cond_39

    .line 1060
    const/4 v0, 0x0

    .line 1061
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 1062
    :cond_39
    if-le v0, p2, :cond_3e

    .line 1064
    move v0, v5

    .line 1065
    add-int/lit8 v1, v1, 0x1

    .line 1056
    .end local v5    # "size":I
    :cond_3e
    :goto_3e
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 1068
    .end local v4    # "i":I
    :cond_41
    add-int v4, v0, v3

    if-le v4, p2, :cond_47

    .line 1069
    add-int/lit8 v1, v1, 0x1

    .line 1071
    :cond_47
    return v1
.end method

.method public getSpanIndex(II)I
    .registers 10
    .param p1, "position"    # I
    .param p2, "spanCount"    # I

    .line 976
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v0

    .line 977
    .local v0, "positionSpanSize":I
    const/4 v1, 0x0

    if-ne v0, p2, :cond_8

    .line 978
    return v1

    .line 980
    :cond_8
    const/4 v2, 0x0

    .line 981
    .local v2, "span":I
    const/4 v3, 0x0

    .line 983
    .local v3, "startPos":I
    iget-boolean v4, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    if-eqz v4, :cond_24

    .line 984
    iget-object v4, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-static {v4, p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->findFirstKeyLessThan(Landroid/util/SparseIntArray;I)I

    move-result v4

    .line 985
    .local v4, "prevKey":I
    if-ltz v4, :cond_24

    .line 986
    iget-object v5, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v6

    add-int v2, v5, v6

    .line 987
    add-int/lit8 v3, v4, 0x1

    .line 990
    .end local v4    # "prevKey":I
    :cond_24
    move v4, v3

    .local v4, "i":I
    :goto_25
    if-ge v4, p1, :cond_36

    .line 991
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v5

    .line 992
    .local v5, "size":I
    add-int/2addr v2, v5

    .line 993
    if-ne v2, p2, :cond_30

    .line 994
    const/4 v2, 0x0

    goto :goto_33

    .line 995
    :cond_30
    if-le v2, p2, :cond_33

    .line 997
    move v2, v5

    .line 990
    .end local v5    # "size":I
    :cond_33
    :goto_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 1000
    .end local v4    # "i":I
    :cond_36
    add-int v4, v2, v0

    if-gt v4, p2, :cond_3b

    .line 1001
    return v2

    .line 1003
    :cond_3b
    return v1
.end method

.method public abstract getSpanSize(I)I
.end method

.method public invalidateSpanGroupIndexCache()V
    .registers 2

    .line 905
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanGroupIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 906
    return-void
.end method

.method public invalidateSpanIndexCache()V
    .registers 2

    .line 897
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 898
    return-void
.end method

.method public isSpanGroupIndexCacheEnabled()Z
    .registers 2

    .line 923
    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanGroupIndices:Z

    return v0
.end method

.method public isSpanIndexCacheEnabled()Z
    .registers 2

    .line 914
    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    return v0
.end method

.method public setSpanGroupIndexCacheEnabled(Z)V
    .registers 3
    .param p1, "cacheSpanGroupIndices"    # Z

    .line 886
    if-nez p1, :cond_7

    .line 887
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanGroupIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 889
    :cond_7
    iput-boolean p1, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanGroupIndices:Z

    .line 890
    return-void
.end method

.method public setSpanIndexCacheEnabled(Z)V
    .registers 3
    .param p1, "cacheSpanIndices"    # Z

    .line 869
    if-nez p1, :cond_7

    .line 870
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanGroupIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 872
    :cond_7
    iput-boolean p1, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    .line 873
    return-void
.end method
