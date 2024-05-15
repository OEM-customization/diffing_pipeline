.class public Ljava/util/concurrent/CyclicBarrier;
.super Ljava/lang/Object;
.source "CyclicBarrier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/CyclicBarrier$Generation;
    }
.end annotation


# instance fields
.field private final greylist-max-o barrierCommand:Ljava/lang/Runnable;

.field private greylist-max-o count:I

.field private greylist-max-o generation:Ljava/util/concurrent/CyclicBarrier$Generation;

.field private final greylist-max-o lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final greylist-max-o parties:I

.field private final greylist-max-o trip:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public constructor whitelist core-platform-api test-api <init>(I)V
    .registers 3
    .param p1, "parties"    # I

    .line 295
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/CyclicBarrier;-><init>(ILjava/lang/Runnable;)V

    .line 296
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(ILjava/lang/Runnable;)V
    .registers 5
    .param p1, "parties"    # I
    .param p2, "barrierAction"    # Ljava/lang/Runnable;

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 159
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->trip:Ljava/util/concurrent/locks/Condition;

    .line 165
    new-instance v0, Ljava/util/concurrent/CyclicBarrier$Generation;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/CyclicBarrier$Generation;-><init>(Ljava/util/concurrent/CyclicBarrier$1;)V

    iput-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->generation:Ljava/util/concurrent/CyclicBarrier$Generation;

    .line 279
    if-lez p1, :cond_21

    .line 280
    iput p1, p0, Ljava/util/concurrent/CyclicBarrier;->parties:I

    .line 281
    iput p1, p0, Ljava/util/concurrent/CyclicBarrier;->count:I

    .line 282
    iput-object p2, p0, Ljava/util/concurrent/CyclicBarrier;->barrierCommand:Ljava/lang/Runnable;

    .line 283
    return-void

    .line 279
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private greylist-max-o breakBarrier()V
    .registers 3

    .line 191
    iget-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->generation:Ljava/util/concurrent/CyclicBarrier$Generation;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ljava/util/concurrent/CyclicBarrier$Generation;->broken:Z

    .line 192
    iget v0, p0, Ljava/util/concurrent/CyclicBarrier;->parties:I

    iput v0, p0, Ljava/util/concurrent/CyclicBarrier;->count:I

    .line 193
    iget-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->trip:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 194
    return-void
.end method

.method private greylist-max-o dowait(ZJ)I
    .registers 11
    .param p1, "timed"    # Z
    .param p2, "nanos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/BrokenBarrierException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 203
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 205
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/CyclicBarrier;->generation:Ljava/util/concurrent/CyclicBarrier$Generation;

    .line 207
    .local v1, "g":Ljava/util/concurrent/CyclicBarrier$Generation;
    iget-boolean v2, v1, Ljava/util/concurrent/CyclicBarrier$Generation;->broken:Z

    if-nez v2, :cond_92

    .line 210
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_89

    .line 215
    iget v2, p0, Ljava/util/concurrent/CyclicBarrier;->count:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljava/util/concurrent/CyclicBarrier;->count:I
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_98

    .line 216
    .local v2, "index":I
    if-nez v2, :cond_37

    .line 217
    const/4 v3, 0x0

    .line 219
    .local v3, "ranAction":Z
    :try_start_1a
    iget-object v4, p0, Ljava/util/concurrent/CyclicBarrier;->barrierCommand:Ljava/lang/Runnable;

    .line 220
    .local v4, "command":Ljava/lang/Runnable;
    if-eqz v4, :cond_21

    .line 221
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 222
    :cond_21
    const/4 v3, 0x1

    .line 223
    invoke-direct {p0}, Ljava/util/concurrent/CyclicBarrier;->nextGeneration()V
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_2f

    .line 224
    const/4 v5, 0x0

    .line 226
    if-nez v3, :cond_2b

    .line 227
    :try_start_28
    invoke-direct {p0}, Ljava/util/concurrent/CyclicBarrier;->breakBarrier()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_98

    .line 262
    :cond_2b
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 224
    return v5

    .line 226
    .end local v4    # "command":Ljava/lang/Runnable;
    :catchall_2f
    move-exception v4

    if-nez v3, :cond_35

    .line 227
    :try_start_32
    invoke-direct {p0}, Ljava/util/concurrent/CyclicBarrier;->breakBarrier()V

    .line 228
    :cond_35
    nop

    .end local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local p0    # "this":Ljava/util/concurrent/CyclicBarrier;
    .end local p1    # "timed":Z
    .end local p2    # "nanos":J
    throw v4
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_98

    .line 234
    .end local v3    # "ranAction":Z
    .restart local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local p0    # "this":Ljava/util/concurrent/CyclicBarrier;
    .restart local p1    # "timed":Z
    .restart local p2    # "nanos":J
    :cond_37
    :goto_37
    const-wide/16 v3, 0x0

    if-nez p1, :cond_43

    .line 235
    :try_start_3b
    iget-object v5, p0, Ljava/util/concurrent/CyclicBarrier;->trip:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->await()V

    goto :goto_65

    .line 238
    :catch_41
    move-exception v5

    goto :goto_4f

    .line 236
    :cond_43
    cmp-long v5, p2, v3

    if-lez v5, :cond_65

    .line 237
    iget-object v5, p0, Ljava/util/concurrent/CyclicBarrier;->trip:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5, p2, p3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v5
    :try_end_4d
    .catch Ljava/lang/InterruptedException; {:try_start_3b .. :try_end_4d} :catch_41
    .catchall {:try_start_3b .. :try_end_4d} :catchall_98

    move-wide p2, v5

    goto :goto_65

    .line 239
    .local v5, "ie":Ljava/lang/InterruptedException;
    :goto_4f
    :try_start_4f
    iget-object v6, p0, Ljava/util/concurrent/CyclicBarrier;->generation:Ljava/util/concurrent/CyclicBarrier$Generation;

    if-ne v1, v6, :cond_5d

    iget-boolean v6, v1, Ljava/util/concurrent/CyclicBarrier$Generation;->broken:Z

    if-eqz v6, :cond_58

    goto :goto_5d

    .line 240
    :cond_58
    invoke-direct {p0}, Ljava/util/concurrent/CyclicBarrier;->breakBarrier()V

    .line 241
    nop

    .end local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local p0    # "this":Ljava/util/concurrent/CyclicBarrier;
    .end local p1    # "timed":Z
    .end local p2    # "nanos":J
    throw v5

    .line 246
    .restart local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local p0    # "this":Ljava/util/concurrent/CyclicBarrier;
    .restart local p1    # "timed":Z
    .restart local p2    # "nanos":J
    :cond_5d
    :goto_5d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    goto :goto_66

    .line 248
    .end local v5    # "ie":Ljava/lang/InterruptedException;
    :cond_65
    :goto_65
    nop

    .line 250
    :goto_66
    iget-boolean v5, v1, Ljava/util/concurrent/CyclicBarrier$Generation;->broken:Z

    if-nez v5, :cond_83

    .line 253
    iget-object v5, p0, Ljava/util/concurrent/CyclicBarrier;->generation:Ljava/util/concurrent/CyclicBarrier$Generation;
    :try_end_6c
    .catchall {:try_start_4f .. :try_end_6c} :catchall_98

    if-eq v1, v5, :cond_73

    .line 254
    nop

    .line 262
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 254
    return v2

    .line 256
    :cond_73
    if-eqz p1, :cond_37

    cmp-long v3, p2, v3

    if-lez v3, :cond_7a

    goto :goto_37

    .line 257
    :cond_7a
    :try_start_7a
    invoke-direct {p0}, Ljava/util/concurrent/CyclicBarrier;->breakBarrier()V

    .line 258
    new-instance v3, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v3}, Ljava/util/concurrent/TimeoutException;-><init>()V

    .end local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local p0    # "this":Ljava/util/concurrent/CyclicBarrier;
    .end local p1    # "timed":Z
    .end local p2    # "nanos":J
    throw v3

    .line 251
    .restart local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local p0    # "this":Ljava/util/concurrent/CyclicBarrier;
    .restart local p1    # "timed":Z
    .restart local p2    # "nanos":J
    :cond_83
    new-instance v3, Ljava/util/concurrent/BrokenBarrierException;

    invoke-direct {v3}, Ljava/util/concurrent/BrokenBarrierException;-><init>()V

    .end local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local p0    # "this":Ljava/util/concurrent/CyclicBarrier;
    .end local p1    # "timed":Z
    .end local p2    # "nanos":J
    throw v3

    .line 211
    .end local v2    # "index":I
    .restart local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local p0    # "this":Ljava/util/concurrent/CyclicBarrier;
    .restart local p1    # "timed":Z
    .restart local p2    # "nanos":J
    :cond_89
    invoke-direct {p0}, Ljava/util/concurrent/CyclicBarrier;->breakBarrier()V

    .line 212
    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    .end local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local p0    # "this":Ljava/util/concurrent/CyclicBarrier;
    .end local p1    # "timed":Z
    .end local p2    # "nanos":J
    throw v2

    .line 208
    .restart local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local p0    # "this":Ljava/util/concurrent/CyclicBarrier;
    .restart local p1    # "timed":Z
    .restart local p2    # "nanos":J
    :cond_92
    new-instance v2, Ljava/util/concurrent/BrokenBarrierException;

    invoke-direct {v2}, Ljava/util/concurrent/BrokenBarrierException;-><init>()V

    .end local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local p0    # "this":Ljava/util/concurrent/CyclicBarrier;
    .end local p1    # "timed":Z
    .end local p2    # "nanos":J
    throw v2
    :try_end_98
    .catchall {:try_start_7a .. :try_end_98} :catchall_98

    .line 262
    .end local v1    # "g":Ljava/util/concurrent/CyclicBarrier$Generation;
    .restart local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local p0    # "this":Ljava/util/concurrent/CyclicBarrier;
    .restart local p1    # "timed":Z
    .restart local p2    # "nanos":J
    :catchall_98
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 263
    throw v1
.end method

.method private greylist-max-o nextGeneration()V
    .registers 3

    .line 180
    iget-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->trip:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 182
    iget v0, p0, Ljava/util/concurrent/CyclicBarrier;->parties:I

    iput v0, p0, Ljava/util/concurrent/CyclicBarrier;->count:I

    .line 183
    new-instance v0, Ljava/util/concurrent/CyclicBarrier$Generation;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/CyclicBarrier$Generation;-><init>(Ljava/util/concurrent/CyclicBarrier$1;)V

    iput-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->generation:Ljava/util/concurrent/CyclicBarrier$Generation;

    .line 184
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api await()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/BrokenBarrierException;
        }
    .end annotation

    .line 363
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :try_start_3
    invoke-direct {p0, v0, v1, v2}, Ljava/util/concurrent/CyclicBarrier;->dowait(ZJ)I

    move-result v0
    :try_end_7
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_7} :catch_8

    return v0

    .line 364
    :catch_8
    move-exception v0

    .line 365
    .local v0, "toe":Ljava/util/concurrent/TimeoutException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist core-platform-api test-api await(JLjava/util/concurrent/TimeUnit;)I
    .registers 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/BrokenBarrierException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 436
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Ljava/util/concurrent/CyclicBarrier;->dowait(ZJ)I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api getNumberWaiting()I
    .registers 4

    .line 484
    iget-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 485
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 487
    :try_start_5
    iget v1, p0, Ljava/util/concurrent/CyclicBarrier;->parties:I

    iget v2, p0, Ljava/util/concurrent/CyclicBarrier;->count:I
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_e

    sub-int/2addr v1, v2

    .line 489
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 487
    return v1

    .line 489
    :catchall_e
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 490
    throw v1
.end method

.method public whitelist core-platform-api test-api getParties()I
    .registers 2

    .line 304
    iget v0, p0, Ljava/util/concurrent/CyclicBarrier;->parties:I

    return v0
.end method

.method public whitelist core-platform-api test-api isBroken()Z
    .registers 3

    .line 448
    iget-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 449
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 451
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/CyclicBarrier;->generation:Ljava/util/concurrent/CyclicBarrier$Generation;

    iget-boolean v1, v1, Ljava/util/concurrent/CyclicBarrier$Generation;->broken:Z
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    .line 453
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 451
    return v1

    .line 453
    :catchall_d
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 454
    throw v1
.end method

.method public whitelist core-platform-api test-api reset()V
    .registers 3

    .line 467
    iget-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 468
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 470
    :try_start_5
    invoke-direct {p0}, Ljava/util/concurrent/CyclicBarrier;->breakBarrier()V

    .line 471
    invoke-direct {p0}, Ljava/util/concurrent/CyclicBarrier;->nextGeneration()V
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_10

    .line 473
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 474
    nop

    .line 475
    return-void

    .line 473
    :catchall_10
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 474
    throw v1
.end method
