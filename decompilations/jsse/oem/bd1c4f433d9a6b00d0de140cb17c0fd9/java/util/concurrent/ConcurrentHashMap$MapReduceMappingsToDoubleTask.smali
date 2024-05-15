.class final Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;
.super Ljava/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MapReduceMappingsToDoubleTask"
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

.field nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final reducer:Ljava/util/function/DoubleBinaryOperator;

.field result:D

.field rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final transformer:Ljava/util/function/ToDoubleBiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/ToDoubleBiFunction",
            "<-TK;-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;Ljava/util/function/ToDoubleBiFunction;DLjava/util/function/DoubleBinaryOperator;)V
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
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask",
            "<TK;TV;>;",
            "Ljava/util/function/ToDoubleBiFunction",
            "<-TK;-TV;>;D",
            "Ljava/util/function/DoubleBinaryOperator;",
            ")V"
        }
    .end annotation

    .prologue
    .line 5908
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask<TK;TV;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "nextRight":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask<TK;TV;>;"
    .local p7, "transformer":Ljava/util/function/ToDoubleBiFunction;, "Ljava/util/function/ToDoubleBiFunction<-TK;-TV;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    iput-object p6, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;

    .line 5909
    iput-object p7, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->transformer:Ljava/util/function/ToDoubleBiFunction;

    .line 5910
    iput-wide p8, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->basis:D

    iput-object p10, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->reducer:Ljava/util/function/DoubleBinaryOperator;

    .line 5911
    return-void
.end method


# virtual methods
.method public final compute()V
    .registers 21

    .prologue
    .line 5916
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v9, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->transformer:Ljava/util/function/ToDoubleBiFunction;

    .local v9, "transformer":Ljava/util/function/ToDoubleBiFunction;, "Ljava/util/function/ToDoubleBiFunction<-TK;-TV;>;"
    if-eqz v9, :cond_9e

    .line 5917
    move-object/from16 v0, p0

    iget-object v12, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->reducer:Ljava/util/function/DoubleBinaryOperator;

    .local v12, "reducer":Ljava/util/function/DoubleBinaryOperator;
    if-eqz v12, :cond_9e

    .line 5918
    move-object/from16 v0, p0

    iget-wide v10, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->basis:D

    .line 5919
    .local v10, "r":D
    move-object/from16 v0, p0

    iget v14, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->baseIndex:I

    .local v14, "i":I
    :goto_14
    move-object/from16 v0, p0

    iget v2, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->batch:I

    if-lez v2, :cond_4f

    .line 5920
    move-object/from16 v0, p0

    iget v6, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->baseLimit:I

    .local v6, "f":I
    add-int v2, v6, v14

    ushr-int/lit8 v5, v2, 0x1

    .local v5, "h":I
    if-le v5, v14, :cond_4f

    .line 5921
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->addToPendingCount(I)V

    .line 5922
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;

    .line 5923
    move-object/from16 v0, p0

    iget v3, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->batch:I

    ushr-int/lit8 v4, v3, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->batch:I

    move-object/from16 v0, p0

    iput v5, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->baseLimit:I

    move-object/from16 v0, p0

    iget-object v7, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 5924
    move-object/from16 v0, p0

    iget-object v8, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;

    move-object/from16 v3, p0

    .line 5922
    invoke-direct/range {v2 .. v12}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;Ljava/util/function/ToDoubleBiFunction;DLjava/util/function/DoubleBinaryOperator;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_14

    .line 5926
    .end local v5    # "h":I
    .end local v6    # "f":I
    :cond_4f
    :goto_4f
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v15

    .local v15, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v15, :cond_62

    .line 5927
    iget-object v2, v15, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v3, v15, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {v9, v2, v3}, Ljava/util/function/ToDoubleBiFunction;->applyAsDouble(Ljava/lang/Object;Ljava/lang/Object;)D

    move-result-wide v2

    invoke-interface {v12, v10, v11, v2, v3}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v10

    goto :goto_4f

    .line 5928
    :cond_62
    move-object/from16 v0, p0

    iput-wide v10, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->result:D

    .line 5930
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v13

    .local v13, "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_6a
    if-eqz v13, :cond_9e

    move-object/from16 v17, v13

    .line 5933
    check-cast v17, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;

    .line 5934
    .local v17, "t":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask<TK;TV;>;"
    move-object/from16 v0, v17

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;

    move-object/from16 v16, v0

    .line 5935
    .local v16, "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask<TK;TV;>;"
    :goto_76
    if-eqz v16, :cond_99

    .line 5936
    move-object/from16 v0, v17

    iget-wide v2, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->result:D

    move-object/from16 v0, v16

    iget-wide v0, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->result:D

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-interface {v12, v2, v3, v0, v1}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v2

    move-object/from16 v0, v17

    iput-wide v2, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->result:D

    .line 5937
    move-object/from16 v0, v16

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;

    move-object/from16 v16, v0

    .end local v16    # "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask<TK;TV;>;"
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;

    .restart local v16    # "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask<TK;TV;>;"
    goto :goto_76

    .line 5930
    :cond_99
    invoke-virtual {v13}, Ljava/util/concurrent/CountedCompleter;->nextComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v13

    goto :goto_6a

    .line 5941
    .end local v10    # "r":D
    .end local v12    # "reducer":Ljava/util/function/DoubleBinaryOperator;
    .end local v13    # "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v14    # "i":I
    .end local v15    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v16    # "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask<TK;TV;>;"
    .end local v17    # "t":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask<TK;TV;>;"
    :cond_9e
    return-void
.end method

.method public final getRawResult()Ljava/lang/Double;
    .registers 3

    .prologue
    .line 5912
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask<TK;TV;>;"
    iget-wide v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->result:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRawResult()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 5912
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->getRawResult()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
