.class final Ljava/util/Random$RandomLongsSpliterator;
.super Ljava/lang/Object;
.source "Random.java"

# interfaces
.implements Ljava/util/Spliterator$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Random;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RandomLongsSpliterator"
.end annotation


# instance fields
.field final greylist-max-o bound:J

.field final greylist-max-o fence:J

.field greylist-max-o index:J

.field final greylist-max-o origin:J

.field final greylist-max-o rng:Ljava/util/Random;


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/Random;JJJJ)V
    .registers 10
    .param p1, "rng"    # Ljava/util/Random;
    .param p2, "index"    # J
    .param p4, "fence"    # J
    .param p6, "origin"    # J
    .param p8, "bound"    # J

    .line 1060
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1061
    iput-object p1, p0, Ljava/util/Random$RandomLongsSpliterator;->rng:Ljava/util/Random;

    iput-wide p2, p0, Ljava/util/Random$RandomLongsSpliterator;->index:J

    iput-wide p4, p0, Ljava/util/Random$RandomLongsSpliterator;->fence:J

    .line 1062
    iput-wide p6, p0, Ljava/util/Random$RandomLongsSpliterator;->origin:J

    iput-wide p8, p0, Ljava/util/Random$RandomLongsSpliterator;->bound:J

    .line 1063
    return-void
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 1076
    const/16 v0, 0x4540

    return v0
.end method

.method public whitelist test-api estimateSize()J
    .registers 5

    .line 1072
    iget-wide v0, p0, Ljava/util/Random$RandomLongsSpliterator;->fence:J

    iget-wide v2, p0, Ljava/util/Random$RandomLongsSpliterator;->index:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public bridge synthetic whitelist test-api forEachRemaining(Ljava/lang/Object;)V
    .registers 2

    .line 1053
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava/util/Random$RandomLongsSpliterator;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/LongConsumer;)V
    .registers 13
    .param p1, "consumer"    # Ljava/util/function/LongConsumer;

    .line 1092
    if-eqz p1, :cond_22

    .line 1093
    iget-wide v0, p0, Ljava/util/Random$RandomLongsSpliterator;->index:J

    .local v0, "i":J
    iget-wide v2, p0, Ljava/util/Random$RandomLongsSpliterator;->fence:J

    .line 1094
    .local v2, "f":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_21

    .line 1095
    iput-wide v2, p0, Ljava/util/Random$RandomLongsSpliterator;->index:J

    .line 1096
    iget-object v4, p0, Ljava/util/Random$RandomLongsSpliterator;->rng:Ljava/util/Random;

    .line 1097
    .local v4, "r":Ljava/util/Random;
    iget-wide v5, p0, Ljava/util/Random$RandomLongsSpliterator;->origin:J

    .local v5, "o":J
    iget-wide v7, p0, Ljava/util/Random$RandomLongsSpliterator;->bound:J

    .line 1099
    .local v7, "b":J
    :cond_12
    invoke-virtual {v4, v5, v6, v7, v8}, Ljava/util/Random;->internalNextLong(JJ)J

    move-result-wide v9

    invoke-interface {p1, v9, v10}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 1100
    const-wide/16 v9, 0x1

    add-long/2addr v9, v0

    move-wide v0, v9

    cmp-long v9, v9, v2

    if-ltz v9, :cond_12

    .line 1102
    .end local v4    # "r":Ljava/util/Random;
    .end local v5    # "o":J
    .end local v7    # "b":J
    :cond_21
    return-void

    .line 1092
    .end local v0    # "i":J
    .end local v2    # "f":J
    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist test-api tryAdvance(Ljava/lang/Object;)Z
    .registers 2

    .line 1053
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava/util/Random$RandomLongsSpliterator;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/LongConsumer;)Z
    .registers 11
    .param p1, "consumer"    # Ljava/util/function/LongConsumer;

    .line 1081
    if-eqz p1, :cond_20

    .line 1082
    iget-wide v0, p0, Ljava/util/Random$RandomLongsSpliterator;->index:J

    .local v0, "i":J
    iget-wide v2, p0, Ljava/util/Random$RandomLongsSpliterator;->fence:J

    .line 1083
    .local v2, "f":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_1e

    .line 1084
    iget-object v4, p0, Ljava/util/Random$RandomLongsSpliterator;->rng:Ljava/util/Random;

    iget-wide v5, p0, Ljava/util/Random$RandomLongsSpliterator;->origin:J

    iget-wide v7, p0, Ljava/util/Random$RandomLongsSpliterator;->bound:J

    invoke-virtual {v4, v5, v6, v7, v8}, Ljava/util/Random;->internalNextLong(JJ)J

    move-result-wide v4

    invoke-interface {p1, v4, v5}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 1085
    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    iput-wide v4, p0, Ljava/util/Random$RandomLongsSpliterator;->index:J

    .line 1086
    const/4 v4, 0x1

    return v4

    .line 1088
    :cond_1e
    const/4 v4, 0x0

    return v4

    .line 1081
    .end local v0    # "i":J
    .end local v2    # "f":J
    :cond_20
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist trySplit()Ljava/util/Random$RandomLongsSpliterator;
    .registers 16

    .line 1066
    iget-wide v10, p0, Ljava/util/Random$RandomLongsSpliterator;->index:J

    .local v10, "i":J
    iget-wide v0, p0, Ljava/util/Random$RandomLongsSpliterator;->fence:J

    add-long/2addr v0, v10

    const/4 v2, 0x1

    ushr-long v12, v0, v2

    .line 1067
    .local v12, "m":J
    cmp-long v0, v12, v10

    if-gtz v0, :cond_e

    const/4 v0, 0x0

    goto :goto_1e

    .line 1068
    :cond_e
    new-instance v14, Ljava/util/Random$RandomLongsSpliterator;

    iget-object v1, p0, Ljava/util/Random$RandomLongsSpliterator;->rng:Ljava/util/Random;

    iput-wide v12, p0, Ljava/util/Random$RandomLongsSpliterator;->index:J

    iget-wide v6, p0, Ljava/util/Random$RandomLongsSpliterator;->origin:J

    iget-wide v8, p0, Ljava/util/Random$RandomLongsSpliterator;->bound:J

    move-object v0, v14

    move-wide v2, v10

    move-wide v4, v12

    invoke-direct/range {v0 .. v9}, Ljava/util/Random$RandomLongsSpliterator;-><init>(Ljava/util/Random;JJJJ)V

    .line 1067
    :goto_1e
    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfLong;
    .registers 2

    .line 1053
    invoke-virtual {p0}, Ljava/util/Random$RandomLongsSpliterator;->trySplit()Ljava/util/Random$RandomLongsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 1053
    invoke-virtual {p0}, Ljava/util/Random$RandomLongsSpliterator;->trySplit()Ljava/util/Random$RandomLongsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 1053
    invoke-virtual {p0}, Ljava/util/Random$RandomLongsSpliterator;->trySplit()Ljava/util/Random$RandomLongsSpliterator;

    move-result-object v0

    return-object v0
.end method
