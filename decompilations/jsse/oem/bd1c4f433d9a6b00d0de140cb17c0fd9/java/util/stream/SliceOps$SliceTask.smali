.class final Ljava/util/stream/SliceOps$SliceTask;
.super Ljava/util/stream/AbstractShortCircuitTask;
.source "SliceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/SliceOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SliceTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        "P_OUT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/AbstractShortCircuitTask",
        "<TP_IN;TP_OUT;",
        "Ljava/util/stream/Node",
        "<TP_OUT;>;",
        "Ljava/util/stream/SliceOps$SliceTask",
        "<TP_IN;TP_OUT;>;>;"
    }
.end annotation


# instance fields
.field private volatile completed:Z

.field private final generator:Ljava/util/function/IntFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/IntFunction",
            "<[TP_OUT;>;"
        }
    .end annotation
.end field

.field private final op:Ljava/util/stream/AbstractPipeline;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/AbstractPipeline",
            "<TP_OUT;TP_OUT;*>;"
        }
    .end annotation
.end field

.field private final targetOffset:J

.field private final targetSize:J

.field private thisNodeSize:J


# direct methods
.method constructor <init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/IntFunction;JJ)V
    .registers 10
    .param p5, "offset"    # J
    .param p7, "size"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/AbstractPipeline",
            "<TP_OUT;TP_OUT;*>;",
            "Ljava/util/stream/PipelineHelper",
            "<TP_OUT;>;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;",
            "Ljava/util/function/IntFunction",
            "<[TP_OUT;>;JJ)V"
        }
    .end annotation

    .prologue
    .line 573
    .local p0, "this":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    .local p1, "op":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TP_OUT;TP_OUT;*>;"
    .local p2, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TP_OUT;>;"
    .local p3, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p4, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TP_OUT;>;"
    invoke-direct {p0, p2, p3}, Ljava/util/stream/AbstractShortCircuitTask;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)V

    .line 574
    iput-object p1, p0, Ljava/util/stream/SliceOps$SliceTask;->op:Ljava/util/stream/AbstractPipeline;

    .line 575
    iput-object p4, p0, Ljava/util/stream/SliceOps$SliceTask;->generator:Ljava/util/function/IntFunction;

    .line 576
    iput-wide p5, p0, Ljava/util/stream/SliceOps$SliceTask;->targetOffset:J

    .line 577
    iput-wide p7, p0, Ljava/util/stream/SliceOps$SliceTask;->targetSize:J

    .line 578
    return-void
.end method

.method constructor <init>(Ljava/util/stream/SliceOps$SliceTask;Ljava/util/Spliterator;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/SliceOps$SliceTask",
            "<TP_IN;TP_OUT;>;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)V"
        }
    .end annotation

    .prologue
    .line 581
    .local p0, "this":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    .local p1, "parent":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/AbstractShortCircuitTask;-><init>(Ljava/util/stream/AbstractShortCircuitTask;Ljava/util/Spliterator;)V

    .line 582
    iget-object v0, p1, Ljava/util/stream/SliceOps$SliceTask;->op:Ljava/util/stream/AbstractPipeline;

    iput-object v0, p0, Ljava/util/stream/SliceOps$SliceTask;->op:Ljava/util/stream/AbstractPipeline;

    .line 583
    iget-object v0, p1, Ljava/util/stream/SliceOps$SliceTask;->generator:Ljava/util/function/IntFunction;

    iput-object v0, p0, Ljava/util/stream/SliceOps$SliceTask;->generator:Ljava/util/function/IntFunction;

    .line 584
    iget-wide v0, p1, Ljava/util/stream/SliceOps$SliceTask;->targetOffset:J

    iput-wide v0, p0, Ljava/util/stream/SliceOps$SliceTask;->targetOffset:J

    .line 585
    iget-wide v0, p1, Ljava/util/stream/SliceOps$SliceTask;->targetSize:J

    iput-wide v0, p0, Ljava/util/stream/SliceOps$SliceTask;->targetSize:J

    .line 586
    return-void
.end method

.method private completedSize(J)J
    .registers 10
    .param p1, "target"    # J

    .prologue
    .line 699
    .local p0, "this":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    iget-boolean v4, p0, Ljava/util/stream/SliceOps$SliceTask;->completed:Z

    if-eqz v4, :cond_7

    .line 700
    iget-wide v4, p0, Ljava/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    return-wide v4

    .line 702
    :cond_7
    iget-object v0, p0, Ljava/util/stream/SliceOps$SliceTask;->leftChild:Ljava/util/stream/AbstractTask;

    check-cast v0, Ljava/util/stream/SliceOps$SliceTask;

    .line 703
    .local v0, "left":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    iget-object v1, p0, Ljava/util/stream/SliceOps$SliceTask;->rightChild:Ljava/util/stream/AbstractTask;

    check-cast v1, Ljava/util/stream/SliceOps$SliceTask;

    .line 704
    .local v1, "right":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    if-eqz v0, :cond_13

    if-nez v1, :cond_16

    .line 706
    :cond_13
    iget-wide v4, p0, Ljava/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    return-wide v4

    .line 709
    :cond_16
    invoke-direct {v0, p1, p2}, Ljava/util/stream/SliceOps$SliceTask;->completedSize(J)J

    move-result-wide v2

    .line 710
    .local v2, "leftSize":J
    cmp-long v4, v2, p1

    if-ltz v4, :cond_1f

    .end local v2    # "leftSize":J
    :goto_1e
    return-wide v2

    .restart local v2    # "leftSize":J
    :cond_1f
    invoke-direct {v1, p1, p2}, Ljava/util/stream/SliceOps$SliceTask;->completedSize(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_1e
.end method

.method private doTruncate(Ljava/util/stream/Node;)Ljava/util/stream/Node;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Node",
            "<TP_OUT;>;)",
            "Ljava/util/stream/Node",
            "<TP_OUT;>;"
        }
    .end annotation

    .prologue
    .line 657
    .local p0, "this":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    .local p1, "input":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    iget-wide v0, p0, Ljava/util/stream/SliceOps$SliceTask;->targetSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1f

    invoke-interface {p1}, Ljava/util/stream/Node;->count()J

    move-result-wide v0

    iget-wide v2, p0, Ljava/util/stream/SliceOps$SliceTask;->targetOffset:J

    iget-wide v6, p0, Ljava/util/stream/SliceOps$SliceTask;->targetSize:J

    add-long/2addr v2, v6

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 658
    .local v4, "to":J
    :goto_15
    iget-wide v2, p0, Ljava/util/stream/SliceOps$SliceTask;->targetOffset:J

    iget-object v6, p0, Ljava/util/stream/SliceOps$SliceTask;->generator:Ljava/util/function/IntFunction;

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Ljava/util/stream/Node;->truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node;

    move-result-object v0

    return-object v0

    .line 657
    .end local v4    # "to":J
    :cond_1f
    iget-wide v4, p0, Ljava/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    .restart local v4    # "to":J
    goto :goto_15
.end method

.method private isLeftCompleted(J)Z
    .registers 12
    .param p1, "target"    # J

    .prologue
    .local p0, "this":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    const/4 v3, 0x1

    .line 670
    iget-boolean v6, p0, Ljava/util/stream/SliceOps$SliceTask;->completed:Z

    if-eqz v6, :cond_c

    iget-wide v4, p0, Ljava/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    .line 671
    .local v4, "size":J
    :goto_7
    cmp-long v6, v4, p1

    if-ltz v6, :cond_11

    .line 672
    return v3

    .line 670
    .end local v4    # "size":J
    :cond_c
    invoke-direct {p0, p1, p2}, Ljava/util/stream/SliceOps$SliceTask;->completedSize(J)J

    move-result-wide v4

    .restart local v4    # "size":J
    goto :goto_7

    .line 673
    :cond_11
    invoke-virtual {p0}, Ljava/util/stream/SliceOps$SliceTask;->getParent()Ljava/util/stream/AbstractTask;

    move-result-object v2

    check-cast v2, Ljava/util/stream/SliceOps$SliceTask;

    .local v2, "parent":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    move-object v1, p0

    .local v1, "node":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    :goto_18
    if-eqz v2, :cond_36

    .line 676
    iget-object v6, v2, Ljava/util/stream/SliceOps$SliceTask;->rightChild:Ljava/util/stream/AbstractTask;

    if-ne v1, v6, :cond_2e

    .line 677
    iget-object v0, v2, Ljava/util/stream/SliceOps$SliceTask;->leftChild:Ljava/util/stream/AbstractTask;

    check-cast v0, Ljava/util/stream/SliceOps$SliceTask;

    .line 678
    .local v0, "left":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    if-eqz v0, :cond_2e

    .line 679
    invoke-direct {v0, p1, p2}, Ljava/util/stream/SliceOps$SliceTask;->completedSize(J)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 680
    cmp-long v6, v4, p1

    if-ltz v6, :cond_2e

    .line 681
    return v3

    .line 675
    .end local v0    # "left":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    :cond_2e
    move-object v1, v2

    invoke-virtual {v2}, Ljava/util/stream/SliceOps$SliceTask;->getParent()Ljava/util/stream/AbstractTask;

    move-result-object v2

    .end local v2    # "parent":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    check-cast v2, Ljava/util/stream/SliceOps$SliceTask;

    .restart local v2    # "parent":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    goto :goto_18

    .line 685
    :cond_36
    cmp-long v6, v4, p1

    if-ltz v6, :cond_3b

    :goto_3a
    return v3

    :cond_3b
    const/4 v3, 0x0

    goto :goto_3a
.end method


# virtual methods
.method protected cancel()V
    .registers 2

    .prologue
    .line 651
    .local p0, "this":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    invoke-super {p0}, Ljava/util/stream/AbstractShortCircuitTask;->cancel()V

    .line 652
    iget-boolean v0, p0, Ljava/util/stream/SliceOps$SliceTask;->completed:Z

    if-eqz v0, :cond_e

    .line 653
    invoke-virtual {p0}, Ljava/util/stream/SliceOps$SliceTask;->getEmptyResult()Ljava/util/stream/Node;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/SliceOps$SliceTask;->setLocalResult(Ljava/lang/Object;)V

    .line 654
    :cond_e
    return-void
.end method

.method protected bridge synthetic doLeaf()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 598
    .local p0, "this":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    invoke-virtual {p0}, Ljava/util/stream/SliceOps$SliceTask;->doLeaf()Ljava/util/stream/Node;

    move-result-object v0

    return-object v0
.end method

.method protected final doLeaf()Ljava/util/stream/Node;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Node",
            "<TP_OUT;>;"
        }
    .end annotation

    .prologue
    .line 600
    .local p0, "this":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    invoke-virtual {p0}, Ljava/util/stream/SliceOps$SliceTask;->isRoot()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 601
    sget-object v3, Ljava/util/stream/StreamOpFlag;->SIZED:Ljava/util/stream/StreamOpFlag;

    iget-object v6, p0, Ljava/util/stream/SliceOps$SliceTask;->op:Ljava/util/stream/AbstractPipeline;

    iget v6, v6, Ljava/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    invoke-virtual {v3, v6}, Ljava/util/stream/StreamOpFlag;->isPreserved(I)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 602
    iget-object v3, p0, Ljava/util/stream/SliceOps$SliceTask;->op:Ljava/util/stream/AbstractPipeline;

    iget-object v6, p0, Ljava/util/stream/SliceOps$SliceTask;->spliterator:Ljava/util/Spliterator;

    invoke-virtual {v3, v6}, Ljava/util/stream/AbstractPipeline;->exactOutputSizeIfKnown(Ljava/util/Spliterator;)J

    move-result-wide v4

    .line 604
    .local v4, "sizeIfKnown":J
    :goto_1a
    iget-object v3, p0, Ljava/util/stream/SliceOps$SliceTask;->op:Ljava/util/stream/AbstractPipeline;

    iget-object v6, p0, Ljava/util/stream/SliceOps$SliceTask;->generator:Ljava/util/function/IntFunction;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/stream/AbstractPipeline;->makeNodeBuilder(JLjava/util/function/IntFunction;)Ljava/util/stream/Node$Builder;

    move-result-object v0

    .line 605
    .local v0, "nb":Ljava/util/stream/Node$Builder;, "Ljava/util/stream/Node$Builder<TP_OUT;>;"
    iget-object v3, p0, Ljava/util/stream/SliceOps$SliceTask;->op:Ljava/util/stream/AbstractPipeline;

    iget-object v6, p0, Ljava/util/stream/SliceOps$SliceTask;->helper:Ljava/util/stream/PipelineHelper;

    invoke-virtual {v6}, Ljava/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v6

    invoke-virtual {v3, v6, v0}, Ljava/util/stream/AbstractPipeline;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;

    move-result-object v2

    .line 606
    .local v2, "opSink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<TP_OUT;>;"
    iget-object v3, p0, Ljava/util/stream/SliceOps$SliceTask;->helper:Ljava/util/stream/PipelineHelper;

    iget-object v6, p0, Ljava/util/stream/SliceOps$SliceTask;->helper:Ljava/util/stream/PipelineHelper;

    invoke-virtual {v6, v2}, Ljava/util/stream/PipelineHelper;->wrapSink(Ljava/util/stream/Sink;)Ljava/util/stream/Sink;

    move-result-object v6

    iget-object v7, p0, Ljava/util/stream/SliceOps$SliceTask;->spliterator:Ljava/util/Spliterator;

    invoke-virtual {v3, v6, v7}, Ljava/util/stream/PipelineHelper;->copyIntoWithCancel(Ljava/util/stream/Sink;Ljava/util/Spliterator;)V

    .line 609
    invoke-interface {v0}, Ljava/util/stream/Node$Builder;->build()Ljava/util/stream/Node;

    move-result-object v3

    return-object v3

    .line 603
    .end local v0    # "nb":Ljava/util/stream/Node$Builder;, "Ljava/util/stream/Node$Builder<TP_OUT;>;"
    .end local v2    # "opSink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<TP_OUT;>;"
    .end local v4    # "sizeIfKnown":J
    :cond_40
    const-wide/16 v4, -0x1

    .restart local v4    # "sizeIfKnown":J
    goto :goto_1a

    .line 612
    .end local v4    # "sizeIfKnown":J
    :cond_43
    iget-object v3, p0, Ljava/util/stream/SliceOps$SliceTask;->helper:Ljava/util/stream/PipelineHelper;

    iget-object v6, p0, Ljava/util/stream/SliceOps$SliceTask;->helper:Ljava/util/stream/PipelineHelper;

    const-wide/16 v8, -0x1

    iget-object v7, p0, Ljava/util/stream/SliceOps$SliceTask;->generator:Ljava/util/function/IntFunction;

    invoke-virtual {v6, v8, v9, v7}, Ljava/util/stream/PipelineHelper;->makeNodeBuilder(JLjava/util/function/IntFunction;)Ljava/util/stream/Node$Builder;

    move-result-object v6

    .line 613
    iget-object v7, p0, Ljava/util/stream/SliceOps$SliceTask;->spliterator:Ljava/util/Spliterator;

    .line 612
    invoke-virtual {v3, v6, v7}, Ljava/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava/util/stream/Sink;Ljava/util/Spliterator;)Ljava/util/stream/Sink;

    move-result-object v3

    check-cast v3, Ljava/util/stream/Node$Builder;

    invoke-interface {v3}, Ljava/util/stream/Node$Builder;->build()Ljava/util/stream/Node;

    move-result-object v1

    .line 614
    .local v1, "node":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    invoke-interface {v1}, Ljava/util/stream/Node;->count()J

    move-result-wide v6

    iput-wide v6, p0, Ljava/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    .line 615
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/util/stream/SliceOps$SliceTask;->completed:Z

    .line 616
    const/4 v3, 0x0

    iput-object v3, p0, Ljava/util/stream/SliceOps$SliceTask;->spliterator:Ljava/util/Spliterator;

    .line 617
    return-object v1
.end method

.method protected bridge synthetic getEmptyResult()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 593
    .local p0, "this":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    invoke-virtual {p0}, Ljava/util/stream/SliceOps$SliceTask;->getEmptyResult()Ljava/util/stream/Node;

    move-result-object v0

    return-object v0
.end method

.method protected final getEmptyResult()Ljava/util/stream/Node;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Node",
            "<TP_OUT;>;"
        }
    .end annotation

    .prologue
    .line 595
    .local p0, "this":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    iget-object v0, p0, Ljava/util/stream/SliceOps$SliceTask;->op:Ljava/util/stream/AbstractPipeline;

    invoke-virtual {v0}, Ljava/util/stream/AbstractPipeline;->getOutputShape()Ljava/util/stream/StreamShape;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Nodes;->emptyNode(Ljava/util/stream/StreamShape;)Ljava/util/stream/Node;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic makeChild(Ljava/util/Spliterator;)Ljava/util/stream/AbstractTask;
    .registers 3

    .prologue
    .line 588
    .local p0, "this":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    invoke-virtual {p0, p1}, Ljava/util/stream/SliceOps$SliceTask;->makeChild(Ljava/util/Spliterator;)Ljava/util/stream/SliceOps$SliceTask;

    move-result-object v0

    return-object v0
.end method

.method protected makeChild(Ljava/util/Spliterator;)Ljava/util/stream/SliceOps$SliceTask;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)",
            "Ljava/util/stream/SliceOps$SliceTask",
            "<TP_IN;TP_OUT;>;"
        }
    .end annotation

    .prologue
    .line 590
    .local p0, "this":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    .local p1, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    new-instance v0, Ljava/util/stream/SliceOps$SliceTask;

    invoke-direct {v0, p0, p1}, Ljava/util/stream/SliceOps$SliceTask;-><init>(Ljava/util/stream/SliceOps$SliceTask;Ljava/util/Spliterator;)V

    return-object v0
.end method

.method public final onCompletion(Ljava/util/concurrent/CountedCompleter;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    .local p1, "caller":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    const-wide/16 v6, 0x0

    .line 623
    invoke-virtual {p0}, Ljava/util/stream/SliceOps$SliceTask;->isLeaf()Z

    move-result v1

    if-nez v1, :cond_31

    .line 625
    iget-object v1, p0, Ljava/util/stream/SliceOps$SliceTask;->leftChild:Ljava/util/stream/AbstractTask;

    check-cast v1, Ljava/util/stream/SliceOps$SliceTask;

    iget-wide v2, v1, Ljava/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    iget-object v1, p0, Ljava/util/stream/SliceOps$SliceTask;->rightChild:Ljava/util/stream/AbstractTask;

    check-cast v1, Ljava/util/stream/SliceOps$SliceTask;

    iget-wide v4, v1, Ljava/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Ljava/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    .line 626
    iget-boolean v1, p0, Ljava/util/stream/SliceOps$SliceTask;->canceled:Z

    if-eqz v1, :cond_51

    .line 627
    iput-wide v6, p0, Ljava/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    .line 628
    invoke-virtual {p0}, Ljava/util/stream/SliceOps$SliceTask;->getEmptyResult()Ljava/util/stream/Node;

    move-result-object v0

    .line 638
    .local v0, "result":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    :goto_21
    invoke-virtual {p0}, Ljava/util/stream/SliceOps$SliceTask;->isRoot()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-direct {p0, v0}, Ljava/util/stream/SliceOps$SliceTask;->doTruncate(Ljava/util/stream/Node;)Ljava/util/stream/Node;

    move-result-object v0

    .end local v0    # "result":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    :cond_2b
    invoke-virtual {p0, v0}, Ljava/util/stream/SliceOps$SliceTask;->setLocalResult(Ljava/lang/Object;)V

    .line 639
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/stream/SliceOps$SliceTask;->completed:Z

    .line 641
    :cond_31
    iget-wide v2, p0, Ljava/util/stream/SliceOps$SliceTask;->targetSize:J

    cmp-long v1, v2, v6

    if-ltz v1, :cond_4d

    .line 642
    invoke-virtual {p0}, Ljava/util/stream/SliceOps$SliceTask;->isRoot()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 641
    if-eqz v1, :cond_4d

    .line 643
    iget-wide v2, p0, Ljava/util/stream/SliceOps$SliceTask;->targetOffset:J

    iget-wide v4, p0, Ljava/util/stream/SliceOps$SliceTask;->targetSize:J

    add-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Ljava/util/stream/SliceOps$SliceTask;->isLeftCompleted(J)Z

    move-result v1

    .line 641
    if-eqz v1, :cond_4d

    .line 644
    invoke-virtual {p0}, Ljava/util/stream/SliceOps$SliceTask;->cancelLaterNodes()V

    .line 646
    :cond_4d
    invoke-super {p0, p1}, Ljava/util/stream/AbstractShortCircuitTask;->onCompletion(Ljava/util/concurrent/CountedCompleter;)V

    .line 647
    return-void

    .line 630
    :cond_51
    iget-wide v2, p0, Ljava/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    cmp-long v1, v2, v6

    if-nez v1, :cond_5c

    .line 631
    invoke-virtual {p0}, Ljava/util/stream/SliceOps$SliceTask;->getEmptyResult()Ljava/util/stream/Node;

    move-result-object v0

    .restart local v0    # "result":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    goto :goto_21

    .line 632
    .end local v0    # "result":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    :cond_5c
    iget-object v1, p0, Ljava/util/stream/SliceOps$SliceTask;->leftChild:Ljava/util/stream/AbstractTask;

    check-cast v1, Ljava/util/stream/SliceOps$SliceTask;

    iget-wide v2, v1, Ljava/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    cmp-long v1, v2, v6

    if-nez v1, :cond_71

    .line 633
    iget-object v1, p0, Ljava/util/stream/SliceOps$SliceTask;->rightChild:Ljava/util/stream/AbstractTask;

    check-cast v1, Ljava/util/stream/SliceOps$SliceTask;

    invoke-virtual {v1}, Ljava/util/stream/SliceOps$SliceTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Node;

    .restart local v0    # "result":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    goto :goto_21

    .line 635
    .end local v0    # "result":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    :cond_71
    iget-object v1, p0, Ljava/util/stream/SliceOps$SliceTask;->op:Ljava/util/stream/AbstractPipeline;

    invoke-virtual {v1}, Ljava/util/stream/AbstractPipeline;->getOutputShape()Ljava/util/stream/StreamShape;

    move-result-object v3

    .line 636
    iget-object v1, p0, Ljava/util/stream/SliceOps$SliceTask;->leftChild:Ljava/util/stream/AbstractTask;

    check-cast v1, Ljava/util/stream/SliceOps$SliceTask;

    invoke-virtual {v1}, Ljava/util/stream/SliceOps$SliceTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/stream/Node;

    iget-object v2, p0, Ljava/util/stream/SliceOps$SliceTask;->rightChild:Ljava/util/stream/AbstractTask;

    check-cast v2, Ljava/util/stream/SliceOps$SliceTask;

    invoke-virtual {v2}, Ljava/util/stream/SliceOps$SliceTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/stream/Node;

    .line 635
    invoke-static {v3, v1, v2}, Ljava/util/stream/Nodes;->conc(Ljava/util/stream/StreamShape;Ljava/util/stream/Node;Ljava/util/stream/Node;)Ljava/util/stream/Node;

    move-result-object v0

    .restart local v0    # "result":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    goto :goto_21
.end method
