.class public final Lcom/android/okhttp/ConnectionPool;
.super Ljava/lang/Object;
.source "ConnectionPool.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist-max-o DEFAULT_KEEP_ALIVE_DURATION_MS:J = 0x493e0L

.field private static final greylist systemDefault:Lcom/android/okhttp/ConnectionPool;


# instance fields
.field private greylist-max-o cleanupRunnable:Ljava/lang/Runnable;

.field private final greylist connections:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/android/okhttp/internal/io/RealConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o executor:Ljava/util/concurrent/Executor;

.field private final greylist keepAliveDurationNs:J

.field private final greylist maxIdleConnections:I

.field final greylist-max-o routeDatabase:Lcom/android/okhttp/internal/RouteDatabase;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 60
    nop

    .line 67
    const-string v0, "http.keepAlive"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "keepAlive":Ljava/lang/String;
    const-string v1, "http.keepAliveDuration"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "keepAliveDuration":Ljava/lang/String;
    const-string v2, "http.maxConnections"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "maxIdleConnections":Ljava/lang/String;
    if-eqz v1, :cond_1a

    .line 71
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_1d

    .line 72
    :cond_1a
    const-wide/32 v3, 0x493e0

    :goto_1d
    nop

    .line 73
    .local v3, "keepAliveDurationMs":J
    if-eqz v0, :cond_2f

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2f

    .line 74
    new-instance v5, Lcom/android/okhttp/ConnectionPool;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v3, v4}, Lcom/android/okhttp/ConnectionPool;-><init>(IJ)V

    sput-object v5, Lcom/android/okhttp/ConnectionPool;->systemDefault:Lcom/android/okhttp/ConnectionPool;

    goto :goto_45

    .line 75
    :cond_2f
    if-eqz v2, :cond_3d

    .line 76
    new-instance v5, Lcom/android/okhttp/ConnectionPool;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6, v3, v4}, Lcom/android/okhttp/ConnectionPool;-><init>(IJ)V

    sput-object v5, Lcom/android/okhttp/ConnectionPool;->systemDefault:Lcom/android/okhttp/ConnectionPool;

    goto :goto_45

    .line 78
    :cond_3d
    new-instance v5, Lcom/android/okhttp/ConnectionPool;

    const/4 v6, 0x5

    invoke-direct {v5, v6, v3, v4}, Lcom/android/okhttp/ConnectionPool;-><init>(IJ)V

    sput-object v5, Lcom/android/okhttp/ConnectionPool;->systemDefault:Lcom/android/okhttp/ConnectionPool;

    .line 80
    .end local v0    # "keepAlive":Ljava/lang/String;
    .end local v1    # "keepAliveDuration":Ljava/lang/String;
    .end local v2    # "maxIdleConnections":Ljava/lang/String;
    .end local v3    # "keepAliveDurationMs":J
    :goto_45
    return-void
.end method

.method public constructor greylist-max-o <init>(IJ)V
    .registers 5
    .param p1, "maxIdleConnections"    # I
    .param p2, "keepAliveDurationMs"    # J

    .line 120
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/okhttp/ConnectionPool;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    .line 121
    return-void
.end method

.method public constructor greylist-max-o <init>(IJLjava/util/concurrent/TimeUnit;)V
    .registers 14
    .param p1, "maxIdleConnections"    # I
    .param p2, "keepAliveDuration"    # J
    .param p4, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 89
    const-string v0, "OkHttp ConnectionPool"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/okhttp/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x3c

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v8, p0, Lcom/android/okhttp/ConnectionPool;->executor:Ljava/util/concurrent/Executor;

    .line 96
    new-instance v0, Lcom/android/okhttp/ConnectionPool$1;

    invoke-direct {v0, p0}, Lcom/android/okhttp/ConnectionPool$1;-><init>(Lcom/android/okhttp/ConnectionPool;)V

    iput-object v0, p0, Lcom/android/okhttp/ConnectionPool;->cleanupRunnable:Ljava/lang/Runnable;

    .line 115
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/Deque;

    .line 117
    new-instance v0, Lcom/android/okhttp/internal/RouteDatabase;

    invoke-direct {v0}, Lcom/android/okhttp/internal/RouteDatabase;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/ConnectionPool;->routeDatabase:Lcom/android/okhttp/internal/RouteDatabase;

    .line 124
    iput p1, p0, Lcom/android/okhttp/ConnectionPool;->maxIdleConnections:I

    .line 125
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/okhttp/ConnectionPool;->keepAliveDurationNs:J

    .line 128
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_41

    .line 131
    return-void

    .line 129
    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keepAliveDuration <= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o getDefault()Lcom/android/okhttp/ConnectionPool;
    .registers 1

    .line 134
    sget-object v0, Lcom/android/okhttp/ConnectionPool;->systemDefault:Lcom/android/okhttp/ConnectionPool;

    return-object v0
.end method

.method private greylist-max-o pruneAndGetAllocationCount(Lcom/android/okhttp/internal/io/RealConnection;J)I
    .registers 9
    .param p1, "connection"    # Lcom/android/okhttp/internal/io/RealConnection;
    .param p2, "now"    # J

    .line 301
    iget-object v0, p1, Lcom/android/okhttp/internal/io/RealConnection;->allocations:Ljava/util/List;

    .line 302
    .local v0, "references":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/Reference<Lcom/android/okhttp/internal/http/StreamAllocation;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2d

    .line 303
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    .line 305
    .local v2, "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lcom/android/okhttp/internal/http/StreamAllocation;>;"
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_18

    .line 306
    add-int/lit8 v1, v1, 0x1

    .line 307
    goto :goto_3

    .line 317
    :cond_18
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 318
    const/4 v3, 0x1

    iput-boolean v3, p1, Lcom/android/okhttp/internal/io/RealConnection;->noNewStreams:Z

    .line 321
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 322
    iget-wide v3, p0, Lcom/android/okhttp/ConnectionPool;->keepAliveDurationNs:J

    sub-long v3, p2, v3

    iput-wide v3, p1, Lcom/android/okhttp/internal/io/RealConnection;->idleAtNanos:J

    .line 323
    const/4 v3, 0x0

    return v3

    .line 325
    .end local v2    # "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lcom/android/okhttp/internal/http/StreamAllocation;>;"
    :cond_2c
    goto :goto_3

    .line 327
    .end local v1    # "i":I
    :cond_2d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    return v1
.end method


# virtual methods
.method greylist-max-o cleanup(J)J
    .registers 13
    .param p1, "now"    # J

    .line 242
    const/4 v0, 0x0

    .line 243
    .local v0, "inUseConnectionCount":I
    const/4 v1, 0x0

    .line 244
    .local v1, "idleConnectionCount":I
    const/4 v2, 0x0

    .line 245
    .local v2, "longestIdleConnection":Lcom/android/okhttp/internal/io/RealConnection;
    const-wide/high16 v3, -0x8000000000000000L

    .line 248
    .local v3, "longestIdleDurationNs":J
    monitor-enter p0

    .line 249
    :try_start_6
    iget-object v5, p0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v5}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/okhttp/internal/io/RealConnection;>;"
    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 250
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/okhttp/internal/io/RealConnection;

    .line 253
    .local v6, "connection":Lcom/android/okhttp/internal/io/RealConnection;
    invoke-direct {p0, v6, p1, p2}, Lcom/android/okhttp/ConnectionPool;->pruneAndGetAllocationCount(Lcom/android/okhttp/internal/io/RealConnection;J)I

    move-result v7

    if-lez v7, :cond_21

    .line 254
    add-int/lit8 v0, v0, 0x1

    .line 255
    goto :goto_c

    .line 258
    :cond_21
    add-int/lit8 v1, v1, 0x1

    .line 261
    iget-wide v7, v6, Lcom/android/okhttp/internal/io/RealConnection;->idleAtNanos:J

    sub-long v7, p1, v7

    .line 262
    .local v7, "idleDurationNs":J
    cmp-long v9, v7, v3

    if-lez v9, :cond_2d

    .line 263
    move-wide v3, v7

    .line 264
    move-object v2, v6

    .line 266
    .end local v6    # "connection":Lcom/android/okhttp/internal/io/RealConnection;
    .end local v7    # "idleDurationNs":J
    :cond_2d
    goto :goto_c

    .line 268
    .end local v5    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/okhttp/internal/io/RealConnection;>;"
    :cond_2e
    iget-wide v5, p0, Lcom/android/okhttp/ConnectionPool;->keepAliveDurationNs:J

    cmp-long v5, v3, v5

    if-gez v5, :cond_4a

    iget v5, p0, Lcom/android/okhttp/ConnectionPool;->maxIdleConnections:I

    if-le v1, v5, :cond_39

    goto :goto_4a

    .line 274
    :cond_39
    if-lez v1, :cond_40

    .line 276
    iget-wide v5, p0, Lcom/android/okhttp/ConnectionPool;->keepAliveDurationNs:J

    sub-long/2addr v5, v3

    monitor-exit p0

    return-wide v5

    .line 278
    :cond_40
    if-lez v0, :cond_46

    .line 280
    iget-wide v5, p0, Lcom/android/okhttp/ConnectionPool;->keepAliveDurationNs:J

    monitor-exit p0

    return-wide v5

    .line 284
    :cond_46
    const-wide/16 v5, -0x1

    monitor-exit p0

    return-wide v5

    .line 272
    :cond_4a
    :goto_4a
    iget-object v5, p0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v5, v2}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 286
    monitor-exit p0
    :try_end_50
    .catchall {:try_start_6 .. :try_end_50} :catchall_5a

    .line 288
    invoke-virtual {v2}, Lcom/android/okhttp/internal/io/RealConnection;->getSocket()Ljava/net/Socket;

    move-result-object v5

    invoke-static {v5}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 291
    const-wide/16 v5, 0x0

    return-wide v5

    .line 286
    :catchall_5a
    move-exception v5

    :try_start_5b
    monitor-exit p0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v5
.end method

.method greylist-max-o connectionBecameIdle(Lcom/android/okhttp/internal/io/RealConnection;)Z
    .registers 3
    .param p1, "connection"    # Lcom/android/okhttp/internal/io/RealConnection;

    .line 205
    nop

    .line 206
    iget-boolean v0, p1, Lcom/android/okhttp/internal/io/RealConnection;->noNewStreams:Z

    if-nez v0, :cond_f

    iget v0, p0, Lcom/android/okhttp/ConnectionPool;->maxIdleConnections:I

    if-nez v0, :cond_a

    goto :goto_f

    .line 210
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 211
    const/4 v0, 0x0

    return v0

    .line 207
    :cond_f
    :goto_f
    iget-object v0, p0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 208
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o evictAll()V
    .registers 5

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v0, "evictedConnections":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/io/RealConnection;>;"
    monitor-enter p0

    .line 219
    :try_start_6
    iget-object v1, p0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/okhttp/internal/io/RealConnection;>;"
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 220
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/okhttp/internal/io/RealConnection;

    .line 221
    .local v2, "connection":Lcom/android/okhttp/internal/io/RealConnection;
    iget-object v3, v2, Lcom/android/okhttp/internal/io/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 222
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/okhttp/internal/io/RealConnection;->noNewStreams:Z

    .line 223
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 226
    .end local v2    # "connection":Lcom/android/okhttp/internal/io/RealConnection;
    :cond_29
    goto :goto_c

    .line 227
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/okhttp/internal/io/RealConnection;>;"
    :cond_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_44

    .line 229
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/okhttp/internal/io/RealConnection;

    .line 230
    .restart local v2    # "connection":Lcom/android/okhttp/internal/io/RealConnection;
    invoke-virtual {v2}, Lcom/android/okhttp/internal/io/RealConnection;->getSocket()Ljava/net/Socket;

    move-result-object v3

    invoke-static {v3}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 231
    .end local v2    # "connection":Lcom/android/okhttp/internal/io/RealConnection;
    goto :goto_2f

    .line 232
    :cond_43
    return-void

    .line 227
    :catchall_44
    move-exception v1

    :try_start_45
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw v1
.end method

.method greylist-max-o get(Lcom/android/okhttp/Address;Lcom/android/okhttp/internal/http/StreamAllocation;)Lcom/android/okhttp/internal/io/RealConnection;
    .registers 7
    .param p1, "address"    # Lcom/android/okhttp/Address;
    .param p2, "streamAllocation"    # Lcom/android/okhttp/internal/http/StreamAllocation;

    .line 178
    nop

    .line 179
    iget-object v0, p0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/okhttp/internal/io/RealConnection;

    .line 182
    .local v1, "connection":Lcom/android/okhttp/internal/io/RealConnection;
    iget-object v2, v1, Lcom/android/okhttp/internal/io/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/okhttp/internal/io/RealConnection;->allocationLimit()I

    move-result v3

    if-ge v2, v3, :cond_33

    .line 183
    invoke-virtual {v1}, Lcom/android/okhttp/internal/io/RealConnection;->getRoute()Lcom/android/okhttp/Route;

    move-result-object v2

    iget-object v2, v2, Lcom/android/okhttp/Route;->address:Lcom/android/okhttp/Address;

    invoke-virtual {p1, v2}, Lcom/android/okhttp/Address;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    iget-boolean v2, v1, Lcom/android/okhttp/internal/io/RealConnection;->noNewStreams:Z

    if-nez v2, :cond_33

    .line 185
    invoke-virtual {p2, v1}, Lcom/android/okhttp/internal/http/StreamAllocation;->acquire(Lcom/android/okhttp/internal/io/RealConnection;)V

    .line 186
    return-object v1

    .line 188
    .end local v1    # "connection":Lcom/android/okhttp/internal/io/RealConnection;
    :cond_33
    goto :goto_7

    .line 189
    :cond_34
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized greylist-max-o getConnectionCount()I
    .registers 2

    monitor-enter p0

    .line 153
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .line 153
    .end local p0    # "this":Lcom/android/okhttp/ConnectionPool;
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized greylist-max-o getHttpConnectionCount()I
    .registers 3

    monitor-enter p0

    .line 173
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/okhttp/ConnectionPool;->getMultiplexedConnectionCount()I

    move-result v1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_e

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    .line 173
    .end local p0    # "this":Lcom/android/okhttp/ConnectionPool;
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized greylist-max-o getIdleConnectionCount()I
    .registers 5

    monitor-enter p0

    .line 139
    const/4 v0, 0x0

    .line 140
    .local v0, "total":I
    :try_start_2
    iget-object v1, p0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/okhttp/internal/io/RealConnection;

    .line 141
    .local v2, "connection":Lcom/android/okhttp/internal/io/RealConnection;
    iget-object v3, v2, Lcom/android/okhttp/internal/io/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3
    :try_end_1a
    .catchall {:try_start_2 .. :try_end_1a} :catchall_21

    if-eqz v3, :cond_1e

    add-int/lit8 v0, v0, 0x1

    .line 142
    .end local v2    # "connection":Lcom/android/okhttp/internal/io/RealConnection;
    :cond_1e
    goto :goto_8

    .line 143
    .end local p0    # "this":Lcom/android/okhttp/ConnectionPool;
    :cond_1f
    monitor-exit p0

    return v0

    .line 138
    .end local v0    # "total":I
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized greylist-max-o getMultiplexedConnectionCount()I
    .registers 5

    monitor-enter p0

    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, "total":I
    :try_start_2
    iget-object v1, p0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/okhttp/internal/io/RealConnection;

    .line 166
    .local v2, "connection":Lcom/android/okhttp/internal/io/RealConnection;
    invoke-virtual {v2}, Lcom/android/okhttp/internal/io/RealConnection;->isMultiplexed()Z

    move-result v3
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_1f

    if-eqz v3, :cond_1c

    add-int/lit8 v0, v0, 0x1

    .line 167
    .end local v2    # "connection":Lcom/android/okhttp/internal/io/RealConnection;
    :cond_1c
    goto :goto_8

    .line 168
    .end local p0    # "this":Lcom/android/okhttp/ConnectionPool;
    :cond_1d
    monitor-exit p0

    return v0

    .line 163
    .end local v0    # "total":I
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized greylist-max-o getSpdyConnectionCount()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 159
    :try_start_1
    invoke-virtual {p0}, Lcom/android/okhttp/ConnectionPool;->getMultiplexedConnectionCount()I

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return v0

    .line 159
    .end local p0    # "this":Lcom/android/okhttp/ConnectionPool;
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method greylist-max-o put(Lcom/android/okhttp/internal/io/RealConnection;)V
    .registers 4
    .param p1, "connection"    # Lcom/android/okhttp/internal/io/RealConnection;

    .line 193
    nop

    .line 194
    iget-object v0, p0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 195
    iget-object v0, p0, Lcom/android/okhttp/ConnectionPool;->executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/android/okhttp/ConnectionPool;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 197
    :cond_10
    iget-object v0, p0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 198
    return-void
.end method

.method greylist-max-o setCleanupRunnableForTest(Ljava/lang/Runnable;)V
    .registers 2
    .param p1, "cleanupRunnable"    # Ljava/lang/Runnable;

    .line 331
    iput-object p1, p0, Lcom/android/okhttp/ConnectionPool;->cleanupRunnable:Ljava/lang/Runnable;

    .line 332
    return-void
.end method
