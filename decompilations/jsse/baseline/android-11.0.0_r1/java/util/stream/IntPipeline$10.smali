.class Ljava/util/stream/IntPipeline$10;
.super Ljava/util/stream/IntPipeline$StatelessOp;
.source "IntPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/IntPipeline;->peek(Ljava/util/function/IntConsumer;)Ljava/util/stream/IntStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/IntPipeline$StatelessOp<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/stream/IntPipeline;

.field final synthetic blacklist val$action:Ljava/util/function/IntConsumer;


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/IntPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/IntConsumer;)V
    .registers 6
    .param p1, "this$0"    # Ljava/util/stream/IntPipeline;
    .param p3, "inputShape"    # Ljava/util/stream/StreamShape;
    .param p4, "opFlags"    # I

    .line 371
    .local p0, "this":Ljava/util/stream/IntPipeline$10;, "Ljava/util/stream/IntPipeline$10;"
    .local p2, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Integer;*>;"
    iput-object p1, p0, Ljava/util/stream/IntPipeline$10;->this$0:Ljava/util/stream/IntPipeline;

    iput-object p5, p0, Ljava/util/stream/IntPipeline$10;->val$action:Ljava/util/function/IntConsumer;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/stream/IntPipeline$StatelessOp;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V

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
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/stream/Sink<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 375
    .local p0, "this":Ljava/util/stream/IntPipeline$10;, "Ljava/util/stream/IntPipeline$10;"
    .local p2, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/stream/IntPipeline$10$1;

    invoke-direct {v0, p0, p2}, Ljava/util/stream/IntPipeline$10$1;-><init>(Ljava/util/stream/IntPipeline$10;Ljava/util/stream/Sink;)V

    return-object v0
.end method