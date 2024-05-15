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
        "Ljava/util/stream/Sink$ChainedDouble",
        "<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/stream/DoublePipeline$5;

.field final synthetic val$mapper:Ljava/util/function/DoubleFunction;


# direct methods
.method constructor <init>(Ljava/util/stream/DoublePipeline$5;Ljava/util/stream/Sink;Ljava/util/function/DoubleFunction;)V
    .registers 4
    .param p1, "this$1"    # Ljava/util/stream/DoublePipeline$5;

    .prologue
    .line 1
    .local p2, "$anonymous0":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Double;>;"
    iput-object p1, p0, Ljava/util/stream/DoublePipeline$5$1;->this$1:Ljava/util/stream/DoublePipeline$5;

    iput-object p3, p0, Ljava/util/stream/DoublePipeline$5$1;->val$mapper:Ljava/util/function/DoubleFunction;

    .line 262
    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedDouble;-><init>(Ljava/util/stream/Sink;)V

    .line 1
    return-void
.end method


# virtual methods
.method public accept(D)V
    .registers 10
    .param p1, "t"    # D

    .prologue
    const/4 v3, 0x0

    .line 270
    const/4 v1, 0x0

    .local v1, "result":Ljava/util/stream/DoubleStream;
    :try_start_2
    iget-object v2, p0, Ljava/util/stream/DoublePipeline$5$1;->val$mapper:Ljava/util/function/DoubleFunction;

    invoke-interface {v2, p1, p2}, Ljava/util/function/DoubleFunction;->apply(D)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/stream/DoubleStream;

    move-object v1, v0

    .line 272
    .local v1, "result":Ljava/util/stream/DoubleStream;
    if-eqz v1, :cond_1b

    .line 273
    invoke-interface {v1}, Ljava/util/stream/DoubleStream;->sequential()Ljava/util/stream/DoubleStream;

    move-result-object v2

    new-instance v4, Ljava/util/stream/-$Lambda$zwpF4y4y1FQ3Bs1BvYfnaXR_rdE;

    const/4 v5, 0x0

    invoke-direct {v4, v5, p0}, Ljava/util/stream/-$Lambda$zwpF4y4y1FQ3Bs1BvYfnaXR_rdE;-><init>(BLjava/lang/Object;)V

    invoke-interface {v2, v4}, Ljava/util/stream/DoubleStream;->forEach(Ljava/util/function/DoubleConsumer;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_1b} :catch_25
    .catchall {:try_start_2 .. :try_end_1b} :catchall_40

    .line 274
    :cond_1b
    if-eqz v1, :cond_20

    :try_start_1d
    invoke-interface {v1}, Ljava/util/stream/DoubleStream;->close()V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_20} :catch_23

    :cond_20
    :goto_20
    if-eqz v3, :cond_3f

    throw v3

    :catch_23
    move-exception v3

    goto :goto_20

    .end local v1    # "result":Ljava/util/stream/DoubleStream;
    :catch_25
    move-exception v2

    :try_start_26
    throw v2
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_27

    :catchall_27
    move-exception v3

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    :goto_2b
    if-eqz v1, :cond_30

    :try_start_2d
    invoke-interface {v1}, Ljava/util/stream/DoubleStream;->close()V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_30} :catch_33

    :cond_30
    :goto_30
    if-eqz v3, :cond_3e

    throw v3

    :catch_33
    move-exception v4

    if-nez v3, :cond_38

    move-object v3, v4

    goto :goto_30

    :cond_38
    if-eq v3, v4, :cond_30

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_30

    :cond_3e
    throw v2

    .line 275
    .restart local v1    # "result":Ljava/util/stream/DoubleStream;
    :cond_3f
    return-void

    .line 274
    .end local v1    # "result":Ljava/util/stream/DoubleStream;
    :catchall_40
    move-exception v2

    goto :goto_2b
.end method

.method public begin(J)V
    .registers 7
    .param p1, "size"    # J

    .prologue
    .line 265
    iget-object v0, p0, Ljava/util/stream/DoublePipeline$5$1;->downstream:Ljava/util/stream/Sink;

    const-wide/16 v2, -0x1

    invoke-interface {v0, v2, v3}, Ljava/util/stream/Sink;->begin(J)V

    .line 266
    return-void
.end method

.method synthetic lambda$-java_util_stream_DoublePipeline$5$1_10563(D)V
    .registers 4
    .param p1, "i"    # D

    .prologue
    .line 273
    iget-object v0, p0, Ljava/util/stream/DoublePipeline$5$1;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v0, p1, p2}, Ljava/util/stream/Sink;->accept(D)V

    return-void
.end method
