.class public final Lcom/android/okhttp/internal/huc/JavaApiConverter;
.super Ljava/lang/Object;
.source "JavaApiConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;,
        Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpsURLConnection;
    }
.end annotation


# static fields
.field private static final EMPTY_REQUEST_BODY:Lcom/android/okhttp/RequestBody;


# direct methods
.method static synthetic -wrap0()Ljava/lang/RuntimeException;
    .registers 1

    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1()Ljava/lang/RuntimeException;
    .registers 1

    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->throwRequestSslAccessException()Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2()Ljava/lang/RuntimeException;
    .registers 1

    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->throwResponseBodyAccessException()Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Ljava/lang/String;)J
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->stringToLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 58
    const/4 v0, 0x0

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/android/okhttp/RequestBody;->create(Lcom/android/okhttp/MediaType;[B)Lcom/android/okhttp/RequestBody;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/huc/JavaApiConverter;->EMPTY_REQUEST_BODY:Lcom/android/okhttp/RequestBody;

    .line 57
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method private static createHeaders(Ljava/util/Map;)Lcom/android/okhttp/Headers;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/android/okhttp/Headers;"
        }
    .end annotation

    .prologue
    .line 140
    .local p0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v0, Lcom/android/okhttp/Headers$Builder;

    invoke-direct {v0}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    .line 141
    .local v0, "builder":Lcom/android/okhttp/Headers$Builder;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "header$iterator":Ljava/util/Iterator;
    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 142
    .local v1, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_d

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_d

    .line 145
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, "name":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "value$iterator":Ljava/util/Iterator;
    :goto_39
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 147
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 148
    .local v4, "trimmedValue":Ljava/lang/String;
    sget-object v7, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    invoke-virtual {v7, v0, v3, v4}, Lcom/android/okhttp/internal/Internal;->addLenient(Lcom/android/okhttp/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_39

    .line 151
    .end local v1    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "trimmedValue":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    .end local v6    # "value$iterator":Ljava/util/Iterator;
    :cond_4f
    invoke-virtual {v0}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v7

    return-object v7
.end method

.method public static createJavaCacheRequest(Lcom/android/okhttp/internal/http/CacheRequest;)Ljava/net/CacheRequest;
    .registers 2
    .param p0, "okCacheRequest"    # Lcom/android/okhttp/internal/http/CacheRequest;

    .prologue
    .line 358
    new-instance v0, Lcom/android/okhttp/internal/huc/JavaApiConverter$3;

    invoke-direct {v0, p0}, Lcom/android/okhttp/internal/huc/JavaApiConverter$3;-><init>(Lcom/android/okhttp/internal/http/CacheRequest;)V

    return-object v0
.end method

.method public static createJavaCacheResponse(Lcom/android/okhttp/Response;)Ljava/net/CacheResponse;
    .registers 5
    .param p0, "response"    # Lcom/android/okhttp/Response;

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v2

    .line 291
    .local v2, "headers":Lcom/android/okhttp/Headers;
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    move-result-object v0

    .line 292
    .local v0, "body":Lcom/android/okhttp/ResponseBody;
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/okhttp/Request;->isHttps()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 293
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->handshake()Lcom/android/okhttp/Handshake;

    move-result-object v1

    .line 294
    .local v1, "handshake":Lcom/android/okhttp/Handshake;
    new-instance v3, Lcom/android/okhttp/internal/huc/JavaApiConverter$1;

    invoke-direct {v3, v1, v2, p0, v0}, Lcom/android/okhttp/internal/huc/JavaApiConverter$1;-><init>(Lcom/android/okhttp/Handshake;Lcom/android/okhttp/Headers;Lcom/android/okhttp/Response;Lcom/android/okhttp/ResponseBody;)V

    return-object v3

    .line 341
    .end local v1    # "handshake":Lcom/android/okhttp/Handshake;
    :cond_1c
    new-instance v3, Lcom/android/okhttp/internal/huc/JavaApiConverter$2;

    invoke-direct {v3, v2, p0, v0}, Lcom/android/okhttp/internal/huc/JavaApiConverter$2;-><init>(Lcom/android/okhttp/Headers;Lcom/android/okhttp/Response;Lcom/android/okhttp/ResponseBody;)V

    return-object v3
.end method

.method static createJavaUrlConnectionForCachePut(Lcom/android/okhttp/Response;)Ljava/net/HttpURLConnection;
    .registers 4
    .param p0, "okResponse"    # Lcom/android/okhttp/Response;

    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    move-result-object v0

    .line 381
    .local v0, "request":Lcom/android/okhttp/Request;
    invoke-virtual {v0}, Lcom/android/okhttp/Request;->isHttps()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 382
    new-instance v1, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpsURLConnection;

    new-instance v2, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;

    invoke-direct {v2, p0}, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;-><init>(Lcom/android/okhttp/Response;)V

    invoke-direct {v1, v2}, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpsURLConnection;-><init>(Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;)V

    return-object v1

    .line 384
    :cond_15
    new-instance v1, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;

    invoke-direct {v1, p0}, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;-><init>(Lcom/android/okhttp/Response;)V

    return-object v1
.end method

.method private static createOkBody(Lcom/android/okhttp/Headers;Ljava/net/CacheResponse;)Lcom/android/okhttp/ResponseBody;
    .registers 3
    .param p0, "okHeaders"    # Lcom/android/okhttp/Headers;
    .param p1, "cacheResponse"    # Ljava/net/CacheResponse;

    .prologue
    .line 474
    new-instance v0, Lcom/android/okhttp/internal/huc/JavaApiConverter$4;

    invoke-direct {v0, p0, p1}, Lcom/android/okhttp/internal/huc/JavaApiConverter$4;-><init>(Lcom/android/okhttp/Headers;Ljava/net/CacheResponse;)V

    return-object v0
.end method

.method private static createOkBody(Ljava/net/URLConnection;)Lcom/android/okhttp/ResponseBody;
    .registers 2
    .param p0, "urlConnection"    # Ljava/net/URLConnection;

    .prologue
    .line 501
    invoke-virtual {p0}, Ljava/net/URLConnection;->getDoInput()Z

    move-result v0

    if-nez v0, :cond_8

    .line 502
    const/4 v0, 0x0

    return-object v0

    .line 504
    :cond_8
    new-instance v0, Lcom/android/okhttp/internal/huc/JavaApiConverter$5;

    invoke-direct {v0, p0}, Lcom/android/okhttp/internal/huc/JavaApiConverter$5;-><init>(Ljava/net/URLConnection;)V

    return-object v0
.end method

.method public static createOkRequest(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Lcom/android/okhttp/Request;
    .registers 8
    .param p0, "uri"    # Ljava/net/URI;
    .param p1, "requestMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/android/okhttp/Request;"
        }
    .end annotation

    .prologue
    .line 270
    .local p2, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {p1}, Lcom/android/okhttp/internal/http/HttpMethod;->requiresRequestBody(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 271
    sget-object v2, Lcom/android/okhttp/internal/huc/JavaApiConverter;->EMPTY_REQUEST_BODY:Lcom/android/okhttp/RequestBody;

    .line 274
    :goto_8
    new-instance v3, Lcom/android/okhttp/Request$Builder;

    invoke-direct {v3}, Lcom/android/okhttp/Request$Builder;-><init>()V

    .line 275
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    .line 274
    invoke-virtual {v3, v4}, Lcom/android/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Lcom/android/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;

    move-result-object v0

    .line 278
    .local v0, "builder":Lcom/android/okhttp/Request$Builder;
    if-eqz p2, :cond_22

    .line 279
    invoke-static {p2}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->extractOkHeaders(Ljava/util/Map;)Lcom/android/okhttp/Headers;

    move-result-object v1

    .line 280
    .local v1, "headers":Lcom/android/okhttp/Headers;
    invoke-virtual {v0, v1}, Lcom/android/okhttp/Request$Builder;->headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Request$Builder;

    .line 282
    .end local v1    # "headers":Lcom/android/okhttp/Headers;
    :cond_22
    invoke-virtual {v0}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    move-result-object v3

    return-object v3

    .line 272
    .end local v0    # "builder":Lcom/android/okhttp/Request$Builder;
    :cond_27
    const/4 v2, 0x0

    .local v2, "placeholderBody":Lcom/android/okhttp/RequestBody;
    goto :goto_8
.end method

.method static createOkResponseForCacheGet(Lcom/android/okhttp/Request;Ljava/net/CacheResponse;)Lcom/android/okhttp/Response;
    .registers 18
    .param p0, "request"    # Lcom/android/okhttp/Request;
    .param p1, "javaResponse"    # Ljava/net/CacheResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    invoke-virtual/range {p1 .. p1}, Ljava/net/CacheResponse;->getHeaders()Ljava/util/Map;

    move-result-object v13

    invoke-static {v13}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->createHeaders(Ljava/util/Map;)Lcom/android/okhttp/Headers;

    move-result-object v10

    .line 205
    .local v10, "responseHeaders":Lcom/android/okhttp/Headers;
    invoke-static {v10}, Lcom/android/okhttp/internal/http/OkHeaders;->hasVaryAll(Lcom/android/okhttp/Headers;)Z

    move-result v13

    if-eqz v13, :cond_8c

    .line 207
    new-instance v13, Lcom/android/okhttp/Headers$Builder;

    invoke-direct {v13}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    invoke-virtual {v13}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v12

    .line 212
    .local v12, "varyHeaders":Lcom/android/okhttp/Headers;
    :goto_17
    new-instance v13, Lcom/android/okhttp/Request$Builder;

    invoke-direct {v13}, Lcom/android/okhttp/Request$Builder;-><init>()V

    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v14

    .line 212
    invoke-virtual {v13, v14}, Lcom/android/okhttp/Request$Builder;->url(Lcom/android/okhttp/HttpUrl;)Lcom/android/okhttp/Request$Builder;

    move-result-object v13

    .line 214
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    .line 212
    invoke-virtual {v13, v14, v15}, Lcom/android/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;

    move-result-object v13

    invoke-virtual {v13, v12}, Lcom/android/okhttp/Request$Builder;->headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Request$Builder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    move-result-object v1

    .line 218
    .local v1, "cacheRequest":Lcom/android/okhttp/Request;
    new-instance v8, Lcom/android/okhttp/Response$Builder;

    invoke-direct {v8}, Lcom/android/okhttp/Response$Builder;-><init>()V

    .line 221
    .local v8, "okResponseBuilder":Lcom/android/okhttp/Response$Builder;
    invoke-virtual {v8, v1}, Lcom/android/okhttp/Response$Builder;->request(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response$Builder;

    .line 224
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->extractStatusLine(Ljava/net/CacheResponse;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/okhttp/internal/http/StatusLine;->parse(Ljava/lang/String;)Lcom/android/okhttp/internal/http/StatusLine;

    move-result-object v11

    .line 225
    .local v11, "statusLine":Lcom/android/okhttp/internal/http/StatusLine;
    iget-object v13, v11, Lcom/android/okhttp/internal/http/StatusLine;->protocol:Lcom/android/okhttp/Protocol;

    invoke-virtual {v8, v13}, Lcom/android/okhttp/Response$Builder;->protocol(Lcom/android/okhttp/Protocol;)Lcom/android/okhttp/Response$Builder;

    .line 226
    iget v13, v11, Lcom/android/okhttp/internal/http/StatusLine;->code:I

    invoke-virtual {v8, v13}, Lcom/android/okhttp/Response$Builder;->code(I)Lcom/android/okhttp/Response$Builder;

    .line 227
    iget-object v13, v11, Lcom/android/okhttp/internal/http/StatusLine;->message:Ljava/lang/String;

    invoke-virtual {v8, v13}, Lcom/android/okhttp/Response$Builder;->message(Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;

    .line 230
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->extractOkHeaders(Ljava/net/CacheResponse;)Lcom/android/okhttp/Headers;

    move-result-object v7

    .line 231
    .local v7, "okHeaders":Lcom/android/okhttp/Headers;
    invoke-virtual {v8, v7}, Lcom/android/okhttp/Response$Builder;->headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Response$Builder;

    .line 234
    move-object/from16 v0, p1

    invoke-static {v7, v0}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->createOkBody(Lcom/android/okhttp/Headers;Ljava/net/CacheResponse;)Lcom/android/okhttp/ResponseBody;

    move-result-object v6

    .line 235
    .local v6, "okBody":Lcom/android/okhttp/ResponseBody;
    invoke-virtual {v8, v6}, Lcom/android/okhttp/Response$Builder;->body(Lcom/android/okhttp/ResponseBody;)Lcom/android/okhttp/Response$Builder;

    .line 238
    move-object/from16 v0, p1

    instance-of v13, v0, Ljava/net/SecureCacheResponse;

    if-eqz v13, :cond_87

    move-object/from16 v4, p1

    .line 239
    check-cast v4, Ljava/net/SecureCacheResponse;

    .line 244
    .local v4, "javaSecureCacheResponse":Ljava/net/SecureCacheResponse;
    :try_start_6e
    invoke-virtual {v4}, Ljava/net/SecureCacheResponse;->getServerCertificateChain()Ljava/util/List;
    :try_end_71
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_6e .. :try_end_71} :catch_95

    move-result-object v9

    .line 248
    .local v9, "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :goto_72
    invoke-virtual {v4}, Ljava/net/SecureCacheResponse;->getLocalCertificateChain()Ljava/util/List;

    move-result-object v5

    .line 249
    .local v5, "localCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    if-nez v5, :cond_7c

    .line 250
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 253
    :cond_7c
    invoke-virtual {v4}, Ljava/net/SecureCacheResponse;->getCipherSuite()Ljava/lang/String;

    move-result-object v13

    .line 252
    invoke-static {v13, v9, v5}, Lcom/android/okhttp/Handshake;->get(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/okhttp/Handshake;

    move-result-object v3

    .line 254
    .local v3, "handshake":Lcom/android/okhttp/Handshake;
    invoke-virtual {v8, v3}, Lcom/android/okhttp/Response$Builder;->handshake(Lcom/android/okhttp/Handshake;)Lcom/android/okhttp/Response$Builder;

    .line 257
    .end local v3    # "handshake":Lcom/android/okhttp/Handshake;
    .end local v4    # "javaSecureCacheResponse":Ljava/net/SecureCacheResponse;
    .end local v5    # "localCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    .end local v9    # "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :cond_87
    invoke-virtual {v8}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v13

    return-object v13

    .line 209
    .end local v1    # "cacheRequest":Lcom/android/okhttp/Request;
    .end local v6    # "okBody":Lcom/android/okhttp/ResponseBody;
    .end local v7    # "okHeaders":Lcom/android/okhttp/Headers;
    .end local v8    # "okResponseBuilder":Lcom/android/okhttp/Response$Builder;
    .end local v11    # "statusLine":Lcom/android/okhttp/internal/http/StatusLine;
    .end local v12    # "varyHeaders":Lcom/android/okhttp/Headers;
    :cond_8c
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    move-result-object v13

    invoke-static {v13, v10}, Lcom/android/okhttp/internal/http/OkHeaders;->varyHeaders(Lcom/android/okhttp/Headers;Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Headers;

    move-result-object v12

    .restart local v12    # "varyHeaders":Lcom/android/okhttp/Headers;
    goto :goto_17

    .line 245
    .restart local v1    # "cacheRequest":Lcom/android/okhttp/Request;
    .restart local v4    # "javaSecureCacheResponse":Ljava/net/SecureCacheResponse;
    .restart local v6    # "okBody":Lcom/android/okhttp/ResponseBody;
    .restart local v7    # "okHeaders":Lcom/android/okhttp/Headers;
    .restart local v8    # "okResponseBuilder":Lcom/android/okhttp/Response$Builder;
    .restart local v11    # "statusLine":Lcom/android/okhttp/internal/http/StatusLine;
    :catch_95
    move-exception v2

    .line 246
    .local v2, "e":Ljavax/net/ssl/SSLPeerUnverifiedException;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    .restart local v9    # "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    goto :goto_72
.end method

.method public static createOkResponseForCachePut(Ljava/net/URI;Ljava/net/URLConnection;)Lcom/android/okhttp/Response;
    .registers 23
    .param p0, "uri"    # Ljava/net/URI;
    .param p1, "urlConnection"    # Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    move-object/from16 v4, p1

    .line 71
    check-cast v4, Ljava/net/HttpURLConnection;

    .line 73
    .local v4, "httpUrlConnection":Ljava/net/HttpURLConnection;
    new-instance v11, Lcom/android/okhttp/Response$Builder;

    invoke-direct {v11}, Lcom/android/okhttp/Response$Builder;-><init>()V

    .line 76
    .local v11, "okResponseBuilder":Lcom/android/okhttp/Response$Builder;
    invoke-virtual/range {p1 .. p1}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->createHeaders(Ljava/util/Map;)Lcom/android/okhttp/Headers;

    move-result-object v15

    .line 78
    .local v15, "responseHeaders":Lcom/android/okhttp/Headers;
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->varyHeaders(Ljava/net/URLConnection;Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Headers;

    move-result-object v17

    .line 79
    .local v17, "varyHeaders":Lcom/android/okhttp/Headers;
    if-nez v17, :cond_1c

    .line 80
    const/16 v18, 0x0

    return-object v18

    .line 84
    :cond_1c
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v14

    .line 85
    .local v14, "requestMethod":Ljava/lang/String;
    invoke-static {v14}, Lcom/android/okhttp/internal/http/HttpMethod;->requiresRequestBody(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_b1

    .line 86
    sget-object v13, Lcom/android/okhttp/internal/huc/JavaApiConverter;->EMPTY_REQUEST_BODY:Lcom/android/okhttp/RequestBody;

    .line 89
    :goto_28
    new-instance v18, Lcom/android/okhttp/Request$Builder;

    invoke-direct/range {v18 .. v18}, Lcom/android/okhttp/Request$Builder;-><init>()V

    .line 90
    invoke-virtual/range {p0 .. p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v19

    .line 89
    invoke-virtual/range {v18 .. v19}, Lcom/android/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v13}, Lcom/android/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/okhttp/Request$Builder;->headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Request$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    move-result-object v10

    .line 94
    .local v10, "okRequest":Lcom/android/okhttp/Request;
    invoke-virtual {v11, v10}, Lcom/android/okhttp/Response$Builder;->request(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response$Builder;

    .line 97
    invoke-static {v4}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->extractStatusLine(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/okhttp/internal/http/StatusLine;->parse(Ljava/lang/String;)Lcom/android/okhttp/internal/http/StatusLine;

    move-result-object v16

    .line 98
    .local v16, "statusLine":Lcom/android/okhttp/internal/http/StatusLine;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/okhttp/internal/http/StatusLine;->protocol:Lcom/android/okhttp/Protocol;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/android/okhttp/Response$Builder;->protocol(Lcom/android/okhttp/Protocol;)Lcom/android/okhttp/Response$Builder;

    .line 99
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/okhttp/internal/http/StatusLine;->code:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/android/okhttp/Response$Builder;->code(I)Lcom/android/okhttp/Response$Builder;

    .line 100
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/okhttp/internal/http/StatusLine;->message:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/android/okhttp/Response$Builder;->message(Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;

    .line 103
    invoke-virtual {v11}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v7

    .line 104
    .local v7, "networkResponse":Lcom/android/okhttp/Response;
    invoke-virtual {v11, v7}, Lcom/android/okhttp/Response$Builder;->networkResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;

    .line 107
    invoke-static {v4}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->extractOkResponseHeaders(Ljava/net/HttpURLConnection;)Lcom/android/okhttp/Headers;

    move-result-object v9

    .line 108
    .local v9, "okHeaders":Lcom/android/okhttp/Headers;
    invoke-virtual {v11, v9}, Lcom/android/okhttp/Response$Builder;->headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Response$Builder;

    .line 111
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->createOkBody(Ljava/net/URLConnection;)Lcom/android/okhttp/ResponseBody;

    move-result-object v8

    .line 112
    .local v8, "okBody":Lcom/android/okhttp/ResponseBody;
    invoke-virtual {v11, v8}, Lcom/android/okhttp/Response$Builder;->body(Lcom/android/okhttp/ResponseBody;)Lcom/android/okhttp/Response$Builder;

    .line 115
    instance-of v0, v4, Ljavax/net/ssl/HttpsURLConnection;

    move/from16 v18, v0

    if-eqz v18, :cond_ac

    move-object v5, v4

    .line 116
    check-cast v5, Ljavax/net/ssl/HttpsURLConnection;

    .line 120
    .local v5, "httpsUrlConnection":Ljavax/net/ssl/HttpsURLConnection;
    :try_start_91
    invoke-virtual {v5}, Ljavax/net/ssl/HttpsURLConnection;->getServerCertificates()[Ljava/security/cert/Certificate;
    :try_end_94
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_91 .. :try_end_94} :catch_b4

    move-result-object v12

    .line 125
    :goto_95
    invoke-virtual {v5}, Ljavax/net/ssl/HttpsURLConnection;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v6

    .line 128
    .local v6, "localCertificates":[Ljava/security/cert/Certificate;
    invoke-virtual {v5}, Ljavax/net/ssl/HttpsURLConnection;->getCipherSuite()Ljava/lang/String;

    move-result-object v18

    invoke-static {v12}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->nullSafeImmutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    .line 129
    invoke-static {v6}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->nullSafeImmutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v20

    .line 127
    invoke-static/range {v18 .. v20}, Lcom/android/okhttp/Handshake;->get(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/okhttp/Handshake;

    move-result-object v3

    .line 130
    .local v3, "handshake":Lcom/android/okhttp/Handshake;
    invoke-virtual {v11, v3}, Lcom/android/okhttp/Response$Builder;->handshake(Lcom/android/okhttp/Handshake;)Lcom/android/okhttp/Response$Builder;

    .line 133
    .end local v3    # "handshake":Lcom/android/okhttp/Handshake;
    .end local v5    # "httpsUrlConnection":Ljavax/net/ssl/HttpsURLConnection;
    .end local v6    # "localCertificates":[Ljava/security/cert/Certificate;
    :cond_ac
    invoke-virtual {v11}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v18

    return-object v18

    .line 87
    .end local v7    # "networkResponse":Lcom/android/okhttp/Response;
    .end local v8    # "okBody":Lcom/android/okhttp/ResponseBody;
    .end local v9    # "okHeaders":Lcom/android/okhttp/Headers;
    .end local v10    # "okRequest":Lcom/android/okhttp/Request;
    .end local v16    # "statusLine":Lcom/android/okhttp/internal/http/StatusLine;
    :cond_b1
    const/4 v13, 0x0

    .local v13, "placeholderBody":Lcom/android/okhttp/RequestBody;
    goto/16 :goto_28

    .line 121
    .end local v13    # "placeholderBody":Lcom/android/okhttp/RequestBody;
    .restart local v5    # "httpsUrlConnection":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v7    # "networkResponse":Lcom/android/okhttp/Response;
    .restart local v8    # "okBody":Lcom/android/okhttp/ResponseBody;
    .restart local v9    # "okHeaders":Lcom/android/okhttp/Headers;
    .restart local v10    # "okRequest":Lcom/android/okhttp/Request;
    .restart local v16    # "statusLine":Lcom/android/okhttp/internal/http/StatusLine;
    :catch_b4
    move-exception v2

    .line 122
    .local v2, "e":Ljavax/net/ssl/SSLPeerUnverifiedException;
    const/4 v12, 0x0

    .local v12, "peerCertificates":[Ljava/security/cert/Certificate;
    goto :goto_95
.end method

.method static extractJavaHeaders(Lcom/android/okhttp/Request;)Ljava/util/Map;
    .registers 3
    .param p0, "request"    # Lcom/android/okhttp/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/okhttp/Request;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/okhttp/internal/http/OkHeaders;->toMultimap(Lcom/android/okhttp/Headers;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static extractOkHeaders(Ljava/net/CacheResponse;)Lcom/android/okhttp/Headers;
    .registers 3
    .param p0, "javaResponse"    # Ljava/net/CacheResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 400
    invoke-virtual {p0}, Ljava/net/CacheResponse;->getHeaders()Ljava/util/Map;

    move-result-object v0

    .line 401
    .local v0, "javaResponseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {v0}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->extractOkHeaders(Ljava/util/Map;)Lcom/android/okhttp/Headers;

    move-result-object v1

    return-object v1
.end method

.method static extractOkHeaders(Ljava/util/Map;)Lcom/android/okhttp/Headers;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/android/okhttp/Headers;"
        }
    .end annotation

    .prologue
    .line 419
    .local p0, "javaHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v3, Lcom/android/okhttp/Headers$Builder;

    invoke-direct {v3}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    .line 420
    .local v3, "okHeadersBuilder":Lcom/android/okhttp/Headers$Builder;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "javaHeader$iterator":Ljava/util/Iterator;
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 421
    .local v0, "javaHeader":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 422
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_d

    .line 429
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "value$iterator":Ljava/util/Iterator;
    :goto_2b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 430
    .local v4, "value":Ljava/lang/String;
    sget-object v6, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    invoke-virtual {v6, v3, v2, v4}, Lcom/android/okhttp/internal/Internal;->addLenient(Lcom/android/okhttp/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b

    .line 433
    .end local v0    # "javaHeader":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "value$iterator":Ljava/util/Iterator;
    :cond_3d
    invoke-virtual {v3}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v6

    return-object v6
.end method

.method private static extractOkResponseHeaders(Ljava/net/HttpURLConnection;)Lcom/android/okhttp/Headers;
    .registers 3
    .param p0, "httpUrlConnection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 409
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    .line 410
    .local v0, "javaResponseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {v0}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->extractOkHeaders(Ljava/util/Map;)Lcom/android/okhttp/Headers;

    move-result-object v1

    return-object v1
.end method

.method private static extractStatusLine(Ljava/net/CacheResponse;)Ljava/lang/String;
    .registers 3
    .param p0, "javaResponse"    # Ljava/net/CacheResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 452
    invoke-virtual {p0}, Ljava/net/CacheResponse;->getHeaders()Ljava/util/Map;

    move-result-object v0

    .line 453
    .local v0, "javaResponseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {v0}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->extractStatusLine(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static extractStatusLine(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .registers 2
    .param p0, "httpUrlConnection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 443
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static extractStatusLine(Ljava/util/Map;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    .local p0, "javaResponseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 459
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 460
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_10

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2a

    .line 462
    :cond_10
    new-instance v1, Ljava/net/ProtocolException;

    .line 463
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CacheResponse is missing a \'null\' header containing the status line. Headers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 462
    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 466
    :cond_2a
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method private static nullSafeImmutableList([Ljava/lang/Object;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 854
    .local p0, "elements":[Ljava/lang/Object;, "[TT;"
    if-nez p0, :cond_7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    invoke-static {p0}, Lcom/android/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_6
.end method

.method private static stringToLong(Ljava/lang/String;)J
    .registers 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, -0x1

    .line 858
    if-nez p0, :cond_5

    return-wide v2

    .line 860
    :cond_5
    :try_start_5
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_8} :catch_a

    move-result-wide v2

    return-wide v2

    .line 861
    :catch_a
    move-exception v0

    .line 862
    .local v0, "e":Ljava/lang/NumberFormatException;
    return-wide v2
.end method

.method private static throwRequestHeaderAccessException()Ljava/lang/RuntimeException;
    .registers 2

    .prologue
    .line 842
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "ResponseCache cannot access request headers"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static throwRequestModificationException()Ljava/lang/RuntimeException;
    .registers 2

    .prologue
    .line 838
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "ResponseCache cannot modify the request."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static throwRequestSslAccessException()Ljava/lang/RuntimeException;
    .registers 2

    .prologue
    .line 846
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "ResponseCache cannot access SSL internals"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static throwResponseBodyAccessException()Ljava/lang/RuntimeException;
    .registers 2

    .prologue
    .line 850
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "ResponseCache cannot access the response body."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static varyHeaders(Ljava/net/URLConnection;Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Headers;
    .registers 12
    .param p0, "urlConnection"    # Ljava/net/URLConnection;
    .param p1, "responseHeaders"    # Lcom/android/okhttp/Headers;

    .prologue
    const/4 v9, 0x0

    .line 155
    invoke-static {p1}, Lcom/android/okhttp/internal/http/OkHeaders;->hasVaryAll(Lcom/android/okhttp/Headers;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 157
    return-object v9

    .line 159
    :cond_8
    invoke-static {p1}, Lcom/android/okhttp/internal/http/OkHeaders;->varyFields(Lcom/android/okhttp/Headers;)Ljava/util/Set;

    move-result-object v7

    .line 160
    .local v7, "varyFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 161
    new-instance v8, Lcom/android/okhttp/Headers$Builder;

    invoke-direct {v8}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    invoke-virtual {v8}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v8

    return-object v8

    .line 168
    :cond_1c
    instance-of v8, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;

    if-nez v8, :cond_25

    .line 169
    instance-of v8, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpsURLConnection;

    .line 168
    :goto_22
    if-nez v8, :cond_27

    .line 170
    return-object v9

    .line 168
    :cond_25
    const/4 v8, 0x1

    goto :goto_22

    .line 175
    :cond_27
    invoke-virtual {p0}, Ljava/net/URLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v5

    .line 176
    .local v5, "requestProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v6, Lcom/android/okhttp/Headers$Builder;

    invoke-direct {v6}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    .line 177
    .local v6, "result":Lcom/android/okhttp/Headers$Builder;
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "fieldName$iterator":Ljava/util/Iterator;
    :cond_34
    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_71

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 178
    .local v0, "fieldName":Ljava/lang/String;
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 179
    .local v4, "fieldValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v4, :cond_5b

    .line 180
    const-string/jumbo v8, "Accept-Encoding"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_34

    .line 184
    const-string/jumbo v8, "Accept-Encoding"

    const-string/jumbo v9, "gzip"

    invoke-virtual {v6, v8, v9}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    goto :goto_34

    .line 187
    :cond_5b
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "fieldValue$iterator":Ljava/util/Iterator;
    :goto_5f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_34

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 188
    .local v2, "fieldValue":Ljava/lang/String;
    sget-object v8, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    invoke-virtual {v8, v6, v0, v2}, Lcom/android/okhttp/internal/Internal;->addLenient(Lcom/android/okhttp/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5f

    .line 192
    .end local v0    # "fieldName":Ljava/lang/String;
    .end local v2    # "fieldValue":Ljava/lang/String;
    .end local v3    # "fieldValue$iterator":Ljava/util/Iterator;
    .end local v4    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_71
    invoke-virtual {v6}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v8

    return-object v8
.end method
