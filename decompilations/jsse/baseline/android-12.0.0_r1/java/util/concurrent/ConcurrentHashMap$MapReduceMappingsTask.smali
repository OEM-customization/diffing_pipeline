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
        "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<",
        "TK;TV;TU;>;"
    }
.end annotation


# instance fields
.field greylist-max-o nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask<",
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

.field greylist-max-o rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask<",
            "TK;TV;TU;>;"
        }
    .end annotation
.end field

.field final greylist-max-o transformer:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;Ljava/util/function/BiFunction;Ljava/util/function/BiFunction;)V
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
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask<",
            "TK;TV;TU;>;",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TU;>;",
            "Ljava/util/function/BiFunction<",
            "-TU;-TU;+TU;>;)V"
        }
    .end annotation

    .line 5704
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask<TK;TV;TU;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "nextRight":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask<TK;TV;TU;>;"
    .local p7, "transformer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TU;>;"
    .local p8, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    iput-object p6, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;

    .line 5705
    iput-object p7, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->transformer:Ljava/util/function/BiFunction;

    .line 5706
    iput-object p8, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->reducer:Ljava/util/function/BiFunction;

    .line 5707
    return-void
.end method


# virtual methods
.method public final whitelist test-api compute()V
    .registers 15

    .line 5712
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask<TK;TV;TU;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->transformer:Ljava/util/function/BiFunction;

    move-object v10, v0

    .local v10, "transformer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TU;>;"
    if-eqz v0, :cond_81

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->reducer:Ljava/util/function/BiFunction;

    move-object v11, v0

    .local v11, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    if-eqz v0, :cond_81

    .line 5714
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->baseIndex:I

    .local v0, "i":I
    :goto_c
    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->batch:I

    if-lez v1, :cond_38

    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->baseLimit:I

    move v5, v1

    .local v5, "f":I
    add-int/2addr v1, v0

    const/4 v2, 0x1

    ushr-int/2addr v1, v2

    move v12, v1

    .local v12, "h":I
    if-le v1, v0, :cond_38

    .line 5716
    invoke-virtual {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->addToPendingCount(I)V

    .line 5717
    new-instance v13, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;

    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->batch:I

    ushr-int/lit8 v3, v1, 0x1

    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->batch:I

    iput v12, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->baseLimit:I

    iget-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    iget-object v7, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;

    move-object v1, v13

    move-object v2, p0

    move v4, v12

    move-object v8, v10

    move-object v9, v11

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;Ljava/util/function/BiFunction;Ljava/util/function/BiFunction;)V

    iput-object v13, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;

    .line 5719
    invoke-virtual {v13}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_c

    .line 5721
    .end local v0    # "i":I
    .end local v5    # "f":I
    .end local v12    # "h":I
    :cond_38
    const/4 v0, 0x0

    .line 5722
    .local v0, "r":Ljava/lang/Object;, "TU;"
    :goto_39
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v1

    move-object v2, v1

    .local v2, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v1, :cond_55

    .line 5724
    iget-object v1, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v3, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {v10, v1, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    .local v3, "u":Ljava/lang/Object;, "TU;"
    if-eqz v1, :cond_54

    .line 5725
    if-nez v0, :cond_4f

    move-object v1, v3

    goto :goto_53

    :cond_4f
    invoke-interface {v11, v0, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_53
    move-object v0, v1

    .line 5726
    .end local v3    # "u":Ljava/lang/Object;, "TU;"
    :cond_54
    goto :goto_39

    .line 5727
    .end local v2    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_55
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->result:Ljava/lang/Object;

    .line 5729
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v1

    .local v1, "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_5b
    if-eqz v1, :cond_81

    .line 5732
    move-object v2, v1

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;

    .line 5733
    .local v2, "t":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask<TK;TV;TU;>;"
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;

    .line 5734
    .local v3, "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask<TK;TV;TU;>;"
    :goto_62
    if-eqz v3, :cond_7c

    .line 5736
    iget-object v4, v3, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->result:Ljava/lang/Object;

    move-object v5, v4

    .local v5, "sr":Ljava/lang/Object;, "TU;"
    if-eqz v4, :cond_76

    .line 5737
    iget-object v4, v2, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->result:Ljava/lang/Object;

    move-object v6, v4

    .local v6, "tr":Ljava/lang/Object;, "TU;"
    if-nez v4, :cond_70

    move-object v4, v5

    goto :goto_74

    .line 5738
    :cond_70
    invoke-interface {v11, v6, v5}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :goto_74
    iput-object v4, v2, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->result:Ljava/lang/Object;

    .line 5739
    .end local v6    # "tr":Ljava/lang/Object;, "TU;"
    :cond_76
    iget-object v4, v3, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;

    iput-object v4, v2, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;

    move-object v3, v4

    .line 5740
    .end local v5    # "sr":Ljava/lang/Object;, "TU;"
    goto :goto_62

    .line 5729
    .end local v2    # "t":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask<TK;TV;TU;>;"
    .end local v3    # "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask<TK;TV;TU;>;"
    :cond_7c
    invoke-virtual {v1}, Ljava/util/concurrent/CountedCompleter;->nextComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v1

    goto :goto_5b

    .line 5743
    .end local v0    # "r":Ljava/lang/Object;, "TU;"
    .end local v1    # "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v11    # "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    :cond_81
    return-void
.end method

.method public final whitelist test-api getRawResult()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    .line 5708
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask<TK;TV;TU;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->result:Ljava/lang/Object;

    return-object v0
.end method
