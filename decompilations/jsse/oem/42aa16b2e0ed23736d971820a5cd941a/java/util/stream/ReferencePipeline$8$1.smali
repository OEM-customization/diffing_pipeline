.class Ljava/util/stream/ReferencePipeline$8$1;
.super Ljava/util/stream/Sink$ChainedReference;
.source "ReferencePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/ReferencePipeline$8;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedReference<",
        "TP_OUT;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field blacklist downstreamAsInt:Ljava/util/function/IntConsumer;

.field final synthetic blacklist this$1:Ljava/util/stream/ReferencePipeline$8;


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/ReferencePipeline$8;Ljava/util/stream/Sink;)V
    .registers 5
    .param p1, "this$1"    # Ljava/util/stream/ReferencePipeline$8;

    .line 300
    .local p0, "this":Ljava/util/stream/ReferencePipeline$8$1;, "Ljava/util/stream/ReferencePipeline$8$1;"
    .local p2, "downstream":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Integer;>;"
    iput-object p1, p0, Ljava/util/stream/ReferencePipeline$8$1;->this$1:Ljava/util/stream/ReferencePipeline$8;

    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedReference;-><init>(Ljava/util/stream/Sink;)V

    .line 301
    iget-object v0, p0, Ljava/util/stream/ReferencePipeline$8$1;->downstream:Ljava/util/stream/Sink;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/stream/-$$Lambda$wDsxx48ovPSGeNEb3P6H9u7YX0k;

    invoke-direct {v1, v0}, Ljava/util/stream/-$$Lambda$wDsxx48ovPSGeNEb3P6H9u7YX0k;-><init>(Ljava/util/stream/Sink;)V

    iput-object v1, p0, Ljava/util/stream/ReferencePipeline$8$1;->downstreamAsInt:Ljava/util/function/IntConsumer;

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

    .line 309
    .local p0, "this":Ljava/util/stream/ReferencePipeline$8$1;, "Ljava/util/stream/ReferencePipeline$8$1;"
    .local p1, "u":Ljava/lang/Object;, "TP_OUT;"
    iget-object v0, p0, Ljava/util/stream/ReferencePipeline$8$1;->this$1:Ljava/util/stream/ReferencePipeline$8;

    iget-object v0, v0, Ljava/util/stream/ReferencePipeline$8;->val$mapper:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/stream/IntStream;

    .line 311
    .local v0, "result":Ljava/util/stream/IntStream;
    if-eqz v0, :cond_22

    .line 312
    :try_start_c
    invoke-interface {v0}, Ljava/util/stream/IntStream;->sequential()Ljava/util/stream/IntStream;

    move-result-object v1

    iget-object v2, p0, Ljava/util/stream/ReferencePipeline$8$1;->downstreamAsInt:Ljava/util/function/IntConsumer;

    invoke-interface {v1, v2}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_16

    goto :goto_22

    .line 309
    :catchall_16
    move-exception v1

    if-eqz v0, :cond_21

    :try_start_19
    invoke-interface {v0}, Ljava/util/stream/IntStream;->close()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1d

    goto :goto_21

    :catchall_1d
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_21
    :goto_21
    throw v1

    .line 313
    :cond_22
    :goto_22
    if-eqz v0, :cond_27

    invoke-interface {v0}, Ljava/util/stream/IntStream;->close()V

    .line 314
    .end local v0    # "result":Ljava/util/stream/IntStream;
    :cond_27
    return-void
.end method

.method public blacklist begin(J)V
    .registers 6
    .param p1, "size"    # J

    .line 304
    .local p0, "this":Ljava/util/stream/ReferencePipeline$8$1;, "Ljava/util/stream/ReferencePipeline$8$1;"
    iget-object v0, p0, Ljava/util/stream/ReferencePipeline$8$1;->downstream:Ljava/util/stream/Sink;

    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Ljava/util/stream/Sink;->begin(J)V

    .line 305
    return-void
.end method
