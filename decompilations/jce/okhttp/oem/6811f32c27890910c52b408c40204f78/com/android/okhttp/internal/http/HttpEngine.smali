.class public final Lcom/android/okhttp/internal/http/HttpEngine;
.super Ljava/lang/Object;
.source "HttpEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/internal/http/HttpEngine$1;,
        Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;
    }
.end annotation


# static fields
.field private static final EMPTY_BODY:Lcom/android/okhttp/ResponseBody;

.field public static final MAX_FOLLOW_UPS:I = 0x14


# instance fields
.field public final bufferRequestBody:Z

.field private bufferedRequestBody:Lcom/android/okhttp/okio/BufferedSink;

.field private cacheResponse:Lcom/android/okhttp/Response;

.field private cacheStrategy:Lcom/android/okhttp/internal/http/CacheStrategy;

.field private final callerWritesRequestBody:Z

.field final client:Lcom/android/okhttp/OkHttpClient;

.field private final forWebSocket:Z

.field private httpStream:Lcom/android/okhttp/internal/http/HttpStream;

.field private momsPermitted:Z

.field private networkRequest:Lcom/android/okhttp/Request;

.field private final priorResponse:Lcom/android/okhttp/Response;

.field private requestBodyOut:Lcom/android/okhttp/okio/Sink;

.field sentRequestMillis:J

.field private storeRequest:Lcom/android/okhttp/internal/http/CacheRequest;

.field public final streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

.field private transparentGzip:Z

.field private final userRequest:Lcom/android/okhttp/Request;

.field private userResponse:Lcom/android/okhttp/Response;


# direct methods
.method static synthetic -get0(Lcom/android/okhttp/internal/http/HttpEngine;)Lcom/android/okhttp/internal/http/HttpStream;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/http/HttpEngine;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->httpStream:Lcom/android/okhttp/internal/http/HttpStream;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/okhttp/internal/http/HttpEngine;Lcom/android/okhttp/Request;)Lcom/android/okhttp/Request;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/http/HttpEngine;
    .param p1, "-value"    # Lcom/android/okhttp/Request;

    .prologue
    iput-object p1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/okhttp/internal/http/HttpEngine;)Lcom/android/okhttp/Response;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/http/HttpEngine;

    .prologue
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->readNetworkResponse()Lcom/android/okhttp/Response;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 95
    new-instance v0, Lcom/android/okhttp/internal/http/HttpEngine$1;

    invoke-direct {v0}, Lcom/android/okhttp/internal/http/HttpEngine$1;-><init>()V

    sput-object v0, Lcom/android/okhttp/internal/http/HttpEngine;->EMPTY_BODY:Lcom/android/okhttp/ResponseBody;

    .line 88
    return-void
.end method

.method public constructor <init>(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/Request;ZZZLcom/android/okhttp/internal/http/StreamAllocation;Lcom/android/okhttp/internal/http/RetryableSink;Lcom/android/okhttp/Response;)V
    .registers 11
    .param p1, "client"    # Lcom/android/okhttp/OkHttpClient;
    .param p2, "request"    # Lcom/android/okhttp/Request;
    .param p3, "bufferRequestBody"    # Z
    .param p4, "callerWritesRequestBody"    # Z
    .param p5, "forWebSocket"    # Z
    .param p6, "streamAllocation"    # Lcom/android/okhttp/internal/http/StreamAllocation;
    .param p7, "requestBodyOut"    # Lcom/android/okhttp/internal/http/RetryableSink;
    .param p8, "priorResponse"    # Lcom/android/okhttp/Response;

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->sentRequestMillis:J

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->momsPermitted:Z

    .line 178
    iput-object p1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    .line 179
    iput-object p2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    .line 180
    iput-boolean p3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferRequestBody:Z

    .line 181
    iput-boolean p4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->callerWritesRequestBody:Z

    .line 182
    iput-boolean p5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->forWebSocket:Z

    .line 183
    if-eqz p6, :cond_1d

    .end local p6    # "streamAllocation":Lcom/android/okhttp/internal/http/StreamAllocation;
    :goto_16
    iput-object p6, p0, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    .line 186
    iput-object p7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    .line 187
    iput-object p8, p0, Lcom/android/okhttp/internal/http/HttpEngine;->priorResponse:Lcom/android/okhttp/Response;

    .line 188
    return-void

    .line 185
    .restart local p6    # "streamAllocation":Lcom/android/okhttp/internal/http/StreamAllocation;
    :cond_1d
    new-instance p6, Lcom/android/okhttp/internal/http/StreamAllocation;

    .end local p6    # "streamAllocation":Lcom/android/okhttp/internal/http/StreamAllocation;
    invoke-virtual {p1}, Lcom/android/okhttp/OkHttpClient;->getConnectionPool()Lcom/android/okhttp/ConnectionPool;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/android/okhttp/internal/http/HttpEngine;->createAddress(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/Request;)Lcom/android/okhttp/Address;

    move-result-object v1

    invoke-direct {p6, v0, v1}, Lcom/android/okhttp/internal/http/StreamAllocation;-><init>(Lcom/android/okhttp/ConnectionPool;Lcom/android/okhttp/Address;)V

    goto :goto_16
.end method

.method private cacheWritingResponse(Lcom/android/okhttp/internal/http/CacheRequest;Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;
    .registers 11
    .param p1, "cacheRequest"    # Lcom/android/okhttp/internal/http/CacheRequest;
    .param p2, "response"    # Lcom/android/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 791
    if-nez p1, :cond_3

    return-object p2

    .line 792
    :cond_3
    invoke-interface {p1}, Lcom/android/okhttp/internal/http/CacheRequest;->body()Lcom/android/okhttp/okio/Sink;

    move-result-object v1

    .line 793
    .local v1, "cacheBodyUnbuffered":Lcom/android/okhttp/okio/Sink;
    if-nez v1, :cond_a

    return-object p2

    .line 795
    :cond_a
    invoke-virtual {p2}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/okhttp/ResponseBody;->source()Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v3

    .line 796
    .local v3, "source":Lcom/android/okhttp/okio/BufferedSource;
    invoke-static {v1}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v0

    .line 798
    .local v0, "cacheBody":Lcom/android/okhttp/okio/BufferedSink;
    new-instance v2, Lcom/android/okhttp/internal/http/HttpEngine$2;

    invoke-direct {v2, p0, v3, p1, v0}, Lcom/android/okhttp/internal/http/HttpEngine$2;-><init>(Lcom/android/okhttp/internal/http/HttpEngine;Lcom/android/okhttp/okio/BufferedSource;Lcom/android/okhttp/internal/http/CacheRequest;Lcom/android/okhttp/okio/BufferedSink;)V

    .line 840
    .local v2, "cacheWritingSource":Lcom/android/okhttp/okio/Source;
    invoke-virtual {p2}, Lcom/android/okhttp/Response;->newBuilder()Lcom/android/okhttp/Response$Builder;

    move-result-object v4

    .line 841
    new-instance v5, Lcom/android/okhttp/internal/http/RealResponseBody;

    invoke-virtual {p2}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v6

    invoke-static {v2}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/okhttp/internal/http/RealResponseBody;-><init>(Lcom/android/okhttp/Headers;Lcom/android/okhttp/okio/BufferedSource;)V

    .line 840
    invoke-virtual {v4, v5}, Lcom/android/okhttp/Response$Builder;->body(Lcom/android/okhttp/ResponseBody;)Lcom/android/okhttp/Response$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v4

    return-object v4
.end method

.method private static combine(Lcom/android/okhttp/Headers;Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Headers;
    .registers 8
    .param p0, "cachedHeaders"    # Lcom/android/okhttp/Headers;
    .param p1, "networkHeaders"    # Lcom/android/okhttp/Headers;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 874
    new-instance v2, Lcom/android/okhttp/Headers$Builder;

    invoke-direct {v2}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    .line 876
    .local v2, "result":Lcom/android/okhttp/Headers$Builder;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lcom/android/okhttp/Headers;->size()I

    move-result v3

    .local v3, "size":I
    :goto_a
    if-ge v1, v3, :cond_39

    .line 877
    invoke-virtual {p0, v1}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v0

    .line 878
    .local v0, "fieldName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    .line 879
    .local v4, "value":Ljava/lang/String;
    const-string/jumbo v5, "Warning"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_29

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 876
    :cond_26
    :goto_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 882
    :cond_29
    invoke-static {v0}, Lcom/android/okhttp/internal/http/OkHeaders;->isEndToEnd(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_35

    invoke-virtual {p1, v0}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_26

    .line 883
    :cond_35
    invoke-virtual {v2, v0, v4}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    goto :goto_26

    .line 887
    .end local v0    # "fieldName":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_39
    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/android/okhttp/Headers;->size()I

    move-result v3

    :goto_3e
    if-ge v1, v3, :cond_5e

    .line 888
    invoke-virtual {p1, v1}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v0

    .line 889
    .restart local v0    # "fieldName":Ljava/lang/String;
    const-string/jumbo v5, "Content-Length"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 887
    :cond_4d
    :goto_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 892
    :cond_50
    invoke-static {v0}, Lcom/android/okhttp/internal/http/OkHeaders;->isEndToEnd(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 893
    invoke-virtual {p1, v1}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    goto :goto_4d

    .line 897
    .end local v0    # "fieldName":Ljava/lang/String;
    :cond_5e
    invoke-virtual {v2}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v5

    return-object v5
.end method

.method private connect()Lcom/android/okhttp/internal/http/HttpStream;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/okhttp/internal/http/RouteException;,
            Lcom/android/okhttp/internal/http/RequestException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v0}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v5, v0, 0x1

    .line 299
    .local v5, "doExtensiveHealthChecks":Z
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v1}, Lcom/android/okhttp/OkHttpClient;->getConnectTimeout()I

    move-result v1

    .line 300
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v2}, Lcom/android/okhttp/OkHttpClient;->getReadTimeout()I

    move-result v2

    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v3}, Lcom/android/okhttp/OkHttpClient;->getWriteTimeout()I

    move-result v3

    .line 301
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v4}, Lcom/android/okhttp/OkHttpClient;->getRetryOnConnectionFailure()Z

    move-result v4

    .line 299
    invoke-virtual/range {v0 .. v5}, Lcom/android/okhttp/internal/http/StreamAllocation;->newStream(IIIZZ)Lcom/android/okhttp/internal/http/HttpStream;

    move-result-object v0

    return-object v0
.end method

.method private static createAddress(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/Request;)Lcom/android/okhttp/Address;
    .registers 15
    .param p0, "client"    # Lcom/android/okhttp/OkHttpClient;
    .param p1, "request"    # Lcom/android/okhttp/Request;

    .prologue
    .line 998
    const/4 v5, 0x0

    .line 999
    .local v5, "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    const/4 v6, 0x0

    .line 1000
    .local v6, "hostnameVerifier":Ljavax/net/ssl/HostnameVerifier;
    const/4 v7, 0x0

    .line 1001
    .local v7, "certificatePinner":Lcom/android/okhttp/CertificatePinner;
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->isHttps()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1002
    invoke-virtual {p0}, Lcom/android/okhttp/OkHttpClient;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    .line 1003
    .local v5, "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    invoke-virtual {p0}, Lcom/android/okhttp/OkHttpClient;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v6

    .line 1004
    .local v6, "hostnameVerifier":Ljavax/net/ssl/HostnameVerifier;
    invoke-virtual {p0}, Lcom/android/okhttp/OkHttpClient;->getCertificatePinner()Lcom/android/okhttp/CertificatePinner;

    move-result-object v7

    .line 1007
    .end local v5    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .end local v6    # "hostnameVerifier":Ljavax/net/ssl/HostnameVerifier;
    .end local v7    # "certificatePinner":Lcom/android/okhttp/CertificatePinner;
    :cond_15
    new-instance v0, Lcom/android/okhttp/Address;

    invoke-virtual {p1}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okhttp/HttpUrl;->port()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/okhttp/OkHttpClient;->getDns()Lcom/android/okhttp/Dns;

    move-result-object v3

    .line 1008
    invoke-virtual {p0}, Lcom/android/okhttp/OkHttpClient;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v4

    .line 1009
    invoke-virtual {p0}, Lcom/android/okhttp/OkHttpClient;->getAuthenticator()Lcom/android/okhttp/Authenticator;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/okhttp/OkHttpClient;->getProxy()Ljava/net/Proxy;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/okhttp/OkHttpClient;->getProtocols()Ljava/util/List;

    move-result-object v10

    .line 1010
    invoke-virtual {p0}, Lcom/android/okhttp/OkHttpClient;->getConnectionSpecs()Ljava/util/List;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/okhttp/OkHttpClient;->getProxySelector()Ljava/net/ProxySelector;

    move-result-object v12

    .line 1007
    invoke-direct/range {v0 .. v12}, Lcom/android/okhttp/Address;-><init>(Ljava/lang/String;ILcom/android/okhttp/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lcom/android/okhttp/CertificatePinner;Lcom/android/okhttp/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    return-object v0
.end method

.method public static hasBody(Lcom/android/okhttp/Response;)Z
    .registers 9
    .param p0, "response"    # Lcom/android/okhttp/Response;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 508
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "HEAD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 509
    return v6

    .line 512
    :cond_14
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->code()I

    move-result v0

    .line 513
    .local v0, "responseCode":I
    const/16 v1, 0x64

    if-lt v0, v1, :cond_20

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_29

    .line 514
    :cond_20
    const/16 v1, 0xcc

    if-eq v0, v1, :cond_29

    .line 515
    const/16 v1, 0x130

    if-eq v0, v1, :cond_29

    .line 516
    return v7

    .line 522
    :cond_29
    invoke-static {p0}, Lcom/android/okhttp/internal/http/OkHeaders;->contentLength(Lcom/android/okhttp/Response;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_43

    .line 523
    const-string/jumbo v1, "chunked"

    const-string/jumbo v2, "Transfer-Encoding"

    invoke-virtual {p0, v2}, Lcom/android/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 522
    if-eqz v1, :cond_44

    .line 524
    :cond_43
    return v7

    .line 527
    :cond_44
    return v6
.end method

.method private maybeCache()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 406
    sget-object v2, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/Internal;->internalCache(Lcom/android/okhttp/OkHttpClient;)Lcom/android/okhttp/internal/InternalCache;

    move-result-object v1

    .line 407
    .local v1, "responseCache":Lcom/android/okhttp/internal/InternalCache;
    if-nez v1, :cond_b

    return-void

    .line 410
    :cond_b
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    invoke-static {v2, v3}, Lcom/android/okhttp/internal/http/CacheStrategy;->isCacheable(Lcom/android/okhttp/Response;Lcom/android/okhttp/Request;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 411
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v2}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/okhttp/internal/http/HttpMethod;->invalidatesCache(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 413
    :try_start_21
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    invoke-interface {v1, v2}, Lcom/android/okhttp/internal/InternalCache;->remove(Lcom/android/okhttp/Request;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_26} :catch_34

    .line 418
    :cond_26
    :goto_26
    return-void

    .line 422
    :cond_27
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    invoke-static {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/okhttp/internal/InternalCache;->put(Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/CacheRequest;

    move-result-object v2

    iput-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->storeRequest:Lcom/android/okhttp/internal/http/CacheRequest;

    .line 423
    return-void

    .line 414
    :catch_34
    move-exception v0

    .local v0, "ignored":Ljava/io/IOException;
    goto :goto_26
.end method

.method private networkRequest(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Request;
    .registers 10
    .param p1, "request"    # Lcom/android/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 537
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->newBuilder()Lcom/android/okhttp/Request$Builder;

    move-result-object v3

    .line 539
    .local v3, "result":Lcom/android/okhttp/Request$Builder;
    const-string/jumbo v4, "Host"

    invoke-virtual {p1, v4}, Lcom/android/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1d

    .line 540
    const-string/jumbo v4, "Host"

    invoke-virtual {p1}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/okhttp/internal/Util;->hostHeader(Lcom/android/okhttp/HttpUrl;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 543
    :cond_1d
    const-string/jumbo v4, "Connection"

    invoke-virtual {p1, v4}, Lcom/android/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2f

    .line 544
    const-string/jumbo v4, "Connection"

    const-string/jumbo v5, "Keep-Alive"

    invoke-virtual {v3, v4, v5}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 547
    :cond_2f
    const-string/jumbo v4, "Accept-Encoding"

    invoke-virtual {p1, v4}, Lcom/android/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_44

    .line 548
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->transparentGzip:Z

    .line 549
    const-string/jumbo v4, "Accept-Encoding"

    const-string/jumbo v5, "gzip"

    invoke-virtual {v3, v4, v5}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 552
    :cond_44
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v4}, Lcom/android/okhttp/OkHttpClient;->getCookieHandler()Ljava/net/CookieHandler;

    move-result-object v0

    .line 553
    .local v0, "cookieHandler":Ljava/net/CookieHandler;
    if-eqz v0, :cond_63

    .line 557
    invoke-virtual {v3}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    move-result-object v4

    invoke-static {v4, v7}, Lcom/android/okhttp/internal/http/OkHeaders;->toMultimap(Lcom/android/okhttp/Headers;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 559
    .local v2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->uri()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Ljava/net/CookieHandler;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 562
    .local v1, "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {v3, v1}, Lcom/android/okhttp/internal/http/OkHeaders;->addCookies(Lcom/android/okhttp/Request$Builder;Ljava/util/Map;)V

    .line 565
    .end local v1    # "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v2    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_63
    const-string/jumbo v4, "User-Agent"

    invoke-virtual {p1, v4}, Lcom/android/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_76

    .line 566
    const-string/jumbo v4, "User-Agent"

    invoke-static {}, Lcom/android/okhttp/internal/Version;->userAgent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 569
    :cond_76
    invoke-virtual {v3}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    move-result-object v4

    return-object v4
.end method

.method private readNetworkResponse()Lcom/android/okhttp/Response;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 760
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->httpStream:Lcom/android/okhttp/internal/http/HttpStream;

    invoke-interface {v1}, Lcom/android/okhttp/internal/http/HttpStream;->finishRequest()V

    .line 762
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->httpStream:Lcom/android/okhttp/internal/http/HttpStream;

    invoke-interface {v1}, Lcom/android/okhttp/internal/http/HttpStream;->readResponseHeaders()Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    .line 763
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    .line 762
    invoke-virtual {v1, v2}, Lcom/android/okhttp/Response$Builder;->request(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    .line 764
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/StreamAllocation;->connection()Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okhttp/internal/io/RealConnection;->getHandshake()Lcom/android/okhttp/Handshake;

    move-result-object v2

    .line 762
    invoke-virtual {v1, v2}, Lcom/android/okhttp/Response$Builder;->handshake(Lcom/android/okhttp/Handshake;)Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    .line 765
    sget-object v2, Lcom/android/okhttp/internal/http/OkHeaders;->SENT_MILLIS:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->sentRequestMillis:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 762
    invoke-virtual {v1, v2, v3}, Lcom/android/okhttp/Response$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    .line 766
    sget-object v2, Lcom/android/okhttp/internal/http/OkHeaders;->RECEIVED_MILLIS:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 762
    invoke-virtual {v1, v2, v3}, Lcom/android/okhttp/Response$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v0

    .line 769
    .local v0, "networkResponse":Lcom/android/okhttp/Response;
    iget-boolean v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->forWebSocket:Z

    if-nez v1, :cond_53

    .line 770
    invoke-virtual {v0}, Lcom/android/okhttp/Response;->newBuilder()Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    .line 771
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->httpStream:Lcom/android/okhttp/internal/http/HttpStream;

    invoke-interface {v2, v0}, Lcom/android/okhttp/internal/http/HttpStream;->openResponseBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/ResponseBody;

    move-result-object v2

    .line 770
    invoke-virtual {v1, v2}, Lcom/android/okhttp/Response$Builder;->body(Lcom/android/okhttp/ResponseBody;)Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v0

    .line 775
    :cond_53
    const-string/jumbo v1, "close"

    invoke-virtual {v0}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    move-result-object v2

    const-string/jumbo v3, "Connection"

    invoke-virtual {v2, v3}, Lcom/android/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_77

    .line 776
    const-string/jumbo v1, "close"

    const-string/jumbo v2, "Connection"

    invoke-virtual {v0, v2}, Lcom/android/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 775
    if-eqz v1, :cond_7c

    .line 777
    :cond_77
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/StreamAllocation;->noNewStreams()V

    .line 780
    :cond_7c
    return-object v0
.end method

.method private static stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;
    .registers 3
    .param p0, "response"    # Lcom/android/okhttp/Response;

    .prologue
    const/4 v1, 0x0

    .line 305
    if-eqz p0, :cond_15

    invoke-virtual {p0}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 306
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->newBuilder()Lcom/android/okhttp/Response$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/okhttp/Response$Builder;->body(Lcom/android/okhttp/ResponseBody;)Lcom/android/okhttp/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object p0

    .line 305
    .end local p0    # "response":Lcom/android/okhttp/Response;
    :cond_15
    return-object p0
.end method

.method private unzip(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;
    .registers 7
    .param p1, "response"    # Lcom/android/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 483
    iget-boolean v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->transparentGzip:Z

    if-eqz v2, :cond_18

    const-string/jumbo v2, "gzip"

    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    const-string/jumbo v4, "Content-Encoding"

    invoke-virtual {v3, v4}, Lcom/android/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_19

    .line 484
    :cond_18
    return-object p1

    .line 487
    :cond_19
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    move-result-object v2

    if-nez v2, :cond_20

    .line 488
    return-object p1

    .line 491
    :cond_20
    new-instance v0, Lcom/android/okhttp/okio/GzipSource;

    invoke-virtual {p1}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okhttp/ResponseBody;->source()Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/okhttp/okio/GzipSource;-><init>(Lcom/android/okhttp/okio/Source;)V

    .line 492
    .local v0, "responseBody":Lcom/android/okhttp/okio/GzipSource;
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okhttp/Headers;->newBuilder()Lcom/android/okhttp/Headers$Builder;

    move-result-object v2

    .line 493
    const-string/jumbo v3, "Content-Encoding"

    .line 492
    invoke-virtual {v2, v3}, Lcom/android/okhttp/Headers$Builder;->removeAll(Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    move-result-object v2

    .line 494
    const-string/jumbo v3, "Content-Length"

    .line 492
    invoke-virtual {v2, v3}, Lcom/android/okhttp/Headers$Builder;->removeAll(Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v1

    .line 496
    .local v1, "strippedHeaders":Lcom/android/okhttp/Headers;
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->newBuilder()Lcom/android/okhttp/Response$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/okhttp/Response$Builder;->headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Response$Builder;

    move-result-object v2

    .line 498
    new-instance v3, Lcom/android/okhttp/internal/http/RealResponseBody;

    invoke-static {v0}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/android/okhttp/internal/http/RealResponseBody;-><init>(Lcom/android/okhttp/Headers;Lcom/android/okhttp/okio/BufferedSource;)V

    .line 496
    invoke-virtual {v2, v3}, Lcom/android/okhttp/Response$Builder;->body(Lcom/android/okhttp/ResponseBody;)Lcom/android/okhttp/Response$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v2

    return-object v2
.end method

.method private static validate(Lcom/android/okhttp/Response;Lcom/android/okhttp/Response;)Z
    .registers 9
    .param p0, "cached"    # Lcom/android/okhttp/Response;
    .param p1, "network"    # Lcom/android/okhttp/Response;

    .prologue
    const/4 v6, 0x1

    .line 850
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->code()I

    move-result v2

    const/16 v3, 0x130

    if-ne v2, v3, :cond_a

    .line 851
    return v6

    .line 857
    :cond_a
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v2

    const-string/jumbo v3, "Last-Modified"

    invoke-virtual {v2, v3}, Lcom/android/okhttp/Headers;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 858
    .local v0, "lastModified":Ljava/util/Date;
    if-eqz v0, :cond_31

    .line 859
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v2

    const-string/jumbo v3, "Last-Modified"

    invoke-virtual {v2, v3}, Lcom/android/okhttp/Headers;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 860
    .local v1, "networkLastModified":Ljava/util/Date;
    if-eqz v1, :cond_31

    .line 861
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_31

    .line 862
    return v6

    .line 866
    .end local v1    # "networkLastModified":Ljava/util/Date;
    :cond_31
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/StreamAllocation;->cancel()V

    .line 445
    return-void
.end method

.method public close()Lcom/android/okhttp/internal/http/StreamAllocation;
    .registers 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferedRequestBody:Lcom/android/okhttp/okio/BufferedSink;

    if-eqz v0, :cond_19

    .line 454
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferedRequestBody:Lcom/android/okhttp/okio/BufferedSink;

    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 459
    :cond_9
    :goto_9
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    if-eqz v0, :cond_23

    .line 460
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    invoke-virtual {v0}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 466
    :goto_16
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    return-object v0

    .line 455
    :cond_19
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    if-eqz v0, :cond_9

    .line 456
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_9

    .line 463
    :cond_23
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionFailed()V

    goto :goto_16
.end method

.method public followUpRequest()Lcom/android/okhttp/Request;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 913
    iget-object v9, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    if-nez v9, :cond_b

    new-instance v9, Ljava/lang/IllegalStateException;

    invoke-direct {v9}, Ljava/lang/IllegalStateException;-><init>()V

    throw v9

    .line 914
    :cond_b
    iget-object v9, p0, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    invoke-virtual {v9}, Lcom/android/okhttp/internal/http/StreamAllocation;->connection()Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v0

    .line 915
    .local v0, "connection":Lcom/android/okhttp/Connection;
    if-eqz v0, :cond_2d

    .line 916
    invoke-interface {v0}, Lcom/android/okhttp/Connection;->getRoute()Lcom/android/okhttp/Route;

    move-result-object v5

    .line 918
    :goto_17
    if-eqz v5, :cond_2f

    .line 919
    invoke-virtual {v5}, Lcom/android/okhttp/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v7

    .line 921
    .local v7, "selectedProxy":Ljava/net/Proxy;
    :goto_1d
    iget-object v9, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    invoke-virtual {v9}, Lcom/android/okhttp/Response;->code()I

    move-result v4

    .line 923
    .local v4, "responseCode":I
    iget-object v9, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v9}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v2

    .line 924
    .local v2, "method":Ljava/lang/String;
    sparse-switch v4, :sswitch_data_ee

    .line 982
    return-object v11

    .line 917
    .end local v2    # "method":Ljava/lang/String;
    .end local v4    # "responseCode":I
    .end local v7    # "selectedProxy":Ljava/net/Proxy;
    :cond_2d
    const/4 v5, 0x0

    .local v5, "route":Lcom/android/okhttp/Route;
    goto :goto_17

    .line 920
    .end local v5    # "route":Lcom/android/okhttp/Route;
    :cond_2f
    iget-object v9, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v9}, Lcom/android/okhttp/OkHttpClient;->getProxy()Ljava/net/Proxy;

    move-result-object v7

    .restart local v7    # "selectedProxy":Ljava/net/Proxy;
    goto :goto_1d

    .line 926
    .restart local v2    # "method":Ljava/lang/String;
    .restart local v4    # "responseCode":I
    :sswitch_36
    invoke-virtual {v7}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v9

    sget-object v10, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-eq v9, v10, :cond_47

    .line 927
    new-instance v9, Ljava/net/ProtocolException;

    const-string/jumbo v10, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {v9, v10}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 931
    :cond_47
    :sswitch_47
    iget-object v9, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v9}, Lcom/android/okhttp/OkHttpClient;->getAuthenticator()Lcom/android/okhttp/Authenticator;

    move-result-object v9

    iget-object v10, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    invoke-static {v9, v10, v7}, Lcom/android/okhttp/internal/http/OkHeaders;->processAuthHeader(Lcom/android/okhttp/Authenticator;Lcom/android/okhttp/Response;Ljava/net/Proxy;)Lcom/android/okhttp/Request;

    move-result-object v9

    return-object v9

    .line 937
    :sswitch_54
    const-string/jumbo v9, "GET"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_69

    const-string/jumbo v9, "HEAD"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_69

    .line 938
    return-object v11

    .line 946
    :cond_69
    :sswitch_69
    iget-object v9, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v9}, Lcom/android/okhttp/OkHttpClient;->getFollowRedirects()Z

    move-result v9

    if-nez v9, :cond_72

    return-object v11

    .line 948
    :cond_72
    iget-object v9, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    const-string/jumbo v10, "Location"

    invoke-virtual {v9, v10}, Lcom/android/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 949
    .local v1, "location":Ljava/lang/String;
    if-nez v1, :cond_7e

    return-object v11

    .line 950
    :cond_7e
    iget-object v9, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v9}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/android/okhttp/HttpUrl;->resolve(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl;

    move-result-object v8

    .line 953
    .local v8, "url":Lcom/android/okhttp/HttpUrl;
    if-nez v8, :cond_8b

    return-object v11

    .line 956
    :cond_8b
    invoke-virtual {v8}, Lcom/android/okhttp/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v10}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/okhttp/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 957
    .local v6, "sameScheme":Z
    if-nez v6, :cond_aa

    iget-object v9, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v9}, Lcom/android/okhttp/OkHttpClient;->getFollowSslRedirects()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_aa

    return-object v11

    .line 960
    :cond_aa
    iget-object v9, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v9}, Lcom/android/okhttp/Request;->newBuilder()Lcom/android/okhttp/Request$Builder;

    move-result-object v3

    .line 961
    .local v3, "requestBuilder":Lcom/android/okhttp/Request$Builder;
    invoke-static {v2}, Lcom/android/okhttp/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d4

    .line 962
    invoke-static {v2}, Lcom/android/okhttp/internal/http/HttpMethod;->redirectsToGet(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e9

    .line 963
    const-string/jumbo v9, "GET"

    invoke-virtual {v3, v9, v11}, Lcom/android/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;

    .line 967
    :goto_c2
    const-string/jumbo v9, "Transfer-Encoding"

    invoke-virtual {v3, v9}, Lcom/android/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 968
    const-string/jumbo v9, "Content-Length"

    invoke-virtual {v3, v9}, Lcom/android/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 969
    const-string/jumbo v9, "Content-Type"

    invoke-virtual {v3, v9}, Lcom/android/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 975
    :cond_d4
    invoke-virtual {p0, v8}, Lcom/android/okhttp/internal/http/HttpEngine;->sameConnection(Lcom/android/okhttp/HttpUrl;)Z

    move-result v9

    if-nez v9, :cond_e0

    .line 976
    const-string/jumbo v9, "Authorization"

    invoke-virtual {v3, v9}, Lcom/android/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 979
    :cond_e0
    invoke-virtual {v3, v8}, Lcom/android/okhttp/Request$Builder;->url(Lcom/android/okhttp/HttpUrl;)Lcom/android/okhttp/Request$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    move-result-object v9

    return-object v9

    .line 965
    :cond_e9
    invoke-virtual {v3, v2, v11}, Lcom/android/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;

    goto :goto_c2

    .line 924
    nop

    :sswitch_data_ee
    .sparse-switch
        0x12c -> :sswitch_69
        0x12d -> :sswitch_69
        0x12e -> :sswitch_69
        0x12f -> :sswitch_69
        0x133 -> :sswitch_54
        0x134 -> :sswitch_54
        0x191 -> :sswitch_47
        0x197 -> :sswitch_36
    .end sparse-switch
.end method

.method public getBufferedRequestBody()Lcom/android/okhttp/okio/BufferedSink;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 331
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferedRequestBody:Lcom/android/okhttp/okio/BufferedSink;

    .line 332
    .local v1, "result":Lcom/android/okhttp/okio/BufferedSink;
    if-eqz v1, :cond_6

    return-object v1

    .line 333
    :cond_6
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->getRequestBody()Lcom/android/okhttp/okio/Sink;

    move-result-object v0

    .line 334
    .local v0, "requestBody":Lcom/android/okhttp/okio/Sink;
    if-eqz v0, :cond_12

    .line 335
    invoke-static {v0}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v2

    iput-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferedRequestBody:Lcom/android/okhttp/okio/BufferedSink;

    .line 334
    :cond_12
    return-object v2
.end method

.method public getConnection()Lcom/android/okhttp/Connection;
    .registers 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/StreamAllocation;->connection()Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v0

    return-object v0
.end method

.method public getRequest()Lcom/android/okhttp/Request;
    .registers 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    return-object v0
.end method

.method public getRequestBody()Lcom/android/okhttp/okio/Sink;
    .registers 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheStrategy:Lcom/android/okhttp/internal/http/CacheStrategy;

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 327
    :cond_a
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    return-object v0
.end method

.method public getResponse()Lcom/android/okhttp/Response;
    .registers 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 351
    :cond_a
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    return-object v0
.end method

.method public hasResponse()Z
    .registers 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method permitsRequestBody(Lcom/android/okhttp/Request;)Z
    .registers 3
    .param p1, "request"    # Lcom/android/okhttp/Request;

    .prologue
    .line 321
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okhttp/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public readResponse()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, -0x1

    .line 577
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    if-eqz v4, :cond_7

    .line 578
    return-void

    .line 580
    :cond_7
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    if-nez v4, :cond_18

    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    if-nez v4, :cond_18

    .line 581
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "call sendRequest() first!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 583
    :cond_18
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    if-nez v4, :cond_1d

    .line 584
    return-void

    .line 589
    :cond_1d
    iget-boolean v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->momsPermitted:Z

    if-nez v4, :cond_28

    .line 590
    invoke-static {}, Lcom/android/okhttp/internal/cta/CtaAdapter;->getBadHttpResponse()Lcom/android/okhttp/Response;

    move-result-object v4

    iput-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    .line 591
    return-void

    .line 594
    :cond_28
    iget-boolean v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->forWebSocket:Z

    if-eqz v4, :cond_b3

    .line 595
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->httpStream:Lcom/android/okhttp/internal/http/HttpStream;

    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    invoke-interface {v4, v5}, Lcom/android/okhttp/internal/http/HttpStream;->writeRequestHeaders(Lcom/android/okhttp/Request;)V

    .line 596
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->readNetworkResponse()Lcom/android/okhttp/Response;

    move-result-object v2

    .line 637
    .local v2, "networkResponse":Lcom/android/okhttp/Response;
    :goto_37
    invoke-virtual {v2}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/okhttp/internal/http/HttpEngine;->receiveHeaders(Lcom/android/okhttp/Headers;)V

    .line 640
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    if-eqz v4, :cond_15d

    .line 641
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    invoke-static {v4, v2}, Lcom/android/okhttp/internal/http/HttpEngine;->validate(Lcom/android/okhttp/Response;Lcom/android/okhttp/Response;)Z

    move-result v4

    if-eqz v4, :cond_154

    .line 642
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    invoke-virtual {v4}, Lcom/android/okhttp/Response;->newBuilder()Lcom/android/okhttp/Response$Builder;

    move-result-object v4

    .line 643
    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    .line 642
    invoke-virtual {v4, v5}, Lcom/android/okhttp/Response$Builder;->request(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response$Builder;

    move-result-object v4

    .line 644
    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->priorResponse:Lcom/android/okhttp/Response;

    invoke-static {v5}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v5

    .line 642
    invoke-virtual {v4, v5}, Lcom/android/okhttp/Response$Builder;->priorResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;

    move-result-object v4

    .line 645
    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    invoke-virtual {v5}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/okhttp/internal/http/HttpEngine;->combine(Lcom/android/okhttp/Headers;Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Headers;

    move-result-object v5

    .line 642
    invoke-virtual {v4, v5}, Lcom/android/okhttp/Response$Builder;->headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Response$Builder;

    move-result-object v4

    .line 646
    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    invoke-static {v5}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v5

    .line 642
    invoke-virtual {v4, v5}, Lcom/android/okhttp/Response$Builder;->cacheResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;

    move-result-object v4

    .line 647
    invoke-static {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v5

    .line 642
    invoke-virtual {v4, v5}, Lcom/android/okhttp/Response$Builder;->networkResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v4

    iput-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    .line 649
    invoke-virtual {v2}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/okhttp/ResponseBody;->close()V

    .line 650
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->releaseStreamAllocation()V

    .line 654
    sget-object v4, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v4, v5}, Lcom/android/okhttp/internal/Internal;->internalCache(Lcom/android/okhttp/OkHttpClient;)Lcom/android/okhttp/internal/InternalCache;

    move-result-object v3

    .line 655
    .local v3, "responseCache":Lcom/android/okhttp/internal/InternalCache;
    invoke-interface {v3}, Lcom/android/okhttp/internal/InternalCache;->trackConditionalCacheHit()V

    .line 656
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    invoke-static {v5}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/android/okhttp/internal/InternalCache;->update(Lcom/android/okhttp/Response;Lcom/android/okhttp/Response;)V

    .line 657
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    invoke-direct {p0, v4}, Lcom/android/okhttp/internal/http/HttpEngine;->unzip(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v4

    iput-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    .line 658
    return-void

    .line 598
    .end local v2    # "networkResponse":Lcom/android/okhttp/Response;
    .end local v3    # "responseCache":Lcom/android/okhttp/internal/InternalCache;
    :cond_b3
    iget-boolean v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->callerWritesRequestBody:Z

    if-nez v4, :cond_c7

    .line 599
    new-instance v4, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;

    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    const/4 v6, 0x0

    invoke-direct {v4, p0, v6, v5}, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;-><init>(Lcom/android/okhttp/internal/http/HttpEngine;ILcom/android/okhttp/Request;)V

    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v4, v5}, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->proceed(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response;

    move-result-object v2

    .restart local v2    # "networkResponse":Lcom/android/okhttp/Response;
    goto/16 :goto_37

    .line 603
    .end local v2    # "networkResponse":Lcom/android/okhttp/Response;
    :cond_c7
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferedRequestBody:Lcom/android/okhttp/okio/BufferedSink;

    if-eqz v4, :cond_e0

    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferedRequestBody:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v4}, Lcom/android/okhttp/okio/BufferedSink;->buffer()Lcom/android/okhttp/okio/Buffer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_e0

    .line 604
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferedRequestBody:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v4}, Lcom/android/okhttp/okio/BufferedSink;->emit()Lcom/android/okhttp/okio/BufferedSink;

    .line 608
    :cond_e0
    iget-wide v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->sentRequestMillis:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_124

    .line 609
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    invoke-static {v4}, Lcom/android/okhttp/internal/http/OkHeaders;->contentLength(Lcom/android/okhttp/Request;)J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-nez v4, :cond_115

    .line 610
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    instance-of v4, v4, Lcom/android/okhttp/internal/http/RetryableSink;

    .line 609
    if-eqz v4, :cond_115

    .line 611
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    check-cast v4, Lcom/android/okhttp/internal/http/RetryableSink;

    invoke-virtual {v4}, Lcom/android/okhttp/internal/http/RetryableSink;->contentLength()J

    move-result-wide v0

    .line 612
    .local v0, "contentLength":J
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v4}, Lcom/android/okhttp/Request;->newBuilder()Lcom/android/okhttp/Request$Builder;

    move-result-object v4

    .line 613
    const-string/jumbo v5, "Content-Length"

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    .line 612
    invoke-virtual {v4, v5, v6}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    move-result-object v4

    iput-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    .line 616
    .end local v0    # "contentLength":J
    :cond_115
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v5, "[OkHttp] sendRequest>>"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 617
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->httpStream:Lcom/android/okhttp/internal/http/HttpStream;

    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    invoke-interface {v4, v5}, Lcom/android/okhttp/internal/http/HttpStream;->writeRequestHeaders(Lcom/android/okhttp/Request;)V

    .line 621
    :cond_124
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    if-eqz v4, :cond_140

    .line 622
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferedRequestBody:Lcom/android/okhttp/okio/BufferedSink;

    if-eqz v4, :cond_14e

    .line 624
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferedRequestBody:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v4}, Lcom/android/okhttp/okio/BufferedSink;->close()V

    .line 628
    :goto_131
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    instance-of v4, v4, Lcom/android/okhttp/internal/http/RetryableSink;

    if-eqz v4, :cond_140

    .line 629
    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->httpStream:Lcom/android/okhttp/internal/http/HttpStream;

    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    check-cast v4, Lcom/android/okhttp/internal/http/RetryableSink;

    invoke-interface {v5, v4}, Lcom/android/okhttp/internal/http/HttpStream;->writeRequestBody(Lcom/android/okhttp/internal/http/RetryableSink;)V

    .line 632
    :cond_140
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v5, "[OkHttp] sendRequest<<"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 634
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->readNetworkResponse()Lcom/android/okhttp/Response;

    move-result-object v2

    .restart local v2    # "networkResponse":Lcom/android/okhttp/Response;
    goto/16 :goto_37

    .line 626
    .end local v2    # "networkResponse":Lcom/android/okhttp/Response;
    :cond_14e
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    invoke-interface {v4}, Lcom/android/okhttp/okio/Sink;->close()V

    goto :goto_131

    .line 660
    .restart local v2    # "networkResponse":Lcom/android/okhttp/Response;
    :cond_154
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    invoke-virtual {v4}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    move-result-object v4

    invoke-static {v4}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 664
    :cond_15d
    invoke-virtual {v2}, Lcom/android/okhttp/Response;->newBuilder()Lcom/android/okhttp/Response$Builder;

    move-result-object v4

    .line 665
    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    .line 664
    invoke-virtual {v4, v5}, Lcom/android/okhttp/Response$Builder;->request(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response$Builder;

    move-result-object v4

    .line 666
    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->priorResponse:Lcom/android/okhttp/Response;

    invoke-static {v5}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v5

    .line 664
    invoke-virtual {v4, v5}, Lcom/android/okhttp/Response$Builder;->priorResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;

    move-result-object v4

    .line 667
    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    invoke-static {v5}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v5

    .line 664
    invoke-virtual {v4, v5}, Lcom/android/okhttp/Response$Builder;->cacheResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;

    move-result-object v4

    .line 668
    invoke-static {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v5

    .line 664
    invoke-virtual {v4, v5}, Lcom/android/okhttp/Response$Builder;->networkResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v4

    iput-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    .line 671
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    invoke-static {v4}, Lcom/android/okhttp/internal/http/HttpEngine;->hasBody(Lcom/android/okhttp/Response;)Z

    move-result v4

    if-eqz v4, :cond_1a2

    .line 672
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->maybeCache()V

    .line 673
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->storeRequest:Lcom/android/okhttp/internal/http/CacheRequest;

    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    invoke-direct {p0, v4, v5}, Lcom/android/okhttp/internal/http/HttpEngine;->cacheWritingResponse(Lcom/android/okhttp/internal/http/CacheRequest;Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/okhttp/internal/http/HttpEngine;->unzip(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v4

    iput-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    .line 675
    :cond_1a2
    return-void
.end method

.method public receiveHeaders(Lcom/android/okhttp/Headers;)V
    .registers 5
    .param p1, "headers"    # Lcom/android/okhttp/Headers;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 901
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v1}, Lcom/android/okhttp/OkHttpClient;->getCookieHandler()Ljava/net/CookieHandler;

    move-result-object v0

    .line 902
    .local v0, "cookieHandler":Ljava/net/CookieHandler;
    if-eqz v0, :cond_16

    .line 903
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v1}, Lcom/android/okhttp/Request;->uri()Ljava/net/URI;

    move-result-object v1

    invoke-static {p1, v2}, Lcom/android/okhttp/internal/http/OkHeaders;->toMultimap(Lcom/android/okhttp/Headers;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/CookieHandler;->put(Ljava/net/URI;Ljava/util/Map;)V

    .line 905
    :cond_16
    return-void
.end method

.method public recover(Lcom/android/okhttp/internal/http/RouteException;)Lcom/android/okhttp/internal/http/HttpEngine;
    .registers 11
    .param p1, "e"    # Lcom/android/okhttp/internal/http/RouteException;

    .prologue
    const/4 v1, 0x0

    .line 364
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    invoke-virtual {v0, p1}, Lcom/android/okhttp/internal/http/StreamAllocation;->recover(Lcom/android/okhttp/internal/http/RouteException;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 365
    return-object v1

    .line 368
    :cond_a
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/android/okhttp/OkHttpClient;->getRetryOnConnectionFailure()Z

    move-result v0

    if-nez v0, :cond_13

    .line 369
    return-object v1

    .line 372
    :cond_13
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->close()Lcom/android/okhttp/internal/http/StreamAllocation;

    move-result-object v6

    .line 375
    .local v6, "streamAllocation":Lcom/android/okhttp/internal/http/StreamAllocation;
    new-instance v0, Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    iget-boolean v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferRequestBody:Z

    iget-boolean v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->callerWritesRequestBody:Z

    .line 376
    iget-boolean v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->forWebSocket:Z

    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    check-cast v7, Lcom/android/okhttp/internal/http/RetryableSink;

    iget-object v8, p0, Lcom/android/okhttp/internal/http/HttpEngine;->priorResponse:Lcom/android/okhttp/Response;

    .line 375
    invoke-direct/range {v0 .. v8}, Lcom/android/okhttp/internal/http/HttpEngine;-><init>(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/Request;ZZZLcom/android/okhttp/internal/http/StreamAllocation;Lcom/android/okhttp/internal/http/RetryableSink;Lcom/android/okhttp/Response;)V

    return-object v0
.end method

.method public recover(Ljava/io/IOException;)Lcom/android/okhttp/internal/http/HttpEngine;
    .registers 3
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    invoke-virtual {p0, p1, v0}, Lcom/android/okhttp/internal/http/HttpEngine;->recover(Ljava/io/IOException;Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/internal/http/HttpEngine;

    move-result-object v0

    return-object v0
.end method

.method public recover(Ljava/io/IOException;Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/internal/http/HttpEngine;
    .registers 12
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "requestBodyOut"    # Lcom/android/okhttp/okio/Sink;

    .prologue
    const/4 v1, 0x0

    .line 386
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/internal/http/StreamAllocation;->recover(Ljava/io/IOException;Lcom/android/okhttp/okio/Sink;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 387
    return-object v1

    .line 390
    :cond_a
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/android/okhttp/OkHttpClient;->getRetryOnConnectionFailure()Z

    move-result v0

    if-nez v0, :cond_13

    .line 391
    return-object v1

    .line 394
    :cond_13
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->close()Lcom/android/okhttp/internal/http/StreamAllocation;

    move-result-object v6

    .line 397
    .local v6, "streamAllocation":Lcom/android/okhttp/internal/http/StreamAllocation;
    new-instance v0, Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    iget-boolean v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferRequestBody:Z

    iget-boolean v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->callerWritesRequestBody:Z

    .line 398
    iget-boolean v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->forWebSocket:Z

    move-object v7, p2

    check-cast v7, Lcom/android/okhttp/internal/http/RetryableSink;

    iget-object v8, p0, Lcom/android/okhttp/internal/http/HttpEngine;->priorResponse:Lcom/android/okhttp/Response;

    .line 397
    invoke-direct/range {v0 .. v8}, Lcom/android/okhttp/internal/http/HttpEngine;-><init>(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/Request;ZZZLcom/android/okhttp/internal/http/StreamAllocation;Lcom/android/okhttp/internal/http/RetryableSink;Lcom/android/okhttp/Response;)V

    return-object v0
.end method

.method public releaseStreamAllocation()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/StreamAllocation;->release()V

    .line 432
    return-void
.end method

.method public sameConnection(Lcom/android/okhttp/HttpUrl;)Z
    .registers 5
    .param p1, "followUp"    # Lcom/android/okhttp/HttpUrl;

    .prologue
    .line 991
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v1}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v0

    .line 992
    .local v0, "url":Lcom/android/okhttp/HttpUrl;
    invoke-virtual {v0}, Lcom/android/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 993
    invoke-virtual {v0}, Lcom/android/okhttp/HttpUrl;->port()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/okhttp/HttpUrl;->port()I

    move-result v2

    if-ne v1, v2, :cond_2b

    .line 994
    invoke-virtual {v0}, Lcom/android/okhttp/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/okhttp/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 992
    :goto_2a
    return v1

    :cond_2b
    const/4 v1, 0x0

    goto :goto_2a
.end method

.method public sendRequest()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/okhttp/internal/http/RequestException;,
            Lcom/android/okhttp/internal/http/RouteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheStrategy:Lcom/android/okhttp/internal/http/CacheStrategy;

    if-eqz v7, :cond_5

    return-void

    .line 204
    :cond_5
    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->httpStream:Lcom/android/okhttp/internal/http/HttpStream;

    if-eqz v7, :cond_f

    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7}, Ljava/lang/IllegalStateException;-><init>()V

    throw v7

    .line 206
    :cond_f
    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    invoke-direct {p0, v7}, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Request;

    move-result-object v1

    .line 208
    .local v1, "request":Lcom/android/okhttp/Request;
    sget-object v7, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    iget-object v8, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v7, v8}, Lcom/android/okhttp/internal/Internal;->internalCache(Lcom/android/okhttp/OkHttpClient;)Lcom/android/okhttp/internal/InternalCache;

    move-result-object v6

    .line 209
    .local v6, "responseCache":Lcom/android/okhttp/internal/InternalCache;
    if-eqz v6, :cond_66

    .line 210
    invoke-interface {v6, v1}, Lcom/android/okhttp/internal/InternalCache;->get(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response;

    move-result-object v0

    .line 213
    :goto_23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 214
    .local v4, "now":J
    new-instance v7, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;

    invoke-direct {v7, v4, v5, v1, v0}, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;-><init>(JLcom/android/okhttp/Request;Lcom/android/okhttp/Response;)V

    invoke-virtual {v7}, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->get()Lcom/android/okhttp/internal/http/CacheStrategy;

    move-result-object v7

    iput-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheStrategy:Lcom/android/okhttp/internal/http/CacheStrategy;

    .line 215
    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheStrategy:Lcom/android/okhttp/internal/http/CacheStrategy;

    iget-object v7, v7, Lcom/android/okhttp/internal/http/CacheStrategy;->networkRequest:Lcom/android/okhttp/Request;

    iput-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    .line 216
    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheStrategy:Lcom/android/okhttp/internal/http/CacheStrategy;

    iget-object v7, v7, Lcom/android/okhttp/internal/http/CacheStrategy;->cacheResponse:Lcom/android/okhttp/Response;

    iput-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    .line 218
    if-eqz v6, :cond_45

    .line 219
    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheStrategy:Lcom/android/okhttp/internal/http/CacheStrategy;

    invoke-interface {v6, v7}, Lcom/android/okhttp/internal/InternalCache;->trackResponse(Lcom/android/okhttp/internal/http/CacheStrategy;)V

    .line 222
    :cond_45
    if-eqz v0, :cond_52

    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    if-nez v7, :cond_52

    .line 223
    invoke-virtual {v0}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    move-result-object v7

    invoke-static {v7}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 226
    :cond_52
    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    if-eqz v7, :cond_d8

    .line 230
    const-class v8, Lcom/android/okhttp/internal/http/HttpEngine;

    monitor-enter v8

    .line 231
    :try_start_59
    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    invoke-static {v7}, Lcom/android/okhttp/internal/cta/CtaAdapter;->isSendingPermitted(Lcom/android/okhttp/Request;)Z

    move-result v7

    if-nez v7, :cond_68

    .line 232
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->momsPermitted:Z
    :try_end_64
    .catchall {:try_start_59 .. :try_end_64} :catchall_a5

    monitor-exit v8

    .line 233
    return-void

    .line 211
    .end local v4    # "now":J
    :cond_66
    const/4 v0, 0x0

    .local v0, "cacheCandidate":Lcom/android/okhttp/Response;
    goto :goto_23

    .end local v0    # "cacheCandidate":Lcom/android/okhttp/Response;
    .restart local v4    # "now":J
    :cond_68
    monitor-exit v8

    .line 237
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->connect()Lcom/android/okhttp/internal/http/HttpStream;

    move-result-object v7

    iput-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->httpStream:Lcom/android/okhttp/internal/http/HttpStream;

    .line 238
    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->httpStream:Lcom/android/okhttp/internal/http/HttpStream;

    invoke-interface {v7, p0}, Lcom/android/okhttp/internal/http/HttpStream;->setHttpEngine(Lcom/android/okhttp/internal/http/HttpEngine;)V

    .line 243
    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->getConnection()Lcom/android/okhttp/Connection;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/okhttp/internal/cta/CtaAdapter;->updateMmsBufferSize(Lcom/android/okhttp/Request;Lcom/android/okhttp/Connection;)V

    .line 249
    iget-boolean v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->callerWritesRequestBody:Z

    if-eqz v7, :cond_bd

    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    invoke-virtual {p0, v7}, Lcom/android/okhttp/internal/http/HttpEngine;->permitsRequestBody(Lcom/android/okhttp/Request;)Z

    move-result v7

    if-eqz v7, :cond_bd

    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    if-nez v7, :cond_bd

    .line 250
    invoke-static {v1}, Lcom/android/okhttp/internal/http/OkHeaders;->contentLength(Lcom/android/okhttp/Request;)J

    move-result-wide v2

    .line 251
    .local v2, "contentLength":J
    iget-boolean v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferRequestBody:Z

    if-eqz v7, :cond_c6

    .line 252
    const-wide/32 v8, 0x7fffffff

    cmp-long v7, v2, v8

    if-lez v7, :cond_a8

    .line 253
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string/jumbo v8, "Use setFixedLengthStreamingMode() or setChunkedStreamingMode() for requests larger than 2 GiB."

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 230
    .end local v2    # "contentLength":J
    :catchall_a5
    move-exception v7

    monitor-exit v8

    throw v7

    .line 257
    .restart local v2    # "contentLength":J
    :cond_a8
    const-wide/16 v8, -0x1

    cmp-long v7, v2, v8

    if-eqz v7, :cond_be

    .line 259
    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->httpStream:Lcom/android/okhttp/internal/http/HttpStream;

    iget-object v8, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    invoke-interface {v7, v8}, Lcom/android/okhttp/internal/http/HttpStream;->writeRequestHeaders(Lcom/android/okhttp/Request;)V

    .line 260
    new-instance v7, Lcom/android/okhttp/internal/http/RetryableSink;

    long-to-int v8, v2

    invoke-direct {v7, v8}, Lcom/android/okhttp/internal/http/RetryableSink;-><init>(I)V

    iput-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    .line 295
    .end local v2    # "contentLength":J
    :cond_bd
    :goto_bd
    return-void

    .line 265
    .restart local v2    # "contentLength":J
    :cond_be
    new-instance v7, Lcom/android/okhttp/internal/http/RetryableSink;

    invoke-direct {v7}, Lcom/android/okhttp/internal/http/RetryableSink;-><init>()V

    iput-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    goto :goto_bd

    .line 268
    :cond_c6
    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->httpStream:Lcom/android/okhttp/internal/http/HttpStream;

    iget-object v8, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    invoke-interface {v7, v8}, Lcom/android/okhttp/internal/http/HttpStream;->writeRequestHeaders(Lcom/android/okhttp/Request;)V

    .line 269
    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->httpStream:Lcom/android/okhttp/internal/http/HttpStream;

    iget-object v8, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    invoke-interface {v7, v8, v2, v3}, Lcom/android/okhttp/internal/http/HttpStream;->createRequestBody(Lcom/android/okhttp/Request;J)Lcom/android/okhttp/okio/Sink;

    move-result-object v7

    iput-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    goto :goto_bd

    .line 274
    .end local v2    # "contentLength":J
    :cond_d8
    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    if-eqz v7, :cond_10b

    .line 276
    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    invoke-virtual {v7}, Lcom/android/okhttp/Response;->newBuilder()Lcom/android/okhttp/Response$Builder;

    move-result-object v7

    .line 277
    iget-object v8, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    .line 276
    invoke-virtual {v7, v8}, Lcom/android/okhttp/Response$Builder;->request(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response$Builder;

    move-result-object v7

    .line 278
    iget-object v8, p0, Lcom/android/okhttp/internal/http/HttpEngine;->priorResponse:Lcom/android/okhttp/Response;

    invoke-static {v8}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v8

    .line 276
    invoke-virtual {v7, v8}, Lcom/android/okhttp/Response$Builder;->priorResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;

    move-result-object v7

    .line 279
    iget-object v8, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    invoke-static {v8}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v8

    .line 276
    invoke-virtual {v7, v8}, Lcom/android/okhttp/Response$Builder;->cacheResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v7

    iput-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    .line 293
    :goto_102
    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    invoke-direct {p0, v7}, Lcom/android/okhttp/internal/http/HttpEngine;->unzip(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v7

    iput-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    goto :goto_bd

    .line 283
    :cond_10b
    new-instance v7, Lcom/android/okhttp/Response$Builder;

    invoke-direct {v7}, Lcom/android/okhttp/Response$Builder;-><init>()V

    .line 284
    iget-object v8, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    .line 283
    invoke-virtual {v7, v8}, Lcom/android/okhttp/Response$Builder;->request(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response$Builder;

    move-result-object v7

    .line 285
    iget-object v8, p0, Lcom/android/okhttp/internal/http/HttpEngine;->priorResponse:Lcom/android/okhttp/Response;

    invoke-static {v8}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v8

    .line 283
    invoke-virtual {v7, v8}, Lcom/android/okhttp/Response$Builder;->priorResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;

    move-result-object v7

    .line 286
    sget-object v8, Lcom/android/okhttp/Protocol;->HTTP_1_1:Lcom/android/okhttp/Protocol;

    .line 283
    invoke-virtual {v7, v8}, Lcom/android/okhttp/Response$Builder;->protocol(Lcom/android/okhttp/Protocol;)Lcom/android/okhttp/Response$Builder;

    move-result-object v7

    .line 287
    const/16 v8, 0x1f8

    .line 283
    invoke-virtual {v7, v8}, Lcom/android/okhttp/Response$Builder;->code(I)Lcom/android/okhttp/Response$Builder;

    move-result-object v7

    .line 288
    const-string/jumbo v8, "Unsatisfiable Request (only-if-cached)"

    .line 283
    invoke-virtual {v7, v8}, Lcom/android/okhttp/Response$Builder;->message(Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;

    move-result-object v7

    .line 289
    sget-object v8, Lcom/android/okhttp/internal/http/HttpEngine;->EMPTY_BODY:Lcom/android/okhttp/ResponseBody;

    .line 283
    invoke-virtual {v7, v8}, Lcom/android/okhttp/Response$Builder;->body(Lcom/android/okhttp/ResponseBody;)Lcom/android/okhttp/Response$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v7

    iput-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    goto :goto_102
.end method

.method public writingRequestHeaders()V
    .registers 5

    .prologue
    .line 316
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->sentRequestMillis:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 317
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->sentRequestMillis:J

    .line 318
    return-void
.end method
