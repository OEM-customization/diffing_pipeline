.class public final Lcom/android/okhttp/internal/huc/CacheAdapter;
.super Ljava/lang/Object;
.source "CacheAdapter.java"

# interfaces
.implements Lcom/android/okhttp/internal/InternalCache;


# instance fields
.field private final blacklist delegate:Ljava/net/ResponseCache;


# direct methods
.method public constructor blacklist <init>(Ljava/net/ResponseCache;)V
    .registers 2
    .param p1, "delegate"    # Ljava/net/ResponseCache;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/okhttp/internal/huc/CacheAdapter;->delegate:Ljava/net/ResponseCache;

    .line 42
    return-void
.end method

.method private blacklist getJavaCachedResponse(Lcom/android/okhttp/Request;)Ljava/net/CacheResponse;
    .registers 6
    .param p1, "request"    # Lcom/android/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    invoke-static {p1}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->extractJavaHeaders(Lcom/android/okhttp/Request;)Ljava/util/Map;

    move-result-object v0

    .line 105
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/android/okhttp/internal/huc/CacheAdapter;->delegate:Ljava/net/ResponseCache;

    invoke-virtual {p1}, Lcom/android/okhttp/Request;->uri()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/net/ResponseCache;->get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public blacklist get(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response;
    .registers 4
    .param p1, "request"    # Lcom/android/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/huc/CacheAdapter;->getJavaCachedResponse(Lcom/android/okhttp/Request;)Ljava/net/CacheResponse;

    move-result-object v0

    .line 50
    .local v0, "javaResponse":Ljava/net/CacheResponse;
    if-nez v0, :cond_8

    .line 51
    const/4 v1, 0x0

    return-object v1

    .line 53
    :cond_8
    invoke-static {p1, v0}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->createOkResponseForCacheGet(Lcom/android/okhttp/Request;Ljava/net/CacheResponse;)Lcom/android/okhttp/Response;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getDelegate()Ljava/net/ResponseCache;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/CacheAdapter;->delegate:Ljava/net/ResponseCache;

    return-object v0
.end method

.method public blacklist put(Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/CacheRequest;
    .registers 6
    .param p1, "response"    # Lcom/android/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Request;->uri()Ljava/net/URI;

    move-result-object v0

    .line 58
    .local v0, "uri":Ljava/net/URI;
    invoke-static {p1}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->createJavaUrlConnectionForCachePut(Lcom/android/okhttp/Response;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 59
    .local v1, "connection":Ljava/net/HttpURLConnection;
    iget-object v2, p0, Lcom/android/okhttp/internal/huc/CacheAdapter;->delegate:Ljava/net/ResponseCache;

    invoke-virtual {v2, v0, v1}, Ljava/net/ResponseCache;->put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;

    move-result-object v2

    .line 60
    .local v2, "request":Ljava/net/CacheRequest;
    if-nez v2, :cond_16

    .line 61
    const/4 v3, 0x0

    return-object v3

    .line 63
    :cond_16
    new-instance v3, Lcom/android/okhttp/internal/huc/CacheAdapter$1;

    invoke-direct {v3, p0, v2}, Lcom/android/okhttp/internal/huc/CacheAdapter$1;-><init>(Lcom/android/okhttp/internal/huc/CacheAdapter;Ljava/net/CacheRequest;)V

    return-object v3
.end method

.method public blacklist remove(Lcom/android/okhttp/Request;)V
    .registers 2
    .param p1, "request"    # Lcom/android/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    return-void
.end method

.method public blacklist trackConditionalCacheHit()V
    .registers 1

    .line 93
    return-void
.end method

.method public blacklist trackResponse(Lcom/android/okhttp/internal/http/CacheStrategy;)V
    .registers 2
    .param p1, "cacheStrategy"    # Lcom/android/okhttp/internal/http/CacheStrategy;

    .line 97
    return-void
.end method

.method public blacklist update(Lcom/android/okhttp/Response;Lcom/android/okhttp/Response;)V
    .registers 3
    .param p1, "cached"    # Lcom/android/okhttp/Response;
    .param p2, "network"    # Lcom/android/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    return-void
.end method
