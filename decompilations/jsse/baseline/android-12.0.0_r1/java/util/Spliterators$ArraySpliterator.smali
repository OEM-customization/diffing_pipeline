.class final Ljava/util/Spliterators$ArraySpliterator;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Spliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ArraySpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final greylist-max-o array:[Ljava/lang/Object;

.field private final greylist-max-o characteristics:I

.field private final greylist-max-o fence:I

.field private greylist-max-o index:I


# direct methods
.method public constructor greylist-max-o <init>([Ljava/lang/Object;I)V
    .registers 5
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "additionalCharacteristics"    # I

    .line 913
    .local p0, "this":Ljava/util/Spliterators$ArraySpliterator;, "Ljava/util/Spliterators$ArraySpliterator<TT;>;"
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Ljava/util/Spliterators$ArraySpliterator;-><init>([Ljava/lang/Object;III)V

    .line 914
    return-void
.end method

.method public constructor greylist-max-o <init>([Ljava/lang/Object;III)V
    .registers 6
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .param p4, "additionalCharacteristics"    # I

    .line 925
    .local p0, "this":Ljava/util/Spliterators$ArraySpliterator;, "Ljava/util/Spliterators$ArraySpliterator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 926
    iput-object p1, p0, Ljava/util/Spliterators$ArraySpliterator;->array:[Ljava/lang/Object;

    .line 927
    iput p2, p0, Ljava/util/Spliterators$ArraySpliterator;->index:I

    .line 928
    iput p3, p0, Ljava/util/Spliterators$ArraySpliterator;->fence:I

    .line 929
    or-int/lit8 v0, p4, 0x40

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Ljava/util/Spliterators$ArraySpliterator;->characteristics:I

    .line 930
    return-void
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 969
    .local p0, "this":Ljava/util/Spliterators$ArraySpliterator;, "Ljava/util/Spliterators$ArraySpliterator<TT;>;"
    iget v0, p0, Ljava/util/Spliterators$ArraySpliterator;->characteristics:I

    return v0
.end method

.method public whitelist test-api estimateSize()J
    .registers 3

    .line 965
    .local p0, "this":Ljava/util/Spliterators$ArraySpliterator;, "Ljava/util/Spliterators$ArraySpliterator<TT;>;"
    iget v0, p0, Ljava/util/Spliterators$ArraySpliterator;->fence:I

    iget v1, p0, Ljava/util/Spliterators$ArraySpliterator;->index:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 944
    .local p0, "this":Ljava/util/Spliterators$ArraySpliterator;, "Ljava/util/Spliterators$ArraySpliterator<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    if-eqz p1, :cond_1e

    .line 946
    iget-object v0, p0, Ljava/util/Spliterators$ArraySpliterator;->array:[Ljava/lang/Object;

    move-object v1, v0

    .local v1, "a":[Ljava/lang/Object;
    array-length v0, v0

    iget v2, p0, Ljava/util/Spliterators$ArraySpliterator;->fence:I

    move v3, v2

    .local v3, "hi":I
    if-lt v0, v2, :cond_1d

    iget v0, p0, Ljava/util/Spliterators$ArraySpliterator;->index:I

    move v2, v0

    .local v2, "i":I
    if-ltz v0, :cond_1d

    iput v3, p0, Ljava/util/Spliterators$ArraySpliterator;->index:I

    if-ge v2, v3, :cond_1d

    .line 948
    :cond_14
    aget-object v0, v1, v2

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v3, :cond_14

    .line 950
    .end local v2    # "i":I
    :cond_1d
    return-void

    .line 945
    .end local v1    # "a":[Ljava/lang/Object;
    .end local v3    # "hi":I
    :cond_1e
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getComparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation

    .line 974
    .local p0, "this":Ljava/util/Spliterators$ArraySpliterator;, "Ljava/util/Spliterators$ArraySpliterator<TT;>;"
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/util/Spliterators$ArraySpliterator;->hasCharacteristics(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 975
    const/4 v0, 0x0

    return-object v0

    .line 976
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 954
    .local p0, "this":Ljava/util/Spliterators$ArraySpliterator;, "Ljava/util/Spliterators$ArraySpliterator<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    if-eqz p1, :cond_19

    .line 956
    iget v0, p0, Ljava/util/Spliterators$ArraySpliterator;->index:I

    if-ltz v0, :cond_17

    iget v1, p0, Ljava/util/Spliterators$ArraySpliterator;->fence:I

    if-ge v0, v1, :cond_17

    .line 957
    iget-object v1, p0, Ljava/util/Spliterators$ArraySpliterator;->array:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Ljava/util/Spliterators$ArraySpliterator;->index:I

    aget-object v0, v1, v0

    .line 958
    .local v0, "e":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 959
    const/4 v1, 0x1

    return v1

    .line 961
    .end local v0    # "e":Ljava/lang/Object;, "TT;"
    :cond_17
    const/4 v0, 0x0

    return v0

    .line 955
    :cond_19
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 934
    .local p0, "this":Ljava/util/Spliterators$ArraySpliterator;, "Ljava/util/Spliterators$ArraySpliterator<TT;>;"
    iget v0, p0, Ljava/util/Spliterators$ArraySpliterator;->index:I

    .local v0, "lo":I
    iget v1, p0, Ljava/util/Spliterators$ArraySpliterator;->fence:I

    add-int/2addr v1, v0

    ushr-int/lit8 v1, v1, 0x1

    .line 935
    .local v1, "mid":I
    if-lt v0, v1, :cond_b

    .line 936
    const/4 v2, 0x0

    goto :goto_16

    .line 937
    :cond_b
    new-instance v2, Ljava/util/Spliterators$ArraySpliterator;

    iget-object v3, p0, Ljava/util/Spliterators$ArraySpliterator;->array:[Ljava/lang/Object;

    iput v1, p0, Ljava/util/Spliterators$ArraySpliterator;->index:I

    iget v4, p0, Ljava/util/Spliterators$ArraySpliterator;->characteristics:I

    invoke-direct {v2, v3, v0, v1, v4}, Ljava/util/Spliterators$ArraySpliterator;-><init>([Ljava/lang/Object;III)V

    .line 935
    :goto_16
    return-object v2
.end method
