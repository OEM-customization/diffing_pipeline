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
        "Ljava/util/concurrent/ForkJoinTask<",
        "Ljava/lang/Void;",
        ">;",
        "Ljava/lang/Runnable;",
        "Ljava/util/concurrent/CompletableFuture$AsynchronousCompletionTask;"
    }
.end annotation


# instance fields
.field greylist-max-o dep:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o fn:Ljava/lang/Runnable;


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;)V
    .registers 3
    .param p2, "fn"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 1649
    .local p1, "dep":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;-><init>()V

    .line 1650
    iput-object p1, p0, Ljava/util/concurrent/CompletableFuture$AsyncRun;->dep:Ljava/util/concurrent/CompletableFuture;

    iput-object p2, p0, Ljava/util/concurrent/CompletableFuture$AsyncRun;->fn:Ljava/lang/Runnable;

    .line 1651
    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api exec()Z
    .registers 2

    .line 1655
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture$AsyncRun;->run()V

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api getRawResult()Ljava/lang/Object;
    .registers 2

    .line 1645
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture$AsyncRun;->getRawResult()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist getRawResult()Ljava/lang/Void;
    .registers 2

    .line 1653
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist core-platform-api test-api run()V
    .registers 4

    .line 1659
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$AsyncRun;->dep:Ljava/util/concurrent/CompletableFuture;

    move-object v1, v0

    .local v1, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    if-eqz v0, :cond_21

    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$AsyncRun;->fn:Ljava/lang/Runnable;

    move-object v2, v0

    .local v2, "f":Ljava/lang/Runnable;
    if-eqz v0, :cond_21

    .line 1660
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/concurrent/CompletableFuture$AsyncRun;->dep:Ljava/util/concurrent/CompletableFuture;

    iput-object v0, p0, Ljava/util/concurrent/CompletableFuture$AsyncRun;->fn:Ljava/lang/Runnable;

    .line 1661
    iget-object v0, v1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_1e

    .line 1663
    :try_start_13
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 1664
    invoke-virtual {v1}, Ljava/util/concurrent/CompletableFuture;->completeNull()Z
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_1a

    .line 1667
    goto :goto_1e

    .line 1665
    :catchall_1a
    move-exception v0

    .line 1666
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {v1, v0}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    .line 1669
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_1e
    :goto_1e
    invoke-virtual {v1}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    .line 1671
    .end local v2    # "f":Ljava/lang/Runnable;
    :cond_21
    return-void
.end method

.method public bridge synthetic whitelist core-platform-api test-api setRawResult(Ljava/lang/Object;)V
    .registers 2

    .line 1645
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture$AsyncRun;->setRawResult(Ljava/lang/Void;)V

    return-void
.end method

.method public final greylist-max-o setRawResult(Ljava/lang/Void;)V
    .registers 2
    .param p1, "v"    # Ljava/lang/Void;

    .line 1654
    return-void
.end method
