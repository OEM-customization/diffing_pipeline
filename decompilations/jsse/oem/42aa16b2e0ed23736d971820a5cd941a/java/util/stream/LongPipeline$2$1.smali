.class Ljava/util/stream/LongPipeline$2$1;
.super Ljava/util/stream/Sink$ChainedLong;
.source "LongPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/LongPipeline$2;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
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
.field final synthetic blacklist this$1:Ljava/util/stream/LongPipeline$2;


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/LongPipeline$2;Ljava/util/stream/Sink;)V
    .registers 3
    .param p1, "this$1"    # Ljava/util/stream/LongPipeline$2;

    .line 221
    .local p0, "this":Ljava/util/stream/LongPipeline$2$1;, "Ljava/util/stream/LongPipeline$2$1;"
    .local p2, "downstream":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Long;>;"
    iput-object p1, p0, Ljava/util/stream/LongPipeline$2$1;->this$1:Ljava/util/stream/LongPipeline$2;

    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedLong;-><init>(Ljava/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api accept(J)V
    .registers 6
    .param p1, "t"    # J

    .line 224
    .local p0, "this":Ljava/util/stream/LongPipeline$2$1;, "Ljava/util/stream/LongPipeline$2$1;"
    iget-object v0, p0, Ljava/util/stream/LongPipeline$2$1;->downstream:Ljava/util/stream/Sink;

    iget-object v1, p0, Ljava/util/stream/LongPipeline$2$1;->this$1:Ljava/util/stream/LongPipeline$2;

    iget-object v1, v1, Ljava/util/stream/LongPipeline$2;->val$mapper:Ljava/util/function/LongUnaryOperator;

    invoke-interface {v1, p1, p2}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Ljava/util/stream/Sink;->accept(J)V

    .line 225
    return-void
.end method