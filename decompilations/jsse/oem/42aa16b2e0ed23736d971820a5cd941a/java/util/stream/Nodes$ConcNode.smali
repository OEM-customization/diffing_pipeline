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
        Ljava/util/stream/Nodes$ConcNode$OfLong;,
        Ljava/util/stream/Nodes$ConcNode$OfInt;,
        Ljava/util/stream/Nodes$ConcNode$OfPrimitive;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/Nodes$AbstractConcNode<",
        "TT;",
        "Ljava/util/stream/Node<",
        "TT;>;>;",
        "Ljava/util/stream/Node<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/Node;Ljava/util/stream/Node;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Node<",
            "TT;>;",
            "Ljava/util/stream/Node<",
            "TT;>;)V"
        }
    .end annotation

    .line 783
    .local p0, "this":Ljava/util/stream/Nodes$ConcNode;, "Ljava/util/stream/Nodes$ConcNode<TT;>;"
    .local p1, "left":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    .local p2, "right":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/Nodes$AbstractConcNode;-><init>(Ljava/util/stream/Node;Ljava/util/stream/Node;)V

    .line 784
    return-void
.end method


# virtual methods
.method public blacklist asArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/IntFunction<",
            "[TT;>;)[TT;"
        }
    .end annotation

    .line 802
    .local p0, "this":Ljava/util/stream/Nodes$ConcNode;, "Ljava/util/stream/Nodes$ConcNode<TT;>;"
    .local p1, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    invoke-virtual {p0}, Ljava/util/stream/Nodes$ConcNode;->count()J

    move-result-wide v0

    .line 803
    .local v0, "size":J
    const-wide/32 v2, 0x7ffffff7

    cmp-long v2, v0, v2

    if-gez v2, :cond_17

    .line 805
    long-to-int v2, v0

    invoke-interface {p1, v2}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 806
    .local v2, "array":[Ljava/lang/Object;, "[TT;"
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Ljava/util/stream/Nodes$ConcNode;->copyInto([Ljava/lang/Object;I)V

    .line 807
    return-object v2

    .line 804
    .end local v2    # "array":[Ljava/lang/Object;, "[TT;"
    :cond_17
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Stream size exceeds max array size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public blacklist copyInto([Ljava/lang/Object;I)V
    .registers 6
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;I)V"
        }
    .end annotation

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

    move-result-wide v1

    long-to-int v1, v1

    add-int/2addr v1, p2

    invoke-interface {v0, p1, v1}, Ljava/util/stream/Node;->copyInto([Ljava/lang/Object;I)V

    .line 798
    return-void
.end method

.method public blacklist forEach(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

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

.method public blacklist spliterator()Ljava/util/Spliterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 788
    .local p0, "this":Ljava/util/stream/Nodes$ConcNode;, "Ljava/util/stream/Nodes$ConcNode<TT;>;"
    new-instance v0, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef;

    invoke-direct {v0, p0}, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef;-><init>(Ljava/util/stream/Node;)V

    return-object v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 5

    .line 833
    .local p0, "this":Ljava/util/stream/Nodes$ConcNode;, "Ljava/util/stream/Nodes$ConcNode<TT;>;"
    invoke-virtual {p0}, Ljava/util/stream/Nodes$ConcNode;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x20

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_1e

    .line 834
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Ljava/util/stream/Nodes$ConcNode;->left:Ljava/util/stream/Node;

    aput-object v3, v0, v1

    iget-object v1, p0, Ljava/util/stream/Nodes$ConcNode;->right:Ljava/util/stream/Node;

    aput-object v1, v0, v2

    const-string v1, "ConcNode[%s.%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 836
    :cond_1e
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/util/stream/Nodes$ConcNode;->count()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "ConcNode[size=%d]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node;
    .registers 22
    .param p1, "from"    # J
    .param p3, "to"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/function/IntFunction<",
            "[TT;>;)",
            "Ljava/util/stream/Node<",
            "TT;>;"
        }
    .end annotation

    .line 818
    .local p0, "this":Ljava/util/stream/Nodes$ConcNode;, "Ljava/util/stream/Nodes$ConcNode<TT;>;"
    .local p5, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_11

    invoke-virtual/range {p0 .. p0}, Ljava/util/stream/Nodes$ConcNode;->count()J

    move-result-wide v1

    cmp-long v1, p3, v1

    if-nez v1, :cond_11

    .line 819
    return-object v0

    .line 820
    :cond_11
    iget-object v1, v0, Ljava/util/stream/Nodes$ConcNode;->left:Ljava/util/stream/Node;

    invoke-interface {v1}, Ljava/util/stream/Node;->count()J

    move-result-wide v7

    .line 821
    .local v7, "leftCount":J
    cmp-long v1, p1, v7

    if-ltz v1, :cond_28

    .line 822
    iget-object v9, v0, Ljava/util/stream/Nodes$ConcNode;->right:Ljava/util/stream/Node;

    sub-long v10, p1, v7

    sub-long v12, p3, v7

    move-object/from16 v14, p5

    invoke-interface/range {v9 .. v14}, Ljava/util/stream/Node;->truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node;

    move-result-object v1

    return-object v1

    .line 823
    :cond_28
    cmp-long v1, p3, v7

    if-gtz v1, :cond_39

    .line 824
    iget-object v1, v0, Ljava/util/stream/Nodes$ConcNode;->left:Ljava/util/stream/Node;

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    invoke-interface/range {v1 .. v6}, Ljava/util/stream/Node;->truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node;

    move-result-object v1

    return-object v1

    .line 826
    :cond_39
    invoke-virtual/range {p0 .. p0}, Ljava/util/stream/Nodes$ConcNode;->getShape()Ljava/util/stream/StreamShape;

    move-result-object v9

    iget-object v1, v0, Ljava/util/stream/Nodes$ConcNode;->left:Ljava/util/stream/Node;

    move-wide/from16 v2, p1

    move-wide v4, v7

    move-object/from16 v6, p5

    invoke-interface/range {v1 .. v6}, Ljava/util/stream/Node;->truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node;

    move-result-object v1

    iget-object v10, v0, Ljava/util/stream/Nodes$ConcNode;->right:Ljava/util/stream/Node;

    const-wide/16 v11, 0x0

    sub-long v13, p3, v7

    .line 827
    move-object/from16 v15, p5

    invoke-interface/range {v10 .. v15}, Ljava/util/stream/Node;->truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node;

    move-result-object v2

    .line 826
    invoke-static {v9, v1, v2}, Ljava/util/stream/Nodes;->conc(Ljava/util/stream/StreamShape;Ljava/util/stream/Node;Ljava/util/stream/Node;)Ljava/util/stream/Node;

    move-result-object v1

    return-object v1
.end method
