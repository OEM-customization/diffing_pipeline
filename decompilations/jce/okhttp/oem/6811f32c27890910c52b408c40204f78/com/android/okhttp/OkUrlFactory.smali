.class public final Lcom/android/okhttp/OkUrlFactory;
.super Ljava/lang/Object;
.source "OkUrlFactory.java"

# interfaces
.implements Ljava/net/URLStreamHandlerFactory;
.implements Ljava/lang/Cloneable;


# instance fields
.field private final client:Lcom/android/okhttp/OkHttpClient;

.field private urlFilter:Lcom/android/okhttp/internal/URLFilter;


# direct methods
.method public constructor <init>(Lcom/android/okhttp/OkHttpClient;)V
    .registers 2
    .param p1, "client"    # Lcom/android/okhttp/OkHttpClient;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/okhttp/OkUrlFactory;->client:Lcom/android/okhttp/OkHttpClient;

    .line 35
    return-void
.end method


# virtual methods
.method public client()Lcom/android/okhttp/OkHttpClient;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/okhttp/OkUrlFactory;->client:Lcom/android/okhttp/OkHttpClient;

    return-object v0
.end method

.method public clone()Lcom/android/okhttp/OkUrlFactory;
    .registers 3

    .prologue
    .line 50
    new-instance v0, Lcom/android/okhttp/OkUrlFactory;

    iget-object v1, p0, Lcom/android/okhttp/OkUrlFactory;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v1}, Lcom/android/okhttp/OkHttpClient;->clone()Lcom/android/okhttp/OkHttpClient;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/okhttp/OkUrlFactory;-><init>(Lcom/android/okhttp/OkHttpClient;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/android/okhttp/OkUrlFactory;->clone()Lcom/android/okhttp/OkUrlFactory;

    move-result-object v0

    return-object v0
.end method

.method public createURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;
    .registers 3
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    .line 78
    const-string/jumbo v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string/jumbo v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    return-object v0

    .line 80
    :cond_16
    new-instance v0, Lcom/android/okhttp/OkUrlFactory$1;

    invoke-direct {v0, p0, p1}, Lcom/android/okhttp/OkUrlFactory$1;-><init>(Lcom/android/okhttp/OkUrlFactory;Ljava/lang/String;)V

    return-object v0
.end method

.method public open(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .registers 3
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/okhttp/OkUrlFactory;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/android/okhttp/OkHttpClient;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/okhttp/OkUrlFactory;->open(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method open(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;
    .registers 8
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "proxy"    # Ljava/net/Proxy;

    .prologue
    .line 58
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "protocol":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/okhttp/OkUrlFactory;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v2}, Lcom/android/okhttp/OkHttpClient;->copyWithDefaults()Lcom/android/okhttp/OkHttpClient;

    move-result-object v0

    .line 60
    .local v0, "copy":Lcom/android/okhttp/OkHttpClient;
    invoke-virtual {v0, p2}, Lcom/android/okhttp/OkHttpClient;->setProxy(Ljava/net/Proxy;)Lcom/android/okhttp/OkHttpClient;

    .line 62
    const-string/jumbo v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    new-instance v2, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;

    iget-object v3, p0, Lcom/android/okhttp/OkUrlFactory;->urlFilter:Lcom/android/okhttp/internal/URLFilter;

    invoke-direct {v2, p1, v0, v3}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;-><init>(Ljava/net/URL;Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/internal/URLFilter;)V

    return-object v2

    .line 63
    :cond_1e
    const-string/jumbo v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    new-instance v2, Lcom/android/okhttp/internal/huc/HttpsURLConnectionImpl;

    iget-object v3, p0, Lcom/android/okhttp/OkUrlFactory;->urlFilter:Lcom/android/okhttp/internal/URLFilter;

    invoke-direct {v2, p1, v0, v3}, Lcom/android/okhttp/internal/huc/HttpsURLConnectionImpl;-><init>(Ljava/net/URL;Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/internal/URLFilter;)V

    return-object v2

    .line 64
    :cond_2f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unexpected protocol: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method setUrlFilter(Lcom/android/okhttp/internal/URLFilter;)V
    .registers 2
    .param p1, "filter"    # Lcom/android/okhttp/internal/URLFilter;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/okhttp/OkUrlFactory;->urlFilter:Lcom/android/okhttp/internal/URLFilter;

    .line 43
    return-void
.end method
