.class abstract Ljava/util/stream/Nodes$InternalNodeSpliterator;
.super Ljava/lang/Object;
.source "Nodes.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "InternalNodeSpliterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/Nodes$InternalNodeSpliterator$OfDouble;,
        Ljava/util/stream/Nodes$InternalNodeSpliterator$OfLong;,
        Ljava/util/stream/Nodes$InternalNodeSpliterator$OfInt;,
        Ljava/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;,
        Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S::",
        "Ljava/util/Spliterator<",
        "TT;>;N::",
        "Ljava/util/stream/Node<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field blacklist curChildIndex:I

.field blacklist curNode:Ljava/util/stream/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation
.end field

.field blacklist lastNodeSpliterator:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field blacklist tryAdvanceSpliterator:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field blacklist tryAdvanceStack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "TN;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/Node;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    .line 951
    .local p0, "this":Ljava/util/stream/Nodes$InternalNodeSpliterator;, "Ljava/util/stream/Nodes$InternalNodeSpliterator<TT;TS;TN;>;"
    .local p1, "curNode":Ljava/util/stream/Node;, "TN;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 952
    iput-object p1, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    .line 953
    return-void
.end method


# virtual methods
.method public final whitelist test-api characteristics()I
    .registers 2

    .line 1055
    .local p0, "this":Ljava/util/stream/Nodes$InternalNodeSpliterator;, "Ljava/util/stream/Nodes$InternalNodeSpliterator<TT;TS;TN;>;"
    const/16 v0, 0x40

    return v0
.end method

.method public final whitelist test-api estimateSize()J
    .registers 6

    .line 1038
    .local p0, "this":Ljava/util/stream/Nodes$InternalNodeSpliterator;, "Ljava/util/stream/Nodes$InternalNodeSpliterator<TT;TS;TN;>;"
    iget-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    if-nez v0, :cond_7

    .line 1039
    const-wide/16 v0, 0x0

    return-wide v0

    .line 1043
    :cond_7
    iget-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->lastNodeSpliterator:Ljava/util/Spliterator;

    if-eqz v0, :cond_10

    .line 1044
    invoke-interface {v0}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v0

    return-wide v0

    .line 1046
    :cond_10
    const-wide/16 v0, 0x0

    .line 1047
    .local v0, "size":J
    iget v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    .local v2, "i":I
    :goto_14
    iget-object v3, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    invoke-interface {v3}, Ljava/util/stream/Node;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2a

    .line 1048
    iget-object v3, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    invoke-interface {v3, v2}, Ljava/util/stream/Node;->getChild(I)Ljava/util/stream/Node;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/stream/Node;->count()J

    move-result-wide v3

    add-long/2addr v0, v3

    .line 1047
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 1049
    .end local v2    # "i":I
    :cond_2a
    return-wide v0
.end method

.method protected final blacklist findNextLeafNode(Ljava/util/Deque;)Ljava/util/stream/Node;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque<",
            "TN;>;)TN;"
        }
    .end annotation

    .line 975
    .local p0, "this":Ljava/util/stream/Nodes$InternalNodeSpliterator;, "Ljava/util/stream/Nodes$InternalNodeSpliterator<TT;TS;TN;>;"
    .local p1, "stack":Ljava/util/Deque;, "Ljava/util/Deque<TN;>;"
    const/4 v0, 0x0

    .line 976
    .local v0, "n":Ljava/util/stream/Node;, "TN;"
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/stream/Node;

    move-object v0, v1

    if-eqz v1, :cond_2e

    .line 977
    invoke-interface {v0}, Ljava/util/stream/Node;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1b

    .line 978
    invoke-interface {v0}, Ljava/util/stream/Node;->count()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 979
    return-object v0

    .line 981
    :cond_1b
    invoke-interface {v0}, Ljava/util/stream/Node;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_21
    if-ltz v1, :cond_2d

    .line 982
    invoke-interface {v0, v1}, Ljava/util/stream/Node;->getChild(I)Ljava/util/stream/Node;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 981
    add-int/lit8 v1, v1, -0x1

    goto :goto_21

    .end local v1    # "i":I
    :cond_2d
    goto :goto_1

    .line 986
    :cond_2e
    const/4 v1, 0x0

    return-object v1
.end method

.method protected final blacklist initStack()Ljava/util/Deque;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Deque<",
            "TN;>;"
        }
    .end annotation

    .line 963
    .local p0, "this":Ljava/util/stream/Nodes$InternalNodeSpliterator;, "Ljava/util/stream/Nodes$InternalNodeSpliterator<TT;TS;TN;>;"
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 964
    .local v0, "stack":Ljava/util/Deque;, "Ljava/util/Deque<TN;>;"
    iget-object v1, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    invoke-interface {v1}, Ljava/util/stream/Node;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_f
    iget v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    if-lt v1, v2, :cond_1f

    .line 965
    iget-object v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    invoke-interface {v2, v1}, Ljava/util/stream/Node;->getChild(I)Ljava/util/stream/Node;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 964
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .line 966
    .end local v1    # "i":I
    :cond_1f
    return-object v0
.end method

.method protected final blacklist initTryAdvance()Z
    .registers 4

    .line 991
    .local p0, "this":Ljava/util/stream/Nodes$InternalNodeSpliterator;, "Ljava/util/stream/Nodes$InternalNodeSpliterator<TT;TS;TN;>;"
    iget-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 992
    return v1

    .line 994
    :cond_6
    iget-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceSpliterator:Ljava/util/Spliterator;

    if-nez v0, :cond_27

    .line 995
    iget-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->lastNodeSpliterator:Ljava/util/Spliterator;

    if-nez v0, :cond_25

    .line 997
    invoke-virtual {p0}, Ljava/util/stream/Nodes$InternalNodeSpliterator;->initStack()Ljava/util/Deque;

    move-result-object v0

    iput-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceStack:Ljava/util/Deque;

    .line 998
    invoke-virtual {p0, v0}, Ljava/util/stream/Nodes$InternalNodeSpliterator;->findNextLeafNode(Ljava/util/Deque;)Ljava/util/stream/Node;

    move-result-object v0

    .line 999
    .local v0, "leaf":Ljava/util/stream/Node;, "TN;"
    if-eqz v0, :cond_21

    .line 1000
    invoke-interface {v0}, Ljava/util/stream/Node;->spliterator()Ljava/util/Spliterator;

    move-result-object v1

    iput-object v1, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceSpliterator:Ljava/util/Spliterator;

    .line 1007
    .end local v0    # "leaf":Ljava/util/stream/Node;, "TN;"
    goto :goto_27

    .line 1004
    .restart local v0    # "leaf":Ljava/util/stream/Node;, "TN;"
    :cond_21
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    .line 1005
    return v1

    .line 1009
    .end local v0    # "leaf":Ljava/util/stream/Node;, "TN;"
    :cond_25
    iput-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceSpliterator:Ljava/util/Spliterator;

    .line 1011
    :cond_27
    :goto_27
    const/4 v0, 0x1

    return v0
.end method

.method public final whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 1017
    .local p0, "this":Ljava/util/stream/Nodes$InternalNodeSpliterator;, "Ljava/util/stream/Nodes$InternalNodeSpliterator<TT;TS;TN;>;"
    iget-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    if-eqz v0, :cond_5c

    iget-object v1, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceSpliterator:Ljava/util/Spliterator;

    if-eqz v1, :cond_9

    goto :goto_5c

    .line 1019
    :cond_9
    iget-object v1, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->lastNodeSpliterator:Ljava/util/Spliterator;

    if-eqz v1, :cond_12

    .line 1020
    invoke-interface {v1}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0

    .line 1021
    :cond_12
    iget v1, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    invoke-interface {v0}, Ljava/util/stream/Node;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_2d

    .line 1022
    iget-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    iget v1, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    invoke-interface {v0, v1}, Ljava/util/stream/Node;->getChild(I)Ljava/util/stream/Node;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Node;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0

    .line 1024
    :cond_2d
    iget-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    iget v1, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    invoke-interface {v0, v1}, Ljava/util/stream/Node;->getChild(I)Ljava/util/stream/Node;

    move-result-object v0

    iput-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    .line 1025
    invoke-interface {v0}, Ljava/util/stream/Node;->getChildCount()I

    move-result v0

    if-nez v0, :cond_4a

    .line 1026
    iget-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    invoke-interface {v0}, Ljava/util/stream/Node;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    iput-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->lastNodeSpliterator:Ljava/util/Spliterator;

    .line 1027
    invoke-interface {v0}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0

    .line 1030
    :cond_4a
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    .line 1031
    iget-object v1, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    invoke-interface {v1, v0}, Ljava/util/stream/Node;->getChild(I)Ljava/util/stream/Node;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Node;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0

    .line 1018
    :cond_5c
    :goto_5c
    const/4 v0, 0x0

    return-object v0
.end method
