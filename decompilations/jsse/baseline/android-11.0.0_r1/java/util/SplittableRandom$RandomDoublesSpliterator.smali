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
.field final greylist-max-o bound:D

.field final greylist-max-o fence:J

.field greylist-max-o index:J

.field final greylist-max-o origin:D

.field final greylist-max-o rng:Ljava/util/SplittableRandom;


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/SplittableRandom;JJDD)V
    .registers 10
    .param p1, "rng"    # Ljava/util/SplittableRandom;
    .param p2, "index"    # J
    .param p4, "fence"    # J
    .param p6, "origin"    # D
    .param p8, "bound"    # D

    .line 951
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
.method public whitelist core-platform-api test-api characteristics()I
    .registers 2

    .line 967
    const/16 v0, 0x4540

    return v0
.end method

.method public whitelist core-platform-api test-api estimateSize()J
    .registers 5

    .line 963
    iget-wide v0, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->fence:J

    iget-wide v2, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->index:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api forEachRemaining(Ljava/lang/Object;)V
    .registers 2

    .line 943
    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    return-void
.end method

.method public whitelist core-platform-api test-api forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .registers 13
    .param p1, "consumer"    # Ljava/util/function/DoubleConsumer;

    .line 983
    if-eqz p1, :cond_22

    .line 984
    iget-wide v0, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->index:J

    .local v0, "i":J
    iget-wide v2, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->fence:J

    .line 985
    .local v2, "f":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_21

    .line 986
    iput-wide v2, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->index:J

    .line 987
    iget-object v4, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->rng:Ljava/util/SplittableRandom;

    .line 988
    .local v4, "r":Ljava/util/SplittableRandom;
    iget-wide v5, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->origin:D

    .local v5, "o":D
    iget-wide v7, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->bound:D

    .line 990
    .local v7, "b":D
    :cond_12
    invoke-virtual {v4, v5, v6, v7, v8}, Ljava/util/SplittableRandom;->internalNextDouble(DD)D

    move-result-wide v9

    invoke-interface {p1, v9, v10}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 991
    const-wide/16 v9, 0x1

    add-long/2addr v9, v0

    move-wide v0, v9

    cmp-long v9, v9, v2

    if-ltz v9, :cond_12

    .line 993
    .end local v4    # "r":Ljava/util/SplittableRandom;
    .end local v5    # "o":D
    .end local v7    # "b":D
    :cond_21
    return-void

    .line 983
    .end local v0    # "i":J
    .end local v2    # "f":J
    :cond_22
    const/4 v0, 0x0

    throw v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api tryAdvance(Ljava/lang/Object;)Z
    .registers 2

    .line 943
    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result p1

    return p1
.end method

.method public whitelist core-platform-api test-api tryAdvance(Ljava/util/function/DoubleConsumer;)Z
    .registers 11
    .param p1, "consumer"    # Ljava/util/function/DoubleConsumer;

    .line 972
    if-eqz p1, :cond_20

    .line 973
    iget-wide v0, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->index:J

    .local v0, "i":J
    iget-wide v2, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->fence:J

    .line 974
    .local v2, "f":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_1e

    .line 975
    iget-object v4, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->rng:Ljava/util/SplittableRandom;

    iget-wide v5, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->origin:D

    iget-wide v7, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->bound:D

    invoke-virtual {v4, v5, v6, v7, v8}, Ljava/util/SplittableRandom;->internalNextDouble(DD)D

    move-result-wide v4

    invoke-interface {p1, v4, v5}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 976
    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    iput-wide v4, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->index:J

    .line 977
    const/4 v4, 0x1

    return v4

    .line 979
    :cond_1e
    const/4 v4, 0x0

    return v4

    .line 972
    .end local v0    # "i":J
    .end local v2    # "f":J
    :cond_20
    const/4 v0, 0x0

    throw v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api trySplit()Ljava/util/Spliterator$OfDouble;
    .registers 2

    .line 943
    invoke-virtual {p0}, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->trySplit()Ljava/util/SplittableRandom$RandomDoublesSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 943
    invoke-virtual {p0}, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->trySplit()Ljava/util/SplittableRandom$RandomDoublesSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 943
    invoke-virtual {p0}, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->trySplit()Ljava/util/SplittableRandom$RandomDoublesSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public blacklist trySplit()Ljava/util/SplittableRandom$RandomDoublesSpliterator;
    .registers 16

    .line 957
    iget-wide v10, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->index:J

    .local v10, "i":J
    iget-wide v0, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->fence:J

    add-long/2addr v0, v10

    const/4 v2, 0x1

    ushr-long v12, v0, v2

    .line 958
    .local v12, "m":J
    cmp-long v0, v12, v10

    if-gtz v0, :cond_e

    const/4 v0, 0x0

    goto :goto_22

    .line 959
    :cond_e
    new-instance v14, Ljava/util/SplittableRandom$RandomDoublesSpliterator;

    iget-object v0, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->rng:Ljava/util/SplittableRandom;

    invoke-virtual {v0}, Ljava/util/SplittableRandom;->split()Ljava/util/SplittableRandom;

    move-result-object v1

    iput-wide v12, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->index:J

    iget-wide v6, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->origin:D

    iget-wide v8, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->bound:D

    move-object v0, v14

    move-wide v2, v10

    move-wide v4, v12

    invoke-direct/range {v0 .. v9}, Ljava/util/SplittableRandom$RandomDoublesSpliterator;-><init>(Ljava/util/SplittableRandom;JJDD)V

    .line 958
    :goto_22
    return-object v0
.end method
