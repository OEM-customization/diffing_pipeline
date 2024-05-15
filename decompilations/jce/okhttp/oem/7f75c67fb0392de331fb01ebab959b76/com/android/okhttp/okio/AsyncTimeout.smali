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
.field private static greylist-max-o head:Lcom/android/okhttp/okio/AsyncTimeout;


# instance fields
.field private greylist-max-o inQueue:Z

.field private greylist-max-o next:Lcom/android/okhttp/okio/AsyncTimeout;

.field private greylist-max-o timeoutAt:J


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Lcom/android/okhttp/okio/Timeout;-><init>()V

    return-void
.end method

.method static synthetic blacklist access$000()Lcom/android/okhttp/okio/AsyncTimeout;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 42
    invoke-static {}, Lcom/android/okhttp/okio/AsyncTimeout;->awaitTimeout()Lcom/android/okhttp/okio/AsyncTimeout;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized greylist-max-o awaitTimeout()Lcom/android/okhttp/okio/AsyncTimeout;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-class v0, Lcom/android/okhttp/okio/AsyncTimeout;

    monitor-enter v0

    .line 309
    :try_start_3
    sget-object v1, Lcom/android/okhttp/okio/AsyncTimeout;->head:Lcom/android/okhttp/okio/AsyncTimeout;

    iget-object v1, v1, Lcom/android/okhttp/okio/AsyncTimeout;->next:Lcom/android/okhttp/okio/AsyncTimeout;

    .line 312
    .local v1, "node":Lcom/android/okhttp/okio/AsyncTimeout;
    const/4 v2, 0x0

    if-nez v1, :cond_f

    .line 313
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_34

    .line 314
    monitor-exit v0

    return-object v2

    .line 317
    :cond_f
    :try_start_f
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Lcom/android/okhttp/okio/AsyncTimeout;->remainingNanos(J)J

    move-result-wide v3

    .line 320
    .local v3, "waitNanos":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_2a

    .line 323
    const-wide/32 v5, 0xf4240

    div-long v7, v3, v5

    .line 324
    .local v7, "waitMillis":J
    mul-long/2addr v5, v7

    sub-long/2addr v3, v5

    .line 325
    long-to-int v5, v3

    invoke-virtual {v0, v7, v8, v5}, Ljava/lang/Object;->wait(JI)V
    :try_end_28
    .catchall {:try_start_f .. :try_end_28} :catchall_34

    .line 326
    monitor-exit v0

    return-object v2

    .line 330
    .end local v7    # "waitMillis":J
    :cond_2a
    :try_start_2a
    sget-object v5, Lcom/android/okhttp/okio/AsyncTimeout;->head:Lcom/android/okhttp/okio/AsyncTimeout;

    iget-object v6, v1, Lcom/android/okhttp/okio/AsyncTimeout;->next:Lcom/android/okhttp/okio/AsyncTimeout;

    iput-object v6, v5, Lcom/android/okhttp/okio/AsyncTimeout;->next:Lcom/android/okhttp/okio/AsyncTimeout;

    .line 331
    iput-object v2, v1, Lcom/android/okhttp/okio/AsyncTimeout;->next:Lcom/android/okhttp/okio/AsyncTimeout;
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_34

    .line 332
    monitor-exit v0

    return-object v1

    .line 308
    .end local v1    # "node":Lcom/android/okhttp/okio/AsyncTimeout;
    .end local v3    # "waitNanos":J
    :catchall_34
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized greylist-max-o cancelScheduledTimeout(Lcom/android/okhttp/okio/AsyncTimeout;)Z
    .registers 4
    .param p0, "node"    # Lcom/android/okhttp/okio/AsyncTimeout;

    const-class v0, Lcom/android/okhttp/okio/AsyncTimeout;

    monitor-enter v0

    .line 119
    :try_start_3
    sget-object v1, Lcom/android/okhttp/okio/AsyncTimeout;->head:Lcom/android/okhttp/okio/AsyncTimeout;

    .local v1, "prev":Lcom/android/okhttp/okio/AsyncTimeout;
    :goto_5
    if-eqz v1, :cond_19

    .line 120
    iget-object v2, v1, Lcom/android/okhttp/okio/AsyncTimeout;->next:Lcom/android/okhttp/okio/AsyncTimeout;

    if-ne v2, p0, :cond_15

    .line 121
    iget-object v2, p0, Lcom/android/okhttp/okio/AsyncTimeout;->next:Lcom/android/okhttp/okio/AsyncTimeout;

    iput-object v2, v1, Lcom/android/okhttp/okio/AsyncTimeout;->next:Lcom/android/okhttp/okio/AsyncTimeout;

    .line 122
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/okhttp/okio/AsyncTimeout;->next:Lcom/android/okhttp/okio/AsyncTimeout;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1c

    .line 123
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 119
    :cond_15
    :try_start_15
    iget-object v2, v1, Lcom/android/okhttp/okio/AsyncTimeout;->next:Lcom/android/okhttp/okio/AsyncTimeout;
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_1c

    move-object v1, v2

    goto :goto_5

    .line 128
    .end local v1    # "prev":Lcom/android/okhttp/okio/AsyncTimeout;
    :cond_19
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 118
    .end local p0    # "node":Lcom/android/okhttp/okio/AsyncTimeout;
    :catchall_1c
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private greylist-max-o remainingNanos(J)J
    .registers 5
    .param p1, "now"    # J

    .line 136
    iget-wide v0, p0, Lcom/android/okhttp/okio/AsyncTimeout;->timeoutAt:J

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method private static declared-synchronized greylist-max-o scheduleTimeout(Lcom/android/okhttp/okio/AsyncTimeout;JZ)V
    .registers 12
    .param p0, "node"    # Lcom/android/okhttp/okio/AsyncTimeout;
    .param p1, "timeoutNanos"    # J
    .param p3, "hasDeadline"    # Z

    const-class v0, Lcom/android/okhttp/okio/AsyncTimeout;

    monitor-enter v0

    .line 77
    :try_start_3
    sget-object v1, Lcom/android/okhttp/okio/AsyncTimeout;->head:Lcom/android/okhttp/okio/AsyncTimeout;

    if-nez v1, :cond_16

    .line 78
    new-instance v1, Lcom/android/okhttp/okio/AsyncTimeout;

    invoke-direct {v1}, Lcom/android/okhttp/okio/AsyncTimeout;-><init>()V

    sput-object v1, Lcom/android/okhttp/okio/AsyncTimeout;->head:Lcom/android/okhttp/okio/AsyncTimeout;

    .line 79
    new-instance v1, Lcom/android/okhttp/okio/AsyncTimeout$Watchdog;

    invoke-direct {v1}, Lcom/android/okhttp/okio/AsyncTimeout$Watchdog;-><init>()V

    invoke-virtual {v1}, Lcom/android/okhttp/okio/AsyncTimeout$Watchdog;->start()V

    .line 82
    :cond_16
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 83
    .local v1, "now":J
    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-eqz v5, :cond_2f

    if-eqz p3, :cond_2f

    .line 86
    invoke-virtual {p0}, Lcom/android/okhttp/okio/AsyncTimeout;->deadlineNanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/android/okhttp/okio/AsyncTimeout;->timeoutAt:J

    goto :goto_40

    .line 87
    :cond_2f
    cmp-long v3, p1, v3

    if-eqz v3, :cond_38

    .line 88
    add-long v3, v1, p1

    iput-wide v3, p0, Lcom/android/okhttp/okio/AsyncTimeout;->timeoutAt:J

    goto :goto_40

    .line 89
    :cond_38
    if-eqz p3, :cond_68

    .line 90
    invoke-virtual {p0}, Lcom/android/okhttp/okio/AsyncTimeout;->deadlineNanoTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/okhttp/okio/AsyncTimeout;->timeoutAt:J

    .line 96
    :goto_40
    invoke-direct {p0, v1, v2}, Lcom/android/okhttp/okio/AsyncTimeout;->remainingNanos(J)J

    move-result-wide v3

    .line 97
    .local v3, "remainingNanos":J
    sget-object v5, Lcom/android/okhttp/okio/AsyncTimeout;->head:Lcom/android/okhttp/okio/AsyncTimeout;

    .line 98
    .local v5, "prev":Lcom/android/okhttp/okio/AsyncTimeout;
    :goto_46
    iget-object v6, v5, Lcom/android/okhttp/okio/AsyncTimeout;->next:Lcom/android/okhttp/okio/AsyncTimeout;

    if-eqz v6, :cond_59

    iget-object v6, v5, Lcom/android/okhttp/okio/AsyncTimeout;->next:Lcom/android/okhttp/okio/AsyncTimeout;

    invoke-direct {v6, v1, v2}, Lcom/android/okhttp/okio/AsyncTimeout;->remainingNanos(J)J

    move-result-wide v6

    cmp-long v6, v3, v6

    if-gez v6, :cond_55

    goto :goto_59

    .line 97
    :cond_55
    iget-object v6, v5, Lcom/android/okhttp/okio/AsyncTimeout;->next:Lcom/android/okhttp/okio/AsyncTimeout;

    move-object v5, v6

    goto :goto_46

    .line 99
    :cond_59
    :goto_59
    iget-object v6, v5, Lcom/android/okhttp/okio/AsyncTimeout;->next:Lcom/android/okhttp/okio/AsyncTimeout;

    iput-object v6, p0, Lcom/android/okhttp/okio/AsyncTimeout;->next:Lcom/android/okhttp/okio/AsyncTimeout;

    .line 100
    iput-object p0, v5, Lcom/android/okhttp/okio/AsyncTimeout;->next:Lcom/android/okhttp/okio/AsyncTimeout;

    .line 101
    sget-object v6, Lcom/android/okhttp/okio/AsyncTimeout;->head:Lcom/android/okhttp/okio/AsyncTimeout;

    if-ne v5, v6, :cond_66

    .line 102
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_66
    .catchall {:try_start_3 .. :try_end_66} :catchall_6e

    .line 107
    .end local v5    # "prev":Lcom/android/okhttp/okio/AsyncTimeout;
    :cond_66
    monitor-exit v0

    return-void

    .line 92
    .end local v3    # "remainingNanos":J
    :cond_68
    :try_start_68
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_6e
    .catchall {:try_start_68 .. :try_end_6e} :catchall_6e

    .line 76
    .end local v1    # "now":J
    .end local p0    # "node":Lcom/android/okhttp/okio/AsyncTimeout;
    .end local p1    # "timeoutNanos":J
    .end local p3    # "hasDeadline":Z
    :catchall_6e
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final greylist-max-o enter()V
    .registers 6

    .line 64
    iget-boolean v0, p0, Lcom/android/okhttp/okio/AsyncTimeout;->inQueue:Z

    if-nez v0, :cond_1c

    .line 65
    invoke-virtual {p0}, Lcom/android/okhttp/okio/AsyncTimeout;->timeoutNanos()J

    move-result-wide v0

    .line 66
    .local v0, "timeoutNanos":J
    invoke-virtual {p0}, Lcom/android/okhttp/okio/AsyncTimeout;->hasDeadline()Z

    move-result v2

    .line 67
    .local v2, "hasDeadline":Z
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-nez v3, :cond_15

    if-nez v2, :cond_15

    .line 68
    return-void

    .line 70
    :cond_15
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/okhttp/okio/AsyncTimeout;->inQueue:Z

    .line 71
    invoke-static {p0, v0, v1, v2}, Lcom/android/okhttp/okio/AsyncTimeout;->scheduleTimeout(Lcom/android/okhttp/okio/AsyncTimeout;JZ)V

    .line 72
    return-void

    .line 64
    .end local v0    # "timeoutNanos":J
    .end local v2    # "hasDeadline":Z
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unbalanced enter/exit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final greylist-max-o exit(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 3
    .param p1, "cause"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    invoke-virtual {p0}, Lcom/android/okhttp/okio/AsyncTimeout;->exit()Z

    move-result v0

    if-nez v0, :cond_7

    return-object p1

    .line 263
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/okhttp/okio/AsyncTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    return-object v0
.end method

.method final greylist-max-o exit(Z)V
    .registers 4
    .param p1, "throwOnTimeout"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    invoke-virtual {p0}, Lcom/android/okhttp/okio/AsyncTimeout;->exit()Z

    move-result v0

    .line 252
    .local v0, "timedOut":Z
    if-eqz v0, :cond_f

    if-nez p1, :cond_9

    goto :goto_f

    :cond_9
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/okhttp/okio/AsyncTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 253
    :cond_f
    :goto_f
    return-void
.end method

.method public final greylist-max-o exit()Z
    .registers 3

    .line 111
    iget-boolean v0, p0, Lcom/android/okhttp/okio/AsyncTimeout;->inQueue:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 112
    :cond_6
    iput-boolean v1, p0, Lcom/android/okhttp/okio/AsyncTimeout;->inQueue:Z

    .line 113
    invoke-static {p0}, Lcom/android/okhttp/okio/AsyncTimeout;->cancelScheduledTimeout(Lcom/android/okhttp/okio/AsyncTimeout;)Z

    move-result v0

    return v0
.end method

.method protected greylist-max-o newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 4
    .param p1, "cause"    # Ljava/io/IOException;

    .line 272
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 273
    .local v0, "e":Ljava/io/InterruptedIOException;
    if-eqz p1, :cond_c

    .line 274
    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 276
    :cond_c
    return-object v0
.end method

.method public final greylist-max-o sink(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/Sink;
    .registers 3
    .param p1, "sink"    # Lcom/android/okhttp/okio/Sink;

    .line 152
    new-instance v0, Lcom/android/okhttp/okio/AsyncTimeout$1;

    invoke-direct {v0, p0, p1}, Lcom/android/okhttp/okio/AsyncTimeout$1;-><init>(Lcom/android/okhttp/okio/AsyncTimeout;Lcom/android/okhttp/okio/Sink;)V

    return-object v0
.end method

.method public final greylist-max-o source(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/Source;
    .registers 3
    .param p1, "source"    # Lcom/android/okhttp/okio/Source;

    .line 208
    new-instance v0, Lcom/android/okhttp/okio/AsyncTimeout$2;

    invoke-direct {v0, p0, p1}, Lcom/android/okhttp/okio/AsyncTimeout$2;-><init>(Lcom/android/okhttp/okio/AsyncTimeout;Lcom/android/okhttp/okio/Source;)V

    return-object v0
.end method

.method protected greylist-max-o timedOut()V
    .registers 1

    .line 144
    return-void
.end method
