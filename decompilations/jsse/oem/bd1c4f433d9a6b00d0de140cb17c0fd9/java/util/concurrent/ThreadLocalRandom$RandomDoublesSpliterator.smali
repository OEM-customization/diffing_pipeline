.class final Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;
.super Ljava/lang/Object;
.source "ThreadLocalRandom.java"

# interfaces
.implements Ljava/util/Spliterator$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ThreadLocalRandom;
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


# direct methods
.method constructor <init>(JJDD)V
    .registers 10
    .param p1, "index"    # J
    .param p3, "fence"    # J
    .param p5, "origin"    # D
    .param p7, "bound"    # D

    .prologue
    .line 856
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 858
    iput-wide p1, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->index:J

    iput-wide p3, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->fence:J

    .line 859
    iput-wide p5, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->origin:D

    iput-wide p7, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->bound:D

    .line 860
    return-void
.end method


# virtual methods
.method public characteristics()I
    .registers 2

    .prologue
    .line 873
    const/16 v0, 0x4540

    return v0
.end method

.method public estimateSize()J
    .registers 5

    .prologue
    .line 869
    iget-wide v0, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->fence:J

    iget-wide v2, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->index:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 888
    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .registers 14
    .param p1, "consumer"    # Ljava/util/function/DoubleConsumer;

    .prologue
    .line 889
    if-nez p1, :cond_8

    new-instance v9, Ljava/lang/NullPointerException;

    invoke-direct {v9}, Ljava/lang/NullPointerException;-><init>()V

    throw v9

    .line 890
    :cond_8
    iget-wide v4, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->index:J

    .local v4, "i":J
    iget-wide v2, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->fence:J

    .line 891
    .local v2, "f":J
    cmp-long v9, v4, v2

    if-gez v9, :cond_28

    .line 892
    iput-wide v2, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->index:J

    .line 893
    iget-wide v6, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->origin:D

    .local v6, "o":D
    iget-wide v0, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->bound:D

    .line 894
    .local v0, "b":D
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v8

    .line 896
    .local v8, "rng":Ljava/util/concurrent/ThreadLocalRandom;
    :cond_1a
    invoke-virtual {v8, v6, v7, v0, v1}, Ljava/util/concurrent/ThreadLocalRandom;->internalNextDouble(DD)D

    move-result-wide v10

    invoke-interface {p1, v10, v11}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 897
    const-wide/16 v10, 0x1

    add-long/2addr v4, v10

    cmp-long v9, v4, v2

    if-ltz v9, :cond_1a

    .line 899
    .end local v0    # "b":D
    .end local v6    # "o":D
    .end local v8    # "rng":Ljava/util/concurrent/ThreadLocalRandom;
    :cond_28
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 877
    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result v0

    return v0
.end method

.method public tryAdvance(Ljava/util/function/DoubleConsumer;)Z
    .registers 12
    .param p1, "consumer"    # Ljava/util/function/DoubleConsumer;

    .prologue
    .line 878
    if-nez p1, :cond_8

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 879
    :cond_8
    iget-wide v2, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->index:J

    .local v2, "i":J
    iget-wide v0, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->fence:J

    .line 880
    .local v0, "f":J
    cmp-long v4, v2, v0

    if-gez v4, :cond_26

    .line 881
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v4

    iget-wide v6, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->origin:D

    iget-wide v8, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->bound:D

    invoke-virtual {v4, v6, v7, v8, v9}, Ljava/util/concurrent/ThreadLocalRandom;->internalNextDouble(DD)D

    move-result-wide v4

    invoke-interface {p1, v4, v5}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 882
    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->index:J

    .line 883
    const/4 v4, 0x1

    return v4

    .line 885
    :cond_26
    const/4 v4, 0x0

    return v4
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfDouble;
    .registers 2

    .prologue
    .line 862
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->trySplit()Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .prologue
    .line 862
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->trySplit()Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .registers 2

    .prologue
    .line 862
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->trySplit()Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public trySplit()Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;
    .registers 11

    .prologue
    .line 863
    iget-wide v2, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->index:J

    .local v2, "i":J
    iget-wide v0, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->fence:J

    add-long/2addr v0, v2

    const/4 v6, 0x1

    ushr-long v4, v0, v6

    .line 864
    .local v4, "m":J
    cmp-long v0, v4, v2

    if-gtz v0, :cond_e

    const/4 v1, 0x0

    :goto_d
    return-object v1

    .line 865
    :cond_e
    new-instance v1, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;

    iput-wide v4, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->index:J

    iget-wide v6, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->origin:D

    iget-wide v8, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->bound:D

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;-><init>(JJDD)V

    goto :goto_d
.end method
