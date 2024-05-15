.class Ljava/util/TimerThread;
.super Ljava/lang/Thread;
.source "Timer.java"


# instance fields
.field newTasksMayBeScheduled:Z

.field private queue:Ljava/util/TaskQueue;


# direct methods
.method constructor <init>(Ljava/util/TaskQueue;)V
    .registers 3
    .param p1, "queue"    # Ljava/util/TaskQueue;

    .prologue
    .line 499
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 489
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/TimerThread;->newTasksMayBeScheduled:Z

    .line 500
    iput-object p1, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    .line 501
    return-void
.end method

.method private mainLoop()V
    .registers 15

    .prologue
    const-wide/16 v12, 0x0

    .line 523
    :cond_2
    :goto_2
    :try_start_2
    iget-object v10, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    monitor-enter v10
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_1a

    .line 525
    :goto_5
    :try_start_5
    iget-object v7, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    invoke-virtual {v7}, Ljava/util/TaskQueue;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1c

    iget-boolean v7, p0, Ljava/util/TimerThread;->newTasksMayBeScheduled:Z

    if-eqz v7, :cond_1c

    .line 526
    iget-object v7, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    invoke-virtual {v7}, Ljava/util/TaskQueue;->wait()V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    goto :goto_5

    .line 523
    :catchall_17
    move-exception v7

    :try_start_18
    monitor-exit v10

    throw v7
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_1a} :catch_1a

    .line 556
    :catch_1a
    move-exception v2

    .local v2, "e":Ljava/lang/InterruptedException;
    goto :goto_2

    .line 527
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_1c
    :try_start_1c
    iget-object v7, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    invoke-virtual {v7}, Ljava/util/TaskQueue;->isEmpty()Z
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_17

    move-result v7

    if-eqz v7, :cond_26

    :try_start_24
    monitor-exit v10
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_25} :catch_1a

    .line 559
    return-void

    .line 532
    :cond_26
    :try_start_26
    iget-object v7, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    invoke-virtual {v7}, Ljava/util/TaskQueue;->getMin()Ljava/util/TimerTask;

    move-result-object v3

    .line 533
    .local v3, "task":Ljava/util/TimerTask;
    iget-object v11, v3, Ljava/util/TimerTask;->lock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_17

    .line 534
    :try_start_2f
    iget v7, v3, Ljava/util/TimerTask;->state:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_3c

    .line 535
    iget-object v7, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    invoke-virtual {v7}, Ljava/util/TaskQueue;->removeMin()V
    :try_end_39
    .catchall {:try_start_2f .. :try_end_39} :catchall_7a

    :try_start_39
    monitor-exit v11
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_17

    :try_start_3a
    monitor-exit v10
    :try_end_3b
    .catch Ljava/lang/InterruptedException; {:try_start_3a .. :try_end_3b} :catch_1a

    goto :goto_2

    .line 538
    :cond_3c
    :try_start_3c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 539
    .local v0, "currentTime":J
    iget-wide v4, v3, Ljava/util/TimerTask;->nextExecutionTime:J

    .line 540
    .local v4, "executionTime":J
    cmp-long v7, v4, v0

    if-gtz v7, :cond_68

    const/4 v6, 0x1

    .local v6, "taskFired":Z
    :goto_47
    if-eqz v6, :cond_57

    .line 541
    iget-wide v8, v3, Ljava/util/TimerTask;->period:J

    cmp-long v7, v8, v12

    if-nez v7, :cond_6a

    .line 542
    iget-object v7, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    invoke-virtual {v7}, Ljava/util/TaskQueue;->removeMin()V

    .line 543
    const/4 v7, 0x2

    iput v7, v3, Ljava/util/TimerTask;->state:I
    :try_end_57
    .catchall {:try_start_3c .. :try_end_57} :catchall_7a

    :cond_57
    :goto_57
    :try_start_57
    monitor-exit v11

    .line 551
    if-nez v6, :cond_61

    .line 552
    iget-object v7, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    sub-long v8, v4, v0

    invoke-virtual {v7, v8, v9}, Ljava/util/TaskQueue;->wait(J)V
    :try_end_61
    .catchall {:try_start_57 .. :try_end_61} :catchall_17

    :cond_61
    :try_start_61
    monitor-exit v10

    .line 554
    if-eqz v6, :cond_2

    .line 555
    invoke-virtual {v3}, Ljava/util/TimerTask;->run()V
    :try_end_67
    .catch Ljava/lang/InterruptedException; {:try_start_61 .. :try_end_67} :catch_1a

    goto :goto_2

    .line 540
    .end local v6    # "taskFired":Z
    :cond_68
    const/4 v6, 0x0

    goto :goto_47

    .line 545
    .restart local v6    # "taskFired":Z
    :cond_6a
    :try_start_6a
    iget-object v7, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    .line 546
    iget-wide v8, v3, Ljava/util/TimerTask;->period:J

    cmp-long v8, v8, v12

    if-gez v8, :cond_7d

    iget-wide v8, v3, Ljava/util/TimerTask;->period:J

    sub-long v8, v0, v8

    .line 545
    :goto_76
    invoke-virtual {v7, v8, v9}, Ljava/util/TaskQueue;->rescheduleMin(J)V
    :try_end_79
    .catchall {:try_start_6a .. :try_end_79} :catchall_7a

    goto :goto_57

    .line 533
    .end local v0    # "currentTime":J
    .end local v4    # "executionTime":J
    .end local v6    # "taskFired":Z
    :catchall_7a
    move-exception v7

    :try_start_7b
    monitor-exit v11

    throw v7
    :try_end_7d
    .catchall {:try_start_7b .. :try_end_7d} :catchall_17

    .line 547
    .restart local v0    # "currentTime":J
    .restart local v4    # "executionTime":J
    .restart local v6    # "taskFired":Z
    :cond_7d
    :try_start_7d
    iget-wide v8, v3, Ljava/util/TimerTask;->period:J
    :try_end_7f
    .catchall {:try_start_7d .. :try_end_7f} :catchall_7a

    add-long/2addr v8, v4

    goto :goto_76
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 505
    :try_start_0
    invoke-direct {p0}, Ljava/util/TimerThread;->mainLoop()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_13

    .line 508
    iget-object v1, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    monitor-enter v1

    .line 509
    const/4 v0, 0x0

    :try_start_7
    iput-boolean v0, p0, Ljava/util/TimerThread;->newTasksMayBeScheduled:Z

    .line 510
    iget-object v0, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    invoke-virtual {v0}, Ljava/util/TaskQueue;->clear()V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_10

    monitor-exit v1

    .line 513
    return-void

    .line 508
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0

    .line 506
    :catchall_13
    move-exception v0

    .line 508
    iget-object v1, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    monitor-enter v1

    .line 509
    const/4 v2, 0x0

    :try_start_18
    iput-boolean v2, p0, Ljava/util/TimerThread;->newTasksMayBeScheduled:Z

    .line 510
    iget-object v2, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    invoke-virtual {v2}, Ljava/util/TaskQueue;->clear()V
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_21

    monitor-exit v1

    .line 506
    throw v0

    .line 508
    :catchall_21
    move-exception v0

    monitor-exit v1

    throw v0
.end method
