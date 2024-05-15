.class public final Lcom/android/okhttp/internal/http/StreamAllocation;
.super Ljava/lang/Object;
.source "StreamAllocation.java"


# instance fields
.field public final greylist-max-o address:Lcom/android/okhttp/Address;

.field private greylist-max-o canceled:Z

.field private greylist-max-o connection:Lcom/android/okhttp/internal/io/RealConnection;

.field private final greylist-max-o connectionPool:Lcom/android/okhttp/ConnectionPool;

.field private greylist-max-o released:Z

.field private greylist-max-o routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

.field private greylist-max-o stream:Lcom/android/okhttp/internal/http/HttpStream;


# direct methods
.method public constructor greylist-max-o <init>(Lcom/android/okhttp/ConnectionPool;Lcom/android/okhttp/Address;)V
    .registers 3
    .param p1, "connectionPool"    # Lcom/android/okhttp/ConnectionPool;
    .param p2, "address"    # Lcom/android/okhttp/Address;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    .line 90
    iput-object p2, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->address:Lcom/android/okhttp/Address;

    .line 91
    return-void
.end method

.method private greylist-max-o connectionFailed(Ljava/io/IOException;)V
    .registers 5
    .param p1, "e"    # Ljava/io/IOException;

    .line 278
    iget-object v0, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    monitor-enter v0

    .line 279
    :try_start_3
    iget-object v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

    if-eqz v1, :cond_1c

    .line 280
    iget-object v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    iget v1, v1, Lcom/android/okhttp/internal/io/RealConnection;->streamCount:I

    if-nez v1, :cond_19

    .line 282
    iget-object v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    invoke-virtual {v1}, Lcom/android/okhttp/internal/io/RealConnection;->getRoute()Lcom/android/okhttp/Route;

    move-result-object v1

    .line 283
    .local v1, "failedRoute":Lcom/android/okhttp/Route;
    iget-object v2, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

    invoke-virtual {v2, v1, p1}, Lcom/android/okhttp/internal/http/RouteSelector;->connectFailed(Lcom/android/okhttp/Route;Ljava/io/IOException;)V

    .line 284
    .end local v1    # "failedRoute":Lcom/android/okhttp/Route;
    goto :goto_1c

    .line 286
    :cond_19
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

    .line 289
    :cond_1c
    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_21

    .line 290
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionFailed()V

    .line 291
    return-void

    .line 289
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v1
.end method

.method private greylist-max-o deallocate(ZZZ)V
    .registers 10
    .param p1, "noNewStreams"    # Z
    .param p2, "released"    # Z
    .param p3, "streamFinished"    # Z

    .line 230
    const/4 v0, 0x0

    .line 231
    .local v0, "connectionToClose":Lcom/android/okhttp/internal/io/RealConnection;
    iget-object v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    monitor-enter v1

    .line 232
    const/4 v2, 0x0

    if-eqz p3, :cond_c

    .line 233
    :try_start_7
    iput-object v2, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->stream:Lcom/android/okhttp/internal/http/HttpStream;

    goto :goto_c

    .line 256
    :catchall_a
    move-exception v2

    goto :goto_62

    .line 235
    :cond_c
    :goto_c
    const/4 v3, 0x1

    if-eqz p2, :cond_11

    .line 236
    iput-boolean v3, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->released:Z

    .line 238
    :cond_11
    iget-object v4, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    if-eqz v4, :cond_57

    .line 239
    if-eqz p1, :cond_19

    .line 240
    iput-boolean v3, v4, Lcom/android/okhttp/internal/io/RealConnection;->noNewStreams:Z

    .line 242
    :cond_19
    iget-object v3, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->stream:Lcom/android/okhttp/internal/http/HttpStream;

    if-nez v3, :cond_57

    iget-boolean v3, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->released:Z

    if-nez v3, :cond_27

    iget-object v3, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    iget-boolean v3, v3, Lcom/android/okhttp/internal/io/RealConnection;->noNewStreams:Z

    if-eqz v3, :cond_57

    .line 243
    :cond_27
    iget-object v3, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    invoke-direct {p0, v3}, Lcom/android/okhttp/internal/http/StreamAllocation;->release(Lcom/android/okhttp/internal/io/RealConnection;)V

    .line 244
    iget-object v3, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    iget v3, v3, Lcom/android/okhttp/internal/io/RealConnection;->streamCount:I

    if-lez v3, :cond_34

    .line 245
    iput-object v2, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

    .line 247
    :cond_34
    iget-object v3, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    iget-object v3, v3, Lcom/android/okhttp/internal/io/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_55

    .line 248
    iget-object v3, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/okhttp/internal/io/RealConnection;->idleAtNanos:J

    .line 249
    sget-object v3, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    iget-object v4, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    iget-object v5, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    invoke-virtual {v3, v4, v5}, Lcom/android/okhttp/internal/Internal;->connectionBecameIdle(Lcom/android/okhttp/ConnectionPool;Lcom/android/okhttp/internal/io/RealConnection;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 250
    iget-object v3, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    move-object v0, v3

    .line 253
    :cond_55
    iput-object v2, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    .line 256
    :cond_57
    monitor-exit v1
    :try_end_58
    .catchall {:try_start_7 .. :try_end_58} :catchall_a

    .line 257
    if-eqz v0, :cond_61

    .line 258
    invoke-virtual {v0}, Lcom/android/okhttp/internal/io/RealConnection;->getSocket()Ljava/net/Socket;

    move-result-object v1

    invoke-static {v1}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 260
    :cond_61
    return-void

    .line 256
    :goto_62
    :try_start_62
    monitor-exit v1
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_a

    throw v2
.end method

.method private greylist-max-o findConnection(IIIZ)Lcom/android/okhttp/internal/io/RealConnection;
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

    .line 153
    iget-object v0, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    monitor-enter v0

    .line 154
    :try_start_3
    iget-boolean v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->released:Z

    if-nez v1, :cond_90

    .line 155
    iget-object v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->stream:Lcom/android/okhttp/internal/http/HttpStream;

    if-nez v1, :cond_88

    .line 156
    iget-boolean v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->canceled:Z

    if-nez v1, :cond_80

    .line 158
    iget-object v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    .line 159
    .local v1, "allocatedConnection":Lcom/android/okhttp/internal/io/RealConnection;
    if-eqz v1, :cond_19

    iget-boolean v2, v1, Lcom/android/okhttp/internal/io/RealConnection;->noNewStreams:Z

    if-nez v2, :cond_19

    .line 160
    monitor-exit v0

    return-object v1

    .line 164
    :cond_19
    sget-object v2, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    iget-object v3, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    iget-object v4, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->address:Lcom/android/okhttp/Address;

    invoke-virtual {v2, v3, v4, p0}, Lcom/android/okhttp/internal/Internal;->get(Lcom/android/okhttp/ConnectionPool;Lcom/android/okhttp/Address;Lcom/android/okhttp/internal/http/StreamAllocation;)Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v2

    .line 165
    .local v2, "pooledConnection":Lcom/android/okhttp/internal/io/RealConnection;
    if-eqz v2, :cond_29

    .line 166
    iput-object v2, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    .line 167
    monitor-exit v0

    return-object v2

    .line 171
    :cond_29
    iget-object v3, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

    if-nez v3, :cond_3a

    .line 172
    new-instance v3, Lcom/android/okhttp/internal/http/RouteSelector;

    iget-object v4, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->address:Lcom/android/okhttp/Address;

    invoke-direct {p0}, Lcom/android/okhttp/internal/http/StreamAllocation;->routeDatabase()Lcom/android/okhttp/internal/RouteDatabase;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/okhttp/internal/http/RouteSelector;-><init>(Lcom/android/okhttp/Address;Lcom/android/okhttp/internal/RouteDatabase;)V

    iput-object v3, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

    .line 174
    .end local v1    # "allocatedConnection":Lcom/android/okhttp/internal/io/RealConnection;
    .end local v2    # "pooledConnection":Lcom/android/okhttp/internal/io/RealConnection;
    :cond_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_98

    .line 176
    iget-object v0, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/RouteSelector;->next()Lcom/android/okhttp/Route;

    move-result-object v1

    .line 177
    .local v1, "route":Lcom/android/okhttp/Route;
    new-instance v0, Lcom/android/okhttp/internal/io/RealConnection;

    invoke-direct {v0, v1}, Lcom/android/okhttp/internal/io/RealConnection;-><init>(Lcom/android/okhttp/Route;)V

    move-object v8, v0

    .line 178
    .local v8, "newConnection":Lcom/android/okhttp/internal/io/RealConnection;
    invoke-virtual {p0, v8}, Lcom/android/okhttp/internal/http/StreamAllocation;->acquire(Lcom/android/okhttp/internal/io/RealConnection;)V

    .line 180
    iget-object v2, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    monitor-enter v2

    .line 181
    :try_start_4d
    sget-object v0, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    iget-object v3, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    invoke-virtual {v0, v3, v8}, Lcom/android/okhttp/internal/Internal;->put(Lcom/android/okhttp/ConnectionPool;Lcom/android/okhttp/internal/io/RealConnection;)V

    .line 182
    iput-object v8, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    .line 183
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->canceled:Z

    if-nez v0, :cond_75

    .line 184
    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_4d .. :try_end_5b} :catchall_7d

    .line 186
    iget-object v0, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->address:Lcom/android/okhttp/Address;

    invoke-virtual {v0}, Lcom/android/okhttp/Address;->getConnectionSpecs()Ljava/util/List;

    move-result-object v6

    move-object v2, v8

    move v3, p1

    move v4, p2

    move v5, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/okhttp/internal/io/RealConnection;->connect(IIILjava/util/List;Z)V

    .line 188
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/StreamAllocation;->routeDatabase()Lcom/android/okhttp/internal/RouteDatabase;

    move-result-object v0

    invoke-virtual {v8}, Lcom/android/okhttp/internal/io/RealConnection;->getRoute()Lcom/android/okhttp/Route;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/RouteDatabase;->connected(Lcom/android/okhttp/Route;)V

    .line 190
    return-object v8

    .line 183
    :cond_75
    :try_start_75
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "route":Lcom/android/okhttp/Route;
    .end local v8    # "newConnection":Lcom/android/okhttp/internal/io/RealConnection;
    .end local p0    # "this":Lcom/android/okhttp/internal/http/StreamAllocation;
    .end local p1    # "connectTimeout":I
    .end local p2    # "readTimeout":I
    .end local p3    # "writeTimeout":I
    .end local p4    # "connectionRetryEnabled":Z
    throw v0

    .line 184
    .restart local v1    # "route":Lcom/android/okhttp/Route;
    .restart local v8    # "newConnection":Lcom/android/okhttp/internal/io/RealConnection;
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/StreamAllocation;
    .restart local p1    # "connectTimeout":I
    .restart local p2    # "readTimeout":I
    .restart local p3    # "writeTimeout":I
    .restart local p4    # "connectionRetryEnabled":Z
    :catchall_7d
    move-exception v0

    monitor-exit v2
    :try_end_7f
    .catchall {:try_start_75 .. :try_end_7f} :catchall_7d

    throw v0

    .line 156
    .end local v1    # "route":Lcom/android/okhttp/Route;
    .end local v8    # "newConnection":Lcom/android/okhttp/internal/io/RealConnection;
    :cond_80
    :try_start_80
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/okhttp/internal/http/StreamAllocation;
    .end local p1    # "connectTimeout":I
    .end local p2    # "readTimeout":I
    .end local p3    # "writeTimeout":I
    .end local p4    # "connectionRetryEnabled":Z
    throw v1

    .line 155
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/StreamAllocation;
    .restart local p1    # "connectTimeout":I
    .restart local p2    # "readTimeout":I
    .restart local p3    # "writeTimeout":I
    .restart local p4    # "connectionRetryEnabled":Z
    :cond_88
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "stream != null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/okhttp/internal/http/StreamAllocation;
    .end local p1    # "connectTimeout":I
    .end local p2    # "readTimeout":I
    .end local p3    # "writeTimeout":I
    .end local p4    # "connectionRetryEnabled":Z
    throw v1

    .line 154
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/StreamAllocation;
    .restart local p1    # "connectTimeout":I
    .restart local p2    # "readTimeout":I
    .restart local p3    # "writeTimeout":I
    .restart local p4    # "connectionRetryEnabled":Z
    :cond_90
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "released"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/okhttp/internal/http/StreamAllocation;
    .end local p1    # "connectTimeout":I
    .end local p2    # "readTimeout":I
    .end local p3    # "writeTimeout":I
    .end local p4    # "connectionRetryEnabled":Z
    throw v1

    .line 174
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/StreamAllocation;
    .restart local p1    # "connectTimeout":I
    .restart local p2    # "readTimeout":I
    .restart local p3    # "writeTimeout":I
    .restart local p4    # "connectionRetryEnabled":Z
    :catchall_98
    move-exception v1

    monitor-exit v0
    :try_end_9a
    .catchall {:try_start_80 .. :try_end_9a} :catchall_98

    throw v1
.end method

.method private greylist-max-o findHealthyConnection(IIIZZ)Lcom/android/okhttp/internal/io/RealConnection;
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

    .line 128
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/okhttp/internal/http/StreamAllocation;->findConnection(IIIZ)Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v0

    .line 132
    .local v0, "candidate":Lcom/android/okhttp/internal/io/RealConnection;
    iget-object v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    monitor-enter v1

    .line 133
    :try_start_7
    iget v2, v0, Lcom/android/okhttp/internal/io/RealConnection;->streamCount:I

    if-nez v2, :cond_d

    .line 134
    monitor-exit v1

    return-object v0

    .line 136
    :cond_d
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_19

    .line 139
    invoke-virtual {v0, p5}, Lcom/android/okhttp/internal/io/RealConnection;->isHealthy(Z)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 140
    return-object v0

    .line 143
    :cond_15
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionFailed()V

    .line 144
    .end local v0    # "candidate":Lcom/android/okhttp/internal/io/RealConnection;
    goto :goto_0

    .line 136
    .restart local v0    # "candidate":Lcom/android/okhttp/internal/io/RealConnection;
    :catchall_19
    move-exception v2

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v2
.end method

.method private greylist-max-o isRecoverable(Lcom/android/okhttp/internal/http/RouteException;)Z
    .registers 5
    .param p1, "e"    # Lcom/android/okhttp/internal/http/RouteException;

    .line 376
    invoke-virtual {p1}, Lcom/android/okhttp/internal/http/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v0

    .line 379
    .local v0, "ioe":Ljava/io/IOException;
    instance-of v1, v0, Ljava/net/ProtocolException;

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    .line 380
    return v2

    .line 385
    :cond_a
    instance-of v1, v0, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_11

    .line 386
    instance-of v1, v0, Ljava/net/SocketTimeoutException;

    return v1

    .line 391
    :cond_11
    instance-of v1, v0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v1, :cond_1e

    .line 394
    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/security/cert/CertificateException;

    if-eqz v1, :cond_1e

    .line 395
    return v2

    .line 398
    :cond_1e
    instance-of v1, v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v1, :cond_23

    .line 400
    return v2

    .line 406
    :cond_23
    const/4 v1, 0x1

    return v1
.end method

.method private greylist-max-o isRecoverable(Ljava/io/IOException;)Z
    .registers 4
    .param p1, "e"    # Ljava/io/IOException;

    .line 359
    instance-of v0, p1, Ljava/net/ProtocolException;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 360
    return v1

    .line 364
    :cond_6
    instance-of v0, p1, Ljava/io/InterruptedIOException;

    if-eqz v0, :cond_b

    .line 365
    return v1

    .line 368
    :cond_b
    const/4 v0, 0x1

    return v0
.end method

.method private greylist-max-o release(Lcom/android/okhttp/internal/io/RealConnection;)V
    .registers 6
    .param p1, "connection"    # Lcom/android/okhttp/internal/io/RealConnection;

    .line 308
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p1, Lcom/android/okhttp/internal/io/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_7
    if-ge v0, v1, :cond_20

    .line 309
    iget-object v2, p1, Lcom/android/okhttp/internal/io/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    .line 310
    .local v2, "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lcom/android/okhttp/internal/http/StreamAllocation;>;"
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_1d

    .line 311
    iget-object v3, p1, Lcom/android/okhttp/internal/io/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 312
    return-void

    .line 308
    .end local v2    # "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lcom/android/okhttp/internal/http/StreamAllocation;>;"
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 315
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private greylist-max-o routeDatabase()Lcom/android/okhttp/internal/RouteDatabase;
    .registers 3

    .line 209
    sget-object v0, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    iget-object v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/Internal;->routeDatabase(Lcom/android/okhttp/ConnectionPool;)Lcom/android/okhttp/internal/RouteDatabase;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public greylist-max-o acquire(Lcom/android/okhttp/internal/io/RealConnection;)V
    .registers 4
    .param p1, "connection"    # Lcom/android/okhttp/internal/io/RealConnection;

    .line 303
    iget-object v0, p1, Lcom/android/okhttp/internal/io/RealConnection;->allocations:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    return-void
.end method

.method public greylist-max-o cancel()V
    .registers 4

    .line 265
    iget-object v0, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    monitor-enter v0

    .line 266
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->canceled:Z

    .line 267
    iget-object v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->stream:Lcom/android/okhttp/internal/http/HttpStream;

    .line 268
    .local v1, "streamToCancel":Lcom/android/okhttp/internal/http/HttpStream;
    iget-object v2, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    .line 269
    .local v2, "connectionToCancel":Lcom/android/okhttp/internal/io/RealConnection;
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_17

    .line 270
    if-eqz v1, :cond_11

    .line 271
    invoke-interface {v1}, Lcom/android/okhttp/internal/http/HttpStream;->cancel()V

    goto :goto_16

    .line 272
    :cond_11
    if-eqz v2, :cond_16

    .line 273
    invoke-virtual {v2}, Lcom/android/okhttp/internal/io/RealConnection;->cancel()V

    .line 275
    :cond_16
    :goto_16
    return-void

    .line 269
    .end local v1    # "streamToCancel":Lcom/android/okhttp/internal/http/HttpStream;
    .end local v2    # "connectionToCancel":Lcom/android/okhttp/internal/io/RealConnection;
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public declared-synchronized greylist-max-o connection()Lcom/android/okhttp/internal/io/RealConnection;
    .registers 2

    monitor-enter p0

    .line 213
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 213
    .end local p0    # "this":Lcom/android/okhttp/internal/http/StreamAllocation;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public greylist-max-o connectionFailed()V
    .registers 3

    .line 295
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v0}, Lcom/android/okhttp/internal/http/StreamAllocation;->deallocate(ZZZ)V

    .line 296
    return-void
.end method

.method public greylist-max-o newStream(IIIZZ)Lcom/android/okhttp/internal/http/HttpStream;
    .registers 11
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

    .line 97
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/android/okhttp/internal/http/StreamAllocation;->findHealthyConnection(IIIZZ)Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v0

    .line 101
    .local v0, "resultConnection":Lcom/android/okhttp/internal/io/RealConnection;
    iget-object v1, v0, Lcom/android/okhttp/internal/io/RealConnection;->framedConnection:Lcom/android/okhttp/internal/framed/FramedConnection;

    if-eqz v1, :cond_10

    .line 102
    new-instance v1, Lcom/android/okhttp/internal/http/Http2xStream;

    iget-object v2, v0, Lcom/android/okhttp/internal/io/RealConnection;->framedConnection:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-direct {v1, p0, v2}, Lcom/android/okhttp/internal/http/Http2xStream;-><init>(Lcom/android/okhttp/internal/http/StreamAllocation;Lcom/android/okhttp/internal/framed/FramedConnection;)V

    .local v1, "resultStream":Lcom/android/okhttp/internal/http/HttpStream;
    goto :goto_38

    .line 104
    .end local v1    # "resultStream":Lcom/android/okhttp/internal/http/HttpStream;
    :cond_10
    invoke-virtual {v0}, Lcom/android/okhttp/internal/io/RealConnection;->getSocket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 105
    iget-object v1, v0, Lcom/android/okhttp/internal/io/RealConnection;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSource;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object v1

    int-to-long v2, p2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/okhttp/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/okhttp/okio/Timeout;

    .line 106
    iget-object v1, v0, Lcom/android/okhttp/internal/io/RealConnection;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSink;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object v1

    int-to-long v2, p3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/okhttp/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/okhttp/okio/Timeout;

    .line 107
    new-instance v1, Lcom/android/okhttp/internal/http/Http1xStream;

    iget-object v2, v0, Lcom/android/okhttp/internal/io/RealConnection;->source:Lcom/android/okhttp/okio/BufferedSource;

    iget-object v3, v0, Lcom/android/okhttp/internal/io/RealConnection;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/okhttp/internal/http/Http1xStream;-><init>(Lcom/android/okhttp/internal/http/StreamAllocation;Lcom/android/okhttp/okio/BufferedSource;Lcom/android/okhttp/okio/BufferedSink;)V

    .line 110
    .restart local v1    # "resultStream":Lcom/android/okhttp/internal/http/HttpStream;
    :goto_38
    iget-object v2, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    monitor-enter v2
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3b} :catch_48

    .line 111
    :try_start_3b
    iget v3, v0, Lcom/android/okhttp/internal/io/RealConnection;->streamCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/android/okhttp/internal/io/RealConnection;->streamCount:I

    .line 112
    iput-object v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->stream:Lcom/android/okhttp/internal/http/HttpStream;

    .line 113
    monitor-exit v2

    return-object v1

    .line 114
    :catchall_45
    move-exception v3

    monitor-exit v2
    :try_end_47
    .catchall {:try_start_3b .. :try_end_47} :catchall_45

    .end local p0    # "this":Lcom/android/okhttp/internal/http/StreamAllocation;
    .end local p1    # "connectTimeout":I
    .end local p2    # "readTimeout":I
    .end local p3    # "writeTimeout":I
    .end local p4    # "connectionRetryEnabled":Z
    .end local p5    # "doExtensiveHealthChecks":Z
    :try_start_47
    throw v3
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_48} :catch_48

    .line 115
    .end local v0    # "resultConnection":Lcom/android/okhttp/internal/io/RealConnection;
    .end local v1    # "resultStream":Lcom/android/okhttp/internal/http/HttpStream;
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/StreamAllocation;
    .restart local p1    # "connectTimeout":I
    .restart local p2    # "readTimeout":I
    .restart local p3    # "writeTimeout":I
    .restart local p4    # "connectionRetryEnabled":Z
    .restart local p5    # "doExtensiveHealthChecks":Z
    :catch_48
    move-exception v0

    .line 116
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/android/okhttp/internal/http/RouteException;

    invoke-direct {v1, v0}, Lcom/android/okhttp/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public greylist-max-o noNewStreams()V
    .registers 3

    .line 222
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/android/okhttp/internal/http/StreamAllocation;->deallocate(ZZZ)V

    .line 223
    return-void
.end method

.method public greylist-max-o recover(Lcom/android/okhttp/internal/http/RouteException;)Z
    .registers 4
    .param p1, "e"    # Lcom/android/okhttp/internal/http/RouteException;

    .line 320
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->canceled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 321
    return v1

    .line 323
    :cond_6
    iget-object v0, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    if-eqz v0, :cond_11

    .line 324
    invoke-virtual {p1}, Lcom/android/okhttp/internal/http/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionFailed(Ljava/io/IOException;)V

    .line 327
    :cond_11
    iget-object v0, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/RouteSelector;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 328
    :cond_1b
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/http/StreamAllocation;->isRecoverable(Lcom/android/okhttp/internal/http/RouteException;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 329
    :cond_21
    return v1

    .line 332
    :cond_22
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o recover(Ljava/io/IOException;Lcom/android/okhttp/okio/Sink;)Z
    .registers 7
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "requestBodyOut"    # Lcom/android/okhttp/okio/Sink;

    .line 336
    iget-object v0, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    .line 337
    iget v0, v0, Lcom/android/okhttp/internal/io/RealConnection;->streamCount:I

    .line 338
    .local v0, "streamCount":I
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionFailed(Ljava/io/IOException;)V

    .line 340
    if-ne v0, v2, :cond_e

    .line 343
    return v1

    .line 347
    .end local v0    # "streamCount":I
    :cond_e
    if-eqz p2, :cond_17

    instance-of v0, p2, Lcom/android/okhttp/internal/http/RetryableSink;

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    move v0, v1

    goto :goto_18

    :cond_17
    :goto_17
    move v0, v2

    .line 348
    .local v0, "canRetryRequestBody":Z
    :goto_18
    iget-object v3, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

    if-eqz v3, :cond_22

    invoke-virtual {v3}, Lcom/android/okhttp/internal/http/RouteSelector;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 349
    :cond_22
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/http/StreamAllocation;->isRecoverable(Ljava/io/IOException;)Z

    move-result v3

    if-eqz v3, :cond_2c

    if-nez v0, :cond_2b

    goto :goto_2c

    .line 354
    :cond_2b
    return v2

    .line 351
    :cond_2c
    :goto_2c
    return v1
.end method

.method public greylist-max-o release()V
    .registers 3

    .line 217
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/android/okhttp/internal/http/StreamAllocation;->deallocate(ZZZ)V

    .line 218
    return-void
.end method

.method public greylist-max-o stream()Lcom/android/okhttp/internal/http/HttpStream;
    .registers 3

    .line 203
    iget-object v0, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    monitor-enter v0

    .line 204
    :try_start_3
    iget-object v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->stream:Lcom/android/okhttp/internal/http/HttpStream;

    monitor-exit v0

    return-object v1

    .line 205
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public greylist-max-o streamFinished(Lcom/android/okhttp/internal/http/HttpStream;)V
    .registers 6
    .param p1, "stream"    # Lcom/android/okhttp/internal/http/HttpStream;

    .line 194
    iget-object v0, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    monitor-enter v0

    .line 195
    if-eqz p1, :cond_10

    :try_start_5
    iget-object v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->stream:Lcom/android/okhttp/internal/http/HttpStream;

    if-ne p1, v1, :cond_10

    .line 198
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_31

    .line 199
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v0}, Lcom/android/okhttp/internal/http/StreamAllocation;->deallocate(ZZZ)V

    .line 200
    return-void

    .line 196
    :cond_10
    :try_start_10
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->stream:Lcom/android/okhttp/internal/http/HttpStream;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/okhttp/internal/http/StreamAllocation;
    .end local p1    # "stream":Lcom/android/okhttp/internal/http/HttpStream;
    throw v1

    .line 198
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/StreamAllocation;
    .restart local p1    # "stream":Lcom/android/okhttp/internal/http/HttpStream;
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_10 .. :try_end_33} :catchall_31

    throw v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 410
    iget-object v0, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->address:Lcom/android/okhttp/Address;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
