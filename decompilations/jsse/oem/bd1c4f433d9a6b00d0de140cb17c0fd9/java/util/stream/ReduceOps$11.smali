.class final Ljava/util/stream/ReduceOps$11;
.super Ljava/util/stream/ReduceOps$ReduceOp;
.source "ReduceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/ReduceOps;->makeDouble(DLjava/util/function/DoubleBinaryOperator;)Ljava/util/stream/TerminalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/ReduceOps$ReduceOp",
        "<",
        "Ljava/lang/Double;",
        "Ljava/lang/Double;",
        "Ljava/util/stream/ReduceOps$11ReducingSink;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$identity:D

.field final synthetic val$operator:Ljava/util/function/DoubleBinaryOperator;


# direct methods
.method constructor <init>(Ljava/util/stream/StreamShape;DLjava/util/function/DoubleBinaryOperator;)V
    .registers 5
    .param p1, "$anonymous0"    # Ljava/util/stream/StreamShape;

    .prologue
    .line 1
    iput-wide p2, p0, Ljava/util/stream/ReduceOps$11;->val$identity:D

    iput-object p4, p0, Ljava/util/stream/ReduceOps$11;->val$operator:Ljava/util/function/DoubleBinaryOperator;

    .line 543
    invoke-direct {p0, p1}, Ljava/util/stream/ReduceOps$ReduceOp;-><init>(Ljava/util/stream/StreamShape;)V

    .line 1
    return-void
.end method


# virtual methods
.method public makeSink()Ljava/util/stream/ReduceOps$11ReducingSink;
    .registers 5

    .prologue
    .line 546
    new-instance v0, Ljava/util/stream/ReduceOps$11ReducingSink;

    iget-wide v2, p0, Ljava/util/stream/ReduceOps$11;->val$identity:D

    iget-object v1, p0, Ljava/util/stream/ReduceOps$11;->val$operator:Ljava/util/function/DoubleBinaryOperator;

    invoke-direct {v0, v2, v3, v1}, Ljava/util/stream/ReduceOps$11ReducingSink;-><init>(DLjava/util/function/DoubleBinaryOperator;)V

    return-object v0
.end method

.method public bridge synthetic makeSink()Ljava/util/stream/ReduceOps$AccumulatingSink;
    .registers 2

    .prologue
    .line 544
    invoke-virtual {p0}, Ljava/util/stream/ReduceOps$11;->makeSink()Ljava/util/stream/ReduceOps$11ReducingSink;

    move-result-object v0

    return-object v0
.end method
