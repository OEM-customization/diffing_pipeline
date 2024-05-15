.class final Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;
.super Ljava/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReduceKeysTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentHashMap$BulkTask",
        "<TK;TV;TK;>;"
    }
.end annotation


# instance fields
.field nextRight:Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final reducer:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction",
            "<-TK;-TK;+TK;>;"
        }
    .end annotation
.end field

.field result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;Ljava/util/function/BiFunction;)V
    .registers 8
    .param p2, "b"    # I
    .param p3, "i"    # I
    .param p4, "f"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap$BulkTask",
            "<TK;TV;*>;III[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask",
            "<TK;TV;>;",
            "Ljava/util/function/BiFunction",
            "<-TK;-TK;+TK;>;)V"
        }
    .end annotation

    .prologue
    .line 5396
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask<TK;TV;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "nextRight":Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask<TK;TV;>;"
    .local p7, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TK;+TK;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    iput-object p6, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;

    .line 5397
    iput-object p7, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->reducer:Ljava/util/function/BiFunction;

    .line 5398
    return-void
.end method


# virtual methods
.method public final compute()V
    .registers 19

    .prologue
    .line 5402
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v8, v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->reducer:Ljava/util/function/BiFunction;

    .local v8, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TK;+TK;>;"
    if-eqz v8, :cond_8c

    .line 5403
    move-object/from16 v0, p0

    iget v10, v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->baseIndex:I

    .local v10, "i":I
    :goto_a
    move-object/from16 v0, p0

    iget v1, v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->batch:I

    if-lez v1, :cond_45

    .line 5404
    move-object/from16 v0, p0

    iget v5, v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->baseLimit:I

    .local v5, "f":I
    add-int v1, v5, v10

    ushr-int/lit8 v4, v1, 0x1

    .local v4, "h":I
    if-le v4, v10, :cond_45

    .line 5405
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->addToPendingCount(I)V

    .line 5406
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;

    .line 5407
    move-object/from16 v0, p0

    iget v2, v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->batch:I

    ushr-int/lit8 v3, v2, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->batch:I

    move-object/from16 v0, p0

    iput v4, v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->baseLimit:I

    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 5408
    move-object/from16 v0, p0

    iget-object v7, v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;

    move-object/from16 v2, p0

    .line 5406
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;Ljava/util/function/BiFunction;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_a

    .line 5410
    .end local v4    # "h":I
    .end local v5    # "f":I
    :cond_45
    const/4 v12, 0x0

    .line 5411
    :cond_46
    :goto_46
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v11

    .local v11, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v11, :cond_5e

    .line 5412
    iget-object v0, v11, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object/from16 v17, v0

    .line 5413
    .local v17, "u":Ljava/lang/Object;, "TK;"
    if-nez v12, :cond_55

    move-object/from16 v12, v17

    .local v12, "r":Ljava/lang/Object;, "TK;"
    goto :goto_46

    .end local v12    # "r":Ljava/lang/Object;, "TK;"
    :cond_55
    if-eqz v17, :cond_46

    move-object/from16 v0, v17

    invoke-interface {v8, v12, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .restart local v12    # "r":Ljava/lang/Object;, "TK;"
    goto :goto_46

    .line 5415
    .end local v12    # "r":Ljava/lang/Object;, "TK;"
    .end local v17    # "u":Ljava/lang/Object;, "TK;"
    :cond_5e
    move-object/from16 v0, p0

    iput-object v12, v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->result:Ljava/lang/Object;

    .line 5417
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v9

    .local v9, "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_66
    if-eqz v9, :cond_8c

    move-object v15, v9

    .line 5420
    check-cast v15, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;

    .line 5421
    .local v15, "t":Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask<TK;TV;>;"
    iget-object v13, v15, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;

    .line 5422
    .local v13, "s":Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask<TK;TV;>;"
    :goto_6d
    if-eqz v13, :cond_87

    .line 5424
    iget-object v14, v13, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->result:Ljava/lang/Object;

    .local v14, "sr":Ljava/lang/Object;, "TK;"
    if-eqz v14, :cond_7b

    .line 5425
    iget-object v0, v15, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->result:Ljava/lang/Object;

    move-object/from16 v16, v0

    .local v16, "tr":Ljava/lang/Object;, "TK;"
    if-nez v16, :cond_80

    .end local v14    # "sr":Ljava/lang/Object;, "TK;"
    :goto_79
    iput-object v14, v15, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->result:Ljava/lang/Object;

    .line 5427
    .end local v16    # "tr":Ljava/lang/Object;, "TK;"
    :cond_7b
    iget-object v13, v13, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;

    .end local v13    # "s":Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask<TK;TV;>;"
    iput-object v13, v15, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;

    .restart local v13    # "s":Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask<TK;TV;>;"
    goto :goto_6d

    .line 5426
    .restart local v14    # "sr":Ljava/lang/Object;, "TK;"
    .restart local v16    # "tr":Ljava/lang/Object;, "TK;"
    :cond_80
    move-object/from16 v0, v16

    invoke-interface {v8, v0, v14}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    goto :goto_79

    .line 5417
    .end local v14    # "sr":Ljava/lang/Object;, "TK;"
    .end local v16    # "tr":Ljava/lang/Object;, "TK;"
    :cond_87
    invoke-virtual {v9}, Ljava/util/concurrent/CountedCompleter;->nextComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v9

    goto :goto_66

    .line 5431
    .end local v9    # "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v10    # "i":I
    .end local v11    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v13    # "s":Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask<TK;TV;>;"
    .end local v15    # "t":Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask<TK;TV;>;"
    :cond_8c
    return-void
.end method

.method public final getRawResult()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 5399
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->result:Ljava/lang/Object;

    return-object v0
.end method
