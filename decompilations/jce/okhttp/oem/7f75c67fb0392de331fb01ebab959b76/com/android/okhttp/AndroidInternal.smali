.class public Lcom/android/okhttp/AndroidInternal;
.super Ljava/lang/Object;
.source "AndroidInternal.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static blacklist setResponseCache(Lcom/android/okhttp/OkUrlFactory;Ljava/net/ResponseCache;)V
    .registers 6
    .param p0, "okUrlFactory"    # Lcom/android/okhttp/OkUrlFactory;
    .param p1, "responseCache"    # Ljava/net/ResponseCache;

    .line 38
    invoke-virtual {p0}, Lcom/android/okhttp/OkUrlFactory;->client()Lcom/android/okhttp/OkHttpClient;

    move-result-object v0

    .line 39
    .local v0, "client":Lcom/android/okhttp/OkHttpClient;
    instance-of v1, p1, Lcom/android/okhttp/OkCacheContainer;

    if-eqz v1, :cond_13

    .line 43
    move-object v1, p1

    check-cast v1, Lcom/android/okhttp/OkCacheContainer;

    .line 44
    .local v1, "okCacheContainer":Lcom/android/okhttp/OkCacheContainer;
    invoke-interface {v1}, Lcom/android/okhttp/OkCacheContainer;->getCache()Lcom/android/okhttp/Cache;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/okhttp/OkHttpClient;->setCache(Lcom/android/okhttp/Cache;)Lcom/android/okhttp/OkHttpClient;

    .line 46
    .end local v1    # "okCacheContainer":Lcom/android/okhttp/OkCacheContainer;
    goto :goto_32

    :cond_13
    instance-of v1, p1, Lcom/android/okhttp/internalandroidapi/HasCacheHolder;

    if-eqz v1, :cond_26

    .line 50
    move-object v1, p1

    check-cast v1, Lcom/android/okhttp/internalandroidapi/HasCacheHolder;

    .line 51
    .local v1, "hasCacheHolder":Lcom/android/okhttp/internalandroidapi/HasCacheHolder;
    invoke-interface {v1}, Lcom/android/okhttp/internalandroidapi/HasCacheHolder;->getCacheHolder()Lcom/android/okhttp/internalandroidapi/HasCacheHolder$CacheHolder;

    move-result-object v2

    .line 52
    .local v2, "cacheHolder":Lcom/android/okhttp/internalandroidapi/HasCacheHolder$CacheHolder;
    invoke-virtual {v2}, Lcom/android/okhttp/internalandroidapi/HasCacheHolder$CacheHolder;->getCache()Lcom/android/okhttp/Cache;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/okhttp/OkHttpClient;->setCache(Lcom/android/okhttp/Cache;)Lcom/android/okhttp/OkHttpClient;

    .line 54
    .end local v1    # "hasCacheHolder":Lcom/android/okhttp/internalandroidapi/HasCacheHolder;
    .end local v2    # "cacheHolder":Lcom/android/okhttp/internalandroidapi/HasCacheHolder$CacheHolder;
    goto :goto_32

    .line 55
    :cond_26
    if-eqz p1, :cond_2e

    new-instance v1, Lcom/android/okhttp/internal/huc/CacheAdapter;

    invoke-direct {v1, p1}, Lcom/android/okhttp/internal/huc/CacheAdapter;-><init>(Ljava/net/ResponseCache;)V

    goto :goto_2f

    :cond_2e
    const/4 v1, 0x0

    :goto_2f
    invoke-virtual {v0, v1}, Lcom/android/okhttp/OkHttpClient;->setInternalCache(Lcom/android/okhttp/internal/InternalCache;)V

    .line 57
    :goto_32
    return-void
.end method
