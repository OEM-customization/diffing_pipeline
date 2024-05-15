.class final Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;
.super Ljava/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MapReduceMappingsToLongTask"
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
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final greylist-max-o basis:J

.field greylist-max-o nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final greylist-max-o reducer:Ljava/util/function/LongBinaryOperator;

.field greylist-max-o result:J

.field greylist-max-o rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final greylist-max-o transformer:Ljava/util/function/ToLongBiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/ToLongBiFunction<",
            "-TK;-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;Ljava/util/function/ToLongBiFunction;JLjava/util/function/LongBinaryOperator;)V
    .registers 11
    .param p2, "b"    # I
    .param p3, "i"    # I
    .param p4, "f"    # I
    .param p8, "basis"    # J
    .param p10, "reducer"    # Ljava/util/function/LongBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<",
            "TK;TV;*>;III[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask<",
            "TK;TV;>;",
            "Ljava/util/function/ToLongBiFunction<",
            "-TK;-TV;>;J",
            "Ljava/util/function/LongBinaryOperator;",
            ")V"
        }
    .end annotation

    .line 6110
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask<TK;TV;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "nextRight":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask<TK;TV;>;"
    .local p7, "transformer":Ljava/util/function/ToLongBiFunction;, "Ljava/util/function/ToLongBiFunction<-TK;-TV;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    iput-object p6, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;

    .line 6111
    iput-object p7, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->transformer:Ljava/util/function/ToLongBiFunction;

    .line 6112
    iput-wide p8, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->basis:J

    iput-object p10, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->reducer:Ljava/util/function/LongBinaryOperator;

    .line 6113
    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api compute()V
    .registers 20

    .line 6118
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask<TK;TV;>;"
    move-object/from16 v11, p0

    iget-object v0, v11, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->transformer:Ljava/util/function/ToLongBiFunction;

    move-object v12, v0

    .local v12, "transformer":Ljava/util/function/ToLongBiFunction;, "Ljava/util/function/ToLongBiFunction<-TK;-TV;>;"
    if-eqz v0, :cond_92

    iget-object v0, v11, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->reducer:Ljava/util/function/LongBinaryOperator;

    move-object v13, v0

    .local v13, "reducer":Ljava/util/function/LongBinaryOperator;
    if-eqz v0, :cond_90

    .line 6120
    iget-wide v14, v11, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->basis:J

    .line 6121
    .local v14, "r":J
    iget v10, v11, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->baseIndex:I

    .local v10, "i":I
    :goto_10
    iget v0, v11, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->batch:I

    if-lez v0, :cond_50

    iget v0, v11, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->baseLimit:I

    move v4, v0

    .local v4, "f":I
    add-int/2addr v0, v10

    const/4 v1, 0x1

    ushr-int/2addr v0, v1

    move v8, v0

    .local v8, "h":I
    if-le v0, v10, :cond_49

    .line 6123
    invoke-virtual {v11, v1}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->addToPendingCount(I)V

    .line 6124
    new-instance v9, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;

    iget v0, v11, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->batch:I

    ushr-int/lit8 v2, v0, 0x1

    iput v2, v11, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->batch:I

    iput v8, v11, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->baseLimit:I

    iget-object v5, v11, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    iget-object v6, v11, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;

    move-object v0, v9

    move-object/from16 v1, p0

    move v3, v8

    move-object v7, v12

    move/from16 v16, v8

    move-object/from16 v17, v12

    move-object v12, v9

    .end local v8    # "h":I
    .end local v12    # "transformer":Ljava/util/function/ToLongBiFunction;, "Ljava/util/function/ToLongBiFunction<-TK;-TV;>;"
    .local v16, "h":I
    .local v17, "transformer":Ljava/util/function/ToLongBiFunction;, "Ljava/util/function/ToLongBiFunction<-TK;-TV;>;"
    move-wide v8, v14

    move/from16 v18, v10

    .end local v10    # "i":I
    .local v18, "i":I
    move-object v10, v13

    invoke-direct/range {v0 .. v10}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;Ljava/util/function/ToLongBiFunction;JLjava/util/function/LongBinaryOperator;)V

    iput-object v12, v11, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;

    .line 6126
    invoke-virtual {v12}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    move-object/from16 v12, v17

    move/from16 v10, v18

    goto :goto_10

    .line 6121
    .end local v16    # "h":I
    .end local v17    # "transformer":Ljava/util/function/ToLongBiFunction;, "Ljava/util/function/ToLongBiFunction<-TK;-TV;>;"
    .end local v18    # "i":I
    .restart local v8    # "h":I
    .restart local v10    # "i":I
    .restart local v12    # "transformer":Ljava/util/function/ToLongBiFunction;, "Ljava/util/function/ToLongBiFunction<-TK;-TV;>;"
    :cond_49
    move/from16 v16, v8

    move/from16 v18, v10

    move-object/from16 v17, v12

    .end local v8    # "h":I
    .end local v10    # "i":I
    .end local v12    # "transformer":Ljava/util/function/ToLongBiFunction;, "Ljava/util/function/ToLongBiFunction<-TK;-TV;>;"
    .restart local v16    # "h":I
    .restart local v17    # "transformer":Ljava/util/function/ToLongBiFunction;, "Ljava/util/function/ToLongBiFunction<-TK;-TV;>;"
    .restart local v18    # "i":I
    goto :goto_54

    .end local v4    # "f":I
    .end local v16    # "h":I
    .end local v17    # "transformer":Ljava/util/function/ToLongBiFunction;, "Ljava/util/function/ToLongBiFunction<-TK;-TV;>;"
    .end local v18    # "i":I
    .restart local v10    # "i":I
    .restart local v12    # "transformer":Ljava/util/function/ToLongBiFunction;, "Ljava/util/function/ToLongBiFunction<-TK;-TV;>;"
    :cond_50
    move/from16 v18, v10

    move-object/from16 v17, v12

    .line 6128
    .end local v10    # "i":I
    .end local v12    # "transformer":Ljava/util/function/ToLongBiFunction;, "Ljava/util/function/ToLongBiFunction<-TK;-TV;>;"
    .restart local v17    # "transformer":Ljava/util/function/ToLongBiFunction;, "Ljava/util/function/ToLongBiFunction<-TK;-TV;>;"
    :goto_54
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_6a

    .line 6129
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v2, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    move-object/from16 v3, v17

    .end local v17    # "transformer":Ljava/util/function/ToLongBiFunction;, "Ljava/util/function/ToLongBiFunction<-TK;-TV;>;"
    .local v3, "transformer":Ljava/util/function/ToLongBiFunction;, "Ljava/util/function/ToLongBiFunction<-TK;-TV;>;"
    invoke-interface {v3, v0, v2}, Ljava/util/function/ToLongBiFunction;->applyAsLong(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v4

    invoke-interface {v13, v14, v15, v4, v5}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v14

    goto :goto_54

    .line 6128
    .end local v3    # "transformer":Ljava/util/function/ToLongBiFunction;, "Ljava/util/function/ToLongBiFunction<-TK;-TV;>;"
    .restart local v17    # "transformer":Ljava/util/function/ToLongBiFunction;, "Ljava/util/function/ToLongBiFunction<-TK;-TV;>;"
    :cond_6a
    move-object/from16 v3, v17

    .line 6130
    .end local v1    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v17    # "transformer":Ljava/util/function/ToLongBiFunction;, "Ljava/util/function/ToLongBiFunction<-TK;-TV;>;"
    .restart local v3    # "transformer":Ljava/util/function/ToLongBiFunction;, "Ljava/util/function/ToLongBiFunction<-TK;-TV;>;"
    iput-wide v14, v11, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->result:J

    .line 6132
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v0

    .local v0, "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_72
    if-eqz v0, :cond_93

    .line 6135
    move-object v1, v0

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;

    .line 6136
    .local v1, "t":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask<TK;TV;>;"
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;

    .line 6137
    .local v2, "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask<TK;TV;>;"
    :goto_79
    if-eqz v2, :cond_8b

    .line 6138
    iget-wide v4, v1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->result:J

    iget-wide v6, v2, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->result:J

    invoke-interface {v13, v4, v5, v6, v7}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v4

    iput-wide v4, v1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->result:J

    .line 6139
    iget-object v4, v2, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;

    iput-object v4, v1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;

    move-object v2, v4

    goto :goto_79

    .line 6132
    .end local v1    # "t":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask<TK;TV;>;"
    .end local v2    # "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask<TK;TV;>;"
    :cond_8b
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->nextComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v0

    goto :goto_72

    .line 6118
    .end local v0    # "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v3    # "transformer":Ljava/util/function/ToLongBiFunction;, "Ljava/util/function/ToLongBiFunction<-TK;-TV;>;"
    .end local v14    # "r":J
    .restart local v12    # "transformer":Ljava/util/function/ToLongBiFunction;, "Ljava/util/function/ToLongBiFunction<-TK;-TV;>;"
    :cond_90
    move-object v3, v12

    .end local v12    # "transformer":Ljava/util/function/ToLongBiFunction;, "Ljava/util/function/ToLongBiFunction<-TK;-TV;>;"
    .restart local v3    # "transformer":Ljava/util/function/ToLongBiFunction;, "Ljava/util/function/ToLongBiFunction<-TK;-TV;>;"
    goto :goto_93

    .end local v3    # "transformer":Ljava/util/function/ToLongBiFunction;, "Ljava/util/function/ToLongBiFunction<-TK;-TV;>;"
    .end local v13    # "reducer":Ljava/util/function/LongBinaryOperator;
    .restart local v12    # "transformer":Ljava/util/function/ToLongBiFunction;, "Ljava/util/function/ToLongBiFunction<-TK;-TV;>;"
    :cond_92
    move-object v3, v12

    .line 6143
    .end local v12    # "transformer":Ljava/util/function/ToLongBiFunction;, "Ljava/util/function/ToLongBiFunction<-TK;-TV;>;"
    .restart local v3    # "transformer":Ljava/util/function/ToLongBiFunction;, "Ljava/util/function/ToLongBiFunction<-TK;-TV;>;"
    :cond_93
    :goto_93
    return-void
.end method

.method public final blacklist getRawResult()Ljava/lang/Long;
    .registers 3

    .line 6114
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask<TK;TV;>;"
    iget-wide v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->result:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api getRawResult()Ljava/lang/Object;
    .registers 2

    .line 6096
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->getRawResult()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
