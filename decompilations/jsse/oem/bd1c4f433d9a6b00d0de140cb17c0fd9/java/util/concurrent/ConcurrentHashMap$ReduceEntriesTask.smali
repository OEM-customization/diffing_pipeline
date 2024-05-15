.class final Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;
.super Ljava/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReduceEntriesTask"
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
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field nextRight:Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final reducer:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;+",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field result:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;Ljava/util/function/BiFunction;)V
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
            "Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask",
            "<TK;TV;>;",
            "Ljava/util/function/BiFunction",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;+",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 5492
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask<TK;TV;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "nextRight":Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask<TK;TV;>;"
    .local p7, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/util/Map$Entry<TK;TV;>;Ljava/util/Map$Entry<TK;TV;>;+Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    iput-object p6, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;

    .line 5493
    iput-object p7, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->reducer:Ljava/util/function/BiFunction;

    .line 5494
    return-void
.end method


# virtual methods
.method public final compute()V
    .registers 18

    .prologue
    .line 5498
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v8, v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->reducer:Ljava/util/function/BiFunction;

    .local v8, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/util/Map$Entry<TK;TV;>;Ljava/util/Map$Entry<TK;TV;>;+Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz v8, :cond_88

    .line 5499
    move-object/from16 v0, p0

    iget v10, v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->baseIndex:I

    .local v10, "i":I
    :goto_a
    move-object/from16 v0, p0

    iget v1, v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->batch:I

    if-lez v1, :cond_45

    .line 5500
    move-object/from16 v0, p0

    iget v5, v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->baseLimit:I

    .local v5, "f":I
    add-int v1, v5, v10

    ushr-int/lit8 v4, v1, 0x1

    .local v4, "h":I
    if-le v4, v10, :cond_45

    .line 5501
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->addToPendingCount(I)V

    .line 5502
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;

    .line 5503
    move-object/from16 v0, p0

    iget v2, v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->batch:I

    ushr-int/lit8 v3, v2, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->batch:I

    move-object/from16 v0, p0

    iput v4, v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->baseLimit:I

    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 5504
    move-object/from16 v0, p0

    iget-object v7, v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;

    move-object/from16 v2, p0

    .line 5502
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;Ljava/util/function/BiFunction;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_a

    .line 5506
    .end local v4    # "h":I
    .end local v5    # "f":I
    :cond_45
    const/4 v12, 0x0

    .line 5507
    :goto_46
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v11

    .local v11, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v11, :cond_57

    .line 5508
    if-nez v12, :cond_50

    move-object v12, v11

    .local v12, "r":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    goto :goto_46

    .end local v12    # "r":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_50
    invoke-interface {v8, v12, v11}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .restart local v12    # "r":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    goto :goto_46

    .line 5509
    .end local v12    # "r":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_57
    move-object/from16 v0, p0

    iput-object v12, v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->result:Ljava/util/Map$Entry;

    .line 5511
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v9

    .local v9, "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_5f
    if-eqz v9, :cond_88

    move-object v15, v9

    .line 5514
    check-cast v15, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;

    .line 5515
    .local v15, "t":Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask<TK;TV;>;"
    iget-object v13, v15, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;

    .line 5516
    .local v13, "s":Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask<TK;TV;>;"
    :goto_66
    if-eqz v13, :cond_83

    .line 5518
    iget-object v14, v13, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->result:Ljava/util/Map$Entry;

    .local v14, "sr":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v14, :cond_74

    .line 5519
    iget-object v0, v15, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->result:Ljava/util/Map$Entry;

    move-object/from16 v16, v0

    .local v16, "tr":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-nez v16, :cond_79

    .end local v14    # "sr":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :goto_72
    iput-object v14, v15, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->result:Ljava/util/Map$Entry;

    .line 5521
    .end local v16    # "tr":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_74
    iget-object v13, v13, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;

    .end local v13    # "s":Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask<TK;TV;>;"
    iput-object v13, v15, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;

    .restart local v13    # "s":Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask<TK;TV;>;"
    goto :goto_66

    .line 5520
    .restart local v14    # "sr":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .restart local v16    # "tr":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_79
    move-object/from16 v0, v16

    invoke-interface {v8, v0, v14}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    move-object v14, v1

    goto :goto_72

    .line 5511
    .end local v14    # "sr":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v16    # "tr":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_83
    invoke-virtual {v9}, Ljava/util/concurrent/CountedCompleter;->nextComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v9

    goto :goto_5f

    .line 5525
    .end local v9    # "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v10    # "i":I
    .end local v11    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v13    # "s":Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask<TK;TV;>;"
    .end local v15    # "t":Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask<TK;TV;>;"
    :cond_88
    return-void
.end method

.method public bridge synthetic getRawResult()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 5495
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->getRawResult()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final getRawResult()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 5495
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->result:Ljava/util/Map$Entry;

    return-object v0
.end method
