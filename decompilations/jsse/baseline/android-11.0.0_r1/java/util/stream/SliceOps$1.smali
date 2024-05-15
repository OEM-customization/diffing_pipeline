.class Ljava/util/stream/SliceOps$1;
.super Ljava/util/stream/ReferencePipeline$StatefulOp;
.source "SliceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/SliceOps;->makeRef(Ljava/util/stream/AbstractPipeline;JJ)Ljava/util/stream/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/ReferencePipeline$StatefulOp<",
        "TT;TT;>;"
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

    .line 120
    .local p1, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TT;*>;"
    iput-wide p4, p0, Ljava/util/stream/SliceOps$1;->val$skip:J

    iput-wide p6, p0, Ljava/util/stream/SliceOps$1;->val$limit:J

    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/ReferencePipeline$StatefulOp;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V

    return-void
.end method


# virtual methods
.method public blacklist opEvaluateParallel(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/IntFunction;)Ljava/util/stream/Node;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper<",
            "TT;>;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;",
            "Ljava/util/function/IntFunction<",
            "[TT;>;)",
            "Ljava/util/stream/Node<",
            "TT;>;"
        }
    .end annotation

    .line 165
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p3, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    move-object/from16 v9, p0

    move-object/from16 v10, p3

    invoke-virtual/range {p1 .. p2}, Ljava/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljava/util/Spliterator;)J

    move-result-wide v11

    .line 166
    .local v11, "size":J
    const-wide/16 v0, 0x0

    cmp-long v0, v11, v0

    const/4 v8, 0x1

    if-lez v0, :cond_31

    const/16 v0, 0x4000

    move-object/from16 v13, p2

    invoke-interface {v13, v0}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 172
    invoke-virtual/range {p1 .. p1}, Ljava/util/stream/PipelineHelper;->getSourceShape()Ljava/util/stream/StreamShape;

    move-result-object v1

    iget-wide v3, v9, Ljava/util/stream/SliceOps$1;->val$skip:J

    iget-wide v5, v9, Ljava/util/stream/SliceOps$1;->val$limit:J

    move-object/from16 v2, p2

    # invokes: Ljava/util/stream/SliceOps;->sliceSpliterator(Ljava/util/stream/StreamShape;Ljava/util/Spliterator;JJ)Ljava/util/Spliterator;
    invoke-static/range {v1 .. v6}, Ljava/util/stream/SliceOps;->access$200(Ljava/util/stream/StreamShape;Ljava/util/Spliterator;JJ)Ljava/util/Spliterator;

    move-result-object v0

    .line 173
    .local v0, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    move-object/from16 v14, p1

    invoke-static {v14, v0, v8, v10}, Ljava/util/stream/Nodes;->collect(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;ZLjava/util/function/IntFunction;)Ljava/util/stream/Node;

    move-result-object v1

    return-object v1

    .line 166
    .end local v0    # "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    :cond_2e
    move-object/from16 v14, p1

    goto :goto_35

    :cond_31
    move-object/from16 v14, p1

    move-object/from16 v13, p2

    .line 174
    :goto_35
    sget-object v0, Ljava/util/stream/StreamOpFlag;->ORDERED:Ljava/util/stream/StreamOpFlag;

    invoke-virtual/range {p1 .. p1}, Ljava/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-nez v0, :cond_56

    .line 175
    nop

    .line 176
    invoke-virtual/range {p1 .. p2}, Ljava/util/stream/PipelineHelper;->wrapSpliterator(Ljava/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v1

    iget-wide v2, v9, Ljava/util/stream/SliceOps$1;->val$skip:J

    iget-wide v4, v9, Ljava/util/stream/SliceOps$1;->val$limit:J

    .line 175
    move-object/from16 v0, p0

    move-wide v6, v11

    invoke-virtual/range {v0 .. v7}, Ljava/util/stream/SliceOps$1;->unorderedSkipLimitSpliterator(Ljava/util/Spliterator;JJJ)Ljava/util/Spliterator;

    move-result-object v0

    .line 182
    .local v0, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    invoke-static {v9, v0, v8, v10}, Ljava/util/stream/Nodes;->collect(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;ZLjava/util/function/IntFunction;)Ljava/util/stream/Node;

    move-result-object v1

    return-object v1

    .line 185
    .end local v0    # "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    :cond_56
    new-instance v15, Ljava/util/stream/SliceOps$SliceTask;

    iget-wide v5, v9, Ljava/util/stream/SliceOps$1;->val$skip:J

    iget-wide v7, v9, Ljava/util/stream/SliceOps$1;->val$limit:J

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v8}, Ljava/util/stream/SliceOps$SliceTask;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/IntFunction;JJ)V

    .line 186
    invoke-virtual {v15}, Ljava/util/stream/SliceOps$SliceTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Node;

    .line 185
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
            "TT;>;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;)",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 135
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    move-object v9, p0

    invoke-virtual/range {p1 .. p2}, Ljava/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljava/util/Spliterator;)J

    move-result-wide v10

    .line 136
    .local v10, "size":J
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-lez v0, :cond_28

    const/16 v0, 0x4000

    move-object/from16 v12, p2

    invoke-interface {v12, v0}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 137
    new-instance v0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;

    .line 138
    invoke-virtual/range {p1 .. p2}, Ljava/util/stream/PipelineHelper;->wrapSpliterator(Ljava/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v2

    iget-wide v3, v9, Ljava/util/stream/SliceOps$1;->val$skip:J

    iget-wide v5, v9, Ljava/util/stream/SliceOps$1;->val$limit:J

    .line 140
    # invokes: Ljava/util/stream/SliceOps;->calcSliceFence(JJ)J
    invoke-static {v3, v4, v5, v6}, Ljava/util/stream/SliceOps;->access$000(JJ)J

    move-result-wide v5

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;-><init>(Ljava/util/Spliterator;JJ)V

    .line 137
    return-object v0

    .line 136
    :cond_28
    move-object/from16 v12, p2

    .line 141
    :cond_2a
    sget-object v0, Ljava/util/stream/StreamOpFlag;->ORDERED:Ljava/util/stream/StreamOpFlag;

    invoke-virtual {p1}, Ljava/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-nez v0, :cond_46

    .line 142
    nop

    .line 143
    invoke-virtual/range {p1 .. p2}, Ljava/util/stream/PipelineHelper;->wrapSpliterator(Ljava/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v1

    iget-wide v2, v9, Ljava/util/stream/SliceOps$1;->val$skip:J

    iget-wide v4, v9, Ljava/util/stream/SliceOps$1;->val$limit:J

    .line 142
    move-object v0, p0

    move-wide v6, v10

    invoke-virtual/range {v0 .. v7}, Ljava/util/stream/SliceOps$1;->unorderedSkipLimitSpliterator(Ljava/util/Spliterator;JJJ)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0

    .line 155
    :cond_46
    new-instance v13, Ljava/util/stream/SliceOps$SliceTask;

    # invokes: Ljava/util/stream/SliceOps;->castingArray()Ljava/util/function/IntFunction;
    invoke-static {}, Ljava/util/stream/SliceOps;->access$100()Ljava/util/function/IntFunction;

    move-result-object v4

    iget-wide v5, v9, Ljava/util/stream/SliceOps$1;->val$skip:J

    iget-wide v7, v9, Ljava/util/stream/SliceOps$1;->val$limit:J

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v8}, Ljava/util/stream/SliceOps$SliceTask;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/IntFunction;JJ)V

    .line 156
    invoke-virtual {v13}, Ljava/util/stream/SliceOps$SliceTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Node;

    invoke-interface {v0}, Ljava/util/stream/Node;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    .line 155
    return-object v0
.end method

.method public blacklist opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
    .registers 4
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/stream/Sink<",
            "TT;>;)",
            "Ljava/util/stream/Sink<",
            "TT;>;"
        }
    .end annotation

    .line 193
    .local p2, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<TT;>;"
    new-instance v0, Ljava/util/stream/SliceOps$1$1;

    invoke-direct {v0, p0, p2}, Ljava/util/stream/SliceOps$1$1;-><init>(Ljava/util/stream/SliceOps$1;Ljava/util/stream/Sink;)V

    return-object v0
.end method

.method blacklist unorderedSkipLimitSpliterator(Ljava/util/Spliterator;JJJ)Ljava/util/Spliterator;
    .registers 15
    .param p2, "skip"    # J
    .param p4, "limit"    # J
    .param p6, "sizeIfKnown"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "TT;>;JJJ)",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 123
    .local p1, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    cmp-long v0, p2, p6

    if-gtz v0, :cond_16

    .line 126
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

    .line 127
    const-wide/16 p2, 0x0

    .line 129
    :cond_16
    new-instance v6, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;

    move-object v0, v6

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;-><init>(Ljava/util/Spliterator;JJ)V

    return-object v6
.end method
