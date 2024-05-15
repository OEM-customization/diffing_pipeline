.class final Ljava/util/stream/Nodes$CollectorTask$OfDouble;
.super Ljava/util/stream/Nodes$CollectorTask;
.source "Nodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes$CollectorTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/Nodes$CollectorTask<",
        "TP_IN;",
        "Ljava/lang/Double;",
        "Ljava/util/stream/Node$OfDouble;",
        "Ljava/util/stream/Node$Builder$OfDouble;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/PipelineHelper<",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation

    .line 2223
    .local p0, "this":Ljava/util/stream/Nodes$CollectorTask$OfDouble;, "Ljava/util/stream/Nodes$CollectorTask$OfDouble<TP_IN;>;"
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Double;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    sget-object v0, Ljava/util/stream/-$$Lambda$LfPL0444L8HcP6gPtdKqQiCTSfM;->INSTANCE:Ljava/util/stream/-$$Lambda$LfPL0444L8HcP6gPtdKqQiCTSfM;

    sget-object v1, Ljava/util/stream/-$$Lambda$KTexUmxMdHIv08L4oU8j9HXK_go;->INSTANCE:Ljava/util/stream/-$$Lambda$KTexUmxMdHIv08L4oU8j9HXK_go;

    invoke-direct {p0, p1, p2, v0, v1}, Ljava/util/stream/Nodes$CollectorTask;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/LongFunction;Ljava/util/function/BinaryOperator;)V

    .line 2224
    return-void
.end method
