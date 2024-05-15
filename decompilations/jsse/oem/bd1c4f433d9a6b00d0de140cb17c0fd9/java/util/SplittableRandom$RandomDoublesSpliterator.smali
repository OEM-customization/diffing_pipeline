.class final Ljava/util/SplittableRandom$RandomDoublesSpliterator;
.super Ljava/lang/Object;
.source "SplittableRandom.java"

# interfaces
.implements Ljava/util/Spliterator$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/SplittableRandom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RandomDoublesSpliterator"
.end annotation


# instance fields
.field final bound:D

.field final fence:J

.field index:J

.field final origin:D

.field final rng:Ljava/util/SplittableRandom;


# direct methods
.method constructor <init>(Ljava/util/SplittableRandom;JJDD)V
    .registers 10
    .param p1, "rng"    # Ljava/util/SplittableRandom;
    .param p2, "index"    # J
    .param p4, "fence"    # J
    .param p6, "origin"    # D
    .param p8, "bound"    # D

    .prologue
    .line 950
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 952
    iput-object p1, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->rng:Ljava/util/SplittableRandom;

    iput-wide p2, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->index:J

    iput-wide p4, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->fence:J

    .line 953
    iput-wide p6, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->origin:D

    iput-wide p8, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->bound:D

    .line 954
    return-void
.end method


# virtual methods
.method public characteristics()I
    .registers 2

    .prologue
    .line 967
    const/16 v0, 0x4540

    return v0
.end method

.method public estimateSize()J
    .registers 5

    .prologue
    .line 963
    iget-wide v0, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->fence:J

    iget-wide v2, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->index:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 982
    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .registers 14
    .param p1, "consumer"    # Ljava/util/function/DoubleConsumer;

    .prologue
    .line 983
    if-nez p1, :cond_8

    new-instance v9, Ljava/lang/NullPointerException;

    invoke-direct {v9}, Ljava/lang/NullPointerException;-><init>()V

    throw v9

    .line 984
    :cond_8
    iget-wide v4, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->index:J

    .local v4, "i":J
    iget-wide v2, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->fence:J

    .line 985
    .local v2, "f":J
    cmp-long v9, v4, v2

    if-gez v9, :cond_26

    .line 986
    iput-wide v2, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->index:J

    .line 987
    iget-object v8, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->rng:Ljava/util/SplittableRandom;

    .line 988
    .local v8, "r":Ljava/util/SplittableRandom;
    iget-wide v6, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->origin:D

    .local v6, "o":D
    iget-wide v0, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->bound:D

    .line 990
    .local v0, "b":D
    :cond_18
    invoke-virtual {v8, v6, v7, v0, v1}, Ljava/util/SplittableRandom;->internalNextDouble(DD)D

    move-result-wide v10

    invoke-interface {p1, v10, v11}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 991
    const-wide/16 v10, 0x1

    add-long/2addr v4, v10

    cmp-long v9, v4, v2

    if-ltz v9, :cond_18

    .line 993
    .end local v0    # "b":D
    .end local v6    # "o":D
    .end local v8    # "r":Ljava/util/SplittableRandom;
    :cond_26
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 971
    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result v0

    return v0
.end method

.method public tryAdvance(Ljava/util/function/DoubleConsumer;)Z
    .registers 12
    .param p1, "consumer"    # Ljava/util/function/DoubleConsumer;

    .prologue
    .line 972
    if-nez p1, :cond_8

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 973
    :cond_8
    iget-wide v2, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->index:J

    .local v2, "i":J
    iget-wide v0, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->fence:J

    .line 974
    .local v0, "f":J
    cmp-long v4, v2, v0

    if-gez v4, :cond_24

    .line 975
    iget-object v4, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->rng:Ljava/util/SplittableRandom;

    iget-wide v6, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->origin:D

    iget-wide v8, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->bound:D

    invoke-virtual {v4, v6, v7, v8, v9}, Ljava/util/SplittableRandom;->internalNextDouble(DD)D

    move-result-wide v4

    invoke-interface {p1, v4, v5}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 976
    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->index:J

    .line 977
    const/4 v4, 0x1

    return v4

    .line 979
    :cond_24
    const/4 v4, 0x0

    return v4
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfDouble;
    .registers 2

    .prologue
    .line 956
    invoke-virtual {p0}, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->trySplit()Ljava/util/SplittableRandom$RandomDoublesSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .prologue
    .line 956
    invoke-virtual {p0}, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->trySplit()Ljava/util/SplittableRandom$RandomDoublesSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .registers 2

    .prologue
    .line 956
    invoke-virtual {p0}, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->trySplit()Ljava/util/SplittableRandom$RandomDoublesSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public trySplit()Ljava/util/SplittableRandom$RandomDoublesSpliterator;
    .registers 11

    .prologue
    .line 957
    iget-wide v2, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->index:J

    .local v2, "i":J
    iget-wide v0, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->fence:J

    add-long/2addr v0, v2

    const/4 v6, 0x1

    ushr-long v4, v0, v6

    .line 958
    .local v4, "m":J
    cmp-long v0, v4, v2

    if-gtz v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return-object v0

    .line 959
    :cond_e
    new-instance v0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;

    iget-object v1, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->rng:Ljava/util/SplittableRandom;

    invoke-virtual {v1}, Ljava/util/SplittableRandom;->split()Ljava/util/SplittableRandom;

    move-result-object v1

    iput-wide v4, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->index:J

    iget-wide v6, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->origin:D

    iget-wide v8, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->bound:D

    invoke-direct/range {v0 .. v9}, Ljava/util/SplittableRandom$RandomDoublesSpliterator;-><init>(Ljava/util/SplittableRandom;JJDD)V

    goto :goto_d
.end method
