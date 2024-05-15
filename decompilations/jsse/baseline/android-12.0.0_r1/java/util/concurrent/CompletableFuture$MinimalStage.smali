.class final Ljava/util/concurrent/CompletableFuture$MinimalStage;
.super Ljava/util/concurrent/CompletableFuture;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MinimalStage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/CompletableFuture<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 2710
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/Object;)V
    .registers 2
    .param p1, "r"    # Ljava/lang/Object;

    .line 2711
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/CompletableFuture;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api cancel(Z)Z
    .registers 3
    .param p1, "mayInterruptIfRunning"    # Z

    .line 2727
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api complete(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 2723
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api completeAsync(Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "+TT;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2745
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api completeAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "+TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2742
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api completeExceptionally(Ljava/lang/Throwable;)Z
    .registers 3
    .param p1, "ex"    # Ljava/lang/Throwable;

    .line 2725
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api completeOnTimeout(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/CompletableFuture;
    .registers 6
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2751
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 2715
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .line 2717
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getNow(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 2719
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    .local p1, "valueIfAbsent":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getNumberOfDependents()I
    .registers 2

    .line 2739
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api isCancelled()Z
    .registers 2

    .line 2735
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api isCompletedExceptionally()Z
    .registers 2

    .line 2737
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api isDone()Z
    .registers 2

    .line 2733
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api join()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 2721
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 2713
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    new-instance v0, Ljava/util/concurrent/CompletableFuture$MinimalStage;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture$MinimalStage;-><init>()V

    return-object v0
.end method

.method public whitelist test-api obtrudeException(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "ex"    # Ljava/lang/Throwable;

    .line 2731
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api obtrudeValue(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 2729
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api orTimeout(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/CompletableFuture;
    .registers 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2748
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
