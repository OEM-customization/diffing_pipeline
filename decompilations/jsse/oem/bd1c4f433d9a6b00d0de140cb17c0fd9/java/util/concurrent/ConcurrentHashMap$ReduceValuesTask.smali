.class final Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;
.super Ljava/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReduceValuesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentHashMap$BulkTask",
        "<TK;TV;TV;>;"
    }
.end annotation


# instance fields
.field nextRight:Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final reducer:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction",
            "<-TV;-TV;+TV;>;"
        }
    .end annotation
.end field

.field result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;Ljava/util/function/BiFunction;)V
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
            "Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask",
            "<TK;TV;>;",
            "Ljava/util/function/BiFunction",
            "<-TV;-TV;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 5444
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask<TK;TV;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "nextRight":Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask<TK;TV;>;"
    .local p7, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TV;+TV;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    iput-object p6, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;

    .line 5445
    iput-object p7, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->reducer:Ljava/util/function/BiFunction;

    .line 5446
    return-void
.end method


# virtual methods
.method public final compute()V
    .registers 19

    .prologue
    .line 5450
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v8, v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->reducer:Ljava/util/function/BiFunction;

    .local v8, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TV;+TV;>;"
    if-eqz v8, :cond_8a

    .line 5451
    move-object/from16 v0, p0

    iget v10, v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->baseIndex:I

    .local v10, "i":I
    :goto_a
    move-object/from16 v0, p0

    iget v1, v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->batch:I

    if-lez v1, :cond_45

    .line 5452
    move-object/from16 v0, p0

    iget v5, v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->baseLimit:I

    .local v5, "f":I
    add-int v1, v5, v10

    ushr-int/lit8 v4, v1, 0x1

    .local v4, "h":I
    if-le v4, v10, :cond_45

    .line 5453
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->addToPendingCount(I)V

    .line 5454
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;

    .line 5455
    move-object/from16 v0, p0

    iget v2, v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->batch:I

    ushr-int/lit8 v3, v2, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->batch:I

    move-object/from16 v0, p0

    iput v4, v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->baseLimit:I

    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 5456
    move-object/from16 v0, p0

    iget-object v7, v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;

    move-object/from16 v2, p0

    .line 5454
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;Ljava/util/function/BiFunction;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_a

    .line 5458
    .end local v4    # "h":I
    .end local v5    # "f":I
    :cond_45
    const/4 v12, 0x0

    .line 5459
    :goto_46
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v11

    .local v11, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v11, :cond_5c

    .line 5460
    iget-object v0, v11, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    move-object/from16 v17, v0

    .line 5461
    .local v17, "v":Ljava/lang/Object;, "TV;"
    if-nez v12, :cond_55

    move-object/from16 v12, v17

    .local v12, "r":Ljava/lang/Object;, "TV;"
    goto :goto_46

    .end local v12    # "r":Ljava/lang/Object;, "TV;"
    :cond_55
    move-object/from16 v0, v17

    invoke-interface {v8, v12, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .restart local v12    # "r":Ljava/lang/Object;, "TV;"
    goto :goto_46

    .line 5463
    .end local v12    # "r":Ljava/lang/Object;, "TV;"
    .end local v17    # "v":Ljava/lang/Object;, "TV;"
    :cond_5c
    move-object/from16 v0, p0

    iput-object v12, v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->result:Ljava/lang/Object;

    .line 5465
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v9

    .local v9, "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_64
    if-eqz v9, :cond_8a

    move-object v15, v9

    .line 5468
    check-cast v15, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;

    .line 5469
    .local v15, "t":Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask<TK;TV;>;"
    iget-object v13, v15, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;

    .line 5470
    .local v13, "s":Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask<TK;TV;>;"
    :goto_6b
    if-eqz v13, :cond_85

    .line 5472
    iget-object v14, v13, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->result:Ljava/lang/Object;

    .local v14, "sr":Ljava/lang/Object;, "TV;"
    if-eqz v14, :cond_79

    .line 5473
    iget-object v0, v15, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->result:Ljava/lang/Object;

    move-object/from16 v16, v0

    .local v16, "tr":Ljava/lang/Object;, "TV;"
    if-nez v16, :cond_7e

    .end local v14    # "sr":Ljava/lang/Object;, "TV;"
    :goto_77
    iput-object v14, v15, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->result:Ljava/lang/Object;

    .line 5475
    .end local v16    # "tr":Ljava/lang/Object;, "TV;"
    :cond_79
    iget-object v13, v13, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;

    .end local v13    # "s":Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask<TK;TV;>;"
    iput-object v13, v15, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;

    .restart local v13    # "s":Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask<TK;TV;>;"
    goto :goto_6b

    .line 5474
    .restart local v14    # "sr":Ljava/lang/Object;, "TV;"
    .restart local v16    # "tr":Ljava/lang/Object;, "TV;"
    :cond_7e
    move-object/from16 v0, v16

    invoke-interface {v8, v0, v14}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    goto :goto_77

    .line 5465
    .end local v14    # "sr":Ljava/lang/Object;, "TV;"
    .end local v16    # "tr":Ljava/lang/Object;, "TV;"
    :cond_85
    invoke-virtual {v9}, Ljava/util/concurrent/CountedCompleter;->nextComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v9

    goto :goto_64

    .line 5479
    .end local v9    # "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v10    # "i":I
    .end local v11    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v13    # "s":Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask<TK;TV;>;"
    .end local v15    # "t":Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask<TK;TV;>;"
    :cond_8a
    return-void
.end method

.method public final getRawResult()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 5447
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->result:Ljava/lang/Object;

    return-object v0
.end method
