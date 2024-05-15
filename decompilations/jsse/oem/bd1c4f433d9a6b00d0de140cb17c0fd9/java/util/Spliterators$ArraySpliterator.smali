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
        "Ljava/util/Spliterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final array:[Ljava/lang/Object;

.field private final characteristics:I

.field private final fence:I

.field private index:I


# direct methods
.method public constructor <init>([Ljava/lang/Object;I)V
    .registers 5
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "additionalCharacteristics"    # I

    .prologue
    .line 913
    .local p0, "this":Ljava/util/Spliterators$ArraySpliterator;, "Ljava/util/Spliterators$ArraySpliterator<TT;>;"
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Ljava/util/Spliterators$ArraySpliterator;-><init>([Ljava/lang/Object;III)V

    .line 914
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;III)V
    .registers 6
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .param p4, "additionalCharacteristics"    # I

    .prologue
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
.method public characteristics()I
    .registers 2

    .prologue
    .line 969
    .local p0, "this":Ljava/util/Spliterators$ArraySpliterator;, "Ljava/util/Spliterators$ArraySpliterator<TT;>;"
    iget v0, p0, Ljava/util/Spliterators$ArraySpliterator;->characteristics:I

    return v0
.end method

.method public estimateSize()J
    .registers 3

    .prologue
    .line 965
    .local p0, "this":Ljava/util/Spliterators$ArraySpliterator;, "Ljava/util/Spliterators$ArraySpliterator<TT;>;"
    iget v0, p0, Ljava/util/Spliterators$ArraySpliterator;->fence:I

    iget v1, p0, Ljava/util/Spliterators$ArraySpliterator;->index:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 944
    .local p0, "this":Ljava/util/Spliterators$ArraySpliterator;, "Ljava/util/Spliterators$ArraySpliterator<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    if-nez p1, :cond_8

    .line 945
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 946
    :cond_8
    iget-object v0, p0, Ljava/util/Spliterators$ArraySpliterator;->array:[Ljava/lang/Object;

    .local v0, "a":[Ljava/lang/Object;
    array-length v3, v0

    iget v1, p0, Ljava/util/Spliterators$ArraySpliterator;->fence:I

    .local v1, "hi":I
    if-lt v3, v1, :cond_20

    .line 947
    iget v2, p0, Ljava/util/Spliterators$ArraySpliterator;->index:I

    .local v2, "i":I
    if-ltz v2, :cond_20

    iput v1, p0, Ljava/util/Spliterators$ArraySpliterator;->index:I

    if-ge v2, v1, :cond_20

    .line 948
    :cond_17
    aget-object v3, v0, v2

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v1, :cond_17

    .line 950
    .end local v2    # "i":I
    :cond_20
    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TT;>;"
        }
    .end annotation

    .prologue
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

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Spliterators$ArraySpliterator;, "Ljava/util/Spliterators$ArraySpliterator<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    const/4 v3, 0x0

    .line 954
    if-nez p1, :cond_9

    .line 955
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 956
    :cond_9
    iget v1, p0, Ljava/util/Spliterators$ArraySpliterator;->index:I

    if-ltz v1, :cond_22

    iget v1, p0, Ljava/util/Spliterators$ArraySpliterator;->index:I

    iget v2, p0, Ljava/util/Spliterators$ArraySpliterator;->fence:I

    if-ge v1, v2, :cond_22

    .line 957
    iget-object v1, p0, Ljava/util/Spliterators$ArraySpliterator;->array:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/Spliterators$ArraySpliterator;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/util/Spliterators$ArraySpliterator;->index:I

    aget-object v0, v1, v2

    .line 958
    .local v0, "e":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 959
    const/4 v1, 0x1

    return v1

    .line 961
    .end local v0    # "e":Ljava/lang/Object;, "TT;"
    :cond_22
    return v3
.end method

.method public trySplit()Ljava/util/Spliterator;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 934
    .local p0, "this":Ljava/util/Spliterators$ArraySpliterator;, "Ljava/util/Spliterators$ArraySpliterator<TT;>;"
    iget v0, p0, Ljava/util/Spliterators$ArraySpliterator;->index:I

    .local v0, "lo":I
    iget v2, p0, Ljava/util/Spliterators$ArraySpliterator;->fence:I

    add-int/2addr v2, v0

    ushr-int/lit8 v1, v2, 0x1

    .line 935
    .local v1, "mid":I
    if-lt v0, v1, :cond_b

    .line 936
    const/4 v2, 0x0

    .line 935
    :goto_a
    return-object v2

    .line 937
    :cond_b
    new-instance v2, Ljava/util/Spliterators$ArraySpliterator;

    iget-object v3, p0, Ljava/util/Spliterators$ArraySpliterator;->array:[Ljava/lang/Object;

    iput v1, p0, Ljava/util/Spliterators$ArraySpliterator;->index:I

    iget v4, p0, Ljava/util/Spliterators$ArraySpliterator;->characteristics:I

    invoke-direct {v2, v3, v0, v1, v4}, Ljava/util/Spliterators$ArraySpliterator;-><init>([Ljava/lang/Object;III)V

    goto :goto_a
.end method
