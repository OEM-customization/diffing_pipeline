.class abstract Ljava/util/stream/AbstractShortCircuitTask;
.super Ljava/util/stream/AbstractTask;
.source "AbstractShortCircuitTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        "P_OUT:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/util/stream/AbstractShortCircuitTask",
        "<TP_IN;TP_OUT;TR;TK;>;>",
        "Ljava/util/stream/AbstractTask",
        "<TP_IN;TP_OUT;TR;TK;>;"
    }
.end annotation


# instance fields
.field protected volatile canceled:Z

.field protected final sharedResult:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<TR;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/stream/AbstractShortCircuitTask;Ljava/util/Spliterator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Ljava/util/stream/AbstractShortCircuitTask;, "Ljava/util/stream/AbstractShortCircuitTask<TP_IN;TP_OUT;TR;TK;>;"
    .local p1, "parent":Ljava/util/stream/AbstractShortCircuitTask;, "TK;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/AbstractTask;-><init>(Ljava/util/stream/AbstractTask;Ljava/util/Spliterator;)V

    .line 84
    iget-object v0, p1, Ljava/util/stream/AbstractShortCircuitTask;->sharedResult:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object v0, p0, Ljava/util/stream/AbstractShortCircuitTask;->sharedResult:Ljava/util/concurrent/atomic/AtomicReference;

    .line 85
    return-void
.end method

.method protected constructor <init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/PipelineHelper",
            "<TP_OUT;>;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Ljava/util/stream/AbstractShortCircuitTask;, "Ljava/util/stream/AbstractShortCircuitTask<TP_IN;TP_OUT;TR;TK;>;"
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TP_OUT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/AbstractTask;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)V

    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ljava/util/stream/AbstractShortCircuitTask;->sharedResult:Ljava/util/concurrent/atomic/AtomicReference;

    .line 72
    return-void
.end method


# virtual methods
.method protected cancel()V
    .registers 2

    .prologue
    .line 197
    .local p0, "this":Ljava/util/stream/AbstractShortCircuitTask;, "Ljava/util/stream/AbstractShortCircuitTask<TP_IN;TP_OUT;TR;TK;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/stream/AbstractShortCircuitTask;->canceled:Z

    .line 198
    return-void
.end method

.method protected cancelLaterNodes()V
    .registers 5

    .prologue
    .line 223
    .local p0, "this":Ljava/util/stream/AbstractShortCircuitTask;, "Ljava/util/stream/AbstractShortCircuitTask<TP_IN;TP_OUT;TR;TK;>;"
    invoke-virtual {p0}, Ljava/util/stream/AbstractShortCircuitTask;->getParent()Ljava/util/stream/AbstractTask;

    move-result-object v1

    check-cast v1, Ljava/util/stream/AbstractShortCircuitTask;

    .local v1, "parent":Ljava/util/stream/AbstractShortCircuitTask;, "TK;"
    move-object v0, p0

    .local v0, "node":Ljava/util/stream/AbstractShortCircuitTask;, "TK;"
    :goto_7
    if-eqz v1, :cond_20

    .line 227
    iget-object v3, v1, Ljava/util/stream/AbstractShortCircuitTask;->leftChild:Ljava/util/stream/AbstractTask;

    if-ne v3, v0, :cond_18

    .line 228
    iget-object v2, v1, Ljava/util/stream/AbstractShortCircuitTask;->rightChild:Ljava/util/stream/AbstractTask;

    check-cast v2, Ljava/util/stream/AbstractShortCircuitTask;

    .line 229
    .local v2, "rightSibling":Ljava/util/stream/AbstractShortCircuitTask;, "TK;"
    iget-boolean v3, v2, Ljava/util/stream/AbstractShortCircuitTask;->canceled:Z

    if-nez v3, :cond_18

    .line 230
    invoke-virtual {v2}, Ljava/util/stream/AbstractShortCircuitTask;->cancel()V

    .line 225
    .end local v2    # "rightSibling":Ljava/util/stream/AbstractShortCircuitTask;, "TK;"
    :cond_18
    move-object v0, v1

    invoke-virtual {v1}, Ljava/util/stream/AbstractShortCircuitTask;->getParent()Ljava/util/stream/AbstractTask;

    move-result-object v1

    .end local v1    # "parent":Ljava/util/stream/AbstractShortCircuitTask;, "TK;"
    check-cast v1, Ljava/util/stream/AbstractShortCircuitTask;

    .restart local v1    # "parent":Ljava/util/stream/AbstractShortCircuitTask;, "TK;"
    goto :goto_7

    .line 233
    :cond_20
    return-void
.end method

.method public compute()V
    .registers 15

    .prologue
    .line 102
    .local p0, "this":Ljava/util/stream/AbstractShortCircuitTask;, "Ljava/util/stream/AbstractShortCircuitTask<TP_IN;TP_OUT;TR;TK;>;"
    iget-object v5, p0, Ljava/util/stream/AbstractShortCircuitTask;->spliterator:Ljava/util/Spliterator;

    .line 103
    .local v5, "rs":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-interface {v5}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v6

    .line 104
    .local v6, "sizeEstimate":J
    invoke-virtual {p0, v6, v7}, Ljava/util/stream/AbstractShortCircuitTask;->getTargetSize(J)J

    move-result-wide v8

    .line 105
    .local v8, "sizeThreshold":J
    const/4 v0, 0x0

    .line 106
    .local v0, "forkRight":Z
    move-object v11, p0

    .line 107
    .local v11, "task":Ljava/util/stream/AbstractShortCircuitTask;, "TK;"
    iget-object v10, p0, Ljava/util/stream/AbstractShortCircuitTask;->sharedResult:Ljava/util/concurrent/atomic/AtomicReference;

    .line 109
    .local v10, "sr":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TR;>;"
    :goto_e
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    .local v3, "result":Ljava/lang/Object;, "TR;"
    if-nez v3, :cond_1e

    .line 110
    invoke-virtual {v11}, Ljava/util/stream/AbstractShortCircuitTask;->taskCanceled()Z

    move-result v13

    if-eqz v13, :cond_25

    .line 111
    invoke-virtual {v11}, Ljava/util/stream/AbstractShortCircuitTask;->getEmptyResult()Ljava/lang/Object;

    move-result-object v3

    .line 136
    :cond_1e
    :goto_1e
    invoke-virtual {v11, v3}, Ljava/util/stream/AbstractShortCircuitTask;->setLocalResult(Ljava/lang/Object;)V

    .line 137
    invoke-virtual {v11}, Ljava/util/stream/AbstractShortCircuitTask;->tryComplete()V

    .line 138
    return-void

    .line 114
    :cond_25
    cmp-long v13, v6, v8

    if-lez v13, :cond_2f

    invoke-interface {v5}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v2

    .local v2, "ls":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    if-nez v2, :cond_34

    .line 115
    .end local v2    # "ls":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    :cond_2f
    invoke-virtual {v11}, Ljava/util/stream/AbstractShortCircuitTask;->doLeaf()Ljava/lang/Object;

    move-result-object v3

    goto :goto_1e

    .line 119
    .restart local v2    # "ls":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    :cond_34
    invoke-virtual {v11, v2}, Ljava/util/stream/AbstractShortCircuitTask;->makeChild(Ljava/util/Spliterator;)Ljava/util/stream/AbstractTask;

    move-result-object v1

    check-cast v1, Ljava/util/stream/AbstractShortCircuitTask;

    .local v1, "leftChild":Ljava/util/stream/AbstractShortCircuitTask;, "TK;"
    iput-object v1, v11, Ljava/util/stream/AbstractShortCircuitTask;->leftChild:Ljava/util/stream/AbstractTask;

    .line 120
    invoke-virtual {v11, v5}, Ljava/util/stream/AbstractShortCircuitTask;->makeChild(Ljava/util/Spliterator;)Ljava/util/stream/AbstractTask;

    move-result-object v4

    check-cast v4, Ljava/util/stream/AbstractShortCircuitTask;

    .local v4, "rightChild":Ljava/util/stream/AbstractShortCircuitTask;, "TK;"
    iput-object v4, v11, Ljava/util/stream/AbstractShortCircuitTask;->rightChild:Ljava/util/stream/AbstractTask;

    .line 121
    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Ljava/util/stream/AbstractShortCircuitTask;->setPendingCount(I)V

    .line 122
    if-eqz v0, :cond_56

    .line 123
    const/4 v0, 0x0

    .line 124
    move-object v5, v2

    .line 125
    move-object v11, v1

    .line 126
    move-object v12, v4

    .line 133
    .local v12, "taskToFork":Ljava/util/stream/AbstractShortCircuitTask;, "TK;"
    :goto_4e
    invoke-virtual {v12}, Ljava/util/stream/AbstractShortCircuitTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 134
    invoke-interface {v5}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v6

    goto :goto_e

    .line 129
    .end local v12    # "taskToFork":Ljava/util/stream/AbstractShortCircuitTask;, "TK;"
    :cond_56
    const/4 v0, 0x1

    .line 130
    move-object v11, v4

    .line 131
    move-object v12, v1

    .restart local v12    # "taskToFork":Ljava/util/stream/AbstractShortCircuitTask;, "TK;"
    goto :goto_4e
.end method

.method protected abstract getEmptyResult()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation
.end method

.method public getLocalResult()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .prologue
    .line 185
    .local p0, "this":Ljava/util/stream/AbstractShortCircuitTask;, "Ljava/util/stream/AbstractShortCircuitTask<TP_IN;TP_OUT;TR;TK;>;"
    invoke-virtual {p0}, Ljava/util/stream/AbstractShortCircuitTask;->isRoot()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 186
    iget-object v1, p0, Ljava/util/stream/AbstractShortCircuitTask;->sharedResult:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 187
    .local v0, "answer":Ljava/lang/Object;, "TR;"
    if-nez v0, :cond_12

    invoke-virtual {p0}, Ljava/util/stream/AbstractShortCircuitTask;->getEmptyResult()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "answer":Ljava/lang/Object;, "TR;"
    :cond_12
    return-object v0

    .line 190
    :cond_13
    invoke-super {p0}, Ljava/util/stream/AbstractTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getRawResult()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .prologue
    .line 176
    .local p0, "this":Ljava/util/stream/AbstractShortCircuitTask;, "Ljava/util/stream/AbstractShortCircuitTask<TP_IN;TP_OUT;TR;TK;>;"
    invoke-virtual {p0}, Ljava/util/stream/AbstractShortCircuitTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected setLocalResult(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/stream/AbstractShortCircuitTask;, "Ljava/util/stream/AbstractShortCircuitTask<TP_IN;TP_OUT;TR;TK;>;"
    .local p1, "localResult":Ljava/lang/Object;, "TR;"
    const/4 v1, 0x0

    .line 163
    invoke-virtual {p0}, Ljava/util/stream/AbstractShortCircuitTask;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 164
    if-eqz p1, :cond_e

    .line 165
    iget-object v0, p0, Ljava/util/stream/AbstractShortCircuitTask;->sharedResult:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 169
    :cond_e
    :goto_e
    return-void

    .line 168
    :cond_f
    invoke-super {p0, p1}, Ljava/util/stream/AbstractTask;->setLocalResult(Ljava/lang/Object;)V

    goto :goto_e
.end method

.method protected shortCircuit(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/stream/AbstractShortCircuitTask;, "Ljava/util/stream/AbstractShortCircuitTask<TP_IN;TP_OUT;TR;TK;>;"
    .local p1, "result":Ljava/lang/Object;, "TR;"
    const/4 v1, 0x0

    .line 151
    if-eqz p1, :cond_8

    .line 152
    iget-object v0, p0, Ljava/util/stream/AbstractShortCircuitTask;->sharedResult:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 153
    :cond_8
    return-void
.end method

.method protected taskCanceled()Z
    .registers 3

    .prologue
    .line 207
    .local p0, "this":Ljava/util/stream/AbstractShortCircuitTask;, "Ljava/util/stream/AbstractShortCircuitTask<TP_IN;TP_OUT;TR;TK;>;"
    iget-boolean v0, p0, Ljava/util/stream/AbstractShortCircuitTask;->canceled:Z

    .line 208
    .local v0, "cancel":Z
    if-nez v0, :cond_17

    .line 209
    invoke-virtual {p0}, Ljava/util/stream/AbstractShortCircuitTask;->getParent()Ljava/util/stream/AbstractTask;

    move-result-object v1

    check-cast v1, Ljava/util/stream/AbstractShortCircuitTask;

    .local v1, "parent":Ljava/util/stream/AbstractShortCircuitTask;, "TK;"
    :goto_a
    if-nez v0, :cond_17

    if-eqz v1, :cond_17

    .line 210
    iget-boolean v0, v1, Ljava/util/stream/AbstractShortCircuitTask;->canceled:Z

    .line 209
    invoke-virtual {v1}, Ljava/util/stream/AbstractShortCircuitTask;->getParent()Ljava/util/stream/AbstractTask;

    move-result-object v1

    .end local v1    # "parent":Ljava/util/stream/AbstractShortCircuitTask;, "TK;"
    check-cast v1, Ljava/util/stream/AbstractShortCircuitTask;

    .restart local v1    # "parent":Ljava/util/stream/AbstractShortCircuitTask;, "TK;"
    goto :goto_a

    .line 213
    .end local v1    # "parent":Ljava/util/stream/AbstractShortCircuitTask;, "TK;"
    :cond_17
    return v0
.end method
