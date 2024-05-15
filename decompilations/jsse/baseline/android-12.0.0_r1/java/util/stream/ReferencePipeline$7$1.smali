.class Ljava/util/stream/ReferencePipeline$7$1;
.super Ljava/util/stream/Sink$ChainedReference;
.source "ReferencePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/ReferencePipeline$7;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedReference<",
        "TP_OUT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$1:Ljava/util/stream/ReferencePipeline$7;


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/ReferencePipeline$7;Ljava/util/stream/Sink;)V
    .registers 3
    .param p1, "this$1"    # Ljava/util/stream/ReferencePipeline$7;

    .line 272
    .local p0, "this":Ljava/util/stream/ReferencePipeline$7$1;, "Ljava/util/stream/ReferencePipeline$7$1;"
    .local p2, "downstream":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-TR;>;"
    iput-object p1, p0, Ljava/util/stream/ReferencePipeline$7$1;->this$1:Ljava/util/stream/ReferencePipeline$7;

    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedReference;-><init>(Ljava/util/stream/Sink;)V

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

    .line 280
    .local p0, "this":Ljava/util/stream/ReferencePipeline$7$1;, "Ljava/util/stream/ReferencePipeline$7$1;"
    .local p1, "u":Ljava/lang/Object;, "TP_OUT;"
    iget-object v0, p0, Ljava/util/stream/ReferencePipeline$7$1;->this$1:Ljava/util/stream/ReferencePipeline$7;

    iget-object v0, v0, Ljava/util/stream/ReferencePipeline$7;->val$mapper:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Stream;

    .line 282
    .local v0, "result":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<+TR;>;"
    if-eqz v0, :cond_24

    .line 283
    :try_start_c
    invoke-interface {v0}, Ljava/util/stream/Stream;->sequential()Ljava/util/stream/BaseStream;

    move-result-object v1

    check-cast v1, Ljava/util/stream/Stream;

    iget-object v2, p0, Ljava/util/stream/ReferencePipeline$7$1;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_18

    goto :goto_24

    .line 280
    :catchall_18
    move-exception v1

    if-eqz v0, :cond_23

    :try_start_1b
    invoke-interface {v0}, Ljava/util/stream/Stream;->close()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    goto :goto_23

    :catchall_1f
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_23
    :goto_23
    throw v1

    .line 284
    :cond_24
    :goto_24
    if-eqz v0, :cond_29

    invoke-interface {v0}, Ljava/util/stream/Stream;->close()V

    .line 285
    .end local v0    # "result":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<+TR;>;"
    :cond_29
    return-void
.end method

.method public blacklist begin(J)V
    .registers 6
    .param p1, "size"    # J

    .line 275
    .local p0, "this":Ljava/util/stream/ReferencePipeline$7$1;, "Ljava/util/stream/ReferencePipeline$7$1;"
    iget-object v0, p0, Ljava/util/stream/ReferencePipeline$7$1;->downstream:Ljava/util/stream/Sink;

    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Ljava/util/stream/Sink;->begin(J)V

    .line 276
    return-void
.end method
