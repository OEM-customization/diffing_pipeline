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
        Ljava/util/stream/Nodes$InternalNodeSpliterator$OfInt;,
        Ljava/util/stream/Nodes$InternalNodeSpliterator$OfLong;,
        Ljava/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;,
        Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S::",
        "Ljava/util/Spliterator",
        "<TT;>;N::",
        "Ljava/util/stream/Node",
        "<TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field curChildIndex:I

.field curNode:Ljava/util/stream/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation
.end field

.field lastNodeSpliterator:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field tryAdvanceSpliterator:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field tryAdvanceStack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<TN;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/stream/Node;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    .prologue
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
.method public final characteristics()I
    .registers 2

    .prologue
    .line 1055
    .local p0, "this":Ljava/util/stream/Nodes$InternalNodeSpliterator;, "Ljava/util/stream/Nodes$InternalNodeSpliterator<TT;TS;TN;>;"
    const/16 v0, 0x40

    return v0
.end method

.method public final estimateSize()J
    .registers 7

    .prologue
    .line 1038
    .local p0, "this":Ljava/util/stream/Nodes$InternalNodeSpliterator;, "Ljava/util/stream/Nodes$InternalNodeSpliterator<TT;TS;TN;>;"
    iget-object v1, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    if-nez v1, :cond_7

    .line 1039
    const-wide/16 v4, 0x0

    return-wide v4

    .line 1043
    :cond_7
    iget-object v1, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->lastNodeSpliterator:Ljava/util/Spliterator;

    if-eqz v1, :cond_12

    .line 1044
    iget-object v1, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->lastNodeSpliterator:Ljava/util/Spliterator;

    invoke-interface {v1}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v4

    return-wide v4

    .line 1046
    :cond_12
    const-wide/16 v2, 0x0

    .line 1047
    .local v2, "size":J
    iget v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    .local v0, "i":I
    :goto_16
    iget-object v1, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    invoke-interface {v1}, Ljava/util/stream/Node;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2c

    .line 1048
    iget-object v1, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    invoke-interface {v1, v0}, Ljava/util/stream/Node;->getChild(I)Ljava/util/stream/Node;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Node;->count()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 1047
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 1049
    :cond_2c
    return-wide v2
.end method

.method protected final findNextLeafNode(Ljava/util/Deque;)Ljava/util/stream/Node;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque",
            "<TN;>;)TN;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/stream/Nodes$InternalNodeSpliterator;, "Ljava/util/stream/Nodes$InternalNodeSpliterator<TT;TS;TN;>;"
    .local p1, "stack":Ljava/util/Deque;, "Ljava/util/Deque<TN;>;"
    const/4 v6, 0x0

    .line 975
    const/4 v1, 0x0

    .line 976
    :cond_2
    invoke-interface {p1}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/stream/Node;

    .local v1, "n":Ljava/util/stream/Node;, "TN;"
    if-eqz v1, :cond_2d

    .line 977
    invoke-interface {v1}, Ljava/util/stream/Node;->getChildCount()I

    move-result v2

    if-nez v2, :cond_1b

    .line 978
    invoke-interface {v1}, Ljava/util/stream/Node;->count()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 979
    return-object v1

    .line 981
    :cond_1b
    invoke-interface {v1}, Ljava/util/stream/Node;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_21
    if-ltz v0, :cond_2

    .line 982
    invoke-interface {v1, v0}, Ljava/util/stream/Node;->getChild(I)Ljava/util/stream/Node;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 981
    add-int/lit8 v0, v0, -0x1

    goto :goto_21

    .line 986
    .end local v0    # "i":I
    :cond_2d
    return-object v6
.end method

.method protected final initStack()Ljava/util/Deque;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Deque",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 963
    .local p0, "this":Ljava/util/stream/Nodes$InternalNodeSpliterator;, "Ljava/util/stream/Nodes$InternalNodeSpliterator<TT;TS;TN;>;"
    new-instance v1, Ljava/util/ArrayDeque;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 964
    .local v1, "stack":Ljava/util/Deque;, "Ljava/util/Deque<TN;>;"
    iget-object v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    invoke-interface {v2}, Ljava/util/stream/Node;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_f
    iget v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    if-lt v0, v2, :cond_1f

    .line 965
    iget-object v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    invoke-interface {v2, v0}, Ljava/util/stream/Node;->getChild(I)Ljava/util/stream/Node;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 964
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    .line 966
    :cond_1f
    return-object v1
.end method

.method protected final initTryAdvance()Z
    .registers 5

    .prologue
    .local p0, "this":Ljava/util/stream/Nodes$InternalNodeSpliterator;, "Ljava/util/stream/Nodes$InternalNodeSpliterator<TT;TS;TN;>;"
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 991
    iget-object v1, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    if-nez v1, :cond_7

    .line 992
    return v3

    .line 994
    :cond_7
    iget-object v1, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceSpliterator:Ljava/util/Spliterator;

    if-nez v1, :cond_23

    .line 995
    iget-object v1, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->lastNodeSpliterator:Ljava/util/Spliterator;

    if-nez v1, :cond_28

    .line 997
    invoke-virtual {p0}, Ljava/util/stream/Nodes$InternalNodeSpliterator;->initStack()Ljava/util/Deque;

    move-result-object v1

    iput-object v1, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceStack:Ljava/util/Deque;

    .line 998
    iget-object v1, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceStack:Ljava/util/Deque;

    invoke-virtual {p0, v1}, Ljava/util/stream/Nodes$InternalNodeSpliterator;->findNextLeafNode(Ljava/util/Deque;)Ljava/util/stream/Node;

    move-result-object v0

    .line 999
    .local v0, "leaf":Ljava/util/stream/Node;, "TN;"
    if-eqz v0, :cond_25

    .line 1000
    invoke-interface {v0}, Ljava/util/stream/Node;->spliterator()Ljava/util/Spliterator;

    move-result-object v1

    iput-object v1, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceSpliterator:Ljava/util/Spliterator;

    .line 1011
    .end local v0    # "leaf":Ljava/util/stream/Node;, "TN;"
    :cond_23
    :goto_23
    const/4 v1, 0x1

    return v1

    .line 1004
    .restart local v0    # "leaf":Ljava/util/stream/Node;, "TN;"
    :cond_25
    iput-object v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    .line 1005
    return v3

    .line 1009
    .end local v0    # "leaf":Ljava/util/stream/Node;, "TN;"
    :cond_28
    iget-object v1, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->lastNodeSpliterator:Ljava/util/Spliterator;

    iput-object v1, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceSpliterator:Ljava/util/Spliterator;

    goto :goto_23
.end method

.method public final trySplit()Ljava/util/Spliterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/stream/Nodes$InternalNodeSpliterator;, "Ljava/util/stream/Nodes$InternalNodeSpliterator<TT;TS;TN;>;"
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1017
    iget-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    if-eqz v0, :cond_a

    iget-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceSpliterator:Ljava/util/Spliterator;

    if-eqz v0, :cond_b

    .line 1018
    :cond_a
    return-object v1

    .line 1019
    :cond_b
    iget-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->lastNodeSpliterator:Ljava/util/Spliterator;

    if-eqz v0, :cond_16

    .line 1020
    iget-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->lastNodeSpliterator:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0

    .line 1021
    :cond_16
    iget v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    iget-object v1, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    invoke-interface {v1}, Ljava/util/stream/Node;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_33

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
    :cond_33
    iget-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    iget v1, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    invoke-interface {v0, v1}, Ljava/util/stream/Node;->getChild(I)Ljava/util/stream/Node;

    move-result-object v0

    iput-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    .line 1025
    iget-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    invoke-interface {v0}, Ljava/util/stream/Node;->getChildCount()I

    move-result v0

    if-nez v0, :cond_54

    .line 1026
    iget-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    invoke-interface {v0}, Ljava/util/stream/Node;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    iput-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->lastNodeSpliterator:Ljava/util/Spliterator;

    .line 1027
    iget-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->lastNodeSpliterator:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0

    .line 1030
    :cond_54
    iput v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    .line 1031
    iget-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    iget v1, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    invoke-interface {v0, v1}, Ljava/util/stream/Node;->getChild(I)Ljava/util/stream/Node;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Node;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
