.class Ljava/util/stream/ReduceOps$5ReducingSink;
.super Ljava/lang/Object;
.source "ReduceOps.java"

# interfaces
.implements Ljava/util/stream/ReduceOps$AccumulatingSink;
.implements Ljava/util/stream/Sink$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/ReduceOps;->makeInt(ILjava/util/function/IntBinaryOperator;)Ljava/util/stream/TerminalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReducingSink"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/stream/ReduceOps$AccumulatingSink",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/util/stream/ReduceOps$5ReducingSink;",
        ">;",
        "Ljava/util/stream/Sink$OfInt;"
    }
.end annotation


# instance fields
.field private state:I

.field final synthetic val$identity:I

.field final synthetic val$operator:Ljava/util/function/IntBinaryOperator;


# direct methods
.method constructor <init>(ILjava/util/function/IntBinaryOperator;)V
    .registers 3

    .prologue
    .line 247
    iput p1, p0, Ljava/util/stream/ReduceOps$5ReducingSink;->val$identity:I

    iput-object p2, p0, Ljava/util/stream/ReduceOps$5ReducingSink;->val$operator:Ljava/util/function/IntBinaryOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(I)V
    .registers 4
    .param p1, "t"    # I

    .prologue
    .line 258
    iget-object v0, p0, Ljava/util/stream/ReduceOps$5ReducingSink;->val$operator:Ljava/util/function/IntBinaryOperator;

    iget v1, p0, Ljava/util/stream/ReduceOps$5ReducingSink;->state:I

    invoke-interface {v0, v1, p1}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v0

    iput v0, p0, Ljava/util/stream/ReduceOps$5ReducingSink;->state:I

    .line 259
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 194
    check-cast p1, Ljava/lang/Integer;

    invoke-interface {p0, p1}, Ljava/util/stream/Sink$OfInt;->accept(Ljava/lang/Integer;)V

    return-void
.end method

.method public begin(J)V
    .registers 4
    .param p1, "size"    # J

    .prologue
    .line 253
    iget v0, p0, Ljava/util/stream/ReduceOps$5ReducingSink;->val$identity:I

    iput v0, p0, Ljava/util/stream/ReduceOps$5ReducingSink;->state:I

    .line 254
    return-void
.end method

.method public combine(Ljava/util/stream/ReduceOps$5ReducingSink;)V
    .registers 3
    .param p1, "other"    # Ljava/util/stream/ReduceOps$5ReducingSink;

    .prologue
    .line 268
    iget v0, p1, Ljava/util/stream/ReduceOps$5ReducingSink;->state:I

    invoke-virtual {p0, v0}, Ljava/util/stream/ReduceOps$5ReducingSink;->accept(I)V

    .line 269
    return-void
.end method

.method public bridge synthetic combine(Ljava/util/stream/ReduceOps$AccumulatingSink;)V
    .registers 2

    .prologue
    .line 266
    check-cast p1, Ljava/util/stream/ReduceOps$5ReducingSink;

    invoke-virtual {p0, p1}, Ljava/util/stream/ReduceOps$5ReducingSink;->combine(Ljava/util/stream/ReduceOps$5ReducingSink;)V

    return-void
.end method

.method public get()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 263
    iget v0, p0, Ljava/util/stream/ReduceOps$5ReducingSink;->state:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 261
    invoke-virtual {p0}, Ljava/util/stream/ReduceOps$5ReducingSink;->get()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
