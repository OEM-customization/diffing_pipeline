.class final Ljava/util/stream/Nodes$ConcNode;
.super Ljava/util/stream/Nodes$AbstractConcNode;
.source "Nodes.java"

# interfaces
.implements Ljava/util/stream/Node;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConcNode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/Nodes$ConcNode$OfDouble;,
        Ljava/util/stream/Nodes$ConcNode$OfInt;,
        Ljava/util/stream/Nodes$ConcNode$OfLong;,
        Ljava/util/stream/Nodes$ConcNode$OfPrimitive;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/Nodes$AbstractConcNode",
        "<TT;",
        "Ljava/util/stream/Node",
        "<TT;>;>;",
        "Ljava/util/stream/Node",
        "<TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/stream/Node;Ljava/util/stream/Node;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Node",
            "<TT;>;",
            "Ljava/util/stream/Node",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 783
    .local p0, "this":Ljava/util/stream/Nodes$ConcNode;, "Ljava/util/stream/Nodes$ConcNode<TT;>;"
    .local p1, "left":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    .local p2, "right":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/Nodes$AbstractConcNode;-><init>(Ljava/util/stream/Node;Ljava/util/stream/Node;)V

    .line 784
    return-void
.end method


# virtual methods
.method public asArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/IntFunction",
            "<[TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 802
    .local p0, "this":Ljava/util/stream/Nodes$ConcNode;, "Ljava/util/stream/Nodes$ConcNode<TT;>;"
    .local p1, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    invoke-virtual {p0}, Ljava/util/stream/Nodes$ConcNode;->count()J

    move-result-wide v2

    .line 803
    .local v2, "size":J
    const-wide/32 v4, 0x7ffffff7

    cmp-long v1, v2, v4

    if-ltz v1, :cond_14

    .line 804
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Stream size exceeds max array size"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 805
    :cond_14
    long-to-int v1, v2

    invoke-interface {p1, v1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 806
    .local v0, "array":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/stream/Nodes$ConcNode;->copyInto([Ljava/lang/Object;I)V

    .line 807
    return-object v0
.end method

.method public copyInto([Ljava/lang/Object;I)V
    .registers 7
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;I)V"
        }
    .end annotation

    .prologue
    .line 793
    .local p0, "this":Ljava/util/stream/Nodes$ConcNode;, "Ljava/util/stream/Nodes$ConcNode<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    iget-object v0, p0, Ljava/util/stream/Nodes$ConcNode;->left:Ljava/util/stream/Node;

    invoke-interface {v0, p1, p2}, Ljava/util/stream/Node;->copyInto([Ljava/lang/Object;I)V

    .line 797
    iget-object v0, p0, Ljava/util/stream/Nodes$ConcNode;->right:Ljava/util/stream/Node;

    iget-object v1, p0, Ljava/util/stream/Nodes$ConcNode;->left:Ljava/util/stream/Node;

    invoke-interface {v1}, Ljava/util/stream/Node;->count()J

    move-result-wide v2

    long-to-int v1, v2

    add-int/2addr v1, p2

    invoke-interface {v0, p1, v1}, Ljava/util/stream/Node;->copyInto([Ljava/lang/Object;I)V

    .line 798
    return-void
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 812
    .local p0, "this":Ljava/util/stream/Nodes$ConcNode;, "Ljava/util/stream/Nodes$ConcNode<TT;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    iget-object v0, p0, Ljava/util/stream/Nodes$ConcNode;->left:Ljava/util/stream/Node;

    invoke-interface {v0, p1}, Ljava/util/stream/Node;->forEach(Ljava/util/function/Consumer;)V

    .line 813
    iget-object v0, p0, Ljava/util/stream/Nodes$ConcNode;->right:Ljava/util/stream/Node;

    invoke-interface {v0, p1}, Ljava/util/stream/Node;->forEach(Ljava/util/function/Consumer;)V

    .line 814
    return-void
.end method

.method public spliterator()Ljava/util/Spliterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 788
    .local p0, "this":Ljava/util/stream/Nodes$ConcNode;, "Ljava/util/stream/Nodes$ConcNode<TT;>;"
    new-instance v0, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef;

    invoke-direct {v0, p0}, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef;-><init>(Ljava/util/stream/Node;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .local p0, "this":Ljava/util/stream/Nodes$ConcNode;, "Ljava/util/stream/Nodes$ConcNode<TT;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 833
    invoke-virtual {p0}, Ljava/util/stream/Nodes$ConcNode;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x20

    cmp-long v0, v0, v2

    if-gez v0, :cond_1f

    .line 834
    const-string/jumbo v0, "ConcNode[%s.%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Ljava/util/stream/Nodes$ConcNode;->left:Ljava/util/stream/Node;

    aput-object v2, v1, v4

    iget-object v2, p0, Ljava/util/stream/Nodes$ConcNode;->right:Ljava/util/stream/Node;

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 836
    :cond_1f
    const-string/jumbo v0, "ConcNode[size=%d]"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/util/stream/Nodes$ConcNode;->count()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node;
    .registers 19
    .param p1, "from"    # J
    .param p3, "to"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/function/IntFunction",
            "<[TT;>;)",
            "Ljava/util/stream/Node",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 818
    .local p0, "this":Ljava/util/stream/Nodes$ConcNode;, "Ljava/util/stream/Nodes$ConcNode<TT;>;"
    .local p5, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Ljava/util/stream/Nodes$ConcNode;->count()J

    move-result-wide v0

    cmp-long v0, p3, v0

    if-nez v0, :cond_f

    .line 819
    return-object p0

    .line 820
    :cond_f
    iget-object v0, p0, Ljava/util/stream/Nodes$ConcNode;->left:Ljava/util/stream/Node;

    invoke-interface {v0}, Ljava/util/stream/Node;->count()J

    move-result-wide v4

    .line 821
    .local v4, "leftCount":J
    cmp-long v0, p1, v4

    if-ltz v0, :cond_26

    .line 822
    iget-object v1, p0, Ljava/util/stream/Nodes$ConcNode;->right:Ljava/util/stream/Node;

    sub-long v2, p1, v4

    sub-long v4, p3, v4

    move-object/from16 v6, p5

    invoke-interface/range {v1 .. v6}, Ljava/util/stream/Node;->truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node;

    .end local v4    # "leftCount":J
    move-result-object v0

    return-object v0

    .line 823
    .restart local v4    # "leftCount":J
    :cond_26
    cmp-long v0, p3, v4

    if-gtz v0, :cond_36

    .line 824
    iget-object v1, p0, Ljava/util/stream/Nodes$ConcNode;->left:Ljava/util/stream/Node;

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    invoke-interface/range {v1 .. v6}, Ljava/util/stream/Node;->truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node;

    .end local v4    # "leftCount":J
    move-result-object v0

    return-object v0

    .line 826
    .restart local v4    # "leftCount":J
    :cond_36
    invoke-virtual {p0}, Ljava/util/stream/Nodes$ConcNode;->getShape()Ljava/util/stream/StreamShape;

    move-result-object v0

    iget-object v1, p0, Ljava/util/stream/Nodes$ConcNode;->left:Ljava/util/stream/Node;

    move-wide v2, p1

    move-object/from16 v6, p5

    invoke-interface/range {v1 .. v6}, Ljava/util/stream/Node;->truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node;

    move-result-object v1

    .line 827
    iget-object v7, p0, Ljava/util/stream/Nodes$ConcNode;->right:Ljava/util/stream/Node;

    const-wide/16 v8, 0x0

    sub-long v10, p3, v4

    move-object/from16 v12, p5

    invoke-interface/range {v7 .. v12}, Ljava/util/stream/Node;->truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node;

    move-result-object v2

    .line 826
    invoke-static {v0, v1, v2}, Ljava/util/stream/Nodes;->conc(Ljava/util/stream/StreamShape;Ljava/util/stream/Node;Ljava/util/stream/Node;)Ljava/util/stream/Node;

    move-result-object v0

    return-object v0
.end method
