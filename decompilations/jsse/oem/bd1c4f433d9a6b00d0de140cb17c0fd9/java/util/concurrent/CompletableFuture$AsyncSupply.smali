.class final Ljava/util/concurrent/CompletableFuture$AsyncSupply;
.super Ljava/util/concurrent/ForkJoinTask;
.source "CompletableFuture.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/util/concurrent/CompletableFuture$AsynchronousCompletionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AsyncSupply"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ForkJoinTask",
        "<",
        "Ljava/lang/Void;",
        ">;",
        "Ljava/lang/Runnable;",
        "Ljava/util/concurrent/CompletableFuture$AsynchronousCompletionTask;"
    }
.end annotation


# instance fields
.field dep:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation
.end field

.field fn:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Supplier;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;",
            "Ljava/util/function/Supplier",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1611
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$AsyncSupply;, "Ljava/util/concurrent/CompletableFuture$AsyncSupply<TT;>;"
    .local p1, "dep":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "fn":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;-><init>()V

    .line 1612
    iput-object p1, p0, Ljava/util/concurrent/CompletableFuture$AsyncSupply;->dep:Ljava/util/concurrent/CompletableFuture;

    iput-object p2, p0, Ljava/util/concurrent/CompletableFuture$AsyncSupply;->fn:Ljava/util/function/Supplier;

    .line 1613
    return-void
.end method


# virtual methods
.method public final exec()Z
    .registers 2

    .prologue
    .line 1617
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$AsyncSupply;, "Ljava/util/concurrent/CompletableFuture$AsyncSupply<TT;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture$AsyncSupply;->run()V

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic getRawResult()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1615
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$AsyncSupply;, "Ljava/util/concurrent/CompletableFuture$AsyncSupply<TT;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture$AsyncSupply;->getRawResult()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final getRawResult()Ljava/lang/Void;
    .registers 2

    .prologue
    .line 1615
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$AsyncSupply;, "Ljava/util/concurrent/CompletableFuture$AsyncSupply<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public run()V
    .registers 5

    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$AsyncSupply;, "Ljava/util/concurrent/CompletableFuture$AsyncSupply<TT;>;"
    const/4 v3, 0x0

    .line 1621
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$AsyncSupply;->dep:Ljava/util/concurrent/CompletableFuture;

    .local v0, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    if-eqz v0, :cond_1b

    iget-object v2, p0, Ljava/util/concurrent/CompletableFuture$AsyncSupply;->fn:Ljava/util/function/Supplier;

    .local v2, "f":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+TT;>;"
    if-eqz v2, :cond_1b

    .line 1622
    iput-object v3, p0, Ljava/util/concurrent/CompletableFuture$AsyncSupply;->dep:Ljava/util/concurrent/CompletableFuture;

    iput-object v3, p0, Ljava/util/concurrent/CompletableFuture$AsyncSupply;->fn:Ljava/util/function/Supplier;

    .line 1623
    iget-object v3, v0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v3, :cond_18

    .line 1625
    :try_start_11
    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/CompletableFuture;->completeValue(Ljava/lang/Object;)Z
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_18} :catch_1c

    .line 1630
    :cond_18
    :goto_18
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    .line 1632
    .end local v2    # "f":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+TT;>;"
    :cond_1b
    return-void

    .line 1626
    .restart local v2    # "f":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+TT;>;"
    :catch_1c
    move-exception v1

    .line 1627
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    goto :goto_18
.end method

.method public bridge synthetic setRawResult(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1616
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$AsyncSupply;, "Ljava/util/concurrent/CompletableFuture$AsyncSupply<TT;>;"
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture$AsyncSupply;->setRawResult(Ljava/lang/Void;)V

    return-void
.end method

.method public final setRawResult(Ljava/lang/Void;)V
    .registers 2
    .param p1, "v"    # Ljava/lang/Void;

    .prologue
    .line 1616
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$AsyncSupply;, "Ljava/util/concurrent/CompletableFuture$AsyncSupply<TT;>;"
    return-void
.end method
