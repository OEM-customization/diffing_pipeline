.class Ljava/util/stream/SliceOps$3;
.super Ljava/util/stream/LongPipeline$StatefulOp;
.source "SliceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/SliceOps;->makeLong(Ljava/util/stream/AbstractPipeline;JJ)Ljava/util/stream/LongStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/LongPipeline$StatefulOp<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$limit:J

.field final synthetic blacklist val$skip:J


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;IJJ)V
    .registers 8
    .param p2, "inputShape"    # Ljava/util/stream/StreamShape;
    .param p3, "opFlags"    # I

    .line 351
    .local p1, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Long;*>;"
    iput-wide p4, p0, Ljava/util/stream/SliceOps$3;->val$skip:J

    iput-wide p6, p0, Ljava/util/stream/SliceOps$3;->val$limit:J

    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/LongPipeline$StatefulOp;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V

    return-void
.end method

.method static synthetic blacklist lambda$opEvaluateParallelLazy$0(I)[Ljava/lang/Long;
    .registers 2
    .param p0, "x$0"    # I

    .line 379
    new-array v0, p0, [Ljava/lang/Long;

    return-object v0
.end method


# virtual methods
.method public blacklist opEvaluateParallel(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/IntFunction;)Ljava/util/stream/Node;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;",
            "Ljava/util/function/IntFunction<",
            "[",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/stream/Node<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 389
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Long;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p3, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[Ljava/lang/Long;>;"
    move-object v9, p0

    invoke-virtual/range {p1 .. p2}, Ljava/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljava/util/Spliterator;)J

    move-result-wide v10

    .line 390
    .local v10, "size":J
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    const/4 v8, 0x1

    if-lez v0, :cond_2e

    const/16 v0, 0x4000

    move-object/from16 v12, p2

    invoke-interface {v12, v0}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 396
    invoke-virtual/range {p1 .. p1}, Ljava/util/stream/PipelineHelper;->getSourceShape()Ljava/util/stream/StreamShape;

    move-result-object v1

    iget-wide v3, v9, Ljava/util/stream/SliceOps$3;->val$skip:J

    iget-wide v5, v9, Ljava/util/stream/SliceOps$3;->val$limit:J

    move-object/from16 v2, p2

    # invokes: Ljava/util/stream/SliceOps;->sliceSpliterator(Ljava/util/stream/StreamShape;Ljava/util/Spliterator;JJ)Ljava/util/Spliterator;
    invoke-static/range {v1 .. v6}, Ljava/util/stream/SliceOps;->access$200(Ljava/util/stream/StreamShape;Ljava/util/Spliterator;JJ)Ljava/util/Spliterator;

    move-result-object v0

    .line 397
    .local v0, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    move-object/from16 v13, p1

    invoke-static {v13, v0, v8}, Ljava/util/stream/Nodes;->collectLong(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Z)Ljava/util/stream/Node$OfLong;

    move-result-object v1

    return-object v1

    .line 390
    .end local v0    # "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    :cond_2b
    move-object/from16 v13, p1

    goto :goto_32

    :cond_2e
    move-object/from16 v13, p1

    move-object/from16 v12, p2

    .line 398
    :goto_32
    sget-object v0, Ljava/util/stream/StreamOpFlag;->ORDERED:Ljava/util/stream/StreamOpFlag;

    invoke-virtual/range {p1 .. p1}, Ljava/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-nez v0, :cond_55

    .line 399
    nop

    .line 400
    invoke-virtual/range {p1 .. p2}, Ljava/util/stream/PipelineHelper;->wrapSpliterator(Ljava/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Spliterator$OfLong;

    iget-wide v2, v9, Ljava/util/stream/SliceOps$3;->val$skip:J

    iget-wide v4, v9, Ljava/util/stream/SliceOps$3;->val$limit:J

    .line 399
    move-object v0, p0

    move-wide v6, v10

    invoke-virtual/range {v0 .. v7}, Ljava/util/stream/SliceOps$3;->unorderedSkipLimitSpliterator(Ljava/util/Spliterator$OfLong;JJJ)Ljava/util/Spliterator$OfLong;

    move-result-object v0

    .line 406
    .local v0, "s":Ljava/util/Spliterator$OfLong;
    invoke-static {p0, v0, v8}, Ljava/util/stream/Nodes;->collectLong(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Z)Ljava/util/stream/Node$OfLong;

    move-result-object v1

    return-object v1

    .line 409
    .end local v0    # "s":Ljava/util/Spliterator$OfLong;
    :cond_55
    new-instance v14, Ljava/util/stream/SliceOps$SliceTask;

    iget-wide v5, v9, Ljava/util/stream/SliceOps$3;->val$skip:J

    iget-wide v7, v9, Ljava/util/stream/SliceOps$3;->val$limit:J

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v8}, Ljava/util/stream/SliceOps$SliceTask;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/IntFunction;JJ)V

    .line 410
    invoke-virtual {v14}, Ljava/util/stream/SliceOps$SliceTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Node;

    .line 409
    return-object v0
.end method

.method public blacklist opEvaluateParallelLazy(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/util/Spliterator;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;)",
            "Ljava/util/Spliterator<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 367
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Long;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    move-object v9, p0

    invoke-virtual/range {p1 .. p2}, Ljava/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljava/util/Spliterator;)J

    move-result-wide v10

    .line 368
    .local v10, "size":J
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-lez v0, :cond_2b

    const/16 v0, 0x4000

    move-object/from16 v12, p2

    invoke-interface {v12, v0}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 369
    new-instance v0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfLong;

    .line 370
    invoke-virtual/range {p1 .. p2}, Ljava/util/stream/PipelineHelper;->wrapSpliterator(Ljava/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/Spliterator$OfLong;

    iget-wide v3, v9, Ljava/util/stream/SliceOps$3;->val$skip:J

    iget-wide v5, v9, Ljava/util/stream/SliceOps$3;->val$limit:J

    .line 372
    # invokes: Ljava/util/stream/SliceOps;->calcSliceFence(JJ)J
    invoke-static {v3, v4, v5, v6}, Ljava/util/stream/SliceOps;->access$000(JJ)J

    move-result-wide v5

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfLong;-><init>(Ljava/util/Spliterator$OfLong;JJ)V

    .line 369
    return-object v0

    .line 368
    :cond_2b
    move-object/from16 v12, p2

    .line 373
    :cond_2d
    sget-object v0, Ljava/util/stream/StreamOpFlag;->ORDERED:Ljava/util/stream/StreamOpFlag;

    invoke-virtual {p1}, Ljava/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 374
    nop

    .line 375
    invoke-virtual/range {p1 .. p2}, Ljava/util/stream/PipelineHelper;->wrapSpliterator(Ljava/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Spliterator$OfLong;

    iget-wide v2, v9, Ljava/util/stream/SliceOps$3;->val$skip:J

    iget-wide v4, v9, Ljava/util/stream/SliceOps$3;->val$limit:J

    .line 374
    move-object v0, p0

    move-wide v6, v10

    invoke-virtual/range {v0 .. v7}, Ljava/util/stream/SliceOps$3;->unorderedSkipLimitSpliterator(Ljava/util/Spliterator$OfLong;JJJ)Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0

    .line 379
    :cond_4c
    new-instance v13, Ljava/util/stream/SliceOps$SliceTask;

    sget-object v4, Ljava/util/stream/SliceOps$3$$ExternalSyntheticLambda0;->INSTANCE:Ljava/util/stream/SliceOps$3$$ExternalSyntheticLambda0;

    iget-wide v5, v9, Ljava/util/stream/SliceOps$3;->val$skip:J

    iget-wide v7, v9, Ljava/util/stream/SliceOps$3;->val$limit:J

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v8}, Ljava/util/stream/SliceOps$SliceTask;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/IntFunction;JJ)V

    .line 380
    invoke-virtual {v13}, Ljava/util/stream/SliceOps$SliceTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Node;

    invoke-interface {v0}, Ljava/util/stream/Node;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    .line 379
    return-object v0
.end method

.method public blacklist opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
    .registers 4
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/stream/Sink<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/stream/Sink<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 417
    .local p2, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Long;>;"
    new-instance v0, Ljava/util/stream/SliceOps$3$1;

    invoke-direct {v0, p0, p2}, Ljava/util/stream/SliceOps$3$1;-><init>(Ljava/util/stream/SliceOps$3;Ljava/util/stream/Sink;)V

    return-object v0
.end method

.method blacklist unorderedSkipLimitSpliterator(Ljava/util/Spliterator$OfLong;JJJ)Ljava/util/Spliterator$OfLong;
    .registers 15
    .param p1, "s"    # Ljava/util/Spliterator$OfLong;
    .param p2, "skip"    # J
    .param p4, "limit"    # J
    .param p6, "sizeIfKnown"    # J

    .line 354
    cmp-long v0, p2, p6

    if-gtz v0, :cond_16

    .line 357
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-ltz v0, :cond_11

    sub-long v0, p6, p2

    invoke-static {p4, p5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_13

    :cond_11
    sub-long v0, p6, p2

    :goto_13
    move-wide p4, v0

    .line 358
    const-wide/16 p2, 0x0

    .line 360
    :cond_16
    new-instance v6, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;

    move-object v0, v6

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;-><init>(Ljava/util/Spliterator$OfLong;JJ)V

    return-object v6
.end method
