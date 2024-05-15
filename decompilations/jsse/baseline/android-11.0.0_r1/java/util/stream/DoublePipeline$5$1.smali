.class Ljava/util/stream/DoublePipeline$5$1;
.super Ljava/util/stream/Sink$ChainedDouble;
.source "DoublePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/DoublePipeline$5;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedDouble<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$1:Ljava/util/stream/DoublePipeline$5;


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/DoublePipeline$5;Ljava/util/stream/Sink;)V
    .registers 3
    .param p1, "this$1"    # Ljava/util/stream/DoublePipeline$5;

    .line 274
    .local p0, "this":Ljava/util/stream/DoublePipeline$5$1;, "Ljava/util/stream/DoublePipeline$5$1;"
    .local p2, "downstream":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Double;>;"
    iput-object p1, p0, Ljava/util/stream/DoublePipeline$5$1;->this$1:Ljava/util/stream/DoublePipeline$5;

    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedDouble;-><init>(Ljava/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api accept(D)V
    .registers 6
    .param p1, "t"    # D

    .line 282
    .local p0, "this":Ljava/util/stream/DoublePipeline$5$1;, "Ljava/util/stream/DoublePipeline$5$1;"
    iget-object v0, p0, Ljava/util/stream/DoublePipeline$5$1;->this$1:Ljava/util/stream/DoublePipeline$5;

    iget-object v0, v0, Ljava/util/stream/DoublePipeline$5;->val$mapper:Ljava/util/function/DoubleFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/DoubleFunction;->apply(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/stream/DoubleStream;

    .line 284
    .local v0, "result":Ljava/util/stream/DoubleStream;
    if-eqz v0, :cond_25

    .line 285
    :try_start_c
    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->sequential()Ljava/util/stream/DoubleStream;

    move-result-object v1

    new-instance v2, Ljava/util/stream/-$$Lambda$DoublePipeline$5$1$kqJiVK7sQB3kKvPk9DB9gInHJq4;

    invoke-direct {v2, p0}, Ljava/util/stream/-$$Lambda$DoublePipeline$5$1$kqJiVK7sQB3kKvPk9DB9gInHJq4;-><init>(Ljava/util/stream/DoublePipeline$5$1;)V

    invoke-interface {v1, v2}, Ljava/util/stream/DoubleStream;->forEach(Ljava/util/function/DoubleConsumer;)V
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_19

    goto :goto_25

    .line 282
    :catchall_19
    move-exception v1

    if-eqz v0, :cond_24

    :try_start_1c
    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->close()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    goto :goto_24

    :catchall_20
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_24
    :goto_24
    throw v1

    .line 286
    :cond_25
    :goto_25
    if-eqz v0, :cond_2a

    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->close()V

    .line 287
    .end local v0    # "result":Ljava/util/stream/DoubleStream;
    :cond_2a
    return-void
.end method

.method public blacklist begin(J)V
    .registers 6
    .param p1, "size"    # J

    .line 277
    .local p0, "this":Ljava/util/stream/DoublePipeline$5$1;, "Ljava/util/stream/DoublePipeline$5$1;"
    iget-object v0, p0, Ljava/util/stream/DoublePipeline$5$1;->downstream:Ljava/util/stream/Sink;

    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Ljava/util/stream/Sink;->begin(J)V

    .line 278
    return-void
.end method

.method public synthetic blacklist lambda$accept$0$DoublePipeline$5$1(D)V
    .registers 4
    .param p1, "i"    # D

    .line 285
    .local p0, "this":Ljava/util/stream/DoublePipeline$5$1;, "Ljava/util/stream/DoublePipeline$5$1;"
    iget-object v0, p0, Ljava/util/stream/DoublePipeline$5$1;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v0, p1, p2}, Ljava/util/stream/Sink;->accept(D)V

    return-void
.end method
