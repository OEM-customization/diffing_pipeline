.class public Ljava/util/Timer;
.super Ljava/lang/Object;
.source "Timer.java"


# static fields
.field private static final greylist-max-o nextSerialNumber:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final greylist-max-o queue:Ljava/util/TaskQueue;
    .annotation runtime Ldalvik/annotation/optimization/ReachabilitySensitive;
    .end annotation
.end field

.field private final greylist-max-o thread:Ljava/util/TimerThread;
    .annotation runtime Ldalvik/annotation/optimization/ReachabilitySensitive;
    .end annotation
.end field

.field private final greylist-max-o threadReaper:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 129
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Ljava/util/Timer;->nextSerialNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 3

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timer-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Timer;->serialNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/util/TaskQueue;

    invoke-direct {v0}, Ljava/util/TaskQueue;-><init>()V

    iput-object v0, p0, Ljava/util/Timer;->queue:Ljava/util/TaskQueue;

    .line 107
    new-instance v1, Ljava/util/TimerThread;

    invoke-direct {v1, v0}, Ljava/util/TimerThread;-><init>(Ljava/util/TaskQueue;)V

    iput-object v1, p0, Ljava/util/Timer;->thread:Ljava/util/TimerThread;

    .line 117
    new-instance v0, Ljava/util/Timer$1;

    invoke-direct {v0, p0}, Ljava/util/Timer$1;-><init>(Ljava/util/Timer;)V

    iput-object v0, p0, Ljava/util/Timer;->threadReaper:Ljava/lang/Object;

    .line 166
    invoke-virtual {v1, p1}, Ljava/util/TimerThread;->setName(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v1}, Ljava/util/TimerThread;->start()V

    .line 168
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isDaemon"    # Z

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/util/TaskQueue;

    invoke-direct {v0}, Ljava/util/TaskQueue;-><init>()V

    iput-object v0, p0, Ljava/util/Timer;->queue:Ljava/util/TaskQueue;

    .line 107
    new-instance v1, Ljava/util/TimerThread;

    invoke-direct {v1, v0}, Ljava/util/TimerThread;-><init>(Ljava/util/TaskQueue;)V

    iput-object v1, p0, Ljava/util/Timer;->thread:Ljava/util/TimerThread;

    .line 117
    new-instance v0, Ljava/util/Timer$1;

    invoke-direct {v0, p0}, Ljava/util/Timer$1;-><init>(Ljava/util/Timer;)V

    iput-object v0, p0, Ljava/util/Timer;->threadReaper:Ljava/lang/Object;

    .line 181
    invoke-virtual {v1, p1}, Ljava/util/TimerThread;->setName(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v1, p2}, Ljava/util/TimerThread;->setDaemon(Z)V

    .line 183
    invoke-virtual {v1}, Ljava/util/TimerThread;->start()V

    .line 184
    return-void
.end method

.method public constructor whitelist test-api <init>(Z)V
    .registers 4
    .param p1, "isDaemon"    # Z

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timer-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Timer;->serialNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    .line 154
    return-void
.end method

.method static synthetic blacklist access$000(Ljava/util/Timer;)Ljava/util/TaskQueue;
    .registers 2
    .param p0, "x0"    # Ljava/util/Timer;

    .line 90
    iget-object v0, p0, Ljava/util/Timer;->queue:Ljava/util/TaskQueue;

    return-object v0
.end method

.method static synthetic blacklist access$100(Ljava/util/Timer;)Ljava/util/TimerThread;
    .registers 2
    .param p0, "x0"    # Ljava/util/Timer;

    .line 90
    iget-object v0, p0, Ljava/util/Timer;->thread:Ljava/util/TimerThread;

    return-object v0
.end method

.method private greylist-max-o sched(Ljava/util/TimerTask;JJ)V
    .registers 10
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "time"    # J
    .param p4, "period"    # J

    .line 394
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_59

    .line 399
    invoke-static {p4, p5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide v2, 0x3fffffffffffffffL    # 1.9999999999999998

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-lez v0, :cond_17

    .line 400
    shr-long/2addr p4, v1

    move-wide v2, p4

    goto :goto_18

    .line 399
    :cond_17
    move-wide v2, p4

    .line 402
    .end local p4    # "period":J
    .local v2, "period":J
    :goto_18
    iget-object v0, p0, Ljava/util/Timer;->queue:Ljava/util/TaskQueue;

    monitor-enter v0

    .line 403
    :try_start_1b
    iget-object p4, p0, Ljava/util/Timer;->thread:Ljava/util/TimerThread;

    iget-boolean p4, p4, Ljava/util/TimerThread;->newTasksMayBeScheduled:Z

    if-eqz p4, :cond_4e

    .line 406
    iget-object p4, p1, Ljava/util/TimerTask;->lock:Ljava/lang/Object;

    monitor-enter p4
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_56

    .line 407
    :try_start_24
    iget p5, p1, Ljava/util/TimerTask;->state:I

    if-nez p5, :cond_43

    .line 410
    iput-wide p2, p1, Ljava/util/TimerTask;->nextExecutionTime:J

    .line 411
    iput-wide v2, p1, Ljava/util/TimerTask;->period:J

    .line 412
    iput v1, p1, Ljava/util/TimerTask;->state:I

    .line 413
    monitor-exit p4
    :try_end_2f
    .catchall {:try_start_24 .. :try_end_2f} :catchall_4b

    .line 415
    :try_start_2f
    iget-object p4, p0, Ljava/util/Timer;->queue:Ljava/util/TaskQueue;

    invoke-virtual {p4, p1}, Ljava/util/TaskQueue;->add(Ljava/util/TimerTask;)V

    .line 416
    iget-object p4, p0, Ljava/util/Timer;->queue:Ljava/util/TaskQueue;

    invoke-virtual {p4}, Ljava/util/TaskQueue;->getMin()Ljava/util/TimerTask;

    move-result-object p4

    if-ne p4, p1, :cond_41

    .line 417
    iget-object p4, p0, Ljava/util/Timer;->queue:Ljava/util/TaskQueue;

    invoke-virtual {p4}, Ljava/lang/Object;->notify()V

    .line 418
    :cond_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_2f .. :try_end_42} :catchall_56

    .line 419
    return-void

    .line 408
    :cond_43
    :try_start_43
    new-instance p5, Ljava/lang/IllegalStateException;

    const-string v1, "Task already scheduled or cancelled"

    invoke-direct {p5, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "period":J
    .end local p0    # "this":Ljava/util/Timer;
    .end local p1    # "task":Ljava/util/TimerTask;
    .end local p2    # "time":J
    throw p5

    .line 413
    .restart local v2    # "period":J
    .restart local p0    # "this":Ljava/util/Timer;
    .restart local p1    # "task":Ljava/util/TimerTask;
    .restart local p2    # "time":J
    :catchall_4b
    move-exception p5

    monitor-exit p4
    :try_end_4d
    .catchall {:try_start_43 .. :try_end_4d} :catchall_4b

    .end local v2    # "period":J
    .end local p0    # "this":Ljava/util/Timer;
    .end local p1    # "task":Ljava/util/TimerTask;
    .end local p2    # "time":J
    :try_start_4d
    throw p5

    .line 404
    .restart local v2    # "period":J
    .restart local p0    # "this":Ljava/util/Timer;
    .restart local p1    # "task":Ljava/util/TimerTask;
    .restart local p2    # "time":J
    :cond_4e
    new-instance p4, Ljava/lang/IllegalStateException;

    const-string p5, "Timer already cancelled."

    invoke-direct {p4, p5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "period":J
    .end local p0    # "this":Ljava/util/Timer;
    .end local p1    # "task":Ljava/util/TimerTask;
    .end local p2    # "time":J
    throw p4

    .line 418
    .restart local v2    # "period":J
    .restart local p0    # "this":Ljava/util/Timer;
    .restart local p1    # "task":Ljava/util/TimerTask;
    .restart local p2    # "time":J
    :catchall_56
    move-exception p4

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_4d .. :try_end_58} :catchall_56

    throw p4

    .line 395
    .end local v2    # "period":J
    .restart local p4    # "period":J
    :cond_59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal execution time."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o serialNumber()I
    .registers 1

    .line 131
    sget-object v0, Ljava/util/Timer;->nextSerialNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method


# virtual methods
.method public whitelist test-api cancel()V
    .registers 4

    .line 436
    iget-object v0, p0, Ljava/util/Timer;->queue:Ljava/util/TaskQueue;

    monitor-enter v0

    .line 437
    :try_start_3
    iget-object v1, p0, Ljava/util/Timer;->thread:Ljava/util/TimerThread;

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljava/util/TimerThread;->newTasksMayBeScheduled:Z

    .line 438
    iget-object v1, p0, Ljava/util/Timer;->queue:Ljava/util/TaskQueue;

    invoke-virtual {v1}, Ljava/util/TaskQueue;->clear()V

    .line 439
    iget-object v1, p0, Ljava/util/Timer;->queue:Ljava/util/TaskQueue;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 440
    monitor-exit v0

    .line 441
    return-void

    .line 440
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public whitelist test-api purge()I
    .registers 6

    .line 464
    const/4 v0, 0x0

    .line 466
    .local v0, "result":I
    iget-object v1, p0, Ljava/util/Timer;->queue:Ljava/util/TaskQueue;

    monitor-enter v1

    .line 467
    :try_start_4
    iget-object v2, p0, Ljava/util/Timer;->queue:Ljava/util/TaskQueue;

    invoke-virtual {v2}, Ljava/util/TaskQueue;->size()I

    move-result v2

    .local v2, "i":I
    :goto_a
    if-lez v2, :cond_21

    .line 468
    iget-object v3, p0, Ljava/util/Timer;->queue:Ljava/util/TaskQueue;

    invoke-virtual {v3, v2}, Ljava/util/TaskQueue;->get(I)Ljava/util/TimerTask;

    move-result-object v3

    iget v3, v3, Ljava/util/TimerTask;->state:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1e

    .line 469
    iget-object v3, p0, Ljava/util/Timer;->queue:Ljava/util/TaskQueue;

    invoke-virtual {v3, v2}, Ljava/util/TaskQueue;->quickRemove(I)V

    .line 470
    add-int/lit8 v0, v0, 0x1

    .line 467
    :cond_1e
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    .line 474
    .end local v2    # "i":I
    :cond_21
    if-eqz v0, :cond_28

    .line 475
    iget-object v2, p0, Ljava/util/Timer;->queue:Ljava/util/TaskQueue;

    invoke-virtual {v2}, Ljava/util/TaskQueue;->heapify()V

    .line 476
    :cond_28
    monitor-exit v1

    .line 478
    return v0

    .line 476
    :catchall_2a
    move-exception v2

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_4 .. :try_end_2c} :catchall_2a

    throw v2
.end method

.method public whitelist test-api schedule(Ljava/util/TimerTask;J)V
    .registers 12
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "delay"    # J

    .line 198
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_14

    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long v4, v0, p2

    const-wide/16 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Ljava/util/Timer;->sched(Ljava/util/TimerTask;JJ)V

    .line 201
    return-void

    .line 199
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative delay."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api schedule(Ljava/util/TimerTask;JJ)V
    .registers 14
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "delay"    # J
    .param p4, "period"    # J

    .line 251
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_1f

    .line 253
    cmp-long v0, p4, v0

    if-lez v0, :cond_17

    .line 255
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long v4, v0, p2

    neg-long v6, p4

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Ljava/util/Timer;->sched(Ljava/util/TimerTask;JJ)V

    .line 256
    return-void

    .line 254
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-positive period."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative delay."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api schedule(Ljava/util/TimerTask;Ljava/util/Date;)V
    .registers 9
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "time"    # Ljava/util/Date;

    .line 215
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/Timer;->sched(Ljava/util/TimerTask;JJ)V

    .line 216
    return-void
.end method

.method public whitelist test-api schedule(Ljava/util/TimerTask;Ljava/util/Date;J)V
    .registers 12
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "firstTime"    # Ljava/util/Date;
    .param p3, "period"    # J

    .line 292
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_11

    .line 294
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    neg-long v5, p3

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Ljava/util/Timer;->sched(Ljava/util/TimerTask;JJ)V

    .line 295
    return-void

    .line 293
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-positive period."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    .registers 14
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "delay"    # J
    .param p4, "period"    # J

    .line 331
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_1f

    .line 333
    cmp-long v0, p4, v0

    if-lez v0, :cond_17

    .line 335
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long v4, v0, p2

    move-object v2, p0

    move-object v3, p1

    move-wide v6, p4

    invoke-direct/range {v2 .. v7}, Ljava/util/Timer;->sched(Ljava/util/TimerTask;JJ)V

    .line 336
    return-void

    .line 334
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-positive period."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative delay."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api scheduleAtFixedRate(Ljava/util/TimerTask;Ljava/util/Date;J)V
    .registers 12
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "firstTime"    # Ljava/util/Date;
    .param p3, "period"    # J

    .line 375
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_11

    .line 377
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    move-object v1, p0

    move-object v2, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Ljava/util/Timer;->sched(Ljava/util/TimerTask;JJ)V

    .line 378
    return-void

    .line 376
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-positive period."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
