.class Ljava/util/stream/ReferencePipeline$6$1;
.super Ljava/util/stream/Sink$ChainedReference;
.source "ReferencePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/ReferencePipeline$6;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedReference<",
        "TP_OUT;",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$1:Ljava/util/stream/ReferencePipeline$6;


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/ReferencePipeline$6;Ljava/util/stream/Sink;)V
    .registers 3
    .param p1, "this$1"    # Ljava/util/stream/ReferencePipeline$6;

    .line 254
    .local p0, "this":Ljava/util/stream/ReferencePipeline$6$1;, "Ljava/util/stream/ReferencePipeline$6$1;"
    .local p2, "downstream":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Double;>;"
    iput-object p1, p0, Ljava/util/stream/ReferencePipeline$6$1;->this$1:Ljava/util/stream/ReferencePipeline$6;

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

    .line 257
    .local p0, "this":Ljava/util/stream/ReferencePipeline$6$1;, "Ljava/util/stream/ReferencePipeline$6$1;"
    .local p1, "u":Ljava/lang/Object;, "TP_OUT;"
    iget-object v0, p0, Ljava/util/stream/ReferencePipeline$6$1;->downstream:Ljava/util/stream/Sink;

    iget-object v1, p0, Ljava/util/stream/ReferencePipeline$6$1;->this$1:Ljava/util/stream/ReferencePipeline$6;

    iget-object v1, v1, Ljava/util/stream/ReferencePipeline$6;->val$mapper:Ljava/util/function/ToDoubleFunction;

    invoke-interface {v1, p1}, Ljava/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Ljava/util/stream/Sink;->accept(D)V

    .line 258
    return-void
.end method
