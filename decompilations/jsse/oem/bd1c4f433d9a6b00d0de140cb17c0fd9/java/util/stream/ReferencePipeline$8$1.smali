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
        "Ljava/util/stream/Sink$ChainedReference",
        "<TP_OUT;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field downstreamAsInt:Ljava/util/function/IntConsumer;

.field final synthetic this$1:Ljava/util/stream/ReferencePipeline$8;

.field final synthetic val$mapper:Ljava/util/function/Function;


# direct methods
.method static synthetic -java_util_stream_ReferencePipeline$8$1-mthref-0(Ljava/util/stream/Sink;I)V
    .registers 2

    .prologue
    .line 288
    invoke-interface {p0, p1}, Ljava/util/stream/Sink;->accept(I)V

    return-void
.end method

.method constructor <init>(Ljava/util/stream/ReferencePipeline$8;Ljava/util/stream/Sink;Ljava/util/function/Function;)V
    .registers 7
    .param p1, "this$1"    # Ljava/util/stream/ReferencePipeline$8;

    .prologue
    .line 1
    .local p2, "$anonymous0":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Integer;>;"
    iput-object p1, p0, Ljava/util/stream/ReferencePipeline$8$1;->this$1:Ljava/util/stream/ReferencePipeline$8;

    iput-object p3, p0, Ljava/util/stream/ReferencePipeline$8$1;->val$mapper:Ljava/util/function/Function;

    .line 287
    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedReference;-><init>(Ljava/util/stream/Sink;)V

    .line 288
    iget-object v0, p0, Ljava/util/stream/ReferencePipeline$8$1;->downstream:Ljava/util/stream/Sink;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/stream/-$Lambda$nO1MaU0vQHo4iVZemtT1k9gUtrc;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, Ljava/util/stream/-$Lambda$nO1MaU0vQHo4iVZemtT1k9gUtrc;-><init>(BLjava/lang/Object;)V

    iput-object v1, p0, Ljava/util/stream/ReferencePipeline$8$1;->downstreamAsInt:Ljava/util/function/IntConsumer;

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

    .line 296
    const/4 v1, 0x0

    .local v1, "result":Ljava/util/stream/IntStream;
    :try_start_2
    iget-object v2, p0, Ljava/util/stream/ReferencePipeline$8$1;->val$mapper:Ljava/util/function/Function;

    invoke-interface {v2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/stream/IntStream;

    move-object v1, v0

    .line 298
    .local v1, "result":Ljava/util/stream/IntStream;
    if-eqz v1, :cond_17

    .line 299
    invoke-interface {v1}, Ljava/util/stream/IntStream;->sequential()Ljava/util/stream/IntStream;

    move-result-object v2

    iget-object v4, p0, Ljava/util/stream/ReferencePipeline$8$1;->downstreamAsInt:Ljava/util/function/IntConsumer;

    invoke-interface {v2, v4}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_17} :catch_21
    .catchall {:try_start_2 .. :try_end_17} :catchall_3c

    .line 300
    :cond_17
    if-eqz v1, :cond_1c

    :try_start_19
    invoke-interface {v1}, Ljava/util/stream/IntStream;->close()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_1c} :catch_1f

    :cond_1c
    :goto_1c
    if-eqz v3, :cond_3b

    throw v3

    :catch_1f
    move-exception v3

    goto :goto_1c

    .end local v1    # "result":Ljava/util/stream/IntStream;
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
    invoke-interface {v1}, Ljava/util/stream/IntStream;->close()V
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

    .line 301
    .restart local v1    # "result":Ljava/util/stream/IntStream;
    :cond_3b
    return-void

    .line 300
    .end local v1    # "result":Ljava/util/stream/IntStream;
    :catchall_3c
    move-exception v2

    goto :goto_27
.end method

.method public begin(J)V
    .registers 7
    .param p1, "size"    # J

    .prologue
    .line 291
    iget-object v0, p0, Ljava/util/stream/ReferencePipeline$8$1;->downstream:Ljava/util/stream/Sink;

    const-wide/16 v2, -0x1

    invoke-interface {v0, v2, v3}, Ljava/util/stream/Sink;->begin(J)V

    .line 292
    return-void
.end method
