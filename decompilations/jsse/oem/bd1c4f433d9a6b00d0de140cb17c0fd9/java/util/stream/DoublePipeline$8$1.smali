.class Ljava/util/stream/DoublePipeline$8$1;
.super Ljava/util/stream/Sink$ChainedDouble;
.source "DoublePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/DoublePipeline$8;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
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
.field final synthetic this$1:Ljava/util/stream/DoublePipeline$8;

.field final synthetic val$action:Ljava/util/function/DoubleConsumer;


# direct methods
.method constructor <init>(Ljava/util/stream/DoublePipeline$8;Ljava/util/stream/Sink;Ljava/util/function/DoubleConsumer;)V
    .registers 4
    .param p1, "this$1"    # Ljava/util/stream/DoublePipeline$8;

    .prologue
    .line 1
    .local p2, "$anonymous0":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Double;>;"
    iput-object p1, p0, Ljava/util/stream/DoublePipeline$8$1;->this$1:Ljava/util/stream/DoublePipeline$8;

    iput-object p3, p0, Ljava/util/stream/DoublePipeline$8$1;->val$action:Ljava/util/function/DoubleConsumer;

    .line 323
    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedDouble;-><init>(Ljava/util/stream/Sink;)V

    .line 1
    return-void
.end method


# virtual methods
.method public accept(D)V
    .registers 4
    .param p1, "t"    # D

    .prologue
    .line 326
    iget-object v0, p0, Ljava/util/stream/DoublePipeline$8$1;->val$action:Ljava/util/function/DoubleConsumer;

    invoke-interface {v0, p1, p2}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 327
    iget-object v0, p0, Ljava/util/stream/DoublePipeline$8$1;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v0, p1, p2}, Ljava/util/stream/Sink;->accept(D)V

    .line 328
    return-void
.end method
