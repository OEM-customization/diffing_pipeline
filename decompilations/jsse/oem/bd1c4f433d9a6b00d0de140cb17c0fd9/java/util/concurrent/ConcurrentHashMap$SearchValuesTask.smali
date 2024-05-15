.class final Ljava/util/concurrent/ConcurrentHashMap$SearchValuesTask;
.super Ljava/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SearchValuesTask"
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
.field final result:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<TU;>;"
        }
    .end annotation
.end field

.field final searchFunction:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function",
            "<-TV;+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/concurrent/atomic/AtomicReference;)V
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
            "Ljava/util/function/Function",
            "<-TV;+TU;>;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<TU;>;)V"
        }
    .end annotation

    .prologue
    .line 5263
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$SearchValuesTask;, "Ljava/util/concurrent/ConcurrentHashMap$SearchValuesTask<TK;TV;TU;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "searchFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TV;+TU;>;"
    .local p7, "result":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TU;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 5264
    iput-object p6, p0, Ljava/util/concurrent/ConcurrentHashMap$SearchValuesTask;->searchFunction:Ljava/util/function/Function;

    iput-object p7, p0, Ljava/util/concurrent/ConcurrentHashMap$SearchValuesTask;->result:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5265
    return-void
.end method


# virtual methods
.method public final compute()V
    .registers 13

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$SearchValuesTask;, "Ljava/util/concurrent/ConcurrentHashMap$SearchValuesTask<TK;TV;TU;>;"
    const/4 v11, 0x0

    .line 5270
    iget-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap$SearchValuesTask;->searchFunction:Ljava/util/function/Function;

    .local v6, "searchFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TV;+TU;>;"
    if-eqz v6, :cond_45

    .line 5271
    iget-object v7, p0, Ljava/util/concurrent/ConcurrentHashMap$SearchValuesTask;->result:Ljava/util/concurrent/atomic/AtomicReference;

    .local v7, "result":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TU;>;"
    if-eqz v7, :cond_45

    .line 5272
    iget v8, p0, Ljava/util/concurrent/ConcurrentHashMap$SearchValuesTask;->baseIndex:I

    .local v8, "i":I
    :goto_b
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$SearchValuesTask;->batch:I

    if-lez v0, :cond_36

    .line 5273
    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap$SearchValuesTask;->baseLimit:I

    .local v4, "f":I
    add-int v0, v4, v8

    ushr-int/lit8 v3, v0, 0x1

    .local v3, "h":I
    if-le v3, v8, :cond_36

    .line 5274
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 5275
    return-void

    .line 5276
    :cond_1e
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap$SearchValuesTask;->addToPendingCount(I)V

    .line 5277
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$SearchValuesTask;

    .line 5278
    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$SearchValuesTask;->batch:I

    ushr-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/concurrent/ConcurrentHashMap$SearchValuesTask;->batch:I

    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$SearchValuesTask;->baseLimit:I

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap$SearchValuesTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, p0

    .line 5277
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$SearchValuesTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$SearchValuesTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_b

    .line 5281
    .end local v3    # "h":I
    .end local v4    # "f":I
    :cond_36
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_45

    .line 5284
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$SearchValuesTask;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v9

    .local v9, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v9, :cond_46

    .line 5285
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$SearchValuesTask;->propagateCompletion()V

    .line 5295
    .end local v7    # "result":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TU;>;"
    .end local v8    # "i":I
    .end local v9    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_45
    :goto_45
    return-void

    .line 5288
    .restart local v7    # "result":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TU;>;"
    .restart local v8    # "i":I
    .restart local v9    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_46
    iget-object v0, v9, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {v6, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .local v10, "u":Ljava/lang/Object;, "TU;"
    if-eqz v10, :cond_36

    .line 5289
    invoke-virtual {v7, v11, v10}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 5290
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$SearchValuesTask;->quietlyCompleteRoot()V

    goto :goto_45
.end method

.method public final getRawResult()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    .prologue
    .line 5266
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$SearchValuesTask;, "Ljava/util/concurrent/ConcurrentHashMap$SearchValuesTask<TK;TV;TU;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$SearchValuesTask;->result:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
