.class Ljava/util/stream/SpinedBuffer$OfLong$1Splitr;
.super Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;
.source "SpinedBuffer.java"

# interfaces
.implements Ljava/util/Spliterator$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/SpinedBuffer$OfLong;->spliterator()Ljava/util/Spliterator$OfLong;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Splitr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/SpinedBuffer$OfPrimitive<",
        "Ljava/lang/Long;",
        "[J",
        "Ljava/util/function/LongConsumer;",
        ">.BaseSpliterator<",
        "Ljava/util/Spliterator$OfLong;",
        ">;",
        "Ljava/util/Spliterator$OfLong;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/stream/SpinedBuffer$OfLong;


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/SpinedBuffer$OfLong;IIII)V
    .registers 6
    .param p1, "this$0"    # Ljava/util/stream/SpinedBuffer$OfLong;
    .param p2, "firstSpineIndex"    # I
    .param p3, "lastSpineIndex"    # I
    .param p4, "firstSpineElementIndex"    # I
    .param p5, "lastSpineElementFence"    # I

    .line 917
    iput-object p1, p0, Ljava/util/stream/SpinedBuffer$OfLong$1Splitr;->this$0:Ljava/util/stream/SpinedBuffer$OfLong;

    .line 918
    invoke-direct/range {p0 .. p5}, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;-><init>(Ljava/util/stream/SpinedBuffer$OfPrimitive;IIII)V

    .line 920
    return-void
.end method


# virtual methods
.method bridge synthetic blacklist arrayForOne(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 4

    .line 914
    check-cast p1, [J

    check-cast p3, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1, p2, p3}, Ljava/util/stream/SpinedBuffer$OfLong$1Splitr;->arrayForOne([JILjava/util/function/LongConsumer;)V

    return-void
.end method

.method blacklist arrayForOne([JILjava/util/function/LongConsumer;)V
    .registers 6
    .param p1, "array"    # [J
    .param p2, "index"    # I
    .param p3, "consumer"    # Ljava/util/function/LongConsumer;

    .line 931
    aget-wide v0, p1, p2

    invoke-interface {p3, v0, v1}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 932
    return-void
.end method

.method blacklist arraySpliterator([JII)Ljava/util/Spliterator$OfLong;
    .registers 5
    .param p1, "array"    # [J
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 936
    add-int v0, p2, p3

    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->spliterator([JII)Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic blacklist arraySpliterator(Ljava/lang/Object;II)Ljava/util/Spliterator$OfPrimitive;
    .registers 4

    .line 914
    check-cast p1, [J

    invoke-virtual {p0, p1, p2, p3}, Ljava/util/stream/SpinedBuffer$OfLong$1Splitr;->arraySpliterator([JII)Ljava/util/Spliterator$OfLong;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist core-platform-api test-api forEachRemaining(Ljava/util/function/LongConsumer;)V
    .registers 2

    .line 914
    invoke-super {p0, p1}, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method bridge synthetic blacklist newSpliterator(IIII)Ljava/util/Spliterator$OfPrimitive;
    .registers 5

    .line 914
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/stream/SpinedBuffer$OfLong$1Splitr;->newSpliterator(IIII)Ljava/util/stream/SpinedBuffer$OfLong$1Splitr;

    move-result-object p1

    return-object p1
.end method

.method blacklist newSpliterator(IIII)Ljava/util/stream/SpinedBuffer$OfLong$1Splitr;
    .registers 12
    .param p1, "firstSpineIndex"    # I
    .param p2, "lastSpineIndex"    # I
    .param p3, "firstSpineElementIndex"    # I
    .param p4, "lastSpineElementFence"    # I

    .line 925
    new-instance v6, Ljava/util/stream/SpinedBuffer$OfLong$1Splitr;

    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$OfLong$1Splitr;->this$0:Ljava/util/stream/SpinedBuffer$OfLong;

    move-object v0, v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/SpinedBuffer$OfLong$1Splitr;-><init>(Ljava/util/stream/SpinedBuffer$OfLong;IIII)V

    return-object v6
.end method

.method public bridge synthetic whitelist core-platform-api test-api tryAdvance(Ljava/util/function/LongConsumer;)Z
    .registers 2

    .line 914
    invoke-super {p0, p1}, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->tryAdvance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic whitelist core-platform-api test-api trySplit()Ljava/util/Spliterator$OfLong;
    .registers 2

    .line 914
    invoke-super {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->trySplit()Ljava/util/Spliterator$OfPrimitive;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfLong;

    return-object v0
.end method
