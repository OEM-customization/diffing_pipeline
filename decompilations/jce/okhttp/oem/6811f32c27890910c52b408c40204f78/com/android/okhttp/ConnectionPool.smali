.class public final Lcom/android/okhttp/ConnectionPool;
.super Ljava/lang/Object;
.source "ConnectionPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/ConnectionPool$1;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final DEFAULT_KEEP_ALIVE_DURATION_MS:J = 0x493e0L

.field private static final systemDefault:Lcom/android/okhttp/ConnectionPool;


# instance fields
.field private cleanupRunnable:Ljava/lang/Runnable;

.field private final connections:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/android/okhttp/internal/io/RealConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final executor:Ljava/util/concurrent/Executor;

.field private final keepAliveDurationNs:J

.field private final maxIdleConnections:I

.field final routeDatabase:Lcom/android/okhttp/internal/RouteDatabase;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const-class v5, Lcom/android/okhttp/ConnectionPool;

    invoke-virtual {v5}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    sput-boolean v5, Lcom/android/okhttp/ConnectionPool;->-assertionsDisabled:Z

    .line 64
    const-string/jumbo v5, "http.keepAlive"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "keepAlive":Ljava/lang/String;
    const-string/jumbo v5, "http.keepAliveDuration"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "keepAliveDuration":Ljava/lang/String;
    const-string/jumbo v5, "http.maxConnections"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, "maxIdleConnections":Ljava/lang/String;
    if-eqz v1, :cond_38

    .line 68
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 70
    .local v2, "keepAliveDurationMs":J
    :goto_25
    if-eqz v0, :cond_3c

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3c

    .line 71
    new-instance v5, Lcom/android/okhttp/ConnectionPool;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v2, v3}, Lcom/android/okhttp/ConnectionPool;-><init>(IJ)V

    sput-object v5, Lcom/android/okhttp/ConnectionPool;->systemDefault:Lcom/android/okhttp/ConnectionPool;

    .line 58
    :goto_37
    return-void

    .line 69
    .end local v2    # "keepAliveDurationMs":J
    :cond_38
    const-wide/32 v2, 0x493e0

    .restart local v2    # "keepAliveDurationMs":J
    goto :goto_25

    .line 72
    :cond_3c
    if-eqz v4, :cond_4a

    .line 73
    new-instance v5, Lcom/android/okhttp/ConnectionPool;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6, v2, v3}, Lcom/android/okhttp/ConnectionPool;-><init>(IJ)V

    sput-object v5, Lcom/android/okhttp/ConnectionPool;->systemDefault:Lcom/android/okhttp/ConnectionPool;

    goto :goto_37

    .line 75
    :cond_4a
    new-instance v5, Lcom/android/okhttp/ConnectionPool;

    const/4 v6, 0x5

    invoke-direct {v5, v6, v2, v3}, Lcom/android/okhttp/ConnectionPool;-><init>(IJ)V

    sput-object v5, Lcom/android/okhttp/ConnectionPool;->systemDefault:Lcom/android/okhttp/ConnectionPool;

    goto :goto_37
.end method

.method public constructor <init>(IJ)V
    .registers 6
    .param p1, "maxIdleConnections"    # I
    .param p2, "keepAliveDurationMs"    # J

    .prologue
    .line 114
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/okhttp/ConnectionPool;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    .line 115
    return-void
.end method

.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;)V
    .registers 15
    .param p1, "maxIdleConnections"    # I
    .param p2, "keepAliveDuration"    # J
    .param p4, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    const/4 v3, 0x1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 85
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 86
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string/jumbo v0, "OkHttp ConnectionPool"

    invoke-static {v0, v3}, Lcom/android/okhttp/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    .line 85
    const/4 v2, 0x0

    const-wide/16 v4, 0x3c

    .line 84
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/android/okhttp/ConnectionPool;->executor:Ljava/util/concurrent/Executor;

    .line 91
    new-instance v0, Lcom/android/okhttp/ConnectionPool$1;

    invoke-direct {v0, p0}, Lcom/android/okhttp/ConnectionPool$1;-><init>(Lcom/android/okhttp/ConnectionPool;)V

    iput-object v0, p0, Lcom/android/okhttp/ConnectionPool;->cleanupRunnable:Ljava/lang/Runnable;

    .line 110
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/Deque;

    .line 111
    new-instance v0, Lcom/android/okhttp/internal/RouteDatabase;

    invoke-direct {v0}, Lcom/android/okhttp/internal/RouteDatabase;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/ConnectionPool;->routeDatabase:Lcom/android/okhttp/internal/RouteDatabase;

    .line 118
    iput p1, p0, Lcom/android/okhttp/ConnectionPool;->maxIdleConnections:I

    .line 119
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/okhttp/ConnectionPool;->keepAliveDurationNs:J

    .line 122
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_59

    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "keepAliveDuration <= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_59
    return-void
.end method

.method public static getDefault()Lcom/android/okhttp/ConnectionPool;
    .registers 1

    .prologue
    .line 128
    sget-object v0, Lcom/android/okhttp/ConnectionPool;->systemDefault:Lcom/android/okhttp/ConnectionPool;

    return-object v0
.end method

.method private pruneAndGetAllocationCount(Lcom/android/okhttp/internal/io/RealConnection;J)I
    .registers 10
    .param p1, "connection"    # Lcom/android/okhttp/internal/io/RealConnection;
    .param p2, "now"    # J

    .prologue
    .line 295
    iget-object v2, p1, Lcom/android/okhttp/internal/io/RealConnection;->allocations:Ljava/util/List;

    .line 296
    .local v2, "references":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/Reference<Lcom/squareup/okhttp/internal/http/StreamAllocation;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :cond_3
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_58

    .line 297
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/Reference;

    .line 299
    .local v1, "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lcom/squareup/okhttp/internal/http/StreamAllocation;>;"
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_18

    .line 300
    add-int/lit8 v0, v0, 0x1

    .line 301
    goto :goto_3

    .line 305
    :cond_18
    sget-object v3, Lcom/android/okhttp/internal/Internal;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "A connection to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/okhttp/internal/io/RealConnection;->getRoute()Lcom/android/okhttp/Route;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/okhttp/Route;->getAddress()Lcom/android/okhttp/Address;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/okhttp/Address;->url()Lcom/android/okhttp/HttpUrl;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 306
    const-string/jumbo v5, " was leaked. Did you forget to close a response body?"

    .line 305
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 307
    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 308
    const/4 v3, 0x1

    iput-boolean v3, p1, Lcom/android/okhttp/internal/io/RealConnection;->noNewStreams:Z

    .line 311
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 312
    iget-wide v4, p0, Lcom/android/okhttp/ConnectionPool;->keepAliveDurationNs:J

    sub-long v4, p2, v4

    iput-wide v4, p1, Lcom/android/okhttp/internal/io/RealConnection;->idleAtNanos:J

    .line 313
    const/4 v3, 0x0

    return v3

    .line 317
    .end local v1    # "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lcom/squareup/okhttp/internal/http/StreamAllocation;>;"
    :cond_58
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    return v3
.end method


# virtual methods
.method cleanup(J)J
    .registers 16
    .param p1, "now"    # J

    .prologue
    .line 236
    const/4 v3, 0x0

    .line 237
    .local v3, "inUseConnectionCount":I
    const/4 v2, 0x0

    .line 238
    .local v2, "idleConnectionCount":I
    const/4 v6, 0x0

    .line 239
    .local v6, "longestIdleConnection":Lcom/android/okhttp/internal/io/RealConnection;
    const-wide/high16 v8, -0x8000000000000000L

    .line 242
    .local v8, "longestIdleDurationNs":J
    monitor-enter p0

    .line 243
    :try_start_6
    iget-object v7, p0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v7}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v6    # "longestIdleConnection":Lcom/android/okhttp/internal/io/RealConnection;
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/squareup/okhttp/internal/io/RealConnection;>;"
    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 244
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/okhttp/internal/io/RealConnection;

    .line 247
    .local v0, "connection":Lcom/android/okhttp/internal/io/RealConnection;
    invoke-direct {p0, v0, p1, p2}, Lcom/android/okhttp/ConnectionPool;->pruneAndGetAllocationCount(Lcom/android/okhttp/internal/io/RealConnection;J)I

    move-result v7

    if-lez v7, :cond_21

    .line 248
    add-int/lit8 v3, v3, 0x1

    .line 249
    goto :goto_c

    .line 252
    :cond_21
    add-int/lit8 v2, v2, 0x1

    .line 255
    iget-wide v10, v0, Lcom/android/okhttp/internal/io/RealConnection;->idleAtNanos:J

    sub-long v4, p1, v10

    .line 256
    .local v4, "idleDurationNs":J
    cmp-long v7, v4, v8

    if-lez v7, :cond_c

    .line 257
    move-wide v8, v4

    .line 258
    move-object v6, v0

    .local v6, "longestIdleConnection":Lcom/android/okhttp/internal/io/RealConnection;
    goto :goto_c

    .line 262
    .end local v0    # "connection":Lcom/android/okhttp/internal/io/RealConnection;
    .end local v4    # "idleDurationNs":J
    .end local v6    # "longestIdleConnection":Lcom/android/okhttp/internal/io/RealConnection;
    :cond_2e
    iget-wide v10, p0, Lcom/android/okhttp/ConnectionPool;->keepAliveDurationNs:J

    cmp-long v7, v8, v10

    if-gez v7, :cond_38

    .line 263
    iget v7, p0, Lcom/android/okhttp/ConnectionPool;->maxIdleConnections:I

    if-le v2, v7, :cond_48

    .line 266
    :cond_38
    iget-object v7, p0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v7, v6}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z
    :try_end_3d
    .catchall {:try_start_6 .. :try_end_3d} :catchall_59

    monitor-exit p0

    .line 282
    invoke-virtual {v6}, Lcom/android/okhttp/internal/io/RealConnection;->getSocket()Ljava/net/Socket;

    move-result-object v7

    invoke-static {v7}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 285
    const-wide/16 v10, 0x0

    return-wide v10

    .line 268
    :cond_48
    if-lez v2, :cond_4f

    .line 270
    :try_start_4a
    iget-wide v10, p0, Lcom/android/okhttp/ConnectionPool;->keepAliveDurationNs:J
    :try_end_4c
    .catchall {:try_start_4a .. :try_end_4c} :catchall_59

    sub-long/2addr v10, v8

    monitor-exit p0

    return-wide v10

    .line 272
    :cond_4f
    if-lez v3, :cond_55

    .line 274
    :try_start_51
    iget-wide v10, p0, Lcom/android/okhttp/ConnectionPool;->keepAliveDurationNs:J
    :try_end_53
    .catchall {:try_start_51 .. :try_end_53} :catchall_59

    monitor-exit p0

    return-wide v10

    .line 278
    :cond_55
    const-wide/16 v10, -0x1

    monitor-exit p0

    return-wide v10

    .line 242
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/squareup/okhttp/internal/io/RealConnection;>;"
    :catchall_59
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method connectionBecameIdle(Lcom/android/okhttp/internal/io/RealConnection;)Z
    .registers 4
    .param p1, "connection"    # Lcom/android/okhttp/internal/io/RealConnection;

    .prologue
    const/4 v1, 0x0

    .line 199
    sget-boolean v0, Lcom/android/okhttp/ConnectionPool;->-assertionsDisabled:Z

    if-nez v0, :cond_11

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 200
    :cond_11
    iget-boolean v0, p1, Lcom/android/okhttp/internal/io/RealConnection;->noNewStreams:Z

    if-nez v0, :cond_19

    iget v0, p0, Lcom/android/okhttp/ConnectionPool;->maxIdleConnections:I

    if-nez v0, :cond_20

    .line 201
    :cond_19
    iget-object v0, p0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 202
    const/4 v0, 0x1

    return v0

    .line 204
    :cond_20
    invoke-virtual {p0}, Lcom/android/okhttp/ConnectionPool;->notifyAll()V

    .line 205
    return v1
.end method

.method public evictAll()V
    .registers 6

    .prologue
    .line 211
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .local v2, "evictedConnections":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/io/RealConnection;>;"
    monitor-enter p0

    .line 213
    :try_start_6
    iget-object v4, p0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/squareup/okhttp/internal/io/RealConnection;>;"
    :cond_c
    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 214
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/okhttp/internal/io/RealConnection;

    .line 215
    .local v0, "connection":Lcom/android/okhttp/internal/io/RealConnection;
    iget-object v4, v0, Lcom/android/okhttp/internal/io/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 216
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/android/okhttp/internal/io/RealConnection;->noNewStreams:Z

    .line 217
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_29
    .catchall {:try_start_6 .. :try_end_29} :catchall_2a

    goto :goto_c

    .line 212
    .end local v0    # "connection":Lcom/android/okhttp/internal/io/RealConnection;
    .end local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/squareup/okhttp/internal/io/RealConnection;>;"
    :catchall_2a
    move-exception v4

    monitor-exit p0

    throw v4

    .restart local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/squareup/okhttp/internal/io/RealConnection;>;"
    :cond_2d
    monitor-exit p0

    .line 223
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "connection$iterator":Ljava/util/Iterator;
    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/okhttp/internal/io/RealConnection;

    .line 224
    .restart local v0    # "connection":Lcom/android/okhttp/internal/io/RealConnection;
    invoke-virtual {v0}, Lcom/android/okhttp/internal/io/RealConnection;->getSocket()Ljava/net/Socket;

    move-result-object v4

    invoke-static {v4}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    goto :goto_32

    .line 226
    .end local v0    # "connection":Lcom/android/okhttp/internal/io/RealConnection;
    :cond_46
    return-void
.end method

.method get(Lcom/android/okhttp/Address;Lcom/android/okhttp/internal/http/StreamAllocation;)Lcom/android/okhttp/internal/io/RealConnection;
    .registers 7
    .param p1, "address"    # Lcom/android/okhttp/Address;
    .param p2, "streamAllocation"    # Lcom/android/okhttp/internal/http/StreamAllocation;

    .prologue
    .line 172
    sget-boolean v2, Lcom/android/okhttp/ConnectionPool;->-assertionsDisabled:Z

    if-nez v2, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 173
    :cond_10
    iget-object v2, p0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "connection$iterator":Ljava/util/Iterator;
    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/okhttp/internal/io/RealConnection;

    .line 176
    .local v0, "connection":Lcom/android/okhttp/internal/io/RealConnection;
    iget-object v2, v0, Lcom/android/okhttp/internal/io/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/okhttp/internal/io/RealConnection;->allocationLimit()I

    move-result v3

    if-ge v2, v3, :cond_16

    .line 177
    invoke-virtual {v0}, Lcom/android/okhttp/internal/io/RealConnection;->getRoute()Lcom/android/okhttp/Route;

    move-result-object v2

    iget-object v2, v2, Lcom/android/okhttp/Route;->address:Lcom/android/okhttp/Address;

    invoke-virtual {p1, v2}, Lcom/android/okhttp/Address;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 176
    if-eqz v2, :cond_16

    .line 178
    iget-boolean v2, v0, Lcom/android/okhttp/internal/io/RealConnection;->noNewStreams:Z

    xor-int/lit8 v2, v2, 0x1

    .line 176
    if-eqz v2, :cond_16

    .line 179
    invoke-virtual {p2, v0}, Lcom/android/okhttp/internal/http/StreamAllocation;->acquire(Lcom/android/okhttp/internal/io/RealConnection;)V

    .line 180
    return-object v0

    .line 183
    .end local v0    # "connection":Lcom/android/okhttp/internal/io/RealConnection;
    :cond_44
    const/4 v2, 0x0

    return-object v2
.end method

.method public declared-synchronized getConnectionCount()I
    .registers 2

    .prologue
    monitor-enter p0

    .line 147
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHttpConnectionCount()I
    .registers 3

    .prologue
    monitor-enter p0

    .line 167
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/okhttp/ConnectionPool;->getMultiplexedConnectionCount()I
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_e

    move-result v1

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getIdleConnectionCount()I
    .registers 5

    .prologue
    monitor-enter p0

    .line 133
    const/4 v2, 0x0

    .line 134
    .local v2, "total":I
    :try_start_2
    iget-object v3, p0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "connection$iterator":Ljava/util/Iterator;
    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/okhttp/internal/io/RealConnection;

    .line 135
    .local v0, "connection":Lcom/android/okhttp/internal/io/RealConnection;
    iget-object v3, v0, Lcom/android/okhttp/internal/io/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_21

    move-result v3

    if-eqz v3, :cond_8

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .end local v0    # "connection":Lcom/android/okhttp/internal/io/RealConnection;
    :cond_1f
    monitor-exit p0

    .line 137
    return v2

    .end local v1    # "connection$iterator":Ljava/util/Iterator;
    :catchall_21
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getMultiplexedConnectionCount()I
    .registers 5

    .prologue
    monitor-enter p0

    .line 158
    const/4 v2, 0x0

    .line 159
    .local v2, "total":I
    :try_start_2
    iget-object v3, p0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "connection$iterator":Ljava/util/Iterator;
    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/okhttp/internal/io/RealConnection;

    .line 160
    .local v0, "connection":Lcom/android/okhttp/internal/io/RealConnection;
    invoke-virtual {v0}, Lcom/android/okhttp/internal/io/RealConnection;->isMultiplexed()Z
    :try_end_17
    .catchall {:try_start_2 .. :try_end_17} :catchall_1f

    move-result v3

    if-eqz v3, :cond_8

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .end local v0    # "connection":Lcom/android/okhttp/internal/io/RealConnection;
    :cond_1d
    monitor-exit p0

    .line 162
    return v2

    .end local v1    # "connection$iterator":Ljava/util/Iterator;
    :catchall_1f
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getSpdyConnectionCount()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    monitor-enter p0

    .line 153
    :try_start_1
    invoke-virtual {p0}, Lcom/android/okhttp/ConnectionPool;->getMultiplexedConnectionCount()I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method put(Lcom/android/okhttp/internal/io/RealConnection;)V
    .registers 4
    .param p1, "connection"    # Lcom/android/okhttp/internal/io/RealConnection;

    .prologue
    .line 187
    sget-boolean v0, Lcom/android/okhttp/ConnectionPool;->-assertionsDisabled:Z

    if-nez v0, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 188
    :cond_10
    iget-object v0, p0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 189
    iget-object v0, p0, Lcom/android/okhttp/ConnectionPool;->executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/android/okhttp/ConnectionPool;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 191
    :cond_1f
    iget-object v0, p0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 192
    return-void
.end method

.method setCleanupRunnableForTest(Ljava/lang/Runnable;)V
    .registers 2
    .param p1, "cleanupRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/android/okhttp/ConnectionPool;->cleanupRunnable:Ljava/lang/Runnable;

    .line 322
    return-void
.end method
