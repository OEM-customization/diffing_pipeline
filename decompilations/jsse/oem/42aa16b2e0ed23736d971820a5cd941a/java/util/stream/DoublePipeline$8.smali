.class Ljava/util/stream/DoublePipeline$8;
.super Ljava/util/stream/DoublePipeline$StatelessOp;
.source "DoublePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/DoublePipeline;->peek(Ljava/util/function/DoubleConsumer;)Ljava/util/stream/DoubleStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/DoublePipeline$StatelessOp<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/stream/DoublePipeline;

.field final synthetic blacklist val$action:Ljava/util/function/DoubleConsumer;


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/DoublePipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/DoubleConsumer;)V
    .registers 6
    .param p1, "this$0"    # Ljava/util/stream/DoublePipeline;
    .param p3, "inputShape"    # Ljava/util/stream/StreamShape;
    .param p4, "opFlags"    # I

    .line 334
    .local p0, "this":Ljava/util/stream/DoublePipeline$8;, "Ljava/util/stream/DoublePipeline$8;"
    .local p2, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Double;*>;"
    iput-object p1, p0, Ljava/util/stream/DoublePipeline$8;->this$0:Ljava/util/stream/DoublePipeline;

    iput-object p5, p0, Ljava/util/stream/DoublePipeline$8;->val$action:Ljava/util/function/DoubleConsumer;

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
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 338
    .local p0, "this":Ljava/util/stream/DoublePipeline$8;, "Ljava/util/stream/DoublePipeline$8;"
    .local p2, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Double;>;"
    new-instance v0, Ljava/util/stream/DoublePipeline$8$1;

    invoke-direct {v0, p0, p2}, Ljava/util/stream/DoublePipeline$8$1;-><init>(Ljava/util/stream/DoublePipeline$8;Ljava/util/stream/Sink;)V

    return-object v0
.end method
