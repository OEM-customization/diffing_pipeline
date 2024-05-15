.class final Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;
.super Ljava/lang/Object;
.source "ThreadLocalRandom.java"

# interfaces
.implements Ljava/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ThreadLocalRandom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RandomIntsSpliterator"
.end annotation


# instance fields
.field final greylist-max-o bound:I

.field final greylist-max-o fence:J

.field greylist-max-o index:J

.field final greylist-max-o origin:I


# direct methods
.method constructor greylist-max-o <init>(JJII)V
    .registers 7
    .param p1, "index"    # J
    .param p3, "fence"    # J
    .param p5, "origin"    # I
    .param p6, "bound"    # I

    .line 747
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 748
    iput-wide p1, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    iput-wide p3, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->fence:J

    .line 749
    iput p5, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->origin:I

    iput p6, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->bound:I

    .line 750
    return-void
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 763
    const/16 v0, 0x4540

    return v0
.end method

.method public whitelist test-api estimateSize()J
    .registers 5

    .line 759
    iget-wide v0, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->fence:J

    iget-wide v2, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public bridge synthetic whitelist test-api forEachRemaining(Ljava/lang/Object;)V
    .registers 2

    .line 740
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/IntConsumer;)V
    .registers 11
    .param p1, "consumer"    # Ljava/util/function/IntConsumer;

    .line 779
    if-eqz p1, :cond_24

    .line 780
    iget-wide v0, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    .local v0, "i":J
    iget-wide v2, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->fence:J

    .line 781
    .local v2, "f":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_23

    .line 782
    iput-wide v2, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    .line 783
    iget v4, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->origin:I

    .local v4, "o":I
    iget v5, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->bound:I

    .line 784
    .local v5, "b":I
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v6

    .line 786
    .local v6, "rng":Ljava/util/concurrent/ThreadLocalRandom;
    :cond_14
    invoke-virtual {v6, v4, v5}, Ljava/util/concurrent/ThreadLocalRandom;->internalNextInt(II)I

    move-result v7

    invoke-interface {p1, v7}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 787
    const-wide/16 v7, 0x1

    add-long/2addr v7, v0

    move-wide v0, v7

    cmp-long v7, v7, v2

    if-ltz v7, :cond_14

    .line 789
    .end local v4    # "o":I
    .end local v5    # "b":I
    .end local v6    # "rng":Ljava/util/concurrent/ThreadLocalRandom;
    :cond_23
    return-void

    .line 779
    .end local v0    # "i":J
    .end local v2    # "f":J
    :cond_24
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist test-api tryAdvance(Ljava/lang/Object;)Z
    .registers 2

    .line 740
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/IntConsumer;)Z
    .registers 9
    .param p1, "consumer"    # Ljava/util/function/IntConsumer;

    .line 768
    if-eqz p1, :cond_22

    .line 769
    iget-wide v0, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    .local v0, "i":J
    iget-wide v2, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->fence:J

    .line 770
    .local v2, "f":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_20

    .line 771
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v4

    iget v5, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->origin:I

    iget v6, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->bound:I

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/ThreadLocalRandom;->internalNextInt(II)I

    move-result v4

    invoke-interface {p1, v4}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 772
    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    iput-wide v4, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    .line 773
    const/4 v4, 0x1

    return v4

    .line 775
    :cond_20
    const/4 v4, 0x0

    return v4

    .line 768
    .end local v0    # "i":J
    .end local v2    # "f":J
    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfInt;
    .registers 2

    .line 740
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->trySplit()Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 740
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->trySplit()Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 740
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->trySplit()Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public blacklist trySplit()Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;
    .registers 13

    .line 753
    iget-wide v7, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    .local v7, "i":J
    iget-wide v0, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->fence:J

    add-long/2addr v0, v7

    const/4 v2, 0x1

    ushr-long v9, v0, v2

    .line 754
    .local v9, "m":J
    cmp-long v0, v9, v7

    if-gtz v0, :cond_e

    const/4 v0, 0x0

    goto :goto_1c

    .line 755
    :cond_e
    new-instance v11, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    iput-wide v9, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    iget v5, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->origin:I

    iget v6, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->bound:I

    move-object v0, v11

    move-wide v1, v7

    move-wide v3, v9

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;-><init>(JJII)V

    .line 754
    :goto_1c
    return-object v0
.end method
