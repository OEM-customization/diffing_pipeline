.class final Ljava/util/stream/StreamSpliterators$WrappingSpliterator;
.super Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;
.source "StreamSpliterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WrappingSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        "P_OUT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator<",
        "TP_IN;TP_OUT;",
        "Ljava/util/stream/SpinedBuffer<",
        "TP_OUT;>;>;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Z)V
    .registers 4
    .param p3, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/PipelineHelper<",
            "TP_OUT;>;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;Z)V"
        }
    .end annotation

    .line 281
    .local p0, "this":Ljava/util/stream/StreamSpliterators$WrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$WrappingSpliterator<TP_IN;TP_OUT;>;"
    .local p1, "ph":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TP_OUT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Z)V

    .line 282
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)V
    .registers 4
    .param p3, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/PipelineHelper<",
            "TP_OUT;>;",
            "Ljava/util/function/Supplier<",
            "Ljava/util/Spliterator<",
            "TP_IN;>;>;Z)V"
        }
    .end annotation

    .line 275
    .local p0, "this":Ljava/util/stream/StreamSpliterators$WrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$WrappingSpliterator<TP_IN;TP_OUT;>;"
    .local p1, "ph":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TP_OUT;>;"
    .local p2, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/Spliterator<TP_IN;>;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)V

    .line 276
    return-void
.end method


# virtual methods
.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TP_OUT;>;)V"
        }
    .end annotation

    .line 308
    .local p0, "this":Ljava/util/stream/StreamSpliterators$WrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$WrappingSpliterator<TP_IN;TP_OUT;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TP_OUT;>;"
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$WrappingSpliterator;->buffer:Ljava/util/stream/AbstractSpinedBuffer;

    if-nez v0, :cond_21

    iget-boolean v0, p0, Ljava/util/stream/StreamSpliterators$WrappingSpliterator;->finished:Z

    if-nez v0, :cond_21

    .line 309
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$WrappingSpliterator;->init()V

    .line 312
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$WrappingSpliterator;->ph:Ljava/util/stream/PipelineHelper;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/stream/StreamSpliterators$WrappingSpliterator$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Ljava/util/stream/StreamSpliterators$WrappingSpliterator$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Consumer;)V

    iget-object v2, p0, Ljava/util/stream/StreamSpliterators$WrappingSpliterator;->spliterator:Ljava/util/Spliterator;

    invoke-virtual {v0, v1, v2}, Ljava/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava/util/stream/Sink;Ljava/util/Spliterator;)Ljava/util/stream/Sink;

    .line 313
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/stream/StreamSpliterators$WrappingSpliterator;->finished:Z

    goto :goto_27

    .line 316
    :cond_21
    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$WrappingSpliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 318
    :goto_27
    return-void
.end method

.method blacklist initPartialTraversalState()V
    .registers 4

    .line 291
    .local p0, "this":Ljava/util/stream/StreamSpliterators$WrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$WrappingSpliterator<TP_IN;TP_OUT;>;"
    new-instance v0, Ljava/util/stream/SpinedBuffer;

    invoke-direct {v0}, Ljava/util/stream/SpinedBuffer;-><init>()V

    .line 292
    .local v0, "b":Ljava/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TP_OUT;>;"
    iput-object v0, p0, Ljava/util/stream/StreamSpliterators$WrappingSpliterator;->buffer:Ljava/util/stream/AbstractSpinedBuffer;

    .line 293
    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$WrappingSpliterator;->ph:Ljava/util/stream/PipelineHelper;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/stream/StreamSpliterators$WrappingSpliterator$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Ljava/util/stream/StreamSpliterators$WrappingSpliterator$$ExternalSyntheticLambda2;-><init>(Ljava/util/stream/SpinedBuffer;)V

    invoke-virtual {v1, v2}, Ljava/util/stream/PipelineHelper;->wrapSink(Ljava/util/stream/Sink;)Ljava/util/stream/Sink;

    move-result-object v1

    iput-object v1, p0, Ljava/util/stream/StreamSpliterators$WrappingSpliterator;->bufferSink:Ljava/util/stream/Sink;

    .line 294
    new-instance v1, Ljava/util/stream/StreamSpliterators$WrappingSpliterator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Ljava/util/stream/StreamSpliterators$WrappingSpliterator$$ExternalSyntheticLambda0;-><init>(Ljava/util/stream/StreamSpliterators$WrappingSpliterator;)V

    iput-object v1, p0, Ljava/util/stream/StreamSpliterators$WrappingSpliterator;->pusher:Ljava/util/function/BooleanSupplier;

    .line 295
    return-void
.end method

.method public synthetic blacklist lambda$initPartialTraversalState$0$StreamSpliterators$WrappingSpliterator()Z
    .registers 3

    .line 294
    .local p0, "this":Ljava/util/stream/StreamSpliterators$WrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$WrappingSpliterator<TP_IN;TP_OUT;>;"
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$WrappingSpliterator;->spliterator:Ljava/util/Spliterator;

    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$WrappingSpliterator;->bufferSink:Ljava/util/stream/Sink;

    invoke-interface {v0, v1}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TP_OUT;>;)Z"
        }
    .end annotation

    .line 299
    .local p0, "this":Ljava/util/stream/StreamSpliterators$WrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$WrappingSpliterator<TP_IN;TP_OUT;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TP_OUT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$WrappingSpliterator;->doAdvance()Z

    move-result v0

    .line 301
    .local v0, "hasNext":Z
    if-eqz v0, :cond_16

    .line 302
    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$WrappingSpliterator;->buffer:Ljava/util/stream/AbstractSpinedBuffer;

    check-cast v1, Ljava/util/stream/SpinedBuffer;

    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$WrappingSpliterator;->nextToConsume:J

    invoke-virtual {v1, v2, v3}, Ljava/util/stream/SpinedBuffer;->get(J)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 303
    :cond_16
    return v0
.end method

.method bridge synthetic blacklist wrap(Ljava/util/Spliterator;)Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;
    .registers 2

    .line 269
    .local p0, "this":Ljava/util/stream/StreamSpliterators$WrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$WrappingSpliterator<TP_IN;TP_OUT;>;"
    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$WrappingSpliterator;->wrap(Ljava/util/Spliterator;)Ljava/util/stream/StreamSpliterators$WrappingSpliterator;

    move-result-object p1

    return-object p1
.end method

.method blacklist wrap(Ljava/util/Spliterator;)Ljava/util/stream/StreamSpliterators$WrappingSpliterator;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "TP_IN;>;)",
            "Ljava/util/stream/StreamSpliterators$WrappingSpliterator<",
            "TP_IN;TP_OUT;>;"
        }
    .end annotation

    .line 286
    .local p0, "this":Ljava/util/stream/StreamSpliterators$WrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$WrappingSpliterator<TP_IN;TP_OUT;>;"
    .local p1, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    new-instance v0, Ljava/util/stream/StreamSpliterators$WrappingSpliterator;

    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$WrappingSpliterator;->ph:Ljava/util/stream/PipelineHelper;

    iget-boolean v2, p0, Ljava/util/stream/StreamSpliterators$WrappingSpliterator;->isParallel:Z

    invoke-direct {v0, v1, p1, v2}, Ljava/util/stream/StreamSpliterators$WrappingSpliterator;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Z)V

    return-object v0
.end method
