.class Ljava/util/stream/DoublePipeline$7$1;
.super Ljava/util/stream/Sink$ChainedDouble;
.source "DoublePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/DoublePipeline$7;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedDouble<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$1:Ljava/util/stream/DoublePipeline$7;


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/DoublePipeline$7;Ljava/util/stream/Sink;)V
    .registers 3
    .param p1, "this$1"    # Ljava/util/stream/DoublePipeline$7;

    .line 314
    .local p0, "this":Ljava/util/stream/DoublePipeline$7$1;, "Ljava/util/stream/DoublePipeline$7$1;"
    .local p2, "downstream":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Double;>;"
    iput-object p1, p0, Ljava/util/stream/DoublePipeline$7$1;->this$1:Ljava/util/stream/DoublePipeline$7;

    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedDouble;-><init>(Ljava/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api accept(D)V
    .registers 4
    .param p1, "t"    # D

    .line 322
    .local p0, "this":Ljava/util/stream/DoublePipeline$7$1;, "Ljava/util/stream/DoublePipeline$7$1;"
    iget-object v0, p0, Ljava/util/stream/DoublePipeline$7$1;->this$1:Ljava/util/stream/DoublePipeline$7;

    iget-object v0, v0, Ljava/util/stream/DoublePipeline$7;->val$predicate:Ljava/util/function/DoublePredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/DoublePredicate;->test(D)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 323
    iget-object v0, p0, Ljava/util/stream/DoublePipeline$7$1;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v0, p1, p2}, Ljava/util/stream/Sink;->accept(D)V

    .line 324
    :cond_f
    return-void
.end method

.method public blacklist begin(J)V
    .registers 6
    .param p1, "size"    # J

    .line 317
    .local p0, "this":Ljava/util/stream/DoublePipeline$7$1;, "Ljava/util/stream/DoublePipeline$7$1;"
    iget-object v0, p0, Ljava/util/stream/DoublePipeline$7$1;->downstream:Ljava/util/stream/Sink;

    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Ljava/util/stream/Sink;->begin(J)V

    .line 318
    return-void
.end method
