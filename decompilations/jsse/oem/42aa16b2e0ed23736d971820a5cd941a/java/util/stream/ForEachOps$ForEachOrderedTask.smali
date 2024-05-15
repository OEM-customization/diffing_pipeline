.class final Ljava/util/stream/ForEachOps$ForEachOrderedTask;
.super Ljava/util/concurrent/CountedCompleter;
.source "ForEachOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/ForEachOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ForEachOrderedTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/CountedCompleter<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist action:Ljava/util/stream/Sink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/Sink<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final blacklist completionMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/util/stream/ForEachOps$ForEachOrderedTask<",
            "TS;TT;>;",
            "Ljava/util/stream/ForEachOps$ForEachOrderedTask<",
            "TS;TT;>;>;"
        }
    .end annotation
.end field

.field private final blacklist helper:Ljava/util/stream/PipelineHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/PipelineHelper<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final blacklist leftPredecessor:Ljava/util/stream/ForEachOps$ForEachOrderedTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/ForEachOps$ForEachOrderedTask<",
            "TS;TT;>;"
        }
    .end annotation
.end field

.field private blacklist node:Ljava/util/stream/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/Node<",
            "TT;>;"
        }
    .end annotation
.end field

.field private blacklist spliterator:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Spliterator<",
            "TS;>;"
        }
    .end annotation
.end field

.field private final blacklist targetSize:J


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/ForEachOps$ForEachOrderedTask;Ljava/util/Spliterator;Ljava/util/stream/ForEachOps$ForEachOrderedTask;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/ForEachOps$ForEachOrderedTask<",
            "TS;TT;>;",
            "Ljava/util/Spliterator<",
            "TS;>;",
            "Ljava/util/stream/ForEachOps$ForEachOrderedTask<",
            "TS;TT;>;)V"
        }
    .end annotation

    .line 389
    .local p0, "this":Ljava/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    .local p1, "parent":Ljava/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TS;>;"
    .local p3, "leftPredecessor":Ljava/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 390
    iget-object v0, p1, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->helper:Ljava/util/stream/PipelineHelper;

    iput-object v0, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->helper:Ljava/util/stream/PipelineHelper;

    .line 391
    iput-object p2, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->spliterator:Ljava/util/Spliterator;

    .line 392
    iget-wide v0, p1, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->targetSize:J

    iput-wide v0, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->targetSize:J

    .line 393
    iget-object v0, p1, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->completionMap:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object v0, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->completionMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 394
    iget-object v0, p1, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->action:Ljava/util/stream/Sink;

    iput-object v0, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->action:Ljava/util/stream/Sink;

    .line 395
    iput-object p3, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->leftPredecessor:Ljava/util/stream/ForEachOps$ForEachOrderedTask;

    .line 396
    return-void
.end method

.method protected constructor blacklist <init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/stream/Sink;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/PipelineHelper<",
            "TT;>;",
            "Ljava/util/Spliterator<",
            "TS;>;",
            "Ljava/util/stream/Sink<",
            "TT;>;)V"
        }
    .end annotation

    .line 376
    .local p0, "this":Ljava/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TS;>;"
    .local p3, "action":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 377
    iput-object p1, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->helper:Ljava/util/stream/PipelineHelper;

    .line 378
    iput-object p2, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->spliterator:Ljava/util/Spliterator;

    .line 379
    invoke-interface {p2}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/util/stream/AbstractTask;->suggestTargetSize(J)J

    move-result-wide v1

    iput-wide v1, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->targetSize:J

    .line 381
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    sget v2, Ljava/util/stream/AbstractTask;->LEAF_TARGET:I

    shl-int/lit8 v2, v2, 0x1

    const/16 v3, 0x10

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v1, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->completionMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 382
    iput-object p3, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->action:Ljava/util/stream/Sink;

    .line 383
    iput-object v0, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->leftPredecessor:Ljava/util/stream/ForEachOps$ForEachOrderedTask;

    .line 384
    return-void
.end method

.method private static blacklist doCompute(Ljava/util/stream/ForEachOps$ForEachOrderedTask;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/ForEachOps$ForEachOrderedTask<",
            "TS;TT;>;)V"
        }
    .end annotation

    .line 404
    .local p0, "task":Ljava/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    iget-object v0, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->spliterator:Ljava/util/Spliterator;

    .line 405
    .local v0, "rightSplit":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TS;>;"
    iget-wide v1, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->targetSize:J

    .line 406
    .local v1, "sizeThreshold":J
    const/4 v3, 0x0

    .line 407
    .local v3, "forkRight":Z
    :goto_5
    invoke-interface {v0}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v4

    cmp-long v4, v4, v1

    if-lez v4, :cond_53

    .line 408
    invoke-interface {v0}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v4

    move-object v5, v4

    .local v5, "leftSplit":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TS;>;"
    if-eqz v4, :cond_53

    .line 409
    new-instance v4, Ljava/util/stream/ForEachOps$ForEachOrderedTask;

    iget-object v6, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->leftPredecessor:Ljava/util/stream/ForEachOps$ForEachOrderedTask;

    invoke-direct {v4, p0, v5, v6}, Ljava/util/stream/ForEachOps$ForEachOrderedTask;-><init>(Ljava/util/stream/ForEachOps$ForEachOrderedTask;Ljava/util/Spliterator;Ljava/util/stream/ForEachOps$ForEachOrderedTask;)V

    .line 411
    .local v4, "leftChild":Ljava/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    new-instance v6, Ljava/util/stream/ForEachOps$ForEachOrderedTask;

    invoke-direct {v6, p0, v0, v4}, Ljava/util/stream/ForEachOps$ForEachOrderedTask;-><init>(Ljava/util/stream/ForEachOps$ForEachOrderedTask;Ljava/util/Spliterator;Ljava/util/stream/ForEachOps$ForEachOrderedTask;)V

    .line 417
    .local v6, "rightChild":Ljava/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->addToPendingCount(I)V

    .line 420
    invoke-virtual {v6, v7}, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->addToPendingCount(I)V

    .line 421
    iget-object v8, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->completionMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    iget-object v8, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->leftPredecessor:Ljava/util/stream/ForEachOps$ForEachOrderedTask;

    if-eqz v8, :cond_45

    .line 434
    invoke-virtual {v4, v7}, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->addToPendingCount(I)V

    .line 437
    iget-object v7, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->completionMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v8, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->leftPredecessor:Ljava/util/stream/ForEachOps$ForEachOrderedTask;

    invoke-virtual {v7, v8, p0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, -0x1

    if-eqz v7, :cond_42

    .line 440
    invoke-virtual {p0, v8}, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->addToPendingCount(I)V

    goto :goto_45

    .line 445
    :cond_42
    invoke-virtual {v4, v8}, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->addToPendingCount(I)V

    .line 450
    :cond_45
    :goto_45
    if-eqz v3, :cond_4c

    .line 451
    const/4 v3, 0x0

    .line 452
    move-object v0, v5

    .line 453
    move-object p0, v4

    .line 454
    move-object v7, v6

    .local v7, "taskToFork":Ljava/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    goto :goto_4f

    .line 457
    .end local v7    # "taskToFork":Ljava/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    :cond_4c
    const/4 v3, 0x1

    .line 458
    move-object p0, v6

    .line 459
    move-object v7, v4

    .line 461
    .restart local v7    # "taskToFork":Ljava/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    :goto_4f
    invoke-virtual {v7}, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 462
    .end local v4    # "leftChild":Ljava/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    .end local v6    # "rightChild":Ljava/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    .end local v7    # "taskToFork":Ljava/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    goto :goto_5

    .line 472
    .end local v5    # "leftSplit":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TS;>;"
    :cond_53
    invoke-virtual {p0}, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->getPendingCount()I

    move-result v4

    if-lez v4, :cond_76

    .line 476
    sget-object v4, Ljava/util/stream/-$$Lambda$ForEachOps$ForEachOrderedTask$XLqga2XPr4V7tlS8H12fiz-In-o;->INSTANCE:Ljava/util/stream/-$$Lambda$ForEachOps$ForEachOrderedTask$XLqga2XPr4V7tlS8H12fiz-In-o;

    .line 477
    .local v4, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    iget-object v5, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->helper:Ljava/util/stream/PipelineHelper;

    .line 478
    invoke-virtual {v5, v0}, Ljava/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljava/util/Spliterator;)J

    move-result-wide v6

    .line 477
    invoke-virtual {v5, v6, v7, v4}, Ljava/util/stream/PipelineHelper;->makeNodeBuilder(JLjava/util/function/IntFunction;)Ljava/util/stream/Node$Builder;

    move-result-object v5

    .line 480
    .local v5, "nb":Ljava/util/stream/Node$Builder;, "Ljava/util/stream/Node$Builder<TT;>;"
    iget-object v6, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->helper:Ljava/util/stream/PipelineHelper;

    invoke-virtual {v6, v5, v0}, Ljava/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava/util/stream/Sink;Ljava/util/Spliterator;)Ljava/util/stream/Sink;

    move-result-object v6

    check-cast v6, Ljava/util/stream/Node$Builder;

    invoke-interface {v6}, Ljava/util/stream/Node$Builder;->build()Ljava/util/stream/Node;

    move-result-object v6

    iput-object v6, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->node:Ljava/util/stream/Node;

    .line 481
    const/4 v6, 0x0

    iput-object v6, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->spliterator:Ljava/util/Spliterator;

    .line 483
    .end local v4    # "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    .end local v5    # "nb":Ljava/util/stream/Node$Builder;, "Ljava/util/stream/Node$Builder<TT;>;"
    :cond_76
    invoke-virtual {p0}, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->tryComplete()V

    .line 484
    return-void
.end method

.method static synthetic blacklist lambda$doCompute$0(I)[Ljava/lang/Object;
    .registers 2
    .param p0, "size"    # I

    .line 476
    new-array v0, p0, [Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final whitelist core-platform-api test-api compute()V
    .registers 1

    .line 400
    .local p0, "this":Ljava/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    invoke-static {p0}, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->doCompute(Ljava/util/stream/ForEachOps$ForEachOrderedTask;)V

    .line 401
    return-void
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

    .line 488
    .local p0, "this":Ljava/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    .local p1, "caller":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    iget-object v0, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->node:Ljava/util/stream/Node;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 490
    iget-object v2, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->action:Ljava/util/stream/Sink;

    invoke-interface {v0, v2}, Ljava/util/stream/Node;->forEach(Ljava/util/function/Consumer;)V

    .line 491
    iput-object v1, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->node:Ljava/util/stream/Node;

    goto :goto_1a

    .line 493
    :cond_d
    iget-object v0, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->spliterator:Ljava/util/Spliterator;

    if-eqz v0, :cond_1a

    .line 495
    iget-object v2, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->helper:Ljava/util/stream/PipelineHelper;

    iget-object v3, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->action:Ljava/util/stream/Sink;

    invoke-virtual {v2, v3, v0}, Ljava/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava/util/stream/Sink;Ljava/util/Spliterator;)Ljava/util/stream/Sink;

    .line 496
    iput-object v1, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->spliterator:Ljava/util/Spliterator;

    .line 503
    :cond_1a
    :goto_1a
    iget-object v0, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->completionMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;

    .line 504
    .local v0, "leftDescendant":Ljava/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    if-eqz v0, :cond_27

    .line 505
    invoke-virtual {v0}, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->tryComplete()V

    .line 506
    :cond_27
    return-void
.end method
