.class Ljava/util/stream/ReferencePipeline$6;
.super Ljava/util/stream/DoublePipeline$StatelessOp;
.source "ReferencePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/ReferencePipeline;->mapToDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/DoubleStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/DoublePipeline$StatelessOp<",
        "TP_OUT;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/stream/ReferencePipeline;

.field final synthetic blacklist val$mapper:Ljava/util/function/ToDoubleFunction;


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/ReferencePipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/ToDoubleFunction;)V
    .registers 6
    .param p1, "this$0"    # Ljava/util/stream/ReferencePipeline;
    .param p3, "inputShape"    # Ljava/util/stream/StreamShape;
    .param p4, "opFlags"    # I

    .line 250
    .local p0, "this":Ljava/util/stream/ReferencePipeline$6;, "Ljava/util/stream/ReferencePipeline$6;"
    .local p2, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TP_OUT;*>;"
    iput-object p1, p0, Ljava/util/stream/ReferencePipeline$6;->this$0:Ljava/util/stream/ReferencePipeline;

    iput-object p5, p0, Ljava/util/stream/ReferencePipeline$6;->val$mapper:Ljava/util/function/ToDoubleFunction;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/stream/DoublePipeline$StatelessOp;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V

    return-void
.end method


# virtual methods
.method public blacklist opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
    .registers 4
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/stream/Sink<",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/util/stream/Sink<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 254
    .local p0, "this":Ljava/util/stream/ReferencePipeline$6;, "Ljava/util/stream/ReferencePipeline$6;"
    .local p2, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Double;>;"
    new-instance v0, Ljava/util/stream/ReferencePipeline$6$1;

    invoke-direct {v0, p0, p2}, Ljava/util/stream/ReferencePipeline$6$1;-><init>(Ljava/util/stream/ReferencePipeline$6;Ljava/util/stream/Sink;)V

    return-object v0
.end method
