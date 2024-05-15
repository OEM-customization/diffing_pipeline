.class final Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;
.super Ljava/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ForEachValueTask"
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final greylist-max-o action:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Consumer;)V
    .registers 7
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
            "Ljava/util/function/Consumer<",
            "-TV;>;)V"
        }
    .end annotation

    .line 5005
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;, "Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask<TK;TV;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TV;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 5006
    iput-object p6, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;->action:Ljava/util/function/Consumer;

    .line 5007
    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api compute()V
    .registers 12

    .line 5010
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;, "Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;->action:Ljava/util/function/Consumer;

    move-object v8, v0

    .local v8, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TV;>;"
    if-eqz v0, :cond_3e

    .line 5011
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;->baseIndex:I

    .local v0, "i":I
    :goto_7
    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;->batch:I

    if-lez v1, :cond_2e

    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;->baseLimit:I

    move v5, v1

    .local v5, "f":I
    add-int/2addr v1, v0

    const/4 v2, 0x1

    ushr-int/2addr v1, v2

    move v9, v1

    .local v9, "h":I
    if-le v1, v0, :cond_2e

    .line 5013
    invoke-virtual {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;->addToPendingCount(I)V

    .line 5014
    new-instance v10, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;

    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;->batch:I

    ushr-int/lit8 v3, v1, 0x1

    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;->batch:I

    iput v9, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;->baseLimit:I

    iget-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v10

    move-object v2, p0

    move v4, v9

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Consumer;)V

    .line 5016
    invoke-virtual {v10}, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_7

    .line 5018
    .end local v0    # "i":I
    .end local v5    # "f":I
    .end local v9    # "h":I
    :cond_2e
    :goto_2e
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_3b

    .line 5019
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {v8, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_2e

    .line 5020
    .end local v1    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_3b
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;->propagateCompletion()V

    .line 5022
    :cond_3e
    return-void
.end method
