.class final Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;
.super Ljava/lang/Object;
.source "ThreadLocalRandom.java"

# interfaces
.implements Ljava/util/Spliterator$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ThreadLocalRandom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RandomLongsSpliterator"
.end annotation


# instance fields
.field final bound:J

.field final fence:J

.field index:J

.field final origin:J


# direct methods
.method constructor <init>(JJJJ)V
    .registers 10
    .param p1, "index"    # J
    .param p3, "fence"    # J
    .param p5, "origin"    # J
    .param p7, "bound"    # J

    .prologue
    .line 800
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 802
    iput-wide p1, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->index:J

    iput-wide p3, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->fence:J

    .line 803
    iput-wide p5, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->origin:J

    iput-wide p7, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->bound:J

    .line 804
    return-void
.end method


# virtual methods
.method public characteristics()I
    .registers 2

    .prologue
    .line 817
    const/16 v0, 0x4540

    return v0
.end method

.method public estimateSize()J
    .registers 5

    .prologue
    .line 813
    iget-wide v0, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->fence:J

    iget-wide v2, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->index:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 832
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/LongConsumer;)V
    .registers 14
    .param p1, "consumer"    # Ljava/util/function/LongConsumer;

    .prologue
    .line 833
    if-nez p1, :cond_8

    new-instance v9, Ljava/lang/NullPointerException;

    invoke-direct {v9}, Ljava/lang/NullPointerException;-><init>()V

    throw v9

    .line 834
    :cond_8
    iget-wide v4, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->index:J

    .local v4, "i":J
    iget-wide v2, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->fence:J

    .line 835
    .local v2, "f":J
    cmp-long v9, v4, v2

    if-gez v9, :cond_28

    .line 836
    iput-wide v2, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->index:J

    .line 837
    iget-wide v6, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->origin:J

    .local v6, "o":J
    iget-wide v0, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->bound:J

    .line 838
    .local v0, "b":J
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v8

    .line 840
    .local v8, "rng":Ljava/util/concurrent/ThreadLocalRandom;
    :cond_1a
    invoke-virtual {v8, v6, v7, v0, v1}, Ljava/util/concurrent/ThreadLocalRandom;->internalNextLong(JJ)J

    move-result-wide v10

    invoke-interface {p1, v10, v11}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 841
    const-wide/16 v10, 0x1

    add-long/2addr v4, v10

    cmp-long v9, v4, v2

    if-ltz v9, :cond_1a

    .line 843
    .end local v0    # "b":J
    .end local v6    # "o":J
    .end local v8    # "rng":Ljava/util/concurrent/ThreadLocalRandom;
    :cond_28
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 821
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result v0

    return v0
.end method

.method public tryAdvance(Ljava/util/function/LongConsumer;)Z
    .registers 12
    .param p1, "consumer"    # Ljava/util/function/LongConsumer;

    .prologue
    .line 822
    if-nez p1, :cond_8

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 823
    :cond_8
    iget-wide v2, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->index:J

    .local v2, "i":J
    iget-wide v0, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->fence:J

    .line 824
    .local v0, "f":J
    cmp-long v4, v2, v0

    if-gez v4, :cond_26

    .line 825
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v4

    iget-wide v6, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->origin:J

    iget-wide v8, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->bound:J

    invoke-virtual {v4, v6, v7, v8, v9}, Ljava/util/concurrent/ThreadLocalRandom;->internalNextLong(JJ)J

    move-result-wide v4

    invoke-interface {p1, v4, v5}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 826
    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->index:J

    .line 827
    const/4 v4, 0x1

    return v4

    .line 829
    :cond_26
    const/4 v4, 0x0

    return v4
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfLong;
    .registers 2

    .prologue
    .line 806
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->trySplit()Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .prologue
    .line 806
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->trySplit()Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .registers 2

    .prologue
    .line 806
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->trySplit()Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public trySplit()Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;
    .registers 11

    .prologue
    .line 807
    iget-wide v2, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->index:J

    .local v2, "i":J
    iget-wide v0, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->fence:J

    add-long/2addr v0, v2

    const/4 v6, 0x1

    ushr-long v4, v0, v6

    .line 808
    .local v4, "m":J
    cmp-long v0, v4, v2

    if-gtz v0, :cond_e

    const/4 v1, 0x0

    :goto_d
    return-object v1

    .line 809
    :cond_e
    new-instance v1, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;

    iput-wide v4, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->index:J

    iget-wide v6, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->origin:J

    iget-wide v8, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->bound:J

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;-><init>(JJJJ)V

    goto :goto_d
.end method
