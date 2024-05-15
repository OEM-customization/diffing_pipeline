.class Ljava/util/stream/ReferencePipeline$10$1;
.super Ljava/util/stream/Sink$ChainedReference;
.source "ReferencePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/ReferencePipeline$10;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedReference<",
        "TP_OUT;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field blacklist downstreamAsLong:Ljava/util/function/LongConsumer;

.field final synthetic blacklist this$1:Ljava/util/stream/ReferencePipeline$10;


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/ReferencePipeline$10;Ljava/util/stream/Sink;)V
    .registers 5
    .param p1, "this$1"    # Ljava/util/stream/ReferencePipeline$10;

    .line 358
    .local p0, "this":Ljava/util/stream/ReferencePipeline$10$1;, "Ljava/util/stream/ReferencePipeline$10$1;"
    .local p2, "downstream":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Long;>;"
    iput-object p1, p0, Ljava/util/stream/ReferencePipeline$10$1;->this$1:Ljava/util/stream/ReferencePipeline$10;

    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedReference;-><init>(Ljava/util/stream/Sink;)V

    .line 359
    iget-object v0, p0, Ljava/util/stream/ReferencePipeline$10$1;->downstream:Ljava/util/stream/Sink;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/stream/-$$Lambda$zQ-9PoG-PFOA3MjNNbaERnRB6ik;

    invoke-direct {v1, v0}, Ljava/util/stream/-$$Lambda$zQ-9PoG-PFOA3MjNNbaERnRB6ik;-><init>(Ljava/util/stream/Sink;)V

    iput-object v1, p0, Ljava/util/stream/ReferencePipeline$10$1;->downstreamAsLong:Ljava/util/function/LongConsumer;

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api accept(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP_OUT;)V"
        }
    .end annotation

    .line 367
    .local p0, "this":Ljava/util/stream/ReferencePipeline$10$1;, "Ljava/util/stream/ReferencePipeline$10$1;"
    .local p1, "u":Ljava/lang/Object;, "TP_OUT;"
    iget-object v0, p0, Ljava/util/stream/ReferencePipeline$10$1;->this$1:Ljava/util/stream/ReferencePipeline$10;

    iget-object v0, v0, Ljava/util/stream/ReferencePipeline$10;->val$mapper:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/stream/LongStream;

    .line 369
    .local v0, "result":Ljava/util/stream/LongStream;
    if-eqz v0, :cond_22

    .line 370
    :try_start_c
    invoke-interface {v0}, Ljava/util/stream/LongStream;->sequential()Ljava/util/stream/LongStream;

    move-result-object v1

    iget-object v2, p0, Ljava/util/stream/ReferencePipeline$10$1;->downstreamAsLong:Ljava/util/function/LongConsumer;

    invoke-interface {v1, v2}, Ljava/util/stream/LongStream;->forEach(Ljava/util/function/LongConsumer;)V
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_16

    goto :goto_22

    .line 367
    :catchall_16
    move-exception v1

    if-eqz v0, :cond_21

    :try_start_19
    invoke-interface {v0}, Ljava/util/stream/LongStream;->close()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1d

    goto :goto_21

    :catchall_1d
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_21
    :goto_21
    throw v1

    .line 371
    :cond_22
    :goto_22
    if-eqz v0, :cond_27

    invoke-interface {v0}, Ljava/util/stream/LongStream;->close()V

    .line 372
    .end local v0    # "result":Ljava/util/stream/LongStream;
    :cond_27
    return-void
.end method

.method public blacklist begin(J)V
    .registers 6
    .param p1, "size"    # J

    .line 362
    .local p0, "this":Ljava/util/stream/ReferencePipeline$10$1;, "Ljava/util/stream/ReferencePipeline$10$1;"
    iget-object v0, p0, Ljava/util/stream/ReferencePipeline$10$1;->downstream:Ljava/util/stream/Sink;

    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Ljava/util/stream/Sink;->begin(J)V

    .line 363
    return-void
.end method
