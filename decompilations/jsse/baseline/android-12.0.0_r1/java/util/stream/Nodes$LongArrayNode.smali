.class Ljava/util/stream/Nodes$LongArrayNode;
.super Ljava/lang/Object;
.source "Nodes.java"

# interfaces
.implements Ljava/util/stream/Node$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LongArrayNode"
.end annotation


# instance fields
.field final blacklist array:[J

.field blacklist curSize:I


# direct methods
.method constructor blacklist <init>(J)V
    .registers 5
    .param p1, "size"    # J

    .line 1372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1373
    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p1, v0

    if-gez v0, :cond_13

    .line 1375
    long-to-int v0, p1

    new-array v0, v0, [J

    iput-object v0, p0, Ljava/util/stream/Nodes$LongArrayNode;->array:[J

    .line 1376
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/stream/Nodes$LongArrayNode;->curSize:I

    .line 1377
    return-void

    .line 1374
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stream size exceeds max array size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor blacklist <init>([J)V
    .registers 3
    .param p1, "array"    # [J

    .line 1379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1380
    iput-object p1, p0, Ljava/util/stream/Nodes$LongArrayNode;->array:[J

    .line 1381
    array-length v0, p1

    iput v0, p0, Ljava/util/stream/Nodes$LongArrayNode;->curSize:I

    .line 1382
    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist asPrimitiveArray()Ljava/lang/Object;
    .registers 2

    .line 1368
    invoke-virtual {p0}, Ljava/util/stream/Nodes$LongArrayNode;->asPrimitiveArray()[J

    move-result-object v0

    return-object v0
.end method

.method public blacklist asPrimitiveArray()[J
    .registers 4

    .line 1391
    iget-object v0, p0, Ljava/util/stream/Nodes$LongArrayNode;->array:[J

    array-length v1, v0

    iget v2, p0, Ljava/util/stream/Nodes$LongArrayNode;->curSize:I

    if-ne v1, v2, :cond_8

    .line 1392
    return-object v0

    .line 1394
    :cond_8
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist copyInto(Ljava/lang/Object;I)V
    .registers 3

    .line 1368
    check-cast p1, [J

    invoke-virtual {p0, p1, p2}, Ljava/util/stream/Nodes$LongArrayNode;->copyInto([JI)V

    return-void
.end method

.method public blacklist copyInto([JI)V
    .registers 6
    .param p1, "dest"    # [J
    .param p2, "destOffset"    # I

    .line 1400
    iget-object v0, p0, Ljava/util/stream/Nodes$LongArrayNode;->array:[J

    iget v1, p0, Ljava/util/stream/Nodes$LongArrayNode;->curSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1401
    return-void
.end method

.method public blacklist count()J
    .registers 3

    .line 1405
    iget v0, p0, Ljava/util/stream/Nodes$LongArrayNode;->curSize:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public bridge synthetic blacklist forEach(Ljava/lang/Object;)V
    .registers 2

    .line 1368
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava/util/stream/Nodes$LongArrayNode;->forEach(Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public blacklist forEach(Ljava/util/function/LongConsumer;)V
    .registers 5
    .param p1, "consumer"    # Ljava/util/function/LongConsumer;

    .line 1410
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Ljava/util/stream/Nodes$LongArrayNode;->curSize:I

    if-ge v0, v1, :cond_f

    .line 1411
    iget-object v1, p0, Ljava/util/stream/Nodes$LongArrayNode;->array:[J

    aget-wide v1, v1, v0

    invoke-interface {p1, v1, v2}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 1410
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1413
    .end local v0    # "i":I
    :cond_f
    return-void
.end method

.method public blacklist spliterator()Ljava/util/Spliterator$OfLong;
    .registers 4

    .line 1386
    iget-object v0, p0, Ljava/util/stream/Nodes$LongArrayNode;->array:[J

    iget v1, p0, Ljava/util/stream/Nodes$LongArrayNode;->curSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->spliterator([JII)Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist spliterator()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 1368
    invoke-virtual {p0}, Ljava/util/stream/Nodes$LongArrayNode;->spliterator()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist spliterator()Ljava/util/Spliterator;
    .registers 2

    .line 1368
    invoke-virtual {p0}, Ljava/util/stream/Nodes$LongArrayNode;->spliterator()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 1417
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Ljava/util/stream/Nodes$LongArrayNode;->array:[J

    array-length v1, v1

    iget v2, p0, Ljava/util/stream/Nodes$LongArrayNode;->curSize:I

    sub-int/2addr v1, v2

    .line 1418
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Ljava/util/stream/Nodes$LongArrayNode;->array:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 1417
    const-string v1, "LongArrayNode[%d][%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
