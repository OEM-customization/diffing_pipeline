.class Ljava/util/stream/DoublePipeline$4$1;
.super Ljava/util/stream/Sink$ChainedDouble;
.source "DoublePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/DoublePipeline$4;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedDouble<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$1:Ljava/util/stream/DoublePipeline$4;


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/DoublePipeline$4;Ljava/util/stream/Sink;)V
    .registers 3
    .param p1, "this$1"    # Ljava/util/stream/DoublePipeline$4;

    .line 257
    .local p0, "this":Ljava/util/stream/DoublePipeline$4$1;, "Ljava/util/stream/DoublePipeline$4$1;"
    .local p2, "downstream":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Long;>;"
    iput-object p1, p0, Ljava/util/stream/DoublePipeline$4$1;->this$1:Ljava/util/stream/DoublePipeline$4;

    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedDouble;-><init>(Ljava/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api accept(D)V
    .registers 6
    .param p1, "t"    # D

    .line 260
    .local p0, "this":Ljava/util/stream/DoublePipeline$4$1;, "Ljava/util/stream/DoublePipeline$4$1;"
    iget-object v0, p0, Ljava/util/stream/DoublePipeline$4$1;->downstream:Ljava/util/stream/Sink;

    iget-object v1, p0, Ljava/util/stream/DoublePipeline$4$1;->this$1:Ljava/util/stream/DoublePipeline$4;

    iget-object v1, v1, Ljava/util/stream/DoublePipeline$4;->val$mapper:Ljava/util/function/DoubleToLongFunction;

    invoke-interface {v1, p1, p2}, Ljava/util/function/DoubleToLongFunction;->applyAsLong(D)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Ljava/util/stream/Sink;->accept(J)V

    .line 261
    return-void
.end method
