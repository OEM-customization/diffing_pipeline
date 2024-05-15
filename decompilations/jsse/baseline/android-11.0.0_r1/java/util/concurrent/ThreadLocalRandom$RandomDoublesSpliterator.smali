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
.field final greylist-max-o bound:D

.field final greylist-max-o fence:J

.field greylist-max-o index:J

.field final greylist-max-o origin:D


# direct methods
.method constructor greylist-max-o <init>(JJDD)V
    .registers 9
    .param p1, "index"    # J
    .param p3, "fence"    # J
    .param p5, "origin"    # D
    .param p7, "bound"    # D

    .line 858
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 859
    iput-wide p1, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->index:J

    iput-wide p3, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->fence:J

    .line 860
    iput-wide p5, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->origin:D

    iput-wide p7, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->bound:D

    .line 861
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api characteristics()I
    .registers 2

    .line 874
    const/16 v0, 0x4540

    return v0
.end method

.method public whitelist core-platform-api test-api estimateSize()J
    .registers 5

    .line 870
    iget-wide v0, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->fence:J

    iget-wide v2, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->index:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api forEachRemaining(Ljava/lang/Object;)V
    .registers 2

    .line 851
    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    return-void
.end method

.method public whitelist core-platform-api test-api forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .registers 13
    .param p1, "consumer"    # Ljava/util/function/DoubleConsumer;

    .line 890
    if-eqz p1, :cond_24

    .line 891
    iget-wide v0, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->index:J

    .local v0, "i":J
    iget-wide v2, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->fence:J

    .line 892
    .local v2, "f":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_23

    .line 893
    iput-wide v2, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->index:J

    .line 894
    iget-wide v4, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->origin:D

    .local v4, "o":D
    iget-wide v6, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->bound:D

    .line 895
    .local v6, "b":D
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v8

    .line 897
    .local v8, "rng":Ljava/util/concurrent/ThreadLocalRandom;
    :cond_14
    invoke-virtual {v8, v4, v5, v6, v7}, Ljava/util/concurrent/ThreadLocalRandom;->internalNextDouble(DD)D

    move-result-wide v9

    invoke-interface {p1, v9, v10}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 898
    const-wide/16 v9, 0x1

    add-long/2addr v9, v0

    move-wide v0, v9

    cmp-long v9, v9, v2

    if-ltz v9, :cond_14

    .line 900
    .end local v4    # "o":D
    .end local v6    # "b":D
    .end local v8    # "rng":Ljava/util/concurrent/ThreadLocalRandom;
    :cond_23
    return-void

    .line 890
    .end local v0    # "i":J
    .end local v2    # "f":J
    :cond_24
    const/4 v0, 0x0

    throw v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api tryAdvance(Ljava/lang/Object;)Z
    .registers 2

    .line 851
    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result p1

    return p1
.end method

.method public whitelist core-platform-api test-api tryAdvance(Ljava/util/function/DoubleConsumer;)Z
    .registers 11
    .param p1, "consumer"    # Ljava/util/function/DoubleConsumer;

    .line 879
    if-eqz p1, :cond_22

    .line 880
    iget-wide v0, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->index:J

    .local v0, "i":J
    iget-wide v2, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->fence:J

    .line 881
    .local v2, "f":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_20

    .line 882
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v4

    iget-wide v5, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->origin:D

    iget-wide v7, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->bound:D

    invoke-virtual {v4, v5, v6, v7, v8}, Ljava/util/concurrent/ThreadLocalRandom;->internalNextDouble(DD)D

    move-result-wide v4

    invoke-interface {p1, v4, v5}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 883
    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    iput-wide v4, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->index:J

    .line 884
    const/4 v4, 0x1

    return v4

    .line 886
    :cond_20
    const/4 v4, 0x0

    return v4

    .line 879
    .end local v0    # "i":J
    .end local v2    # "f":J
    :cond_22
    const/4 v0, 0x0

    throw v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api trySplit()Ljava/util/Spliterator$OfDouble;
    .registers 2

    .line 851
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->trySplit()Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 851
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->trySplit()Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 851
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->trySplit()Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public blacklist trySplit()Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;
    .registers 15

    .line 864
    iget-wide v9, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->index:J

    .local v9, "i":J
    iget-wide v0, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->fence:J

    add-long/2addr v0, v9

    const/4 v2, 0x1

    ushr-long v11, v0, v2

    .line 865
    .local v11, "m":J
    cmp-long v0, v11, v9

    if-gtz v0, :cond_e

    const/4 v0, 0x0

    goto :goto_1c

    .line 866
    :cond_e
    new-instance v13, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;

    iput-wide v11, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->index:J

    iget-wide v5, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->origin:D

    iget-wide v7, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->bound:D

    move-object v0, v13

    move-wide v1, v9

    move-wide v3, v11

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;-><init>(JJDD)V

    .line 865
    :goto_1c
    return-object v0
.end method
