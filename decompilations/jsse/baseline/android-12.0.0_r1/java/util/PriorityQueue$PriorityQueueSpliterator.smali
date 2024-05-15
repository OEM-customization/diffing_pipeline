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
        "Ljava/util/Spliterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private greylist-max-o expectedModCount:I

.field private greylist-max-o fence:I

.field private greylist-max-o index:I

.field private final greylist-max-o pq:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/PriorityQueue;III)V
    .registers 5
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .param p4, "expectedModCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/PriorityQueue<",
            "TE;>;III)V"
        }
    .end annotation

    .line 831
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

.method private greylist-max-o getFence()I
    .registers 3

    .line 840
    .local p0, "this":Ljava/util/PriorityQueue$PriorityQueueSpliterator;, "Ljava/util/PriorityQueue$PriorityQueueSpliterator<TE;>;"
    iget v0, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->fence:I

    move v1, v0

    .local v1, "hi":I
    if-gez v0, :cond_12

    .line 841
    iget-object v0, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->pq:Ljava/util/PriorityQueue;

    iget v0, v0, Ljava/util/PriorityQueue;->modCount:I

    iput v0, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->expectedModCount:I

    .line 842
    iget-object v0, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->pq:Ljava/util/PriorityQueue;

    iget v0, v0, Ljava/util/PriorityQueue;->size:I

    iput v0, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->fence:I

    move v1, v0

    .line 844
    :cond_12
    return v1
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 906
    .local p0, "this":Ljava/util/PriorityQueue$PriorityQueueSpliterator;, "Ljava/util/PriorityQueue$PriorityQueueSpliterator<TE;>;"
    const/16 v0, 0x4140

    return v0
.end method

.method public whitelist test-api estimateSize()J
    .registers 3

    .line 902
    .local p0, "this":Ljava/util/PriorityQueue$PriorityQueueSpliterator;, "Ljava/util/PriorityQueue$PriorityQueueSpliterator<TE;>;"
    invoke-direct {p0}, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->getFence()I

    move-result v0

    iget v1, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->index:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 858
    .local p0, "this":Ljava/util/PriorityQueue$PriorityQueueSpliterator;, "Ljava/util/PriorityQueue$PriorityQueueSpliterator<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    if-eqz p1, :cond_3b

    .line 860
    iget-object v0, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->pq:Ljava/util/PriorityQueue;

    move-object v1, v0

    .local v1, "q":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    if-eqz v0, :cond_35

    iget-object v0, v1, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    move-object v2, v0

    .local v2, "a":[Ljava/lang/Object;
    if-eqz v0, :cond_35

    .line 861
    iget v0, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->fence:I

    move v3, v0

    .local v3, "hi":I
    if-gez v0, :cond_16

    .line 862
    iget v0, v1, Ljava/util/PriorityQueue;->modCount:I

    .line 863
    .local v0, "mc":I
    iget v3, v1, Ljava/util/PriorityQueue;->size:I

    goto :goto_18

    .line 866
    .end local v0    # "mc":I
    :cond_16
    iget v0, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->expectedModCount:I

    .line 867
    .restart local v0    # "mc":I
    :goto_18
    iget v4, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->index:I

    move v5, v4

    .local v5, "i":I
    if-ltz v4, :cond_35

    iput v3, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->index:I

    array-length v4, v2

    if-gt v3, v4, :cond_35

    .line 869
    :goto_22
    if-ge v5, v3, :cond_30

    .line 870
    aget-object v4, v2, v5

    move-object v6, v4

    .local v6, "e":Ljava/lang/Object;, "TE;"
    if-eqz v4, :cond_2f

    .line 872
    invoke-interface {p1, v6}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 868
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    .line 871
    :cond_2f
    goto :goto_35

    .line 874
    .end local v6    # "e":Ljava/lang/Object;, "TE;"
    :cond_30
    iget v4, v1, Ljava/util/PriorityQueue;->modCount:I

    if-ne v4, v0, :cond_35

    .line 877
    return-void

    .line 881
    .end local v0    # "mc":I
    .end local v2    # "a":[Ljava/lang/Object;
    .end local v3    # "hi":I
    .end local v5    # "i":I
    :cond_35
    :goto_35
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 859
    .end local v1    # "q":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    :cond_3b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 885
    .local p0, "this":Ljava/util/PriorityQueue$PriorityQueueSpliterator;, "Ljava/util/PriorityQueue$PriorityQueueSpliterator<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    if-eqz p1, :cond_33

    .line 887
    invoke-direct {p0}, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->getFence()I

    move-result v0

    .local v0, "hi":I
    iget v1, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->index:I

    .line 888
    .local v1, "lo":I
    if-ltz v1, :cond_31

    if-ge v1, v0, :cond_31

    .line 889
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->index:I

    .line 890
    iget-object v2, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->pq:Ljava/util/PriorityQueue;

    iget-object v2, v2, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aget-object v2, v2, v1

    .line 891
    .local v2, "e":Ljava/lang/Object;, "TE;"
    if-eqz v2, :cond_2b

    .line 893
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 894
    iget-object v3, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->pq:Ljava/util/PriorityQueue;

    iget v3, v3, Ljava/util/PriorityQueue;->modCount:I

    iget v4, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->expectedModCount:I

    if-ne v3, v4, :cond_25

    .line 896
    const/4 v3, 0x1

    return v3

    .line 895
    :cond_25
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3

    .line 892
    :cond_2b
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3

    .line 898
    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    :cond_31
    const/4 v2, 0x0

    return v2

    .line 886
    .end local v0    # "hi":I
    .end local v1    # "lo":I
    :cond_33
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist trySplit()Ljava/util/PriorityQueue$PriorityQueueSpliterator;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/PriorityQueue$PriorityQueueSpliterator<",
            "TE;>;"
        }
    .end annotation

    .line 848
    .local p0, "this":Ljava/util/PriorityQueue$PriorityQueueSpliterator;, "Ljava/util/PriorityQueue$PriorityQueueSpliterator<TE;>;"
    invoke-direct {p0}, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->getFence()I

    move-result v0

    .local v0, "hi":I
    iget v1, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->index:I

    .local v1, "lo":I
    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 849
    .local v2, "mid":I
    if-lt v1, v2, :cond_e

    const/4 v3, 0x0

    goto :goto_19

    .line 850
    :cond_e
    new-instance v3, Ljava/util/PriorityQueue$PriorityQueueSpliterator;

    iget-object v4, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->pq:Ljava/util/PriorityQueue;

    iput v2, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->index:I

    iget v5, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->expectedModCount:I

    invoke-direct {v3, v4, v1, v2, v5}, Ljava/util/PriorityQueue$PriorityQueueSpliterator;-><init>(Ljava/util/PriorityQueue;III)V

    .line 849
    :goto_19
    return-object v3
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 819
    .local p0, "this":Ljava/util/PriorityQueue$PriorityQueueSpliterator;, "Ljava/util/PriorityQueue$PriorityQueueSpliterator<TE;>;"
    invoke-virtual {p0}, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->trySplit()Ljava/util/PriorityQueue$PriorityQueueSpliterator;

    move-result-object v0

    return-object v0
.end method
