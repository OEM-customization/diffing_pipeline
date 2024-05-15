.class public final Lcom/android/okhttp/internal/http/StreamAllocation;
.super Ljava/lang/Object;
.source "StreamAllocation.java"


# instance fields
.field public final address:Lcom/android/okhttp/Address;

.field private canceled:Z

.field private connection:Lcom/android/okhttp/internal/io/RealConnection;

.field private final connectionPool:Lcom/android/okhttp/ConnectionPool;

.field private released:Z

.field private routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

.field private stream:Lcom/android/okhttp/internal/http/HttpStream;


# direct methods
.method public constructor <init>(Lcom/android/okhttp/ConnectionPool;Lcom/android/okhttp/Address;)V
    .registers 3
    .param p1, "connectionPool"    # Lcom/android/okhttp/ConnectionPool;
    .param p2, "address"    # Lcom/android/okhttp/Address;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    .line 88
    iput-object p2, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->address:Lcom/android/okhttp/Address;

    .line 89
    return-void
.end method

.method private connectionFailed(Ljava/io/IOException;)V
    .registers 5
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 276
    iget-object v2, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    monitor-enter v2

    .line 277
    :try_start_3
    iget-object v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

    if-eqz v1, :cond_18

    .line 278
    iget-object v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    iget v1, v1, Lcom/android/okhttp/internal/io/RealConnection;->streamCount:I

    if-nez v1, :cond_1d

    .line 280
    iget-object v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    invoke-virtual {v1}, Lcom/android/okhttp/internal/io/RealConnection;->getRoute()Lcom/android/okhttp/Route;

    move-result-object v0

    .line 281
    .local v0, "failedRoute":Lcom/android/okhttp/Route;
    iget-object v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

    invoke-virtual {v1, v0, p1}, Lcom/android/okhttp/internal/http/RouteSelector;->connectFailed(Lcom/android/okhttp/Route;Ljava/io/IOException;)V
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_21

    .end local v0    # "failedRoute":Lcom/android/okhttp/Route;
    :cond_18
    :goto_18
    monitor-exit v2

    .line 288
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionFailed()V

    .line 289
    return-void

    .line 284
    :cond_1d
    const/4 v1, 0x0

    :try_start_1e
    iput-object v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;
    :try_end_20
    .catchall {:try_start_1e .. :try_end_20} :catchall_21

    goto :goto_18

    .line 276
    :catchall_21
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private deallocate(ZZZ)V
    .registers 10
    .param p1, "noNewStreams"    # Z
    .param p2, "released"    # Z
    .param p3, "streamFinished"    # Z

    .prologue
    .line 228
    const/4 v0, 0x0

    .line 229
    .local v0, "connectionToClose":Lcom/android/okhttp/internal/io/RealConnection;
    iget-object v2, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    monitor-enter v2

    .line 230
    if-eqz p3, :cond_9

    .line 231
    const/4 v1, 0x0

    :try_start_7
    iput-object v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->stream:Lcom/android/okhttp/internal/http/HttpStream;

    .line 233
    :cond_9
    if-eqz p2, :cond_e

    .line 234
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->released:Z

    .line 236
    :cond_e
    iget-object v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    if-eqz v1, :cond_58

    .line 237
    if-eqz p1, :cond_19

    .line 238
    iget-object v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/okhttp/internal/io/RealConnection;->noNewStreams:Z

    .line 240
    :cond_19
    iget-object v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->stream:Lcom/android/okhttp/internal/http/HttpStream;

    if-nez v1, :cond_58

    iget-boolean v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->released:Z

    if-nez v1, :cond_27

    iget-object v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    iget-boolean v1, v1, Lcom/android/okhttp/internal/io/RealConnection;->noNewStreams:Z

    if-eqz v1, :cond_58

    .line 241
    :cond_27
    iget-object v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    invoke-direct {p0, v1}, Lcom/android/okhttp/internal/http/StreamAllocation;->release(Lcom/android/okhttp/internal/io/RealConnection;)V

    .line 242
    iget-object v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    iget v1, v1, Lcom/android/okhttp/internal/io/RealConnection;->streamCount:I

    if-lez v1, :cond_35

    .line 243
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

    .line 245
    :cond_35
    iget-object v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    iget-object v1, v1, Lcom/android/okhttp/internal/io/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 246
    iget-object v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/okhttp/internal/io/RealConnection;->idleAtNanos:J

    .line 247
    sget-object v1, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    iget-object v3, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    iget-object v4, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    invoke-virtual {v1, v3, v4}, Lcom/android/okhttp/internal/Internal;->connectionBecameIdle(Lcom/android/okhttp/ConnectionPool;Lcom/android/okhttp/internal/io/RealConnection;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 248
    iget-object v0, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    .line 251
    .end local v0    # "connectionToClose":Lcom/android/okhttp/internal/io/RealConnection;
    :cond_55
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;
    :try_end_58
    .catchall {:try_start_7 .. :try_end_58} :catchall_63

    :cond_58
    monitor-exit v2

    .line 255
    if-eqz v0, :cond_62

    .line 256
    invoke-virtual {v0}, Lcom/android/okhttp/internal/io/RealConnection;->getSocket()Ljava/net/Socket;

    move-result-object v1

    invoke-static {v1}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 258
    :cond_62
    return-void

    .line 229
    :catchall_63
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private findConnection(IIIZ)Lcom/android/okhttp/internal/io/RealConnection;
    .registers 14
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p4, "connectionRetryEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/okhttp/internal/http/RouteException;
        }
    .end annotation

    .prologue
    .line 151
    iget-object v2, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    monitor-enter v2

    .line 152
    :try_start_3
    iget-boolean v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->released:Z

    if-eqz v1, :cond_13

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "released"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_10

    .line 151
    :catchall_10
    move-exception v1

    monitor-exit v2

    throw v1

    .line 153
    :cond_13
    :try_start_13
    iget-object v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->stream:Lcom/android/okhttp/internal/http/HttpStream;

    if-eqz v1, :cond_20

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "stream != null"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 154
    :cond_20
    iget-boolean v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->canceled:Z

    if-eqz v1, :cond_2d

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v3, "Canceled"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 156
    :cond_2d
    iget-object v6, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    .line 157
    .local v6, "allocatedConnection":Lcom/android/okhttp/internal/io/RealConnection;
    if-eqz v6, :cond_39

    iget-boolean v1, v6, Lcom/android/okhttp/internal/io/RealConnection;->noNewStreams:Z
    :try_end_33
    .catchall {:try_start_13 .. :try_end_33} :catchall_10

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_39

    monitor-exit v2

    .line 158
    return-object v6

    .line 162
    :cond_39
    :try_start_39
    sget-object v1, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    iget-object v3, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    iget-object v4, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->address:Lcom/android/okhttp/Address;

    invoke-virtual {v1, v3, v4, p0}, Lcom/android/okhttp/internal/Internal;->get(Lcom/android/okhttp/ConnectionPool;Lcom/android/okhttp/Address;Lcom/android/okhttp/internal/http/StreamAllocation;)Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v7

    .line 163
    .local v7, "pooledConnection":Lcom/android/okhttp/internal/io/RealConnection;
    if-eqz v7, :cond_49

    .line 164
    iput-object v7, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;
    :try_end_47
    .catchall {:try_start_39 .. :try_end_47} :catchall_10

    monitor-exit v2

    .line 165
    return-object v7

    .line 169
    :cond_49
    :try_start_49
    iget-object v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

    if-nez v1, :cond_5a

    .line 170
    new-instance v1, Lcom/android/okhttp/internal/http/RouteSelector;

    iget-object v3, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->address:Lcom/android/okhttp/Address;

    invoke-direct {p0}, Lcom/android/okhttp/internal/http/StreamAllocation;->routeDatabase()Lcom/android/okhttp/internal/RouteDatabase;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/android/okhttp/internal/http/RouteSelector;-><init>(Lcom/android/okhttp/Address;Lcom/android/okhttp/internal/RouteDatabase;)V

    iput-object v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;
    :try_end_5a
    .catchall {:try_start_49 .. :try_end_5a} :catchall_10

    :cond_5a
    monitor-exit v2

    .line 174
    iget-object v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/RouteSelector;->next()Lcom/android/okhttp/Route;

    move-result-object v8

    .line 175
    .local v8, "route":Lcom/android/okhttp/Route;
    new-instance v0, Lcom/android/okhttp/internal/io/RealConnection;

    invoke-direct {v0, v8}, Lcom/android/okhttp/internal/io/RealConnection;-><init>(Lcom/android/okhttp/Route;)V

    .line 176
    .local v0, "newConnection":Lcom/android/okhttp/internal/io/RealConnection;
    invoke-virtual {p0, v0}, Lcom/android/okhttp/internal/http/StreamAllocation;->acquire(Lcom/android/okhttp/internal/io/RealConnection;)V

    .line 178
    iget-object v2, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    monitor-enter v2

    .line 179
    :try_start_6c
    sget-object v1, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    iget-object v3, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    invoke-virtual {v1, v3, v0}, Lcom/android/okhttp/internal/Internal;->put(Lcom/android/okhttp/ConnectionPool;Lcom/android/okhttp/internal/io/RealConnection;)V

    .line 180
    iput-object v0, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    .line 181
    iget-boolean v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->canceled:Z

    if-eqz v1, :cond_85

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v3, "Canceled"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_82
    .catchall {:try_start_6c .. :try_end_82} :catchall_82

    .line 178
    :catchall_82
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_85
    monitor-exit v2

    .line 184
    iget-object v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->address:Lcom/android/okhttp/Address;

    invoke-virtual {v1}, Lcom/android/okhttp/Address;->getConnectionSpecs()Ljava/util/List;

    move-result-object v4

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/okhttp/internal/io/RealConnection;->connect(IIILjava/util/List;Z)V

    .line 186
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/StreamAllocation;->routeDatabase()Lcom/android/okhttp/internal/RouteDatabase;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/okhttp/internal/io/RealConnection;->getRoute()Lcom/android/okhttp/Route;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/RouteDatabase;->connected(Lcom/android/okhttp/Route;)V

    .line 188
    return-object v0
.end method

.method private findHealthyConnection(IIIZZ)Lcom/android/okhttp/internal/io/RealConnection;
    .registers 9
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p4, "connectionRetryEnabled"    # Z
    .param p5, "doExtensiveHealthChecks"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/okhttp/internal/http/RouteException;
        }
    .end annotation

    .prologue
    .line 126
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/okhttp/internal/http/StreamAllocation;->findConnection(IIIZ)Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v0

    .line 130
    .local v0, "candidate":Lcom/android/okhttp/internal/io/RealConnection;
    iget-object v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    monitor-enter v1

    .line 131
    :try_start_7
    iget v2, v0, Lcom/android/okhttp/internal/io/RealConnection;->streamCount:I
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_15

    if-nez v2, :cond_d

    monitor-exit v1

    .line 132
    return-object v0

    :cond_d
    monitor-exit v1

    .line 137
    invoke-virtual {v0, p5}, Lcom/android/okhttp/internal/io/RealConnection;->isHealthy(Z)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 138
    return-object v0

    .line 130
    :catchall_15
    move-exception v2

    monitor-exit v1

    throw v2

    .line 141
    :cond_18
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionFailed()V

    goto :goto_0
.end method

.method private isRecoverable(Lcom/android/okhttp/internal/http/RouteException;)Z
    .registers 5
    .param p1, "e"    # Lcom/android/okhttp/internal/http/RouteException;

    .prologue
    const/4 v2, 0x0

    .line 374
    invoke-virtual {p1}, Lcom/android/okhttp/internal/http/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v0

    .line 377
    .local v0, "ioe":Ljava/io/IOException;
    instance-of v1, v0, Ljava/net/ProtocolException;

    if-eqz v1, :cond_a

    .line 378
    return v2

    .line 383
    :cond_a
    instance-of v1, v0, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_11

    .line 384
    instance-of v1, v0, Ljava/net/SocketTimeoutException;

    return v1

    .line 389
    :cond_11
    instance-of v1, v0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v1, :cond_1e

    .line 392
    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/security/cert/CertificateException;

    if-eqz v1, :cond_1e

    .line 393
    return v2

    .line 396
    :cond_1e
    instance-of v1, v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v1, :cond_23

    .line 398
    return v2

    .line 404
    :cond_23
    const/4 v1, 0x1

    return v1
.end method

.method private isRecoverable(Ljava/io/IOException;)Z
    .registers 4
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    const/4 v1, 0x0

    .line 357
    instance-of v0, p1, Ljava/net/ProtocolException;

    if-eqz v0, :cond_6

    .line 358
    return v1

    .line 362
    :cond_6
    instance-of v0, p1, Ljava/io/InterruptedIOException;

    if-eqz v0, :cond_b

    .line 363
    return v1

    .line 366
    :cond_b
    const/4 v0, 0x1

    return v0
.end method

.method private release(Lcom/android/okhttp/internal/io/RealConnection;)V
    .registers 6
    .param p1, "connection"    # Lcom/android/okhttp/internal/io/RealConnection;

    .prologue
    .line 306
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p1, Lcom/android/okhttp/internal/io/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_7
    if-ge v0, v2, :cond_20

    .line 307
    iget-object v3, p1, Lcom/android/okhttp/internal/io/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/Reference;

    .line 308
    .local v1, "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lcom/squareup/okhttp/internal/http/StreamAllocation;>;"
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_1d

    .line 309
    iget-object v3, p1, Lcom/android/okhttp/internal/io/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 310
    return-void

    .line 306
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 313
    .end local v1    # "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lcom/squareup/okhttp/internal/http/StreamAllocation;>;"
    :cond_20
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3
.end method

.method private routeDatabase()Lcom/android/okhttp/internal/RouteDatabase;
    .registers 3

    .prologue
    .line 207
    sget-object v0, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    iget-object v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/Internal;->routeDatabase(Lcom/android/okhttp/ConnectionPool;)Lcom/android/okhttp/internal/RouteDatabase;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public acquire(Lcom/android/okhttp/internal/io/RealConnection;)V
    .registers 4
    .param p1, "connection"    # Lcom/android/okhttp/internal/io/RealConnection;

    .prologue
    .line 301
    iget-object v0, p1, Lcom/android/okhttp/internal/io/RealConnection;->allocations:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    return-void
.end method

.method public cancel()V
    .registers 5

    .prologue
    .line 263
    iget-object v3, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    monitor-enter v3

    .line 264
    const/4 v2, 0x1

    :try_start_4
    iput-boolean v2, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->canceled:Z

    .line 265
    iget-object v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->stream:Lcom/android/okhttp/internal/http/HttpStream;

    .line 266
    .local v1, "streamToCancel":Lcom/android/okhttp/internal/http/HttpStream;
    iget-object v0, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_11

    .local v0, "connectionToCancel":Lcom/android/okhttp/internal/io/RealConnection;
    monitor-exit v3

    .line 268
    if-eqz v1, :cond_14

    .line 269
    invoke-interface {v1}, Lcom/android/okhttp/internal/http/HttpStream;->cancel()V

    .line 273
    :cond_10
    :goto_10
    return-void

    .line 263
    .end local v0    # "connectionToCancel":Lcom/android/okhttp/internal/io/RealConnection;
    .end local v1    # "streamToCancel":Lcom/android/okhttp/internal/http/HttpStream;
    :catchall_11
    move-exception v2

    monitor-exit v3

    throw v2

    .line 270
    .restart local v0    # "connectionToCancel":Lcom/android/okhttp/internal/io/RealConnection;
    .restart local v1    # "streamToCancel":Lcom/android/okhttp/internal/http/HttpStream;
    :cond_14
    if-eqz v0, :cond_10

    .line 271
    invoke-virtual {v0}, Lcom/android/okhttp/internal/io/RealConnection;->cancel()V

    goto :goto_10
.end method

.method public declared-synchronized connection()Lcom/android/okhttp/internal/io/RealConnection;
    .registers 2

    .prologue
    monitor-enter p0

    .line 211
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public connectionFailed()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 293
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, v1}, Lcom/android/okhttp/internal/http/StreamAllocation;->deallocate(ZZZ)V

    .line 294
    return-void
.end method

.method public newStream(IIIZZ)Lcom/android/okhttp/internal/http/HttpStream;
    .registers 13
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p4, "connectionRetryEnabled"    # Z
    .param p5, "doExtensiveHealthChecks"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/okhttp/internal/http/RouteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/android/okhttp/internal/http/StreamAllocation;->findHealthyConnection(IIIZZ)Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v1

    .line 99
    .local v1, "resultConnection":Lcom/android/okhttp/internal/io/RealConnection;
    iget-object v3, v1, Lcom/android/okhttp/internal/io/RealConnection;->framedConnection:Lcom/android/okhttp/internal/framed/FramedConnection;

    if-eqz v3, :cond_1c

    .line 100
    new-instance v2, Lcom/android/okhttp/internal/http/Http2xStream;

    iget-object v3, v1, Lcom/android/okhttp/internal/io/RealConnection;->framedConnection:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-direct {v2, p0, v3}, Lcom/android/okhttp/internal/http/Http2xStream;-><init>(Lcom/android/okhttp/internal/http/StreamAllocation;Lcom/android/okhttp/internal/framed/FramedConnection;)V

    .line 108
    .local v2, "resultStream":Lcom/android/okhttp/internal/http/HttpStream;
    :goto_f
    iget-object v4, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    monitor-enter v4
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_12} :catch_48

    .line 109
    :try_start_12
    iget v3, v1, Lcom/android/okhttp/internal/io/RealConnection;->streamCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lcom/android/okhttp/internal/io/RealConnection;->streamCount:I

    .line 110
    iput-object v2, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->stream:Lcom/android/okhttp/internal/http/HttpStream;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_45

    :try_start_1a
    monitor-exit v4

    .line 111
    return-object v2

    .line 102
    .end local v2    # "resultStream":Lcom/android/okhttp/internal/http/HttpStream;
    :cond_1c
    invoke-virtual {v1}, Lcom/android/okhttp/internal/io/RealConnection;->getSocket()Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 103
    iget-object v3, v1, Lcom/android/okhttp/internal/io/RealConnection;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v3}, Lcom/android/okhttp/okio/BufferedSource;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object v3

    int-to-long v4, p2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/okhttp/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/okhttp/okio/Timeout;

    .line 104
    iget-object v3, v1, Lcom/android/okhttp/internal/io/RealConnection;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v3}, Lcom/android/okhttp/okio/BufferedSink;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object v3

    int-to-long v4, p3

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/okhttp/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/okhttp/okio/Timeout;

    .line 105
    new-instance v2, Lcom/android/okhttp/internal/http/Http1xStream;

    iget-object v3, v1, Lcom/android/okhttp/internal/io/RealConnection;->source:Lcom/android/okhttp/okio/BufferedSource;

    iget-object v4, v1, Lcom/android/okhttp/internal/io/RealConnection;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/okhttp/internal/http/Http1xStream;-><init>(Lcom/android/okhttp/internal/http/StreamAllocation;Lcom/android/okhttp/okio/BufferedSource;Lcom/android/okhttp/okio/BufferedSink;)V

    .restart local v2    # "resultStream":Lcom/android/okhttp/internal/http/HttpStream;
    goto :goto_f

    .line 108
    :catchall_45
    move-exception v3

    monitor-exit v4

    throw v3
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_48} :catch_48

    .line 113
    .end local v1    # "resultConnection":Lcom/android/okhttp/internal/io/RealConnection;
    .end local v2    # "resultStream":Lcom/android/okhttp/internal/http/HttpStream;
    :catch_48
    move-exception v0

    .line 114
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Lcom/android/okhttp/internal/http/RouteException;

    invoke-direct {v3, v0}, Lcom/android/okhttp/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    throw v3
.end method

.method public noNewStreams()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 220
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1, v1}, Lcom/android/okhttp/internal/http/StreamAllocation;->deallocate(ZZZ)V

    .line 221
    return-void
.end method

.method public recover(Lcom/android/okhttp/internal/http/RouteException;)Z
    .registers 4
    .param p1, "e"    # Lcom/android/okhttp/internal/http/RouteException;

    .prologue
    const/4 v1, 0x0

    .line 318
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->canceled:Z

    if-eqz v0, :cond_6

    .line 319
    return v1

    .line 321
    :cond_6
    iget-object v0, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    if-eqz v0, :cond_11

    .line 322
    invoke-virtual {p1}, Lcom/android/okhttp/internal/http/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionFailed(Ljava/io/IOException;)V

    .line 325
    :cond_11
    iget-object v0, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/RouteSelector;->hasNext()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_27

    .line 326
    :cond_1f
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/http/StreamAllocation;->isRecoverable(Lcom/android/okhttp/internal/http/RouteException;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 325
    if-eqz v0, :cond_28

    .line 327
    :cond_27
    return v1

    .line 330
    :cond_28
    const/4 v0, 0x1

    return v0
.end method

.method public recover(Ljava/io/IOException;Lcom/android/okhttp/okio/Sink;)Z
    .registers 8
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "requestBodyOut"    # Lcom/android/okhttp/okio/Sink;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 334
    iget-object v2, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    if-eqz v2, :cond_10

    .line 335
    iget-object v2, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    iget v1, v2, Lcom/android/okhttp/internal/io/RealConnection;->streamCount:I

    .line 336
    .local v1, "streamCount":I
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionFailed(Ljava/io/IOException;)V

    .line 338
    if-ne v1, v4, :cond_10

    .line 341
    return v3

    .line 345
    .end local v1    # "streamCount":I
    :cond_10
    if-eqz p2, :cond_2f

    instance-of v0, p2, Lcom/android/okhttp/internal/http/RetryableSink;

    .line 346
    :goto_14
    iget-object v2, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/RouteSelector;->hasNext()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_2e

    .line 347
    :cond_22
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/http/StreamAllocation;->isRecoverable(Ljava/io/IOException;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 346
    if-nez v2, :cond_2e

    .line 348
    xor-int/lit8 v2, v0, 0x1

    .line 346
    if-eqz v2, :cond_31

    .line 349
    :cond_2e
    return v3

    .line 345
    :cond_2f
    const/4 v0, 0x1

    .local v0, "canRetryRequestBody":Z
    goto :goto_14

    .line 352
    .end local v0    # "canRetryRequestBody":Z
    :cond_31
    return v4
.end method

.method public release()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 215
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0, v1}, Lcom/android/okhttp/internal/http/StreamAllocation;->deallocate(ZZZ)V

    .line 216
    return-void
.end method

.method public stream()Lcom/android/okhttp/internal/http/HttpStream;
    .registers 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    monitor-enter v0

    .line 202
    :try_start_3
    iget-object v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->stream:Lcom/android/okhttp/internal/http/HttpStream;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    .line 201
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public streamFinished(Lcom/android/okhttp/internal/http/HttpStream;)V
    .registers 6
    .param p1, "stream"    # Lcom/android/okhttp/internal/http/HttpStream;

    .prologue
    const/4 v2, 0x0

    .line 192
    iget-object v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    monitor-enter v1

    .line 193
    if-eqz p1, :cond_a

    :try_start_6
    iget-object v0, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->stream:Lcom/android/okhttp/internal/http/HttpStream;

    if-eq p1, v0, :cond_34

    .line 194
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->stream:Lcom/android/okhttp/internal/http/HttpStream;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_31
    .catchall {:try_start_6 .. :try_end_31} :catchall_31

    .line 192
    :catchall_31
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_34
    monitor-exit v1

    .line 197
    const/4 v0, 0x1

    invoke-direct {p0, v2, v2, v0}, Lcom/android/okhttp/internal/http/StreamAllocation;->deallocate(ZZZ)V

    .line 198
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->address:Lcom/android/okhttp/Address;

    invoke-virtual {v0}, Lcom/android/okhttp/Address;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
