.class Ljava/util/stream/DoublePipeline$1$1;
.super Ljava/util/stream/Sink$ChainedDouble;
.source "DoublePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/DoublePipeline$1;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedDouble",
        "<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/stream/DoublePipeline$1;

.field final synthetic val$mapper:Ljava/util/function/DoubleUnaryOperator;


# direct methods
.method constructor <init>(Ljava/util/stream/DoublePipeline$1;Ljava/util/stream/Sink;Ljava/util/function/DoubleUnaryOperator;)V
    .registers 4
    .param p1, "this$1"    # Ljava/util/stream/DoublePipeline$1;

    .prologue
    .line 1
    .local p2, "$anonymous0":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Double;>;"
    iput-object p1, p0, Ljava/util/stream/DoublePipeline$1$1;->this$1:Ljava/util/stream/DoublePipeline$1;

    iput-object p3, p0, Ljava/util/stream/DoublePipeline$1$1;->val$mapper:Ljava/util/function/DoubleUnaryOperator;

    .line 195
    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedDouble;-><init>(Ljava/util/stream/Sink;)V

    .line 1
    return-void
.end method


# virtual methods
.method public accept(D)V
    .registers 8
    .param p1, "t"    # D

    .prologue
    .line 198
    iget-object v0, p0, Ljava/util/stream/DoublePipeline$1$1;->downstream:Ljava/util/stream/Sink;

    iget-object v1, p0, Ljava/util/stream/DoublePipeline$1$1;->val$mapper:Ljava/util/function/DoubleUnaryOperator;

    invoke-interface {v1, p1, p2}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Ljava/util/stream/Sink;->accept(D)V

    .line 199
    return-void
.end method