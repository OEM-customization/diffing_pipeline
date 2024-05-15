.class final Ljava/util/stream/FindOps$FindTask;
.super Ljava/util/stream/AbstractShortCircuitTask;
.source "FindOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/FindOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FindTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        "P_OUT:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/AbstractShortCircuitTask<",
        "TP_IN;TP_OUT;TO;",
        "Ljava/util/stream/FindOps$FindTask<",
        "TP_IN;TP_OUT;TO;>;>;"
    }
.end annotation


# instance fields
.field private final blacklist op:Ljava/util/stream/FindOps$FindOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/FindOps$FindOp<",
            "TP_OUT;TO;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/FindOps$FindOp;Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/FindOps$FindOp<",
            "TP_OUT;TO;>;",
            "Ljava/util/stream/PipelineHelper<",
            "TP_OUT;>;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation

    .line 257
    .local p0, "this":Ljava/util/stream/FindOps$FindTask;, "Ljava/util/stream/FindOps$FindTask<TP_IN;TP_OUT;TO;>;"
    .local p1, "op":Ljava/util/stream/FindOps$FindOp;, "Ljava/util/stream/FindOps$FindOp<TP_OUT;TO;>;"
    .local p2, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TP_OUT;>;"
    .local p3, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-direct {p0, p2, p3}, Ljava/util/stream/AbstractShortCircuitTask;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)V

    .line 258
    iput-object p1, p0, Ljava/util/stream/FindOps$FindTask;->op:Ljava/util/stream/FindOps$FindOp;

    .line 259
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/stream/FindOps$FindTask;Ljava/util/Spliterator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/FindOps$FindTask<",
            "TP_IN;TP_OUT;TO;>;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation

    .line 262
    .local p0, "this":Ljava/util/stream/FindOps$FindTask;, "Ljava/util/stream/FindOps$FindTask<TP_IN;TP_OUT;TO;>;"
    .local p1, "parent":Ljava/util/stream/FindOps$FindTask;, "Ljava/util/stream/FindOps$FindTask<TP_IN;TP_OUT;TO;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/AbstractShortCircuitTask;-><init>(Ljava/util/stream/AbstractShortCircuitTask;Ljava/util/Spliterator;)V

    .line 263
    iget-object v0, p1, Ljava/util/stream/FindOps$FindTask;->op:Ljava/util/stream/FindOps$FindOp;

    iput-object v0, p0, Ljava/util/stream/FindOps$FindTask;->op:Ljava/util/stream/FindOps$FindOp;

    .line 264
    return-void
.end method

.method private blacklist foundResult(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .line 277
    .local p0, "this":Ljava/util/stream/FindOps$FindTask;, "Ljava/util/stream/FindOps$FindTask<TP_IN;TP_OUT;TO;>;"
    .local p1, "answer":Ljava/lang/Object;, "TO;"
    invoke-virtual {p0}, Ljava/util/stream/FindOps$FindTask;->isLeftmostNode()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 278
    invoke-virtual {p0, p1}, Ljava/util/stream/FindOps$FindTask;->shortCircuit(Ljava/lang/Object;)V

    goto :goto_d

    .line 280
    :cond_a
    invoke-virtual {p0}, Ljava/util/stream/FindOps$FindTask;->cancelLaterNodes()V

    .line 281
    :goto_d
    return-void
.end method


# virtual methods
.method protected blacklist doLeaf()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation

    .line 285
    .local p0, "this":Ljava/util/stream/FindOps$FindTask;, "Ljava/util/stream/FindOps$FindTask<TP_IN;TP_OUT;TO;>;"
    iget-object v0, p0, Ljava/util/stream/FindOps$FindTask;->helper:Ljava/util/stream/PipelineHelper;

    iget-object v1, p0, Ljava/util/stream/FindOps$FindTask;->op:Ljava/util/stream/FindOps$FindOp;

    iget-object v1, v1, Ljava/util/stream/FindOps$FindOp;->sinkSupplier:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/stream/TerminalSink;

    iget-object v2, p0, Ljava/util/stream/FindOps$FindTask;->spliterator:Ljava/util/Spliterator;

    invoke-virtual {v0, v1, v2}, Ljava/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava/util/stream/Sink;Ljava/util/Spliterator;)Ljava/util/stream/Sink;

    move-result-object v0

    check-cast v0, Ljava/util/stream/TerminalSink;

    invoke-interface {v0}, Ljava/util/stream/TerminalSink;->get()Ljava/lang/Object;

    move-result-object v0

    .line 286
    .local v0, "result":Ljava/lang/Object;, "TO;"
    iget-object v1, p0, Ljava/util/stream/FindOps$FindTask;->op:Ljava/util/stream/FindOps$FindOp;

    iget-boolean v1, v1, Ljava/util/stream/FindOps$FindOp;->mustFindFirst:Z

    const/4 v2, 0x0

    if-nez v1, :cond_25

    .line 287
    if-eqz v0, :cond_24

    .line 288
    invoke-virtual {p0, v0}, Ljava/util/stream/FindOps$FindTask;->shortCircuit(Ljava/lang/Object;)V

    .line 289
    :cond_24
    return-object v2

    .line 292
    :cond_25
    if-eqz v0, :cond_2b

    .line 293
    invoke-direct {p0, v0}, Ljava/util/stream/FindOps$FindTask;->foundResult(Ljava/lang/Object;)V

    .line 294
    return-object v0

    .line 297
    :cond_2b
    return-object v2
.end method

.method protected blacklist getEmptyResult()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation

    .line 273
    .local p0, "this":Ljava/util/stream/FindOps$FindTask;, "Ljava/util/stream/FindOps$FindTask<TP_IN;TP_OUT;TO;>;"
    iget-object v0, p0, Ljava/util/stream/FindOps$FindTask;->op:Ljava/util/stream/FindOps$FindOp;

    iget-object v0, v0, Ljava/util/stream/FindOps$FindOp;->emptyValue:Ljava/lang/Object;

    return-object v0
.end method

.method protected bridge synthetic blacklist makeChild(Ljava/util/Spliterator;)Ljava/util/stream/AbstractTask;
    .registers 2

    .line 249
    .local p0, "this":Ljava/util/stream/FindOps$FindTask;, "Ljava/util/stream/FindOps$FindTask<TP_IN;TP_OUT;TO;>;"
    invoke-virtual {p0, p1}, Ljava/util/stream/FindOps$FindTask;->makeChild(Ljava/util/Spliterator;)Ljava/util/stream/FindOps$FindTask;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist makeChild(Ljava/util/Spliterator;)Ljava/util/stream/FindOps$FindTask;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "TP_IN;>;)",
            "Ljava/util/stream/FindOps$FindTask<",
            "TP_IN;TP_OUT;TO;>;"
        }
    .end annotation

    .line 268
    .local p0, "this":Ljava/util/stream/FindOps$FindTask;, "Ljava/util/stream/FindOps$FindTask<TP_IN;TP_OUT;TO;>;"
    .local p1, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    new-instance v0, Ljava/util/stream/FindOps$FindTask;

    invoke-direct {v0, p0, p1}, Ljava/util/stream/FindOps$FindTask;-><init>(Ljava/util/stream/FindOps$FindTask;Ljava/util/Spliterator;)V

    return-object v0
.end method

.method public whitelist core-platform-api test-api onCompletion(Ljava/util/concurrent/CountedCompleter;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter<",
            "*>;)V"
        }
    .end annotation

    .line 303
    .local p0, "this":Ljava/util/stream/FindOps$FindTask;, "Ljava/util/stream/FindOps$FindTask<TP_IN;TP_OUT;TO;>;"
    .local p1, "caller":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    iget-object v0, p0, Ljava/util/stream/FindOps$FindTask;->op:Ljava/util/stream/FindOps$FindOp;

    iget-boolean v0, v0, Ljava/util/stream/FindOps$FindOp;->mustFindFirst:Z

    if-eqz v0, :cond_2b

    .line 304
    iget-object v0, p0, Ljava/util/stream/FindOps$FindTask;->leftChild:Ljava/util/stream/AbstractTask;

    check-cast v0, Ljava/util/stream/FindOps$FindTask;

    .local v0, "child":Ljava/util/stream/FindOps$FindTask;, "Ljava/util/stream/FindOps$FindTask<TP_IN;TP_OUT;TO;>;"
    const/4 v1, 0x0

    .local v1, "p":Ljava/util/stream/FindOps$FindTask;, "Ljava/util/stream/FindOps$FindTask<TP_IN;TP_OUT;TO;>;"
    :goto_b
    if-eq v0, v1, :cond_2b

    .line 306
    invoke-virtual {v0}, Ljava/util/stream/FindOps$FindTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v2

    .line 307
    .local v2, "result":Ljava/lang/Object;, "TO;"
    if-eqz v2, :cond_24

    iget-object v3, p0, Ljava/util/stream/FindOps$FindTask;->op:Ljava/util/stream/FindOps$FindOp;

    iget-object v3, v3, Ljava/util/stream/FindOps$FindOp;->presentPredicate:Ljava/util/function/Predicate;

    invoke-interface {v3, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 308
    invoke-virtual {p0, v2}, Ljava/util/stream/FindOps$FindTask;->setLocalResult(Ljava/lang/Object;)V

    .line 309
    invoke-direct {p0, v2}, Ljava/util/stream/FindOps$FindTask;->foundResult(Ljava/lang/Object;)V

    .line 310
    goto :goto_2b

    .line 305
    .end local v2    # "result":Ljava/lang/Object;, "TO;"
    :cond_24
    move-object v1, v0

    iget-object v2, p0, Ljava/util/stream/FindOps$FindTask;->rightChild:Ljava/util/stream/AbstractTask;

    move-object v0, v2

    check-cast v0, Ljava/util/stream/FindOps$FindTask;

    goto :goto_b

    .line 314
    .end local v0    # "child":Ljava/util/stream/FindOps$FindTask;, "Ljava/util/stream/FindOps$FindTask<TP_IN;TP_OUT;TO;>;"
    .end local v1    # "p":Ljava/util/stream/FindOps$FindTask;, "Ljava/util/stream/FindOps$FindTask<TP_IN;TP_OUT;TO;>;"
    :cond_2b
    :goto_2b
    invoke-super {p0, p1}, Ljava/util/stream/AbstractShortCircuitTask;->onCompletion(Ljava/util/concurrent/CountedCompleter;)V

    .line 315
    return-void
.end method
