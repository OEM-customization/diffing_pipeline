.class Ljava/util/TimerThread;
.super Ljava/lang/Thread;
.source "Timer.java"


# instance fields
.field greylist-max-o newTasksMayBeScheduled:Z

.field private greylist-max-o queue:Ljava/util/TaskQueue;


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/TaskQueue;)V
    .registers 3
    .param p1, "queue"    # Ljava/util/TaskQueue;

    .line 506
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 496
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/TimerThread;->newTasksMayBeScheduled:Z

    .line 507
    iput-object p1, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    .line 508
    return-void
.end method

.method private greylist-max-o mainLoop()V
    .registers 14

    .line 530
    :goto_0
    :try_start_0
    iget-object v0, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_80

    .line 532
    :goto_3
    :try_start_3
    iget-object v1, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    invoke-virtual {v1}, Ljava/util/TaskQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-boolean v1, p0, Ljava/util/TimerThread;->newTasksMayBeScheduled:Z

    if-eqz v1, :cond_15

    .line 533
    iget-object v1, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_3

    .line 534
    :cond_15
    iget-object v1, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    invoke-virtual {v1}, Ljava/util/TaskQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 535
    monitor-exit v0

    .line 566
    return-void

    .line 539
    :cond_1f
    iget-object v1, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    invoke-virtual {v1}, Ljava/util/TaskQueue;->getMin()Ljava/util/TimerTask;

    move-result-object v1

    .line 540
    .local v1, "task":Ljava/util/TimerTask;
    iget-object v2, v1, Ljava/util/TimerTask;->lock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_7d

    .line 541
    :try_start_28
    iget v3, v1, Ljava/util/TimerTask;->state:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_35

    .line 542
    iget-object v3, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    invoke-virtual {v3}, Ljava/util/TaskQueue;->removeMin()V

    .line 543
    monitor-exit v2
    :try_end_33
    .catchall {:try_start_28 .. :try_end_33} :catchall_7a

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_7d

    goto :goto_0

    .line 545
    :cond_35
    :try_start_35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 546
    .local v3, "currentTime":J
    iget-wide v5, v1, Ljava/util/TimerTask;->nextExecutionTime:J

    .line 547
    .local v5, "executionTime":J
    cmp-long v7, v5, v3

    if-gtz v7, :cond_41

    const/4 v7, 0x1

    goto :goto_42

    :cond_41
    const/4 v7, 0x0

    :goto_42
    move v8, v7

    .local v8, "taskFired":Z
    if-eqz v7, :cond_69

    .line 548
    iget-wide v9, v1, Ljava/util/TimerTask;->period:J

    const-wide/16 v11, 0x0

    cmp-long v7, v9, v11

    if-nez v7, :cond_56

    .line 549
    iget-object v7, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    invoke-virtual {v7}, Ljava/util/TaskQueue;->removeMin()V

    .line 550
    const/4 v7, 0x2

    iput v7, v1, Ljava/util/TimerTask;->state:I

    goto :goto_69

    .line 552
    :cond_56
    iget-object v7, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    .line 553
    iget-wide v9, v1, Ljava/util/TimerTask;->period:J

    cmp-long v9, v9, v11

    if-gez v9, :cond_63

    iget-wide v9, v1, Ljava/util/TimerTask;->period:J

    sub-long v9, v3, v9

    goto :goto_66

    .line 554
    :cond_63
    iget-wide v9, v1, Ljava/util/TimerTask;->period:J

    add-long/2addr v9, v5

    .line 552
    :goto_66
    invoke-virtual {v7, v9, v10}, Ljava/util/TaskQueue;->rescheduleMin(J)V

    .line 557
    :cond_69
    :goto_69
    monitor-exit v2
    :try_end_6a
    .catchall {:try_start_35 .. :try_end_6a} :catchall_7a

    .line 558
    if-nez v8, :cond_73

    .line 559
    :try_start_6c
    iget-object v2, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    sub-long v9, v5, v3

    invoke-virtual {v2, v9, v10}, Ljava/lang/Object;->wait(J)V

    .line 560
    .end local v3    # "currentTime":J
    .end local v5    # "executionTime":J
    :cond_73
    monitor-exit v0
    :try_end_74
    .catchall {:try_start_6c .. :try_end_74} :catchall_7d

    .line 561
    if-eqz v8, :cond_81

    .line 562
    :try_start_76
    invoke-virtual {v1}, Ljava/util/TimerTask;->run()V
    :try_end_79
    .catch Ljava/lang/InterruptedException; {:try_start_76 .. :try_end_79} :catch_80

    goto :goto_81

    .line 557
    .end local v8    # "taskFired":Z
    :catchall_7a
    move-exception v3

    :try_start_7b
    monitor-exit v2
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7a

    .end local p0    # "this":Ljava/util/TimerThread;
    :try_start_7c
    throw v3

    .line 560
    .end local v1    # "task":Ljava/util/TimerTask;
    .restart local p0    # "this":Ljava/util/TimerThread;
    :catchall_7d
    move-exception v1

    monitor-exit v0
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_7d

    .end local p0    # "this":Ljava/util/TimerThread;
    :try_start_7f
    throw v1
    :try_end_80
    .catch Ljava/lang/InterruptedException; {:try_start_7f .. :try_end_80} :catch_80

    .line 563
    .restart local p0    # "this":Ljava/util/TimerThread;
    :catch_80
    move-exception v0

    .line 564
    :cond_81
    :goto_81
    goto/16 :goto_0
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 512
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Ljava/util/TimerThread;->mainLoop()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_14

    .line 515
    iget-object v1, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    monitor-enter v1

    .line 516
    :try_start_7
    iput-boolean v0, p0, Ljava/util/TimerThread;->newTasksMayBeScheduled:Z

    .line 517
    iget-object v0, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    invoke-virtual {v0}, Ljava/util/TaskQueue;->clear()V

    .line 518
    monitor-exit v1

    .line 519
    nop

    .line 520
    return-void

    .line 518
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_11

    throw v0

    .line 515
    :catchall_14
    move-exception v1

    iget-object v2, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    monitor-enter v2

    .line 516
    :try_start_18
    iput-boolean v0, p0, Ljava/util/TimerThread;->newTasksMayBeScheduled:Z

    .line 517
    iget-object v0, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    invoke-virtual {v0}, Ljava/util/TaskQueue;->clear()V

    .line 518
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_21

    .line 519
    throw v1

    .line 518
    :catchall_21
    move-exception v0

    :try_start_22
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v0
.end method
