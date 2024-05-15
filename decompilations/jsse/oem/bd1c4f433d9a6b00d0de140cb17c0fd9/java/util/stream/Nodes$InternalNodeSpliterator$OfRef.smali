.class final Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef;
.super Ljava/util/stream/Nodes$InternalNodeSpliterator;
.source "Nodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes$InternalNodeSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/Nodes$InternalNodeSpliterator",
        "<TT;",
        "Ljava/util/Spliterator",
        "<TT;>;",
        "Ljava/util/stream/Node",
        "<TT;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/stream/Node;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Node",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1062
    .local p0, "this":Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef;, "Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef<TT;>;"
    .local p1, "curNode":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    invoke-direct {p0, p1}, Ljava/util/stream/Nodes$InternalNodeSpliterator;-><init>(Ljava/util/stream/Node;)V

    .line 1063
    return-void
.end method


# virtual methods
.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef;, "Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef<TT;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    const/4 v3, 0x0

    .line 1089
    iget-object v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef;->curNode:Ljava/util/stream/Node;

    if-nez v2, :cond_6

    .line 1090
    return-void

    .line 1092
    :cond_6
    iget-object v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef;->tryAdvanceSpliterator:Ljava/util/Spliterator;

    if-nez v2, :cond_25

    .line 1093
    iget-object v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef;->lastNodeSpliterator:Ljava/util/Spliterator;

    if-nez v2, :cond_1f

    .line 1094
    invoke-virtual {p0}, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef;->initStack()Ljava/util/Deque;

    move-result-object v1

    .line 1096
    .local v1, "stack":Ljava/util/Deque;, "Ljava/util/Deque<Ljava/util/stream/Node<TT;>;>;"
    :goto_12
    invoke-virtual {p0, v1}, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef;->findNextLeafNode(Ljava/util/Deque;)Ljava/util/stream/Node;

    move-result-object v0

    .local v0, "leaf":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    if-eqz v0, :cond_1c

    .line 1097
    invoke-interface {v0, p1}, Ljava/util/stream/Node;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_12

    .line 1099
    :cond_1c
    iput-object v3, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef;->curNode:Ljava/util/stream/Node;

    .line 1106
    .end local v0    # "leaf":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    .end local v1    # "stack":Ljava/util/Deque;, "Ljava/util/Deque<Ljava/util/stream/Node<TT;>;>;"
    :cond_1e
    :goto_1e
    return-void

    .line 1102
    :cond_1f
    iget-object v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef;->lastNodeSpliterator:Ljava/util/Spliterator;

    invoke-interface {v2, p1}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    goto :goto_1e

    .line 1105
    :cond_25
    :goto_25
    invoke-virtual {p0, p1}, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v2

    if-eqz v2, :cond_1e

    goto :goto_25
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef;, "Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef<TT;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    const/4 v3, 0x0

    .line 1067
    invoke-virtual {p0}, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef;->initTryAdvance()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1068
    const/4 v2, 0x0

    return v2

    .line 1070
    :cond_9
    iget-object v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef;->tryAdvanceSpliterator:Ljava/util/Spliterator;

    invoke-interface {v2, p1}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    .line 1071
    .local v0, "hasNext":Z
    if-nez v0, :cond_2c

    .line 1072
    iget-object v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef;->lastNodeSpliterator:Ljava/util/Spliterator;

    if-nez v2, :cond_2a

    .line 1074
    iget-object v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef;->tryAdvanceStack:Ljava/util/Deque;

    invoke-virtual {p0, v2}, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef;->findNextLeafNode(Ljava/util/Deque;)Ljava/util/stream/Node;

    move-result-object v1

    .line 1075
    .local v1, "leaf":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    if-eqz v1, :cond_2a

    .line 1076
    invoke-interface {v1}, Ljava/util/stream/Node;->spliterator()Ljava/util/Spliterator;

    move-result-object v2

    iput-object v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef;->tryAdvanceSpliterator:Ljava/util/Spliterator;

    .line 1078
    iget-object v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef;->tryAdvanceSpliterator:Ljava/util/Spliterator;

    invoke-interface {v2, p1}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v2

    return v2

    .line 1082
    .end local v1    # "leaf":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    :cond_2a
    iput-object v3, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef;->curNode:Ljava/util/stream/Node;

    .line 1084
    :cond_2c
    return v0
.end method
