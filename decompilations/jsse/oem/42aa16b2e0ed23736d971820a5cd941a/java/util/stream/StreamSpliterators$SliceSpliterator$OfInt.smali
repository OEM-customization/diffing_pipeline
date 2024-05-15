.class final Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfInt;
.super Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators$SliceSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfInt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive<",
        "Ljava/lang/Integer;",
        "Ljava/util/Spliterator$OfInt;",
        "Ljava/util/function/IntConsumer;",
        ">;",
        "Ljava/util/Spliterator$OfInt;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/util/Spliterator$OfInt;JJ)V
    .registers 6
    .param p1, "s"    # Ljava/util/Spliterator$OfInt;
    .param p2, "sliceOrigin"    # J
    .param p4, "sliceFence"    # J

    .line 823
    invoke-direct/range {p0 .. p5}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;-><init>(Ljava/util/Spliterator$OfPrimitive;JJ)V

    .line 824
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/Spliterator$OfInt;JJJJ)V
    .registers 21
    .param p1, "s"    # Ljava/util/Spliterator$OfInt;
    .param p2, "sliceOrigin"    # J
    .param p4, "sliceFence"    # J
    .param p6, "origin"    # J
    .param p8, "fence"    # J

    .line 828
    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-direct/range {v0 .. v10}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;-><init>(Ljava/util/Spliterator$OfPrimitive;JJJJLjava/util/stream/StreamSpliterators$1;)V

    .line 829
    return-void
.end method

.method static synthetic blacklist lambda$emptyConsumer$0(I)V
    .registers 1
    .param p0, "e"    # I

    .line 840
    return-void
.end method


# virtual methods
.method protected bridge synthetic blacklist emptyConsumer()Ljava/lang/Object;
    .registers 2

    .line 820
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfInt;->emptyConsumer()Ljava/util/function/IntConsumer;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist emptyConsumer()Ljava/util/function/IntConsumer;
    .registers 2

    .line 840
    sget-object v0, Ljava/util/stream/-$$Lambda$StreamSpliterators$SliceSpliterator$OfInt$GDCU9wlqIN8f-np3lkzlBdIGmvc;->INSTANCE:Ljava/util/stream/-$$Lambda$StreamSpliterators$SliceSpliterator$OfInt$GDCU9wlqIN8f-np3lkzlBdIGmvc;

    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api forEachRemaining(Ljava/util/function/IntConsumer;)V
    .registers 2

    .line 820
    invoke-super {p0, p1}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method protected blacklist makeSpliterator(Ljava/util/Spliterator$OfInt;JJJJ)Ljava/util/Spliterator$OfInt;
    .registers 21
    .param p1, "s"    # Ljava/util/Spliterator$OfInt;
    .param p2, "sliceOrigin"    # J
    .param p4, "sliceFence"    # J
    .param p6, "origin"    # J
    .param p8, "fence"    # J

    .line 835
    new-instance v10, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfInt;

    move-object v0, v10

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfInt;-><init>(Ljava/util/Spliterator$OfInt;JJJJ)V

    return-object v10
.end method

.method protected bridge synthetic blacklist makeSpliterator(Ljava/util/Spliterator;JJJJ)Ljava/util/Spliterator;
    .registers 20

    .line 820
    move-object v1, p1

    check-cast v1, Ljava/util/Spliterator$OfInt;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfInt;->makeSpliterator(Ljava/util/Spliterator$OfInt;JJJJ)Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api tryAdvance(Ljava/util/function/IntConsumer;)Z
    .registers 2

    .line 820
    invoke-super {p0, p1}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic whitelist core-platform-api test-api trySplit()Ljava/util/Spliterator$OfInt;
    .registers 2

    .line 820
    invoke-super {p0}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfInt;

    return-object v0
.end method
