.class final Ljava/util/stream/Nodes$IntSpinedNodeBuilder;
.super Ljava/util/stream/SpinedBuffer$OfInt;
.source "Nodes.java"

# interfaces
.implements Ljava/util/stream/Node$OfInt;
.implements Ljava/util/stream/Node$Builder$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IntSpinedNodeBuilder"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private building:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->-assertionsDisabled:Z

    .line 1638
    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 1643
    invoke-direct {p0}, Ljava/util/stream/SpinedBuffer$OfInt;-><init>()V

    .line 1641
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->building:Z

    .line 1643
    return-void
.end method


# virtual methods
.method public accept(I)V
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 1668
    sget-boolean v0, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->-assertionsDisabled:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->building:Z

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "not building"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1669
    :cond_11
    invoke-super {p0, p1}, Ljava/util/stream/SpinedBuffer$OfInt;->accept(I)V

    .line 1670
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 194
    check-cast p1, Ljava/lang/Integer;

    invoke-interface {p0, p1}, Ljava/util/stream/Sink$OfInt;->accept(Ljava/lang/Integer;)V

    return-void
.end method

.method public bridge synthetic asPrimitiveArray()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1685
    invoke-virtual {p0}, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->asPrimitiveArray()[I

    move-result-object v0

    return-object v0
.end method

.method public asPrimitiveArray()[I
    .registers 3

    .prologue
    .line 1687
    sget-boolean v0, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->-assertionsDisabled:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->building:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "during building"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1688
    :cond_11
    invoke-super {p0}, Ljava/util/stream/SpinedBuffer$OfInt;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public begin(J)V
    .registers 6
    .param p1, "size"    # J

    .prologue
    .line 1660
    sget-boolean v0, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->-assertionsDisabled:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->building:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "was already building"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1661
    :cond_11
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->building:Z

    .line 1662
    invoke-virtual {p0}, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->clear()V

    .line 1663
    invoke-virtual {p0, p1, p2}, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->ensureCapacity(J)V

    .line 1664
    return-void
.end method

.method public build()Ljava/util/stream/Node$OfInt;
    .registers 3

    .prologue
    .line 1693
    sget-boolean v0, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->-assertionsDisabled:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->building:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "during building"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1694
    :cond_11
    return-object p0
.end method

.method public bridge synthetic build()Ljava/util/stream/Node;
    .registers 2

    .prologue
    .line 1691
    invoke-virtual {p0}, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->build()Ljava/util/stream/Node$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copyInto(Ljava/lang/Object;I)V
    .registers 3

    .prologue
    .line 1679
    check-cast p1, [I

    invoke-virtual {p0, p1, p2}, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->copyInto([II)V

    return-void
.end method

.method public copyInto([II)V
    .registers 5
    .param p1, "array"    # [I
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 1681
    sget-boolean v0, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->-assertionsDisabled:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->building:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "during building"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1682
    :cond_11
    invoke-super {p0, p1, p2}, Ljava/util/stream/SpinedBuffer$OfInt;->copyInto(Ljava/lang/Object;I)V

    .line 1683
    return-void
.end method

.method public bridge synthetic copyInto([Ljava/lang/Object;I)V
    .registers 3

    .prologue
    .line 336
    check-cast p1, [Ljava/lang/Integer;

    invoke-interface {p0, p1, p2}, Ljava/util/stream/Node$OfInt;->copyInto([Ljava/lang/Integer;I)V

    return-void
.end method

.method public end()V
    .registers 3

    .prologue
    .line 1674
    sget-boolean v0, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->-assertionsDisabled:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->building:Z

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "was not building"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1675
    :cond_11
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->building:Z

    .line 1677
    return-void
.end method

.method public bridge synthetic forEach(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1651
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->forEach(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public forEach(Ljava/util/function/IntConsumer;)V
    .registers 4
    .param p1, "consumer"    # Ljava/util/function/IntConsumer;

    .prologue
    .line 1653
    sget-boolean v0, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->-assertionsDisabled:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->building:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "during building"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1654
    :cond_11
    invoke-super {p0, p1}, Ljava/util/stream/SpinedBuffer$OfInt;->forEach(Ljava/lang/Object;)V

    .line 1655
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
    .line 751
    invoke-virtual {p0, p1}, Ljava/util/stream/SpinedBuffer$OfInt;->newArray(I)[I

    move-result-object v0

    return-object v0
.end method

.method public spliterator()Ljava/util/Spliterator$OfInt;
    .registers 3

    .prologue
    .line 1647
    sget-boolean v0, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->-assertionsDisabled:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->building:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "during building"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1648
    :cond_11
    invoke-super {p0}, Ljava/util/stream/SpinedBuffer$OfInt;->spliterator()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .prologue
    .line 1645
    invoke-virtual {p0}, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->spliterator()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator;
    .registers 2

    .prologue
    .line 1645
    invoke-virtual {p0}, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->spliterator()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node$OfPrimitive;
    .registers 7

    .prologue
    .line 355
    invoke-interface/range {p0 .. p5}, Ljava/util/stream/Node$OfInt;->truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node;
    .registers 7

    .prologue
    .line 355
    invoke-interface/range {p0 .. p5}, Ljava/util/stream/Node$OfInt;->truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node$OfInt;

    move-result-object v0

    return-object v0
.end method
