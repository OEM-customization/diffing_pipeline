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
        "Ljava/util/stream/Sink$ChainedInt",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/stream/IntPipeline$7;

.field final synthetic val$mapper:Ljava/util/function/IntFunction;


# direct methods
.method constructor <init>(Ljava/util/stream/IntPipeline$7;Ljava/util/stream/Sink;Ljava/util/function/IntFunction;)V
    .registers 4
    .param p1, "this$1"    # Ljava/util/stream/IntPipeline$7;

    .prologue
    .line 1
    .local p2, "$anonymous0":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Integer;>;"
    iput-object p1, p0, Ljava/util/stream/IntPipeline$7$1;->this$1:Ljava/util/stream/IntPipeline$7;

    iput-object p3, p0, Ljava/util/stream/IntPipeline$7$1;->val$mapper:Ljava/util/function/IntFunction;

    .line 298
    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedInt;-><init>(Ljava/util/stream/Sink;)V

    .line 1
    return-void
.end method


# virtual methods
.method public accept(I)V
    .registers 9
    .param p1, "t"    # I

    .prologue
    const/4 v3, 0x0

    .line 306
    const/4 v1, 0x0

    .local v1, "result":Ljava/util/stream/IntStream;
    :try_start_2
    iget-object v2, p0, Ljava/util/stream/IntPipeline$7$1;->val$mapper:Ljava/util/function/IntFunction;

    invoke-interface {v2, p1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/stream/IntStream;

    move-object v1, v0

    .line 308
    .local v1, "result":Ljava/util/stream/IntStream;
    if-eqz v1, :cond_1b

    .line 309
    invoke-interface {v1}, Ljava/util/stream/IntStream;->sequential()Ljava/util/stream/IntStream;

    move-result-object v2

    new-instance v4, Ljava/util/stream/-$Lambda$nO1MaU0vQHo4iVZemtT1k9gUtrc;

    const/4 v5, 0x0

    invoke-direct {v4, v5, p0}, Ljava/util/stream/-$Lambda$nO1MaU0vQHo4iVZemtT1k9gUtrc;-><init>(BLjava/lang/Object;)V

    invoke-interface {v2, v4}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_1b} :catch_25
    .catchall {:try_start_2 .. :try_end_1b} :catchall_40

    .line 310
    :cond_1b
    if-eqz v1, :cond_20

    :try_start_1d
    invoke-interface {v1}, Ljava/util/stream/IntStream;->close()V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_20} :catch_23

    :cond_20
    :goto_20
    if-eqz v3, :cond_3f

    throw v3

    :catch_23
    move-exception v3

    goto :goto_20

    .end local v1    # "result":Ljava/util/stream/IntStream;
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
    invoke-interface {v1}, Ljava/util/stream/IntStream;->close()V
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

    .line 311
    .restart local v1    # "result":Ljava/util/stream/IntStream;
    :cond_3f
    return-void

    .line 310
    .end local v1    # "result":Ljava/util/stream/IntStream;
    :catchall_40
    move-exception v2

    goto :goto_2b
.end method

.method public begin(J)V
    .registers 7
    .param p1, "size"    # J

    .prologue
    .line 301
    iget-object v0, p0, Ljava/util/stream/IntPipeline$7$1;->downstream:Ljava/util/stream/Sink;

    const-wide/16 v2, -0x1

    invoke-interface {v0, v2, v3}, Ljava/util/stream/Sink;->begin(J)V

    .line 302
    return-void
.end method

.method synthetic lambda$-java_util_stream_IntPipeline$7$1_11907(I)V
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 309
    iget-object v0, p0, Ljava/util/stream/IntPipeline$7$1;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v0, p1}, Ljava/util/stream/Sink;->accept(I)V

    return-void
.end method
