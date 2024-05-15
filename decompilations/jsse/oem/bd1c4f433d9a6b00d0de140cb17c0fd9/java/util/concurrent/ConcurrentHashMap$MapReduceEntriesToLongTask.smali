.class final Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;
.super Ljava/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MapReduceEntriesToLongTask"
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
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final basis:J

.field nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final reducer:Ljava/util/function/LongBinaryOperator;

.field result:J

.field rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final transformer:Ljava/util/function/ToLongFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/ToLongFunction",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;Ljava/util/function/ToLongFunction;JLjava/util/function/LongBinaryOperator;)V
    .registers 11
    .param p2, "b"    # I
    .param p3, "i"    # I
    .param p4, "f"    # I
    .param p8, "basis"    # J
    .param p10, "reducer"    # Ljava/util/function/LongBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap$BulkTask",
            "<TK;TV;*>;III[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask",
            "<TK;TV;>;",
            "Ljava/util/function/ToLongFunction",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;J",
            "Ljava/util/function/LongBinaryOperator;",
            ")V"
        }
    .end annotation

    .prologue
    .line 6058
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask<TK;TV;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "nextRight":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask<TK;TV;>;"
    .local p7, "transformer":Ljava/util/function/ToLongFunction;, "Ljava/util/function/ToLongFunction<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    iput-object p6, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;

    .line 6059
    iput-object p7, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->transformer:Ljava/util/function/ToLongFunction;

    .line 6060
    iput-wide p8, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->basis:J

    iput-object p10, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->reducer:Ljava/util/function/LongBinaryOperator;

    .line 6061
    return-void
.end method


# virtual methods
.method public final compute()V
    .registers 21

    .prologue
    .line 6066
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v9, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->transformer:Ljava/util/function/ToLongFunction;

    .local v9, "transformer":Ljava/util/function/ToLongFunction;, "Ljava/util/function/ToLongFunction<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz v9, :cond_9a

    .line 6067
    move-object/from16 v0, p0

    iget-object v12, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->reducer:Ljava/util/function/LongBinaryOperator;

    .local v12, "reducer":Ljava/util/function/LongBinaryOperator;
    if-eqz v12, :cond_9a

    .line 6068
    move-object/from16 v0, p0

    iget-wide v10, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->basis:J

    .line 6069
    .local v10, "r":J
    move-object/from16 v0, p0

    iget v14, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->baseIndex:I

    .local v14, "i":I
    :goto_14
    move-object/from16 v0, p0

    iget v2, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->batch:I

    if-lez v2, :cond_4f

    .line 6070
    move-object/from16 v0, p0

    iget v6, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->baseLimit:I

    .local v6, "f":I
    add-int v2, v6, v14

    ushr-int/lit8 v5, v2, 0x1

    .local v5, "h":I
    if-le v5, v14, :cond_4f

    .line 6071
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->addToPendingCount(I)V

    .line 6072
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;

    .line 6073
    move-object/from16 v0, p0

    iget v3, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->batch:I

    ushr-int/lit8 v4, v3, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->batch:I

    move-object/from16 v0, p0

    iput v5, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->baseLimit:I

    move-object/from16 v0, p0

    iget-object v7, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 6074
    move-object/from16 v0, p0

    iget-object v8, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;

    move-object/from16 v3, p0

    .line 6072
    invoke-direct/range {v2 .. v12}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;Ljava/util/function/ToLongFunction;JLjava/util/function/LongBinaryOperator;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_14

    .line 6076
    .end local v5    # "h":I
    .end local v6    # "f":I
    :cond_4f
    :goto_4f
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v15

    .local v15, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v15, :cond_5e

    .line 6077
    invoke-interface {v9, v15}, Ljava/util/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    move-result-wide v2

    invoke-interface {v12, v10, v11, v2, v3}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v10

    goto :goto_4f

    .line 6078
    :cond_5e
    move-object/from16 v0, p0

    iput-wide v10, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->result:J

    .line 6080
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v13

    .local v13, "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_66
    if-eqz v13, :cond_9a

    move-object/from16 v17, v13

    .line 6083
    check-cast v17, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;

    .line 6084
    .local v17, "t":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask<TK;TV;>;"
    move-object/from16 v0, v17

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;

    move-object/from16 v16, v0

    .line 6085
    .local v16, "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask<TK;TV;>;"
    :goto_72
    if-eqz v16, :cond_95

    .line 6086
    move-object/from16 v0, v17

    iget-wide v2, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->result:J

    move-object/from16 v0, v16

    iget-wide v0, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->result:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-interface {v12, v2, v3, v0, v1}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v2

    move-object/from16 v0, v17

    iput-wide v2, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->result:J

    .line 6087
    move-object/from16 v0, v16

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;

    move-object/from16 v16, v0

    .end local v16    # "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask<TK;TV;>;"
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;

    .restart local v16    # "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask<TK;TV;>;"
    goto :goto_72

    .line 6080
    :cond_95
    invoke-virtual {v13}, Ljava/util/concurrent/CountedCompleter;->nextComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v13

    goto :goto_66

    .line 6091
    .end local v10    # "r":J
    .end local v12    # "reducer":Ljava/util/function/LongBinaryOperator;
    .end local v13    # "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v14    # "i":I
    .end local v15    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v16    # "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask<TK;TV;>;"
    .end local v17    # "t":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask<TK;TV;>;"
    :cond_9a
    return-void
.end method

.method public final getRawResult()Ljava/lang/Long;
    .registers 3

    .prologue
    .line 6062
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask<TK;TV;>;"
    iget-wide v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->result:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRawResult()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 6062
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->getRawResult()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
