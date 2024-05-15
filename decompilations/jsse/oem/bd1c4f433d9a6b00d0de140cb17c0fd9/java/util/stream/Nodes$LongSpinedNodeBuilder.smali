.class final Ljava/util/stream/Nodes$LongSpinedNodeBuilder;
.super Ljava/util/stream/SpinedBuffer$OfLong;
.source "Nodes.java"

# interfaces
.implements Ljava/util/stream/Node$OfLong;
.implements Ljava/util/stream/Node$Builder$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LongSpinedNodeBuilder"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private building:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->-assertionsDisabled:Z

    .line 1698
    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 1703
    invoke-direct {p0}, Ljava/util/stream/SpinedBuffer$OfLong;-><init>()V

    .line 1701
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->building:Z

    .line 1703
    return-void
.end method


# virtual methods
.method public accept(J)V
    .registers 6
    .param p1, "i"    # J

    .prologue
    .line 1728
    sget-boolean v0, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->-assertionsDisabled:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->building:Z

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "not building"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1729
    :cond_11
    invoke-super {p0, p1, p2}, Ljava/util/stream/SpinedBuffer$OfLong;->accept(J)V

    .line 1730
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 211
    check-cast p1, Ljava/lang/Long;

    invoke-interface {p0, p1}, Ljava/util/stream/Sink$OfLong;->accept(Ljava/lang/Long;)V

    return-void
.end method

.method public bridge synthetic asPrimitiveArray()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1745
    invoke-virtual {p0}, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->asPrimitiveArray()[J

    move-result-object v0

    return-object v0
.end method

.method public asPrimitiveArray()[J
    .registers 3

    .prologue
    .line 1747
    sget-boolean v0, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->-assertionsDisabled:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->building:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "during building"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1748
    :cond_11
    invoke-super {p0}, Ljava/util/stream/SpinedBuffer$OfLong;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public begin(J)V
    .registers 6
    .param p1, "size"    # J

    .prologue
    .line 1720
    sget-boolean v0, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->-assertionsDisabled:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->building:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "was already building"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1721
    :cond_11
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->building:Z

    .line 1722
    invoke-virtual {p0}, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->clear()V

    .line 1723
    invoke-virtual {p0, p1, p2}, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->ensureCapacity(J)V

    .line 1724
    return-void
.end method

.method public build()Ljava/util/stream/Node$OfLong;
    .registers 3

    .prologue
    .line 1753
    sget-boolean v0, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->-assertionsDisabled:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->building:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "during building"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1754
    :cond_11
    return-object p0
.end method

.method public bridge synthetic build()Ljava/util/stream/Node;
    .registers 2

    .prologue
    .line 1751
    invoke-virtual {p0}, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->build()Ljava/util/stream/Node$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copyInto(Ljava/lang/Object;I)V
    .registers 3

    .prologue
    .line 1739
    check-cast p1, [J

    invoke-virtual {p0, p1, p2}, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->copyInto([JI)V

    return-void
.end method

.method public copyInto([JI)V
    .registers 5
    .param p1, "array"    # [J
    .param p2, "offset"    # I

    .prologue
    .line 1741
    sget-boolean v0, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->-assertionsDisabled:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->building:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "during building"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1742
    :cond_11
    invoke-super {p0, p1, p2}, Ljava/util/stream/SpinedBuffer$OfLong;->copyInto(Ljava/lang/Object;I)V

    .line 1743
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

.method public end()V
    .registers 3

    .prologue
    .line 1734
    sget-boolean v0, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->-assertionsDisabled:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->building:Z

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "was not building"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1735
    :cond_11
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->building:Z

    .line 1737
    return-void
.end method

.method public bridge synthetic forEach(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1711
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->forEach(Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public forEach(Ljava/util/function/LongConsumer;)V
    .registers 4
    .param p1, "consumer"    # Ljava/util/function/LongConsumer;

    .prologue
    .line 1713
    sget-boolean v0, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->-assertionsDisabled:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->building:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "during building"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1714
    :cond_11
    invoke-super {p0, p1}, Ljava/util/stream/SpinedBuffer$OfLong;->forEach(Ljava/lang/Object;)V

    .line 1715
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
    .line 865
    invoke-virtual {p0, p1}, Ljava/util/stream/SpinedBuffer$OfLong;->newArray(I)[J

    move-result-object v0

    return-object v0
.end method

.method public spliterator()Ljava/util/Spliterator$OfLong;
    .registers 3

    .prologue
    .line 1707
    sget-boolean v0, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->-assertionsDisabled:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->building:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "during building"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1708
    :cond_11
    invoke-super {p0}, Ljava/util/stream/SpinedBuffer$OfLong;->spliterator()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .prologue
    .line 1705
    invoke-virtual {p0}, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->spliterator()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator;
    .registers 2

    .prologue
    .line 1705
    invoke-virtual {p0}, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->spliterator()Ljava/util/Spliterator$OfLong;

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
