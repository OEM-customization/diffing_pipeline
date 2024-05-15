.class final Ljava/util/stream/Nodes$ToArrayTask$OfRef;
.super Ljava/util/stream/Nodes$ToArrayTask;
.source "Nodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes$ToArrayTask;
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
        "Ljava/util/stream/Nodes$ToArrayTask<",
        "TT;",
        "Ljava/util/stream/Node<",
        "TT;>;",
        "Ljava/util/stream/Nodes$ToArrayTask$OfRef<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final blacklist array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(Ljava/util/stream/Node;[Ljava/lang/Object;I)V
    .registers 4
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Node<",
            "TT;>;[TT;I)V"
        }
    .end annotation

    .line 2076
    .local p0, "this":Ljava/util/stream/Nodes$ToArrayTask$OfRef;, "Ljava/util/stream/Nodes$ToArrayTask$OfRef<TT;>;"
    .local p1, "node":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    .local p2, "array":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0, p1, p3}, Ljava/util/stream/Nodes$ToArrayTask;-><init>(Ljava/util/stream/Node;I)V

    .line 2077
    iput-object p2, p0, Ljava/util/stream/Nodes$ToArrayTask$OfRef;->array:[Ljava/lang/Object;

    .line 2078
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/stream/Node;[Ljava/lang/Object;ILjava/util/stream/Nodes$1;)V
    .registers 5
    .param p1, "x0"    # Ljava/util/stream/Node;
    .param p2, "x1"    # [Ljava/lang/Object;
    .param p3, "x2"    # I
    .param p4, "x3"    # Ljava/util/stream/Nodes$1;

    .line 2071
    .local p0, "this":Ljava/util/stream/Nodes$ToArrayTask$OfRef;, "Ljava/util/stream/Nodes$ToArrayTask$OfRef<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/Nodes$ToArrayTask$OfRef;-><init>(Ljava/util/stream/Node;[Ljava/lang/Object;I)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/stream/Nodes$ToArrayTask$OfRef;Ljava/util/stream/Node;I)V
    .registers 5
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Nodes$ToArrayTask$OfRef<",
            "TT;>;",
            "Ljava/util/stream/Node<",
            "TT;>;I)V"
        }
    .end annotation

    .line 2081
    .local p0, "this":Ljava/util/stream/Nodes$ToArrayTask$OfRef;, "Ljava/util/stream/Nodes$ToArrayTask$OfRef<TT;>;"
    .local p1, "parent":Ljava/util/stream/Nodes$ToArrayTask$OfRef;, "Ljava/util/stream/Nodes$ToArrayTask$OfRef<TT;>;"
    .local p2, "node":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/Nodes$ToArrayTask;-><init>(Ljava/util/stream/Nodes$ToArrayTask;Ljava/util/stream/Node;I)V

    .line 2082
    iget-object v0, p1, Ljava/util/stream/Nodes$ToArrayTask$OfRef;->array:[Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/stream/Nodes$ToArrayTask$OfRef;->array:[Ljava/lang/Object;

    .line 2083
    return-void
.end method


# virtual methods
.method blacklist copyNodeToArray()V
    .registers 4

    .line 2092
    .local p0, "this":Ljava/util/stream/Nodes$ToArrayTask$OfRef;, "Ljava/util/stream/Nodes$ToArrayTask$OfRef<TT;>;"
    iget-object v0, p0, Ljava/util/stream/Nodes$ToArrayTask$OfRef;->node:Ljava/util/stream/Node;

    iget-object v1, p0, Ljava/util/stream/Nodes$ToArrayTask$OfRef;->array:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/stream/Nodes$ToArrayTask$OfRef;->offset:I

    invoke-interface {v0, v1, v2}, Ljava/util/stream/Node;->copyInto([Ljava/lang/Object;I)V

    .line 2093
    return-void
.end method

.method blacklist makeChild(II)Ljava/util/stream/Nodes$ToArrayTask$OfRef;
    .registers 5
    .param p1, "childIndex"    # I
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/stream/Nodes$ToArrayTask$OfRef<",
            "TT;>;"
        }
    .end annotation

    .line 2087
    .local p0, "this":Ljava/util/stream/Nodes$ToArrayTask$OfRef;, "Ljava/util/stream/Nodes$ToArrayTask$OfRef<TT;>;"
    new-instance v0, Ljava/util/stream/Nodes$ToArrayTask$OfRef;

    iget-object v1, p0, Ljava/util/stream/Nodes$ToArrayTask$OfRef;->node:Ljava/util/stream/Node;

    invoke-interface {v1, p1}, Ljava/util/stream/Node;->getChild(I)Ljava/util/stream/Node;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Ljava/util/stream/Nodes$ToArrayTask$OfRef;-><init>(Ljava/util/stream/Nodes$ToArrayTask$OfRef;Ljava/util/stream/Node;I)V

    return-object v0
.end method

.method bridge synthetic blacklist makeChild(II)Ljava/util/stream/Nodes$ToArrayTask;
    .registers 3

    .line 2070
    .local p0, "this":Ljava/util/stream/Nodes$ToArrayTask$OfRef;, "Ljava/util/stream/Nodes$ToArrayTask$OfRef<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/stream/Nodes$ToArrayTask$OfRef;->makeChild(II)Ljava/util/stream/Nodes$ToArrayTask$OfRef;

    move-result-object p1

    return-object p1
.end method
