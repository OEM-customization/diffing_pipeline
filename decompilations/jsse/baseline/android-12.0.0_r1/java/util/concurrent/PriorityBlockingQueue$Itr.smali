.class final Ljava/util/concurrent/PriorityBlockingQueue$Itr;
.super Ljava/lang/Object;
.source "PriorityBlockingQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/PriorityBlockingQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final greylist-max-o array:[Ljava/lang/Object;

.field greylist-max-o cursor:I

.field greylist-max-o lastRet:I

.field final synthetic blacklist this$0:Ljava/util/concurrent/PriorityBlockingQueue;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/PriorityBlockingQueue;[Ljava/lang/Object;)V
    .registers 4
    .param p1, "this$0"    # Ljava/util/concurrent/PriorityBlockingQueue;
    .param p2, "array"    # [Ljava/lang/Object;

    .line 866
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue$Itr;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>.Itr;"
    iput-object p1, p0, Ljava/util/concurrent/PriorityBlockingQueue$Itr;->this$0:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 867
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/concurrent/PriorityBlockingQueue$Itr;->lastRet:I

    .line 868
    iput-object p2, p0, Ljava/util/concurrent/PriorityBlockingQueue$Itr;->array:[Ljava/lang/Object;

    .line 869
    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 3

    .line 872
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue$Itr;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>.Itr;"
    iget v0, p0, Ljava/util/concurrent/PriorityBlockingQueue$Itr;->cursor:I

    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue$Itr;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist test-api next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 876
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue$Itr;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>.Itr;"
    iget v0, p0, Ljava/util/concurrent/PriorityBlockingQueue$Itr;->cursor:I

    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue$Itr;->array:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_10

    .line 878
    iput v0, p0, Ljava/util/concurrent/PriorityBlockingQueue$Itr;->lastRet:I

    .line 879
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Ljava/util/concurrent/PriorityBlockingQueue$Itr;->cursor:I

    aget-object v0, v1, v0

    return-object v0

    .line 877
    :cond_10
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public whitelist test-api remove()V
    .registers 4

    .line 883
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue$Itr;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>.Itr;"
    iget v0, p0, Ljava/util/concurrent/PriorityBlockingQueue$Itr;->lastRet:I

    if-ltz v0, :cond_11

    .line 885
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue$Itr;->this$0:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v2, p0, Ljava/util/concurrent/PriorityBlockingQueue$Itr;->array:[Ljava/lang/Object;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->removeEQ(Ljava/lang/Object;)V

    .line 886
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/concurrent/PriorityBlockingQueue$Itr;->lastRet:I

    .line 887
    return-void

    .line 884
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
