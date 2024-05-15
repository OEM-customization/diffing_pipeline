.class public Lcom/android/okhttp/AndroidInternal;
.super Ljava/lang/Object;
.source "AndroidInternal.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static setResponseCache(Lcom/android/okhttp/OkUrlFactory;Ljava/net/ResponseCache;)V
    .registers 6
    .param p0, "okUrlFactory"    # Lcom/android/okhttp/OkUrlFactory;
    .param p1, "responseCache"    # Ljava/net/ResponseCache;

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-virtual {p0}, Lcom/android/okhttp/OkUrlFactory;->client()Lcom/android/okhttp/OkHttpClient;

    move-result-object v0

    .line 35
    .local v0, "client":Lcom/android/okhttp/OkHttpClient;
    instance-of v3, p1, Lcom/android/okhttp/OkCacheContainer;

    if-eqz v3, :cond_14

    move-object v1, p1

    .line 39
    check-cast v1, Lcom/android/okhttp/OkCacheContainer;

    .line 40
    .local v1, "okCacheContainer":Lcom/android/okhttp/OkCacheContainer;
    invoke-interface {v1}, Lcom/android/okhttp/OkCacheContainer;->getCache()Lcom/android/okhttp/Cache;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/okhttp/OkHttpClient;->setCache(Lcom/android/okhttp/Cache;)Lcom/android/okhttp/OkHttpClient;

    .line 44
    .end local v1    # "okCacheContainer":Lcom/android/okhttp/OkCacheContainer;
    :goto_13
    return-void

    .line 42
    :cond_14
    if-eqz p1, :cond_1b

    new-instance v2, Lcom/android/okhttp/internal/huc/CacheAdapter;

    invoke-direct {v2, p1}, Lcom/android/okhttp/internal/huc/CacheAdapter;-><init>(Ljava/net/ResponseCache;)V

    :cond_1b
    invoke-virtual {v0, v2}, Lcom/android/okhttp/OkHttpClient;->setInternalCache(Lcom/android/okhttp/internal/InternalCache;)V

    goto :goto_13
.end method
