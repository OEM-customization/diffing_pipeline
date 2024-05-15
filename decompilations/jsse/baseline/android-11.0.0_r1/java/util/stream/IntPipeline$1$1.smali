.class Ljava/util/stream/IntPipeline$1$1;
.super Ljava/util/stream/Sink$ChainedInt;
.source "IntPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/IntPipeline$1;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedInt<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$1:Ljava/util/stream/IntPipeline$1;


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/IntPipeline$1;Ljava/util/stream/Sink;)V
    .registers 3
    .param p1, "this$1"    # Ljava/util/stream/IntPipeline$1;

    .line 200
    .local p0, "this":Ljava/util/stream/IntPipeline$1$1;, "Ljava/util/stream/IntPipeline$1$1;"
    .local p2, "downstream":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Long;>;"
    iput-object p1, p0, Ljava/util/stream/IntPipeline$1$1;->this$1:Ljava/util/stream/IntPipeline$1;

    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedInt;-><init>(Ljava/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api accept(I)V
    .registers 5
    .param p1, "t"    # I

    .line 203
    .local p0, "this":Ljava/util/stream/IntPipeline$1$1;, "Ljava/util/stream/IntPipeline$1$1;"
    iget-object v0, p0, Ljava/util/stream/IntPipeline$1$1;->downstream:Ljava/util/stream/Sink;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Ljava/util/stream/Sink;->accept(J)V

    .line 204
    return-void
.end method
