.class final Ljava/util/stream/ReduceOps$3;
.super Ljava/util/stream/ReduceOps$ReduceOp;
.source "ReduceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/ReduceOps;->makeRef(Ljava/util/stream/Collector;)Ljava/util/stream/TerminalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/ReduceOps$ReduceOp",
        "<TT;TI;",
        "Ljava/util/stream/ReduceOps$3ReducingSink;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$accumulator:Ljava/util/function/BiConsumer;

.field final synthetic val$collector:Ljava/util/stream/Collector;

.field final synthetic val$combiner:Ljava/util/function/BinaryOperator;

.field final synthetic val$supplier:Ljava/util/function/Supplier;


# direct methods
.method constructor <init>(Ljava/util/stream/StreamShape;Ljava/util/stream/Collector;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;)V
    .registers 6
    .param p1, "$anonymous0"    # Ljava/util/stream/StreamShape;

    .prologue
    .line 1
    iput-object p2, p0, Ljava/util/stream/ReduceOps$3;->val$collector:Ljava/util/stream/Collector;

    iput-object p3, p0, Ljava/util/stream/ReduceOps$3;->val$supplier:Ljava/util/function/Supplier;

    iput-object p4, p0, Ljava/util/stream/ReduceOps$3;->val$accumulator:Ljava/util/function/BiConsumer;

    iput-object p5, p0, Ljava/util/stream/ReduceOps$3;->val$combiner:Ljava/util/function/BinaryOperator;

    .line 177
    invoke-direct {p0, p1}, Ljava/util/stream/ReduceOps$ReduceOp;-><init>(Ljava/util/stream/StreamShape;)V

    .line 1
    return-void
.end method


# virtual methods
.method public getOpFlags()I
    .registers 3

    .prologue
    .line 185
    iget-object v0, p0, Ljava/util/stream/ReduceOps$3;->val$collector:Ljava/util/stream/Collector;

    invoke-interface {v0}, Ljava/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Ljava/util/stream/Collector$Characteristics;->UNORDERED:Ljava/util/stream/Collector$Characteristics;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 186
    sget v0, Ljava/util/stream/StreamOpFlag;->NOT_ORDERED:I

    .line 185
    :goto_10
    return v0

    .line 187
    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public makeSink()Ljava/util/stream/ReduceOps$3ReducingSink;
    .registers 5

    .prologue
    .line 180
    new-instance v0, Ljava/util/stream/ReduceOps$3ReducingSink;

    iget-object v1, p0, Ljava/util/stream/ReduceOps$3;->val$supplier:Ljava/util/function/Supplier;

    iget-object v2, p0, Ljava/util/stream/ReduceOps$3;->val$accumulator:Ljava/util/function/BiConsumer;

    iget-object v3, p0, Ljava/util/stream/ReduceOps$3;->val$combiner:Ljava/util/function/BinaryOperator;

    invoke-direct {v0, v1, v2, v3}, Ljava/util/stream/ReduceOps$3ReducingSink;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;)V

    return-object v0
.end method

.method public bridge synthetic makeSink()Ljava/util/stream/ReduceOps$AccumulatingSink;
    .registers 2

    .prologue
    .line 178
    invoke-virtual {p0}, Ljava/util/stream/ReduceOps$3;->makeSink()Ljava/util/stream/ReduceOps$3ReducingSink;

    move-result-object v0

    return-object v0
.end method
