.class final Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;
.super Ljava/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MapReduceMappingsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentHashMap$BulkTask",
        "<TK;TV;TU;>;"
    }
.end annotation


# instance fields
.field nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask",
            "<TK;TV;TU;>;"
        }
    .end annotation
.end field

.field final reducer:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction",
            "<-TU;-TU;+TU;>;"
        }
    .end annotation
.end field

.field result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask",
            "<TK;TV;TU;>;"
        }
    .end annotation
.end field

.field final transformer:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;Ljava/util/function/BiFunction;Ljava/util/function/BiFunction;)V
    .registers 9
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
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask",
            "<TK;TV;TU;>;",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TU;>;",
            "Ljava/util/function/BiFunction",
            "<-TU;-TU;+TU;>;)V"
        }
    .end annotation

    .prologue
    .line 5702
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask<TK;TV;TU;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "nextRight":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask<TK;TV;TU;>;"
    .local p7, "transformer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TU;>;"
    .local p8, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    iput-object p6, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;

    .line 5703
    iput-object p7, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->transformer:Ljava/util/function/BiFunction;

    .line 5704
    iput-object p8, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->reducer:Ljava/util/function/BiFunction;

    .line 5705
    return-void
.end method


# virtual methods
.method public final compute()V
    .registers 20

    .prologue
    .line 5710
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask<TK;TV;TU;>;"
    move-object/from16 v0, p0

    iget-object v8, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->transformer:Ljava/util/function/BiFunction;

    .local v8, "transformer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TU;>;"
    if-eqz v8, :cond_9f

    .line 5711
    move-object/from16 v0, p0

    iget-object v9, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->reducer:Ljava/util/function/BiFunction;

    .local v9, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    if-eqz v9, :cond_9f

    .line 5712
    move-object/from16 v0, p0

    iget v11, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->baseIndex:I

    .local v11, "i":I
    :goto_10
    move-object/from16 v0, p0

    iget v1, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->batch:I

    if-lez v1, :cond_4b

    .line 5713
    move-object/from16 v0, p0

    iget v5, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->baseLimit:I

    .local v5, "f":I
    add-int v1, v5, v11

    ushr-int/lit8 v4, v1, 0x1

    .local v4, "h":I
    if-le v4, v11, :cond_4b

    .line 5714
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->addToPendingCount(I)V

    .line 5715
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;

    .line 5716
    move-object/from16 v0, p0

    iget v2, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->batch:I

    ushr-int/lit8 v3, v2, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->batch:I

    move-object/from16 v0, p0

    iput v4, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->baseLimit:I

    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 5717
    move-object/from16 v0, p0

    iget-object v7, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;

    move-object/from16 v2, p0

    .line 5715
    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;Ljava/util/function/BiFunction;Ljava/util/function/BiFunction;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_10

    .line 5719
    .end local v4    # "h":I
    .end local v5    # "f":I
    :cond_4b
    const/4 v13, 0x0

    .line 5720
    :cond_4c
    :goto_4c
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v12

    .local v12, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v12, :cond_68

    .line 5722
    iget-object v1, v12, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v2, v12, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {v8, v1, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .local v18, "u":Ljava/lang/Object;, "TU;"
    if-eqz v18, :cond_4c

    .line 5723
    if-nez v13, :cond_61

    move-object/from16 v13, v18

    .local v13, "r":Ljava/lang/Object;, "TU;"
    goto :goto_4c

    .end local v13    # "r":Ljava/lang/Object;, "TU;"
    :cond_61
    move-object/from16 v0, v18

    invoke-interface {v9, v13, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .restart local v13    # "r":Ljava/lang/Object;, "TU;"
    goto :goto_4c

    .line 5725
    .end local v13    # "r":Ljava/lang/Object;, "TU;"
    .end local v18    # "u":Ljava/lang/Object;, "TU;"
    :cond_68
    move-object/from16 v0, p0

    iput-object v13, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->result:Ljava/lang/Object;

    .line 5727
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v10

    .local v10, "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_70
    if-eqz v10, :cond_9f

    move-object/from16 v16, v10

    .line 5730
    check-cast v16, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;

    .line 5731
    .local v16, "t":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask<TK;TV;TU;>;"
    move-object/from16 v0, v16

    iget-object v14, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;

    .line 5732
    .local v14, "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask<TK;TV;TU;>;"
    :goto_7a
    if-eqz v14, :cond_9a

    .line 5734
    iget-object v15, v14, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->result:Ljava/lang/Object;

    .local v15, "sr":Ljava/lang/Object;, "TU;"
    if-eqz v15, :cond_8c

    .line 5735
    move-object/from16 v0, v16

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->result:Ljava/lang/Object;

    move-object/from16 v17, v0

    .local v17, "tr":Ljava/lang/Object;, "TU;"
    if-nez v17, :cond_93

    .end local v15    # "sr":Ljava/lang/Object;, "TU;"
    :goto_88
    move-object/from16 v0, v16

    iput-object v15, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->result:Ljava/lang/Object;

    .line 5737
    .end local v17    # "tr":Ljava/lang/Object;, "TU;"
    :cond_8c
    iget-object v14, v14, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;

    .end local v14    # "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask<TK;TV;TU;>;"
    move-object/from16 v0, v16

    iput-object v14, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;

    .restart local v14    # "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask<TK;TV;TU;>;"
    goto :goto_7a

    .line 5736
    .restart local v15    # "sr":Ljava/lang/Object;, "TU;"
    .restart local v17    # "tr":Ljava/lang/Object;, "TU;"
    :cond_93
    move-object/from16 v0, v17

    invoke-interface {v9, v0, v15}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    goto :goto_88

    .line 5727
    .end local v15    # "sr":Ljava/lang/Object;, "TU;"
    .end local v17    # "tr":Ljava/lang/Object;, "TU;"
    :cond_9a
    invoke-virtual {v10}, Ljava/util/concurrent/CountedCompleter;->nextComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v10

    goto :goto_70

    .line 5741
    .end local v9    # "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    .end local v10    # "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v11    # "i":I
    .end local v12    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v14    # "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask<TK;TV;TU;>;"
    .end local v16    # "t":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask<TK;TV;TU;>;"
    :cond_9f
    return-void
.end method

.method public final getRawResult()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    .prologue
    .line 5706
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask<TK;TV;TU;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->result:Ljava/lang/Object;

    return-object v0
.end method
