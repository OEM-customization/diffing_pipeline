.class final Ljava/util/concurrent/ConcurrentHashMap$SearchEntriesTask;
.super Ljava/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SearchEntriesTask"
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
        "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<",
        "TK;TV;TU;>;"
    }
.end annotation


# instance fields
.field final greylist-max-o result:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TU;>;"
        }
    .end annotation
.end field

.field final greylist-max-o searchFunction:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/concurrent/atomic/AtomicReference;)V
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
            "Ljava/util/function/Function<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;+TU;>;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TU;>;)V"
        }
    .end annotation

    .line 5309
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$SearchEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$SearchEntriesTask<TK;TV;TU;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "searchFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Map$Entry<TK;TV;>;+TU;>;"
    .local p7, "result":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TU;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 5310
    iput-object p6, p0, Ljava/util/concurrent/ConcurrentHashMap$SearchEntriesTask;->searchFunction:Ljava/util/function/Function;

    iput-object p7, p0, Ljava/util/concurrent/ConcurrentHashMap$SearchEntriesTask;->result:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5311
    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api compute()V
    .registers 14

    .line 5316
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$SearchEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$SearchEntriesTask<TK;TV;TU;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$SearchEntriesTask;->searchFunction:Ljava/util/function/Function;

    move-object v9, v0

    .local v9, "searchFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Map$Entry<TK;TV;>;+TU;>;"
    if-eqz v0, :cond_5f

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$SearchEntriesTask;->result:Ljava/util/concurrent/atomic/AtomicReference;

    move-object v10, v0

    .local v10, "result":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TU;>;"
    if-eqz v0, :cond_5f

    .line 5318
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$SearchEntriesTask;->baseIndex:I

    .local v0, "i":I
    :goto_c
    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$SearchEntriesTask;->batch:I

    if-lez v1, :cond_3b

    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$SearchEntriesTask;->baseLimit:I

    move v5, v1

    .local v5, "f":I
    add-int/2addr v1, v0

    const/4 v2, 0x1

    ushr-int/2addr v1, v2

    move v11, v1

    .local v11, "h":I
    if-le v1, v0, :cond_3b

    .line 5320
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 5321
    return-void

    .line 5322
    :cond_20
    invoke-virtual {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap$SearchEntriesTask;->addToPendingCount(I)V

    .line 5323
    new-instance v12, Ljava/util/concurrent/ConcurrentHashMap$SearchEntriesTask;

    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$SearchEntriesTask;->batch:I

    ushr-int/lit8 v3, v1, 0x1

    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$SearchEntriesTask;->batch:I

    iput v11, p0, Ljava/util/concurrent/ConcurrentHashMap$SearchEntriesTask;->baseLimit:I

    iget-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap$SearchEntriesTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v12

    move-object v2, p0

    move v4, v11

    move-object v7, v9

    move-object v8, v10

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ConcurrentHashMap$SearchEntriesTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 5325
    invoke-virtual {v12}, Ljava/util/concurrent/ConcurrentHashMap$SearchEntriesTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_c

    .line 5327
    .end local v0    # "i":I
    .end local v5    # "f":I
    .end local v11    # "h":I
    :cond_3b
    :goto_3b
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5f

    .line 5330
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$SearchEntriesTask;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v0, :cond_4c

    .line 5331
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$SearchEntriesTask;->propagateCompletion()V

    .line 5332
    goto :goto_5f

    .line 5334
    :cond_4c
    invoke-interface {v9, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    .local v2, "u":Ljava/lang/Object;, "TU;"
    if-eqz v0, :cond_5e

    .line 5335
    const/4 v0, 0x0

    invoke-virtual {v10, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 5336
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$SearchEntriesTask;->quietlyCompleteRoot()V

    .line 5337
    :cond_5d
    return-void

    .line 5339
    .end local v1    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v2    # "u":Ljava/lang/Object;, "TU;"
    :cond_5e
    goto :goto_3b

    .line 5341
    .end local v10    # "result":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TU;>;"
    :cond_5f
    :goto_5f
    return-void
.end method

.method public final whitelist core-platform-api test-api getRawResult()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    .line 5312
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$SearchEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$SearchEntriesTask<TK;TV;TU;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$SearchEntriesTask;->result:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
