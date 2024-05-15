.class public Lcom/android/okhttp/AndroidShimResponseCache;
.super Ljava/net/ResponseCache;
.source "AndroidShimResponseCache.java"


# instance fields
.field private final greylist-max-o delegate:Lcom/android/okhttp/Cache;


# direct methods
.method private constructor greylist-max-o <init>(Lcom/android/okhttp/Cache;)V
    .registers 2
    .param p1, "delegate"    # Lcom/android/okhttp/Cache;

    .line 40
    invoke-direct {p0}, Ljava/net/ResponseCache;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/okhttp/AndroidShimResponseCache;->delegate:Lcom/android/okhttp/Cache;

    .line 42
    return-void
.end method

.method public static greylist-max-o create(Ljava/io/File;J)Lcom/android/okhttp/AndroidShimResponseCache;
    .registers 5
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "maxSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/android/okhttp/Cache;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/okhttp/Cache;-><init>(Ljava/io/File;J)V

    .line 46
    .local v0, "cache":Lcom/android/okhttp/Cache;
    new-instance v1, Lcom/android/okhttp/AndroidShimResponseCache;

    invoke-direct {v1, v0}, Lcom/android/okhttp/AndroidShimResponseCache;-><init>(Lcom/android/okhttp/Cache;)V

    return-object v1
.end method


# virtual methods
.method public greylist-max-o close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/android/okhttp/AndroidShimResponseCache;->delegate:Lcom/android/okhttp/Cache;

    invoke-virtual {v0}, Lcom/android/okhttp/Cache;->close()V

    .line 142
    return-void
.end method

.method public greylist-max-o delete()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/android/okhttp/AndroidShimResponseCache;->delegate:Lcom/android/okhttp/Cache;

    invoke-virtual {v0}, Lcom/android/okhttp/Cache;->delete()V

    .line 149
    return-void
.end method

.method public greylist-max-o flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/android/okhttp/AndroidShimResponseCache;->delegate:Lcom/android/okhttp/Cache;

    invoke-virtual {v0}, Lcom/android/okhttp/Cache;->flush()V

    .line 108
    return-void
.end method

.method public whitelist test-api get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;
    .registers 7
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "requestMethod"    # Ljava/lang/String;
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

    .line 62
    .local p3, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {p1, p2, p3}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->createOkRequest(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Lcom/android/okhttp/Request;

    move-result-object v0

    .line 63
    .local v0, "okRequest":Lcom/android/okhttp/Request;
    iget-object v1, p0, Lcom/android/okhttp/AndroidShimResponseCache;->delegate:Lcom/android/okhttp/Cache;

    iget-object v1, v1, Lcom/android/okhttp/Cache;->internalCache:Lcom/android/okhttp/internal/InternalCache;

    invoke-interface {v1, v0}, Lcom/android/okhttp/internal/InternalCache;->get(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response;

    move-result-object v1

    .line 64
    .local v1, "okResponse":Lcom/android/okhttp/Response;
    if-nez v1, :cond_10

    .line 65
    const/4 v2, 0x0

    return-object v2

    .line 67
    :cond_10
    invoke-static {v1}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->createJavaCacheResponse(Lcom/android/okhttp/Response;)Ljava/net/CacheResponse;

    move-result-object v2

    return-object v2
.end method

.method public greylist-max-o getCache()Lcom/android/okhttp/Cache;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/android/okhttp/AndroidShimResponseCache;->delegate:Lcom/android/okhttp/Cache;

    return-object v0
.end method

.method public greylist-max-o getHitCount()I
    .registers 2

    .line 124
    iget-object v0, p0, Lcom/android/okhttp/AndroidShimResponseCache;->delegate:Lcom/android/okhttp/Cache;

    invoke-virtual {v0}, Lcom/android/okhttp/Cache;->getHitCount()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getNetworkCount()I
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/android/okhttp/AndroidShimResponseCache;->delegate:Lcom/android/okhttp/Cache;

    invoke-virtual {v0}, Lcom/android/okhttp/Cache;->getNetworkCount()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getRequestCount()I
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/android/okhttp/AndroidShimResponseCache;->delegate:Lcom/android/okhttp/Cache;

    invoke-virtual {v0}, Lcom/android/okhttp/Cache;->getRequestCount()I

    move-result v0

    return v0
.end method

.method public greylist-max-o isEquivalent(Ljava/io/File;J)Z
    .registers 7
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "maxSize"    # J

    .line 50
    invoke-virtual {p0}, Lcom/android/okhttp/AndroidShimResponseCache;->getCache()Lcom/android/okhttp/Cache;

    move-result-object v0

    .line 51
    .local v0, "installedCache":Lcom/android/okhttp/Cache;
    invoke-virtual {v0}, Lcom/android/okhttp/Cache;->getDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 52
    invoke-virtual {v0}, Lcom/android/okhttp/Cache;->getMaxSize()J

    move-result-wide v1

    cmp-long v1, v1, p2

    if-nez v1, :cond_1e

    .line 53
    invoke-virtual {v0}, Lcom/android/okhttp/Cache;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    .line 51
    :goto_1f
    return v1
.end method

.method public greylist-max-o maxSize()J
    .registers 3

    .line 98
    iget-object v0, p0, Lcom/android/okhttp/AndroidShimResponseCache;->delegate:Lcom/android/okhttp/Cache;

    invoke-virtual {v0}, Lcom/android/okhttp/Cache;->getMaxSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;
    .registers 6
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "urlConnection"    # Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-static {p1, p2}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->createOkResponseForCachePut(Ljava/net/URI;Ljava/net/URLConnection;)Lcom/android/okhttp/Response;

    move-result-object v0

    .line 72
    .local v0, "okResponse":Lcom/android/okhttp/Response;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 74
    return-object v1

    .line 76
    :cond_8
    iget-object v2, p0, Lcom/android/okhttp/AndroidShimResponseCache;->delegate:Lcom/android/okhttp/Cache;

    iget-object v2, v2, Lcom/android/okhttp/Cache;->internalCache:Lcom/android/okhttp/internal/InternalCache;

    .line 77
    invoke-interface {v2, v0}, Lcom/android/okhttp/internal/InternalCache;->put(Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/CacheRequest;

    move-result-object v2

    .line 78
    .local v2, "okCacheRequest":Lcom/android/okhttp/internal/http/CacheRequest;
    if-nez v2, :cond_13

    .line 79
    return-object v1

    .line 81
    :cond_13
    invoke-static {v2}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->createJavaCacheRequest(Lcom/android/okhttp/internal/http/CacheRequest;)Ljava/net/CacheRequest;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o size()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/android/okhttp/AndroidShimResponseCache;->delegate:Lcom/android/okhttp/Cache;

    invoke-virtual {v0}, Lcom/android/okhttp/Cache;->getSize()J

    move-result-wide v0

    return-wide v0
.end method
