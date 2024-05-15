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
        "Ljava/util/Spliterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field greylist-max-o array:[Ljava/lang/Object;

.field greylist-max-o fence:I

.field greylist-max-o index:I

.field final greylist-max-o queue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/concurrent/PriorityBlockingQueue;[Ljava/lang/Object;II)V
    .registers 5
    .param p2, "array"    # [Ljava/lang/Object;
    .param p3, "index"    # I
    .param p4, "fence"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "TE;>;[",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation

    .line 942
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
.method public whitelist core-platform-api test-api characteristics()I
    .registers 2

    .line 989
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;, "Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator<TE;>;"
    const/16 v0, 0x4140

    return v0
.end method

.method public whitelist core-platform-api test-api estimateSize()J
    .registers 3

    .line 986
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;, "Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->getFence()I

    move-result v0

    iget v1, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->index:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public whitelist core-platform-api test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 965
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;, "Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    if-eqz p1, :cond_2a

    .line 967
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->array:[Ljava/lang/Object;

    move-object v1, v0

    .local v1, "a":[Ljava/lang/Object;
    if-nez v0, :cond_11

    .line 968
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->toArray()[Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    array-length v0, v0

    iput v0, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->fence:I

    .line 969
    :cond_11
    iget v0, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->fence:I

    move v2, v0

    .local v2, "hi":I
    array-length v3, v1

    if-gt v0, v3, :cond_29

    iget v0, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->index:I

    move v3, v0

    .local v3, "i":I
    if-ltz v0, :cond_29

    iput v2, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->index:I

    if-ge v3, v2, :cond_29

    .line 971
    :cond_20
    aget-object v0, v1, v3

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    if-lt v3, v2, :cond_20

    .line 973
    .end local v3    # "i":I
    :cond_29
    return-void

    .line 966
    .end local v1    # "a":[Ljava/lang/Object;
    .end local v2    # "hi":I
    :cond_2a
    const/4 v0, 0x0

    throw v0
.end method

.method final greylist-max-o getFence()I
    .registers 3

    .line 951
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;, "Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator<TE;>;"
    iget v0, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->fence:I

    move v1, v0

    .local v1, "hi":I
    if-gez v0, :cond_11

    .line 952
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->toArray()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->array:[Ljava/lang/Object;

    array-length v0, v0

    iput v0, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->fence:I

    move v1, v0

    .line 953
    :cond_11
    return v1
.end method

.method public whitelist core-platform-api test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 976
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;, "Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    if-eqz p1, :cond_1b

    .line 978
    invoke-virtual {p0}, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->getFence()I

    move-result v0

    iget v1, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->index:I

    if-le v0, v1, :cond_19

    if-ltz v1, :cond_19

    .line 979
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->array:[Ljava/lang/Object;

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->index:I

    aget-object v0, v0, v1

    .line 980
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 981
    const/4 v1, 0x1

    return v1

    .line 983
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_19
    const/4 v0, 0x0

    return v0

    .line 977
    :cond_1b
    const/4 v0, 0x0

    throw v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 935
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;, "Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->trySplit()Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public blacklist trySplit()Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator<",
            "TE;>;"
        }
    .end annotation

    .line 957
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;, "Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->getFence()I

    move-result v0

    .local v0, "hi":I
    iget v1, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->index:I

    .local v1, "lo":I
    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 958
    .local v2, "mid":I
    if-lt v1, v2, :cond_e

    const/4 v3, 0x0

    goto :goto_19

    .line 959
    :cond_e
    new-instance v3, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;

    iget-object v4, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v5, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->array:[Ljava/lang/Object;

    iput v2, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->index:I

    invoke-direct {v3, v4, v5, v1, v2}, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;-><init>(Ljava/util/concurrent/PriorityBlockingQueue;[Ljava/lang/Object;II)V

    .line 958
    :goto_19
    return-object v3
.end method
