.class Ljava/util/stream/ReferencePipeline$9$1;
.super Ljava/util/stream/Sink$ChainedReference;
.source "ReferencePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/ReferencePipeline$9;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedReference<",
        "TP_OUT;",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field blacklist downstreamAsDouble:Ljava/util/function/DoubleConsumer;

.field final synthetic blacklist this$1:Ljava/util/stream/ReferencePipeline$9;


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/ReferencePipeline$9;Ljava/util/stream/Sink;)V
    .registers 5
    .param p1, "this$1"    # Ljava/util/stream/ReferencePipeline$9;

    .line 329
    .local p0, "this":Ljava/util/stream/ReferencePipeline$9$1;, "Ljava/util/stream/ReferencePipeline$9$1;"
    .local p2, "downstream":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Double;>;"
    iput-object p1, p0, Ljava/util/stream/ReferencePipeline$9$1;->this$1:Ljava/util/stream/ReferencePipeline$9;

    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedReference;-><init>(Ljava/util/stream/Sink;)V

    .line 330
    iget-object v0, p0, Ljava/util/stream/ReferencePipeline$9$1;->downstream:Ljava/util/stream/Sink;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/stream/DoublePipeline$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0}, Ljava/util/stream/DoublePipeline$$ExternalSyntheticLambda6;-><init>(Ljava/util/stream/Sink;)V

    iput-object v1, p0, Ljava/util/stream/ReferencePipeline$9$1;->downstreamAsDouble:Ljava/util/function/DoubleConsumer;

    return-void
.end method


# virtual methods
.method public whitelist test-api accept(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP_OUT;)V"
        }
    .end annotation

    .line 338
    .local p0, "this":Ljava/util/stream/ReferencePipeline$9$1;, "Ljava/util/stream/ReferencePipeline$9$1;"
    .local p1, "u":Ljava/lang/Object;, "TP_OUT;"
    iget-object v0, p0, Ljava/util/stream/ReferencePipeline$9$1;->this$1:Ljava/util/stream/ReferencePipeline$9;

    iget-object v0, v0, Ljava/util/stream/ReferencePipeline$9;->val$mapper:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/stream/DoubleStream;

    .line 340
    .local v0, "result":Ljava/util/stream/DoubleStream;
    if-eqz v0, :cond_22

    .line 341
    :try_start_c
    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->sequential()Ljava/util/stream/DoubleStream;

    move-result-object v1

    iget-object v2, p0, Ljava/util/stream/ReferencePipeline$9$1;->downstreamAsDouble:Ljava/util/function/DoubleConsumer;

    invoke-interface {v1, v2}, Ljava/util/stream/DoubleStream;->forEach(Ljava/util/function/DoubleConsumer;)V
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_16

    goto :goto_22

    .line 338
    :catchall_16
    move-exception v1

    if-eqz v0, :cond_21

    :try_start_19
    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->close()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1d

    goto :goto_21

    :catchall_1d
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_21
    :goto_21
    throw v1

    .line 342
    :cond_22
    :goto_22
    if-eqz v0, :cond_27

    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->close()V

    .line 343
    .end local v0    # "result":Ljava/util/stream/DoubleStream;
    :cond_27
    return-void
.end method

.method public blacklist begin(J)V
    .registers 6
    .param p1, "size"    # J

    .line 333
    .local p0, "this":Ljava/util/stream/ReferencePipeline$9$1;, "Ljava/util/stream/ReferencePipeline$9$1;"
    iget-object v0, p0, Ljava/util/stream/ReferencePipeline$9$1;->downstream:Ljava/util/stream/Sink;

    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Ljava/util/stream/Sink;->begin(J)V

    .line 334
    return-void
.end method
