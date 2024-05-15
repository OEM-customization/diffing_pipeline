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
        "Ljava/util/stream/Sink$ChainedReference",
        "<TP_OUT;",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field downstreamAsDouble:Ljava/util/function/DoubleConsumer;

.field final synthetic this$1:Ljava/util/stream/ReferencePipeline$9;

.field final synthetic val$mapper:Ljava/util/function/Function;


# direct methods
.method static synthetic -java_util_stream_ReferencePipeline$9$1-mthref-0(Ljava/util/stream/Sink;D)V
    .registers 4

    .prologue
    .line 316
    invoke-interface {p0, p1, p2}, Ljava/util/stream/Sink;->accept(D)V

    return-void
.end method

.method constructor <init>(Ljava/util/stream/ReferencePipeline$9;Ljava/util/stream/Sink;Ljava/util/function/Function;)V
    .registers 7
    .param p1, "this$1"    # Ljava/util/stream/ReferencePipeline$9;

    .prologue
    .line 1
    .local p2, "$anonymous0":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Double;>;"
    iput-object p1, p0, Ljava/util/stream/ReferencePipeline$9$1;->this$1:Ljava/util/stream/ReferencePipeline$9;

    iput-object p3, p0, Ljava/util/stream/ReferencePipeline$9$1;->val$mapper:Ljava/util/function/Function;

    .line 315
    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedReference;-><init>(Ljava/util/stream/Sink;)V

    .line 316
    iget-object v0, p0, Ljava/util/stream/ReferencePipeline$9$1;->downstream:Ljava/util/stream/Sink;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/stream/-$Lambda$zwpF4y4y1FQ3Bs1BvYfnaXR_rdE;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, Ljava/util/stream/-$Lambda$zwpF4y4y1FQ3Bs1BvYfnaXR_rdE;-><init>(BLjava/lang/Object;)V

    iput-object v1, p0, Ljava/util/stream/ReferencePipeline$9$1;->downstreamAsDouble:Ljava/util/function/DoubleConsumer;

    .line 1
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP_OUT;)V"
        }
    .end annotation

    .prologue
    .local p1, "u":Ljava/lang/Object;, "TP_OUT;"
    const/4 v3, 0x0

    .line 324
    const/4 v1, 0x0

    .local v1, "result":Ljava/util/stream/DoubleStream;
    :try_start_2
    iget-object v2, p0, Ljava/util/stream/ReferencePipeline$9$1;->val$mapper:Ljava/util/function/Function;

    invoke-interface {v2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/stream/DoubleStream;

    move-object v1, v0

    .line 326
    .local v1, "result":Ljava/util/stream/DoubleStream;
    if-eqz v1, :cond_17

    .line 327
    invoke-interface {v1}, Ljava/util/stream/DoubleStream;->sequential()Ljava/util/stream/DoubleStream;

    move-result-object v2

    iget-object v4, p0, Ljava/util/stream/ReferencePipeline$9$1;->downstreamAsDouble:Ljava/util/function/DoubleConsumer;

    invoke-interface {v2, v4}, Ljava/util/stream/DoubleStream;->forEach(Ljava/util/function/DoubleConsumer;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_17} :catch_21
    .catchall {:try_start_2 .. :try_end_17} :catchall_3c

    .line 328
    :cond_17
    if-eqz v1, :cond_1c

    :try_start_19
    invoke-interface {v1}, Ljava/util/stream/DoubleStream;->close()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_1c} :catch_1f

    :cond_1c
    :goto_1c
    if-eqz v3, :cond_3b

    throw v3

    :catch_1f
    move-exception v3

    goto :goto_1c

    .end local v1    # "result":Ljava/util/stream/DoubleStream;
    :catch_21
    move-exception v2

    :try_start_22
    throw v2
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_23

    :catchall_23
    move-exception v3

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    :goto_27
    if-eqz v1, :cond_2c

    :try_start_29
    invoke-interface {v1}, Ljava/util/stream/DoubleStream;->close()V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_2c} :catch_2f

    :cond_2c
    :goto_2c
    if-eqz v3, :cond_3a

    throw v3

    :catch_2f
    move-exception v4

    if-nez v3, :cond_34

    move-object v3, v4

    goto :goto_2c

    :cond_34
    if-eq v3, v4, :cond_2c

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2c

    :cond_3a
    throw v2

    .line 329
    .restart local v1    # "result":Ljava/util/stream/DoubleStream;
    :cond_3b
    return-void

    .line 328
    .end local v1    # "result":Ljava/util/stream/DoubleStream;
    :catchall_3c
    move-exception v2

    goto :goto_27
.end method

.method public begin(J)V
    .registers 7
    .param p1, "size"    # J

    .prologue
    .line 319
    iget-object v0, p0, Ljava/util/stream/ReferencePipeline$9$1;->downstream:Ljava/util/stream/Sink;

    const-wide/16 v2, -0x1

    invoke-interface {v0, v2, v3}, Ljava/util/stream/Sink;->begin(J)V

    .line 320
    return-void
.end method
