.class final Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;
.super Ljava/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MapReduceEntriesToDoubleTask"
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

.field nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final reducer:Ljava/util/function/DoubleBinaryOperator;

.field result:D

.field rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final transformer:Ljava/util/function/ToDoubleFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/ToDoubleFunction",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;Ljava/util/function/ToDoubleFunction;DLjava/util/function/DoubleBinaryOperator;)V
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
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask",
            "<TK;TV;>;",
            "Ljava/util/function/ToDoubleFunction",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;D",
            "Ljava/util/function/DoubleBinaryOperator;",
            ")V"
        }
    .end annotation

    .prologue
    .line 5858
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask<TK;TV;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "nextRight":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask<TK;TV;>;"
    .local p7, "transformer":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    iput-object p6, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;

    .line 5859
    iput-object p7, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->transformer:Ljava/util/function/ToDoubleFunction;

    .line 5860
    iput-wide p8, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->basis:D

    iput-object p10, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->reducer:Ljava/util/function/DoubleBinaryOperator;

    .line 5861
    return-void
.end method


# virtual methods
.method public final compute()V
    .registers 21

    .prologue
    .line 5866
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v9, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->transformer:Ljava/util/function/ToDoubleFunction;

    .local v9, "transformer":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz v9, :cond_9a

    .line 5867
    move-object/from16 v0, p0

    iget-object v12, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->reducer:Ljava/util/function/DoubleBinaryOperator;

    .local v12, "reducer":Ljava/util/function/DoubleBinaryOperator;
    if-eqz v12, :cond_9a

    .line 5868
    move-object/from16 v0, p0

    iget-wide v10, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->basis:D

    .line 5869
    .local v10, "r":D
    move-object/from16 v0, p0

    iget v14, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->baseIndex:I

    .local v14, "i":I
    :goto_14
    move-object/from16 v0, p0

    iget v2, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->batch:I

    if-lez v2, :cond_4f

    .line 5870
    move-object/from16 v0, p0

    iget v6, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->baseLimit:I

    .local v6, "f":I
    add-int v2, v6, v14

    ushr-int/lit8 v5, v2, 0x1

    .local v5, "h":I
    if-le v5, v14, :cond_4f

    .line 5871
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->addToPendingCount(I)V

    .line 5872
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;

    .line 5873
    move-object/from16 v0, p0

    iget v3, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->batch:I

    ushr-int/lit8 v4, v3, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->batch:I

    move-object/from16 v0, p0

    iput v5, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->baseLimit:I

    move-object/from16 v0, p0

    iget-object v7, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 5874
    move-object/from16 v0, p0

    iget-object v8, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;

    move-object/from16 v3, p0

    .line 5872
    invoke-direct/range {v2 .. v12}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;Ljava/util/function/ToDoubleFunction;DLjava/util/function/DoubleBinaryOperator;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_14

    .line 5876
    .end local v5    # "h":I
    .end local v6    # "f":I
    :cond_4f
    :goto_4f
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v15

    .local v15, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v15, :cond_5e

    .line 5877
    invoke-interface {v9, v15}, Ljava/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-interface {v12, v10, v11, v2, v3}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v10

    goto :goto_4f

    .line 5878
    :cond_5e
    move-object/from16 v0, p0

    iput-wide v10, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->result:D

    .line 5880
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v13

    .local v13, "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_66
    if-eqz v13, :cond_9a

    move-object/from16 v17, v13

    .line 5883
    check-cast v17, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;

    .line 5884
    .local v17, "t":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask<TK;TV;>;"
    move-object/from16 v0, v17

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;

    move-object/from16 v16, v0

    .line 5885
    .local v16, "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask<TK;TV;>;"
    :goto_72
    if-eqz v16, :cond_95

    .line 5886
    move-object/from16 v0, v17

    iget-wide v2, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->result:D

    move-object/from16 v0, v16

    iget-wide v0, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->result:D

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-interface {v12, v2, v3, v0, v1}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v2

    move-object/from16 v0, v17

    iput-wide v2, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->result:D

    .line 5887
    move-object/from16 v0, v16

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;

    move-object/from16 v16, v0

    .end local v16    # "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask<TK;TV;>;"
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;

    .restart local v16    # "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask<TK;TV;>;"
    goto :goto_72

    .line 5880
    :cond_95
    invoke-virtual {v13}, Ljava/util/concurrent/CountedCompleter;->nextComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v13

    goto :goto_66

    .line 5891
    .end local v10    # "r":D
    .end local v12    # "reducer":Ljava/util/function/DoubleBinaryOperator;
    .end local v13    # "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v14    # "i":I
    .end local v15    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v16    # "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask<TK;TV;>;"
    .end local v17    # "t":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask<TK;TV;>;"
    :cond_9a
    return-void
.end method

.method public final getRawResult()Ljava/lang/Double;
    .registers 3

    .prologue
    .line 5862
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask<TK;TV;>;"
    iget-wide v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->result:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRawResult()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 5862
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->getRawResult()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
