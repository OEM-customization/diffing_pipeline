.class public Lcom/android/okhttp/HttpHandler;
.super Ljava/net/URLStreamHandler;
.source "HttpHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/HttpHandler$CleartextURLFilter;
    }
.end annotation


# static fields
.field private static final CLEARTEXT_FILTER:Lcom/android/okhttp/HttpHandler$CleartextURLFilter;

.field private static final CLEARTEXT_ONLY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final configAwareConnectionPool:Lcom/android/okhttp/ConfigAwareConnectionPool;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 36
    sget-object v0, Lcom/android/okhttp/ConnectionSpec;->CLEARTEXT:Lcom/android/okhttp/ConnectionSpec;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 35
    sput-object v0, Lcom/android/okhttp/HttpHandler;->CLEARTEXT_ONLY:Ljava/util/List;

    .line 38
    new-instance v0, Lcom/android/okhttp/HttpHandler$CleartextURLFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/okhttp/HttpHandler$CleartextURLFilter;-><init>(Lcom/android/okhttp/HttpHandler$CleartextURLFilter;)V

    sput-object v0, Lcom/android/okhttp/HttpHandler;->CLEARTEXT_FILTER:Lcom/android/okhttp/HttpHandler$CleartextURLFilter;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    .line 41
    invoke-static {}, Lcom/android/okhttp/ConfigAwareConnectionPool;->getInstance()Lcom/android/okhttp/ConfigAwareConnectionPool;

    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/android/okhttp/HttpHandler;->configAwareConnectionPool:Lcom/android/okhttp/ConfigAwareConnectionPool;

    .line 33
    return-void
.end method

.method public static createHttpOkUrlFactory(Ljava/net/Proxy;)Lcom/android/okhttp/OkUrlFactory;
    .registers 7
    .param p0, "proxy"    # Ljava/net/Proxy;

    .prologue
    const-wide/16 v4, 0x0

    .line 73
    new-instance v0, Lcom/android/okhttp/OkHttpClient;

    invoke-direct {v0}, Lcom/android/okhttp/OkHttpClient;-><init>()V

    .line 76
    .local v0, "client":Lcom/android/okhttp/OkHttpClient;
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v3}, Lcom/android/okhttp/OkHttpClient;->setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 77
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v3}, Lcom/android/okhttp/OkHttpClient;->setReadTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 78
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v3}, Lcom/android/okhttp/OkHttpClient;->setWriteTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 82
    invoke-static {}, Ljava/net/HttpURLConnection;->getFollowRedirects()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/okhttp/OkHttpClient;->setFollowRedirects(Z)V

    .line 85
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/okhttp/OkHttpClient;->setFollowSslRedirects(Z)Lcom/android/okhttp/OkHttpClient;

    .line 88
    sget-object v3, Lcom/android/okhttp/HttpHandler;->CLEARTEXT_ONLY:Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/android/okhttp/OkHttpClient;->setConnectionSpecs(Ljava/util/List;)Lcom/android/okhttp/OkHttpClient;

    .line 92
    if-eqz p0, :cond_2b

    .line 93
    invoke-virtual {v0, p0}, Lcom/android/okhttp/OkHttpClient;->setProxy(Ljava/net/Proxy;)Lcom/android/okhttp/OkHttpClient;

    .line 97
    :cond_2b
    new-instance v1, Lcom/android/okhttp/OkUrlFactory;

    invoke-direct {v1, v0}, Lcom/android/okhttp/OkUrlFactory;-><init>(Lcom/android/okhttp/OkHttpClient;)V

    .line 101
    .local v1, "okUrlFactory":Lcom/android/okhttp/OkUrlFactory;
    sget-object v3, Lcom/android/okhttp/HttpHandler;->CLEARTEXT_FILTER:Lcom/android/okhttp/HttpHandler$CleartextURLFilter;

    invoke-virtual {v1, v3}, Lcom/android/okhttp/OkUrlFactory;->setUrlFilter(Lcom/android/okhttp/internal/URLFilter;)V

    .line 103
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v2

    .line 104
    .local v2, "responseCache":Ljava/net/ResponseCache;
    if-eqz v2, :cond_3e

    .line 105
    invoke-static {v1, v2}, Lcom/android/okhttp/AndroidInternal;->setResponseCache(Lcom/android/okhttp/OkUrlFactory;Ljava/net/ResponseCache;)V

    .line 107
    :cond_3e
    return-object v1
.end method


# virtual methods
.method protected getDefaultPort()I
    .registers 2

    .prologue
    .line 55
    const/16 v0, 0x50

    return v0
.end method

.method protected newOkUrlFactory(Ljava/net/Proxy;)Lcom/android/okhttp/OkUrlFactory;
    .registers 5
    .param p1, "proxy"    # Ljava/net/Proxy;

    .prologue
    .line 59
    invoke-static {p1}, Lcom/android/okhttp/HttpHandler;->createHttpOkUrlFactory(Ljava/net/Proxy;)Lcom/android/okhttp/OkUrlFactory;

    move-result-object v0

    .line 63
    .local v0, "okUrlFactory":Lcom/android/okhttp/OkUrlFactory;
    invoke-virtual {v0}, Lcom/android/okhttp/OkUrlFactory;->client()Lcom/android/okhttp/OkHttpClient;

    move-result-object v1

    iget-object v2, p0, Lcom/android/okhttp/HttpHandler;->configAwareConnectionPool:Lcom/android/okhttp/ConfigAwareConnectionPool;

    invoke-virtual {v2}, Lcom/android/okhttp/ConfigAwareConnectionPool;->get()Lcom/android/okhttp/ConnectionPool;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/OkHttpClient;->setConnectionPool(Lcom/android/okhttp/ConnectionPool;)Lcom/android/okhttp/OkHttpClient;

    .line 64
    return-object v0
.end method

.method protected openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .registers 3
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/okhttp/HttpHandler;->newOkUrlFactory(Ljava/net/Proxy;)Lcom/android/okhttp/OkUrlFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/okhttp/OkUrlFactory;->open(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method protected openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .registers 5
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "proxy"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    if-eqz p1, :cond_4

    if-nez p2, :cond_d

    .line 49
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "url == null || proxy == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_d
    invoke-virtual {p0, p2}, Lcom/android/okhttp/HttpHandler;->newOkUrlFactory(Ljava/net/Proxy;)Lcom/android/okhttp/OkUrlFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/okhttp/OkUrlFactory;->open(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method
