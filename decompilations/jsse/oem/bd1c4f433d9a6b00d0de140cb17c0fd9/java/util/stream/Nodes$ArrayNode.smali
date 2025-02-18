.class Ljava/util/stream/Nodes$ArrayNode;
.super Ljava/lang/Object;
.source "Nodes.java"

# interfaces
.implements Ljava/util/stream/Node;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArrayNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/stream/Node",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field curSize:I


# direct methods
.method constructor <init>(JLjava/util/function/IntFunction;)V
    .registers 7
    .param p1, "size"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/IntFunction",
            "<[TT;>;)V"
        }
    .end annotation

    .prologue
    .line 643
    .local p0, "this":Ljava/util/stream/Nodes$ArrayNode;, "Ljava/util/stream/Nodes$ArrayNode<TT;>;"
    .local p3, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 644
    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p1, v0

    if-ltz v0, :cond_13

    .line 645
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Stream size exceeds max array size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 646
    :cond_13
    long-to-int v0, p1

    invoke-interface {p3, v0}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/stream/Nodes$ArrayNode;->array:[Ljava/lang/Object;

    .line 647
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/stream/Nodes$ArrayNode;->curSize:I

    .line 648
    return-void
.end method

.method constructor <init>([Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 650
    .local p0, "this":Ljava/util/stream/Nodes$ArrayNode;, "Ljava/util/stream/Nodes$ArrayNode<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 651
    iput-object p1, p0, Ljava/util/stream/Nodes$ArrayNode;->array:[Ljava/lang/Object;

    .line 652
    array-length v0, p1

    iput v0, p0, Ljava/util/stream/Nodes$ArrayNode;->curSize:I

    .line 653
    return-void
.end method


# virtual methods
.method public asArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/IntFunction",
            "<[TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 669
    .local p0, "this":Ljava/util/stream/Nodes$ArrayNode;, "Ljava/util/stream/Nodes$ArrayNode<TT;>;"
    .local p1, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    iget-object v0, p0, Ljava/util/stream/Nodes$ArrayNode;->array:[Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Ljava/util/stream/Nodes$ArrayNode;->curSize:I

    if-ne v0, v1, :cond_a

    .line 670
    iget-object v0, p0, Ljava/util/stream/Nodes$ArrayNode;->array:[Ljava/lang/Object;

    return-object v0

    .line 672
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public copyInto([Ljava/lang/Object;I)V
    .registers 6
    .param p2, "destOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;I)V"
        }
    .end annotation

    .prologue
    .line 664
    .local p0, "this":Ljava/util/stream/Nodes$ArrayNode;, "Ljava/util/stream/Nodes$ArrayNode<TT;>;"
    .local p1, "dest":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Ljava/util/stream/Nodes$ArrayNode;->array:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/stream/Nodes$ArrayNode;->curSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 665
    return-void
.end method

.method public count()J
    .registers 3

    .prologue
    .line 678
    .local p0, "this":Ljava/util/stream/Nodes$ArrayNode;, "Ljava/util/stream/Nodes$ArrayNode<TT;>;"
    iget v0, p0, Ljava/util/stream/Nodes$ArrayNode;->curSize:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 683
    .local p0, "this":Ljava/util/stream/Nodes$ArrayNode;, "Ljava/util/stream/Nodes$ArrayNode<TT;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Ljava/util/stream/Nodes$ArrayNode;->curSize:I

    if-ge v0, v1, :cond_f

    .line 684
    iget-object v1, p0, Ljava/util/stream/Nodes$ArrayNode;->array:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 683
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 686
    :cond_f
    return-void
.end method

.method public spliterator()Ljava/util/Spliterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 659
    .local p0, "this":Ljava/util/stream/Nodes$ArrayNode;, "Ljava/util/stream/Nodes$ArrayNode<TT;>;"
    iget-object v0, p0, Ljava/util/stream/Nodes$ArrayNode;->array:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/stream/Nodes$ArrayNode;->curSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->spliterator([Ljava/lang/Object;II)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 692
    .local p0, "this":Ljava/util/stream/Nodes$ArrayNode;, "Ljava/util/stream/Nodes$ArrayNode<TT;>;"
    const-string/jumbo v0, "ArrayNode[%d][%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 693
    iget-object v2, p0, Ljava/util/stream/Nodes$ArrayNode;->array:[Ljava/lang/Object;

    array-length v2, v2

    iget v3, p0, Ljava/util/stream/Nodes$ArrayNode;->curSize:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Ljava/util/stream/Nodes$ArrayNode;->array:[Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 692
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
