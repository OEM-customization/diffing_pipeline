.class public Lcom/android/okhttp/okio/AsyncTimeout;
.super Lcom/android/okhttp/okio/Timeout;
.source "AsyncTimeout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/okio/AsyncTimeout$Watchdog;
    }
.end annotation


# static fields
.field private static head:Lcom/android/okhttp/okio/AsyncTimeout;


# instance fields
.field private inQueue:Z

.field private next:Lcom/android/okhttp/okio/AsyncTimeout;

.field private timeoutAt:J


# direct methods
.method static synthetic -wrap0()Lcom/android/okhttp/okio/AsyncTimeout;
    .registers 1

    invoke-static {}, Lcom/android/okhttp/okio/AsyncTimeout;->awaitTimeout()Lcom/android/okhttp/okio/AsyncTimeout;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/okhttp/okio/Timeout;-><init>()V

    return-void
.end method

.method private static declared-synchronized awaitTimeout()Lcom/android/okhttp/okio/AsyncTimeout;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/32 v12, 0xf4240

    const/4 v10, 0x0

    const-class v6, Lcom/android/okhttp/okio/AsyncTimeout;

    monitor-enter v6

    .line 307
    :try_start_7
    sget-object v1, Lcom/android/okhttp/okio/AsyncTimeout;->head:Lcom/android/okhttp/okio/AsyncTimeout;

    iget-object v0, v1, Lcom/android/okhttp/okio/AsyncTimeout;->next:Lcom/android/okhttp/okio/AsyncTimeout;

    .line 310
    .local v0, "node":Lcom/android/okhttp/okio/AsyncTimeout;
    if-nez v0, :cond_14

    .line 311
    const-class v1, Lcom/android/okhttp/okio/AsyncTimeout;

    invoke-virtual {v1}, Ljava/lang/Class;->wait()V
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_3d

    monitor-exit v6

    .line 312
    return-object v10

    .line 315
    :cond_14
    :try_start_14
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    invoke-direct {v0, v8, v9}, Lcom/android/okhttp/okio/AsyncTimeout;->remainingNanos(J)J

    move-result-wide v4

    .line 318
    .local v4, "waitNanos":J
    const-wide/16 v8, 0x0

    cmp-long v1, v4, v8

    if-lez v1, :cond_32

    .line 321
    const-wide/32 v8, 0xf4240

    div-long v2, v4, v8

    .line 322
    .local v2, "waitMillis":J
    mul-long v8, v2, v12

    sub-long/2addr v4, v8

    .line 323
    const-class v1, Lcom/android/okhttp/okio/AsyncTimeout;

    long-to-int v7, v4

    invoke-virtual {v1, v2, v3, v7}, Ljava/lang/Class;->wait(JI)V
    :try_end_30
    .catchall {:try_start_14 .. :try_end_30} :catchall_3d

    monitor-exit v6

    .line 324
    return-object v10

    .line 328
    .end local v2    # "waitMillis":J
    :cond_32
    :try_start_32
    sget-object v1, Lcom/android/okhttp/okio/AsyncTimeout;->head:Lcom/android/okhttp/okio/AsyncTimeout;

    iget-object v7, v0, Lcom/android/okhttp/okio/AsyncTimeout;->next:Lcom/android/okhttp/okio/AsyncTimeout;

    iput-object v7, v1, Lcom/android/okhttp/okio/AsyncTimeout;->next:Lcom/android/okhttp/okio/AsyncTimeout;

    .line 329
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/okhttp/okio/AsyncTimeout;->next:Lcom/android/okhttp/okio/AsyncTimeout;
    :try_end_3b
    .catchall {:try_start_32 .. :try_end_3b} :catchall_3d

    monitor-exit v6

    .line 330
    return-object v0

    .end local v4    # "waitNanos":J
    :catchall_3d
    move-exception v1

    monitor-exit v6

    throw v1
.end method

.method private static declared-synchronized cancelScheduledTimeout(Lcom/android/okhttp/okio/AsyncTimeout;)Z
    .registers 4
    .param p0, "node"    # Lcom/android/okhttp/okio/AsyncTimeout;

    .prologue
    const-class v2, Lcom/android/okhttp/okio/AsyncTimeout;

    monitor-enter v2

    .line 117
    :try_start_3
    sget-object v0, Lcom/android/okhttp/okio/AsyncTimeout;->head:Lcom/android/okhttp/okio/AsyncTimeout;

    .local v0, "prev":Lcom/android/okhttp/okio/AsyncTimeout;
    :goto_5
    if-eqz v0, :cond_18

    .line 118
    iget-object v1, v0, Lcom/android/okhttp/okio/AsyncTimeout;->next:Lcom/android/okhttp/okio/AsyncTimeout;

    if-ne v1, p0, :cond_15

    .line 119
    iget-object v1, p0, Lcom/android/okhttp/okio/AsyncTimeout;->next:Lcom/android/okhttp/okio/AsyncTimeout;

    iput-object v1, v0, Lcom/android/okhttp/okio/AsyncTimeout;->next:Lcom/android/okhttp/okio/AsyncTimeout;

    .line 120
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/okhttp/okio/AsyncTimeout;->next:Lcom/android/okhttp/okio/AsyncTimeout;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1b

    .line 121
    const/4 v1, 0x0

    monitor-exit v2

    return v1

    .line 117
    :cond_15
    :try_start_15
    iget-object v0, v0, Lcom/android/okhttp/okio/AsyncTimeout;->next:Lcom/android/okhttp/okio/AsyncTimeout;
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_1b

    goto :goto_5

    .line 126
    :cond_18
    const/4 v1, 0x1

    monitor-exit v2

    return v1

    .end local v0    # "prev":Lcom/android/okhttp/okio/AsyncTimeout;
    :catchall_1b
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private remainingNanos(J)J
    .registers 6
    .param p1, "now"    # J

    .prologue
    .line 134
    iget-wide v0, p0, Lcom/android/okhttp/okio/AsyncTimeout;->timeoutAt:J

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method private static declared-synchronized scheduleTimeout(Lcom/android/okhttp/okio/AsyncTimeout;JZ)V
    .registers 15
    .param p0, "node"    # Lcom/android/okhttp/okio/AsyncTimeout;
    .param p1, "timeoutNanos"    # J
    .param p3, "hasDeadline"    # Z

    .prologue
    const-wide/16 v8, 0x0

    const-class v6, Lcom/android/okhttp/okio/AsyncTimeout;

    monitor-enter v6

    .line 75
    :try_start_5
    sget-object v3, Lcom/android/okhttp/okio/AsyncTimeout;->head:Lcom/android/okhttp/okio/AsyncTimeout;

    if-nez v3, :cond_18

    .line 76
    new-instance v3, Lcom/android/okhttp/okio/AsyncTimeout;

    invoke-direct {v3}, Lcom/android/okhttp/okio/AsyncTimeout;-><init>()V

    sput-object v3, Lcom/android/okhttp/okio/AsyncTimeout;->head:Lcom/android/okhttp/okio/AsyncTimeout;

    .line 77
    new-instance v3, Lcom/android/okhttp/okio/AsyncTimeout$Watchdog;

    invoke-direct {v3}, Lcom/android/okhttp/okio/AsyncTimeout$Watchdog;-><init>()V

    invoke-virtual {v3}, Lcom/android/okhttp/okio/AsyncTimeout$Watchdog;->start()V

    .line 80
    :cond_18
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 81
    .local v0, "now":J
    cmp-long v3, p1, v8

    if-eqz v3, :cond_53

    if-eqz p3, :cond_53

    .line 84
    invoke-virtual {p0}, Lcom/android/okhttp/okio/AsyncTimeout;->deadlineNanoTime()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-static {p1, p2, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    add-long/2addr v8, v0

    iput-wide v8, p0, Lcom/android/okhttp/okio/AsyncTimeout;->timeoutAt:J

    .line 94
    :goto_2e
    invoke-direct {p0, v0, v1}, Lcom/android/okhttp/okio/AsyncTimeout;->remainingNanos(J)J

    move-result-wide v4

    .line 95
    .local v4, "remainingNanos":J
    sget-object v2, Lcom/android/okhttp/okio/AsyncTimeout;->head:Lcom/android/okhttp/okio/AsyncTimeout;

    .line 96
    .local v2, "prev":Lcom/android/okhttp/okio/AsyncTimeout;
    :goto_34
    iget-object v3, v2, Lcom/android/okhttp/okio/AsyncTimeout;->next:Lcom/android/okhttp/okio/AsyncTimeout;

    if-eqz v3, :cond_42

    iget-object v3, v2, Lcom/android/okhttp/okio/AsyncTimeout;->next:Lcom/android/okhttp/okio/AsyncTimeout;

    invoke-direct {v3, v0, v1}, Lcom/android/okhttp/okio/AsyncTimeout;->remainingNanos(J)J

    move-result-wide v8

    cmp-long v3, v4, v8

    if-gez v3, :cond_6e

    .line 97
    :cond_42
    iget-object v3, v2, Lcom/android/okhttp/okio/AsyncTimeout;->next:Lcom/android/okhttp/okio/AsyncTimeout;

    iput-object v3, p0, Lcom/android/okhttp/okio/AsyncTimeout;->next:Lcom/android/okhttp/okio/AsyncTimeout;

    .line 98
    iput-object p0, v2, Lcom/android/okhttp/okio/AsyncTimeout;->next:Lcom/android/okhttp/okio/AsyncTimeout;

    .line 99
    sget-object v3, Lcom/android/okhttp/okio/AsyncTimeout;->head:Lcom/android/okhttp/okio/AsyncTimeout;

    if-ne v2, v3, :cond_51

    .line 100
    const-class v3, Lcom/android/okhttp/okio/AsyncTimeout;

    invoke-virtual {v3}, Ljava/lang/Class;->notify()V
    :try_end_51
    .catchall {:try_start_5 .. :try_end_51} :catchall_5c

    :cond_51
    monitor-exit v6

    .line 105
    return-void

    .line 85
    .end local v2    # "prev":Lcom/android/okhttp/okio/AsyncTimeout;
    .end local v4    # "remainingNanos":J
    :cond_53
    cmp-long v3, p1, v8

    if-eqz v3, :cond_5f

    .line 86
    add-long v8, v0, p1

    :try_start_59
    iput-wide v8, p0, Lcom/android/okhttp/okio/AsyncTimeout;->timeoutAt:J
    :try_end_5b
    .catchall {:try_start_59 .. :try_end_5b} :catchall_5c

    goto :goto_2e

    .end local v0    # "now":J
    :catchall_5c
    move-exception v3

    monitor-exit v6

    throw v3

    .line 87
    .restart local v0    # "now":J
    :cond_5f
    if-eqz p3, :cond_68

    .line 88
    :try_start_61
    invoke-virtual {p0}, Lcom/android/okhttp/okio/AsyncTimeout;->deadlineNanoTime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/okhttp/okio/AsyncTimeout;->timeoutAt:J

    goto :goto_2e

    .line 90
    :cond_68
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 95
    .restart local v2    # "prev":Lcom/android/okhttp/okio/AsyncTimeout;
    .restart local v4    # "remainingNanos":J
    :cond_6e
    iget-object v2, v2, Lcom/android/okhttp/okio/AsyncTimeout;->next:Lcom/android/okhttp/okio/AsyncTimeout;
    :try_end_70
    .catchall {:try_start_61 .. :try_end_70} :catchall_5c

    goto :goto_34
.end method


# virtual methods
.method public final enter()V
    .registers 7

    .prologue
    .line 62
    iget-boolean v1, p0, Lcom/android/okhttp/okio/AsyncTimeout;->inQueue:Z

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Unbalanced enter/exit"

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    :cond_d
    invoke-virtual {p0}, Lcom/android/okhttp/okio/AsyncTimeout;->timeoutNanos()J

    move-result-wide v2

    .line 64
    .local v2, "timeoutNanos":J
    invoke-virtual {p0}, Lcom/android/okhttp/okio/AsyncTimeout;->hasDeadline()Z

    move-result v0

    .line 65
    .local v0, "hasDeadline":Z
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_20

    xor-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_20

    .line 66
    return-void

    .line 68
    :cond_20
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/okhttp/okio/AsyncTimeout;->inQueue:Z

    .line 69
    invoke-static {p0, v2, v3, v0}, Lcom/android/okhttp/okio/AsyncTimeout;->scheduleTimeout(Lcom/android/okhttp/okio/AsyncTimeout;JZ)V

    .line 70
    return-void
.end method

.method final exit(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 3
    .param p1, "cause"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/android/okhttp/okio/AsyncTimeout;->exit()Z

    move-result v0

    if-nez v0, :cond_7

    return-object p1

    .line 261
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/okhttp/okio/AsyncTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    return-object v0
.end method

.method final exit(Z)V
    .registers 4
    .param p1, "throwOnTimeout"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/android/okhttp/okio/AsyncTimeout;->exit()Z

    move-result v0

    .line 250
    .local v0, "timedOut":Z
    if-eqz v0, :cond_e

    if-eqz p1, :cond_e

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/okhttp/okio/AsyncTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 251
    :cond_e
    return-void
.end method

.method public final exit()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 109
    iget-boolean v0, p0, Lcom/android/okhttp/okio/AsyncTimeout;->inQueue:Z

    if-nez v0, :cond_6

    return v1

    .line 110
    :cond_6
    iput-boolean v1, p0, Lcom/android/okhttp/okio/AsyncTimeout;->inQueue:Z

    .line 111
    invoke-static {p0}, Lcom/android/okhttp/okio/AsyncTimeout;->cancelScheduledTimeout(Lcom/android/okhttp/okio/AsyncTimeout;)Z

    move-result v0

    return v0
.end method

.method protected newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 4
    .param p1, "cause"    # Ljava/io/IOException;

    .prologue
    .line 270
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string/jumbo v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 271
    .local v0, "e":Ljava/io/InterruptedIOException;
    if-eqz p1, :cond_d

    .line 272
    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 274
    :cond_d
    return-object v0
.end method

.method public final sink(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/Sink;
    .registers 3
    .param p1, "sink"    # Lcom/android/okhttp/okio/Sink;

    .prologue
    .line 150
    new-instance v0, Lcom/android/okhttp/okio/AsyncTimeout$1;

    invoke-direct {v0, p0, p1}, Lcom/android/okhttp/okio/AsyncTimeout$1;-><init>(Lcom/android/okhttp/okio/AsyncTimeout;Lcom/android/okhttp/okio/Sink;)V

    return-object v0
.end method

.method public final source(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/Source;
    .registers 3
    .param p1, "source"    # Lcom/android/okhttp/okio/Source;

    .prologue
    .line 206
    new-instance v0, Lcom/android/okhttp/okio/AsyncTimeout$2;

    invoke-direct {v0, p0, p1}, Lcom/android/okhttp/okio/AsyncTimeout$2;-><init>(Lcom/android/okhttp/okio/AsyncTimeout;Lcom/android/okhttp/okio/Source;)V

    return-object v0
.end method

.method protected timedOut()V
    .registers 1

    .prologue
    .line 142
    return-void
.end method
