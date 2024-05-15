.class public Ljava/lang/ref/ReferenceQueue;
.super Ljava/lang/Object;
.source "ReferenceQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final greylist-max-o sQueueNextUnenqueued:Ljava/lang/ref/Reference;

.field public static greylist-max-o unenqueued:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o head:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o lock:Ljava/lang/Object;

.field private greylist-max-o tail:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 44
    new-instance v0, Ljava/lang/ref/PhantomReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    sput-object v0, Ljava/lang/ref/ReferenceQueue;->sQueueNextUnenqueued:Ljava/lang/ref/Reference;

    .line 259
    sput-object v1, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;

    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 56
    .local p0, "this":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    .line 49
    iput-object v0, p0, Ljava/lang/ref/ReferenceQueue;->tail:Ljava/lang/ref/Reference;

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/ref/ReferenceQueue;->lock:Ljava/lang/Object;

    .line 56
    return-void
.end method

.method static greylist-max-r add(Ljava/lang/ref/Reference;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference<",
            "*>;)V"
        }
    .end annotation

    .line 262
    .local p0, "list":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    const-class v0, Ljava/lang/ref/ReferenceQueue;

    monitor-enter v0

    .line 263
    :try_start_3
    sget-object v1, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;

    if-nez v1, :cond_a

    .line 264
    sput-object p0, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;

    goto :goto_24

    .line 267
    :cond_a
    nop

    .line 268
    .local v1, "last":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    :goto_b
    iget-object v2, v1, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    sget-object v3, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;

    if-eq v2, v3, :cond_15

    .line 269
    iget-object v2, v1, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    move-object v1, v2

    goto :goto_b

    .line 272
    :cond_15
    iput-object p0, v1, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    .line 273
    move-object v1, p0

    .line 274
    :goto_18
    iget-object v2, v1, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    if-eq v2, p0, :cond_20

    .line 275
    iget-object v2, v1, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    move-object v1, v2

    goto :goto_18

    .line 277
    :cond_20
    sget-object v2, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;

    iput-object v2, v1, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    .line 279
    .end local v1    # "last":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    :goto_24
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 280
    monitor-exit v0

    .line 281
    return-void

    .line 280
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method private greylist-max-o enqueueLocked(Ljava/lang/ref/Reference;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 68
    .local p0, "this":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TT;>;"
    .local p1, "r":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+TT;>;"
    iget-object v0, p1, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;

    if-eqz v0, :cond_6

    .line 69
    const/4 v0, 0x0

    return v0

    .line 72
    :cond_6
    instance-of v0, p1, Lsun/misc/Cleaner;

    const/4 v1, 0x1

    if-eqz v0, :cond_16

    .line 76
    move-object v0, p1

    check-cast v0, Lsun/misc/Cleaner;

    .line 77
    .local v0, "cl":Lsun/misc/Cleaner;
    invoke-virtual {v0}, Lsun/misc/Cleaner;->clean()V

    .line 81
    sget-object v2, Ljava/lang/ref/ReferenceQueue;->sQueueNextUnenqueued:Ljava/lang/ref/Reference;

    iput-object v2, p1, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;

    .line 82
    return v1

    .line 85
    .end local v0    # "cl":Lsun/misc/Cleaner;
    :cond_16
    iget-object v0, p0, Ljava/lang/ref/ReferenceQueue;->tail:Ljava/lang/ref/Reference;

    if-nez v0, :cond_1d

    .line 86
    iput-object p1, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    goto :goto_1f

    .line 88
    :cond_1d
    iput-object p1, v0, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;

    .line 90
    :goto_1f
    iput-object p1, p0, Ljava/lang/ref/ReferenceQueue;->tail:Ljava/lang/ref/Reference;

    .line 91
    iput-object p1, p1, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;

    .line 92
    return v1
.end method

.method public static greylist-max-o enqueuePending(Ljava/lang/ref/Reference;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference<",
            "*>;)V"
        }
    .end annotation

    .line 220
    .local p0, "list":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    move-object v0, p0

    .line 222
    .local v0, "start":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    :cond_1
    iget-object v1, p0, Ljava/lang/ref/Reference;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 223
    .local v1, "queue":Ljava/lang/ref/ReferenceQueue;
    if-nez v1, :cond_b

    .line 224
    iget-object v2, p0, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    .line 229
    .local v2, "next":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    iput-object p0, p0, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    .line 230
    move-object p0, v2

    .line 231
    .end local v2    # "next":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    goto :goto_22

    .line 236
    :cond_b
    iget-object v2, v1, Ljava/lang/ref/ReferenceQueue;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 238
    :cond_e
    :try_start_e
    iget-object v3, p0, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    .line 244
    .local v3, "next":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    iput-object p0, p0, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    .line 245
    invoke-direct {v1, p0}, Ljava/lang/ref/ReferenceQueue;->enqueueLocked(Ljava/lang/ref/Reference;)Z

    .line 246
    move-object p0, v3

    .line 247
    .end local v3    # "next":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    if-eq p0, v0, :cond_1c

    iget-object v3, p0, Ljava/lang/ref/Reference;->queue:Ljava/lang/ref/ReferenceQueue;

    if-eq v3, v1, :cond_e

    .line 248
    :cond_1c
    iget-object v3, v1, Ljava/lang/ref/ReferenceQueue;->lock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 249
    monitor-exit v2

    .line 251
    .end local v1    # "queue":Ljava/lang/ref/ReferenceQueue;
    :goto_22
    if-ne p0, v0, :cond_1

    .line 252
    return-void

    .line 249
    .restart local v1    # "queue":Ljava/lang/ref/ReferenceQueue;
    :catchall_25
    move-exception v3

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_e .. :try_end_27} :catchall_25

    throw v3
.end method

.method private greylist-max-o reallyPollLocked()Ljava/lang/ref/Reference;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/Reference<",
            "+TT;>;"
        }
    .end annotation

    .line 124
    .local p0, "this":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TT;>;"
    iget-object v0, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 125
    iget-object v2, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    .line 126
    .local v2, "r":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+TT;>;"
    iget-object v3, p0, Ljava/lang/ref/ReferenceQueue;->tail:Ljava/lang/ref/Reference;

    if-ne v0, v3, :cond_10

    .line 127
    iput-object v1, p0, Ljava/lang/ref/ReferenceQueue;->tail:Ljava/lang/ref/Reference;

    .line 128
    iput-object v1, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    goto :goto_14

    .line 130
    :cond_10
    iget-object v0, v0, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;

    iput-object v0, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    .line 135
    :goto_14
    sget-object v0, Ljava/lang/ref/ReferenceQueue;->sQueueNextUnenqueued:Ljava/lang/ref/Reference;

    iput-object v0, v2, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;

    .line 136
    return-object v2

    .line 139
    .end local v2    # "r":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+TT;>;"
    :cond_19
    return-object v1
.end method


# virtual methods
.method greylist-max-o enqueue(Ljava/lang/ref/Reference;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 113
    .local p0, "this":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TT;>;"
    .local p1, "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+TT;>;"
    iget-object v0, p0, Ljava/lang/ref/ReferenceQueue;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 114
    :try_start_3
    invoke-direct {p0, p1}, Ljava/lang/ref/ReferenceQueue;->enqueueLocked(Ljava/lang/ref/Reference;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 115
    iget-object v1, p0, Ljava/lang/ref/ReferenceQueue;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 116
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 118
    :cond_11
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 119
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method greylist-max-o isEnqueued(Ljava/lang/ref/Reference;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 100
    .local p0, "this":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TT;>;"
    .local p1, "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+TT;>;"
    iget-object v0, p0, Ljava/lang/ref/ReferenceQueue;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 101
    :try_start_3
    iget-object v1, p1, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;

    if-eqz v1, :cond_f

    iget-object v1, p1, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;

    sget-object v2, Ljava/lang/ref/ReferenceQueue;->sQueueNextUnenqueued:Ljava/lang/ref/Reference;

    if-eq v1, v2, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    monitor-exit v0

    return v1

    .line 102
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public whitelist test-api poll()Ljava/lang/ref/Reference;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/Reference<",
            "+TT;>;"
        }
    .end annotation

    .line 151
    .local p0, "this":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TT;>;"
    iget-object v0, p0, Ljava/lang/ref/ReferenceQueue;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 152
    :try_start_3
    iget-object v1, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    if-nez v1, :cond_a

    .line 153
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 155
    :cond_a
    invoke-direct {p0}, Ljava/lang/ref/ReferenceQueue;->reallyPollLocked()Ljava/lang/ref/Reference;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 156
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public whitelist test-api remove()Ljava/lang/ref/Reference;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/Reference<",
            "+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 211
    .local p0, "this":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TT;>;"
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/ref/ReferenceQueue;->remove(J)Ljava/lang/ref/Reference;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove(J)Ljava/lang/ref/Reference;
    .registers 15
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/lang/ref/Reference<",
            "+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 182
    .local p0, "this":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TT;>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_44

    .line 185
    iget-object v2, p0, Ljava/lang/ref/ReferenceQueue;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 186
    :try_start_9
    invoke-direct {p0}, Ljava/lang/ref/ReferenceQueue;->reallyPollLocked()Ljava/lang/ref/Reference;

    move-result-object v3

    .line 187
    .local v3, "r":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+TT;>;"
    if-eqz v3, :cond_11

    monitor-exit v2

    return-object v3

    .line 188
    :cond_11
    cmp-long v4, p1, v0

    if-nez v4, :cond_17

    move-wide v4, v0

    goto :goto_1b

    :cond_17
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 190
    .local v4, "start":J
    :cond_1b
    :goto_1b
    iget-object v6, p0, Ljava/lang/ref/ReferenceQueue;->lock:Ljava/lang/Object;

    invoke-virtual {v6, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 191
    invoke-direct {p0}, Ljava/lang/ref/ReferenceQueue;->reallyPollLocked()Ljava/lang/ref/Reference;

    move-result-object v6

    move-object v3, v6

    .line 192
    if-eqz v3, :cond_29

    monitor-exit v2

    return-object v3

    .line 193
    :cond_29
    cmp-long v6, p1, v0

    if-eqz v6, :cond_1b

    .line 194
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 195
    .local v6, "end":J
    sub-long v8, v6, v4

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    sub-long/2addr p1, v8

    .line 196
    cmp-long v8, p1, v0

    if-gtz v8, :cond_3f

    const/4 v0, 0x0

    monitor-exit v2

    return-object v0

    .line 197
    :cond_3f
    move-wide v4, v6

    .line 198
    .end local v6    # "end":J
    goto :goto_1b

    .line 200
    .end local v3    # "r":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+TT;>;"
    .end local v4    # "start":J
    :catchall_41
    move-exception v0

    monitor-exit v2
    :try_end_43
    .catchall {:try_start_9 .. :try_end_43} :catchall_41

    throw v0

    .line 183
    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative timeout value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
