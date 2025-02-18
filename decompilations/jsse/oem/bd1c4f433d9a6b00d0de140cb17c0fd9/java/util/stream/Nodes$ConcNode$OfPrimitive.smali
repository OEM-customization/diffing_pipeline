.class abstract Ljava/util/stream/Nodes$ConcNode$OfPrimitive;
.super Ljava/util/stream/Nodes$AbstractConcNode;
.source "Nodes.java"

# interfaces
.implements Ljava/util/stream/Node$OfPrimitive;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes$ConcNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "OfPrimitive"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        "T_CONS:",
        "Ljava/lang/Object;",
        "T_ARR:",
        "Ljava/lang/Object;",
        "T_SP",
        "LITR::Ljava/util/Spliterator$OfPrimitive",
        "<TE;TT_CONS;TT_SP",
        "LITR;",
        ">;T_NODE::",
        "Ljava/util/stream/Node$OfPrimitive",
        "<TE;TT_CONS;TT_ARR;TT_SP",
        "LITR;",
        "TT_NODE;>;>",
        "Ljava/util/stream/Nodes$AbstractConcNode",
        "<TE;TT_NODE;>;",
        "Ljava/util/stream/Node$OfPrimitive",
        "<TE;TT_CONS;TT_ARR;TT_SP",
        "LITR;",
        "TT_NODE;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/stream/Node$OfPrimitive;Ljava/util/stream/Node$OfPrimitive;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_NODE;TT_NODE;)V"
        }
    .end annotation

    .prologue
    .line 847
    .local p0, "this":Ljava/util/stream/Nodes$ConcNode$OfPrimitive;, "Ljava/util/stream/Nodes$ConcNode$OfPrimitive<TE;TT_CONS;TT_ARR;TT_SPLITR;TT_NODE;>;"
    .local p1, "left":Ljava/util/stream/Node$OfPrimitive;, "TT_NODE;"
    .local p2, "right":Ljava/util/stream/Node$OfPrimitive;, "TT_NODE;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/Nodes$AbstractConcNode;-><init>(Ljava/util/stream/Node;Ljava/util/stream/Node;)V

    .line 848
    return-void
.end method


# virtual methods
.method public asPrimitiveArray()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_ARR;"
        }
    .end annotation

    .prologue
    .line 866
    .local p0, "this":Ljava/util/stream/Nodes$ConcNode$OfPrimitive;, "Ljava/util/stream/Nodes$ConcNode$OfPrimitive<TE;TT_CONS;TT_ARR;TT_SPLITR;TT_NODE;>;"
    invoke-virtual {p0}, Ljava/util/stream/Nodes$ConcNode$OfPrimitive;->count()J

    move-result-wide v2

    .line 867
    .local v2, "size":J
    const-wide/32 v4, 0x7ffffff7

    cmp-long v1, v2, v4

    if-ltz v1, :cond_14

    .line 868
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Stream size exceeds max array size"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 869
    :cond_14
    long-to-int v1, v2

    invoke-virtual {p0, v1}, Ljava/util/stream/Nodes$ConcNode$OfPrimitive;->newArray(I)Ljava/lang/Object;

    move-result-object v0

    .line 870
    .local v0, "array":Ljava/lang/Object;, "TT_ARR;"
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/stream/Nodes$ConcNode$OfPrimitive;->copyInto(Ljava/lang/Object;I)V

    .line 871
    return-object v0
.end method

.method public copyInto(Ljava/lang/Object;I)V
    .registers 7
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_ARR;I)V"
        }
    .end annotation

    .prologue
    .line 858
    .local p0, "this":Ljava/util/stream/Nodes$ConcNode$OfPrimitive;, "Ljava/util/stream/Nodes$ConcNode$OfPrimitive<TE;TT_CONS;TT_ARR;TT_SPLITR;TT_NODE;>;"
    .local p1, "array":Ljava/lang/Object;, "TT_ARR;"
    iget-object v0, p0, Ljava/util/stream/Nodes$ConcNode$OfPrimitive;->left:Ljava/util/stream/Node;

    check-cast v0, Ljava/util/stream/Node$OfPrimitive;

    invoke-interface {v0, p1, p2}, Ljava/util/stream/Node$OfPrimitive;->copyInto(Ljava/lang/Object;I)V

    .line 861
    iget-object v0, p0, Ljava/util/stream/Nodes$ConcNode$OfPrimitive;->right:Ljava/util/stream/Node;

    check-cast v0, Ljava/util/stream/Node$OfPrimitive;

    iget-object v1, p0, Ljava/util/stream/Nodes$ConcNode$OfPrimitive;->left:Ljava/util/stream/Node;

    check-cast v1, Ljava/util/stream/Node$OfPrimitive;

    invoke-interface {v1}, Ljava/util/stream/Node$OfPrimitive;->count()J

    move-result-wide v2

    long-to-int v1, v2

    add-int/2addr v1, p2

    invoke-interface {v0, p1, v1}, Ljava/util/stream/Node$OfPrimitive;->copyInto(Ljava/lang/Object;I)V

    .line 862
    return-void
.end method

.method public forEach(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)V"
        }
    .end annotation

    .prologue
    .line 852
    .local p0, "this":Ljava/util/stream/Nodes$ConcNode$OfPrimitive;, "Ljava/util/stream/Nodes$ConcNode$OfPrimitive<TE;TT_CONS;TT_ARR;TT_SPLITR;TT_NODE;>;"
    .local p1, "consumer":Ljava/lang/Object;, "TT_CONS;"
    iget-object v0, p0, Ljava/util/stream/Nodes$ConcNode$OfPrimitive;->left:Ljava/util/stream/Node;

    check-cast v0, Ljava/util/stream/Node$OfPrimitive;

    invoke-interface {v0, p1}, Ljava/util/stream/Node$OfPrimitive;->forEach(Ljava/lang/Object;)V

    .line 853
    iget-object v0, p0, Ljava/util/stream/Nodes$ConcNode$OfPrimitive;->right:Ljava/util/stream/Node;

    check-cast v0, Ljava/util/stream/Node$OfPrimitive;

    invoke-interface {v0, p1}, Ljava/util/stream/Node$OfPrimitive;->forEach(Ljava/lang/Object;)V

    .line 854
    return-void
.end method

.method public bridge synthetic getChild(I)Ljava/util/stream/Node$OfPrimitive;
    .registers 3

    .prologue
    .line 765
    .local p0, "this":Ljava/util/stream/Nodes$ConcNode$OfPrimitive;, "Ljava/util/stream/Nodes$ConcNode$OfPrimitive<TE;TT_CONS;TT_ARR;TT_SPLITR;TT_NODE;>;"
    invoke-virtual {p0, p1}, Ljava/util/stream/Nodes$AbstractConcNode;->getChild(I)Ljava/util/stream/Node;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Node$OfPrimitive;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .prologue
    .local p0, "this":Ljava/util/stream/Nodes$ConcNode$OfPrimitive;, "Ljava/util/stream/Nodes$ConcNode$OfPrimitive<TE;TT_CONS;TT_ARR;TT_SPLITR;TT_NODE;>;"
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 876
    invoke-virtual {p0}, Ljava/util/stream/Nodes$ConcNode$OfPrimitive;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x20

    cmp-long v0, v0, v2

    if-gez v0, :cond_2a

    .line 877
    const-string/jumbo v0, "%s[%s.%s]"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/util/stream/Nodes$ConcNode$OfPrimitive;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Ljava/util/stream/Nodes$ConcNode$OfPrimitive;->left:Ljava/util/stream/Node;

    aput-object v2, v1, v5

    iget-object v2, p0, Ljava/util/stream/Nodes$ConcNode$OfPrimitive;->right:Ljava/util/stream/Node;

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 879
    :cond_2a
    const-string/jumbo v0, "%s[size=%d]"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/util/stream/Nodes$ConcNode$OfPrimitive;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0}, Ljava/util/stream/Nodes$ConcNode$OfPrimitive;->count()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
