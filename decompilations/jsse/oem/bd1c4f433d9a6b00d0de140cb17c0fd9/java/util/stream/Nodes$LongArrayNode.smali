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
.field final array:[J

.field curSize:I


# direct methods
.method constructor <init>(J)V
    .registers 6
    .param p1, "size"    # J

    .prologue
    .line 1372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1373
    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p1, v0

    if-ltz v0, :cond_13

    .line 1374
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Stream size exceeds max array size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1375
    :cond_13
    long-to-int v0, p1

    new-array v0, v0, [J

    iput-object v0, p0, Ljava/util/stream/Nodes$LongArrayNode;->array:[J

    .line 1376
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/stream/Nodes$LongArrayNode;->curSize:I

    .line 1377
    return-void
.end method

.method constructor <init>([J)V
    .registers 3
    .param p1, "array"    # [J

    .prologue
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
.method public bridge synthetic asPrimitiveArray()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1389
    invoke-virtual {p0}, Ljava/util/stream/Nodes$LongArrayNode;->asPrimitiveArray()[J

    move-result-object v0

    return-object v0
.end method

.method public asPrimitiveArray()[J
    .registers 3

    .prologue
    .line 1391
    iget-object v0, p0, Ljava/util/stream/Nodes$LongArrayNode;->array:[J

    array-length v0, v0

    iget v1, p0, Ljava/util/stream/Nodes$LongArrayNode;->curSize:I

    if-ne v0, v1, :cond_a

    .line 1392
    iget-object v0, p0, Ljava/util/stream/Nodes$LongArrayNode;->array:[J

    return-object v0

    .line 1394
    :cond_a
    iget-object v0, p0, Ljava/util/stream/Nodes$LongArrayNode;->array:[J

    iget v1, p0, Ljava/util/stream/Nodes$LongArrayNode;->curSize:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copyInto(Ljava/lang/Object;I)V
    .registers 3

    .prologue
    .line 1398
    check-cast p1, [J

    invoke-virtual {p0, p1, p2}, Ljava/util/stream/Nodes$LongArrayNode;->copyInto([JI)V

    return-void
.end method

.method public copyInto([JI)V
    .registers 6
    .param p1, "dest"    # [J
    .param p2, "destOffset"    # I

    .prologue
    .line 1400
    iget-object v0, p0, Ljava/util/stream/Nodes$LongArrayNode;->array:[J

    iget v1, p0, Ljava/util/stream/Nodes$LongArrayNode;->curSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 1401
    return-void
.end method

.method public bridge synthetic copyInto([Ljava/lang/Object;I)V
    .registers 3

    .prologue
    .line 409
    check-cast p1, [Ljava/lang/Long;

    invoke-interface {p0, p1, p2}, Ljava/util/stream/Node$OfLong;->copyInto([Ljava/lang/Long;I)V

    return-void
.end method

.method public count()J
    .registers 3

    .prologue
    .line 1405
    iget v0, p0, Ljava/util/stream/Nodes$LongArrayNode;->curSize:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public bridge synthetic forEach(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1408
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava/util/stream/Nodes$LongArrayNode;->forEach(Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public forEach(Ljava/util/function/LongConsumer;)V
    .registers 6
    .param p1, "consumer"    # Ljava/util/function/LongConsumer;

    .prologue
    .line 1410
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Ljava/util/stream/Nodes$LongArrayNode;->curSize:I

    if-ge v0, v1, :cond_f

    .line 1411
    iget-object v1, p0, Ljava/util/stream/Nodes$LongArrayNode;->array:[J

    aget-wide v2, v1, v0

    invoke-interface {p1, v2, v3}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 1410
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1413
    :cond_f
    return-void
.end method

.method public bridge synthetic getChild(I)Ljava/util/stream/Node;
    .registers 3

    .prologue
    .line 248
    invoke-interface {p0, p1}, Ljava/util/stream/Node$OfPrimitive;->getChild(I)Ljava/util/stream/Node$OfPrimitive;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newArray(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 442
    invoke-interface {p0, p1}, Ljava/util/stream/Node$OfLong;->newArray(I)[J

    move-result-object v0

    return-object v0
.end method

.method public spliterator()Ljava/util/Spliterator$OfLong;
    .registers 4

    .prologue
    .line 1386
    iget-object v0, p0, Ljava/util/stream/Nodes$LongArrayNode;->array:[J

    iget v1, p0, Ljava/util/stream/Nodes$LongArrayNode;->curSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->spliterator([JII)Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .prologue
    .line 1384
    invoke-virtual {p0}, Ljava/util/stream/Nodes$LongArrayNode;->spliterator()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator;
    .registers 2

    .prologue
    .line 1384
    invoke-virtual {p0}, Ljava/util/stream/Nodes$LongArrayNode;->spliterator()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1417
    const-string/jumbo v0, "LongArrayNode[%d][%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 1418
    iget-object v2, p0, Ljava/util/stream/Nodes$LongArrayNode;->array:[J

    array-length v2, v2

    iget v3, p0, Ljava/util/stream/Nodes$LongArrayNode;->curSize:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Ljava/util/stream/Nodes$LongArrayNode;->array:[J

    invoke-static {v2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 1417
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node$OfPrimitive;
    .registers 7

    .prologue
    .line 428
    invoke-interface/range {p0 .. p5}, Ljava/util/stream/Node$OfLong;->truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node;
    .registers 7

    .prologue
    .line 428
    invoke-interface/range {p0 .. p5}, Ljava/util/stream/Node$OfLong;->truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node$OfLong;

    move-result-object v0

    return-object v0
.end method
