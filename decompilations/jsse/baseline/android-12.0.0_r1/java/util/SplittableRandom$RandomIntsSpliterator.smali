.class final Ljava/util/SplittableRandom$RandomIntsSpliterator;
.super Ljava/lang/Object;
.source "SplittableRandom.java"

# interfaces
.implements Ljava/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/SplittableRandom;
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

.field final greylist-max-o rng:Ljava/util/SplittableRandom;


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/SplittableRandom;JJII)V
    .registers 8
    .param p1, "rng"    # Ljava/util/SplittableRandom;
    .param p2, "index"    # J
    .param p4, "fence"    # J
    .param p6, "origin"    # I
    .param p7, "bound"    # I

    .line 838
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 839
    iput-object p1, p0, Ljava/util/SplittableRandom$RandomIntsSpliterator;->rng:Ljava/util/SplittableRandom;

    iput-wide p2, p0, Ljava/util/SplittableRandom$RandomIntsSpliterator;->index:J

    iput-wide p4, p0, Ljava/util/SplittableRandom$RandomIntsSpliterator;->fence:J

    .line 840
    iput p6, p0, Ljava/util/SplittableRandom$RandomIntsSpliterator;->origin:I

    iput p7, p0, Ljava/util/SplittableRandom$RandomIntsSpliterator;->bound:I

    .line 841
    return-void
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 854
    const/16 v0, 0x4540

    return v0
.end method

.method public whitelist test-api estimateSize()J
    .registers 5

    .line 850
    iget-wide v0, p0, Ljava/util/SplittableRandom$RandomIntsSpliterator;->fence:J

    iget-wide v2, p0, Ljava/util/SplittableRandom$RandomIntsSpliterator;->index:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public bridge synthetic whitelist test-api forEachRemaining(Ljava/lang/Object;)V
    .registers 2

    .line 830
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava/util/SplittableRandom$RandomIntsSpliterator;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/IntConsumer;)V
    .registers 11
    .param p1, "consumer"    # Ljava/util/function/IntConsumer;

    .line 870
    if-eqz p1, :cond_22

    .line 871
    iget-wide v0, p0, Ljava/util/SplittableRandom$RandomIntsSpliterator;->index:J

    .local v0, "i":J
    iget-wide v2, p0, Ljava/util/SplittableRandom$RandomIntsSpliterator;->fence:J

    .line 872
    .local v2, "f":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_21

    .line 873
    iput-wide v2, p0, Ljava/util/SplittableRandom$RandomIntsSpliterator;->index:J

    .line 874
    iget-object v4, p0, Ljava/util/SplittableRandom$RandomIntsSpliterator;->rng:Ljava/util/SplittableRandom;

    .line 875
    .local v4, "r":Ljava/util/SplittableRandom;
    iget v5, p0, Ljava/util/SplittableRandom$RandomIntsSpliterator;->origin:I

    .local v5, "o":I
    iget v6, p0, Ljava/util/SplittableRandom$RandomIntsSpliterator;->bound:I

    .line 877
    .local v6, "b":I
    :cond_12
    invoke-virtual {v4, v5, v6}, Ljava/util/SplittableRandom;->internalNextInt(II)I

    move-result v7

    invoke-interface {p1, v7}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 878
    const-wide/16 v7, 0x1

    add-long/2addr v7, v0

    move-wide v0, v7

    cmp-long v7, v7, v2

    if-ltz v7, :cond_12

    .line 880
    .end local v4    # "r":Ljava/util/SplittableRandom;
    .end local v5    # "o":I
    .end local v6    # "b":I
    :cond_21
    return-void

    .line 870
    .end local v0    # "i":J
    .end local v2    # "f":J
    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist test-api tryAdvance(Ljava/lang/Object;)Z
    .registers 2

    .line 830
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava/util/SplittableRandom$RandomIntsSpliterator;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/IntConsumer;)Z
    .registers 9
    .param p1, "consumer"    # Ljava/util/function/IntConsumer;

    .line 859
    if-eqz p1, :cond_20

    .line 860
    iget-wide v0, p0, Ljava/util/SplittableRandom$RandomIntsSpliterator;->index:J

    .local v0, "i":J
    iget-wide v2, p0, Ljava/util/SplittableRandom$RandomIntsSpliterator;->fence:J

    .line 861
    .local v2, "f":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_1e

    .line 862
    iget-object v4, p0, Ljava/util/SplittableRandom$RandomIntsSpliterator;->rng:Ljava/util/SplittableRandom;

    iget v5, p0, Ljava/util/SplittableRandom$RandomIntsSpliterator;->origin:I

    iget v6, p0, Ljava/util/SplittableRandom$RandomIntsSpliterator;->bound:I

    invoke-virtual {v4, v5, v6}, Ljava/util/SplittableRandom;->internalNextInt(II)I

    move-result v4

    invoke-interface {p1, v4}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 863
    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    iput-wide v4, p0, Ljava/util/SplittableRandom$RandomIntsSpliterator;->index:J

    .line 864
    const/4 v4, 0x1

    return v4

    .line 866
    :cond_1e
    const/4 v4, 0x0

    return v4

    .line 859
    .end local v0    # "i":J
    .end local v2    # "f":J
    :cond_20
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfInt;
    .registers 2

    .line 830
    invoke-virtual {p0}, Ljava/util/SplittableRandom$RandomIntsSpliterator;->trySplit()Ljava/util/SplittableRandom$RandomIntsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 830
    invoke-virtual {p0}, Ljava/util/SplittableRandom$RandomIntsSpliterator;->trySplit()Ljava/util/SplittableRandom$RandomIntsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 830
    invoke-virtual {p0}, Ljava/util/SplittableRandom$RandomIntsSpliterator;->trySplit()Ljava/util/SplittableRandom$RandomIntsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public blacklist trySplit()Ljava/util/SplittableRandom$RandomIntsSpliterator;
    .registers 14

    .line 844
    iget-wide v8, p0, Ljava/util/SplittableRandom$RandomIntsSpliterator;->index:J

    .local v8, "i":J
    iget-wide v0, p0, Ljava/util/SplittableRandom$RandomIntsSpliterator;->fence:J

    add-long/2addr v0, v8

    const/4 v2, 0x1

    ushr-long v10, v0, v2

    .line 845
    .local v10, "m":J
    cmp-long v0, v10, v8

    if-gtz v0, :cond_e

    const/4 v0, 0x0

    goto :goto_22

    .line 846
    :cond_e
    new-instance v12, Ljava/util/SplittableRandom$RandomIntsSpliterator;

    iget-object v0, p0, Ljava/util/SplittableRandom$RandomIntsSpliterator;->rng:Ljava/util/SplittableRandom;

    invoke-virtual {v0}, Ljava/util/SplittableRandom;->split()Ljava/util/SplittableRandom;

    move-result-object v1

    iput-wide v10, p0, Ljava/util/SplittableRandom$RandomIntsSpliterator;->index:J

    iget v6, p0, Ljava/util/SplittableRandom$RandomIntsSpliterator;->origin:I

    iget v7, p0, Ljava/util/SplittableRandom$RandomIntsSpliterator;->bound:I

    move-object v0, v12

    move-wide v2, v8

    move-wide v4, v10

    invoke-direct/range {v0 .. v7}, Ljava/util/SplittableRandom$RandomIntsSpliterator;-><init>(Ljava/util/SplittableRandom;JJII)V

    .line 845
    :goto_22
    return-object v0
.end method
