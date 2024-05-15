.class final Ljava/util/Random$RandomDoublesSpliterator;
.super Ljava/lang/Object;
.source "Random.java"

# interfaces
.implements Ljava/util/Spliterator$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Random;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RandomDoublesSpliterator"
.end annotation


# instance fields
.field final greylist-max-o bound:D

.field final greylist-max-o fence:J

.field greylist-max-o index:J

.field final greylist-max-o origin:D

.field final greylist-max-o rng:Ljava/util/Random;


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/Random;JJDD)V
    .registers 10
    .param p1, "rng"    # Ljava/util/Random;
    .param p2, "index"    # J
    .param p4, "fence"    # J
    .param p6, "origin"    # D
    .param p8, "bound"    # D

    .line 1116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1117
    iput-object p1, p0, Ljava/util/Random$RandomDoublesSpliterator;->rng:Ljava/util/Random;

    iput-wide p2, p0, Ljava/util/Random$RandomDoublesSpliterator;->index:J

    iput-wide p4, p0, Ljava/util/Random$RandomDoublesSpliterator;->fence:J

    .line 1118
    iput-wide p6, p0, Ljava/util/Random$RandomDoublesSpliterator;->origin:D

    iput-wide p8, p0, Ljava/util/Random$RandomDoublesSpliterator;->bound:D

    .line 1119
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api characteristics()I
    .registers 2

    .line 1132
    const/16 v0, 0x4540

    return v0
.end method

.method public whitelist core-platform-api test-api estimateSize()J
    .registers 5

    .line 1128
    iget-wide v0, p0, Ljava/util/Random$RandomDoublesSpliterator;->fence:J

    iget-wide v2, p0, Ljava/util/Random$RandomDoublesSpliterator;->index:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api forEachRemaining(Ljava/lang/Object;)V
    .registers 2

    .line 1109
    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljava/util/Random$RandomDoublesSpliterator;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    return-void
.end method

.method public whitelist core-platform-api test-api forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .registers 13
    .param p1, "consumer"    # Ljava/util/function/DoubleConsumer;

    .line 1148
    if-eqz p1, :cond_22

    .line 1149
    iget-wide v0, p0, Ljava/util/Random$RandomDoublesSpliterator;->index:J

    .local v0, "i":J
    iget-wide v2, p0, Ljava/util/Random$RandomDoublesSpliterator;->fence:J

    .line 1150
    .local v2, "f":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_21

    .line 1151
    iput-wide v2, p0, Ljava/util/Random$RandomDoublesSpliterator;->index:J

    .line 1152
    iget-object v4, p0, Ljava/util/Random$RandomDoublesSpliterator;->rng:Ljava/util/Random;

    .line 1153
    .local v4, "r":Ljava/util/Random;
    iget-wide v5, p0, Ljava/util/Random$RandomDoublesSpliterator;->origin:D

    .local v5, "o":D
    iget-wide v7, p0, Ljava/util/Random$RandomDoublesSpliterator;->bound:D

    .line 1155
    .local v7, "b":D
    :cond_12
    invoke-virtual {v4, v5, v6, v7, v8}, Ljava/util/Random;->internalNextDouble(DD)D

    move-result-wide v9

    invoke-interface {p1, v9, v10}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 1156
    const-wide/16 v9, 0x1

    add-long/2addr v9, v0

    move-wide v0, v9

    cmp-long v9, v9, v2

    if-ltz v9, :cond_12

    .line 1158
    .end local v4    # "r":Ljava/util/Random;
    .end local v5    # "o":D
    .end local v7    # "b":D
    :cond_21
    return-void

    .line 1148
    .end local v0    # "i":J
    .end local v2    # "f":J
    :cond_22
    const/4 v0, 0x0

    throw v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api tryAdvance(Ljava/lang/Object;)Z
    .registers 2

    .line 1109
    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljava/util/Random$RandomDoublesSpliterator;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result p1

    return p1
.end method

.method public whitelist core-platform-api test-api tryAdvance(Ljava/util/function/DoubleConsumer;)Z
    .registers 11
    .param p1, "consumer"    # Ljava/util/function/DoubleConsumer;

    .line 1137
    if-eqz p1, :cond_20

    .line 1138
    iget-wide v0, p0, Ljava/util/Random$RandomDoublesSpliterator;->index:J

    .local v0, "i":J
    iget-wide v2, p0, Ljava/util/Random$RandomDoublesSpliterator;->fence:J

    .line 1139
    .local v2, "f":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_1e

    .line 1140
    iget-object v4, p0, Ljava/util/Random$RandomDoublesSpliterator;->rng:Ljava/util/Random;

    iget-wide v5, p0, Ljava/util/Random$RandomDoublesSpliterator;->origin:D

    iget-wide v7, p0, Ljava/util/Random$RandomDoublesSpliterator;->bound:D

    invoke-virtual {v4, v5, v6, v7, v8}, Ljava/util/Random;->internalNextDouble(DD)D

    move-result-wide v4

    invoke-interface {p1, v4, v5}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 1141
    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    iput-wide v4, p0, Ljava/util/Random$RandomDoublesSpliterator;->index:J

    .line 1142
    const/4 v4, 0x1

    return v4

    .line 1144
    :cond_1e
    const/4 v4, 0x0

    return v4

    .line 1137
    .end local v0    # "i":J
    .end local v2    # "f":J
    :cond_20
    const/4 v0, 0x0

    throw v0
.end method

.method public blacklist trySplit()Ljava/util/Random$RandomDoublesSpliterator;
    .registers 16

    .line 1122
    iget-wide v10, p0, Ljava/util/Random$RandomDoublesSpliterator;->index:J

    .local v10, "i":J
    iget-wide v0, p0, Ljava/util/Random$RandomDoublesSpliterator;->fence:J

    add-long/2addr v0, v10

    const/4 v2, 0x1

    ushr-long v12, v0, v2

    .line 1123
    .local v12, "m":J
    cmp-long v0, v12, v10

    if-gtz v0, :cond_e

    const/4 v0, 0x0

    goto :goto_1e

    .line 1124
    :cond_e
    new-instance v14, Ljava/util/Random$RandomDoublesSpliterator;

    iget-object v1, p0, Ljava/util/Random$RandomDoublesSpliterator;->rng:Ljava/util/Random;

    iput-wide v12, p0, Ljava/util/Random$RandomDoublesSpliterator;->index:J

    iget-wide v6, p0, Ljava/util/Random$RandomDoublesSpliterator;->origin:D

    iget-wide v8, p0, Ljava/util/Random$RandomDoublesSpliterator;->bound:D

    move-object v0, v14

    move-wide v2, v10

    move-wide v4, v12

    invoke-direct/range {v0 .. v9}, Ljava/util/Random$RandomDoublesSpliterator;-><init>(Ljava/util/Random;JJDD)V

    .line 1123
    :goto_1e
    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api trySplit()Ljava/util/Spliterator$OfDouble;
    .registers 2

    .line 1109
    invoke-virtual {p0}, Ljava/util/Random$RandomDoublesSpliterator;->trySplit()Ljava/util/Random$RandomDoublesSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 1109
    invoke-virtual {p0}, Ljava/util/Random$RandomDoublesSpliterator;->trySplit()Ljava/util/Random$RandomDoublesSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 1109
    invoke-virtual {p0}, Ljava/util/Random$RandomDoublesSpliterator;->trySplit()Ljava/util/Random$RandomDoublesSpliterator;

    move-result-object v0

    return-object v0
.end method
