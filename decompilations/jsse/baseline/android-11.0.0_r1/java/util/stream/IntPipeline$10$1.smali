.class Ljava/util/stream/IntPipeline$10$1;
.super Ljava/util/stream/Sink$ChainedInt;
.source "IntPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/IntPipeline$10;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
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
.field final synthetic blacklist this$1:Ljava/util/stream/IntPipeline$10;


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/IntPipeline$10;Ljava/util/stream/Sink;)V
    .registers 3
    .param p1, "this$1"    # Ljava/util/stream/IntPipeline$10;

    .line 375
    .local p0, "this":Ljava/util/stream/IntPipeline$10$1;, "Ljava/util/stream/IntPipeline$10$1;"
    .local p2, "downstream":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Integer;>;"
    iput-object p1, p0, Ljava/util/stream/IntPipeline$10$1;->this$1:Ljava/util/stream/IntPipeline$10;

    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedInt;-><init>(Ljava/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api accept(I)V
    .registers 3
    .param p1, "t"    # I

    .line 378
    .local p0, "this":Ljava/util/stream/IntPipeline$10$1;, "Ljava/util/stream/IntPipeline$10$1;"
    iget-object v0, p0, Ljava/util/stream/IntPipeline$10$1;->this$1:Ljava/util/stream/IntPipeline$10;

    iget-object v0, v0, Ljava/util/stream/IntPipeline$10;->val$action:Ljava/util/function/IntConsumer;

    invoke-interface {v0, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 379
    iget-object v0, p0, Ljava/util/stream/IntPipeline$10$1;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v0, p1}, Ljava/util/stream/Sink;->accept(I)V

    .line 380
    return-void
.end method
