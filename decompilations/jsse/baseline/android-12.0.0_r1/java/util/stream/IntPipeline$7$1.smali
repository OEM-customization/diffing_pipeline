.class Ljava/util/stream/IntPipeline$7$1;
.super Ljava/util/stream/Sink$ChainedInt;
.source "IntPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/IntPipeline$7;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedInt<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$1:Ljava/util/stream/IntPipeline$7;


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/IntPipeline$7;Ljava/util/stream/Sink;)V
    .registers 3
    .param p1, "this$1"    # Ljava/util/stream/IntPipeline$7;

    .line 311
    .local p0, "this":Ljava/util/stream/IntPipeline$7$1;, "Ljava/util/stream/IntPipeline$7$1;"
    .local p2, "downstream":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Integer;>;"
    iput-object p1, p0, Ljava/util/stream/IntPipeline$7$1;->this$1:Ljava/util/stream/IntPipeline$7;

    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedInt;-><init>(Ljava/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api accept(I)V
    .registers 5
    .param p1, "t"    # I

    .line 319
    .local p0, "this":Ljava/util/stream/IntPipeline$7$1;, "Ljava/util/stream/IntPipeline$7$1;"
    iget-object v0, p0, Ljava/util/stream/IntPipeline$7$1;->this$1:Ljava/util/stream/IntPipeline$7;

    iget-object v0, v0, Ljava/util/stream/IntPipeline$7;->val$mapper:Ljava/util/function/IntFunction;

    invoke-interface {v0, p1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/stream/IntStream;

    .line 321
    .local v0, "result":Ljava/util/stream/IntStream;
    if-eqz v0, :cond_25

    .line 322
    :try_start_c
    invoke-interface {v0}, Ljava/util/stream/IntStream;->sequential()Ljava/util/stream/IntStream;

    move-result-object v1

    new-instance v2, Ljava/util/stream/IntPipeline$7$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Ljava/util/stream/IntPipeline$7$1$$ExternalSyntheticLambda0;-><init>(Ljava/util/stream/IntPipeline$7$1;)V

    invoke-interface {v1, v2}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_19

    goto :goto_25

    .line 319
    :catchall_19
    move-exception v1

    if-eqz v0, :cond_24

    :try_start_1c
    invoke-interface {v0}, Ljava/util/stream/IntStream;->close()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    goto :goto_24

    :catchall_20
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_24
    :goto_24
    throw v1

    .line 323
    :cond_25
    :goto_25
    if-eqz v0, :cond_2a

    invoke-interface {v0}, Ljava/util/stream/IntStream;->close()V

    .line 324
    .end local v0    # "result":Ljava/util/stream/IntStream;
    :cond_2a
    return-void
.end method

.method public blacklist begin(J)V
    .registers 6
    .param p1, "size"    # J

    .line 314
    .local p0, "this":Ljava/util/stream/IntPipeline$7$1;, "Ljava/util/stream/IntPipeline$7$1;"
    iget-object v0, p0, Ljava/util/stream/IntPipeline$7$1;->downstream:Ljava/util/stream/Sink;

    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Ljava/util/stream/Sink;->begin(J)V

    .line 315
    return-void
.end method

.method public synthetic blacklist lambda$accept$0$IntPipeline$7$1(I)V
    .registers 3
    .param p1, "i"    # I

    .line 322
    .local p0, "this":Ljava/util/stream/IntPipeline$7$1;, "Ljava/util/stream/IntPipeline$7$1;"
    iget-object v0, p0, Ljava/util/stream/IntPipeline$7$1;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v0, p1}, Ljava/util/stream/Sink;->accept(I)V

    return-void
.end method
