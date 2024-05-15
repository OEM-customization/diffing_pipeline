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
.field final bound:I

.field final fence:J

.field index:J

.field final origin:I

.field final rng:Ljava/util/Random;


# direct methods
.method constructor <init>(Ljava/util/Random;JJII)V
    .registers 8
    .param p1, "rng"    # Ljava/util/Random;
    .param p2, "index"    # J
    .param p4, "fence"    # J
    .param p6, "origin"    # I
    .param p7, "bound"    # I

    .prologue
    .line 1004
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
.method public characteristics()I
    .registers 2

    .prologue
    .line 1021
    const/16 v0, 0x4540

    return v0
.end method

.method public estimateSize()J
    .registers 5

    .prologue
    .line 1017
    iget-wide v0, p0, Ljava/util/Random$RandomIntsSpliterator;->fence:J

    iget-wide v2, p0, Ljava/util/Random$RandomIntsSpliterator;->index:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1036
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava/util/Random$RandomIntsSpliterator;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/IntConsumer;)V
    .registers 12
    .param p1, "consumer"    # Ljava/util/function/IntConsumer;

    .prologue
    .line 1037
    if-nez p1, :cond_8

    new-instance v7, Ljava/lang/NullPointerException;

    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    throw v7

    .line 1038
    :cond_8
    iget-wide v4, p0, Ljava/util/Random$RandomIntsSpliterator;->index:J

    .local v4, "i":J
    iget-wide v2, p0, Ljava/util/Random$RandomIntsSpliterator;->fence:J

    .line 1039
    .local v2, "f":J
    cmp-long v7, v4, v2

    if-gez v7, :cond_26

    .line 1040
    iput-wide v2, p0, Ljava/util/Random$RandomIntsSpliterator;->index:J

    .line 1041
    iget-object v6, p0, Ljava/util/Random$RandomIntsSpliterator;->rng:Ljava/util/Random;

    .line 1042
    .local v6, "r":Ljava/util/Random;
    iget v1, p0, Ljava/util/Random$RandomIntsSpliterator;->origin:I

    .local v1, "o":I
    iget v0, p0, Ljava/util/Random$RandomIntsSpliterator;->bound:I

    .line 1044
    .local v0, "b":I
    :cond_18
    invoke-virtual {v6, v1, v0}, Ljava/util/Random;->internalNextInt(II)I

    move-result v7

    invoke-interface {p1, v7}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 1045
    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    cmp-long v7, v4, v2

    if-ltz v7, :cond_18

    .line 1047
    .end local v0    # "b":I
    .end local v1    # "o":I
    .end local v6    # "r":Ljava/util/Random;
    :cond_26
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 1025
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava/util/Random$RandomIntsSpliterator;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result v0

    return v0
.end method

.method public tryAdvance(Ljava/util/function/IntConsumer;)Z
    .registers 9
    .param p1, "consumer"    # Ljava/util/function/IntConsumer;

    .prologue
    .line 1026
    if-nez p1, :cond_8

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 1027
    :cond_8
    iget-wide v2, p0, Ljava/util/Random$RandomIntsSpliterator;->index:J

    .local v2, "i":J
    iget-wide v0, p0, Ljava/util/Random$RandomIntsSpliterator;->fence:J

    .line 1028
    .local v0, "f":J
    cmp-long v4, v2, v0

    if-gez v4, :cond_24

    .line 1029
    iget-object v4, p0, Ljava/util/Random$RandomIntsSpliterator;->rng:Ljava/util/Random;

    iget v5, p0, Ljava/util/Random$RandomIntsSpliterator;->origin:I

    iget v6, p0, Ljava/util/Random$RandomIntsSpliterator;->bound:I

    invoke-virtual {v4, v5, v6}, Ljava/util/Random;->internalNextInt(II)I

    move-result v4

    invoke-interface {p1, v4}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 1030
    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Ljava/util/Random$RandomIntsSpliterator;->index:J

    .line 1031
    const/4 v4, 0x1

    return v4

    .line 1033
    :cond_24
    const/4 v4, 0x0

    return v4
.end method

.method public trySplit()Ljava/util/Random$RandomIntsSpliterator;
    .registers 9

    .prologue
    .line 1011
    iget-wide v2, p0, Ljava/util/Random$RandomIntsSpliterator;->index:J

    .local v2, "i":J
    iget-wide v0, p0, Ljava/util/Random$RandomIntsSpliterator;->fence:J

    add-long/2addr v0, v2

    const/4 v6, 0x1

    ushr-long v4, v0, v6

    .line 1012
    .local v4, "m":J
    cmp-long v0, v4, v2

    if-gtz v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return-object v0

    .line 1013
    :cond_e
    new-instance v0, Ljava/util/Random$RandomIntsSpliterator;

    iget-object v1, p0, Ljava/util/Random$RandomIntsSpliterator;->rng:Ljava/util/Random;

    iput-wide v4, p0, Ljava/util/Random$RandomIntsSpliterator;->index:J

    iget v6, p0, Ljava/util/Random$RandomIntsSpliterator;->origin:I

    iget v7, p0, Ljava/util/Random$RandomIntsSpliterator;->bound:I

    invoke-direct/range {v0 .. v7}, Ljava/util/Random$RandomIntsSpliterator;-><init>(Ljava/util/Random;JJII)V

    goto :goto_d
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfInt;
    .registers 2

    .prologue
    .line 1010
    invoke-virtual {p0}, Ljava/util/Random$RandomIntsSpliterator;->trySplit()Ljava/util/Random$RandomIntsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .prologue
    .line 1010
    invoke-virtual {p0}, Ljava/util/Random$RandomIntsSpliterator;->trySplit()Ljava/util/Random$RandomIntsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .registers 2

    .prologue
    .line 1010
    invoke-virtual {p0}, Ljava/util/Random$RandomIntsSpliterator;->trySplit()Ljava/util/Random$RandomIntsSpliterator;

    move-result-object v0

    return-object v0
.end method
