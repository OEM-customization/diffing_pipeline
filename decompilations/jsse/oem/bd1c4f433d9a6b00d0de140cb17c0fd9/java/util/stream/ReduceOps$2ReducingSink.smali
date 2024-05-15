.class Ljava/util/stream/ReduceOps$2ReducingSink;
.super Ljava/lang/Object;
.source "ReduceOps.java"

# interfaces
.implements Ljava/util/stream/ReduceOps$AccumulatingSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/ReduceOps;->makeRef(Ljava/util/function/BinaryOperator;)Ljava/util/stream/TerminalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReducingSink"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/stream/ReduceOps$AccumulatingSink",
        "<TT;",
        "Ljava/util/Optional",
        "<TT;>;",
        "Ljava/util/stream/ReduceOps$2ReducingSink;",
        ">;"
    }
.end annotation


# instance fields
.field private empty:Z

.field private state:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic val$operator:Ljava/util/function/BinaryOperator;


# direct methods
.method constructor <init>(Ljava/util/function/BinaryOperator;)V
    .registers 2

    .prologue
    .line 107
    iput-object p1, p0, Ljava/util/stream/ReduceOps$2ReducingSink;->val$operator:Ljava/util/function/BinaryOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Ljava/util/stream/ReduceOps$2ReducingSink;->empty:Z

    if-eqz v0, :cond_a

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/stream/ReduceOps$2ReducingSink;->empty:Z

    .line 121
    iput-object p1, p0, Ljava/util/stream/ReduceOps$2ReducingSink;->state:Ljava/lang/Object;

    .line 125
    :goto_9
    return-void

    .line 123
    :cond_a
    iget-object v0, p0, Ljava/util/stream/ReduceOps$2ReducingSink;->val$operator:Ljava/util/function/BinaryOperator;

    iget-object v1, p0, Ljava/util/stream/ReduceOps$2ReducingSink;->state:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/stream/ReduceOps$2ReducingSink;->state:Ljava/lang/Object;

    goto :goto_9
.end method

.method public begin(J)V
    .registers 4
    .param p1, "size"    # J

    .prologue
    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/stream/ReduceOps$2ReducingSink;->empty:Z

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/stream/ReduceOps$2ReducingSink;->state:Ljava/lang/Object;

    .line 115
    return-void
.end method

.method public combine(Ljava/util/stream/ReduceOps$2ReducingSink;)V
    .registers 3
    .param p1, "other"    # Ljava/util/stream/ReduceOps$2ReducingSink;

    .prologue
    .line 134
    iget-boolean v0, p1, Ljava/util/stream/ReduceOps$2ReducingSink;->empty:Z

    if-nez v0, :cond_9

    .line 135
    iget-object v0, p1, Ljava/util/stream/ReduceOps$2ReducingSink;->state:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/util/stream/ReduceOps$2ReducingSink;->accept(Ljava/lang/Object;)V

    .line 136
    :cond_9
    return-void
.end method

.method public bridge synthetic combine(Ljava/util/stream/ReduceOps$AccumulatingSink;)V
    .registers 2

    .prologue
    .line 132
    check-cast p1, Ljava/util/stream/ReduceOps$2ReducingSink;

    invoke-virtual {p0, p1}, Ljava/util/stream/ReduceOps$2ReducingSink;->combine(Ljava/util/stream/ReduceOps$2ReducingSink;)V

    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 127
    invoke-virtual {p0}, Ljava/util/stream/ReduceOps$2ReducingSink;->get()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 129
    iget-boolean v0, p0, Ljava/util/stream/ReduceOps$2ReducingSink;->empty:Z

    if-eqz v0, :cond_9

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Ljava/util/stream/ReduceOps$2ReducingSink;->state:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    goto :goto_8
.end method
