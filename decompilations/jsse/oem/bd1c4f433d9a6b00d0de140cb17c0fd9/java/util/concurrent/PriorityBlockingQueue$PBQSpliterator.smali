.class final Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;
.super Ljava/lang/Object;
.source "PriorityBlockingQueue.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/PriorityBlockingQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PBQSpliterator"
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
.field array:[Ljava/lang/Object;

.field fence:I

.field index:I

.field final queue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/PriorityBlockingQueue;[Ljava/lang/Object;II)V
    .registers 5
    .param p2, "array"    # [Ljava/lang/Object;
    .param p3, "index"    # I
    .param p4, "fence"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<TE;>;[",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 941
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;, "Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator<TE;>;"
    .local p1, "queue":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 943
    iput-object p1, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 944
    iput-object p2, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->array:[Ljava/lang/Object;

    .line 945
    iput p3, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->index:I

    .line 946
    iput p4, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->fence:I

    .line 947
    return-void
.end method


# virtual methods
.method public characteristics()I
    .registers 2

    .prologue
    .line 989
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;, "Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator<TE;>;"
    const/16 v0, 0x4140

    return v0
.end method

.method public estimateSize()J
    .registers 3

    .prologue
    .line 986
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;, "Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->getFence()I

    move-result v0

    iget v1, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->index:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 965
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;, "Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    if-nez p1, :cond_8

    .line 966
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 967
    :cond_8
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->array:[Ljava/lang/Object;

    .local v0, "a":[Ljava/lang/Object;
    if-nez v0, :cond_15

    .line 968
    iget-object v3, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/PriorityBlockingQueue;->toArray()[Ljava/lang/Object;

    move-result-object v0

    array-length v3, v0

    iput v3, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->fence:I

    .line 969
    :cond_15
    iget v1, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->fence:I

    .local v1, "hi":I
    array-length v3, v0

    if-gt v1, v3, :cond_2b

    .line 970
    iget v2, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->index:I

    .local v2, "i":I
    if-ltz v2, :cond_2b

    iput v1, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->index:I

    if-ge v2, v1, :cond_2b

    .line 971
    :cond_22
    aget-object v3, v0, v2

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v1, :cond_22

    .line 973
    .end local v2    # "i":I
    :cond_2b
    return-void
.end method

.method final getFence()I
    .registers 3

    .prologue
    .line 951
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;, "Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator<TE;>;"
    iget v0, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->fence:I

    .local v0, "hi":I
    if-gez v0, :cond_f

    .line 952
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/PriorityBlockingQueue;->toArray()[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->array:[Ljava/lang/Object;

    array-length v0, v1

    .end local v0    # "hi":I
    iput v0, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->fence:I

    .line 953
    .restart local v0    # "hi":I
    :cond_f
    return v0
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;, "Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    const/4 v3, 0x0

    .line 976
    if-nez p1, :cond_9

    .line 977
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 978
    :cond_9
    invoke-virtual {p0}, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->getFence()I

    move-result v1

    iget v2, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->index:I

    if-le v1, v2, :cond_24

    iget v1, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->index:I

    if-ltz v1, :cond_24

    .line 979
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->array:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->index:I

    aget-object v0, v1, v2

    .line 980
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 981
    const/4 v1, 0x1

    return v1

    .line 983
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_24
    return v3
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .registers 2

    .prologue
    .line 956
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;, "Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->trySplit()Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public trySplit()Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 957
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;, "Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->getFence()I

    move-result v0

    .local v0, "hi":I
    iget v1, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->index:I

    .local v1, "lo":I
    add-int v3, v1, v0

    ushr-int/lit8 v2, v3, 0x1

    .line 958
    .local v2, "mid":I
    if-lt v1, v2, :cond_e

    const/4 v3, 0x0

    :goto_d
    return-object v3

    .line 959
    :cond_e
    new-instance v3, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;

    iget-object v4, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v5, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->array:[Ljava/lang/Object;

    iput v2, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->index:I

    invoke-direct {v3, v4, v5, v1, v2}, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;-><init>(Ljava/util/concurrent/PriorityBlockingQueue;[Ljava/lang/Object;II)V

    goto :goto_d
.end method
