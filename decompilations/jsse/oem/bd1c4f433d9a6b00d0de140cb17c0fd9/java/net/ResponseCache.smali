.class public abstract Ljava/net/ResponseCache;
.super Ljava/lang/Object;
.source "ResponseCache.java"


# static fields
.field private static theResponseCache:Ljava/net/ResponseCache;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getDefault()Ljava/net/ResponseCache;
    .registers 3

    .prologue
    const-class v2, Ljava/net/ResponseCache;

    monitor-enter v2

    .line 84
    :try_start_3
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 85
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_e

    .line 86
    sget-object v1, Lsun/security/util/SecurityConstants;->GET_RESPONSECACHE_PERMISSION:Ljava/net/NetPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 88
    :cond_e
    sget-object v1, Ljava/net/ResponseCache;->theResponseCache:Ljava/net/ResponseCache;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v2

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized setDefault(Ljava/net/ResponseCache;)V
    .registers 4
    .param p0, "responseCache"    # Ljava/net/ResponseCache;

    .prologue
    const-class v2, Ljava/net/ResponseCache;

    monitor-enter v2

    .line 107
    :try_start_3
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 108
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_e

    .line 109
    sget-object v1, Lsun/security/util/SecurityConstants;->SET_RESPONSECACHE_PERMISSION:Ljava/net/NetPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 111
    :cond_e
    sput-object p0, Ljava/net/ResponseCache;->theResponseCache:Ljava/net/ResponseCache;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v2

    .line 112
    return-void

    .end local v0    # "sm":Ljava/lang/SecurityManager;
    :catchall_12
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public abstract get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/net/CacheResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
