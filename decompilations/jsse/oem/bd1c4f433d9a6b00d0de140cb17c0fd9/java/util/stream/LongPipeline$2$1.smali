.class Ljava/util/stream/LongPipeline$2$1;
.super Ljava/util/stream/Sink$ChainedLong;
.source "LongPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/LongPipeline$2;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedLong",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/stream/LongPipeline$2;

.field final synthetic val$mapper:Ljava/util/function/LongUnaryOperator;


# direct methods
.method constructor <init>(Ljava/util/stream/LongPipeline$2;Ljava/util/stream/Sink;Ljava/util/function/LongUnaryOperator;)V
    .registers 4
    .param p1, "this$1"    # Ljava/util/stream/LongPipeline$2;

    .prologue
    .line 1
    .local p2, "$anonymous0":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Long;>;"
    iput-object p1, p0, Ljava/util/stream/LongPipeline$2$1;->this$1:Ljava/util/stream/LongPipeline$2;

    iput-object p3, p0, Ljava/util/stream/LongPipeline$2$1;->val$mapper:Ljava/util/function/LongUnaryOperator;

    .line 212
    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedLong;-><init>(Ljava/util/stream/Sink;)V

    .line 1
    return-void
.end method


# virtual methods
.method public accept(J)V
    .registers 8
    .param p1, "t"    # J

    .prologue
    .line 215
    iget-object v0, p0, Ljava/util/stream/LongPipeline$2$1;->downstream:Ljava/util/stream/Sink;

    iget-object v1, p0, Ljava/util/stream/LongPipeline$2$1;->val$mapper:Ljava/util/function/LongUnaryOperator;

    invoke-interface {v1, p1, p2}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Ljava/util/stream/Sink;->accept(J)V

    .line 216
    return-void
.end method
