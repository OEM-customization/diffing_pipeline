.class final Lcom/android/okhttp/OkHttpClient$1;
.super Lcom/android/okhttp/internal/Internal;
.source "OkHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/okhttp/internal/Internal;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public addLenient(Lcom/android/okhttp/Headers$Builder;Ljava/lang/String;)V
    .registers 3
    .param p1, "builder"    # Lcom/android/okhttp/Headers$Builder;
    .param p2, "line"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-virtual {p1, p2}, Lcom/android/okhttp/Headers$Builder;->addLenient(Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    .line 64
    return-void
.end method

.method public addLenient(Lcom/android/okhttp/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "builder"    # Lcom/android/okhttp/Headers$Builder;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-virtual {p1, p2, p3}, Lcom/android/okhttp/Headers$Builder;->addLenient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    .line 68
    return-void
.end method

.method public apply(Lcom/android/okhttp/ConnectionSpec;Ljavax/net/ssl/SSLSocket;Z)V
    .registers 4
    .param p1, "tlsConfiguration"    # Lcom/android/okhttp/ConnectionSpec;
    .param p2, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p3, "isFallback"    # Z

    .prologue
    .line 107
    invoke-virtual {p1, p2, p3}, Lcom/android/okhttp/ConnectionSpec;->apply(Ljavax/net/ssl/SSLSocket;Z)V

    .line 108
    return-void
.end method

.method public callEngineGetStreamAllocation(Lcom/android/okhttp/Call;)Lcom/android/okhttp/internal/http/StreamAllocation;
    .registers 3
    .param p1, "call"    # Lcom/android/okhttp/Call;

    .prologue
    .line 102
    iget-object v0, p1, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v0, v0, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    return-object v0
.end method

.method public callEnqueue(Lcom/android/okhttp/Call;Lcom/android/okhttp/Callback;Z)V
    .registers 4
    .param p1, "call"    # Lcom/android/okhttp/Call;
    .param p2, "responseCallback"    # Lcom/android/okhttp/Callback;
    .param p3, "forWebSocket"    # Z

    .prologue
    .line 98
    invoke-virtual {p1, p2, p3}, Lcom/android/okhttp/Call;->enqueue(Lcom/android/okhttp/Callback;Z)V

    .line 99
    return-void
.end method

.method public connectionBecameIdle(Lcom/android/okhttp/ConnectionPool;Lcom/android/okhttp/internal/io/RealConnection;)Z
    .registers 4
    .param p1, "pool"    # Lcom/android/okhttp/ConnectionPool;
    .param p2, "connection"    # Lcom/android/okhttp/internal/io/RealConnection;

    .prologue
    .line 80
    invoke-virtual {p1, p2}, Lcom/android/okhttp/ConnectionPool;->connectionBecameIdle(Lcom/android/okhttp/internal/io/RealConnection;)Z

    move-result v0

    return v0
.end method

.method public get(Lcom/android/okhttp/ConnectionPool;Lcom/android/okhttp/Address;Lcom/android/okhttp/internal/http/StreamAllocation;)Lcom/android/okhttp/internal/io/RealConnection;
    .registers 5
    .param p1, "pool"    # Lcom/android/okhttp/ConnectionPool;
    .param p2, "address"    # Lcom/android/okhttp/Address;
    .param p3, "streamAllocation"    # Lcom/android/okhttp/internal/http/StreamAllocation;

    .prologue
    .line 85
    invoke-virtual {p1, p2, p3}, Lcom/android/okhttp/ConnectionPool;->get(Lcom/android/okhttp/Address;Lcom/android/okhttp/internal/http/StreamAllocation;)Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v0

    return-object v0
.end method

.method public getHttpUrlChecked(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl;
    .registers 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-static {p1}, Lcom/android/okhttp/HttpUrl;->getChecked(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl;

    move-result-object v0

    return-object v0
.end method

.method public internalCache(Lcom/android/okhttp/OkHttpClient;)Lcom/android/okhttp/internal/InternalCache;
    .registers 3
    .param p1, "client"    # Lcom/android/okhttp/OkHttpClient;

    .prologue
    .line 75
    invoke-virtual {p1}, Lcom/android/okhttp/OkHttpClient;->internalCache()Lcom/android/okhttp/internal/InternalCache;

    move-result-object v0

    return-object v0
.end method

.method public put(Lcom/android/okhttp/ConnectionPool;Lcom/android/okhttp/internal/io/RealConnection;)V
    .registers 3
    .param p1, "pool"    # Lcom/android/okhttp/ConnectionPool;
    .param p2, "connection"    # Lcom/android/okhttp/internal/io/RealConnection;

    .prologue
    .line 89
    invoke-virtual {p1, p2}, Lcom/android/okhttp/ConnectionPool;->put(Lcom/android/okhttp/internal/io/RealConnection;)V

    .line 90
    return-void
.end method

.method public routeDatabase(Lcom/android/okhttp/ConnectionPool;)Lcom/android/okhttp/internal/RouteDatabase;
    .registers 3
    .param p1, "connectionPool"    # Lcom/android/okhttp/ConnectionPool;

    .prologue
    .line 93
    iget-object v0, p1, Lcom/android/okhttp/ConnectionPool;->routeDatabase:Lcom/android/okhttp/internal/RouteDatabase;

    return-object v0
.end method

.method public setCache(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/internal/InternalCache;)V
    .registers 3
    .param p1, "client"    # Lcom/android/okhttp/OkHttpClient;
    .param p2, "internalCache"    # Lcom/android/okhttp/internal/InternalCache;

    .prologue
    .line 71
    invoke-virtual {p1, p2}, Lcom/android/okhttp/OkHttpClient;->setInternalCache(Lcom/android/okhttp/internal/InternalCache;)V

    .line 72
    return-void
.end method
