.class final Ljava/util/stream/Nodes$IntFixedNodeBuilder;
.super Ljava/util/stream/Nodes$IntArrayNode;
.source "Nodes.java"

# interfaces
.implements Ljava/util/stream/Node$Builder$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IntFixedNodeBuilder"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1476
    const-class v0, Ljava/util/stream/Nodes;

    return-void
.end method

.method constructor blacklist <init>(J)V
    .registers 3
    .param p1, "size"    # J

    .line 1481
    invoke-direct {p0, p1, p2}, Ljava/util/stream/Nodes$IntArrayNode;-><init>(J)V

    .line 1482
    nop

    .line 1483
    return-void
.end method


# virtual methods
.method public whitelist test-api accept(I)V
    .registers 6
    .param p1, "i"    # I

    .line 1507
    iget v0, p0, Ljava/util/stream/Nodes$IntFixedNodeBuilder;->curSize:I

    iget-object v1, p0, Ljava/util/stream/Nodes$IntFixedNodeBuilder;->array:[I

    array-length v1, v1

    if-ge v0, v1, :cond_12

    .line 1508
    iget-object v0, p0, Ljava/util/stream/Nodes$IntFixedNodeBuilder;->array:[I

    iget v1, p0, Ljava/util/stream/Nodes$IntFixedNodeBuilder;->curSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/stream/Nodes$IntFixedNodeBuilder;->curSize:I

    aput p1, v0, v1

    .line 1513
    return-void

    .line 1510
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Ljava/util/stream/Nodes$IntFixedNodeBuilder;->array:[I

    array-length v3, v3

    .line 1511
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1510
    const-string v2, "Accept exceeded fixed size of %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist begin(J)V
    .registers 7
    .param p1, "size"    # J

    .line 1497
    iget-object v0, p0, Ljava/util/stream/Nodes$IntFixedNodeBuilder;->array:[I

    array-length v0, v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 1502
    iput v1, p0, Ljava/util/stream/Nodes$IntFixedNodeBuilder;->curSize:I

    .line 1503
    return-void

    .line 1498
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 1499
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x1

    iget-object v3, p0, Ljava/util/stream/Nodes$IntFixedNodeBuilder;->array:[I

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    .line 1498
    const-string v1, "Begin size %d is not equal to fixed size %d"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist build()Ljava/util/stream/Node$OfInt;
    .registers 5

    .line 1487
    iget v0, p0, Ljava/util/stream/Nodes$IntFixedNodeBuilder;->curSize:I

    iget-object v1, p0, Ljava/util/stream/Nodes$IntFixedNodeBuilder;->array:[I

    array-length v1, v1

    if-lt v0, v1, :cond_8

    .line 1492
    return-object p0

    .line 1488
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Ljava/util/stream/Nodes$IntFixedNodeBuilder;->curSize:I

    .line 1489
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Ljava/util/stream/Nodes$IntFixedNodeBuilder;->array:[I

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1488
    const-string v2, "Current size %d is less than fixed size %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic blacklist build()Ljava/util/stream/Node;
    .registers 2

    .line 1476
    invoke-virtual {p0}, Ljava/util/stream/Nodes$IntFixedNodeBuilder;->build()Ljava/util/stream/Node$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public blacklist end()V
    .registers 5

    .line 1517
    iget v0, p0, Ljava/util/stream/Nodes$IntFixedNodeBuilder;->curSize:I

    iget-object v1, p0, Ljava/util/stream/Nodes$IntFixedNodeBuilder;->array:[I

    array-length v1, v1

    if-lt v0, v1, :cond_8

    .line 1521
    return-void

    .line 1518
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Ljava/util/stream/Nodes$IntFixedNodeBuilder;->curSize:I

    .line 1519
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Ljava/util/stream/Nodes$IntFixedNodeBuilder;->array:[I

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1518
    const-string v2, "End size %d is less than fixed size %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 1525
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Ljava/util/stream/Nodes$IntFixedNodeBuilder;->array:[I

    array-length v1, v1

    iget v2, p0, Ljava/util/stream/Nodes$IntFixedNodeBuilder;->curSize:I

    sub-int/2addr v1, v2

    .line 1526
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Ljava/util/stream/Nodes$IntFixedNodeBuilder;->array:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 1525
    const-string v1, "IntFixedNodeBuilder[%d][%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
