.class final Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;
.super Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava/util/Spliterator$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators$SliceSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive<",
        "Ljava/lang/Double;",
        "Ljava/util/Spliterator$OfDouble;",
        "Ljava/util/function/DoubleConsumer;",
        ">;",
        "Ljava/util/Spliterator$OfDouble;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/util/Spliterator$OfDouble;JJ)V
    .registers 6
    .param p1, "s"    # Ljava/util/Spliterator$OfDouble;
    .param p2, "sliceOrigin"    # J
    .param p4, "sliceFence"    # J

    .line 871
    invoke-direct/range {p0 .. p5}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;-><init>(Ljava/util/Spliterator$OfPrimitive;JJ)V

    .line 872
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/Spliterator$OfDouble;JJJJ)V
    .registers 21
    .param p1, "s"    # Ljava/util/Spliterator$OfDouble;
    .param p2, "sliceOrigin"    # J
    .param p4, "sliceFence"    # J
    .param p6, "origin"    # J
    .param p8, "fence"    # J

    .line 876
    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-direct/range {v0 .. v10}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;-><init>(Ljava/util/Spliterator$OfPrimitive;JJJJLjava/util/stream/StreamSpliterators$1;)V

    .line 877
    return-void
.end method

.method static synthetic blacklist lambda$emptyConsumer$0(D)V
    .registers 2
    .param p0, "e"    # D

    .line 888
    return-void
.end method


# virtual methods
.method protected bridge synthetic blacklist emptyConsumer()Ljava/lang/Object;
    .registers 2

    .line 868
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;->emptyConsumer()Ljava/util/function/DoubleConsumer;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist emptyConsumer()Ljava/util/function/DoubleConsumer;
    .registers 2

    .line 888
    sget-object v0, Ljava/util/stream/-$$Lambda$StreamSpliterators$SliceSpliterator$OfDouble$F1bBlpqcoM_HwaVPMQ3Q9zUwTCw;->INSTANCE:Ljava/util/stream/-$$Lambda$StreamSpliterators$SliceSpliterator$OfDouble$F1bBlpqcoM_HwaVPMQ3Q9zUwTCw;

    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .registers 2

    .line 868
    invoke-super {p0, p1}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method protected blacklist makeSpliterator(Ljava/util/Spliterator$OfDouble;JJJJ)Ljava/util/Spliterator$OfDouble;
    .registers 21
    .param p1, "s"    # Ljava/util/Spliterator$OfDouble;
    .param p2, "sliceOrigin"    # J
    .param p4, "sliceFence"    # J
    .param p6, "origin"    # J
    .param p8, "fence"    # J

    .line 883
    new-instance v10, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;

    move-object v0, v10

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;-><init>(Ljava/util/Spliterator$OfDouble;JJJJ)V

    return-object v10
.end method

.method protected bridge synthetic blacklist makeSpliterator(Ljava/util/Spliterator;JJJJ)Ljava/util/Spliterator;
    .registers 20

    .line 868
    move-object v1, p1

    check-cast v1, Ljava/util/Spliterator$OfDouble;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;->makeSpliterator(Ljava/util/Spliterator$OfDouble;JJJJ)Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api tryAdvance(Ljava/util/function/DoubleConsumer;)Z
    .registers 2

    .line 868
    invoke-super {p0, p1}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic whitelist core-platform-api test-api trySplit()Ljava/util/Spliterator$OfDouble;
    .registers 2

    .line 868
    invoke-super {p0}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfDouble;

    return-object v0
.end method
