.class public final Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;
.super Ljava/lang/Object;
.source "AndroidResponseCacheAdapter.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# instance fields
.field private final blacklist cacheHolder:Lcom/android/okhttp/internalandroidapi/HasCacheHolder$CacheHolder;

.field private final blacklist okHttpCache:Lcom/android/okhttp/Cache;


# direct methods
.method public constructor blacklist test-api <init>(Lcom/android/okhttp/internalandroidapi/HasCacheHolder$CacheHolder;)V
    .registers 3
    .param p1, "cacheHolder"    # Lcom/android/okhttp/internalandroidapi/HasCacheHolder$CacheHolder;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;->cacheHolder:Lcom/android/okhttp/internalandroidapi/HasCacheHolder$CacheHolder;

    .line 68
    invoke-virtual {p1}, Lcom/android/okhttp/internalandroidapi/HasCacheHolder$CacheHolder;->getCache()Lcom/android/okhttp/Cache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;->okHttpCache:Lcom/android/okhttp/Cache;

    .line 69
    return-void
.end method


# virtual methods
.method public blacklist test-api close()V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;->okHttpCache:Lcom/android/okhttp/Cache;

    invoke-virtual {v0}, Lcom/android/okhttp/Cache;->close()V

    .line 209
    return-void
.end method

.method public blacklist test-api delete()V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;->okHttpCache:Lcom/android/okhttp/Cache;

    invoke-virtual {v0}, Lcom/android/okhttp/Cache;->delete()V

    .line 222
    return-void
.end method

.method public blacklist test-api flush()V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;->okHttpCache:Lcom/android/okhttp/Cache;

    invoke-virtual {v0}, Lcom/android/okhttp/Cache;->flush()V

    .line 160
    return-void
.end method

.method public blacklist test-api get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;
    .registers 7
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "requestMethod"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
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

    .line 93
    .local p3, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {p1, p2, p3}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->createOkRequest(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Lcom/android/okhttp/Request;

    move-result-object v0

    .line 94
    .local v0, "okRequest":Lcom/android/okhttp/Request;
    iget-object v1, p0, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;->okHttpCache:Lcom/android/okhttp/Cache;

    iget-object v1, v1, Lcom/android/okhttp/Cache;->internalCache:Lcom/android/okhttp/internal/InternalCache;

    invoke-interface {v1, v0}, Lcom/android/okhttp/internal/InternalCache;->get(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response;

    move-result-object v1

    .line 95
    .local v1, "okResponse":Lcom/android/okhttp/Response;
    if-nez v1, :cond_10

    .line 96
    const/4 v2, 0x0

    return-object v2

    .line 98
    :cond_10
    invoke-static {v1}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->createJavaCacheResponse(Lcom/android/okhttp/Response;)Ljava/net/CacheResponse;

    move-result-object v2

    return-object v2
.end method

.method public blacklist test-api getCacheHolder()Lcom/android/okhttp/internalandroidapi/HasCacheHolder$CacheHolder;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;->cacheHolder:Lcom/android/okhttp/internalandroidapi/HasCacheHolder$CacheHolder;

    return-object v0
.end method

.method public blacklist test-api getHitCount()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;->okHttpCache:Lcom/android/okhttp/Cache;

    invoke-virtual {v0}, Lcom/android/okhttp/Cache;->getHitCount()I

    move-result v0

    return v0
.end method

.method public blacklist test-api getMaxSize()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;->okHttpCache:Lcom/android/okhttp/Cache;

    invoke-virtual {v0}, Lcom/android/okhttp/Cache;->getMaxSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist test-api getNetworkCount()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;->okHttpCache:Lcom/android/okhttp/Cache;

    invoke-virtual {v0}, Lcom/android/okhttp/Cache;->getNetworkCount()I

    move-result v0

    return v0
.end method

.method public blacklist test-api getRequestCount()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;->okHttpCache:Lcom/android/okhttp/Cache;

    invoke-virtual {v0}, Lcom/android/okhttp/Cache;->getRequestCount()I

    move-result v0

    return v0
.end method

.method public blacklist test-api getSize()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;->okHttpCache:Lcom/android/okhttp/Cache;

    invoke-virtual {v0}, Lcom/android/okhttp/Cache;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist test-api put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;
    .registers 6
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "urlConnection"    # Ljava/net/URLConnection;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    invoke-static {p1, p2}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->createOkResponseForCachePut(Ljava/net/URI;Ljava/net/URLConnection;)Lcom/android/okhttp/Response;

    move-result-object v0

    .line 112
    .local v0, "okResponse":Lcom/android/okhttp/Response;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 114
    return-object v1

    .line 116
    :cond_8
    iget-object v2, p0, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;->okHttpCache:Lcom/android/okhttp/Cache;

    iget-object v2, v2, Lcom/android/okhttp/Cache;->internalCache:Lcom/android/okhttp/internal/InternalCache;

    .line 117
    invoke-interface {v2, v0}, Lcom/android/okhttp/internal/InternalCache;->put(Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/CacheRequest;

    move-result-object v2

    .line 118
    .local v2, "okCacheRequest":Lcom/android/okhttp/internal/http/CacheRequest;
    if-nez v2, :cond_13

    .line 119
    return-object v1

    .line 121
    :cond_13
    invoke-static {v2}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->createJavaCacheRequest(Lcom/android/okhttp/internal/http/CacheRequest;)Ljava/net/CacheRequest;

    move-result-object v1

    return-object v1
.end method
