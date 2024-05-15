.class final Ljava/util/Random$RandomIntsSpliterator;
.super Ljava/lang/Object;
.source "Random.java"

# interfaces
.implements Ljava/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Random;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RandomIntsSpliterator"
.end annotation


# instance fields
.field final greylist-max-o bound:I

.field final greylist-max-o fence:J

.field greylist-max-o index:J

.field final greylist-max-o origin:I

.field final greylist-max-o rng:Ljava/util/Random;


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/Random;JJII)V
    .registers 8
    .param p1, "rng"    # Ljava/util/Random;
    .param p2, "index"    # J
    .param p4, "fence"    # J
    .param p6, "origin"    # I
    .param p7, "bound"    # I

    .line 1005
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1006
    iput-object p1, p0, Ljava/util/Random$RandomIntsSpliterator;->rng:Ljava/util/Random;

    iput-wide p2, p0, Ljava/util/Random$RandomIntsSpliterator;->index:J

    iput-wide p4, p0, Ljava/util/Random$RandomIntsSpliterator;->fence:J

    .line 1007
    iput p6, p0, Ljava/util/Random$RandomIntsSpliterator;->origin:I

    iput p7, p0, Ljava/util/Random$RandomIntsSpliterator;->bound:I

    .line 1008
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api characteristics()I
    .registers 2

    .line 1021
    const/16 v0, 0x4540

    return v0
.end method

.method public whitelist core-platform-api test-api estimateSize()J
    .registers 5

    .line 1017
    iget-wide v0, p0, Ljava/util/Random$RandomIntsSpliterator;->fence:J

    iget-wide v2, p0, Ljava/util/Random$RandomIntsSpliterator;->index:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api forEachRemaining(Ljava/lang/Object;)V
    .registers 2

    .line 998
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava/util/Random$RandomIntsSpliterator;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public whitelist core-platform-api test-api forEachRemaining(Ljava/util/function/IntConsumer;)V
    .registers 11
    .param p1, "consumer"    # Ljava/util/function/IntConsumer;

    .line 1037
    if-eqz p1, :cond_22

    .line 1038
    iget-wide v0, p0, Ljava/util/Random$RandomIntsSpliterator;->index:J

    .local v0, "i":J
    iget-wide v2, p0, Ljava/util/Random$RandomIntsSpliterator;->fence:J

    .line 1039
    .local v2, "f":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_21

    .line 1040
    iput-wide v2, p0, Ljava/util/Random$RandomIntsSpliterator;->index:J

    .line 1041
    iget-object v4, p0, Ljava/util/Random$RandomIntsSpliterator;->rng:Ljava/util/Random;

    .line 1042
    .local v4, "r":Ljava/util/Random;
    iget v5, p0, Ljava/util/Random$RandomIntsSpliterator;->origin:I

    .local v5, "o":I
    iget v6, p0, Ljava/util/Random$RandomIntsSpliterator;->bound:I

    .line 1044
    .local v6, "b":I
    :cond_12
    invoke-virtual {v4, v5, v6}, Ljava/util/Random;->internalNextInt(II)I

    move-result v7

    invoke-interface {p1, v7}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 1045
    const-wide/16 v7, 0x1

    add-long/2addr v7, v0

    move-wide v0, v7

    cmp-long v7, v7, v2

    if-ltz v7, :cond_12

    .line 1047
    .end local v4    # "r":Ljava/util/Random;
    .end local v5    # "o":I
    .end local v6    # "b":I
    :cond_21
    return-void

    .line 1037
    .end local v0    # "i":J
    .end local v2    # "f":J
    :cond_22
    const/4 v0, 0x0

    throw v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api tryAdvance(Ljava/lang/Object;)Z
    .registers 2

    .line 998
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava/util/Random$RandomIntsSpliterator;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result p1

    return p1
.end method

.method public whitelist core-platform-api test-api tryAdvance(Ljava/util/function/IntConsumer;)Z
    .registers 9
    .param p1, "consumer"    # Ljava/util/function/IntConsumer;

    .line 1026
    if-eqz p1, :cond_20

    .line 1027
    iget-wide v0, p0, Ljava/util/Random$RandomIntsSpliterator;->index:J

    .local v0, "i":J
    iget-wide v2, p0, Ljava/util/Random$RandomIntsSpliterator;->fence:J

    .line 1028
    .local v2, "f":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_1e

    .line 1029
    iget-object v4, p0, Ljava/util/Random$RandomIntsSpliterator;->rng:Ljava/util/Random;

    iget v5, p0, Ljava/util/Random$RandomIntsSpliterator;->origin:I

    iget v6, p0, Ljava/util/Random$RandomIntsSpliterator;->bound:I

    invoke-virtual {v4, v5, v6}, Ljava/util/Random;->internalNextInt(II)I

    move-result v4

    invoke-interface {p1, v4}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 1030
    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    iput-wide v4, p0, Ljava/util/Random$RandomIntsSpliterator;->index:J

    .line 1031
    const/4 v4, 0x1

    return v4

    .line 1033
    :cond_1e
    const/4 v4, 0x0

    return v4

    .line 1026
    .end local v0    # "i":J
    .end local v2    # "f":J
    :cond_20
    const/4 v0, 0x0

    throw v0
.end method

.method public blacklist trySplit()Ljava/util/Random$RandomIntsSpliterator;
    .registers 14

    .line 1011
    iget-wide v8, p0, Ljava/util/Random$RandomIntsSpliterator;->index:J

    .local v8, "i":J
    iget-wide v0, p0, Ljava/util/Random$RandomIntsSpliterator;->fence:J

    add-long/2addr v0, v8

    const/4 v2, 0x1

    ushr-long v10, v0, v2

    .line 1012
    .local v10, "m":J
    cmp-long v0, v10, v8

    if-gtz v0, :cond_e

    const/4 v0, 0x0

    goto :goto_1e

    .line 1013
    :cond_e
    new-instance v12, Ljava/util/Random$RandomIntsSpliterator;

    iget-object v1, p0, Ljava/util/Random$RandomIntsSpliterator;->rng:Ljava/util/Random;

    iput-wide v10, p0, Ljava/util/Random$RandomIntsSpliterator;->index:J

    iget v6, p0, Ljava/util/Random$RandomIntsSpliterator;->origin:I

    iget v7, p0, Ljava/util/Random$RandomIntsSpliterator;->bound:I

    move-object v0, v12

    move-wide v2, v8

    move-wide v4, v10

    invoke-direct/range {v0 .. v7}, Ljava/util/Random$RandomIntsSpliterator;-><init>(Ljava/util/Random;JJII)V

    .line 1012
    :goto_1e
    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api trySplit()Ljava/util/Spliterator$OfInt;
    .registers 2

    .line 998
    invoke-virtual {p0}, Ljava/util/Random$RandomIntsSpliterator;->trySplit()Ljava/util/Random$RandomIntsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 998
    invoke-virtual {p0}, Ljava/util/Random$RandomIntsSpliterator;->trySplit()Ljava/util/Random$RandomIntsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 998
    invoke-virtual {p0}, Ljava/util/Random$RandomIntsSpliterator;->trySplit()Ljava/util/Random$RandomIntsSpliterator;

    move-result-object v0

    return-object v0
.end method
