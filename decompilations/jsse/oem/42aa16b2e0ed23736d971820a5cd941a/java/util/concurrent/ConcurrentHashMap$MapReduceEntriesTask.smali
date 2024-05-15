.class final Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;
.super Ljava/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MapReduceEntriesTask"
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
.field greylist-max-o nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask<",
            "TK;TV;TU;>;"
        }
    .end annotation
.end field

.field final greylist-max-o reducer:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "-TU;-TU;+TU;>;"
        }
    .end annotation
.end field

.field greylist-max-o result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field greylist-max-o rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask<",
            "TK;TV;TU;>;"
        }
    .end annotation
.end field

.field final greylist-max-o transformer:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;Ljava/util/function/Function;Ljava/util/function/BiFunction;)V
    .registers 9
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
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask<",
            "TK;TV;TU;>;",
            "Ljava/util/function/Function<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;+TU;>;",
            "Ljava/util/function/BiFunction<",
            "-TU;-TU;+TU;>;)V"
        }
    .end annotation

    .line 5650
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask<TK;TV;TU;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "nextRight":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask<TK;TV;TU;>;"
    .local p7, "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Map$Entry<TK;TV;>;+TU;>;"
    .local p8, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    iput-object p6, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;

    .line 5651
    iput-object p7, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->transformer:Ljava/util/function/Function;

    .line 5652
    iput-object p8, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->reducer:Ljava/util/function/BiFunction;

    .line 5653
    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api compute()V
    .registers 15

    .line 5658
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask<TK;TV;TU;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->transformer:Ljava/util/function/Function;

    move-object v10, v0

    .local v10, "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Map$Entry<TK;TV;>;+TU;>;"
    if-eqz v0, :cond_7d

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->reducer:Ljava/util/function/BiFunction;

    move-object v11, v0

    .local v11, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    if-eqz v0, :cond_7d

    .line 5660
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->baseIndex:I

    .local v0, "i":I
    :goto_c
    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->batch:I

    if-lez v1, :cond_38

    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->baseLimit:I

    move v5, v1

    .local v5, "f":I
    add-int/2addr v1, v0

    const/4 v2, 0x1

    ushr-int/2addr v1, v2

    move v12, v1

    .local v12, "h":I
    if-le v1, v0, :cond_38

    .line 5662
    invoke-virtual {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->addToPendingCount(I)V

    .line 5663
    new-instance v13, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;

    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->batch:I

    ushr-int/lit8 v3, v1, 0x1

    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->batch:I

    iput v12, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->baseLimit:I

    iget-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    iget-object v7, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;

    move-object v1, v13

    move-object v2, p0

    move v4, v12

    move-object v8, v10

    move-object v9, v11

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;Ljava/util/function/Function;Ljava/util/function/BiFunction;)V

    iput-object v13, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;

    .line 5665
    invoke-virtual {v13}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_c

    .line 5667
    .end local v0    # "i":I
    .end local v5    # "f":I
    .end local v12    # "h":I
    :cond_38
    const/4 v0, 0x0

    .line 5668
    .local v0, "r":Ljava/lang/Object;, "TU;"
    :goto_39
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v1

    move-object v2, v1

    .local v2, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v1, :cond_51

    .line 5670
    invoke-interface {v10, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    .local v3, "u":Ljava/lang/Object;, "TU;"
    if-eqz v1, :cond_50

    .line 5671
    if-nez v0, :cond_4b

    move-object v1, v3

    goto :goto_4f

    :cond_4b
    invoke-interface {v11, v0, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_4f
    move-object v0, v1

    .line 5672
    .end local v3    # "u":Ljava/lang/Object;, "TU;"
    :cond_50
    goto :goto_39

    .line 5673
    .end local v2    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_51
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->result:Ljava/lang/Object;

    .line 5675
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v1

    .local v1, "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_57
    if-eqz v1, :cond_7d

    .line 5678
    move-object v2, v1

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;

    .line 5679
    .local v2, "t":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask<TK;TV;TU;>;"
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;

    .line 5680
    .local v3, "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask<TK;TV;TU;>;"
    :goto_5e
    if-eqz v3, :cond_78

    .line 5682
    iget-object v4, v3, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->result:Ljava/lang/Object;

    move-object v5, v4

    .local v5, "sr":Ljava/lang/Object;, "TU;"
    if-eqz v4, :cond_72

    .line 5683
    iget-object v4, v2, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->result:Ljava/lang/Object;

    move-object v6, v4

    .local v6, "tr":Ljava/lang/Object;, "TU;"
    if-nez v4, :cond_6c

    move-object v4, v5

    goto :goto_70

    .line 5684
    :cond_6c
    invoke-interface {v11, v6, v5}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :goto_70
    iput-object v4, v2, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->result:Ljava/lang/Object;

    .line 5685
    .end local v6    # "tr":Ljava/lang/Object;, "TU;"
    :cond_72
    iget-object v4, v3, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;

    iput-object v4, v2, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;

    move-object v3, v4

    .line 5686
    .end local v5    # "sr":Ljava/lang/Object;, "TU;"
    goto :goto_5e

    .line 5675
    .end local v2    # "t":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask<TK;TV;TU;>;"
    .end local v3    # "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask<TK;TV;TU;>;"
    :cond_78
    invoke-virtual {v1}, Ljava/util/concurrent/CountedCompleter;->nextComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v1

    goto :goto_57

    .line 5689
    .end local v0    # "r":Ljava/lang/Object;, "TU;"
    .end local v1    # "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v11    # "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    :cond_7d
    return-void
.end method

.method public final whitelist core-platform-api test-api getRawResult()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    .line 5654
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask<TK;TV;TU;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->result:Ljava/lang/Object;

    return-object v0
.end method
