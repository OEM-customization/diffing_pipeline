.class final Ljava/util/PriorityQueue$PriorityQueueSpliterator;
.super Ljava/lang/Object;
.source "PriorityQueue.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/PriorityQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PriorityQueueSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private expectedModCount:I

.field private fence:I

.field private index:I

.field private final pq:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/PriorityQueue;III)V
    .registers 5
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .param p4, "expectedModCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/PriorityQueue",
            "<TE;>;III)V"
        }
    .end annotation

    .prologue
    .line 830
    .local p0, "this":Ljava/util/PriorityQueue$PriorityQueueSpliterator;, "Ljava/util/PriorityQueue$PriorityQueueSpliterator<TE;>;"
    .local p1, "pq":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 832
    iput-object p1, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->pq:Ljava/util/PriorityQueue;

    .line 833
    iput p2, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->index:I

    .line 834
    iput p3, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->fence:I

    .line 835
    iput p4, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->expectedModCount:I

    .line 836
    return-void
.end method

.method private getFence()I
    .registers 3

    .prologue
    .line 840
    .local p0, "this":Ljava/util/PriorityQueue$PriorityQueueSpliterator;, "Ljava/util/PriorityQueue$PriorityQueueSpliterator<TE;>;"
    iget v0, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->fence:I

    .local v0, "hi":I
    if-gez v0, :cond_10

    .line 841
    iget-object v1, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->pq:Ljava/util/PriorityQueue;

    iget v1, v1, Ljava/util/PriorityQueue;->modCount:I

    iput v1, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->expectedModCount:I

    .line 842
    iget-object v1, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->pq:Ljava/util/PriorityQueue;

    iget v0, v1, Ljava/util/PriorityQueue;->size:I

    .end local v0    # "hi":I
    iput v0, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->fence:I

    .line 844
    .restart local v0    # "hi":I
    :cond_10
    return v0
.end method


# virtual methods
.method public characteristics()I
    .registers 2

    .prologue
    .line 906
    .local p0, "this":Ljava/util/PriorityQueue$PriorityQueueSpliterator;, "Ljava/util/PriorityQueue$PriorityQueueSpliterator<TE;>;"
    const/16 v0, 0x4140

    return v0
.end method

.method public estimateSize()J
    .registers 3

    .prologue
    .line 902
    .local p0, "this":Ljava/util/PriorityQueue$PriorityQueueSpliterator;, "Ljava/util/PriorityQueue$PriorityQueueSpliterator<TE;>;"
    invoke-direct {p0}, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->getFence()I

    move-result v0

    iget v1, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->index:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 858
    .local p0, "this":Ljava/util/PriorityQueue$PriorityQueueSpliterator;, "Ljava/util/PriorityQueue$PriorityQueueSpliterator<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    if-nez p1, :cond_8

    .line 859
    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v6

    .line 860
    :cond_8
    iget-object v5, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->pq:Ljava/util/PriorityQueue;

    .local v5, "q":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    if-eqz v5, :cond_27

    iget-object v0, v5, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    .local v0, "a":[Ljava/lang/Object;
    if-eqz v0, :cond_27

    .line 861
    iget v2, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->fence:I

    .local v2, "hi":I
    if-gez v2, :cond_2d

    .line 862
    iget v4, v5, Ljava/util/PriorityQueue;->modCount:I

    .line 863
    .local v4, "mc":I
    iget v2, v5, Ljava/util/PriorityQueue;->size:I

    .line 867
    :goto_18
    iget v3, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->index:I

    .local v3, "i":I
    if-ltz v3, :cond_27

    iput v2, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->index:I

    array-length v6, v0

    if-gt v2, v6, :cond_27

    .line 869
    :goto_21
    if-ge v3, v2, :cond_36

    .line 870
    aget-object v1, v0, v3

    .local v1, "e":Ljava/lang/Object;, "TE;"
    if-nez v1, :cond_30

    .line 881
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    .end local v2    # "hi":I
    .end local v3    # "i":I
    .end local v4    # "mc":I
    :cond_27
    new-instance v6, Ljava/util/ConcurrentModificationException;

    invoke-direct {v6}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v6

    .line 866
    .restart local v0    # "a":[Ljava/lang/Object;
    .restart local v2    # "hi":I
    :cond_2d
    iget v4, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->expectedModCount:I

    .restart local v4    # "mc":I
    goto :goto_18

    .line 872
    .restart local v1    # "e":Ljava/lang/Object;, "TE;"
    .restart local v3    # "i":I
    :cond_30
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 868
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 874
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    :cond_36
    iget v6, v5, Ljava/util/PriorityQueue;->modCount:I

    if-ne v6, v4, :cond_27

    .line 877
    return-void
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/PriorityQueue$PriorityQueueSpliterator;, "Ljava/util/PriorityQueue$PriorityQueueSpliterator<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    const/4 v3, 0x0

    .line 885
    if-nez p1, :cond_9

    .line 886
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 887
    :cond_9
    invoke-direct {p0}, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->getFence()I

    move-result v1

    .local v1, "hi":I
    iget v2, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->index:I

    .line 888
    .local v2, "lo":I
    if-ltz v2, :cond_38

    if-ge v2, v1, :cond_38

    .line 889
    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->index:I

    .line 890
    iget-object v3, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->pq:Ljava/util/PriorityQueue;

    iget-object v3, v3, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aget-object v0, v3, v2

    .line 891
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_25

    .line 892
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3

    .line 893
    :cond_25
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 894
    iget-object v3, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->pq:Ljava/util/PriorityQueue;

    iget v3, v3, Ljava/util/PriorityQueue;->modCount:I

    iget v4, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->expectedModCount:I

    if-eq v3, v4, :cond_36

    .line 895
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3

    .line 896
    :cond_36
    const/4 v3, 0x1

    return v3

    .line 898
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_38
    return v3
.end method

.method public trySplit()Ljava/util/PriorityQueue$PriorityQueueSpliterator;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/PriorityQueue$PriorityQueueSpliterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 848
    .local p0, "this":Ljava/util/PriorityQueue$PriorityQueueSpliterator;, "Ljava/util/PriorityQueue$PriorityQueueSpliterator<TE;>;"
    invoke-direct {p0}, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->getFence()I

    move-result v0

    .local v0, "hi":I
    iget v1, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->index:I

    .local v1, "lo":I
    add-int v3, v1, v0

    ushr-int/lit8 v2, v3, 0x1

    .line 849
    .local v2, "mid":I
    if-lt v1, v2, :cond_e

    const/4 v3, 0x0

    :goto_d
    return-object v3

    .line 850
    :cond_e
    new-instance v3, Ljava/util/PriorityQueue$PriorityQueueSpliterator;

    iget-object v4, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->pq:Ljava/util/PriorityQueue;

    iput v2, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->index:I

    .line 851
    iget v5, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->expectedModCount:I

    .line 850
    invoke-direct {v3, v4, v1, v2, v5}, Ljava/util/PriorityQueue$PriorityQueueSpliterator;-><init>(Ljava/util/PriorityQueue;III)V

    goto :goto_d
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .registers 2

    .prologue
    .line 847
    .local p0, "this":Ljava/util/PriorityQueue$PriorityQueueSpliterator;, "Ljava/util/PriorityQueue$PriorityQueueSpliterator<TE;>;"
    invoke-virtual {p0}, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->trySplit()Ljava/util/PriorityQueue$PriorityQueueSpliterator;

    move-result-object v0

    return-object v0
.end method
