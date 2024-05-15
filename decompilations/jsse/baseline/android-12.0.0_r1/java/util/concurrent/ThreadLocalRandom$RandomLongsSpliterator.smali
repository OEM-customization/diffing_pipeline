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
.field final greylist-max-o bound:J

.field final greylist-max-o fence:J

.field greylist-max-o index:J

.field final greylist-max-o origin:J


# direct methods
.method constructor greylist-max-o <init>(JJJJ)V
    .registers 9
    .param p1, "index"    # J
    .param p3, "fence"    # J
    .param p5, "origin"    # J
    .param p7, "bound"    # J

    .line 802
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 803
    iput-wide p1, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->index:J

    iput-wide p3, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->fence:J

    .line 804
    iput-wide p5, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->origin:J

    iput-wide p7, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->bound:J

    .line 805
    return-void
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 818
    const/16 v0, 0x4540

    return v0
.end method

.method public whitelist test-api estimateSize()J
    .registers 5

    .line 814
    iget-wide v0, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->fence:J

    iget-wide v2, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->index:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public bridge synthetic whitelist test-api forEachRemaining(Ljava/lang/Object;)V
    .registers 2

    .line 795
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/LongConsumer;)V
    .registers 13
    .param p1, "consumer"    # Ljava/util/function/LongConsumer;

    .line 834
    if-eqz p1, :cond_24

    .line 835
    iget-wide v0, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->index:J

    .local v0, "i":J
    iget-wide v2, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->fence:J

    .line 836
    .local v2, "f":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_23

    .line 837
    iput-wide v2, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->index:J

    .line 838
    iget-wide v4, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->origin:J

    .local v4, "o":J
    iget-wide v6, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->bound:J

    .line 839
    .local v6, "b":J
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v8

    .line 841
    .local v8, "rng":Ljava/util/concurrent/ThreadLocalRandom;
    :cond_14
    invoke-virtual {v8, v4, v5, v6, v7}, Ljava/util/concurrent/ThreadLocalRandom;->internalNextLong(JJ)J

    move-result-wide v9

    invoke-interface {p1, v9, v10}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 842
    const-wide/16 v9, 0x1

    add-long/2addr v9, v0

    move-wide v0, v9

    cmp-long v9, v9, v2

    if-ltz v9, :cond_14

    .line 844
    .end local v4    # "o":J
    .end local v6    # "b":J
    .end local v8    # "rng":Ljava/util/concurrent/ThreadLocalRandom;
    :cond_23
    return-void

    .line 834
    .end local v0    # "i":J
    .end local v2    # "f":J
    :cond_24
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist test-api tryAdvance(Ljava/lang/Object;)Z
    .registers 2

    .line 795
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/LongConsumer;)Z
    .registers 11
    .param p1, "consumer"    # Ljava/util/function/LongConsumer;

    .line 823
    if-eqz p1, :cond_22

    .line 824
    iget-wide v0, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->index:J

    .local v0, "i":J
    iget-wide v2, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->fence:J

    .line 825
    .local v2, "f":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_20

    .line 826
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v4

    iget-wide v5, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->origin:J

    iget-wide v7, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->bound:J

    invoke-virtual {v4, v5, v6, v7, v8}, Ljava/util/concurrent/ThreadLocalRandom;->internalNextLong(JJ)J

    move-result-wide v4

    invoke-interface {p1, v4, v5}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 827
    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    iput-wide v4, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->index:J

    .line 828
    const/4 v4, 0x1

    return v4

    .line 830
    :cond_20
    const/4 v4, 0x0

    return v4

    .line 823
    .end local v0    # "i":J
    .end local v2    # "f":J
    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfLong;
    .registers 2

    .line 795
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->trySplit()Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 795
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->trySplit()Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 795
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->trySplit()Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public blacklist trySplit()Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;
    .registers 15

    .line 808
    iget-wide v9, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->index:J

    .local v9, "i":J
    iget-wide v0, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->fence:J

    add-long/2addr v0, v9

    const/4 v2, 0x1

    ushr-long v11, v0, v2

    .line 809
    .local v11, "m":J
    cmp-long v0, v11, v9

    if-gtz v0, :cond_e

    const/4 v0, 0x0

    goto :goto_1c

    .line 810
    :cond_e
    new-instance v13, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;

    iput-wide v11, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->index:J

    iget-wide v5, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->origin:J

    iget-wide v7, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->bound:J

    move-object v0, v13

    move-wide v1, v9

    move-wide v3, v11

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;-><init>(JJJJ)V

    .line 809
    :goto_1c
    return-object v0
.end method
