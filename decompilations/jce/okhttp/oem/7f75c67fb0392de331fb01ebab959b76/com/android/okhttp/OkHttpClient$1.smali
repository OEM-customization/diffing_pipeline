.class Lcom/android/okhttp/OkHttpClient$1;
.super Lcom/android/okhttp/internal/Internal;
.source "OkHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Lcom/android/okhttp/internal/Internal;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addLenient(Lcom/android/okhttp/Headers$Builder;Ljava/lang/String;)V
    .registers 3
    .param p1, "builder"    # Lcom/android/okhttp/Headers$Builder;
    .param p2, "line"    # Ljava/lang/String;

    .line 66
    invoke-virtual {p1, p2}, Lcom/android/okhttp/Headers$Builder;->addLenient(Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    .line 67
    return-void
.end method

.method public blacklist addLenient(Lcom/android/okhttp/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "builder"    # Lcom/android/okhttp/Headers$Builder;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 70
    invoke-virtual {p1, p2, p3}, Lcom/android/okhttp/Headers$Builder;->addLenient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    .line 71
    return-void
.end method

.method public blacklist apply(Lcom/android/okhttp/ConnectionSpec;Ljavax/net/ssl/SSLSocket;Z)V
    .registers 4
    .param p1, "tlsConfiguration"    # Lcom/android/okhttp/ConnectionSpec;
    .param p2, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p3, "isFallback"    # Z

    .line 110
    invoke-virtual {p1, p2, p3}, Lcom/android/okhttp/ConnectionSpec;->apply(Ljavax/net/ssl/SSLSocket;Z)V

    .line 111
    return-void
.end method

.method public blacklist callEngineGetStreamAllocation(Lcom/android/okhttp/Call;)Lcom/android/okhttp/internal/http/StreamAllocation;
    .registers 3
    .param p1, "call"    # Lcom/android/okhttp/Call;

    .line 105
    iget-object v0, p1, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v0, v0, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    return-object v0
.end method

.method public blacklist callEnqueue(Lcom/android/okhttp/Call;Lcom/android/okhttp/Callback;Z)V
    .registers 4
    .param p1, "call"    # Lcom/android/okhttp/Call;
    .param p2, "responseCallback"    # Lcom/android/okhttp/Callback;
    .param p3, "forWebSocket"    # Z

    .line 101
    invoke-virtual {p1, p2, p3}, Lcom/android/okhttp/Call;->enqueue(Lcom/android/okhttp/Callback;Z)V

    .line 102
    return-void
.end method

.method public blacklist connectionBecameIdle(Lcom/android/okhttp/ConnectionPool;Lcom/android/okhttp/internal/io/RealConnection;)Z
    .registers 4
    .param p1, "pool"    # Lcom/android/okhttp/ConnectionPool;
    .param p2, "connection"    # Lcom/android/okhttp/internal/io/RealConnection;

    .line 83
    invoke-virtual {p1, p2}, Lcom/android/okhttp/ConnectionPool;->connectionBecameIdle(Lcom/android/okhttp/internal/io/RealConnection;)Z

    move-result v0

    return v0
.end method

.method public blacklist get(Lcom/android/okhttp/ConnectionPool;Lcom/android/okhttp/Address;Lcom/android/okhttp/internal/http/StreamAllocation;)Lcom/android/okhttp/internal/io/RealConnection;
    .registers 5
    .param p1, "pool"    # Lcom/android/okhttp/ConnectionPool;
    .param p2, "address"    # Lcom/android/okhttp/Address;
    .param p3, "streamAllocation"    # Lcom/android/okhttp/internal/http/StreamAllocation;

    .line 88
    invoke-virtual {p1, p2, p3}, Lcom/android/okhttp/ConnectionPool;->get(Lcom/android/okhttp/Address;Lcom/android/okhttp/internal/http/StreamAllocation;)Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getHttpUrlChecked(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl;
    .registers 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 115
    invoke-static {p1}, Lcom/android/okhttp/HttpUrl;->getChecked(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist internalCache(Lcom/android/okhttp/OkHttpClient;)Lcom/android/okhttp/internal/InternalCache;
    .registers 3
    .param p1, "client"    # Lcom/android/okhttp/OkHttpClient;

    .line 78
    invoke-virtual {p1}, Lcom/android/okhttp/OkHttpClient;->internalCache()Lcom/android/okhttp/internal/InternalCache;

    move-result-object v0

    return-object v0
.end method

.method public blacklist put(Lcom/android/okhttp/ConnectionPool;Lcom/android/okhttp/internal/io/RealConnection;)V
    .registers 3
    .param p1, "pool"    # Lcom/android/okhttp/ConnectionPool;
    .param p2, "connection"    # Lcom/android/okhttp/internal/io/RealConnection;

    .line 92
    invoke-virtual {p1, p2}, Lcom/android/okhttp/ConnectionPool;->put(Lcom/android/okhttp/internal/io/RealConnection;)V

    .line 93
    return-void
.end method

.method public blacklist routeDatabase(Lcom/android/okhttp/ConnectionPool;)Lcom/android/okhttp/internal/RouteDatabase;
    .registers 3
    .param p1, "connectionPool"    # Lcom/android/okhttp/ConnectionPool;

    .line 96
    iget-object v0, p1, Lcom/android/okhttp/ConnectionPool;->routeDatabase:Lcom/android/okhttp/internal/RouteDatabase;

    return-object v0
.end method

.method public blacklist setCache(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/internal/InternalCache;)V
    .registers 3
    .param p1, "client"    # Lcom/android/okhttp/OkHttpClient;
    .param p2, "internalCache"    # Lcom/android/okhttp/internal/InternalCache;

    .line 74
    invoke-virtual {p1, p2}, Lcom/android/okhttp/OkHttpClient;->setInternalCache(Lcom/android/okhttp/internal/InternalCache;)V

    .line 75
    return-void
.end method
