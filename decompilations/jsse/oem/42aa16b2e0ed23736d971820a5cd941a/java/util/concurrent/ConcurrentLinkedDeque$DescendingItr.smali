.class Ljava/util/concurrent/ConcurrentLinkedDeque$DescendingItr;
.super Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;
.source "ConcurrentLinkedDeque.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentLinkedDeque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DescendingItr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentLinkedDeque<",
        "TE;>.AbstractItr;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/concurrent/ConcurrentLinkedDeque;


# direct methods
.method private constructor blacklist <init>(Ljava/util/concurrent/ConcurrentLinkedDeque;)V
    .registers 2

    .line 1434
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque$DescendingItr;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>.DescendingItr;"
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$DescendingItr;->this$0:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;-><init>(Ljava/util/concurrent/ConcurrentLinkedDeque;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/concurrent/ConcurrentLinkedDeque;Ljava/util/concurrent/ConcurrentLinkedDeque$1;)V
    .registers 3
    .param p1, "x0"    # Ljava/util/concurrent/ConcurrentLinkedDeque;
    .param p2, "x1"    # Ljava/util/concurrent/ConcurrentLinkedDeque$1;

    .line 1434
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque$DescendingItr;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>.DescendingItr;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque$DescendingItr;-><init>(Ljava/util/concurrent/ConcurrentLinkedDeque;)V

    return-void
.end method


# virtual methods
.method greylist-max-o nextNode(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<",
            "TE;>;)",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<",
            "TE;>;"
        }
    .end annotation

    .line 1436
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque$DescendingItr;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>.DescendingItr;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$DescendingItr;->this$0:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->pred(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o startNode()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<",
            "TE;>;"
        }
    .end annotation

    .line 1435
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque$DescendingItr;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>.DescendingItr;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$DescendingItr;->this$0:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->last()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v0

    return-object v0
.end method
