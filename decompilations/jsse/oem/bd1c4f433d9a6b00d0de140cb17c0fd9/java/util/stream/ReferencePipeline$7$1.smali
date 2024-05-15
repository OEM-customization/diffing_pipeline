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
        "Ljava/util/stream/Sink$ChainedReference",
        "<TP_OUT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/stream/ReferencePipeline$7;

.field final synthetic val$mapper:Ljava/util/function/Function;


# direct methods
.method constructor <init>(Ljava/util/stream/ReferencePipeline$7;Ljava/util/stream/Sink;Ljava/util/function/Function;)V
    .registers 4
    .param p1, "this$1"    # Ljava/util/stream/ReferencePipeline$7;

    .prologue
    .line 1
    .local p2, "$anonymous0":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-TR;>;"
    iput-object p1, p0, Ljava/util/stream/ReferencePipeline$7$1;->this$1:Ljava/util/stream/ReferencePipeline$7;

    iput-object p3, p0, Ljava/util/stream/ReferencePipeline$7$1;->val$mapper:Ljava/util/function/Function;

    .line 260
    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedReference;-><init>(Ljava/util/stream/Sink;)V

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

    .line 268
    const/4 v1, 0x0

    .local v1, "result":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<+TR;>;"
    :try_start_2
    iget-object v2, p0, Ljava/util/stream/ReferencePipeline$7$1;->val$mapper:Ljava/util/function/Function;

    invoke-interface {v2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/stream/Stream;

    move-object v1, v0

    .line 270
    .local v1, "result":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<+TR;>;"
    if-eqz v1, :cond_19

    .line 271
    invoke-interface {v1}, Ljava/util/stream/Stream;->sequential()Ljava/util/stream/BaseStream;

    move-result-object v2

    check-cast v2, Ljava/util/stream/Stream;

    iget-object v4, p0, Ljava/util/stream/ReferencePipeline$7$1;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_19} :catch_23
    .catchall {:try_start_2 .. :try_end_19} :catchall_3e

    .line 272
    :cond_19
    if-eqz v1, :cond_1e

    :try_start_1b
    invoke-interface {v1}, Ljava/util/stream/Stream;->close()V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1e} :catch_21

    :cond_1e
    :goto_1e
    if-eqz v3, :cond_3d

    throw v3

    :catch_21
    move-exception v3

    goto :goto_1e

    .end local v1    # "result":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<+TR;>;"
    :catch_23
    move-exception v2

    :try_start_24
    throw v2
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_25

    :catchall_25
    move-exception v3

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    :goto_29
    if-eqz v1, :cond_2e

    :try_start_2b
    invoke-interface {v1}, Ljava/util/stream/Stream;->close()V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2e} :catch_31

    :cond_2e
    :goto_2e
    if-eqz v3, :cond_3c

    throw v3

    :catch_31
    move-exception v4

    if-nez v3, :cond_36

    move-object v3, v4

    goto :goto_2e

    :cond_36
    if-eq v3, v4, :cond_2e

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2e

    :cond_3c
    throw v2

    .line 273
    .restart local v1    # "result":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<+TR;>;"
    :cond_3d
    return-void

    .line 272
    .end local v1    # "result":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<+TR;>;"
    :catchall_3e
    move-exception v2

    goto :goto_29
.end method

.method public begin(J)V
    .registers 7
    .param p1, "size"    # J

    .prologue
    .line 263
    iget-object v0, p0, Ljava/util/stream/ReferencePipeline$7$1;->downstream:Ljava/util/stream/Sink;

    const-wide/16 v2, -0x1

    invoke-interface {v0, v2, v3}, Ljava/util/stream/Sink;->begin(J)V

    .line 264
    return-void
.end method
