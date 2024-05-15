.class public final Lcom/android/okhttp/internal/http/StreamAllocation;
.super Ljava/lang/Object;
.source "StreamAllocation.java"


# instance fields
.field public final greylist-max-o address:Lcom/android/okhttp/Address;

.field private greylist-max-o canceled:Z

.field private greylist-max-o connection:Lcom/android/okhttp/internal/io/RealConnection;

.field private final greylist-max-o connectionPool:Lcom/android/okhttp/ConnectionPool;

.field private blacklist logger:Lcom/android/okhttp/internal/http/MultiratLog;

.field private greylist-max-o released:Z

.field private greylist-max-o routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

.field private greylist-max-o stream:Lcom/android/okhttp/internal/http/HttpStream;


# direct methods
.method public constructor greylist-max-o <init>(Lcom/android/okhttp/ConnectionPool;Lcom/android/okhttp/Address;)V
    .registers 5
    .param p1, "connectionPool"    # Lcom/android/okhttp/ConnectionPool;
    .param p2, "address"    # Lcom/android/okhttp/Address;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Lcom/android/okhttp/internal/http/MultiratLog;

    const-string v1, "Allocator"

    invoke-direct {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    .line 98
    iput-object p1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    .line 99
    iput-object p2, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->address:Lcom/android/okhttp/Address;

    .line 100
    return-void
.end method

.method private greylist-max-o connectionFailed(Ljava/io/IOException;)V
    .registers 5
    .param p1, "e"    # Ljava/io/IOException;

    .line 315
    iget-object v0, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    monitor-enter v0

    .line 316
    :try_start_3
    iget-object v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

    if-eqz v1, :cond_1c

    .line 317
    iget-object v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    iget v1, v1, Lcom/android/okhttp/internal/io/RealConnection;->streamCount:I

    if-nez v1, :cond_19

    .line 319
    iget-object v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    invoke-virtual {v1}, Lcom/android/okhttp/internal/io/RealConnection;->getRoute()Lcom/android/okhttp/Route;

    move-result-object v1

    .line 320
    .local v1, "failedRoute":Lcom/android/okhttp/Route;
    iget-object v2, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

    invoke-virtual {v2, v1, p1}, Lcom/android/okhttp/internal/http/RouteSelector;->connectFailed(Lcom/android/okhttp/Route;Ljava/io/IOException;)V

    .line 321
    .end local v1    # "failedRoute":Lcom/android/okhttp/Route;
    goto :goto_1c

    .line 323
    :cond_19
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

    .line 326
    :cond_1c
    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_21

    .line 327
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionFailed()V

    .line 328
    return-void

    .line 326
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

    .line 267
    const/4 v0, 0x0

    .line 268
    .local v0, "connectionToClose":Lcom/android/okhttp/internal/io/RealConnection;
    iget-object v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    monitor-enter v1

    .line 269
    const/4 v2, 0x0

    if-eqz p3, :cond_c

    .line 270
    :try_start_7
    iput-object v2, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->stream:Lcom/android/okhttp/internal/http/HttpStream;

    goto :goto_c

    .line 293
    :catchall_a
    move-exception v2

    goto :goto_64

    .line 272
    :cond_c
    :goto_c
    const/4 v3, 0x1

    if-eqz p2, :cond_11

    .line 273
    iput-boolean v3, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->released:Z

    .line 275
    :cond_11
    iget-object v4, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    if-eqz v4, :cond_59

    .line 276
    if-eqz p1, :cond_1b

    .line 277
    iget-object v4, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    iput-boolean v3, v4, Lcom/android/okhttp/internal/io/RealConnection;->noNewStreams:Z

    .line 279
    :cond_1b
    iget-object v3, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->stream:Lcom/android/okhttp/internal/http/HttpStream;

    if-nez v3, :cond_59

    iget-boolean v3, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->released:Z

    if-nez v3, :cond_29

    iget-object v3, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    iget-boolean v3, v3, Lcom/android/okhttp/internal/io/RealConnection;->noNewStreams:Z

    if-eqz v3, :cond_59

    .line 280
    :cond_29
    iget-object v3, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    invoke-direct {p0, v3}, Lcom/android/okhttp/internal/http/StreamAllocation;->release(Lcom/android/okhttp/internal/io/RealConnection;)V

    .line 281
    iget-object v3, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    iget v3, v3, Lcom/android/okhttp/internal/io/RealConnection;->streamCount:I

    if-lez v3, :cond_36

    .line 282
    iput-object v2, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

    .line 284
    :cond_36
    iget-object v3, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    iget-object v3, v3, Lcom/android/okhttp/internal/io/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_57

    .line 285
    iget-object v3, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/okhttp/internal/io/RealConnection;->idleAtNanos:J

    .line 286
    sget-object v3, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    iget-object v4, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    iget-object v5, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    invoke-virtual {v3, v4, v5}, Lcom/android/okhttp/internal/Internal;->connectionBecameIdle(Lcom/android/okhttp/ConnectionPool;Lcom/android/okhttp/internal/io/RealConnection;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 287
    iget-object v3, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    move-object v0, v3

    .line 290
    :cond_57
    iput-object v2, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    .line 293
    :cond_59
    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_7 .. :try_end_5a} :catchall_a

    .line 294
    if-eqz v0, :cond_63

    .line 295
    invoke-virtual {v0}, Lcom/android/okhttp/internal/io/RealConnection;->getSocket()Ljava/net/Socket;

    move-result-object v1

    invoke-static {v1}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 297
    :cond_63
    return-void

    .line 293
    :goto_64
    :try_start_64
    monitor-exit v1
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_a

    throw v2
.end method

.method private greylist-max-o findConnection(IIIZ)Lcom/android/okhttp/internal/io/RealConnection;
    .registers 19
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

    .line 169
    move-object v1, p0

    iget-object v2, v1, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    monitor-enter v2

    .line 170
    :try_start_4
    iget-boolean v0, v1, Lcom/android/okhttp/internal/http/StreamAllocation;->released:Z

    if-nez v0, :cond_128

    .line 171
    iget-object v0, v1, Lcom/android/okhttp/internal/http/StreamAllocation;->stream:Lcom/android/okhttp/internal/http/HttpStream;

    if-nez v0, :cond_120

    .line 172
    iget-boolean v0, v1, Lcom/android/okhttp/internal/http/StreamAllocation;->canceled:Z

    if-nez v0, :cond_118

    .line 174
    iget-object v0, v1, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    .line 175
    .local v0, "allocatedConnection":Lcom/android/okhttp/internal/io/RealConnection;
    if-eqz v0, :cond_1a

    iget-boolean v3, v0, Lcom/android/okhttp/internal/io/RealConnection;->noNewStreams:Z

    if-nez v3, :cond_1a

    .line 176
    monitor-exit v2

    return-object v0

    .line 180
    :cond_1a
    sget-object v3, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    iget-object v4, v1, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    iget-object v5, v1, Lcom/android/okhttp/internal/http/StreamAllocation;->address:Lcom/android/okhttp/Address;

    invoke-virtual {v3, v4, v5, p0}, Lcom/android/okhttp/internal/Internal;->get(Lcom/android/okhttp/ConnectionPool;Lcom/android/okhttp/Address;Lcom/android/okhttp/internal/http/StreamAllocation;)Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v3

    .line 181
    .local v3, "pooledConnection":Lcom/android/okhttp/internal/io/RealConnection;
    if-eqz v3, :cond_2a

    .line 182
    iput-object v3, v1, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    .line 183
    monitor-exit v2

    return-object v3

    .line 187
    :cond_2a
    iget-object v4, v1, Lcom/android/okhttp/internal/http/StreamAllocation;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

    if-nez v4, :cond_3b

    .line 188
    new-instance v4, Lcom/android/okhttp/internal/http/RouteSelector;

    iget-object v5, v1, Lcom/android/okhttp/internal/http/StreamAllocation;->address:Lcom/android/okhttp/Address;

    invoke-direct {p0}, Lcom/android/okhttp/internal/http/StreamAllocation;->routeDatabase()Lcom/android/okhttp/internal/RouteDatabase;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/okhttp/internal/http/RouteSelector;-><init>(Lcom/android/okhttp/Address;Lcom/android/okhttp/internal/RouteDatabase;)V

    iput-object v4, v1, Lcom/android/okhttp/internal/http/StreamAllocation;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

    .line 190
    .end local v0    # "allocatedConnection":Lcom/android/okhttp/internal/io/RealConnection;
    .end local v3    # "pooledConnection":Lcom/android/okhttp/internal/io/RealConnection;
    :cond_3b
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_4 .. :try_end_3c} :catchall_130

    .line 192
    iget-object v0, v1, Lcom/android/okhttp/internal/http/StreamAllocation;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/RouteSelector;->next()Lcom/android/okhttp/Route;

    move-result-object v3

    .line 193
    .local v3, "route":Lcom/android/okhttp/Route;
    new-instance v0, Lcom/android/okhttp/internal/io/RealConnection;

    invoke-direct {v0, v3}, Lcom/android/okhttp/internal/io/RealConnection;-><init>(Lcom/android/okhttp/Route;)V

    move-object v12, v0

    .line 194
    .local v12, "newConnection":Lcom/android/okhttp/internal/io/RealConnection;
    invoke-virtual {p0, v12}, Lcom/android/okhttp/internal/http/StreamAllocation;->acquire(Lcom/android/okhttp/internal/io/RealConnection;)V

    .line 196
    iget-object v4, v1, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    monitor-enter v4

    .line 197
    :try_start_4e
    sget-object v0, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    iget-object v2, v1, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    invoke-virtual {v0, v2, v12}, Lcom/android/okhttp/internal/Internal;->put(Lcom/android/okhttp/ConnectionPool;Lcom/android/okhttp/internal/io/RealConnection;)V

    .line 198
    iput-object v12, v1, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    .line 199
    iget-boolean v0, v1, Lcom/android/okhttp/internal/http/StreamAllocation;->canceled:Z

    if-nez v0, :cond_10d

    .line 200
    monitor-exit v4
    :try_end_5c
    .catchall {:try_start_4e .. :try_end_5c} :catchall_115

    .line 203
    sget-boolean v0, Lcom/android/okhttp/internal/http/HttpEngine;->SMARTBONDING_ENABLED:Z

    if-eqz v0, :cond_f0

    .line 204
    const/4 v2, -0x1

    .line 205
    .local v2, "netType":I
    const/4 v4, 0x0

    .line 206
    .local v4, "oriCon":Lcom/android/okhttp/internal/io/RealConnection;
    sget-object v5, Lcom/android/okhttp/internal/http/HttpEngine;->mainInterfaceID:Ljava/util/HashMap;

    monitor-enter v5

    .line 207
    :try_start_65
    sget-object v0, Lcom/android/okhttp/internal/http/HttpEngine;->mainInterfaceID:Ljava/util/HashMap;

    sget-wide v6, Lcom/android/okhttp/internal/http/HttpEngine;->mThreadID:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_97

    .line 208
    sget-object v0, Lcom/android/okhttp/internal/http/HttpEngine;->mainInterfaceID:Ljava/util/HashMap;

    sget-wide v6, Lcom/android/okhttp/internal/http/HttpEngine;->mThreadID:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v2, v0

    .line 209
    sget-object v0, Lcom/android/okhttp/internal/http/HttpEngine;->originalSSLList:Ljava/util/HashMap;

    sget-wide v6, Lcom/android/okhttp/internal/http/HttpEngine;->mThreadID:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/okhttp/internal/io/RealConnection;
    :try_end_94
    .catchall {:try_start_65 .. :try_end_94} :catchall_ed

    move-object v4, v0

    move-object v13, v4

    goto :goto_98

    .line 207
    :cond_97
    move-object v13, v4

    .line 211
    .end local v4    # "oriCon":Lcom/android/okhttp/internal/io/RealConnection;
    .local v13, "oriCon":Lcom/android/okhttp/internal/io/RealConnection;
    :goto_98
    :try_start_98
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_c0

    iget-object v0, v1, Lcom/android/okhttp/internal/http/StreamAllocation;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "openSocketConnection() netType = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", now mainInfID map size is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/android/okhttp/internal/http/HttpEngine;->mainInterfaceID:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 212
    :cond_c0
    monitor-exit v5
    :try_end_c1
    .catchall {:try_start_98 .. :try_end_c1} :catchall_ea

    .line 213
    const/4 v0, -0x1

    if-ne v2, v0, :cond_d6

    .line 214
    iget-object v0, v1, Lcom/android/okhttp/internal/http/StreamAllocation;->address:Lcom/android/okhttp/Address;

    invoke-virtual {v0}, Lcom/android/okhttp/Address;->getConnectionSpecs()Ljava/util/List;

    move-result-object v8

    move-object v4, v12

    move v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v9, p4

    invoke-virtual/range {v4 .. v9}, Lcom/android/okhttp/internal/io/RealConnection;->connect(IIILjava/util/List;Z)V

    goto :goto_e9

    .line 217
    :cond_d6
    iget-object v0, v1, Lcom/android/okhttp/internal/http/StreamAllocation;->address:Lcom/android/okhttp/Address;

    invoke-virtual {v0}, Lcom/android/okhttp/Address;->getConnectionSpecs()Ljava/util/List;

    move-result-object v8

    move-object v4, v12

    move v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v9, p4

    move v10, v2

    move-object v11, v13

    invoke-virtual/range {v4 .. v11}, Lcom/android/okhttp/internal/io/RealConnection;->connect(IIILjava/util/List;ZILcom/android/okhttp/internal/io/RealConnection;)V

    .line 220
    .end local v2    # "netType":I
    .end local v13    # "oriCon":Lcom/android/okhttp/internal/io/RealConnection;
    :goto_e9
    goto :goto_101

    .line 212
    .restart local v2    # "netType":I
    .restart local v13    # "oriCon":Lcom/android/okhttp/internal/io/RealConnection;
    :catchall_ea
    move-exception v0

    move-object v4, v13

    goto :goto_ee

    .end local v13    # "oriCon":Lcom/android/okhttp/internal/io/RealConnection;
    .restart local v4    # "oriCon":Lcom/android/okhttp/internal/io/RealConnection;
    :catchall_ed
    move-exception v0

    :goto_ee
    :try_start_ee
    monitor-exit v5
    :try_end_ef
    .catchall {:try_start_ee .. :try_end_ef} :catchall_ed

    throw v0

    .line 221
    .end local v2    # "netType":I
    .end local v4    # "oriCon":Lcom/android/okhttp/internal/io/RealConnection;
    :cond_f0
    iget-object v0, v1, Lcom/android/okhttp/internal/http/StreamAllocation;->address:Lcom/android/okhttp/Address;

    invoke-virtual {v0}, Lcom/android/okhttp/Address;->getConnectionSpecs()Ljava/util/List;

    move-result-object v8

    move-object v4, v12

    move v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v9, p4

    invoke-virtual/range {v4 .. v9}, Lcom/android/okhttp/internal/io/RealConnection;->connect(IIILjava/util/List;Z)V

    .line 225
    :goto_101
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/StreamAllocation;->routeDatabase()Lcom/android/okhttp/internal/RouteDatabase;

    move-result-object v0

    invoke-virtual {v12}, Lcom/android/okhttp/internal/io/RealConnection;->getRoute()Lcom/android/okhttp/Route;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/RouteDatabase;->connected(Lcom/android/okhttp/Route;)V

    .line 227
    return-object v12

    .line 199
    :cond_10d
    :try_start_10d
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "route":Lcom/android/okhttp/Route;
    .end local v12    # "newConnection":Lcom/android/okhttp/internal/io/RealConnection;
    .end local p0    # "this":Lcom/android/okhttp/internal/http/StreamAllocation;
    .end local p1    # "connectTimeout":I
    .end local p2    # "readTimeout":I
    .end local p3    # "writeTimeout":I
    .end local p4    # "connectionRetryEnabled":Z
    throw v0

    .line 200
    .restart local v3    # "route":Lcom/android/okhttp/Route;
    .restart local v12    # "newConnection":Lcom/android/okhttp/internal/io/RealConnection;
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/StreamAllocation;
    .restart local p1    # "connectTimeout":I
    .restart local p2    # "readTimeout":I
    .restart local p3    # "writeTimeout":I
    .restart local p4    # "connectionRetryEnabled":Z
    :catchall_115
    move-exception v0

    monitor-exit v4
    :try_end_117
    .catchall {:try_start_10d .. :try_end_117} :catchall_115

    throw v0

    .line 172
    .end local v3    # "route":Lcom/android/okhttp/Route;
    .end local v12    # "newConnection":Lcom/android/okhttp/internal/io/RealConnection;
    :cond_118
    :try_start_118
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/okhttp/internal/http/StreamAllocation;
    .end local p1    # "connectTimeout":I
    .end local p2    # "readTimeout":I
    .end local p3    # "writeTimeout":I
    .end local p4    # "connectionRetryEnabled":Z
    throw v0

    .line 171
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/StreamAllocation;
    .restart local p1    # "connectTimeout":I
    .restart local p2    # "readTimeout":I
    .restart local p3    # "writeTimeout":I
    .restart local p4    # "connectionRetryEnabled":Z
    :cond_120
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "stream != null"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/okhttp/internal/http/StreamAllocation;
    .end local p1    # "connectTimeout":I
    .end local p2    # "readTimeout":I
    .end local p3    # "writeTimeout":I
    .end local p4    # "connectionRetryEnabled":Z
    throw v0

    .line 170
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/StreamAllocation;
    .restart local p1    # "connectTimeout":I
    .restart local p2    # "readTimeout":I
    .restart local p3    # "writeTimeout":I
    .restart local p4    # "connectionRetryEnabled":Z
    :cond_128
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "released"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/okhttp/internal/http/StreamAllocation;
    .end local p1    # "connectTimeout":I
    .end local p2    # "readTimeout":I
    .end local p3    # "writeTimeout":I
    .end local p4    # "connectionRetryEnabled":Z
    throw v0

    .line 190
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/StreamAllocation;
    .restart local p1    # "connectTimeout":I
    .restart local p2    # "readTimeout":I
    .restart local p3    # "writeTimeout":I
    .restart local p4    # "connectionRetryEnabled":Z
    :catchall_130
    move-exception v0

    monitor-exit v2
    :try_end_132
    .catchall {:try_start_118 .. :try_end_132} :catchall_130

    throw v0
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

    .line 144
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/okhttp/internal/http/StreamAllocation;->findConnection(IIIZ)Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v0

    .line 148
    .local v0, "candidate":Lcom/android/okhttp/internal/io/RealConnection;
    iget-object v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    monitor-enter v1

    .line 149
    :try_start_7
    iget v2, v0, Lcom/android/okhttp/internal/io/RealConnection;->streamCount:I

    if-nez v2, :cond_d

    .line 150
    monitor-exit v1

    return-object v0

    .line 152
    :cond_d
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_19

    .line 155
    invoke-virtual {v0, p5}, Lcom/android/okhttp/internal/io/RealConnection;->isHealthy(Z)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 156
    return-object v0

    .line 159
    :cond_15
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionFailed()V

    .line 160
    .end local v0    # "candidate":Lcom/android/okhttp/internal/io/RealConnection;
    goto :goto_0

    .line 152
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

    .line 413
    invoke-virtual {p1}, Lcom/android/okhttp/internal/http/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v0

    .line 416
    .local v0, "ioe":Ljava/io/IOException;
    instance-of v1, v0, Ljava/net/ProtocolException;

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    .line 417
    return v2

    .line 422
    :cond_a
    instance-of v1, v0, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_11

    .line 423
    instance-of v1, v0, Ljava/net/SocketTimeoutException;

    return v1

    .line 428
    :cond_11
    instance-of v1, v0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v1, :cond_1e

    .line 431
    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/security/cert/CertificateException;

    if-eqz v1, :cond_1e

    .line 432
    return v2

    .line 435
    :cond_1e
    instance-of v1, v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v1, :cond_23

    .line 437
    return v2

    .line 443
    :cond_23
    const/4 v1, 0x1

    return v1
.end method

.method private greylist-max-o isRecoverable(Ljava/io/IOException;)Z
    .registers 4
    .param p1, "e"    # Ljava/io/IOException;

    .line 396
    instance-of v0, p1, Ljava/net/ProtocolException;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 397
    return v1

    .line 401
    :cond_6
    instance-of v0, p1, Ljava/io/InterruptedIOException;

    if-eqz v0, :cond_b

    .line 402
    return v1

    .line 405
    :cond_b
    const/4 v0, 0x1

    return v0
.end method

.method private greylist-max-o release(Lcom/android/okhttp/internal/io/RealConnection;)V
    .registers 6
    .param p1, "connection"    # Lcom/android/okhttp/internal/io/RealConnection;

    .line 345
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p1, Lcom/android/okhttp/internal/io/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_7
    if-ge v0, v1, :cond_20

    .line 346
    iget-object v2, p1, Lcom/android/okhttp/internal/io/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    .line 347
    .local v2, "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lcom/android/okhttp/internal/http/StreamAllocation;>;"
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_1d

    .line 348
    iget-object v3, p1, Lcom/android/okhttp/internal/io/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 349
    return-void

    .line 345
    .end local v2    # "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lcom/android/okhttp/internal/http/StreamAllocation;>;"
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 352
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private greylist-max-o routeDatabase()Lcom/android/okhttp/internal/RouteDatabase;
    .registers 3

    .line 246
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

    .line 340
    iget-object v0, p1, Lcom/android/okhttp/internal/io/RealConnection;->allocations:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    return-void
.end method

.method public greylist-max-o cancel()V
    .registers 4

    .line 302
    iget-object v0, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    monitor-enter v0

    .line 303
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->canceled:Z

    .line 304
    iget-object v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->stream:Lcom/android/okhttp/internal/http/HttpStream;

    .line 305
    .local v1, "streamToCancel":Lcom/android/okhttp/internal/http/HttpStream;
    iget-object v2, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    .line 306
    .local v2, "connectionToCancel":Lcom/android/okhttp/internal/io/RealConnection;
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_17

    .line 307
    if-eqz v1, :cond_11

    .line 308
    invoke-interface {v1}, Lcom/android/okhttp/internal/http/HttpStream;->cancel()V

    goto :goto_16

    .line 309
    :cond_11
    if-eqz v2, :cond_16

    .line 310
    invoke-virtual {v2}, Lcom/android/okhttp/internal/io/RealConnection;->cancel()V

    .line 312
    :cond_16
    :goto_16
    return-void

    .line 306
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

    .line 250
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 250
    .end local p0    # "this":Lcom/android/okhttp/internal/http/StreamAllocation;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public greylist-max-o connectionFailed()V
    .registers 3

    .line 332
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v0}, Lcom/android/okhttp/internal/http/StreamAllocation;->deallocate(ZZZ)V

    .line 333
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

    .line 106
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/android/okhttp/internal/http/StreamAllocation;->findHealthyConnection(IIIZZ)Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v0

    .line 110
    .local v0, "resultConnection":Lcom/android/okhttp/internal/io/RealConnection;
    iget-object v1, v0, Lcom/android/okhttp/internal/io/RealConnection;->framedConnection:Lcom/android/okhttp/internal/framed/FramedConnection;

    if-eqz v1, :cond_10

    .line 111
    new-instance v1, Lcom/android/okhttp/internal/http/Http2xStream;

    iget-object v2, v0, Lcom/android/okhttp/internal/io/RealConnection;->framedConnection:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-direct {v1, p0, v2}, Lcom/android/okhttp/internal/http/Http2xStream;-><init>(Lcom/android/okhttp/internal/http/StreamAllocation;Lcom/android/okhttp/internal/framed/FramedConnection;)V

    .local v1, "resultStream":Lcom/android/okhttp/internal/http/HttpStream;
    goto :goto_45

    .line 114
    .end local v1    # "resultStream":Lcom/android/okhttp/internal/http/HttpStream;
    :cond_10
    sget-boolean v1, Lcom/android/okhttp/internal/http/HttpEngine;->SMARTBONDING_ENABLED:Z

    if-eqz v1, :cond_1d

    .line 115
    invoke-virtual {v0}, Lcom/android/okhttp/internal/io/RealConnection;->isMultiSocket()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 116
    invoke-virtual {v0, p2}, Lcom/android/okhttp/internal/io/RealConnection;->setMainTimeout(I)V

    .line 120
    :cond_1d
    invoke-virtual {v0}, Lcom/android/okhttp/internal/io/RealConnection;->getSocket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 121
    iget-object v1, v0, Lcom/android/okhttp/internal/io/RealConnection;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSource;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object v1

    int-to-long v2, p2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/okhttp/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/okhttp/okio/Timeout;

    .line 122
    iget-object v1, v0, Lcom/android/okhttp/internal/io/RealConnection;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSink;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object v1

    int-to-long v2, p3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/okhttp/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/okhttp/okio/Timeout;

    .line 123
    new-instance v1, Lcom/android/okhttp/internal/http/Http1xStream;

    iget-object v2, v0, Lcom/android/okhttp/internal/io/RealConnection;->source:Lcom/android/okhttp/okio/BufferedSource;

    iget-object v3, v0, Lcom/android/okhttp/internal/io/RealConnection;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/okhttp/internal/http/Http1xStream;-><init>(Lcom/android/okhttp/internal/http/StreamAllocation;Lcom/android/okhttp/okio/BufferedSource;Lcom/android/okhttp/okio/BufferedSink;)V

    .line 126
    .restart local v1    # "resultStream":Lcom/android/okhttp/internal/http/HttpStream;
    :goto_45
    iget-object v2, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    monitor-enter v2
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_48} :catch_55

    .line 127
    :try_start_48
    iget v3, v0, Lcom/android/okhttp/internal/io/RealConnection;->streamCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/android/okhttp/internal/io/RealConnection;->streamCount:I

    .line 128
    iput-object v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->stream:Lcom/android/okhttp/internal/http/HttpStream;

    .line 129
    monitor-exit v2

    return-object v1

    .line 130
    :catchall_52
    move-exception v3

    monitor-exit v2
    :try_end_54
    .catchall {:try_start_48 .. :try_end_54} :catchall_52

    .end local p0    # "this":Lcom/android/okhttp/internal/http/StreamAllocation;
    .end local p1    # "connectTimeout":I
    .end local p2    # "readTimeout":I
    .end local p3    # "writeTimeout":I
    .end local p4    # "connectionRetryEnabled":Z
    .end local p5    # "doExtensiveHealthChecks":Z
    :try_start_54
    throw v3
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_55} :catch_55

    .line 131
    .end local v0    # "resultConnection":Lcom/android/okhttp/internal/io/RealConnection;
    .end local v1    # "resultStream":Lcom/android/okhttp/internal/http/HttpStream;
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/StreamAllocation;
    .restart local p1    # "connectTimeout":I
    .restart local p2    # "readTimeout":I
    .restart local p3    # "writeTimeout":I
    .restart local p4    # "connectionRetryEnabled":Z
    .restart local p5    # "doExtensiveHealthChecks":Z
    :catch_55
    move-exception v0

    .line 132
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/android/okhttp/internal/http/RouteException;

    invoke-direct {v1, v0}, Lcom/android/okhttp/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public greylist-max-o noNewStreams()V
    .registers 3

    .line 259
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/android/okhttp/internal/http/StreamAllocation;->deallocate(ZZZ)V

    .line 260
    return-void
.end method

.method public greylist-max-o recover(Lcom/android/okhttp/internal/http/RouteException;)Z
    .registers 4
    .param p1, "e"    # Lcom/android/okhttp/internal/http/RouteException;

    .line 357
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->canceled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 358
    return v1

    .line 360
    :cond_6
    iget-object v0, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    if-eqz v0, :cond_11

    .line 361
    invoke-virtual {p1}, Lcom/android/okhttp/internal/http/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionFailed(Ljava/io/IOException;)V

    .line 364
    :cond_11
    iget-object v0, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/RouteSelector;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 365
    :cond_1b
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/http/StreamAllocation;->isRecoverable(Lcom/android/okhttp/internal/http/RouteException;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 366
    :cond_21
    return v1

    .line 369
    :cond_22
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o recover(Ljava/io/IOException;Lcom/android/okhttp/okio/Sink;)Z
    .registers 7
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "requestBodyOut"    # Lcom/android/okhttp/okio/Sink;

    .line 373
    iget-object v0, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    .line 374
    iget v0, v0, Lcom/android/okhttp/internal/io/RealConnection;->streamCount:I

    .line 375
    .local v0, "streamCount":I
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionFailed(Ljava/io/IOException;)V

    .line 377
    if-ne v0, v2, :cond_e

    .line 380
    return v1

    .line 384
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

    .line 385
    .local v0, "canRetryRequestBody":Z
    :goto_18
    iget-object v3, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

    if-eqz v3, :cond_22

    invoke-virtual {v3}, Lcom/android/okhttp/internal/http/RouteSelector;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 386
    :cond_22
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/http/StreamAllocation;->isRecoverable(Ljava/io/IOException;)Z

    move-result v3

    if-eqz v3, :cond_2c

    if-nez v0, :cond_2b

    goto :goto_2c

    .line 391
    :cond_2b
    return v2

    .line 388
    :cond_2c
    :goto_2c
    return v1
.end method

.method public greylist-max-o release()V
    .registers 3

    .line 254
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/android/okhttp/internal/http/StreamAllocation;->deallocate(ZZZ)V

    .line 255
    return-void
.end method

.method public greylist-max-o stream()Lcom/android/okhttp/internal/http/HttpStream;
    .registers 3

    .line 240
    iget-object v0, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    monitor-enter v0

    .line 241
    :try_start_3
    iget-object v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->stream:Lcom/android/okhttp/internal/http/HttpStream;

    monitor-exit v0

    return-object v1

    .line 242
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

    .line 231
    iget-object v0, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    monitor-enter v0

    .line 232
    if-eqz p1, :cond_10

    :try_start_5
    iget-object v1, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->stream:Lcom/android/okhttp/internal/http/HttpStream;

    if-ne p1, v1, :cond_10

    .line 235
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_31

    .line 236
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v0}, Lcom/android/okhttp/internal/http/StreamAllocation;->deallocate(ZZZ)V

    .line 237
    return-void

    .line 233
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

    .line 235
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/StreamAllocation;
    .restart local p1    # "stream":Lcom/android/okhttp/internal/http/HttpStream;
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_10 .. :try_end_33} :catchall_31

    throw v1
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 2

    .line 447
    iget-object v0, p0, Lcom/android/okhttp/internal/http/StreamAllocation;->address:Lcom/android/okhttp/Address;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
