.class public Ljava/util/stream/ReferencePipeline$Head;
.super Ljava/util/stream/ReferencePipeline;
.source "ReferencePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/ReferencePipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Head"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E_IN:",
        "Ljava/lang/Object;",
        "E_OUT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/ReferencePipeline",
        "<TE_IN;TE_OUT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Spliterator;IZ)V
    .registers 4
    .param p2, "sourceFlags"    # I
    .param p3, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<*>;IZ)V"
        }
    .end annotation

    .prologue
    .line 565
    .local p0, "this":Ljava/util/stream/ReferencePipeline$Head;, "Ljava/util/stream/ReferencePipeline$Head<TE_IN;TE_OUT;>;"
    .local p1, "source":Ljava/util/Spliterator;, "Ljava/util/Spliterator<*>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/ReferencePipeline;-><init>(Ljava/util/Spliterator;IZ)V

    .line 566
    return-void
.end method

.method public constructor <init>(Ljava/util/function/Supplier;IZ)V
    .registers 4
    .param p2, "sourceFlags"    # I
    .param p3, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<+",
            "Ljava/util/Spliterator",
            "<*>;>;IZ)V"
        }
    .end annotation

    .prologue
    .line 553
    .local p0, "this":Ljava/util/stream/ReferencePipeline$Head;, "Ljava/util/stream/ReferencePipeline$Head<TE_IN;TE_OUT;>;"
    .local p1, "source":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/util/Spliterator<*>;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/ReferencePipeline;-><init>(Ljava/util/function/Supplier;IZ)V

    .line 554
    return-void
.end method


# virtual methods
.method public forEach(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE_OUT;>;)V"
        }
    .end annotation

    .prologue
    .line 582
    .local p0, "this":Ljava/util/stream/ReferencePipeline$Head;, "Ljava/util/stream/ReferencePipeline$Head<TE_IN;TE_OUT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE_OUT;>;"
    invoke-virtual {p0}, Ljava/util/stream/ReferencePipeline$Head;->isParallel()Z

    move-result v0

    if-nez v0, :cond_e

    .line 583
    invoke-virtual {p0}, Ljava/util/stream/ReferencePipeline$Head;->sourceStageSpliterator()Ljava/util/Spliterator;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 588
    :goto_d
    return-void

    .line 586
    :cond_e
    invoke-super {p0, p1}, Ljava/util/stream/ReferencePipeline;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_d
.end method

.method public forEachOrdered(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE_OUT;>;)V"
        }
    .end annotation

    .prologue
    .line 592
    .local p0, "this":Ljava/util/stream/ReferencePipeline$Head;, "Ljava/util/stream/ReferencePipeline$Head<TE_IN;TE_OUT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE_OUT;>;"
    invoke-virtual {p0}, Ljava/util/stream/ReferencePipeline$Head;->isParallel()Z

    move-result v0

    if-nez v0, :cond_e

    .line 593
    invoke-virtual {p0}, Ljava/util/stream/ReferencePipeline$Head;->sourceStageSpliterator()Ljava/util/Spliterator;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 598
    :goto_d
    return-void

    .line 596
    :cond_e
    invoke-super {p0, p1}, Ljava/util/stream/ReferencePipeline;->forEachOrdered(Ljava/util/function/Consumer;)V

    goto :goto_d
.end method

.method public final opIsStateful()Z
    .registers 2

    .prologue
    .line 570
    .local p0, "this":Ljava/util/stream/ReferencePipeline$Head;, "Ljava/util/stream/ReferencePipeline$Head<TE_IN;TE_OUT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
    .registers 4
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/stream/Sink",
            "<TE_OUT;>;)",
            "Ljava/util/stream/Sink",
            "<TE_IN;>;"
        }
    .end annotation

    .prologue
    .line 575
    .local p0, "this":Ljava/util/stream/ReferencePipeline$Head;, "Ljava/util/stream/ReferencePipeline$Head<TE_IN;TE_OUT;>;"
    .local p2, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<TE_OUT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
