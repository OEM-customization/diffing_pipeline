.class final Ljava/util/SplittableRandom$RandomLongsSpliterator;
.super Ljava/lang/Object;
.source "SplittableRandom.java"

# interfaces
.implements Ljava/util/Spliterator$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/SplittableRandom;
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

.field final rng:Ljava/util/SplittableRandom;


# direct methods
.method constructor <init>(Ljava/util/SplittableRandom;JJJJ)V
    .registers 10
    .param p1, "rng"    # Ljava/util/SplittableRandom;
    .param p2, "index"    # J
    .param p4, "fence"    # J
    .param p6, "origin"    # J
    .param p8, "bound"    # J

    .prologue
    .line 893
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 895
    iput-object p1, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->rng:Ljava/util/SplittableRandom;

    iput-wide p2, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->index:J

    iput-wide p4, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->fence:J

    .line 896
    iput-wide p6, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->origin:J

    iput-wide p8, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->bound:J

    .line 897
    return-void
.end method


# virtual methods
.method public characteristics()I
    .registers 2

    .prologue
    .line 910
    const/16 v0, 0x4540

    return v0
.end method

.method public estimateSize()J
    .registers 5

    .prologue
    .line 906
    iget-wide v0, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->fence:J

    iget-wide v2, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->index:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 925
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava/util/SplittableRandom$RandomLongsSpliterator;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/LongConsumer;)V
    .registers 14
    .param p1, "consumer"    # Ljava/util/function/LongConsumer;

    .prologue
    .line 926
    if-nez p1, :cond_8

    new-instance v9, Ljava/lang/NullPointerException;

    invoke-direct {v9}, Ljava/lang/NullPointerException;-><init>()V

    throw v9

    .line 927
    :cond_8
    iget-wide v4, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->index:J

    .local v4, "i":J
    iget-wide v2, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->fence:J

    .line 928
    .local v2, "f":J
    cmp-long v9, v4, v2

    if-gez v9, :cond_26

    .line 929
    iput-wide v2, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->index:J

    .line 930
    iget-object v8, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->rng:Ljava/util/SplittableRandom;

    .line 931
    .local v8, "r":Ljava/util/SplittableRandom;
    iget-wide v6, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->origin:J

    .local v6, "o":J
    iget-wide v0, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->bound:J

    .line 933
    .local v0, "b":J
    :cond_18
    invoke-virtual {v8, v6, v7, v0, v1}, Ljava/util/SplittableRandom;->internalNextLong(JJ)J

    move-result-wide v10

    invoke-interface {p1, v10, v11}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 934
    const-wide/16 v10, 0x1

    add-long/2addr v4, v10

    cmp-long v9, v4, v2

    if-ltz v9, :cond_18

    .line 936
    .end local v0    # "b":J
    .end local v6    # "o":J
    .end local v8    # "r":Ljava/util/SplittableRandom;
    :cond_26
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 914
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava/util/SplittableRandom$RandomLongsSpliterator;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result v0

    return v0
.end method

.method public tryAdvance(Ljava/util/function/LongConsumer;)Z
    .registers 12
    .param p1, "consumer"    # Ljava/util/function/LongConsumer;

    .prologue
    .line 915
    if-nez p1, :cond_8

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 916
    :cond_8
    iget-wide v2, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->index:J

    .local v2, "i":J
    iget-wide v0, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->fence:J

    .line 917
    .local v0, "f":J
    cmp-long v4, v2, v0

    if-gez v4, :cond_24

    .line 918
    iget-object v4, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->rng:Ljava/util/SplittableRandom;

    iget-wide v6, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->origin:J

    iget-wide v8, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->bound:J

    invoke-virtual {v4, v6, v7, v8, v9}, Ljava/util/SplittableRandom;->internalNextLong(JJ)J

    move-result-wide v4

    invoke-interface {p1, v4, v5}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 919
    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->index:J

    .line 920
    const/4 v4, 0x1

    return v4

    .line 922
    :cond_24
    const/4 v4, 0x0

    return v4
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfLong;
    .registers 2

    .prologue
    .line 899
    invoke-virtual {p0}, Ljava/util/SplittableRandom$RandomLongsSpliterator;->trySplit()Ljava/util/SplittableRandom$RandomLongsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .prologue
    .line 899
    invoke-virtual {p0}, Ljava/util/SplittableRandom$RandomLongsSpliterator;->trySplit()Ljava/util/SplittableRandom$RandomLongsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .registers 2

    .prologue
    .line 899
    invoke-virtual {p0}, Ljava/util/SplittableRandom$RandomLongsSpliterator;->trySplit()Ljava/util/SplittableRandom$RandomLongsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public trySplit()Ljava/util/SplittableRandom$RandomLongsSpliterator;
    .registers 11

    .prologue
    .line 900
    iget-wide v2, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->index:J

    .local v2, "i":J
    iget-wide v0, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->fence:J

    add-long/2addr v0, v2

    const/4 v6, 0x1

    ushr-long v4, v0, v6

    .line 901
    .local v4, "m":J
    cmp-long v0, v4, v2

    if-gtz v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return-object v0

    .line 902
    :cond_e
    new-instance v0, Ljava/util/SplittableRandom$RandomLongsSpliterator;

    iget-object v1, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->rng:Ljava/util/SplittableRandom;

    invoke-virtual {v1}, Ljava/util/SplittableRandom;->split()Ljava/util/SplittableRandom;

    move-result-object v1

    iput-wide v4, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->index:J

    iget-wide v6, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->origin:J

    iget-wide v8, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->bound:J

    invoke-direct/range {v0 .. v9}, Ljava/util/SplittableRandom$RandomLongsSpliterator;-><init>(Ljava/util/SplittableRandom;JJJJ)V

    goto :goto_d
.end method
