.class Ljava/util/stream/IntPipeline$5;
.super Ljava/util/stream/LongPipeline$StatelessOp;
.source "IntPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/IntPipeline;->mapToLong(Ljava/util/function/IntToLongFunction;)Ljava/util/stream/LongStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/LongPipeline$StatelessOp",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/stream/IntPipeline;

.field final synthetic val$mapper:Ljava/util/function/IntToLongFunction;


# direct methods
.method constructor <init>(Ljava/util/stream/IntPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/IntToLongFunction;)V
    .registers 6
    .param p3, "$anonymous1"    # Ljava/util/stream/StreamShape;
    .param p4, "$anonymous2"    # I

    .prologue
    .line 1
    .local p1, "this$0":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    .local p2, "$anonymous0":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Integer;*>;"
    iput-object p1, p0, Ljava/util/stream/IntPipeline$5;->this$0:Ljava/util/stream/IntPipeline;

    iput-object p5, p0, Ljava/util/stream/IntPipeline$5;->val$mapper:Ljava/util/function/IntToLongFunction;

    .line 261
    invoke-direct {p0, p2, p3, p4}, Ljava/util/stream/LongPipeline$StatelessOp;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V

    .line 1
    return-void
.end method


# virtual methods
.method public opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
    .registers 5
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/stream/Sink",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/stream/Sink",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 265
    .local p2, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Long;>;"
    new-instance v0, Ljava/util/stream/IntPipeline$5$1;

    iget-object v1, p0, Ljava/util/stream/IntPipeline$5;->val$mapper:Ljava/util/function/IntToLongFunction;

    invoke-direct {v0, p0, p2, v1}, Ljava/util/stream/IntPipeline$5$1;-><init>(Ljava/util/stream/IntPipeline$5;Ljava/util/stream/Sink;Ljava/util/function/IntToLongFunction;)V

    return-object v0
.end method
