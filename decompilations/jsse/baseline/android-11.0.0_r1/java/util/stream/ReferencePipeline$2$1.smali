.class Ljava/util/stream/ReferencePipeline$2$1;
.super Ljava/util/stream/Sink$ChainedReference;
.source "ReferencePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/ReferencePipeline$2;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedReference<",
        "TP_OUT;TP_OUT;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$1:Ljava/util/stream/ReferencePipeline$2;


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/ReferencePipeline$2;Ljava/util/stream/Sink;)V
    .registers 3
    .param p1, "this$1"    # Ljava/util/stream/ReferencePipeline$2;

    .line 176
    .local p0, "this":Ljava/util/stream/ReferencePipeline$2$1;, "Ljava/util/stream/ReferencePipeline$2$1;"
    .local p2, "downstream":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-TP_OUT;>;"
    iput-object p1, p0, Ljava/util/stream/ReferencePipeline$2$1;->this$1:Ljava/util/stream/ReferencePipeline$2;

    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedReference;-><init>(Ljava/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api accept(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP_OUT;)V"
        }
    .end annotation

    .line 184
    .local p0, "this":Ljava/util/stream/ReferencePipeline$2$1;, "Ljava/util/stream/ReferencePipeline$2$1;"
    .local p1, "u":Ljava/lang/Object;, "TP_OUT;"
    iget-object v0, p0, Ljava/util/stream/ReferencePipeline$2$1;->this$1:Ljava/util/stream/ReferencePipeline$2;

    iget-object v0, v0, Ljava/util/stream/ReferencePipeline$2;->val$predicate:Ljava/util/function/Predicate;

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 185
    iget-object v0, p0, Ljava/util/stream/ReferencePipeline$2$1;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v0, p1}, Ljava/util/stream/Sink;->accept(Ljava/lang/Object;)V

    .line 186
    :cond_f
    return-void
.end method

.method public blacklist begin(J)V
    .registers 6
    .param p1, "size"    # J

    .line 179
    .local p0, "this":Ljava/util/stream/ReferencePipeline$2$1;, "Ljava/util/stream/ReferencePipeline$2$1;"
    iget-object v0, p0, Ljava/util/stream/ReferencePipeline$2$1;->downstream:Ljava/util/stream/Sink;

    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Ljava/util/stream/Sink;->begin(J)V

    .line 180
    return-void
.end method
