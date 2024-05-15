.class final Ljava/util/concurrent/ThreadPoolExecutor$Worker;
.super Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;
.source "ThreadPoolExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Worker"
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x552f9a9a47f02c71L


# instance fields
.field volatile greylist-max-o completedTasks:J

.field greylist-max-o firstTask:Ljava/lang/Runnable;

.field final synthetic blacklist this$0:Ljava/util/concurrent/ThreadPoolExecutor;

.field final greylist-max-o thread:Ljava/lang/Thread;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/ThreadPoolExecutor;Ljava/lang/Runnable;)V
    .registers 4
    .param p2, "firstTask"    # Ljava/lang/Runnable;

    .line 633
    iput-object p1, p0, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->this$0:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;-><init>()V

    .line 634
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->setState(I)V

    .line 635
    iput-object p2, p0, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->firstTask:Ljava/lang/Runnable;

    .line 636
    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor;->getThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->thread:Ljava/lang/Thread;

    .line 637
    return-void
.end method


# virtual methods
.method greylist-max-o interruptIfStarted()V
    .registers 3

    .line 674
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->getState()I

    move-result v0

    if-ltz v0, :cond_16

    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->thread:Ljava/lang/Thread;

    move-object v1, v0

    .local v1, "t":Ljava/lang/Thread;
    if-eqz v0, :cond_16

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_16

    .line 676
    :try_start_11
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_14
    .catch Ljava/lang/SecurityException; {:try_start_11 .. :try_end_14} :catch_15

    .line 678
    goto :goto_16

    .line 677
    :catch_15
    move-exception v0

    .line 680
    .end local v1    # "t":Ljava/lang/Thread;
    :cond_16
    :goto_16
    return-void
.end method

.method protected whitelist test-api isHeldExclusively()Z
    .registers 2

    .line 650
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->getState()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public greylist-max-o isLocked()Z
    .registers 2

    .line 670
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->isHeldExclusively()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o lock()V
    .registers 2

    .line 667
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->acquire(I)V

    return-void
.end method

.method public whitelist test-api run()V
    .registers 2

    .line 641
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->this$0:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->runWorker(Ljava/util/concurrent/ThreadPoolExecutor$Worker;)V

    .line 642
    return-void
.end method

.method protected whitelist test-api tryAcquire(I)Z
    .registers 5
    .param p1, "unused"    # I

    .line 654
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->compareAndSetState(II)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 655
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->setExclusiveOwnerThread(Ljava/lang/Thread;)V

    .line 656
    return v1

    .line 658
    :cond_10
    return v0
.end method

.method public greylist-max-o tryLock()Z
    .registers 2

    .line 668
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->tryAcquire(I)Z

    move-result v0

    return v0
.end method

.method protected whitelist test-api tryRelease(I)Z
    .registers 3
    .param p1, "unused"    # I

    .line 662
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->setExclusiveOwnerThread(Ljava/lang/Thread;)V

    .line 663
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->setState(I)V

    .line 664
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o unlock()V
    .registers 2

    .line 669
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->release(I)Z

    return-void
.end method
