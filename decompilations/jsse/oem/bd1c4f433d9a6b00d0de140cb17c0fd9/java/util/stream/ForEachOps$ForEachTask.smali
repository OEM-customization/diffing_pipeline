.class final Ljava/util/stream/ForEachOps$ForEachTask;
.super Ljava/util/concurrent/CountedCompleter;
.source "ForEachOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/ForEachOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ForEachTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/CountedCompleter",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final helper:Ljava/util/stream/PipelineHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/PipelineHelper",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final sink:Ljava/util/stream/Sink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/Sink",
            "<TS;>;"
        }
    .end annotation
.end field

.field private spliterator:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Spliterator",
            "<TS;>;"
        }
    .end annotation
.end field

.field private targetSize:J


# direct methods
.method constructor <init>(Ljava/util/stream/ForEachOps$ForEachTask;Ljava/util/Spliterator;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/ForEachOps$ForEachTask",
            "<TS;TT;>;",
            "Ljava/util/Spliterator",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 271
    .local p0, "this":Ljava/util/stream/ForEachOps$ForEachTask;, "Ljava/util/stream/ForEachOps$ForEachTask<TS;TT;>;"
    .local p1, "parent":Ljava/util/stream/ForEachOps$ForEachTask;, "Ljava/util/stream/ForEachOps$ForEachTask<TS;TT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TS;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 272
    iput-object p2, p0, Ljava/util/stream/ForEachOps$ForEachTask;->spliterator:Ljava/util/Spliterator;

    .line 273
    iget-object v0, p1, Ljava/util/stream/ForEachOps$ForEachTask;->sink:Ljava/util/stream/Sink;

    iput-object v0, p0, Ljava/util/stream/ForEachOps$ForEachTask;->sink:Ljava/util/stream/Sink;

    .line 274
    iget-wide v0, p1, Ljava/util/stream/ForEachOps$ForEachTask;->targetSize:J

    iput-wide v0, p0, Ljava/util/stream/ForEachOps$ForEachTask;->targetSize:J

    .line 275
    iget-object v0, p1, Ljava/util/stream/ForEachOps$ForEachTask;->helper:Ljava/util/stream/PipelineHelper;

    iput-object v0, p0, Ljava/util/stream/ForEachOps$ForEachTask;->helper:Ljava/util/stream/PipelineHelper;

    .line 276
    return-void
.end method

.method constructor <init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/stream/Sink;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/PipelineHelper",
            "<TT;>;",
            "Ljava/util/Spliterator",
            "<TS;>;",
            "Ljava/util/stream/Sink",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 263
    .local p0, "this":Ljava/util/stream/ForEachOps$ForEachTask;, "Ljava/util/stream/ForEachOps$ForEachTask<TS;TT;>;"
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TS;>;"
    .local p3, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<TS;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 264
    iput-object p3, p0, Ljava/util/stream/ForEachOps$ForEachTask;->sink:Ljava/util/stream/Sink;

    .line 265
    iput-object p1, p0, Ljava/util/stream/ForEachOps$ForEachTask;->helper:Ljava/util/stream/PipelineHelper;

    .line 266
    iput-object p2, p0, Ljava/util/stream/ForEachOps$ForEachTask;->spliterator:Ljava/util/Spliterator;

    .line 267
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/stream/ForEachOps$ForEachTask;->targetSize:J

    .line 268
    return-void
.end method


# virtual methods
.method public compute()V
    .registers 16

    .prologue
    .local p0, "this":Ljava/util/stream/ForEachOps$ForEachTask;, "Ljava/util/stream/ForEachOps$ForEachTask<TS;TT;>;"
    const/4 v14, 0x0

    .line 280
    iget-object v4, p0, Ljava/util/stream/ForEachOps$ForEachTask;->spliterator:Ljava/util/Spliterator;

    .line 281
    .local v4, "rightSplit":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TS;>;"
    invoke-interface {v4}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v6

    .line 282
    .local v6, "sizeEstimate":J
    iget-wide v8, p0, Ljava/util/stream/ForEachOps$ForEachTask;->targetSize:J

    .local v8, "sizeThreshold":J
    const-wide/16 v12, 0x0

    cmp-long v12, v8, v12

    if-nez v12, :cond_15

    .line 283
    invoke-static {v6, v7}, Ljava/util/stream/AbstractTask;->suggestTargetSize(J)J

    move-result-wide v8

    iput-wide v8, p0, Ljava/util/stream/ForEachOps$ForEachTask;->targetSize:J

    .line 284
    :cond_15
    sget-object v12, Ljava/util/stream/StreamOpFlag;->SHORT_CIRCUIT:Ljava/util/stream/StreamOpFlag;

    iget-object v13, p0, Ljava/util/stream/ForEachOps$ForEachTask;->helper:Ljava/util/stream/PipelineHelper;

    invoke-virtual {v13}, Ljava/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v1

    .line 285
    .local v1, "isShortCircuit":Z
    const/4 v0, 0x0

    .line 286
    .local v0, "forkRight":Z
    iget-object v10, p0, Ljava/util/stream/ForEachOps$ForEachTask;->sink:Ljava/util/stream/Sink;

    .line 287
    .local v10, "taskSink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<TS;>;"
    move-object v5, p0

    .line 288
    .local v5, "task":Ljava/util/stream/ForEachOps$ForEachTask;, "Ljava/util/stream/ForEachOps$ForEachTask<TS;TT;>;"
    :goto_25
    if-eqz v1, :cond_2f

    invoke-interface {v10}, Ljava/util/stream/Sink;->cancellationRequested()Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_3e

    .line 289
    :cond_2f
    cmp-long v12, v6, v8

    if-lez v12, :cond_39

    .line 290
    invoke-interface {v4}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v2

    .local v2, "leftSplit":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TS;>;"
    if-nez v2, :cond_44

    .line 291
    .end local v2    # "leftSplit":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TS;>;"
    :cond_39
    iget-object v12, v5, Ljava/util/stream/ForEachOps$ForEachTask;->helper:Ljava/util/stream/PipelineHelper;

    invoke-virtual {v12, v10, v4}, Ljava/util/stream/PipelineHelper;->copyInto(Ljava/util/stream/Sink;Ljava/util/Spliterator;)V

    .line 310
    :cond_3e
    iput-object v14, v5, Ljava/util/stream/ForEachOps$ForEachTask;->spliterator:Ljava/util/Spliterator;

    .line 311
    invoke-virtual {v5}, Ljava/util/stream/ForEachOps$ForEachTask;->propagateCompletion()V

    .line 312
    return-void

    .line 294
    .restart local v2    # "leftSplit":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TS;>;"
    :cond_44
    new-instance v3, Ljava/util/stream/ForEachOps$ForEachTask;

    invoke-direct {v3, v5, v2}, Ljava/util/stream/ForEachOps$ForEachTask;-><init>(Ljava/util/stream/ForEachOps$ForEachTask;Ljava/util/Spliterator;)V

    .line 295
    .local v3, "leftTask":Ljava/util/stream/ForEachOps$ForEachTask;, "Ljava/util/stream/ForEachOps$ForEachTask<TS;TT;>;"
    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Ljava/util/stream/ForEachOps$ForEachTask;->addToPendingCount(I)V

    .line 297
    if-eqz v0, :cond_5b

    .line 298
    const/4 v0, 0x0

    .line 299
    move-object v4, v2

    .line 300
    move-object v11, v5

    .line 301
    .local v11, "taskToFork":Ljava/util/stream/ForEachOps$ForEachTask;, "Ljava/util/stream/ForEachOps$ForEachTask<TS;TT;>;"
    move-object v5, v3

    .line 307
    :goto_53
    invoke-virtual {v11}, Ljava/util/stream/ForEachOps$ForEachTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 308
    invoke-interface {v4}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v6

    goto :goto_25

    .line 304
    .end local v11    # "taskToFork":Ljava/util/stream/ForEachOps$ForEachTask;, "Ljava/util/stream/ForEachOps$ForEachTask<TS;TT;>;"
    :cond_5b
    const/4 v0, 0x1

    .line 305
    move-object v11, v3

    .restart local v11    # "taskToFork":Ljava/util/stream/ForEachOps$ForEachTask;, "Ljava/util/stream/ForEachOps$ForEachTask<TS;TT;>;"
    goto :goto_53
.end method
