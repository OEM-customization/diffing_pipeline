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
        "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<",
        "TK;TV;",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final greylist-max-o basis:D

.field greylist-max-o nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final greylist-max-o reducer:Ljava/util/function/DoubleBinaryOperator;

.field greylist-max-o result:D

.field greylist-max-o rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final greylist-max-o transformer:Ljava/util/function/ToDoubleBiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/ToDoubleBiFunction<",
            "-TK;-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;Ljava/util/function/ToDoubleBiFunction;DLjava/util/function/DoubleBinaryOperator;)V
    .registers 11
    .param p2, "b"    # I
    .param p3, "i"    # I
    .param p4, "f"    # I
    .param p8, "basis"    # D
    .param p10, "reducer"    # Ljava/util/function/DoubleBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<",
            "TK;TV;*>;III[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask<",
            "TK;TV;>;",
            "Ljava/util/function/ToDoubleBiFunction<",
            "-TK;-TV;>;D",
            "Ljava/util/function/DoubleBinaryOperator;",
            ")V"
        }
    .end annotation

    .line 5910
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask<TK;TV;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "nextRight":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask<TK;TV;>;"
    .local p7, "transformer":Ljava/util/function/ToDoubleBiFunction;, "Ljava/util/function/ToDoubleBiFunction<-TK;-TV;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    iput-object p6, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;

    .line 5911
    iput-object p7, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->transformer:Ljava/util/function/ToDoubleBiFunction;

    .line 5912
    iput-wide p8, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->basis:D

    iput-object p10, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->reducer:Ljava/util/function/DoubleBinaryOperator;

    .line 5913
    return-void
.end method


# virtual methods
.method public final whitelist test-api compute()V
    .registers 20

    .line 5918
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask<TK;TV;>;"
    move-object/from16 v11, p0

    iget-object v0, v11, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->transformer:Ljava/util/function/ToDoubleBiFunction;

    move-object v12, v0

    .local v12, "transformer":Ljava/util/function/ToDoubleBiFunction;, "Ljava/util/function/ToDoubleBiFunction<-TK;-TV;>;"
    if-eqz v0, :cond_92

    iget-object v0, v11, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->reducer:Ljava/util/function/DoubleBinaryOperator;

    move-object v13, v0

    .local v13, "reducer":Ljava/util/function/DoubleBinaryOperator;
    if-eqz v0, :cond_90

    .line 5920
    iget-wide v14, v11, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->basis:D

    .line 5921
    .local v14, "r":D
    iget v10, v11, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->baseIndex:I

    .local v10, "i":I
    :goto_10
    iget v0, v11, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->batch:I

    if-lez v0, :cond_50

    iget v0, v11, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->baseLimit:I

    move v4, v0

    .local v4, "f":I
    add-int/2addr v0, v10

    const/4 v1, 0x1

    ushr-int/2addr v0, v1

    move v8, v0

    .local v8, "h":I
    if-le v0, v10, :cond_49

    .line 5923
    invoke-virtual {v11, v1}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->addToPendingCount(I)V

    .line 5924
    new-instance v9, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;

    iget v0, v11, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->batch:I

    ushr-int/lit8 v2, v0, 0x1

    iput v2, v11, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->batch:I

    iput v8, v11, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->baseLimit:I

    iget-object v5, v11, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    iget-object v6, v11, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;

    move-object v0, v9

    move-object/from16 v1, p0

    move v3, v8

    move-object v7, v12

    move/from16 v16, v8

    move-object/from16 v17, v12

    move-object v12, v9

    .end local v8    # "h":I
    .end local v12    # "transformer":Ljava/util/function/ToDoubleBiFunction;, "Ljava/util/function/ToDoubleBiFunction<-TK;-TV;>;"
    .local v16, "h":I
    .local v17, "transformer":Ljava/util/function/ToDoubleBiFunction;, "Ljava/util/function/ToDoubleBiFunction<-TK;-TV;>;"
    move-wide v8, v14

    move/from16 v18, v10

    .end local v10    # "i":I
    .local v18, "i":I
    move-object v10, v13

    invoke-direct/range {v0 .. v10}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;Ljava/util/function/ToDoubleBiFunction;DLjava/util/function/DoubleBinaryOperator;)V

    iput-object v12, v11, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;

    .line 5926
    invoke-virtual {v12}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    move-object/from16 v12, v17

    move/from16 v10, v18

    goto :goto_10

    .line 5921
    .end local v16    # "h":I
    .end local v17    # "transformer":Ljava/util/function/ToDoubleBiFunction;, "Ljava/util/function/ToDoubleBiFunction<-TK;-TV;>;"
    .end local v18    # "i":I
    .restart local v8    # "h":I
    .restart local v10    # "i":I
    .restart local v12    # "transformer":Ljava/util/function/ToDoubleBiFunction;, "Ljava/util/function/ToDoubleBiFunction<-TK;-TV;>;"
    :cond_49
    move/from16 v16, v8

    move/from16 v18, v10

    move-object/from16 v17, v12

    .end local v8    # "h":I
    .end local v10    # "i":I
    .end local v12    # "transformer":Ljava/util/function/ToDoubleBiFunction;, "Ljava/util/function/ToDoubleBiFunction<-TK;-TV;>;"
    .restart local v16    # "h":I
    .restart local v17    # "transformer":Ljava/util/function/ToDoubleBiFunction;, "Ljava/util/function/ToDoubleBiFunction<-TK;-TV;>;"
    .restart local v18    # "i":I
    goto :goto_54

    .end local v4    # "f":I
    .end local v16    # "h":I
    .end local v17    # "transformer":Ljava/util/function/ToDoubleBiFunction;, "Ljava/util/function/ToDoubleBiFunction<-TK;-TV;>;"
    .end local v18    # "i":I
    .restart local v10    # "i":I
    .restart local v12    # "transformer":Ljava/util/function/ToDoubleBiFunction;, "Ljava/util/function/ToDoubleBiFunction<-TK;-TV;>;"
    :cond_50
    move/from16 v18, v10

    move-object/from16 v17, v12

    .line 5928
    .end local v10    # "i":I
    .end local v12    # "transformer":Ljava/util/function/ToDoubleBiFunction;, "Ljava/util/function/ToDoubleBiFunction<-TK;-TV;>;"
    .restart local v17    # "transformer":Ljava/util/function/ToDoubleBiFunction;, "Ljava/util/function/ToDoubleBiFunction<-TK;-TV;>;"
    :goto_54
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_6a

    .line 5929
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v2, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    move-object/from16 v3, v17

    .end local v17    # "transformer":Ljava/util/function/ToDoubleBiFunction;, "Ljava/util/function/ToDoubleBiFunction<-TK;-TV;>;"
    .local v3, "transformer":Ljava/util/function/ToDoubleBiFunction;, "Ljava/util/function/ToDoubleBiFunction<-TK;-TV;>;"
    invoke-interface {v3, v0, v2}, Ljava/util/function/ToDoubleBiFunction;->applyAsDouble(Ljava/lang/Object;Ljava/lang/Object;)D

    move-result-wide v4

    invoke-interface {v13, v14, v15, v4, v5}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v14

    goto :goto_54

    .line 5928
    .end local v3    # "transformer":Ljava/util/function/ToDoubleBiFunction;, "Ljava/util/function/ToDoubleBiFunction<-TK;-TV;>;"
    .restart local v17    # "transformer":Ljava/util/function/ToDoubleBiFunction;, "Ljava/util/function/ToDoubleBiFunction<-TK;-TV;>;"
    :cond_6a
    move-object/from16 v3, v17

    .line 5930
    .end local v1    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v17    # "transformer":Ljava/util/function/ToDoubleBiFunction;, "Ljava/util/function/ToDoubleBiFunction<-TK;-TV;>;"
    .restart local v3    # "transformer":Ljava/util/function/ToDoubleBiFunction;, "Ljava/util/function/ToDoubleBiFunction<-TK;-TV;>;"
    iput-wide v14, v11, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->result:D

    .line 5932
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v0

    .local v0, "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_72
    if-eqz v0, :cond_93

    .line 5935
    move-object v1, v0

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;

    .line 5936
    .local v1, "t":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask<TK;TV;>;"
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;

    .line 5937
    .local v2, "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask<TK;TV;>;"
    :goto_79
    if-eqz v2, :cond_8b

    .line 5938
    iget-wide v4, v1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->result:D

    iget-wide v6, v2, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->result:D

    invoke-interface {v13, v4, v5, v6, v7}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v4

    iput-wide v4, v1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->result:D

    .line 5939
    iget-object v4, v2, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;

    iput-object v4, v1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;

    move-object v2, v4

    goto :goto_79

    .line 5932
    .end local v1    # "t":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask<TK;TV;>;"
    .end local v2    # "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask<TK;TV;>;"
    :cond_8b
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->nextComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v0

    goto :goto_72

    .line 5918
    .end local v0    # "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v3    # "transformer":Ljava/util/function/ToDoubleBiFunction;, "Ljava/util/function/ToDoubleBiFunction<-TK;-TV;>;"
    .end local v14    # "r":D
    .restart local v12    # "transformer":Ljava/util/function/ToDoubleBiFunction;, "Ljava/util/function/ToDoubleBiFunction<-TK;-TV;>;"
    :cond_90
    move-object v3, v12

    .end local v12    # "transformer":Ljava/util/function/ToDoubleBiFunction;, "Ljava/util/function/ToDoubleBiFunction<-TK;-TV;>;"
    .restart local v3    # "transformer":Ljava/util/function/ToDoubleBiFunction;, "Ljava/util/function/ToDoubleBiFunction<-TK;-TV;>;"
    goto :goto_93

    .end local v3    # "transformer":Ljava/util/function/ToDoubleBiFunction;, "Ljava/util/function/ToDoubleBiFunction<-TK;-TV;>;"
    .end local v13    # "reducer":Ljava/util/function/DoubleBinaryOperator;
    .restart local v12    # "transformer":Ljava/util/function/ToDoubleBiFunction;, "Ljava/util/function/ToDoubleBiFunction<-TK;-TV;>;"
    :cond_92
    move-object v3, v12

    .line 5943
    .end local v12    # "transformer":Ljava/util/function/ToDoubleBiFunction;, "Ljava/util/function/ToDoubleBiFunction<-TK;-TV;>;"
    .restart local v3    # "transformer":Ljava/util/function/ToDoubleBiFunction;, "Ljava/util/function/ToDoubleBiFunction<-TK;-TV;>;"
    :cond_93
    :goto_93
    return-void
.end method

.method public final blacklist getRawResult()Ljava/lang/Double;
    .registers 3

    .line 5914
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask<TK;TV;>;"
    iget-wide v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->result:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api getRawResult()Ljava/lang/Object;
    .registers 2

    .line 5896
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->getRawResult()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
