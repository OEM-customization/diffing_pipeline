.class public Lcom/android/okhttp/AndroidShimResponseCache;
.super Ljava/net/ResponseCache;
.source "AndroidShimResponseCache.java"


# instance fields
.field private final delegate:Lcom/android/okhttp/Cache;


# direct methods
.method private constructor <init>(Lcom/android/okhttp/Cache;)V
    .registers 2
    .param p1, "delegate"    # Lcom/android/okhttp/Cache;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/net/ResponseCache;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/okhttp/AndroidShimResponseCache;->delegate:Lcom/android/okhttp/Cache;

    .line 40
    return-void
.end method

.method public static create(Ljava/io/File;J)Lcom/android/okhttp/AndroidShimResponseCache;
    .registers 6
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "maxSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Lcom/android/okhttp/Cache;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/okhttp/Cache;-><init>(Ljava/io/File;J)V

    .line 44
    .local v0, "cache":Lcom/android/okhttp/Cache;
    new-instance v1, Lcom/android/okhttp/AndroidShimResponseCache;

    invoke-direct {v1, v0}, Lcom/android/okhttp/AndroidShimResponseCache;-><init>(Lcom/android/okhttp/Cache;)V

    return-object v1
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/okhttp/AndroidShimResponseCache;->delegate:Lcom/android/okhttp/Cache;

    invoke-virtual {v0}, Lcom/android/okhttp/Cache;->close()V

    .line 140
    return-void
.end method

.method public delete()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/okhttp/AndroidShimResponseCache;->delegate:Lcom/android/okhttp/Cache;

    invoke-virtual {v0}, Lcom/android/okhttp/Cache;->delete()V

    .line 147
    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/okhttp/AndroidShimResponseCache;->delegate:Lcom/android/okhttp/Cache;

    invoke-virtual {v0}, Lcom/android/okhttp/Cache;->flush()V

    .line 106
    return-void
.end method

.method public get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;
    .registers 8
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "requestMethod"    # Ljava/lang/String;
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

    .prologue
    .local p3, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v3, 0x0

    .line 60
    invoke-static {p1, p2, p3}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->createOkRequest(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Lcom/android/okhttp/Request;

    move-result-object v0

    .line 61
    .local v0, "okRequest":Lcom/android/okhttp/Request;
    iget-object v2, p0, Lcom/android/okhttp/AndroidShimResponseCache;->delegate:Lcom/android/okhttp/Cache;

    iget-object v2, v2, Lcom/android/okhttp/Cache;->internalCache:Lcom/android/okhttp/internal/InternalCache;

    invoke-interface {v2, v0}, Lcom/android/okhttp/internal/InternalCache;->get(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response;

    move-result-object v1

    .line 62
    .local v1, "okResponse":Lcom/android/okhttp/Response;
    if-nez v1, :cond_10

    .line 63
    return-object v3

    .line 65
    :cond_10
    invoke-static {v1}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->createJavaCacheResponse(Lcom/android/okhttp/Response;)Ljava/net/CacheResponse;

    move-result-object v2

    return-object v2
.end method

.method public getCache()Lcom/android/okhttp/Cache;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/okhttp/AndroidShimResponseCache;->delegate:Lcom/android/okhttp/Cache;

    return-object v0
.end method

.method public getHitCount()I
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/okhttp/AndroidShimResponseCache;->delegate:Lcom/android/okhttp/Cache;

    invoke-virtual {v0}, Lcom/android/okhttp/Cache;->getHitCount()I

    move-result v0

    return v0
.end method

.method public getNetworkCount()I
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/okhttp/AndroidShimResponseCache;->delegate:Lcom/android/okhttp/Cache;

    invoke-virtual {v0}, Lcom/android/okhttp/Cache;->getNetworkCount()I

    move-result v0

    return v0
.end method

.method public getRequestCount()I
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/okhttp/AndroidShimResponseCache;->delegate:Lcom/android/okhttp/Cache;

    invoke-virtual {v0}, Lcom/android/okhttp/Cache;->getRequestCount()I

    move-result v0

    return v0
.end method

.method public isEquivalent(Ljava/io/File;J)Z
    .registers 8
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "maxSize"    # J

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/okhttp/AndroidShimResponseCache;->getCache()Lcom/android/okhttp/Cache;

    move-result-object v0

    .line 49
    .local v0, "installedCache":Lcom/android/okhttp/Cache;
    invoke-virtual {v0}, Lcom/android/okhttp/Cache;->getDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 50
    invoke-virtual {v0}, Lcom/android/okhttp/Cache;->getMaxSize()J

    move-result-wide v2

    cmp-long v1, v2, p2

    if-nez v1, :cond_1d

    .line 51
    invoke-virtual {v0}, Lcom/android/okhttp/Cache;->isClosed()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 49
    :goto_1c
    return v1

    :cond_1d
    const/4 v1, 0x0

    goto :goto_1c
.end method

.method public maxSize()J
    .registers 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/okhttp/AndroidShimResponseCache;->delegate:Lcom/android/okhttp/Cache;

    invoke-virtual {v0}, Lcom/android/okhttp/Cache;->getMaxSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;
    .registers 7
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "urlConnection"    # Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 69
    invoke-static {p1, p2}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->createOkResponseForCachePut(Ljava/net/URI;Ljava/net/URLConnection;)Lcom/android/okhttp/Response;

    move-result-object v1

    .line 70
    .local v1, "okResponse":Lcom/android/okhttp/Response;
    if-nez v1, :cond_8

    .line 72
    return-object v3

    .line 75
    :cond_8
    iget-object v2, p0, Lcom/android/okhttp/AndroidShimResponseCache;->delegate:Lcom/android/okhttp/Cache;

    iget-object v2, v2, Lcom/android/okhttp/Cache;->internalCache:Lcom/android/okhttp/internal/InternalCache;

    invoke-interface {v2, v1}, Lcom/android/okhttp/internal/InternalCache;->put(Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/CacheRequest;

    move-result-object v0

    .line 76
    .local v0, "okCacheRequest":Lcom/android/okhttp/internal/http/CacheRequest;
    if-nez v0, :cond_13

    .line 77
    return-object v3

    .line 79
    :cond_13
    invoke-static {v0}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->createJavaCacheRequest(Lcom/android/okhttp/internal/http/CacheRequest;)Ljava/net/CacheRequest;

    move-result-object v2

    return-object v2
.end method

.method public size()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/okhttp/AndroidShimResponseCache;->delegate:Lcom/android/okhttp/Cache;

    invoke-virtual {v0}, Lcom/android/okhttp/Cache;->getSize()J

    move-result-wide v0

    return-wide v0
.end method
