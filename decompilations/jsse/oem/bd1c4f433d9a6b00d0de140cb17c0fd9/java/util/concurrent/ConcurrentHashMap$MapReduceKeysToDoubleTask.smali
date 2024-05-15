.class final Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;
.super Ljava/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MapReduceKeysToDoubleTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentHashMap$BulkTask",
        "<TK;TV;",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final basis:D

.field nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final reducer:Ljava/util/function/DoubleBinaryOperator;

.field result:D

.field rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final transformer:Ljava/util/function/ToDoubleFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/ToDoubleFunction",
            "<-TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;Ljava/util/function/ToDoubleFunction;DLjava/util/function/DoubleBinaryOperator;)V
    .registers 11
    .param p2, "b"    # I
    .param p3, "i"    # I
    .param p4, "f"    # I
    .param p8, "basis"    # D
    .param p10, "reducer"    # Ljava/util/function/DoubleBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap$BulkTask",
            "<TK;TV;*>;III[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask",
            "<TK;TV;>;",
            "Ljava/util/function/ToDoubleFunction",
            "<-TK;>;D",
            "Ljava/util/function/DoubleBinaryOperator;",
            ")V"
        }
    .end annotation

    .prologue
    .line 5758
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask<TK;TV;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "nextRight":Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask<TK;TV;>;"
    .local p7, "transformer":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<-TK;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    iput-object p6, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;

    .line 5759
    iput-object p7, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->transformer:Ljava/util/function/ToDoubleFunction;

    .line 5760
    iput-wide p8, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->basis:D

    iput-object p10, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->reducer:Ljava/util/function/DoubleBinaryOperator;

    .line 5761
    return-void
.end method


# virtual methods
.method public final compute()V
    .registers 21

    .prologue
    .line 5766
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v9, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->transformer:Ljava/util/function/ToDoubleFunction;

    .local v9, "transformer":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<-TK;>;"
    if-eqz v9, :cond_9c

    .line 5767
    move-object/from16 v0, p0

    iget-object v12, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->reducer:Ljava/util/function/DoubleBinaryOperator;

    .local v12, "reducer":Ljava/util/function/DoubleBinaryOperator;
    if-eqz v12, :cond_9c

    .line 5768
    move-object/from16 v0, p0

    iget-wide v10, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->basis:D

    .line 5769
    .local v10, "r":D
    move-object/from16 v0, p0

    iget v14, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->baseIndex:I

    .local v14, "i":I
    :goto_14
    move-object/from16 v0, p0

    iget v2, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->batch:I

    if-lez v2, :cond_4f

    .line 5770
    move-object/from16 v0, p0

    iget v6, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->baseLimit:I

    .local v6, "f":I
    add-int v2, v6, v14

    ushr-int/lit8 v5, v2, 0x1

    .local v5, "h":I
    if-le v5, v14, :cond_4f

    .line 5771
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->addToPendingCount(I)V

    .line 5772
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;

    .line 5773
    move-object/from16 v0, p0

    iget v3, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->batch:I

    ushr-int/lit8 v4, v3, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->batch:I

    move-object/from16 v0, p0

    iput v5, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->baseLimit:I

    move-object/from16 v0, p0

    iget-object v7, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 5774
    move-object/from16 v0, p0

    iget-object v8, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;

    move-object/from16 v3, p0

    .line 5772
    invoke-direct/range {v2 .. v12}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;Ljava/util/function/ToDoubleFunction;DLjava/util/function/DoubleBinaryOperator;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_14

    .line 5776
    .end local v5    # "h":I
    .end local v6    # "f":I
    :cond_4f
    :goto_4f
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v15

    .local v15, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v15, :cond_60

    .line 5777
    iget-object v2, v15, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v9, v2}, Ljava/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-interface {v12, v10, v11, v2, v3}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v10

    goto :goto_4f

    .line 5778
    :cond_60
    move-object/from16 v0, p0

    iput-wide v10, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->result:D

    .line 5780
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v13

    .local v13, "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_68
    if-eqz v13, :cond_9c

    move-object/from16 v17, v13

    .line 5783
    check-cast v17, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;

    .line 5784
    .local v17, "t":Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask<TK;TV;>;"
    move-object/from16 v0, v17

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;

    move-object/from16 v16, v0

    .line 5785
    .local v16, "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask<TK;TV;>;"
    :goto_74
    if-eqz v16, :cond_97

    .line 5786
    move-object/from16 v0, v17

    iget-wide v2, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->result:D

    move-object/from16 v0, v16

    iget-wide v0, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->result:D

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-interface {v12, v2, v3, v0, v1}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v2

    move-object/from16 v0, v17

    iput-wide v2, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->result:D

    .line 5787
    move-object/from16 v0, v16

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;

    move-object/from16 v16, v0

    .end local v16    # "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask<TK;TV;>;"
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;

    .restart local v16    # "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask<TK;TV;>;"
    goto :goto_74

    .line 5780
    :cond_97
    invoke-virtual {v13}, Ljava/util/concurrent/CountedCompleter;->nextComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v13

    goto :goto_68

    .line 5791
    .end local v10    # "r":D
    .end local v12    # "reducer":Ljava/util/function/DoubleBinaryOperator;
    .end local v13    # "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v14    # "i":I
    .end local v15    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v16    # "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask<TK;TV;>;"
    .end local v17    # "t":Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask<TK;TV;>;"
    :cond_9c
    return-void
.end method

.method public final getRawResult()Ljava/lang/Double;
    .registers 3

    .prologue
    .line 5762
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask<TK;TV;>;"
    iget-wide v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->result:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRawResult()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 5762
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->getRawResult()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
