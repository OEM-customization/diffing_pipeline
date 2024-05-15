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
        "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<",
        "TK;TV;TK;>;"
    }
.end annotation


# instance fields
.field greylist-max-o nextRight:Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final greylist-max-o reducer:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "-TK;-TK;+TK;>;"
        }
    .end annotation
.end field

.field greylist-max-o result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field greylist-max-o rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;Ljava/util/function/BiFunction;)V
    .registers 8
    .param p2, "b"    # I
    .param p3, "i"    # I
    .param p4, "f"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<",
            "TK;TV;*>;III[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask<",
            "TK;TV;>;",
            "Ljava/util/function/BiFunction<",
            "-TK;-TK;+TK;>;)V"
        }
    .end annotation

    .line 5398
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask<TK;TV;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "nextRight":Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask<TK;TV;>;"
    .local p7, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TK;+TK;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    iput-object p6, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;

    .line 5399
    iput-object p7, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->reducer:Ljava/util/function/BiFunction;

    .line 5400
    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api compute()V
    .registers 13

    .line 5404
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->reducer:Ljava/util/function/BiFunction;

    move-object v9, v0

    .local v9, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TK;+TK;>;"
    if-eqz v0, :cond_76

    .line 5405
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->baseIndex:I

    .local v0, "i":I
    :goto_7
    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->batch:I

    if-lez v1, :cond_32

    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->baseLimit:I

    move v5, v1

    .local v5, "f":I
    add-int/2addr v1, v0

    const/4 v2, 0x1

    ushr-int/2addr v1, v2

    move v10, v1

    .local v10, "h":I
    if-le v1, v0, :cond_32

    .line 5407
    invoke-virtual {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->addToPendingCount(I)V

    .line 5408
    new-instance v11, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;

    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->batch:I

    ushr-int/lit8 v3, v1, 0x1

    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->batch:I

    iput v10, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->baseLimit:I

    iget-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    iget-object v7, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;

    move-object v1, v11

    move-object v2, p0

    move v4, v10

    move-object v8, v9

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;Ljava/util/function/BiFunction;)V

    iput-object v11, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;

    .line 5410
    invoke-virtual {v11}, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_7

    .line 5412
    .end local v0    # "i":I
    .end local v5    # "f":I
    .end local v10    # "h":I
    :cond_32
    const/4 v0, 0x0

    .line 5413
    .local v0, "r":Ljava/lang/Object;, "TK;"
    :goto_33
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v1

    move-object v2, v1

    .local v2, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v1, :cond_4a

    .line 5414
    iget-object v1, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    .line 5415
    .local v1, "u":Ljava/lang/Object;, "TK;"
    if-nez v0, :cond_40

    move-object v3, v1

    goto :goto_48

    :cond_40
    if-nez v1, :cond_44

    move-object v3, v0

    goto :goto_48

    :cond_44
    invoke-interface {v9, v0, v1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :goto_48
    move-object v0, v3

    .line 5416
    .end local v1    # "u":Ljava/lang/Object;, "TK;"
    goto :goto_33

    .line 5417
    .end local v2    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_4a
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->result:Ljava/lang/Object;

    .line 5419
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v1

    .local v1, "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_50
    if-eqz v1, :cond_76

    .line 5422
    move-object v2, v1

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;

    .line 5423
    .local v2, "t":Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask<TK;TV;>;"
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;

    .line 5424
    .local v3, "s":Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask<TK;TV;>;"
    :goto_57
    if-eqz v3, :cond_71

    .line 5426
    iget-object v4, v3, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->result:Ljava/lang/Object;

    move-object v5, v4

    .local v5, "sr":Ljava/lang/Object;, "TK;"
    if-eqz v4, :cond_6b

    .line 5427
    iget-object v4, v2, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->result:Ljava/lang/Object;

    move-object v6, v4

    .local v6, "tr":Ljava/lang/Object;, "TK;"
    if-nez v4, :cond_65

    move-object v4, v5

    goto :goto_69

    .line 5428
    :cond_65
    invoke-interface {v9, v6, v5}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :goto_69
    iput-object v4, v2, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->result:Ljava/lang/Object;

    .line 5429
    .end local v6    # "tr":Ljava/lang/Object;, "TK;"
    :cond_6b
    iget-object v4, v3, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;

    iput-object v4, v2, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;

    move-object v3, v4

    .line 5430
    .end local v5    # "sr":Ljava/lang/Object;, "TK;"
    goto :goto_57

    .line 5419
    .end local v2    # "t":Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask<TK;TV;>;"
    .end local v3    # "s":Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask<TK;TV;>;"
    :cond_71
    invoke-virtual {v1}, Ljava/util/concurrent/CountedCompleter;->nextComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v1

    goto :goto_50

    .line 5433
    .end local v0    # "r":Ljava/lang/Object;, "TK;"
    .end local v1    # "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :cond_76
    return-void
.end method

.method public final whitelist core-platform-api test-api getRawResult()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 5401
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->result:Ljava/lang/Object;

    return-object v0
.end method
