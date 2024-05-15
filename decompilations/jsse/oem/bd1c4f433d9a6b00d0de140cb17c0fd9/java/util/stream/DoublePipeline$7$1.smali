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
        "Ljava/util/stream/Sink$ChainedDouble",
        "<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/stream/DoublePipeline$7;

.field final synthetic val$predicate:Ljava/util/function/DoublePredicate;


# direct methods
.method constructor <init>(Ljava/util/stream/DoublePipeline$7;Ljava/util/stream/Sink;Ljava/util/function/DoublePredicate;)V
    .registers 4
    .param p1, "this$1"    # Ljava/util/stream/DoublePipeline$7;

    .prologue
    .line 1
    .local p2, "$anonymous0":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Double;>;"
    iput-object p1, p0, Ljava/util/stream/DoublePipeline$7$1;->this$1:Ljava/util/stream/DoublePipeline$7;

    iput-object p3, p0, Ljava/util/stream/DoublePipeline$7$1;->val$predicate:Ljava/util/function/DoublePredicate;

    .line 300
    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedDouble;-><init>(Ljava/util/stream/Sink;)V

    .line 1
    return-void
.end method


# virtual methods
.method public accept(D)V
    .registers 4
    .param p1, "t"    # D

    .prologue
    .line 308
    iget-object v0, p0, Ljava/util/stream/DoublePipeline$7$1;->val$predicate:Ljava/util/function/DoublePredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/DoublePredicate;->test(D)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 309
    iget-object v0, p0, Ljava/util/stream/DoublePipeline$7$1;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v0, p1, p2}, Ljava/util/stream/Sink;->accept(D)V

    .line 310
    :cond_d
    return-void
.end method

.method public begin(J)V
    .registers 7
    .param p1, "size"    # J

    .prologue
    .line 303
    iget-object v0, p0, Ljava/util/stream/DoublePipeline$7$1;->downstream:Ljava/util/stream/Sink;

    const-wide/16 v2, -0x1

    invoke-interface {v0, v2, v3}, Ljava/util/stream/Sink;->begin(J)V

    .line 304
    return-void
.end method
