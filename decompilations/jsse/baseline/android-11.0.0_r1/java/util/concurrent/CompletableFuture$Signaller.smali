.class final Ljava/util/concurrent/CompletableFuture$Signaller;
.super Ljava/util/concurrent/CompletableFuture$Completion;
.source "CompletableFuture.java"

# interfaces
.implements Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Signaller"
.end annotation


# instance fields
.field final greylist-max-o deadline:J

.field greylist-max-o interrupted:Z

.field final greylist-max-o interruptible:Z

.field greylist-max-o nanos:J

.field volatile greylist-max-o thread:Ljava/lang/Thread;


# direct methods
.method constructor greylist-max-o <init>(ZJJ)V
    .registers 7
    .param p1, "interruptible"    # Z
    .param p2, "nanos"    # J
    .param p4, "deadline"    # J

    .line 1697
    invoke-direct {p0}, Ljava/util/concurrent/CompletableFuture$Completion;-><init>()V

    .line 1698
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->thread:Ljava/lang/Thread;

    .line 1699
    iput-boolean p1, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->interruptible:Z

    .line 1700
    iput-wide p2, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->nanos:J

    .line 1701
    iput-wide p4, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->deadline:J

    .line 1702
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api block()Z
    .registers 5

    .line 1721
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture$Signaller;->isReleasable()Z

    move-result v0

    if-nez v0, :cond_18

    .line 1722
    iget-wide v0, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->deadline:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    .line 1723
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_0

    .line 1725
    :cond_12
    iget-wide v0, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->nanos:J

    invoke-static {p0, v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    goto :goto_0

    .line 1727
    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method final greylist-max-o isLive()Z
    .registers 2

    .line 1729
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist core-platform-api test-api isReleasable()Z
    .registers 9

    .line 1712
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    .line 1713
    iput-boolean v1, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->interrupted:Z

    .line 1714
    :cond_9
    iget-boolean v0, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->interrupted:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->interruptible:Z

    if-nez v0, :cond_2e

    :cond_11
    iget-wide v2, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->deadline:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2a

    iget-wide v6, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->nanos:J

    cmp-long v0, v6, v4

    if-lez v0, :cond_2e

    .line 1717
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v2, v6

    iput-wide v2, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->nanos:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_2e

    :cond_2a
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->thread:Ljava/lang/Thread;

    if-nez v0, :cond_2f

    :cond_2e
    goto :goto_30

    :cond_2f
    const/4 v1, 0x0

    .line 1714
    :goto_30
    return v1
.end method

.method final greylist-max-o tryFire(I)Ljava/util/concurrent/CompletableFuture;
    .registers 5
    .param p1, "ignore"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/CompletableFuture<",
            "*>;"
        }
    .end annotation

    .line 1705
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->thread:Ljava/lang/Thread;

    move-object v1, v0

    .local v1, "w":Ljava/lang/Thread;
    const/4 v2, 0x0

    if-eqz v0, :cond_b

    .line 1706
    iput-object v2, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->thread:Ljava/lang/Thread;

    .line 1707
    invoke-static {v1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 1709
    :cond_b
    return-object v2
.end method
