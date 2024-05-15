.class final Ljava/util/stream/Nodes$CollectorTask$OfLong;
.super Ljava/util/stream/Nodes$CollectorTask;
.source "Nodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes$CollectorTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/Nodes$CollectorTask",
        "<TP_IN;",
        "Ljava/lang/Long;",
        "Ljava/util/stream/Node$OfLong;",
        "Ljava/util/stream/Node$Builder$OfLong;",
        ">;"
    }
.end annotation


# direct methods
.method static synthetic -java_util_stream_Nodes$CollectorTask$OfLong-mthref-0(J)Ljava/util/stream/Node$Builder$OfLong;
    .registers 4

    .prologue
    .line 2215
    invoke-static {p0, p1}, Ljava/util/stream/Nodes;->longBuilder(J)Ljava/util/stream/Node$Builder$OfLong;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -java_util_stream_Nodes$CollectorTask$OfLong-mthref-1(Ljava/util/stream/Node$OfLong;Ljava/util/stream/Node$OfLong;)Ljava/util/stream/Node$OfLong;
    .registers 3

    .prologue
    .line 2215
    new-instance v0, Ljava/util/stream/Nodes$ConcNode$OfLong;

    invoke-direct {v0, p0, p1}, Ljava/util/stream/Nodes$ConcNode$OfLong;-><init>(Ljava/util/stream/Node$OfLong;Ljava/util/stream/Node$OfLong;)V

    return-object v0
.end method

.method constructor <init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/PipelineHelper",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/stream/Nodes$CollectorTask$OfLong;, "Ljava/util/stream/Nodes$CollectorTask$OfLong<TP_IN;>;"
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Long;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    sget-object v0, Ljava/util/stream/-$Lambda$HgAzcH9qJA0urckE7cpwARL053U;->$INST$3:Ljava/util/stream/-$Lambda$HgAzcH9qJA0urckE7cpwARL053U;

    sget-object v1, Ljava/util/stream/-$Lambda$RbwyEXxBvlOKovrx1LFomyWq0zc;->$INST$19:Ljava/util/stream/-$Lambda$RbwyEXxBvlOKovrx1LFomyWq0zc;

    .line 2215
    invoke-direct {p0, p1, p2, v0, v1}, Ljava/util/stream/Nodes$CollectorTask;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/LongFunction;Ljava/util/function/BinaryOperator;)V

    .line 2216
    return-void
.end method
