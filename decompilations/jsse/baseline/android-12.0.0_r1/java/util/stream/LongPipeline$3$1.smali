.class Ljava/util/stream/LongPipeline$3$1;
.super Ljava/util/stream/Sink$ChainedLong;
.source "LongPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/LongPipeline$3;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedLong<",
        "TU;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$1:Ljava/util/stream/LongPipeline$3;


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/LongPipeline$3;Ljava/util/stream/Sink;)V
    .registers 3
    .param p1, "this$1"    # Ljava/util/stream/LongPipeline$3;

    .line 239
    .local p0, "this":Ljava/util/stream/LongPipeline$3$1;, "Ljava/util/stream/LongPipeline$3$1;"
    .local p2, "downstream":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-TU;>;"
    iput-object p1, p0, Ljava/util/stream/LongPipeline$3$1;->this$1:Ljava/util/stream/LongPipeline$3;

    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedLong;-><init>(Ljava/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api accept(J)V
    .registers 5
    .param p1, "t"    # J

    .line 242
    .local p0, "this":Ljava/util/stream/LongPipeline$3$1;, "Ljava/util/stream/LongPipeline$3$1;"
    iget-object v0, p0, Ljava/util/stream/LongPipeline$3$1;->downstream:Ljava/util/stream/Sink;

    iget-object v1, p0, Ljava/util/stream/LongPipeline$3$1;->this$1:Ljava/util/stream/LongPipeline$3;

    iget-object v1, v1, Ljava/util/stream/LongPipeline$3;->val$mapper:Ljava/util/function/LongFunction;

    invoke-interface {v1, p1, p2}, Ljava/util/function/LongFunction;->apply(J)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Sink;->accept(Ljava/lang/Object;)V

    .line 243
    return-void
.end method
