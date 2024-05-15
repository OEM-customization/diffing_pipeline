.class final Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble;
.super Ljava/util/stream/Nodes$SizedCollectorTask;
.source "Nodes.java"

# interfaces
.implements Ljava/util/stream/Sink$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes$SizedCollectorTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/Nodes$SizedCollectorTask<",
        "TP_IN;",
        "Ljava/lang/Double;",
        "Ljava/util/stream/Sink$OfDouble;",
        "Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble<",
        "TP_IN;>;>;",
        "Ljava/util/stream/Sink$OfDouble;"
    }
.end annotation


# instance fields
.field private final blacklist array:[D


# direct methods
.method constructor blacklist <init>(Ljava/util/Spliterator;Ljava/util/stream/PipelineHelper;[D)V
    .registers 5
    .param p3, "array"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "TP_IN;>;",
            "Ljava/util/stream/PipelineHelper<",
            "Ljava/lang/Double;",
            ">;[D)V"
        }
    .end annotation

    .line 1998
    .local p0, "this":Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble;, "Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble<TP_IN;>;"
    .local p1, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p2, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Double;>;"
    array-length v0, p3

    invoke-direct {p0, p1, p2, v0}, Ljava/util/stream/Nodes$SizedCollectorTask;-><init>(Ljava/util/Spliterator;Ljava/util/stream/PipelineHelper;I)V

    .line 1999
    iput-object p3, p0, Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble;->array:[D

    .line 2000
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble;Ljava/util/Spliterator;JJ)V
    .registers 16
    .param p3, "offset"    # J
    .param p5, "length"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble<",
            "TP_IN;>;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;JJ)V"
        }
    .end annotation

    .line 2004
    .local p0, "this":Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble;, "Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble<TP_IN;>;"
    .local p1, "parent":Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble;, "Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble<TP_IN;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    iget-object v0, p1, Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble;->array:[D

    array-length v8, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v8}, Ljava/util/stream/Nodes$SizedCollectorTask;-><init>(Ljava/util/stream/Nodes$SizedCollectorTask;Ljava/util/Spliterator;JJI)V

    .line 2005
    iget-object v0, p1, Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble;->array:[D

    iput-object v0, p0, Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble;->array:[D

    .line 2006
    return-void
.end method


# virtual methods
.method public whitelist test-api accept(D)V
    .registers 6
    .param p1, "value"    # D

    .line 2016
    .local p0, "this":Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble;, "Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble<TP_IN;>;"
    iget v0, p0, Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble;->index:I

    iget v1, p0, Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble;->fence:I

    if-ge v0, v1, :cond_11

    .line 2019
    iget-object v0, p0, Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble;->array:[D

    iget v1, p0, Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble;->index:I

    aput-wide p1, v0, v1

    .line 2020
    return-void

    .line 2017
    :cond_11
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    iget v1, p0, Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist makeChild(Ljava/util/Spliterator;JJ)Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble;
    .registers 14
    .param p2, "offset"    # J
    .param p4, "size"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "TP_IN;>;JJ)",
            "Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble<",
            "TP_IN;>;"
        }
    .end annotation

    .line 2011
    .local p0, "this":Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble;, "Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble<TP_IN;>;"
    .local p1, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    new-instance v7, Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble;-><init>(Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble;Ljava/util/Spliterator;JJ)V

    return-object v7
.end method

.method bridge synthetic blacklist makeChild(Ljava/util/Spliterator;JJ)Ljava/util/stream/Nodes$SizedCollectorTask;
    .registers 6

    .line 1991
    .local p0, "this":Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble;, "Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble<TP_IN;>;"
    invoke-virtual/range {p0 .. p5}, Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble;->makeChild(Ljava/util/Spliterator;JJ)Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble;

    move-result-object p1

    return-object p1
.end method
