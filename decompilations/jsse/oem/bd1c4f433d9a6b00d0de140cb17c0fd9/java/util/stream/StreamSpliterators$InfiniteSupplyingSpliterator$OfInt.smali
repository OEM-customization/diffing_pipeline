.class final Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;
.super Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfInt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator",
        "<",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/util/Spliterator$OfInt;"
    }
.end annotation


# instance fields
.field final s:Ljava/util/function/IntSupplier;


# direct methods
.method constructor <init>(JLjava/util/function/IntSupplier;)V
    .registers 5
    .param p1, "size"    # J
    .param p3, "s"    # Ljava/util/function/IntSupplier;

    .prologue
    .line 1373
    invoke-direct {p0, p1, p2}, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;-><init>(J)V

    .line 1374
    iput-object p3, p0, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;->s:Ljava/util/function/IntSupplier;

    .line 1375
    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 652
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-interface {p0, p1}, Ljava/util/Spliterator$OfInt;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 1377
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result v0

    return v0
.end method

.method public tryAdvance(Ljava/util/function/IntConsumer;)Z
    .registers 3
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .prologue
    .line 1379
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1381
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;->s:Ljava/util/function/IntSupplier;

    invoke-interface {v0}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 1382
    const/4 v0, 0x1

    return v0
.end method

.method public trySplit()Ljava/util/Spliterator$OfInt;
    .registers 5

    .prologue
    .line 1387
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;->estimate:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    .line 1388
    const/4 v0, 0x0

    return-object v0

    .line 1389
    :cond_a
    new-instance v0, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;

    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;->estimate:J

    const/4 v1, 0x1

    ushr-long/2addr v2, v1

    iput-wide v2, p0, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;->estimate:J

    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;->s:Ljava/util/function/IntSupplier;

    invoke-direct {v0, v2, v3, v1}, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;-><init>(JLjava/util/function/IntSupplier;)V

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .prologue
    .line 1385
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;->trySplit()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .registers 2

    .prologue
    .line 1385
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;->trySplit()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method