.class Ljava/util/stream/SpinedBuffer$OfInt$1Splitr;
.super Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;
.source "SpinedBuffer.java"

# interfaces
.implements Ljava/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/SpinedBuffer$OfInt;->spliterator()Ljava/util/Spliterator$OfInt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Splitr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/SpinedBuffer$OfPrimitive<",
        "Ljava/lang/Integer;",
        "[I",
        "Ljava/util/function/IntConsumer;",
        ">.BaseSpliterator<",
        "Ljava/util/Spliterator$OfInt;",
        ">;",
        "Ljava/util/Spliterator$OfInt;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/stream/SpinedBuffer$OfInt;


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/SpinedBuffer$OfInt;IIII)V
    .registers 6
    .param p1, "this$0"    # Ljava/util/stream/SpinedBuffer$OfInt;
    .param p2, "firstSpineIndex"    # I
    .param p3, "lastSpineIndex"    # I
    .param p4, "firstSpineElementIndex"    # I
    .param p5, "lastSpineElementFence"    # I

    .line 799
    iput-object p1, p0, Ljava/util/stream/SpinedBuffer$OfInt$1Splitr;->this$0:Ljava/util/stream/SpinedBuffer$OfInt;

    .line 800
    invoke-direct/range {p0 .. p5}, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;-><init>(Ljava/util/stream/SpinedBuffer$OfPrimitive;IIII)V

    .line 802
    return-void
.end method


# virtual methods
.method bridge synthetic blacklist arrayForOne(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 4

    .line 796
    check-cast p1, [I

    check-cast p3, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1, p2, p3}, Ljava/util/stream/SpinedBuffer$OfInt$1Splitr;->arrayForOne([IILjava/util/function/IntConsumer;)V

    return-void
.end method

.method blacklist arrayForOne([IILjava/util/function/IntConsumer;)V
    .registers 5
    .param p1, "array"    # [I
    .param p2, "index"    # I
    .param p3, "consumer"    # Ljava/util/function/IntConsumer;

    .line 813
    aget v0, p1, p2

    invoke-interface {p3, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 814
    return-void
.end method

.method blacklist arraySpliterator([III)Ljava/util/Spliterator$OfInt;
    .registers 5
    .param p1, "array"    # [I
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 818
    add-int v0, p2, p3

    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->spliterator([III)Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic blacklist arraySpliterator(Ljava/lang/Object;II)Ljava/util/Spliterator$OfPrimitive;
    .registers 4

    .line 796
    check-cast p1, [I

    invoke-virtual {p0, p1, p2, p3}, Ljava/util/stream/SpinedBuffer$OfInt$1Splitr;->arraySpliterator([III)Ljava/util/Spliterator$OfInt;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist core-platform-api test-api forEachRemaining(Ljava/util/function/IntConsumer;)V
    .registers 2

    .line 796
    invoke-super {p0, p1}, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method bridge synthetic blacklist newSpliterator(IIII)Ljava/util/Spliterator$OfPrimitive;
    .registers 5

    .line 796
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/stream/SpinedBuffer$OfInt$1Splitr;->newSpliterator(IIII)Ljava/util/stream/SpinedBuffer$OfInt$1Splitr;

    move-result-object p1

    return-object p1
.end method

.method blacklist newSpliterator(IIII)Ljava/util/stream/SpinedBuffer$OfInt$1Splitr;
    .registers 12
    .param p1, "firstSpineIndex"    # I
    .param p2, "lastSpineIndex"    # I
    .param p3, "firstSpineElementIndex"    # I
    .param p4, "lastSpineElementFence"    # I

    .line 807
    new-instance v6, Ljava/util/stream/SpinedBuffer$OfInt$1Splitr;

    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$OfInt$1Splitr;->this$0:Ljava/util/stream/SpinedBuffer$OfInt;

    move-object v0, v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/SpinedBuffer$OfInt$1Splitr;-><init>(Ljava/util/stream/SpinedBuffer$OfInt;IIII)V

    return-object v6
.end method

.method public bridge synthetic whitelist core-platform-api test-api tryAdvance(Ljava/util/function/IntConsumer;)Z
    .registers 2

    .line 796
    invoke-super {p0, p1}, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->tryAdvance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic whitelist core-platform-api test-api trySplit()Ljava/util/Spliterator$OfInt;
    .registers 2

    .line 796
    invoke-super {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->trySplit()Ljava/util/Spliterator$OfPrimitive;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfInt;

    return-object v0
.end method
