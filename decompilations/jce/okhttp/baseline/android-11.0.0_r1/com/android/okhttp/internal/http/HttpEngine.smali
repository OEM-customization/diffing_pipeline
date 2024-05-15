.class public final Lcom/android/okhttp/internal/http/HttpEngine;
.super Ljava/lang/Object;
.source "HttpEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;
    }
.end annotation


# static fields
.field private static final greylist-max-o EMPTY_BODY:Lcom/android/okhttp/ResponseBody;

.field public static final greylist-max-o MAX_FOLLOW_UPS:I = 0x14


# instance fields
.field public final greylist-max-o bufferRequestBody:Z

.field private greylist-max-o bufferedRequestBody:Lcom/android/okhttp/okio/BufferedSink;

.field private greylist-max-o cacheResponse:Lcom/android/okhttp/Response;

.field private greylist-max-o cacheStrategy:Lcom/android/okhttp/internal/http/CacheStrategy;

.field private final greylist-max-o callerWritesRequestBody:Z

.field final greylist-max-o client:Lcom/android/okhttp/OkHttpClient;

.field private final greylist-max-o forWebSocket:Z

.field private greylist httpStream:Lcom/android/okhttp/internal/http/HttpStream;

.field private greylist networkRequest:Lcom/android/okhttp/Request;

.field private final greylist priorResponse:Lcom/android/okhttp/Response;

.field private greylist-max-o requestBodyOut:Lcom/android/okhttp/okio/Sink;

.field greylist sentRequestMillis:J

.field private greylist-max-o storeRequest:Lcom/android/okhttp/internal/http/CacheRequest;

.field public final greylist-max-o streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

.field private greylist-max-o transparentGzip:Z

.field private final greylist-max-o userRequest:Lcom/android/okhttp/Request;

.field private greylist userResponse:Lcom/android/okhttp/Response;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 96
    new-instance v0, Lcom/android/okhttp/internal/http/HttpEngine$1;

    invoke-direct {v0}, Lcom/android/okhttp/internal/http/HttpEngine$1;-><init>()V

    sput-object v0, Lcom/android/okhttp/internal/http/HttpEngine;->EMPTY_BODY:Lcom/android/okhttp/ResponseBody;

    return-void
.end method

.method public constructor greylist-max-o <init>(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/Request;ZZZLcom/android/okhttp/internal/http/StreamAllocation;Lcom/android/okhttp/internal/http/RetryableSink;Lcom/android/okhttp/Response;)V
    .registers 12
    .param p1, "client"    # Lcom/android/okhttp/OkHttpClient;
    .param p2, "request"    # Lcom/android/okhttp/Request;
    .param p3, "bufferRequestBody"    # Z
    .param p4, "callerWritesRequestBody"    # Z
    .param p5, "forWebSocket"    # Z
    .param p6, "streamAllocation"    # Lcom/android/okhttp/internal/http/StreamAllocation;
    .param p7, "requestBodyOut"    # Lcom/android/okhttp/internal/http/RetryableSink;
    .param p8, "priorResponse"    # Lcom/android/okhttp/Response;

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->sentRequestMillis:J

    .line 182
    iput-object p1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    .line 183
    iput-object p2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    .line 184
    iput-boolean p3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferRequestBody:Z

    .line 185
    iput-boolean p4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->callerWritesRequestBody:Z

    .line 186
    iput-boolean p5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->forWebSocket:Z

    .line 187
    if-eqz p6, :cond_15

    .line 188
    move-object v0, p6

    goto :goto_22

    .line 189
    :cond_15
    new-instance v0, Lcom/android/okhttp/internal/http/StreamAllocation;

    invoke-virtual {p1}, Lcom/android/okhttp/OkHttpClient;->getConnectionPool()Lcom/android/okhttp/ConnectionPool;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/android/okhttp/internal/http/HttpEngine;->createAddress(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/Request;)Lcom/android/okhttp/Address;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/okhttp/internal/http/StreamAllocation;-><init>(Lcom/android/okhttp/ConnectionPool;Lcom/android/okhttp/Address;)V

    :goto_22
    iput-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    .line 190
    iput-object p7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    .line 191
    iput-object p8, p0, Lcom/android/okhttp/internal/http/HttpEngine;->priorResponse:Lcom/android/okhttp/Response;

    .line 192
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/okhttp/internal/http/HttpEngine;)Lcom/android/okhttp/internal/http/HttpStream;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/HttpEngine;

    .line 89
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->httpStream:Lcom/android/okhttp/internal/http/HttpStream;

    return-object v0
.end method

.method static synthetic blacklist access$102(Lcom/android/okhttp/internal/http/HttpEngine;Lcom/android/okhttp/Request;)Lcom/android/okhttp/Request;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/HttpEngine;
    .param p1, "x1"    # Lcom/android/okhttp/Request;

    .line 89
    iput-object p1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    return-object p1
.end method

.method static synthetic blacklist access$200(Lcom/android/okhttp/internal/http/HttpEngine;)Lcom/android/okhttp/Response;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/HttpEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->readNetworkResponse()Lcom/android/okhttp/Response;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o cacheWritingResponse(Lcom/android/okhttp/internal/http/CacheRequest;Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;
    .registers 11
    .param p1, "cacheRequest"    # Lcom/android/okhttp/internal/http/CacheRequest;
    .param p2, "response"    # Lcom/android/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 779
    if-nez p1, :cond_3

    return-object p2

    .line 780
    :cond_3
    invoke-interface {p1}, Lcom/android/okhttp/internal/http/CacheRequest;->body()Lcom/android/okhttp/okio/Sink;

    move-result-object v0

    .line 781
    .local v0, "cacheBodyUnbuffered":Lcom/android/okhttp/okio/Sink;
    if-nez v0, :cond_a

    return-object p2

    .line 783
    :cond_a
    invoke-virtual {p2}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/ResponseBody;->source()Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v1

    .line 784
    .local v1, "source":Lcom/android/okhttp/okio/BufferedSource;
    invoke-static {v0}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v2

    .line 786
    .local v2, "cacheBody":Lcom/android/okhttp/okio/BufferedSink;
    new-instance v3, Lcom/android/okhttp/internal/http/HttpEngine$2;

    invoke-direct {v3, p0, v1, p1, v2}, Lcom/android/okhttp/internal/http/HttpEngine$2;-><init>(Lcom/android/okhttp/internal/http/HttpEngine;Lcom/android/okhttp/okio/BufferedSource;Lcom/android/okhttp/internal/http/CacheRequest;Lcom/android/okhttp/okio/BufferedSink;)V

    .line 828
    .local v3, "cacheWritingSource":Lcom/android/okhttp/okio/Source;
    invoke-virtual {p2}, Lcom/android/okhttp/Response;->newBuilder()Lcom/android/okhttp/Response$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/okhttp/internal/http/RealResponseBody;

    .line 829
    invoke-virtual {p2}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v6

    invoke-static {v3}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/okhttp/internal/http/RealResponseBody;-><init>(Lcom/android/okhttp/Headers;Lcom/android/okhttp/okio/BufferedSource;)V

    invoke-virtual {v4, v5}, Lcom/android/okhttp/Response$Builder;->body(Lcom/android/okhttp/ResponseBody;)Lcom/android/okhttp/Response$Builder;

    move-result-object v4

    .line 830
    invoke-virtual {v4}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v4

    .line 828
    return-object v4
.end method

.method private static greylist-max-o combine(Lcom/android/okhttp/Headers;Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Headers;
    .registers 8
    .param p0, "cachedHeaders"    # Lcom/android/okhttp/Headers;
    .param p1, "networkHeaders"    # Lcom/android/okhttp/Headers;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 862
    new-instance v0, Lcom/android/okhttp/Headers$Builder;

    invoke-direct {v0}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    .line 864
    .local v0, "result":Lcom/android/okhttp/Headers$Builder;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lcom/android/okhttp/Headers;->size()I

    move-result v2

    .local v2, "size":I
    :goto_a
    if-ge v1, v2, :cond_37

    .line 865
    invoke-virtual {p0, v1}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    .line 866
    .local v3, "fieldName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    .line 867
    .local v4, "value":Ljava/lang/String;
    const-string v5, "Warning"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_25

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 868
    goto :goto_34

    .line 870
    :cond_25
    invoke-static {v3}, Lcom/android/okhttp/internal/http/OkHeaders;->isEndToEnd(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-virtual {p1, v3}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_34

    .line 871
    :cond_31
    invoke-virtual {v0, v3, v4}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    .line 864
    .end local v3    # "fieldName":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_34
    :goto_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 875
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_37
    const/4 v1, 0x0

    .restart local v1    # "i":I
    invoke-virtual {p1}, Lcom/android/okhttp/Headers;->size()I

    move-result v2

    .restart local v2    # "size":I
    :goto_3c
    if-ge v1, v2, :cond_5b

    .line 876
    invoke-virtual {p1, v1}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    .line 877
    .restart local v3    # "fieldName":Ljava/lang/String;
    const-string v4, "Content-Length"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 878
    goto :goto_58

    .line 880
    :cond_4b
    invoke-static {v3}, Lcom/android/okhttp/internal/http/OkHeaders;->isEndToEnd(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 881
    invoke-virtual {p1, v1}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    .line 875
    .end local v3    # "fieldName":Ljava/lang/String;
    :cond_58
    :goto_58
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    .line 885
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_5b
    invoke-virtual {v0}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o connect()Lcom/android/okhttp/internal/http/HttpStream;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/okhttp/internal/http/RouteException;,
            Lcom/android/okhttp/internal/http/RequestException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v0}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v6, v0, 0x1

    .line 289
    .local v6, "doExtensiveHealthChecks":Z
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/android/okhttp/OkHttpClient;->getConnectTimeout()I

    move-result v2

    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    .line 290
    invoke-virtual {v0}, Lcom/android/okhttp/OkHttpClient;->getReadTimeout()I

    move-result v3

    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/android/okhttp/OkHttpClient;->getWriteTimeout()I

    move-result v4

    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    .line 291
    invoke-virtual {v0}, Lcom/android/okhttp/OkHttpClient;->getRetryOnConnectionFailure()Z

    move-result v5

    .line 289
    invoke-virtual/range {v1 .. v6}, Lcom/android/okhttp/internal/http/StreamAllocation;->newStream(IIIZZ)Lcom/android/okhttp/internal/http/HttpStream;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o createAddress(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/Request;)Lcom/android/okhttp/Address;
    .registers 19
    .param p0, "client"    # Lcom/android/okhttp/OkHttpClient;
    .param p1, "request"    # Lcom/android/okhttp/Request;

    .line 986
    const/4 v0, 0x0

    .line 987
    .local v0, "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    const/4 v1, 0x0

    .line 988
    .local v1, "hostnameVerifier":Ljavax/net/ssl/HostnameVerifier;
    const/4 v2, 0x0

    .line 989
    .local v2, "certificatePinner":Lcom/android/okhttp/CertificatePinner;
    invoke-virtual/range {p1 .. p1}, Lcom/android/okhttp/Request;->isHttps()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 990
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/OkHttpClient;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 991
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/OkHttpClient;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    .line 992
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/OkHttpClient;->getCertificatePinner()Lcom/android/okhttp/CertificatePinner;

    move-result-object v2

    .line 995
    :cond_15
    new-instance v16, Lcom/android/okhttp/Address;

    invoke-virtual/range {p1 .. p1}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/okhttp/HttpUrl;->port()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/OkHttpClient;->getDns()Lcom/android/okhttp/Dns;

    move-result-object v6

    .line 996
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/OkHttpClient;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v7

    .line 997
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/OkHttpClient;->getAuthenticator()Lcom/android/okhttp/Authenticator;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/OkHttpClient;->getProxy()Ljava/net/Proxy;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/OkHttpClient;->getProtocols()Ljava/util/List;

    move-result-object v13

    .line 998
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/OkHttpClient;->getConnectionSpecs()Ljava/util/List;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/OkHttpClient;->getProxySelector()Ljava/net/ProxySelector;

    move-result-object v15

    move-object/from16 v3, v16

    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    invoke-direct/range {v3 .. v15}, Lcom/android/okhttp/Address;-><init>(Ljava/lang/String;ILcom/android/okhttp/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lcom/android/okhttp/CertificatePinner;Lcom/android/okhttp/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    .line 995
    return-object v16
.end method

.method public static greylist-max-o hasBody(Lcom/android/okhttp/Response;)Z
    .registers 9
    .param p0, "response"    # Lcom/android/okhttp/Response;

    .line 501
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 502
    return v1

    .line 505
    :cond_12
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->code()I

    move-result v0

    .line 506
    .local v0, "responseCode":I
    const/16 v2, 0x64

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1f

    const/16 v2, 0xc8

    if-lt v0, v2, :cond_28

    :cond_1f
    const/16 v2, 0xcc

    if-eq v0, v2, :cond_28

    const/16 v2, 0x130

    if-eq v0, v2, :cond_28

    .line 509
    return v3

    .line 515
    :cond_28
    invoke-static {p0}, Lcom/android/okhttp/internal/http/OkHeaders;->contentLength(Lcom/android/okhttp/Response;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    if-nez v2, :cond_42

    .line 516
    const-string v2, "Transfer-Encoding"

    invoke-virtual {p0, v2}, Lcom/android/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "chunked"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_41

    goto :goto_42

    .line 520
    :cond_41
    return v1

    .line 517
    :cond_42
    :goto_42
    return v3
.end method

.method private greylist-max-o maybeCache()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 399
    sget-object v0, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/Internal;->internalCache(Lcom/android/okhttp/OkHttpClient;)Lcom/android/okhttp/internal/InternalCache;

    move-result-object v0

    .line 400
    .local v0, "responseCache":Lcom/android/okhttp/internal/InternalCache;
    if-nez v0, :cond_b

    return-void

    .line 403
    :cond_b
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    invoke-static {v1, v2}, Lcom/android/okhttp/internal/http/CacheStrategy;->isCacheable(Lcom/android/okhttp/Response;Lcom/android/okhttp/Request;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 404
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v1}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/okhttp/internal/http/HttpMethod;->invalidatesCache(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 406
    :try_start_21
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    invoke-interface {v0, v1}, Lcom/android/okhttp/internal/InternalCache;->remove(Lcom/android/okhttp/Request;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_26} :catch_27

    .line 409
    goto :goto_28

    .line 407
    :catch_27
    move-exception v1

    .line 411
    :cond_28
    :goto_28
    return-void

    .line 415
    :cond_29
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    invoke-static {v1}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/okhttp/internal/InternalCache;->put(Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/CacheRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->storeRequest:Lcom/android/okhttp/internal/http/CacheRequest;

    .line 416
    return-void
.end method

.method private greylist networkRequest(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Request;
    .registers 6
    .param p1, "request"    # Lcom/android/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 531
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->newBuilder()Lcom/android/okhttp/Request$Builder;

    move-result-object v0

    .line 533
    .local v0, "result":Lcom/android/okhttp/Request$Builder;
    const-string v1, "Host"

    invoke-virtual {p1, v1}, Lcom/android/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_18

    .line 534
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/okhttp/internal/Util;->hostHeader(Lcom/android/okhttp/HttpUrl;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 537
    :cond_18
    const-string v1, "Connection"

    invoke-virtual {p1, v1}, Lcom/android/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_25

    .line 538
    const-string v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 541
    :cond_25
    const-string v1, "Accept-Encoding"

    invoke-virtual {p1, v1}, Lcom/android/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_35

    .line 542
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->transparentGzip:Z

    .line 543
    const-string v2, "gzip"

    invoke-virtual {v0, v1, v2}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 546
    :cond_35
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v1}, Lcom/android/okhttp/OkHttpClient;->getCookieHandler()Ljava/net/CookieHandler;

    move-result-object v1

    .line 547
    .local v1, "cookieHandler":Ljava/net/CookieHandler;
    if-eqz v1, :cond_55

    .line 551
    invoke-virtual {v0}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/okhttp/internal/http/OkHeaders;->toMultimap(Lcom/android/okhttp/Headers;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 553
    .local v2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->uri()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/net/CookieHandler;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 556
    .local v3, "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {v0, v3}, Lcom/android/okhttp/internal/http/OkHeaders;->addCookies(Lcom/android/okhttp/Request$Builder;Ljava/util/Map;)V

    .line 559
    .end local v2    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v3    # "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_55
    const-string v2, "User-Agent"

    invoke-virtual {p1, v2}, Lcom/android/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_64

    .line 560
    invoke-static {}, Lcom/android/okhttp/internal/Version;->userAgent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 563
    :cond_64
    invoke-virtual {v0}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    move-result-object v2

    return-object v2
.end method

.method private greylist-max-o readNetworkResponse()Lcom/android/okhttp/Response;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 748
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->httpStream:Lcom/android/okhttp/internal/http/HttpStream;

    invoke-interface {v0}, Lcom/android/okhttp/internal/http/HttpStream;->finishRequest()V

    .line 750
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->httpStream:Lcom/android/okhttp/internal/http/HttpStream;

    invoke-interface {v0}, Lcom/android/okhttp/internal/http/HttpStream;->readResponseHeaders()Lcom/android/okhttp/Response$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    .line 751
    invoke-virtual {v0, v1}, Lcom/android/okhttp/Response$Builder;->request(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    .line 752
    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/StreamAllocation;->connection()Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/internal/io/RealConnection;->getHandshake()Lcom/android/okhttp/Handshake;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/Response$Builder;->handshake(Lcom/android/okhttp/Handshake;)Lcom/android/okhttp/Response$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/okhttp/internal/http/OkHeaders;->SENT_MILLIS:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->sentRequestMillis:J

    .line 753
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/okhttp/Response$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/okhttp/internal/http/OkHeaders;->RECEIVED_MILLIS:Ljava/lang/String;

    .line 754
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/okhttp/Response$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;

    move-result-object v0

    .line 755
    invoke-virtual {v0}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v0

    .line 757
    .local v0, "networkResponse":Lcom/android/okhttp/Response;
    iget-boolean v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->forWebSocket:Z

    if-nez v1, :cond_53

    .line 758
    invoke-virtual {v0}, Lcom/android/okhttp/Response;->newBuilder()Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->httpStream:Lcom/android/okhttp/internal/http/HttpStream;

    .line 759
    invoke-interface {v2, v0}, Lcom/android/okhttp/internal/http/HttpStream;->openResponseBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/ResponseBody;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/Response$Builder;->body(Lcom/android/okhttp/ResponseBody;)Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    .line 760
    invoke-virtual {v1}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v0

    .line 763
    :cond_53
    invoke-virtual {v0}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    move-result-object v1

    const-string v2, "Connection"

    invoke-virtual {v1, v2}, Lcom/android/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "close"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6f

    .line 764
    invoke-virtual {v0, v2}, Lcom/android/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 765
    :cond_6f
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/StreamAllocation;->noNewStreams()V

    .line 768
    :cond_74
    return-object v0
.end method

.method private static greylist-max-o stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;
    .registers 3
    .param p0, "response"    # Lcom/android/okhttp/Response;

    .line 295
    if-eqz p0, :cond_16

    invoke-virtual {p0}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 296
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->newBuilder()Lcom/android/okhttp/Response$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/okhttp/Response$Builder;->body(Lcom/android/okhttp/ResponseBody;)Lcom/android/okhttp/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v0

    goto :goto_17

    .line 297
    :cond_16
    move-object v0, p0

    .line 295
    :goto_17
    return-object v0
.end method

.method private greylist-max-o unzip(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;
    .registers 7
    .param p1, "response"    # Lcom/android/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 476
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->transparentGzip:Z

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    const-string v1, "Content-Encoding"

    invoke-virtual {v0, v1}, Lcom/android/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "gzip"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_59

    .line 480
    :cond_15
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 481
    return-object p1

    .line 484
    :cond_1c
    new-instance v0, Lcom/android/okhttp/okio/GzipSource;

    invoke-virtual {p1}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okhttp/ResponseBody;->source()Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/okhttp/okio/GzipSource;-><init>(Lcom/android/okhttp/okio/Source;)V

    .line 485
    .local v0, "responseBody":Lcom/android/okhttp/okio/GzipSource;
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okhttp/Headers;->newBuilder()Lcom/android/okhttp/Headers$Builder;

    move-result-object v2

    .line 486
    invoke-virtual {v2, v1}, Lcom/android/okhttp/Headers$Builder;->removeAll(Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    move-result-object v1

    .line 487
    const-string v2, "Content-Length"

    invoke-virtual {v1, v2}, Lcom/android/okhttp/Headers$Builder;->removeAll(Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    move-result-object v1

    .line 488
    invoke-virtual {v1}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v1

    .line 489
    .local v1, "strippedHeaders":Lcom/android/okhttp/Headers;
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->newBuilder()Lcom/android/okhttp/Response$Builder;

    move-result-object v2

    .line 490
    invoke-virtual {v2, v1}, Lcom/android/okhttp/Response$Builder;->headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Response$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/okhttp/internal/http/RealResponseBody;

    .line 491
    invoke-static {v0}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/android/okhttp/internal/http/RealResponseBody;-><init>(Lcom/android/okhttp/Headers;Lcom/android/okhttp/okio/BufferedSource;)V

    invoke-virtual {v2, v3}, Lcom/android/okhttp/Response$Builder;->body(Lcom/android/okhttp/ResponseBody;)Lcom/android/okhttp/Response$Builder;

    move-result-object v2

    .line 492
    invoke-virtual {v2}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v2

    .line 489
    return-object v2

    .line 477
    .end local v0    # "responseBody":Lcom/android/okhttp/okio/GzipSource;
    .end local v1    # "strippedHeaders":Lcom/android/okhttp/Headers;
    :cond_59
    :goto_59
    return-object p1
.end method

.method private static greylist-max-o validate(Lcom/android/okhttp/Response;Lcom/android/okhttp/Response;)Z
    .registers 9
    .param p0, "cached"    # Lcom/android/okhttp/Response;
    .param p1, "network"    # Lcom/android/okhttp/Response;

    .line 838
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->code()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x130

    if-ne v0, v2, :cond_a

    .line 839
    return v1

    .line 845
    :cond_a
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v0

    const-string v2, "Last-Modified"

    invoke-virtual {v0, v2}, Lcom/android/okhttp/Headers;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 846
    .local v0, "lastModified":Ljava/util/Date;
    if-eqz v0, :cond_2d

    .line 847
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/okhttp/Headers;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 848
    .local v2, "networkLastModified":Ljava/util/Date;
    if-eqz v2, :cond_2d

    .line 849
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_2d

    .line 850
    return v1

    .line 854
    .end local v2    # "networkLastModified":Ljava/util/Date;
    :cond_2d
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public greylist-max-o cancel()V
    .registers 2

    .line 437
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/StreamAllocation;->cancel()V

    .line 438
    return-void
.end method

.method public greylist-max-o close()Lcom/android/okhttp/internal/http/StreamAllocation;
    .registers 2

    .line 445
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferedRequestBody:Lcom/android/okhttp/okio/BufferedSink;

    if-eqz v0, :cond_8

    .line 447
    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_f

    .line 448
    :cond_8
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    if-eqz v0, :cond_f

    .line 449
    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 452
    :cond_f
    :goto_f
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    if-eqz v0, :cond_1b

    .line 453
    invoke-virtual {v0}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_20

    .line 456
    :cond_1b
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionFailed()V

    .line 459
    :goto_20
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    return-object v0
.end method

.method public greylist-max-o followUpRequest()Lcom/android/okhttp/Request;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 901
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    if-eqz v0, :cond_eb

    .line 902
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/StreamAllocation;->connection()Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v0

    .line 903
    .local v0, "connection":Lcom/android/okhttp/Connection;
    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 904
    invoke-interface {v0}, Lcom/android/okhttp/Connection;->getRoute()Lcom/android/okhttp/Route;

    move-result-object v2

    goto :goto_13

    .line 905
    :cond_12
    move-object v2, v1

    :goto_13
    nop

    .line 906
    .local v2, "route":Lcom/android/okhttp/Route;
    if-eqz v2, :cond_1b

    .line 907
    invoke-virtual {v2}, Lcom/android/okhttp/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v3

    goto :goto_21

    .line 908
    :cond_1b
    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v3}, Lcom/android/okhttp/OkHttpClient;->getProxy()Ljava/net/Proxy;

    move-result-object v3

    :goto_21
    nop

    .line 909
    .local v3, "selectedProxy":Ljava/net/Proxy;
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    invoke-virtual {v4}, Lcom/android/okhttp/Response;->code()I

    move-result v4

    .line 911
    .local v4, "responseCode":I
    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v5}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v5

    .line 912
    .local v5, "method":Ljava/lang/String;
    const/16 v6, 0x133

    const-string v7, "GET"

    if-eq v4, v6, :cond_62

    const/16 v6, 0x134

    if-eq v4, v6, :cond_62

    const/16 v6, 0x191

    if-eq v4, v6, :cond_55

    const/16 v6, 0x197

    if-eq v4, v6, :cond_44

    packed-switch v4, :pswitch_data_f2

    .line 970
    return-object v1

    .line 914
    :cond_44
    invoke-virtual {v3}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v6, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v1, v6, :cond_4d

    goto :goto_55

    .line 915
    :cond_4d
    new-instance v1, Ljava/net/ProtocolException;

    const-string v6, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {v1, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 919
    :cond_55
    :goto_55
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v1}, Lcom/android/okhttp/OkHttpClient;->getAuthenticator()Lcom/android/okhttp/Authenticator;

    move-result-object v1

    iget-object v6, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    invoke-static {v1, v6, v3}, Lcom/android/okhttp/internal/http/OkHeaders;->processAuthHeader(Lcom/android/okhttp/Authenticator;Lcom/android/okhttp/Response;Ljava/net/Proxy;)Lcom/android/okhttp/Request;

    move-result-object v1

    return-object v1

    .line 925
    :cond_62
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_71

    const-string v6, "HEAD"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_71

    .line 926
    return-object v1

    .line 934
    :cond_71
    :pswitch_71
    iget-object v6, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v6}, Lcom/android/okhttp/OkHttpClient;->getFollowRedirects()Z

    move-result v6

    if-nez v6, :cond_7a

    return-object v1

    .line 936
    :cond_7a
    iget-object v6, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    const-string v8, "Location"

    invoke-virtual {v6, v8}, Lcom/android/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 937
    .local v6, "location":Ljava/lang/String;
    if-nez v6, :cond_85

    return-object v1

    .line 938
    :cond_85
    iget-object v8, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v8}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/android/okhttp/HttpUrl;->resolve(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl;

    move-result-object v8

    .line 941
    .local v8, "url":Lcom/android/okhttp/HttpUrl;
    if-nez v8, :cond_92

    return-object v1

    .line 944
    :cond_92
    invoke-virtual {v8}, Lcom/android/okhttp/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v10}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/okhttp/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 945
    .local v9, "sameScheme":Z
    if-nez v9, :cond_af

    iget-object v10, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v10}, Lcom/android/okhttp/OkHttpClient;->getFollowSslRedirects()Z

    move-result v10

    if-nez v10, :cond_af

    return-object v1

    .line 948
    :cond_af
    iget-object v10, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v10}, Lcom/android/okhttp/Request;->newBuilder()Lcom/android/okhttp/Request$Builder;

    move-result-object v10

    .line 949
    .local v10, "requestBuilder":Lcom/android/okhttp/Request$Builder;
    invoke-static {v5}, Lcom/android/okhttp/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d7

    .line 950
    invoke-static {v5}, Lcom/android/okhttp/internal/http/HttpMethod;->redirectsToGet(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c5

    .line 951
    invoke-virtual {v10, v7, v1}, Lcom/android/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;

    goto :goto_c8

    .line 953
    :cond_c5
    invoke-virtual {v10, v5, v1}, Lcom/android/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;

    .line 955
    :goto_c8
    const-string v1, "Transfer-Encoding"

    invoke-virtual {v10, v1}, Lcom/android/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 956
    const-string v1, "Content-Length"

    invoke-virtual {v10, v1}, Lcom/android/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 957
    const-string v1, "Content-Type"

    invoke-virtual {v10, v1}, Lcom/android/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 963
    :cond_d7
    invoke-virtual {p0, v8}, Lcom/android/okhttp/internal/http/HttpEngine;->sameConnection(Lcom/android/okhttp/HttpUrl;)Z

    move-result v1

    if-nez v1, :cond_e2

    .line 964
    const-string v1, "Authorization"

    invoke-virtual {v10, v1}, Lcom/android/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 967
    :cond_e2
    invoke-virtual {v10, v8}, Lcom/android/okhttp/Request$Builder;->url(Lcom/android/okhttp/HttpUrl;)Lcom/android/okhttp/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    move-result-object v1

    return-object v1

    .line 901
    .end local v0    # "connection":Lcom/android/okhttp/Connection;
    .end local v2    # "route":Lcom/android/okhttp/Route;
    .end local v3    # "selectedProxy":Ljava/net/Proxy;
    .end local v4    # "responseCode":I
    .end local v5    # "method":Ljava/lang/String;
    .end local v6    # "location":Ljava/lang/String;
    .end local v8    # "url":Lcom/android/okhttp/HttpUrl;
    .end local v9    # "sameScheme":Z
    .end local v10    # "requestBuilder":Lcom/android/okhttp/Request$Builder;
    :cond_eb
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    nop

    :pswitch_data_f2
    .packed-switch 0x12c
        :pswitch_71
        :pswitch_71
        :pswitch_71
        :pswitch_71
    .end packed-switch
.end method

.method public greylist-max-o getBufferedRequestBody()Lcom/android/okhttp/okio/BufferedSink;
    .registers 4

    .line 322
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferedRequestBody:Lcom/android/okhttp/okio/BufferedSink;

    .line 323
    .local v0, "result":Lcom/android/okhttp/okio/BufferedSink;
    if-eqz v0, :cond_5

    return-object v0

    .line 324
    :cond_5
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->getRequestBody()Lcom/android/okhttp/okio/Sink;

    move-result-object v1

    .line 325
    .local v1, "requestBody":Lcom/android/okhttp/okio/Sink;
    if-eqz v1, :cond_12

    .line 326
    invoke-static {v1}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v2

    iput-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferedRequestBody:Lcom/android/okhttp/okio/BufferedSink;

    goto :goto_13

    .line 327
    :cond_12
    const/4 v2, 0x0

    .line 325
    :goto_13
    return-object v2
.end method

.method public greylist getConnection()Lcom/android/okhttp/Connection;
    .registers 2

    .line 348
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/StreamAllocation;->connection()Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getRequest()Lcom/android/okhttp/Request;
    .registers 2

    .line 336
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    return-object v0
.end method

.method public greylist-max-o getRequestBody()Lcom/android/okhttp/okio/Sink;
    .registers 2

    .line 317
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheStrategy:Lcom/android/okhttp/internal/http/CacheStrategy;

    if-eqz v0, :cond_7

    .line 318
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    return-object v0

    .line 317
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public greylist-max-o getResponse()Lcom/android/okhttp/Response;
    .registers 2

    .line 342
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    if-eqz v0, :cond_5

    .line 343
    return-object v0

    .line 342
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public greylist hasResponse()Z
    .registers 2

    .line 332
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method greylist-max-o permitsRequestBody(Lcom/android/okhttp/Request;)Z
    .registers 3
    .param p1, "request"    # Lcom/android/okhttp/Request;

    .line 312
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okhttp/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public greylist readResponse()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 572
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    if-eqz v0, :cond_5

    .line 573
    return-void

    .line 575
    :cond_5
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    if-eqz v0, :cond_e

    goto :goto_16

    .line 576
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call sendRequest() first!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 578
    :cond_16
    :goto_16
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    if-nez v0, :cond_1b

    .line 579
    return-void

    .line 584
    :cond_1b
    iget-boolean v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->forWebSocket:Z

    if-eqz v1, :cond_2a

    .line 585
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->httpStream:Lcom/android/okhttp/internal/http/HttpStream;

    invoke-interface {v1, v0}, Lcom/android/okhttp/internal/http/HttpStream;->writeRequestHeaders(Lcom/android/okhttp/Request;)V

    .line 586
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->readNetworkResponse()Lcom/android/okhttp/Response;

    move-result-object v0

    .local v0, "networkResponse":Lcom/android/okhttp/Response;
    goto/16 :goto_ad

    .line 588
    .end local v0    # "networkResponse":Lcom/android/okhttp/Response;
    :cond_2a
    iget-boolean v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->callerWritesRequestBody:Z

    if-nez v1, :cond_3b

    .line 589
    new-instance v1, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;-><init>(Lcom/android/okhttp/internal/http/HttpEngine;ILcom/android/okhttp/Request;)V

    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v1, v0}, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->proceed(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response;

    move-result-object v0

    .restart local v0    # "networkResponse":Lcom/android/okhttp/Response;
    goto :goto_ad

    .line 593
    .end local v0    # "networkResponse":Lcom/android/okhttp/Response;
    :cond_3b
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferedRequestBody:Lcom/android/okhttp/okio/BufferedSink;

    if-eqz v0, :cond_52

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->buffer()Lcom/android/okhttp/okio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_52

    .line 594
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferedRequestBody:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->emit()Lcom/android/okhttp/okio/BufferedSink;

    .line 598
    :cond_52
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->sentRequestMillis:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_8d

    .line 599
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    invoke-static {v0}, Lcom/android/okhttp/internal/http/OkHeaders;->contentLength(Lcom/android/okhttp/Request;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_86

    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    instance-of v1, v0, Lcom/android/okhttp/internal/http/RetryableSink;

    if-eqz v1, :cond_86

    .line 601
    check-cast v0, Lcom/android/okhttp/internal/http/RetryableSink;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/RetryableSink;->contentLength()J

    move-result-wide v0

    .line 602
    .local v0, "contentLength":J
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v2}, Lcom/android/okhttp/Request;->newBuilder()Lcom/android/okhttp/Request$Builder;

    move-result-object v2

    .line 603
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Content-Length"

    invoke-virtual {v2, v4, v3}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    move-result-object v2

    .line 604
    invoke-virtual {v2}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    move-result-object v2

    iput-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    .line 606
    .end local v0    # "contentLength":J
    :cond_86
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->httpStream:Lcom/android/okhttp/internal/http/HttpStream;

    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    invoke-interface {v0, v1}, Lcom/android/okhttp/internal/http/HttpStream;->writeRequestHeaders(Lcom/android/okhttp/Request;)V

    .line 610
    :cond_8d
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    if-eqz v0, :cond_a9

    .line 611
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferedRequestBody:Lcom/android/okhttp/okio/BufferedSink;

    if-eqz v1, :cond_99

    .line 613
    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSink;->close()V

    goto :goto_9c

    .line 615
    :cond_99
    invoke-interface {v0}, Lcom/android/okhttp/okio/Sink;->close()V

    .line 617
    :goto_9c
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    instance-of v1, v0, Lcom/android/okhttp/internal/http/RetryableSink;

    if-eqz v1, :cond_a9

    .line 618
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->httpStream:Lcom/android/okhttp/internal/http/HttpStream;

    check-cast v0, Lcom/android/okhttp/internal/http/RetryableSink;

    invoke-interface {v1, v0}, Lcom/android/okhttp/internal/http/HttpStream;->writeRequestBody(Lcom/android/okhttp/internal/http/RetryableSink;)V

    .line 622
    :cond_a9
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->readNetworkResponse()Lcom/android/okhttp/Response;

    move-result-object v0

    .line 625
    .local v0, "networkResponse":Lcom/android/okhttp/Response;
    :goto_ad
    invoke-virtual {v0}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/okhttp/internal/http/HttpEngine;->receiveHeaders(Lcom/android/okhttp/Headers;)V

    .line 628
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    if-eqz v1, :cond_130

    .line 629
    invoke-static {v1, v0}, Lcom/android/okhttp/internal/http/HttpEngine;->validate(Lcom/android/okhttp/Response;Lcom/android/okhttp/Response;)Z

    move-result v1

    if-eqz v1, :cond_127

    .line 630
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    invoke-virtual {v1}, Lcom/android/okhttp/Response;->newBuilder()Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    .line 631
    invoke-virtual {v1, v2}, Lcom/android/okhttp/Response$Builder;->request(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->priorResponse:Lcom/android/okhttp/Response;

    .line 632
    invoke-static {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/Response$Builder;->priorResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    .line 633
    invoke-virtual {v2}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/okhttp/internal/http/HttpEngine;->combine(Lcom/android/okhttp/Headers;Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Headers;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/Response$Builder;->headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    .line 634
    invoke-static {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/Response$Builder;->cacheResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    .line 635
    invoke-static {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/Response$Builder;->networkResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    .line 636
    invoke-virtual {v1}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v1

    iput-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    .line 637
    invoke-virtual {v0}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/ResponseBody;->close()V

    .line 638
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->releaseStreamAllocation()V

    .line 642
    sget-object v1, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/Internal;->internalCache(Lcom/android/okhttp/OkHttpClient;)Lcom/android/okhttp/internal/InternalCache;

    move-result-object v1

    .line 643
    .local v1, "responseCache":Lcom/android/okhttp/internal/InternalCache;
    invoke-interface {v1}, Lcom/android/okhttp/internal/InternalCache;->trackConditionalCacheHit()V

    .line 644
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    invoke-static {v3}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/okhttp/internal/InternalCache;->update(Lcom/android/okhttp/Response;Lcom/android/okhttp/Response;)V

    .line 645
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    invoke-direct {p0, v2}, Lcom/android/okhttp/internal/http/HttpEngine;->unzip(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v2

    iput-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    .line 646
    return-void

    .line 648
    .end local v1    # "responseCache":Lcom/android/okhttp/internal/InternalCache;
    :cond_127
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    invoke-virtual {v1}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    move-result-object v1

    invoke-static {v1}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 652
    :cond_130
    invoke-virtual {v0}, Lcom/android/okhttp/Response;->newBuilder()Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    .line 653
    invoke-virtual {v1, v2}, Lcom/android/okhttp/Response$Builder;->request(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->priorResponse:Lcom/android/okhttp/Response;

    .line 654
    invoke-static {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/Response$Builder;->priorResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    .line 655
    invoke-static {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/Response$Builder;->cacheResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    .line 656
    invoke-static {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/Response$Builder;->networkResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    .line 657
    invoke-virtual {v1}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v1

    iput-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    .line 659
    invoke-static {v1}, Lcom/android/okhttp/internal/http/HttpEngine;->hasBody(Lcom/android/okhttp/Response;)Z

    move-result v1

    if-eqz v1, :cond_173

    .line 660
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->maybeCache()V

    .line 661
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->storeRequest:Lcom/android/okhttp/internal/http/CacheRequest;

    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    invoke-direct {p0, v1, v2}, Lcom/android/okhttp/internal/http/HttpEngine;->cacheWritingResponse(Lcom/android/okhttp/internal/http/CacheRequest;Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/okhttp/internal/http/HttpEngine;->unzip(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v1

    iput-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    .line 663
    :cond_173
    return-void
.end method

.method public greylist-max-o receiveHeaders(Lcom/android/okhttp/Headers;)V
    .registers 5
    .param p1, "headers"    # Lcom/android/okhttp/Headers;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 889
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/android/okhttp/OkHttpClient;->getCookieHandler()Ljava/net/CookieHandler;

    move-result-object v0

    .line 890
    .local v0, "cookieHandler":Ljava/net/CookieHandler;
    if-eqz v0, :cond_16

    .line 891
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v1}, Lcom/android/okhttp/Request;->uri()Ljava/net/URI;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/android/okhttp/internal/http/OkHeaders;->toMultimap(Lcom/android/okhttp/Headers;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/CookieHandler;->put(Ljava/net/URI;Ljava/util/Map;)V

    .line 893
    :cond_16
    return-void
.end method

.method public greylist-max-o recover(Lcom/android/okhttp/internal/http/RouteException;)Lcom/android/okhttp/internal/http/HttpEngine;
    .registers 13
    .param p1, "e"    # Lcom/android/okhttp/internal/http/RouteException;

    .line 357
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    invoke-virtual {v0, p1}, Lcom/android/okhttp/internal/http/StreamAllocation;->recover(Lcom/android/okhttp/internal/http/RouteException;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 358
    return-object v1

    .line 361
    :cond_a
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/android/okhttp/OkHttpClient;->getRetryOnConnectionFailure()Z

    move-result v0

    if-nez v0, :cond_13

    .line 362
    return-object v1

    .line 365
    :cond_13
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->close()Lcom/android/okhttp/internal/http/StreamAllocation;

    move-result-object v0

    .line 368
    .local v0, "streamAllocation":Lcom/android/okhttp/internal/http/StreamAllocation;
    new-instance v1, Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    iget-boolean v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferRequestBody:Z

    iget-boolean v6, p0, Lcom/android/okhttp/internal/http/HttpEngine;->callerWritesRequestBody:Z

    iget-boolean v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->forWebSocket:Z

    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    move-object v9, v2

    check-cast v9, Lcom/android/okhttp/internal/http/RetryableSink;

    iget-object v10, p0, Lcom/android/okhttp/internal/http/HttpEngine;->priorResponse:Lcom/android/okhttp/Response;

    move-object v2, v1

    move-object v8, v0

    invoke-direct/range {v2 .. v10}, Lcom/android/okhttp/internal/http/HttpEngine;-><init>(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/Request;ZZZLcom/android/okhttp/internal/http/StreamAllocation;Lcom/android/okhttp/internal/http/RetryableSink;Lcom/android/okhttp/Response;)V

    return-object v1
.end method

.method public greylist-max-o recover(Ljava/io/IOException;)Lcom/android/okhttp/internal/http/HttpEngine;
    .registers 3
    .param p1, "e"    # Ljava/io/IOException;

    .line 395
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    invoke-virtual {p0, p1, v0}, Lcom/android/okhttp/internal/http/HttpEngine;->recover(Ljava/io/IOException;Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/internal/http/HttpEngine;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o recover(Ljava/io/IOException;Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/internal/http/HttpEngine;
    .registers 14
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "requestBodyOut"    # Lcom/android/okhttp/okio/Sink;

    .line 379
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/internal/http/StreamAllocation;->recover(Ljava/io/IOException;Lcom/android/okhttp/okio/Sink;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 380
    return-object v1

    .line 383
    :cond_a
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/android/okhttp/OkHttpClient;->getRetryOnConnectionFailure()Z

    move-result v0

    if-nez v0, :cond_13

    .line 384
    return-object v1

    .line 387
    :cond_13
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->close()Lcom/android/okhttp/internal/http/StreamAllocation;

    move-result-object v0

    .line 390
    .local v0, "streamAllocation":Lcom/android/okhttp/internal/http/StreamAllocation;
    new-instance v1, Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    iget-boolean v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferRequestBody:Z

    iget-boolean v6, p0, Lcom/android/okhttp/internal/http/HttpEngine;->callerWritesRequestBody:Z

    iget-boolean v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->forWebSocket:Z

    move-object v9, p2

    check-cast v9, Lcom/android/okhttp/internal/http/RetryableSink;

    iget-object v10, p0, Lcom/android/okhttp/internal/http/HttpEngine;->priorResponse:Lcom/android/okhttp/Response;

    move-object v2, v1

    move-object v8, v0

    invoke-direct/range {v2 .. v10}, Lcom/android/okhttp/internal/http/HttpEngine;-><init>(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/Request;ZZZLcom/android/okhttp/internal/http/StreamAllocation;Lcom/android/okhttp/internal/http/RetryableSink;Lcom/android/okhttp/Response;)V

    return-object v1
.end method

.method public greylist-max-o releaseStreamAllocation()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 424
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/StreamAllocation;->release()V

    .line 425
    return-void
.end method

.method public greylist-max-o sameConnection(Lcom/android/okhttp/HttpUrl;)Z
    .registers 5
    .param p1, "followUp"    # Lcom/android/okhttp/HttpUrl;

    .line 979
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v0}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v0

    .line 980
    .local v0, "url":Lcom/android/okhttp/HttpUrl;
    invoke-virtual {v0}, Lcom/android/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 981
    invoke-virtual {v0}, Lcom/android/okhttp/HttpUrl;->port()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/okhttp/HttpUrl;->port()I

    move-result v2

    if-ne v1, v2, :cond_2e

    .line 982
    invoke-virtual {v0}, Lcom/android/okhttp/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/okhttp/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const/4 v1, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v1, 0x0

    .line 980
    :goto_2f
    return v1
.end method

.method public greylist sendRequest()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/okhttp/internal/http/RequestException;,
            Lcom/android/okhttp/internal/http/RouteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheStrategy:Lcom/android/okhttp/internal/http/CacheStrategy;

    if-eqz v0, :cond_5

    return-void

    .line 209
    :cond_5
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->httpStream:Lcom/android/okhttp/internal/http/HttpStream;

    if-nez v0, :cond_116

    .line 211
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    invoke-direct {p0, v0}, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Request;

    move-result-object v0

    .line 213
    .local v0, "request":Lcom/android/okhttp/Request;
    sget-object v1, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/Internal;->internalCache(Lcom/android/okhttp/OkHttpClient;)Lcom/android/okhttp/internal/InternalCache;

    move-result-object v1

    .line 214
    .local v1, "responseCache":Lcom/android/okhttp/internal/InternalCache;
    if-eqz v1, :cond_1e

    .line 215
    invoke-interface {v1, v0}, Lcom/android/okhttp/internal/InternalCache;->get(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response;

    move-result-object v2

    goto :goto_1f

    .line 216
    :cond_1e
    const/4 v2, 0x0

    :goto_1f
    nop

    .line 218
    .local v2, "cacheCandidate":Lcom/android/okhttp/Response;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 219
    .local v3, "now":J
    new-instance v5, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;

    invoke-direct {v5, v3, v4, v0, v2}, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;-><init>(JLcom/android/okhttp/Request;Lcom/android/okhttp/Response;)V

    invoke-virtual {v5}, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->get()Lcom/android/okhttp/internal/http/CacheStrategy;

    move-result-object v5

    iput-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheStrategy:Lcom/android/okhttp/internal/http/CacheStrategy;

    .line 220
    iget-object v5, v5, Lcom/android/okhttp/internal/http/CacheStrategy;->networkRequest:Lcom/android/okhttp/Request;

    iput-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    .line 221
    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheStrategy:Lcom/android/okhttp/internal/http/CacheStrategy;

    iget-object v5, v5, Lcom/android/okhttp/internal/http/CacheStrategy;->cacheResponse:Lcom/android/okhttp/Response;

    iput-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    .line 223
    if-eqz v1, :cond_40

    .line 224
    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheStrategy:Lcom/android/okhttp/internal/http/CacheStrategy;

    invoke-interface {v1, v5}, Lcom/android/okhttp/internal/InternalCache;->trackResponse(Lcom/android/okhttp/internal/http/CacheStrategy;)V

    .line 227
    :cond_40
    if-eqz v2, :cond_4d

    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    if-nez v5, :cond_4d

    .line 228
    invoke-virtual {v2}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    move-result-object v5

    invoke-static {v5}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 231
    :cond_4d
    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    if-eqz v5, :cond_b1

    .line 232
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->connect()Lcom/android/okhttp/internal/http/HttpStream;

    move-result-object v5

    iput-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->httpStream:Lcom/android/okhttp/internal/http/HttpStream;

    .line 233
    invoke-interface {v5, p0}, Lcom/android/okhttp/internal/http/HttpStream;->setHttpEngine(Lcom/android/okhttp/internal/http/HttpEngine;)V

    .line 239
    iget-boolean v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->callerWritesRequestBody:Z

    if-eqz v5, :cond_115

    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    invoke-virtual {p0, v5}, Lcom/android/okhttp/internal/http/HttpEngine;->permitsRequestBody(Lcom/android/okhttp/Request;)Z

    move-result v5

    if-eqz v5, :cond_115

    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    if-nez v5, :cond_115

    .line 240
    invoke-static {v0}, Lcom/android/okhttp/internal/http/OkHeaders;->contentLength(Lcom/android/okhttp/Request;)J

    move-result-wide v5

    .line 241
    .local v5, "contentLength":J
    iget-boolean v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferRequestBody:Z

    if-eqz v7, :cond_9f

    .line 242
    const-wide/32 v7, 0x7fffffff

    cmp-long v7, v5, v7

    if-gtz v7, :cond_97

    .line 247
    const-wide/16 v7, -0x1

    cmp-long v7, v5, v7

    if-eqz v7, :cond_8f

    .line 249
    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->httpStream:Lcom/android/okhttp/internal/http/HttpStream;

    iget-object v8, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    invoke-interface {v7, v8}, Lcom/android/okhttp/internal/http/HttpStream;->writeRequestHeaders(Lcom/android/okhttp/Request;)V

    .line 250
    new-instance v7, Lcom/android/okhttp/internal/http/RetryableSink;

    long-to-int v8, v5

    invoke-direct {v7, v8}, Lcom/android/okhttp/internal/http/RetryableSink;-><init>(I)V

    iput-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    goto :goto_b0

    .line 255
    :cond_8f
    new-instance v7, Lcom/android/okhttp/internal/http/RetryableSink;

    invoke-direct {v7}, Lcom/android/okhttp/internal/http/RetryableSink;-><init>()V

    iput-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    goto :goto_b0

    .line 243
    :cond_97
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Use setFixedLengthStreamingMode() or setChunkedStreamingMode() for requests larger than 2 GiB."

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 258
    :cond_9f
    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->httpStream:Lcom/android/okhttp/internal/http/HttpStream;

    iget-object v8, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    invoke-interface {v7, v8}, Lcom/android/okhttp/internal/http/HttpStream;->writeRequestHeaders(Lcom/android/okhttp/Request;)V

    .line 259
    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->httpStream:Lcom/android/okhttp/internal/http/HttpStream;

    iget-object v8, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    invoke-interface {v7, v8, v5, v6}, Lcom/android/okhttp/internal/http/HttpStream;->createRequestBody(Lcom/android/okhttp/Request;J)Lcom/android/okhttp/okio/Sink;

    move-result-object v7

    iput-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    .line 261
    .end local v5    # "contentLength":J
    :goto_b0
    goto :goto_115

    .line 264
    :cond_b1
    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    if-eqz v5, :cond_da

    .line 266
    invoke-virtual {v5}, Lcom/android/okhttp/Response;->newBuilder()Lcom/android/okhttp/Response$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    .line 267
    invoke-virtual {v5, v6}, Lcom/android/okhttp/Response$Builder;->request(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/okhttp/internal/http/HttpEngine;->priorResponse:Lcom/android/okhttp/Response;

    .line 268
    invoke-static {v6}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/okhttp/Response$Builder;->priorResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    .line 269
    invoke-static {v6}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/okhttp/Response$Builder;->cacheResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;

    move-result-object v5

    .line 270
    invoke-virtual {v5}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v5

    iput-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    goto :goto_10d

    .line 273
    :cond_da
    new-instance v5, Lcom/android/okhttp/Response$Builder;

    invoke-direct {v5}, Lcom/android/okhttp/Response$Builder;-><init>()V

    iget-object v6, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    .line 274
    invoke-virtual {v5, v6}, Lcom/android/okhttp/Response$Builder;->request(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/okhttp/internal/http/HttpEngine;->priorResponse:Lcom/android/okhttp/Response;

    .line 275
    invoke-static {v6}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/okhttp/Response$Builder;->priorResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;

    move-result-object v5

    sget-object v6, Lcom/android/okhttp/Protocol;->HTTP_1_1:Lcom/android/okhttp/Protocol;

    .line 276
    invoke-virtual {v5, v6}, Lcom/android/okhttp/Response$Builder;->protocol(Lcom/android/okhttp/Protocol;)Lcom/android/okhttp/Response$Builder;

    move-result-object v5

    const/16 v6, 0x1f8

    .line 277
    invoke-virtual {v5, v6}, Lcom/android/okhttp/Response$Builder;->code(I)Lcom/android/okhttp/Response$Builder;

    move-result-object v5

    .line 278
    const-string v6, "Unsatisfiable Request (only-if-cached)"

    invoke-virtual {v5, v6}, Lcom/android/okhttp/Response$Builder;->message(Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;

    move-result-object v5

    sget-object v6, Lcom/android/okhttp/internal/http/HttpEngine;->EMPTY_BODY:Lcom/android/okhttp/ResponseBody;

    .line 279
    invoke-virtual {v5, v6}, Lcom/android/okhttp/Response$Builder;->body(Lcom/android/okhttp/ResponseBody;)Lcom/android/okhttp/Response$Builder;

    move-result-object v5

    .line 280
    invoke-virtual {v5}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v5

    iput-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    .line 283
    :goto_10d
    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    invoke-direct {p0, v5}, Lcom/android/okhttp/internal/http/HttpEngine;->unzip(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v5

    iput-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    .line 285
    :cond_115
    :goto_115
    return-void

    .line 209
    .end local v0    # "request":Lcom/android/okhttp/Request;
    .end local v1    # "responseCache":Lcom/android/okhttp/internal/InternalCache;
    .end local v2    # "cacheCandidate":Lcom/android/okhttp/Response;
    .end local v3    # "now":J
    :cond_116
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public greylist writingRequestHeaders()V
    .registers 5

    .line 307
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->sentRequestMillis:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    .line 308
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->sentRequestMillis:J

    .line 309
    return-void

    .line 307
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
