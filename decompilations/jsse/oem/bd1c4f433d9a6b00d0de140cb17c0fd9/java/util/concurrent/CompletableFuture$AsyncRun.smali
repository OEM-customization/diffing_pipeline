.class final Ljava/util/concurrent/CompletableFuture$AsyncRun;
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
    name = "AsyncRun"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
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
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field fn:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;)V
    .registers 3
    .param p2, "fn"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1647
    .local p1, "dep":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;-><init>()V

    .line 1648
    iput-object p1, p0, Ljava/util/concurrent/CompletableFuture$AsyncRun;->dep:Ljava/util/concurrent/CompletableFuture;

    iput-object p2, p0, Ljava/util/concurrent/CompletableFuture$AsyncRun;->fn:Ljava/lang/Runnable;

    .line 1649
    return-void
.end method


# virtual methods
.method public final exec()Z
    .registers 2

    .prologue
    .line 1653
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture$AsyncRun;->run()V

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic getRawResult()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1651
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture$AsyncRun;->getRawResult()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final getRawResult()Ljava/lang/Void;
    .registers 2

    .prologue
    .line 1651
    const/4 v0, 0x0

    return-object v0
.end method

.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1657
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$AsyncRun;->dep:Ljava/util/concurrent/CompletableFuture;

    .local v0, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    if-eqz v0, :cond_1a

    iget-object v2, p0, Ljava/util/concurrent/CompletableFuture$AsyncRun;->fn:Ljava/lang/Runnable;

    .local v2, "f":Ljava/lang/Runnable;
    if-eqz v2, :cond_1a

    .line 1658
    iput-object v3, p0, Ljava/util/concurrent/CompletableFuture$AsyncRun;->dep:Ljava/util/concurrent/CompletableFuture;

    iput-object v3, p0, Ljava/util/concurrent/CompletableFuture$AsyncRun;->fn:Ljava/lang/Runnable;

    .line 1659
    iget-object v3, v0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v3, :cond_17

    .line 1661
    :try_start_11
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 1662
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->completeNull()Z
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_17} :catch_1b

    .line 1667
    :cond_17
    :goto_17
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    .line 1669
    .end local v2    # "f":Ljava/lang/Runnable;
    :cond_1a
    return-void

    .line 1663
    .restart local v2    # "f":Ljava/lang/Runnable;
    :catch_1b
    move-exception v1

    .line 1664
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    goto :goto_17
.end method

.method public bridge synthetic setRawResult(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1652
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture$AsyncRun;->setRawResult(Ljava/lang/Void;)V

    return-void
.end method

.method public final setRawResult(Ljava/lang/Void;)V
    .registers 2
    .param p1, "v"    # Ljava/lang/Void;

    .prologue
    .line 1652
    return-void
.end method
