.class public final Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory;
.super Ljava/lang/Object;
.source "HttpURLConnectionFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory$DnsAdapter;
    }
.end annotation


# instance fields
.field private blacklist connectionPool:Lcom/android/okhttp/ConnectionPool;

.field private blacklist dns:Lcom/android/okhttp/Dns;


# direct methods
.method public constructor blacklist core-platform-api <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method private blacklist internalOpenConnection(Ljava/net/URL;Ljavax/net/SocketFactory;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .registers 8
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "socketFactoryOrNull"    # Ljavax/net/SocketFactory;
    .param p3, "proxyOrNull"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "protocol":Ljava/lang/String;
    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 126
    invoke-static {p3}, Lcom/android/okhttp/HttpHandler;->createHttpOkUrlFactory(Ljava/net/Proxy;)Lcom/android/okhttp/OkUrlFactory;

    move-result-object v1

    .local v1, "okUrlFactory":Lcom/android/okhttp/OkUrlFactory;
    goto :goto_1d

    .line 127
    .end local v1    # "okUrlFactory":Lcom/android/okhttp/OkUrlFactory;
    :cond_11
    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 128
    invoke-static {p3}, Lcom/android/okhttp/HttpsHandler;->createHttpsOkUrlFactory(Ljava/net/Proxy;)Lcom/android/okhttp/OkUrlFactory;

    move-result-object v1

    .line 134
    .restart local v1    # "okUrlFactory":Lcom/android/okhttp/OkUrlFactory;
    :goto_1d
    invoke-virtual {v1}, Lcom/android/okhttp/OkUrlFactory;->client()Lcom/android/okhttp/OkHttpClient;

    move-result-object v2

    .line 135
    .local v2, "client":Lcom/android/okhttp/OkHttpClient;
    iget-object v3, p0, Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    if-eqz v3, :cond_28

    .line 136
    invoke-virtual {v2, v3}, Lcom/android/okhttp/OkHttpClient;->setConnectionPool(Lcom/android/okhttp/ConnectionPool;)Lcom/android/okhttp/OkHttpClient;

    .line 138
    :cond_28
    iget-object v3, p0, Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory;->dns:Lcom/android/okhttp/Dns;

    if-eqz v3, :cond_2f

    .line 139
    invoke-virtual {v2, v3}, Lcom/android/okhttp/OkHttpClient;->setDns(Lcom/android/okhttp/Dns;)Lcom/android/okhttp/OkHttpClient;

    .line 141
    :cond_2f
    if-eqz p2, :cond_34

    .line 142
    invoke-virtual {v2, p2}, Lcom/android/okhttp/OkHttpClient;->setSocketFactory(Ljavax/net/SocketFactory;)Lcom/android/okhttp/OkHttpClient;

    .line 144
    :cond_34
    if-nez p3, :cond_3b

    .line 145
    invoke-virtual {v1, p1}, Lcom/android/okhttp/OkUrlFactory;->open(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v3

    return-object v3

    .line 147
    :cond_3b
    invoke-static {v1, p1, p3}, Lcom/android/okhttp/OkUrlFactories;->open(Lcom/android/okhttp/OkUrlFactory;Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;

    move-result-object v3

    return-object v3

    .line 131
    .end local v1    # "okUrlFactory":Lcom/android/okhttp/OkUrlFactory;
    .end local v2    # "client":Lcom/android/okhttp/OkHttpClient;
    :cond_40
    new-instance v1, Ljava/net/MalformedURLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid URL or unrecognized protocol "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public blacklist openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .registers 3
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory;->internalOpenConnection(Ljava/net/URL;Ljavax/net/SocketFactory;Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    return-object v0
.end method

.method public blacklist openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .registers 4
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "proxy"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory;->internalOpenConnection(Ljava/net/URL;Ljavax/net/SocketFactory;Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    return-object v0
.end method

.method public blacklist openConnection(Ljava/net/URL;Ljavax/net/SocketFactory;)Ljava/net/URLConnection;
    .registers 4
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "socketFactory"    # Ljavax/net/SocketFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory;->internalOpenConnection(Ljava/net/URL;Ljavax/net/SocketFactory;Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    return-object v0
.end method

.method public blacklist core-platform-api openConnection(Ljava/net/URL;Ljavax/net/SocketFactory;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .registers 5
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "socketFactory"    # Ljavax/net/SocketFactory;
    .param p3, "proxy"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-direct {p0, p1, p2, p3}, Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory;->internalOpenConnection(Ljava/net/URL;Ljavax/net/SocketFactory;Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    return-object v0
.end method

.method public blacklist core-platform-api setDns(Lcom/android/okhttp/internalandroidapi/Dns;)V
    .registers 3
    .param p1, "dns"    # Lcom/android/okhttp/internalandroidapi/Dns;

    .line 78
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    new-instance v0, Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory$DnsAdapter;

    invoke-direct {v0, p1}, Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory$DnsAdapter;-><init>(Lcom/android/okhttp/internalandroidapi/Dns;)V

    iput-object v0, p0, Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory;->dns:Lcom/android/okhttp/Dns;

    .line 80
    return-void
.end method

.method public blacklist core-platform-api setNewConnectionPool(IJLjava/util/concurrent/TimeUnit;)V
    .registers 6
    .param p1, "maxIdleConnections"    # I
    .param p2, "keepAliveDuration"    # J
    .param p4, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 73
    new-instance v0, Lcom/android/okhttp/ConnectionPool;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/okhttp/ConnectionPool;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    iput-object v0, p0, Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    .line 74
    return-void
.end method
