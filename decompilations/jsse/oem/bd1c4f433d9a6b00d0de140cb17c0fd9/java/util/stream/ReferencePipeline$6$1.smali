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
        "Ljava/util/stream/Sink$ChainedReference",
        "<TP_OUT;",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/stream/ReferencePipeline$6;

.field final synthetic val$mapper:Ljava/util/function/ToDoubleFunction;


# direct methods
.method constructor <init>(Ljava/util/stream/ReferencePipeline$6;Ljava/util/stream/Sink;Ljava/util/function/ToDoubleFunction;)V
    .registers 4
    .param p1, "this$1"    # Ljava/util/stream/ReferencePipeline$6;

    .prologue
    .line 1
    .local p2, "$anonymous0":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Double;>;"
    iput-object p1, p0, Ljava/util/stream/ReferencePipeline$6$1;->this$1:Ljava/util/stream/ReferencePipeline$6;

    iput-object p3, p0, Ljava/util/stream/ReferencePipeline$6$1;->val$mapper:Ljava/util/function/ToDoubleFunction;

    .line 242
    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedReference;-><init>(Ljava/util/stream/Sink;)V

    .line 1
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP_OUT;)V"
        }
    .end annotation

    .prologue
    .line 245
    .local p1, "u":Ljava/lang/Object;, "TP_OUT;"
    iget-object v0, p0, Ljava/util/stream/ReferencePipeline$6$1;->downstream:Ljava/util/stream/Sink;

    iget-object v1, p0, Ljava/util/stream/ReferencePipeline$6$1;->val$mapper:Ljava/util/function/ToDoubleFunction;

    invoke-interface {v1, p1}, Ljava/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Ljava/util/stream/Sink;->accept(D)V

    .line 246
    return-void
.end method