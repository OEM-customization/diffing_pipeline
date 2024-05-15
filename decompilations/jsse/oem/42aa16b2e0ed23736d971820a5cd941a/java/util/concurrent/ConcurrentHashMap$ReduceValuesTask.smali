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
        "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<",
        "TK;TV;TV;>;"
    }
.end annotation


# instance fields
.field greylist-max-o nextRight:Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final greylist-max-o reducer:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "-TV;-TV;+TV;>;"
        }
    .end annotation
.end field

.field greylist-max-o result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field greylist-max-o rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;Ljava/util/function/BiFunction;)V
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
            "Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask<",
            "TK;TV;>;",
            "Ljava/util/function/BiFunction<",
            "-TV;-TV;+TV;>;)V"
        }
    .end annotation

    .line 5446
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask<TK;TV;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "nextRight":Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask<TK;TV;>;"
    .local p7, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TV;+TV;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    iput-object p6, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;

    .line 5447
    iput-object p7, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->reducer:Ljava/util/function/BiFunction;

    .line 5448
    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api compute()V
    .registers 13

    .line 5452
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->reducer:Ljava/util/function/BiFunction;

    move-object v9, v0

    .local v9, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TV;+TV;>;"
    if-eqz v0, :cond_72

    .line 5453
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->baseIndex:I

    .local v0, "i":I
    :goto_7
    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->batch:I

    if-lez v1, :cond_32

    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->baseLimit:I

    move v5, v1

    .local v5, "f":I
    add-int/2addr v1, v0

    const/4 v2, 0x1

    ushr-int/2addr v1, v2

    move v10, v1

    .local v10, "h":I
    if-le v1, v0, :cond_32

    .line 5455
    invoke-virtual {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->addToPendingCount(I)V

    .line 5456
    new-instance v11, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;

    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->batch:I

    ushr-int/lit8 v3, v1, 0x1

    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->batch:I

    iput v10, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->baseLimit:I

    iget-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    iget-object v7, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;

    move-object v1, v11

    move-object v2, p0

    move v4, v10

    move-object v8, v9

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;Ljava/util/function/BiFunction;)V

    iput-object v11, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;

    .line 5458
    invoke-virtual {v11}, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_7

    .line 5460
    .end local v0    # "i":I
    .end local v5    # "f":I
    .end local v10    # "h":I
    :cond_32
    const/4 v0, 0x0

    .line 5461
    .local v0, "r":Ljava/lang/Object;, "TV;"
    :goto_33
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v1

    move-object v2, v1

    .local v2, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v1, :cond_46

    .line 5462
    iget-object v1, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    .line 5463
    .local v1, "v":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_40

    move-object v3, v1

    goto :goto_44

    :cond_40
    invoke-interface {v9, v0, v1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :goto_44
    move-object v0, v3

    .line 5464
    .end local v1    # "v":Ljava/lang/Object;, "TV;"
    goto :goto_33

    .line 5465
    .end local v2    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_46
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->result:Ljava/lang/Object;

    .line 5467
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v1

    .local v1, "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_4c
    if-eqz v1, :cond_72

    .line 5470
    move-object v2, v1

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;

    .line 5471
    .local v2, "t":Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask<TK;TV;>;"
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;

    .line 5472
    .local v3, "s":Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask<TK;TV;>;"
    :goto_53
    if-eqz v3, :cond_6d

    .line 5474
    iget-object v4, v3, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->result:Ljava/lang/Object;

    move-object v5, v4

    .local v5, "sr":Ljava/lang/Object;, "TV;"
    if-eqz v4, :cond_67

    .line 5475
    iget-object v4, v2, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->result:Ljava/lang/Object;

    move-object v6, v4

    .local v6, "tr":Ljava/lang/Object;, "TV;"
    if-nez v4, :cond_61

    move-object v4, v5

    goto :goto_65

    .line 5476
    :cond_61
    invoke-interface {v9, v6, v5}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :goto_65
    iput-object v4, v2, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->result:Ljava/lang/Object;

    .line 5477
    .end local v6    # "tr":Ljava/lang/Object;, "TV;"
    :cond_67
    iget-object v4, v3, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;

    iput-object v4, v2, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;

    move-object v3, v4

    .line 5478
    .end local v5    # "sr":Ljava/lang/Object;, "TV;"
    goto :goto_53

    .line 5467
    .end local v2    # "t":Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask<TK;TV;>;"
    .end local v3    # "s":Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask<TK;TV;>;"
    :cond_6d
    invoke-virtual {v1}, Ljava/util/concurrent/CountedCompleter;->nextComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v1

    goto :goto_4c

    .line 5481
    .end local v0    # "r":Ljava/lang/Object;, "TV;"
    .end local v1    # "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :cond_72
    return-void
.end method

.method public final whitelist core-platform-api test-api getRawResult()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 5449
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->result:Ljava/lang/Object;

    return-object v0
.end method
