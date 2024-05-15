.class Ljava/util/stream/ReduceOps$12ReducingSink;
.super Ljava/lang/Object;
.source "ReduceOps.java"

# interfaces
.implements Ljava/util/stream/ReduceOps$AccumulatingSink;
.implements Ljava/util/stream/Sink$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/ReduceOps;->makeDouble(Ljava/util/function/DoubleBinaryOperator;)Ljava/util/stream/TerminalOp;
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
        "Ljava/lang/Double;",
        "Ljava/util/OptionalDouble;",
        "Ljava/util/stream/ReduceOps$12ReducingSink;",
        ">;",
        "Ljava/util/stream/Sink$OfDouble;"
    }
.end annotation


# instance fields
.field private empty:Z

.field private state:D

.field final synthetic val$operator:Ljava/util/function/DoubleBinaryOperator;


# direct methods
.method constructor <init>(Ljava/util/function/DoubleBinaryOperator;)V
    .registers 2

    .prologue
    .line 561
    iput-object p1, p0, Ljava/util/stream/ReduceOps$12ReducingSink;->val$operator:Ljava/util/function/DoubleBinaryOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .registers 8
    .param p1, "t"    # D

    .prologue
    .line 573
    iget-boolean v0, p0, Ljava/util/stream/ReduceOps$12ReducingSink;->empty:Z

    if-eqz v0, :cond_a

    .line 574
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/stream/ReduceOps$12ReducingSink;->empty:Z

    .line 575
    iput-wide p1, p0, Ljava/util/stream/ReduceOps$12ReducingSink;->state:D

    .line 580
    :goto_9
    return-void

    .line 578
    :cond_a
    iget-object v0, p0, Ljava/util/stream/ReduceOps$12ReducingSink;->val$operator:Ljava/util/function/DoubleBinaryOperator;

    iget-wide v2, p0, Ljava/util/stream/ReduceOps$12ReducingSink;->state:D

    invoke-interface {v0, v2, v3, p1, p2}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/stream/ReduceOps$12ReducingSink;->state:D

    goto :goto_9
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 228
    check-cast p1, Ljava/lang/Double;

    invoke-interface {p0, p1}, Ljava/util/stream/Sink$OfDouble;->accept(Ljava/lang/Double;)V

    return-void
.end method

.method public begin(J)V
    .registers 5
    .param p1, "size"    # J

    .prologue
    .line 567
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/stream/ReduceOps$12ReducingSink;->empty:Z

    .line 568
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/stream/ReduceOps$12ReducingSink;->state:D

    .line 569
    return-void
.end method

.method public combine(Ljava/util/stream/ReduceOps$12ReducingSink;)V
    .registers 4
    .param p1, "other"    # Ljava/util/stream/ReduceOps$12ReducingSink;

    .prologue
    .line 589
    iget-boolean v0, p1, Ljava/util/stream/ReduceOps$12ReducingSink;->empty:Z

    if-nez v0, :cond_9

    .line 590
    iget-wide v0, p1, Ljava/util/stream/ReduceOps$12ReducingSink;->state:D

    invoke-virtual {p0, v0, v1}, Ljava/util/stream/ReduceOps$12ReducingSink;->accept(D)V

    .line 591
    :cond_9
    return-void
.end method

.method public bridge synthetic combine(Ljava/util/stream/ReduceOps$AccumulatingSink;)V
    .registers 2

    .prologue
    .line 587
    check-cast p1, Ljava/util/stream/ReduceOps$12ReducingSink;

    invoke-virtual {p0, p1}, Ljava/util/stream/ReduceOps$12ReducingSink;->combine(Ljava/util/stream/ReduceOps$12ReducingSink;)V

    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 582
    invoke-virtual {p0}, Ljava/util/stream/ReduceOps$12ReducingSink;->get()Ljava/util/OptionalDouble;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/OptionalDouble;
    .registers 3

    .prologue
    .line 584
    iget-boolean v0, p0, Ljava/util/stream/ReduceOps$12ReducingSink;->empty:Z

    if-eqz v0, :cond_9

    invoke-static {}, Ljava/util/OptionalDouble;->empty()Ljava/util/OptionalDouble;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    iget-wide v0, p0, Ljava/util/stream/ReduceOps$12ReducingSink;->state:D

    invoke-static {v0, v1}, Ljava/util/OptionalDouble;->of(D)Ljava/util/OptionalDouble;

    move-result-object v0

    goto :goto_8
.end method
