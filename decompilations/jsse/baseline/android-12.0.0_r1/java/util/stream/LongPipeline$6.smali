.class Ljava/util/stream/LongPipeline$6;
.super Ljava/util/stream/LongPipeline$StatelessOp;
.source "LongPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/LongPipeline;->flatMap(Ljava/util/function/LongFunction;)Ljava/util/stream/LongStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/LongPipeline$StatelessOp<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/stream/LongPipeline;

.field final synthetic blacklist val$mapper:Ljava/util/function/LongFunction;


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/LongPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/LongFunction;)V
    .registers 6
    .param p1, "this$0"    # Ljava/util/stream/LongPipeline;
    .param p3, "inputShape"    # Ljava/util/stream/StreamShape;
    .param p4, "opFlags"    # I

    .line 288
    .local p0, "this":Ljava/util/stream/LongPipeline$6;, "Ljava/util/stream/LongPipeline$6;"
    .local p2, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Long;*>;"
    iput-object p1, p0, Ljava/util/stream/LongPipeline$6;->this$0:Ljava/util/stream/LongPipeline;

    iput-object p5, p0, Ljava/util/stream/LongPipeline$6;->val$mapper:Ljava/util/function/LongFunction;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/stream/LongPipeline$StatelessOp;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V

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
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/stream/Sink<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 292
    .local p0, "this":Ljava/util/stream/LongPipeline$6;, "Ljava/util/stream/LongPipeline$6;"
    .local p2, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Long;>;"
    new-instance v0, Ljava/util/stream/LongPipeline$6$1;

    invoke-direct {v0, p0, p2}, Ljava/util/stream/LongPipeline$6$1;-><init>(Ljava/util/stream/LongPipeline$6;Ljava/util/stream/Sink;)V

    return-object v0
.end method
