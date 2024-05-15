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
.field private static final sQueueNextUnenqueued:Ljava/lang/ref/Reference;

.field public static unenqueued:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private head:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;

.field private tail:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 42
    new-instance v0, Ljava/lang/ref/PhantomReference;

    invoke-direct {v0, v1, v1}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    sput-object v0, Ljava/lang/ref/ReferenceQueue;->sQueueNextUnenqueued:Ljava/lang/ref/Reference;

    .line 257
    sput-object v1, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .local p0, "this":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TT;>;"
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v0, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    .line 47
    iput-object v0, p0, Ljava/lang/ref/ReferenceQueue;->tail:Ljava/lang/ref/Reference;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/ref/ReferenceQueue;->lock:Ljava/lang/Object;

    .line 54
    return-void
.end method

.method static add(Ljava/lang/ref/Reference;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 260
    .local p0, "list":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    const-class v2, Ljava/lang/ref/ReferenceQueue;

    monitor-enter v2

    .line 261
    :try_start_3
    sget-object v1, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;

    if-nez v1, :cond_10

    .line 262
    sput-object p0, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;

    .line 277
    :goto_9
    const-class v1, Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/Class;->notifyAll()V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_2a

    monitor-exit v2

    .line 279
    return-void

    .line 265
    :cond_10
    :try_start_10
    sget-object v0, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;

    .line 266
    .local v0, "last":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    :goto_12
    iget-object v1, v0, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    sget-object v3, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;

    if-eq v1, v3, :cond_1b

    .line 267
    iget-object v0, v0, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    goto :goto_12

    .line 270
    :cond_1b
    iput-object p0, v0, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    .line 271
    move-object v0, p0

    .line 272
    :goto_1e
    iget-object v1, v0, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    if-eq v1, p0, :cond_25

    .line 273
    iget-object v0, v0, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    goto :goto_1e

    .line 275
    :cond_25
    sget-object v1, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;

    iput-object v1, v0, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;
    :try_end_29
    .catchall {:try_start_10 .. :try_end_29} :catchall_2a

    goto :goto_9

    .line 260
    .end local v0    # "last":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    :catchall_2a
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private enqueueLocked(Ljava/lang/ref/Reference;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TT;>;"
    .local p1, "r":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+TT;>;"
    const/4 v2, 0x1

    .line 66
    iget-object v1, p1, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;

    if-eqz v1, :cond_7

    .line 67
    const/4 v1, 0x0

    return v1

    .line 70
    :cond_7
    instance-of v1, p1, Lsun/misc/Cleaner;

    if-eqz v1, :cond_16

    move-object v0, p1

    .line 74
    check-cast v0, Lsun/misc/Cleaner;

    .line 75
    .local v0, "cl":Lsun/misc/Cleaner;
    invoke-virtual {v0}, Lsun/misc/Cleaner;->clean()V

    .line 79
    sget-object v1, Ljava/lang/ref/ReferenceQueue;->sQueueNextUnenqueued:Ljava/lang/ref/Reference;

    iput-object v1, p1, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;

    .line 80
    return v2

    .line 83
    .end local v0    # "cl":Lsun/misc/Cleaner;
    :cond_16
    iget-object v1, p0, Ljava/lang/ref/ReferenceQueue;->tail:Ljava/lang/ref/Reference;

    if-nez v1, :cond_23

    .line 84
    iput-object p1, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    .line 88
    :goto_1c
    iput-object p1, p0, Ljava/lang/ref/ReferenceQueue;->tail:Ljava/lang/ref/Reference;

    .line 89
    iget-object v1, p0, Ljava/lang/ref/ReferenceQueue;->tail:Ljava/lang/ref/Reference;

    iput-object p1, v1, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;

    .line 90
    return v2

    .line 86
    :cond_23
    iget-object v1, p0, Ljava/lang/ref/ReferenceQueue;->tail:Ljava/lang/ref/Reference;

    iput-object p1, v1, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;

    goto :goto_1c
.end method

.method public static enqueuePending(Ljava/lang/ref/Reference;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p0, "list":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    move-object v2, p0

    .line 220
    .local v2, "start":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    :cond_1
    iget-object v1, p0, Ljava/lang/ref/Reference;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 221
    .local v1, "queue":Ljava/lang/ref/ReferenceQueue;
    if-nez v1, :cond_d

    .line 222
    iget-object v0, p0, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    .line 227
    .local v0, "next":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    iput-object p0, p0, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    .line 228
    move-object p0, v0

    .line 249
    :goto_a
    if-ne p0, v2, :cond_1

    .line 250
    return-void

    .line 234
    .end local v0    # "next":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    :cond_d
    iget-object v4, v1, Ljava/lang/ref/ReferenceQueue;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 236
    :cond_10
    :try_start_10
    iget-object v0, p0, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    .line 242
    .restart local v0    # "next":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    iput-object p0, p0, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    .line 243
    invoke-direct {v1, p0}, Ljava/lang/ref/ReferenceQueue;->enqueueLocked(Ljava/lang/ref/Reference;)Z

    .line 244
    move-object p0, v0

    .line 245
    if-eq v0, v2, :cond_1e

    iget-object v3, v0, Ljava/lang/ref/Reference;->queue:Ljava/lang/ref/ReferenceQueue;

    if-eq v3, v1, :cond_10

    .line 246
    :cond_1e
    iget-object v3, v1, Ljava/lang/ref/ReferenceQueue;->lock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_23
    .catchall {:try_start_10 .. :try_end_23} :catchall_25

    monitor-exit v4

    goto :goto_a

    .line 234
    .end local v0    # "next":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    :catchall_25
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private reallyPollLocked()Ljava/lang/ref/Reference;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/Reference",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TT;>;"
    const/4 v3, 0x0

    .line 122
    iget-object v1, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    if-eqz v1, :cond_1d

    .line 123
    iget-object v0, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    .line 124
    .local v0, "r":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+TT;>;"
    iget-object v1, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    iget-object v2, p0, Ljava/lang/ref/ReferenceQueue;->tail:Ljava/lang/ref/Reference;

    if-ne v1, v2, :cond_16

    .line 125
    iput-object v3, p0, Ljava/lang/ref/ReferenceQueue;->tail:Ljava/lang/ref/Reference;

    .line 126
    iput-object v3, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    .line 133
    :goto_11
    sget-object v1, Ljava/lang/ref/ReferenceQueue;->sQueueNextUnenqueued:Ljava/lang/ref/Reference;

    iput-object v1, v0, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;

    .line 134
    return-object v0

    .line 128
    :cond_16
    iget-object v1, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    iget-object v1, v1, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;

    iput-object v1, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    goto :goto_11

    .line 137
    .end local v0    # "r":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+TT;>;"
    :cond_1d
    return-object v3
.end method


# virtual methods
.method enqueue(Ljava/lang/ref/Reference;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TT;>;"
    .local p1, "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+TT;>;"
    iget-object v1, p0, Ljava/lang/ref/ReferenceQueue;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 112
    :try_start_3
    invoke-direct {p0, p1}, Ljava/lang/ref/ReferenceQueue;->enqueueLocked(Ljava/lang/ref/Reference;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 113
    iget-object v0, p0, Ljava/lang/ref/ReferenceQueue;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_14

    .line 114
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    .line 116
    :cond_11
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 111
    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method isEnqueued(Ljava/lang/ref/Reference;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TT;>;"
    .local p1, "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+TT;>;"
    const/4 v0, 0x0

    .line 98
    iget-object v1, p0, Ljava/lang/ref/ReferenceQueue;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 99
    :try_start_4
    iget-object v2, p1, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;

    if-eqz v2, :cond_f

    iget-object v2, p1, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;

    sget-object v3, Ljava/lang/ref/ReferenceQueue;->sQueueNextUnenqueued:Ljava/lang/ref/Reference;
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_11

    if-eq v2, v3, :cond_f

    const/4 v0, 0x1

    :cond_f
    monitor-exit v1

    return v0

    .line 98
    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public poll()Ljava/lang/ref/Reference;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/Reference",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TT;>;"
    const/4 v2, 0x0

    .line 149
    iget-object v1, p0, Ljava/lang/ref/ReferenceQueue;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 150
    :try_start_4
    iget-object v0, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_10

    if-nez v0, :cond_a

    monitor-exit v1

    .line 151
    return-object v2

    .line 153
    :cond_a
    :try_start_a
    invoke-direct {p0}, Ljava/lang/ref/ReferenceQueue;->reallyPollLocked()Ljava/lang/ref/Reference;
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_10

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 149
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public remove()Ljava/lang/ref/Reference;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/Reference",
            "<+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 209
    .local p0, "this":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TT;>;"
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/ref/ReferenceQueue;->remove(J)Ljava/lang/ref/Reference;

    move-result-object v0

    return-object v0
.end method

.method public remove(J)Ljava/lang/ref/Reference;
    .registers 16
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/lang/ref/Reference",
            "<+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 180
    .local p0, "this":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TT;>;"
    const-wide/16 v6, 0x0

    cmp-long v3, p1, v6

    if-gez v3, :cond_f

    .line 181
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Negative timeout value"

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 183
    :cond_f
    iget-object v6, p0, Ljava/lang/ref/ReferenceQueue;->lock:Ljava/lang/Object;

    monitor-enter v6

    .line 184
    :try_start_12
    invoke-direct {p0}, Ljava/lang/ref/ReferenceQueue;->reallyPollLocked()Ljava/lang/ref/Reference;
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_50

    move-result-object v2

    .line 185
    .local v2, "r":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+TT;>;"
    if-eqz v2, :cond_1a

    monitor-exit v6

    return-object v2

    .line 186
    :cond_1a
    const-wide/16 v8, 0x0

    cmp-long v3, p1, v8

    if-nez v3, :cond_2f

    const-wide/16 v4, 0x0

    .line 188
    .local v4, "start":J
    :cond_22
    :goto_22
    :try_start_22
    iget-object v3, p0, Ljava/lang/ref/ReferenceQueue;->lock:Ljava/lang/Object;

    invoke-virtual {v3, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 189
    invoke-direct {p0}, Ljava/lang/ref/ReferenceQueue;->reallyPollLocked()Ljava/lang/ref/Reference;
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_50

    move-result-object v2

    .line 190
    if-eqz v2, :cond_34

    monitor-exit v6

    return-object v2

    .line 186
    .end local v4    # "start":J
    :cond_2f
    :try_start_2f
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .restart local v4    # "start":J
    goto :goto_22

    .line 191
    :cond_34
    const-wide/16 v8, 0x0

    cmp-long v3, p1, v8

    if-eqz v3, :cond_22

    .line 192
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 193
    .local v0, "end":J
    sub-long v8, v0, v4

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10
    :try_end_44
    .catchall {:try_start_2f .. :try_end_44} :catchall_50

    sub-long/2addr p1, v8

    .line 194
    const-wide/16 v8, 0x0

    cmp-long v3, p1, v8

    if-gtz v3, :cond_4e

    const/4 v3, 0x0

    monitor-exit v6

    return-object v3

    .line 195
    :cond_4e
    move-wide v4, v0

    goto :goto_22

    .line 183
    .end local v0    # "end":J
    .end local v2    # "r":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+TT;>;"
    .end local v4    # "start":J
    :catchall_50
    move-exception v3

    monitor-exit v6

    throw v3
.end method
