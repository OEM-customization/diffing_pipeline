.class Ljava/util/stream/LongPipeline$6$1;
.super Ljava/util/stream/Sink$ChainedLong;
.source "LongPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/LongPipeline$6;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedLong<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$1:Ljava/util/stream/LongPipeline$6;


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/LongPipeline$6;Ljava/util/stream/Sink;)V
    .registers 3
    .param p1, "this$1"    # Ljava/util/stream/LongPipeline$6;

    .line 292
    .local p0, "this":Ljava/util/stream/LongPipeline$6$1;, "Ljava/util/stream/LongPipeline$6$1;"
    .local p2, "downstream":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Long;>;"
    iput-object p1, p0, Ljava/util/stream/LongPipeline$6$1;->this$1:Ljava/util/stream/LongPipeline$6;

    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedLong;-><init>(Ljava/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api accept(J)V
    .registers 6
    .param p1, "t"    # J

    .line 300
    .local p0, "this":Ljava/util/stream/LongPipeline$6$1;, "Ljava/util/stream/LongPipeline$6$1;"
    iget-object v0, p0, Ljava/util/stream/LongPipeline$6$1;->this$1:Ljava/util/stream/LongPipeline$6;

    iget-object v0, v0, Ljava/util/stream/LongPipeline$6;->val$mapper:Ljava/util/function/LongFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/LongFunction;->apply(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/stream/LongStream;

    .line 302
    .local v0, "result":Ljava/util/stream/LongStream;
    if-eqz v0, :cond_25

    .line 303
    :try_start_c
    invoke-interface {v0}, Ljava/util/stream/LongStream;->sequential()Ljava/util/stream/LongStream;

    move-result-object v1

    new-instance v2, Ljava/util/stream/LongPipeline$6$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Ljava/util/stream/LongPipeline$6$1$$ExternalSyntheticLambda0;-><init>(Ljava/util/stream/LongPipeline$6$1;)V

    invoke-interface {v1, v2}, Ljava/util/stream/LongStream;->forEach(Ljava/util/function/LongConsumer;)V
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_19

    goto :goto_25

    .line 300
    :catchall_19
    move-exception v1

    if-eqz v0, :cond_24

    :try_start_1c
    invoke-interface {v0}, Ljava/util/stream/LongStream;->close()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    goto :goto_24

    :catchall_20
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_24
    :goto_24
    throw v1

    .line 304
    :cond_25
    :goto_25
    if-eqz v0, :cond_2a

    invoke-interface {v0}, Ljava/util/stream/LongStream;->close()V

    .line 305
    .end local v0    # "result":Ljava/util/stream/LongStream;
    :cond_2a
    return-void
.end method

.method public blacklist begin(J)V
    .registers 6
    .param p1, "size"    # J

    .line 295
    .local p0, "this":Ljava/util/stream/LongPipeline$6$1;, "Ljava/util/stream/LongPipeline$6$1;"
    iget-object v0, p0, Ljava/util/stream/LongPipeline$6$1;->downstream:Ljava/util/stream/Sink;

    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Ljava/util/stream/Sink;->begin(J)V

    .line 296
    return-void
.end method

.method public synthetic blacklist lambda$accept$0$LongPipeline$6$1(J)V
    .registers 4
    .param p1, "i"    # J

    .line 303
    .local p0, "this":Ljava/util/stream/LongPipeline$6$1;, "Ljava/util/stream/LongPipeline$6$1;"
    iget-object v0, p0, Ljava/util/stream/LongPipeline$6$1;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v0, p1, p2}, Ljava/util/stream/Sink;->accept(J)V

    return-void
.end method
