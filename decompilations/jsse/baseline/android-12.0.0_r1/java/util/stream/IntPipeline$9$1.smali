.class Ljava/util/stream/IntPipeline$9$1;
.super Ljava/util/stream/Sink$ChainedInt;
.source "IntPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/IntPipeline$9;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedInt<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$1:Ljava/util/stream/IntPipeline$9;


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/IntPipeline$9;Ljava/util/stream/Sink;)V
    .registers 3
    .param p1, "this$1"    # Ljava/util/stream/IntPipeline$9;

    .line 351
    .local p0, "this":Ljava/util/stream/IntPipeline$9$1;, "Ljava/util/stream/IntPipeline$9$1;"
    .local p2, "downstream":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Integer;>;"
    iput-object p1, p0, Ljava/util/stream/IntPipeline$9$1;->this$1:Ljava/util/stream/IntPipeline$9;

    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedInt;-><init>(Ljava/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api accept(I)V
    .registers 3
    .param p1, "t"    # I

    .line 359
    .local p0, "this":Ljava/util/stream/IntPipeline$9$1;, "Ljava/util/stream/IntPipeline$9$1;"
    iget-object v0, p0, Ljava/util/stream/IntPipeline$9$1;->this$1:Ljava/util/stream/IntPipeline$9;

    iget-object v0, v0, Ljava/util/stream/IntPipeline$9;->val$predicate:Ljava/util/function/IntPredicate;

    invoke-interface {v0, p1}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 360
    iget-object v0, p0, Ljava/util/stream/IntPipeline$9$1;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v0, p1}, Ljava/util/stream/Sink;->accept(I)V

    .line 361
    :cond_f
    return-void
.end method

.method public blacklist begin(J)V
    .registers 6
    .param p1, "size"    # J

    .line 354
    .local p0, "this":Ljava/util/stream/IntPipeline$9$1;, "Ljava/util/stream/IntPipeline$9$1;"
    iget-object v0, p0, Ljava/util/stream/IntPipeline$9$1;->downstream:Ljava/util/stream/Sink;

    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Ljava/util/stream/Sink;->begin(J)V

    .line 355
    return-void
.end method
