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
.field final bound:I

.field final fence:J

.field index:J

.field final origin:I


# direct methods
.method constructor <init>(JJII)V
    .registers 8
    .param p1, "index"    # J
    .param p3, "fence"    # J
    .param p5, "origin"    # I
    .param p6, "bound"    # I

    .prologue
    .line 745
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 747
    iput-wide p1, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    iput-wide p3, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->fence:J

    .line 748
    iput p5, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->origin:I

    iput p6, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->bound:I

    .line 749
    return-void
.end method


# virtual methods
.method public characteristics()I
    .registers 2

    .prologue
    .line 762
    const/16 v0, 0x4540

    return v0
.end method

.method public estimateSize()J
    .registers 5

    .prologue
    .line 758
    iget-wide v0, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->fence:J

    iget-wide v2, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 777
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/IntConsumer;)V
    .registers 12
    .param p1, "consumer"    # Ljava/util/function/IntConsumer;

    .prologue
    .line 778
    if-nez p1, :cond_8

    new-instance v7, Ljava/lang/NullPointerException;

    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    throw v7

    .line 779
    :cond_8
    iget-wide v4, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    .local v4, "i":J
    iget-wide v2, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->fence:J

    .line 780
    .local v2, "f":J
    cmp-long v7, v4, v2

    if-gez v7, :cond_28

    .line 781
    iput-wide v2, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    .line 782
    iget v1, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->origin:I

    .local v1, "o":I
    iget v0, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->bound:I

    .line 783
    .local v0, "b":I
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v6

    .line 785
    .local v6, "rng":Ljava/util/concurrent/ThreadLocalRandom;
    :cond_1a
    invoke-virtual {v6, v1, v0}, Ljava/util/concurrent/ThreadLocalRandom;->internalNextInt(II)I

    move-result v7

    invoke-interface {p1, v7}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 786
    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    cmp-long v7, v4, v2

    if-ltz v7, :cond_1a

    .line 788
    .end local v0    # "b":I
    .end local v1    # "o":I
    .end local v6    # "rng":Ljava/util/concurrent/ThreadLocalRandom;
    :cond_28
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 766
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result v0

    return v0
.end method

.method public tryAdvance(Ljava/util/function/IntConsumer;)Z
    .registers 9
    .param p1, "consumer"    # Ljava/util/function/IntConsumer;

    .prologue
    .line 767
    if-nez p1, :cond_8

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 768
    :cond_8
    iget-wide v2, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    .local v2, "i":J
    iget-wide v0, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->fence:J

    .line 769
    .local v0, "f":J
    cmp-long v4, v2, v0

    if-gez v4, :cond_26

    .line 770
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v4

    iget v5, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->origin:I

    iget v6, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->bound:I

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/ThreadLocalRandom;->internalNextInt(II)I

    move-result v4

    invoke-interface {p1, v4}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 771
    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    .line 772
    const/4 v4, 0x1

    return v4

    .line 774
    :cond_26
    const/4 v4, 0x0

    return v4
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfInt;
    .registers 2

    .prologue
    .line 751
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->trySplit()Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .prologue
    .line 751
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->trySplit()Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .registers 2

    .prologue
    .line 751
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->trySplit()Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public trySplit()Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;
    .registers 9

    .prologue
    .line 752
    iget-wide v2, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    .local v2, "i":J
    iget-wide v0, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->fence:J

    add-long/2addr v0, v2

    const/4 v6, 0x1

    ushr-long v4, v0, v6

    .line 753
    .local v4, "m":J
    cmp-long v0, v4, v2

    if-gtz v0, :cond_e

    const/4 v1, 0x0

    :goto_d
    return-object v1

    .line 754
    :cond_e
    new-instance v1, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    iput-wide v4, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    iget v6, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->origin:I

    iget v7, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->bound:I

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;-><init>(JJII)V

    goto :goto_d
.end method
