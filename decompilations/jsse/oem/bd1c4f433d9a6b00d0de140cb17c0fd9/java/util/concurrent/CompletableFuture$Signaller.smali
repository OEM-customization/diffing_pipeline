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
.field final deadline:J

.field interrupted:Z

.field final interruptible:Z

.field nanos:J

.field volatile thread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(ZJJ)V
    .registers 8
    .param p1, "interruptible"    # Z
    .param p2, "nanos"    # J
    .param p4, "deadline"    # J

    .prologue
    .line 1695
    invoke-direct {p0}, Ljava/util/concurrent/CompletableFuture$Completion;-><init>()V

    .line 1696
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->thread:Ljava/lang/Thread;

    .line 1697
    iput-boolean p1, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->interruptible:Z

    .line 1698
    iput-wide p2, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->nanos:J

    .line 1699
    iput-wide p4, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->deadline:J

    .line 1700
    return-void
.end method


# virtual methods
.method public block()Z
    .registers 5

    .prologue
    .line 1719
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture$Signaller;->isReleasable()Z

    move-result v0

    if-nez v0, :cond_18

    .line 1720
    iget-wide v0, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->deadline:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    .line 1721
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_0

    .line 1723
    :cond_12
    iget-wide v0, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->nanos:J

    invoke-static {p0, v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    goto :goto_0

    .line 1725
    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method final isLive()Z
    .registers 2

    .prologue
    .line 1727
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isReleasable()Z
    .registers 9

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    .line 1710
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1711
    iput-boolean v0, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->interrupted:Z

    .line 1712
    :cond_b
    iget-boolean v1, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->interrupted:Z

    if-eqz v1, :cond_13

    iget-boolean v1, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->interruptible:Z

    if-nez v1, :cond_2c

    .line 1713
    :cond_13
    iget-wide v2, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->deadline:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_2d

    .line 1714
    iget-wide v2, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->nanos:J

    cmp-long v1, v2, v6

    if-lez v1, :cond_2c

    .line 1715
    iget-wide v2, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->deadline:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->nanos:J

    cmp-long v1, v2, v6

    if-gtz v1, :cond_2d

    .line 1712
    :cond_2c
    :goto_2c
    return v0

    .line 1716
    :cond_2d
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->thread:Ljava/lang/Thread;

    if-eqz v1, :cond_2c

    const/4 v0, 0x0

    goto :goto_2c
.end method

.method final tryFire(I)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .param p1, "ignore"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1703
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->thread:Ljava/lang/Thread;

    .local v0, "w":Ljava/lang/Thread;
    if-eqz v0, :cond_a

    .line 1704
    iput-object v1, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->thread:Ljava/lang/Thread;

    .line 1705
    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 1707
    :cond_a
    return-object v1
.end method
