.class final Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;
.super Ljava/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MapReduceKeysToIntTask"
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final greylist-max-o basis:I

.field greylist-max-o nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final greylist-max-o reducer:Ljava/util/function/IntBinaryOperator;

.field greylist-max-o result:I

.field greylist-max-o rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final greylist-max-o transformer:Ljava/util/function/ToIntFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/ToIntFunction<",
            "-TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;Ljava/util/function/ToIntFunction;ILjava/util/function/IntBinaryOperator;)V
    .registers 10
    .param p2, "b"    # I
    .param p3, "i"    # I
    .param p4, "f"    # I
    .param p8, "basis"    # I
    .param p9, "reducer"    # Ljava/util/function/IntBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<",
            "TK;TV;*>;III[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask<",
            "TK;TV;>;",
            "Ljava/util/function/ToIntFunction<",
            "-TK;>;I",
            "Ljava/util/function/IntBinaryOperator;",
            ")V"
        }
    .end annotation

    .line 6160
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask<TK;TV;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "nextRight":Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask<TK;TV;>;"
    .local p7, "transformer":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TK;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    iput-object p6, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;

    .line 6161
    iput-object p7, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->transformer:Ljava/util/function/ToIntFunction;

    .line 6162
    iput p8, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->basis:I

    iput-object p9, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->reducer:Ljava/util/function/IntBinaryOperator;

    .line 6163
    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api compute()V
    .registers 18

    .line 6168
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask<TK;TV;>;"
    move-object/from16 v10, p0

    iget-object v0, v10, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->transformer:Ljava/util/function/ToIntFunction;

    move-object v11, v0

    .local v11, "transformer":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TK;>;"
    if-eqz v0, :cond_80

    iget-object v0, v10, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->reducer:Ljava/util/function/IntBinaryOperator;

    move-object v12, v0

    .local v12, "reducer":Ljava/util/function/IntBinaryOperator;
    if-eqz v0, :cond_80

    .line 6170
    iget v13, v10, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->basis:I

    .line 6171
    .local v13, "r":I
    iget v14, v10, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->baseIndex:I

    .local v14, "i":I
    :goto_10
    iget v0, v10, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->batch:I

    if-lez v0, :cond_46

    iget v0, v10, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->baseLimit:I

    move v4, v0

    .local v4, "f":I
    add-int/2addr v0, v14

    const/4 v1, 0x1

    ushr-int/2addr v0, v1

    move v15, v0

    .local v15, "h":I
    if-le v0, v14, :cond_43

    .line 6173
    invoke-virtual {v10, v1}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->addToPendingCount(I)V

    .line 6174
    new-instance v9, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;

    iget v0, v10, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->batch:I

    ushr-int/lit8 v2, v0, 0x1

    iput v2, v10, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->batch:I

    iput v15, v10, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->baseLimit:I

    iget-object v5, v10, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    iget-object v6, v10, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;

    move-object v0, v9

    move-object/from16 v1, p0

    move v3, v15

    move-object v7, v11

    move v8, v13

    move/from16 v16, v13

    move-object v13, v9

    .end local v13    # "r":I
    .local v16, "r":I
    move-object v9, v12

    invoke-direct/range {v0 .. v9}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;Ljava/util/function/ToIntFunction;ILjava/util/function/IntBinaryOperator;)V

    iput-object v13, v10, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;

    .line 6176
    invoke-virtual {v13}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    move/from16 v13, v16

    goto :goto_10

    .line 6171
    .end local v16    # "r":I
    .restart local v13    # "r":I
    :cond_43
    move/from16 v16, v13

    .end local v13    # "r":I
    .restart local v16    # "r":I
    goto :goto_48

    .end local v4    # "f":I
    .end local v15    # "h":I
    .end local v16    # "r":I
    .restart local v13    # "r":I
    :cond_46
    move/from16 v16, v13

    .line 6178
    .end local v13    # "r":I
    .end local v14    # "i":I
    .restart local v16    # "r":I
    :goto_48
    move/from16 v13, v16

    .end local v16    # "r":I
    .restart local v13    # "r":I
    :goto_4a
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_5c

    .line 6179
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v11, v0}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {v12, v13, v0}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v13

    goto :goto_4a

    .line 6180
    .end local v1    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_5c
    iput v13, v10, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->result:I

    .line 6182
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v0

    .local v0, "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_62
    if-eqz v0, :cond_80

    .line 6185
    move-object v1, v0

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;

    .line 6186
    .local v1, "t":Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask<TK;TV;>;"
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;

    .line 6187
    .local v2, "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask<TK;TV;>;"
    :goto_69
    if-eqz v2, :cond_7b

    .line 6188
    iget v3, v1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->result:I

    iget v4, v2, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->result:I

    invoke-interface {v12, v3, v4}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v3

    iput v3, v1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->result:I

    .line 6189
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;

    iput-object v3, v1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;

    move-object v2, v3

    goto :goto_69

    .line 6182
    .end local v1    # "t":Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask<TK;TV;>;"
    .end local v2    # "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask<TK;TV;>;"
    :cond_7b
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->nextComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v0

    goto :goto_62

    .line 6193
    .end local v0    # "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v12    # "reducer":Ljava/util/function/IntBinaryOperator;
    .end local v13    # "r":I
    :cond_80
    return-void
.end method

.method public final blacklist getRawResult()Ljava/lang/Integer;
    .registers 2

    .line 6164
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask<TK;TV;>;"
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->result:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api getRawResult()Ljava/lang/Object;
    .registers 2

    .line 6146
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->getRawResult()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
