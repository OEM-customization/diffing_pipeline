.class Ljava/util/stream/ReduceOps$10ReducingSink;
.super Ljava/util/stream/ReduceOps$Box;
.source "ReduceOps.java"

# interfaces
.implements Ljava/util/stream/ReduceOps$AccumulatingSink;
.implements Ljava/util/stream/Sink$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/ReduceOps;->makeLong(Ljava/util/function/Supplier;Ljava/util/function/ObjLongConsumer;Ljava/util/function/BinaryOperator;)Ljava/util/stream/TerminalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReducingSink"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/ReduceOps$Box<",
        "TR;>;",
        "Ljava/util/stream/ReduceOps$AccumulatingSink<",
        "Ljava/lang/Long;",
        "TR;",
        "Ljava/util/stream/ReduceOps$10ReducingSink;",
        ">;",
        "Ljava/util/stream/Sink$OfLong;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$accumulator:Ljava/util/function/ObjLongConsumer;

.field final synthetic blacklist val$combiner:Ljava/util/function/BinaryOperator;

.field final synthetic blacklist val$supplier:Ljava/util/function/Supplier;


# direct methods
.method constructor blacklist <init>(Ljava/util/function/Supplier;Ljava/util/function/ObjLongConsumer;Ljava/util/function/BinaryOperator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 483
    iput-object p1, p0, Ljava/util/stream/ReduceOps$10ReducingSink;->val$supplier:Ljava/util/function/Supplier;

    iput-object p2, p0, Ljava/util/stream/ReduceOps$10ReducingSink;->val$accumulator:Ljava/util/function/ObjLongConsumer;

    iput-object p3, p0, Ljava/util/stream/ReduceOps$10ReducingSink;->val$combiner:Ljava/util/function/BinaryOperator;

    invoke-direct {p0}, Ljava/util/stream/ReduceOps$Box;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api accept(J)V
    .registers 5
    .param p1, "t"    # J

    .line 492
    iget-object v0, p0, Ljava/util/stream/ReduceOps$10ReducingSink;->val$accumulator:Ljava/util/function/ObjLongConsumer;

    iget-object v1, p0, Ljava/util/stream/ReduceOps$10ReducingSink;->state:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Ljava/util/function/ObjLongConsumer;->accept(Ljava/lang/Object;J)V

    .line 493
    return-void
.end method

.method public blacklist begin(J)V
    .registers 4
    .param p1, "size"    # J

    .line 487
    iget-object v0, p0, Ljava/util/stream/ReduceOps$10ReducingSink;->val$supplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/stream/ReduceOps$10ReducingSink;->state:Ljava/lang/Object;

    .line 488
    return-void
.end method

.method public blacklist combine(Ljava/util/stream/ReduceOps$10ReducingSink;)V
    .registers 5
    .param p1, "other"    # Ljava/util/stream/ReduceOps$10ReducingSink;

    .line 497
    iget-object v0, p0, Ljava/util/stream/ReduceOps$10ReducingSink;->val$combiner:Ljava/util/function/BinaryOperator;

    iget-object v1, p0, Ljava/util/stream/ReduceOps$10ReducingSink;->state:Ljava/lang/Object;

    iget-object v2, p1, Ljava/util/stream/ReduceOps$10ReducingSink;->state:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/stream/ReduceOps$10ReducingSink;->state:Ljava/lang/Object;

    .line 498
    return-void
.end method

.method public bridge synthetic blacklist combine(Ljava/util/stream/ReduceOps$AccumulatingSink;)V
    .registers 2

    .line 483
    check-cast p1, Ljava/util/stream/ReduceOps$10ReducingSink;

    invoke-virtual {p0, p1}, Ljava/util/stream/ReduceOps$10ReducingSink;->combine(Ljava/util/stream/ReduceOps$10ReducingSink;)V

    return-void
.end method
