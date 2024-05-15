.class public final Lcom/android/okhttp/internal/huc/JavaApiConverter;
.super Ljava/lang/Object;
.source "JavaApiConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpsURLConnection;,
        Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;
    }
.end annotation


# static fields
.field private static final blacklist EMPTY_REQUEST_BODY:Lcom/android/okhttp/RequestBody;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 60
    const/4 v0, 0x0

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/android/okhttp/RequestBody;->create(Lcom/android/okhttp/MediaType;[B)Lcom/android/okhttp/RequestBody;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/huc/JavaApiConverter;->EMPTY_REQUEST_BODY:Lcom/android/okhttp/RequestBody;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method static synthetic blacklist access$000(Ljava/lang/String;)J
    .registers 3
    .param p0, "x0"    # Ljava/lang/String;

    .line 59
    invoke-static {p0}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->stringToLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic blacklist access$100()Ljava/lang/RuntimeException;
    .registers 1

    .line 59
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$200()Ljava/lang/RuntimeException;
    .registers 1

    .line 59
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->throwResponseBodyAccessException()Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$400()Ljava/lang/RuntimeException;
    .registers 1

    .line 59
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->throwRequestSslAccessException()Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist createHeaders(Ljava/util/Map;)Lcom/android/okhttp/Headers;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/android/okhttp/Headers;"
        }
    .end annotation

    .line 142
    .local p0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v0, Lcom/android/okhttp/Headers$Builder;

    invoke-direct {v0}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    .line 143
    .local v0, "builder":Lcom/android/okhttp/Headers$Builder;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 144
    .local v2, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_26

    .line 145
    goto :goto_d

    .line 147
    :cond_26
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 148
    .local v3, "name":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_50

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 149
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 150
    .local v6, "trimmedValue":Ljava/lang/String;
    sget-object v7, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    invoke-virtual {v7, v0, v3, v6}, Lcom/android/okhttp/internal/Internal;->addLenient(Lcom/android/okhttp/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .end local v5    # "value":Ljava/lang/String;
    .end local v6    # "trimmedValue":Ljava/lang/String;
    goto :goto_3a

    .line 152
    .end local v2    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v3    # "name":Ljava/lang/String;
    :cond_50
    goto :goto_d

    .line 153
    :cond_51
    invoke-virtual {v0}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist createJavaCacheRequest(Lcom/android/okhttp/internal/http/CacheRequest;)Ljava/net/CacheRequest;
    .registers 2
    .param p0, "okCacheRequest"    # Lcom/android/okhttp/internal/http/CacheRequest;

    .line 360
    new-instance v0, Lcom/android/okhttp/internal/huc/JavaApiConverter$3;

    invoke-direct {v0, p0}, Lcom/android/okhttp/internal/huc/JavaApiConverter$3;-><init>(Lcom/android/okhttp/internal/http/CacheRequest;)V

    return-object v0
.end method

.method public static blacklist createJavaCacheResponse(Lcom/android/okhttp/Response;)Ljava/net/CacheResponse;
    .registers 5
    .param p0, "response"    # Lcom/android/okhttp/Response;

    .line 292
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v0

    .line 293
    .local v0, "headers":Lcom/android/okhttp/Headers;
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    move-result-object v1

    .line 294
    .local v1, "body":Lcom/android/okhttp/ResponseBody;
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okhttp/Request;->isHttps()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 295
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->handshake()Lcom/android/okhttp/Handshake;

    move-result-object v2

    .line 296
    .local v2, "handshake":Lcom/android/okhttp/Handshake;
    new-instance v3, Lcom/android/okhttp/internal/huc/JavaApiConverter$1;

    invoke-direct {v3, v2, v0, p0, v1}, Lcom/android/okhttp/internal/huc/JavaApiConverter$1;-><init>(Lcom/android/okhttp/Handshake;Lcom/android/okhttp/Headers;Lcom/android/okhttp/Response;Lcom/android/okhttp/ResponseBody;)V

    return-object v3

    .line 343
    .end local v2    # "handshake":Lcom/android/okhttp/Handshake;
    :cond_1c
    new-instance v2, Lcom/android/okhttp/internal/huc/JavaApiConverter$2;

    invoke-direct {v2, v0, p0, v1}, Lcom/android/okhttp/internal/huc/JavaApiConverter$2;-><init>(Lcom/android/okhttp/Headers;Lcom/android/okhttp/Response;Lcom/android/okhttp/ResponseBody;)V

    return-object v2
.end method

.method static blacklist createJavaUrlConnectionForCachePut(Lcom/android/okhttp/Response;)Ljava/net/HttpURLConnection;
    .registers 4
    .param p0, "okResponse"    # Lcom/android/okhttp/Response;

    .line 381
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    move-result-object v0

    .line 383
    .local v0, "request":Lcom/android/okhttp/Request;
    invoke-virtual {v0}, Lcom/android/okhttp/Request;->isHttps()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 384
    new-instance v1, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpsURLConnection;

    new-instance v2, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;

    invoke-direct {v2, p0}, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;-><init>(Lcom/android/okhttp/Response;)V

    invoke-direct {v1, v2}, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpsURLConnection;-><init>(Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;)V

    return-object v1

    .line 386
    :cond_15
    new-instance v1, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;

    invoke-direct {v1, p0}, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;-><init>(Lcom/android/okhttp/Response;)V

    return-object v1
.end method

.method private static blacklist createOkBody(Lcom/android/okhttp/Headers;Ljava/net/CacheResponse;)Lcom/android/okhttp/ResponseBody;
    .registers 3
    .param p0, "okHeaders"    # Lcom/android/okhttp/Headers;
    .param p1, "cacheResponse"    # Ljava/net/CacheResponse;

    .line 476
    new-instance v0, Lcom/android/okhttp/internal/huc/JavaApiConverter$4;

    invoke-direct {v0, p0, p1}, Lcom/android/okhttp/internal/huc/JavaApiConverter$4;-><init>(Lcom/android/okhttp/Headers;Ljava/net/CacheResponse;)V

    return-object v0
.end method

.method private static blacklist createOkBody(Ljava/net/URLConnection;)Lcom/android/okhttp/ResponseBody;
    .registers 2
    .param p0, "urlConnection"    # Ljava/net/URLConnection;

    .line 503
    invoke-virtual {p0}, Ljava/net/URLConnection;->getDoInput()Z

    move-result v0

    if-nez v0, :cond_8

    .line 504
    const/4 v0, 0x0

    return-object v0

    .line 506
    :cond_8
    new-instance v0, Lcom/android/okhttp/internal/huc/JavaApiConverter$5;

    invoke-direct {v0, p0}, Lcom/android/okhttp/internal/huc/JavaApiConverter$5;-><init>(Ljava/net/URLConnection;)V

    return-object v0
.end method

.method public static blacklist createOkRequest(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Lcom/android/okhttp/Request;
    .registers 6
    .param p0, "uri"    # Ljava/net/URI;
    .param p1, "requestMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/android/okhttp/Request;"
        }
    .end annotation

    .line 272
    .local p2, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {p1}, Lcom/android/okhttp/internal/http/HttpMethod;->requiresRequestBody(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 273
    sget-object v0, Lcom/android/okhttp/internal/huc/JavaApiConverter;->EMPTY_REQUEST_BODY:Lcom/android/okhttp/RequestBody;

    goto :goto_a

    .line 274
    :cond_9
    const/4 v0, 0x0

    :goto_a
    nop

    .line 276
    .local v0, "placeholderBody":Lcom/android/okhttp/RequestBody;
    new-instance v1, Lcom/android/okhttp/Request$Builder;

    invoke-direct {v1}, Lcom/android/okhttp/Request$Builder;-><init>()V

    .line 277
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    move-result-object v1

    .line 278
    invoke-virtual {v1, p1, v0}, Lcom/android/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;

    move-result-object v1

    .line 280
    .local v1, "builder":Lcom/android/okhttp/Request$Builder;
    if-eqz p2, :cond_25

    .line 281
    invoke-static {p2}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->extractOkHeaders(Ljava/util/Map;)Lcom/android/okhttp/Headers;

    move-result-object v2

    .line 282
    .local v2, "headers":Lcom/android/okhttp/Headers;
    invoke-virtual {v1, v2}, Lcom/android/okhttp/Request$Builder;->headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Request$Builder;

    .line 284
    .end local v2    # "headers":Lcom/android/okhttp/Headers;
    :cond_25
    invoke-virtual {v1}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    move-result-object v2

    return-object v2
.end method

.method static blacklist createOkResponseForCacheGet(Lcom/android/okhttp/Request;Ljava/net/CacheResponse;)Lcom/android/okhttp/Response;
    .registers 13
    .param p0, "request"    # Lcom/android/okhttp/Request;
    .param p1, "javaResponse"    # Ljava/net/CacheResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    invoke-virtual {p1}, Ljava/net/CacheResponse;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->createHeaders(Ljava/util/Map;)Lcom/android/okhttp/Headers;

    move-result-object v0

    .line 207
    .local v0, "responseHeaders":Lcom/android/okhttp/Headers;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/OkHeaders;->hasVaryAll(Lcom/android/okhttp/Headers;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 209
    new-instance v1, Lcom/android/okhttp/Headers$Builder;

    invoke-direct {v1}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v1

    .local v1, "varyHeaders":Lcom/android/okhttp/Headers;
    goto :goto_20

    .line 211
    .end local v1    # "varyHeaders":Lcom/android/okhttp/Headers;
    :cond_18
    invoke-virtual {p0}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/okhttp/internal/http/OkHeaders;->varyHeaders(Lcom/android/okhttp/Headers;Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Headers;

    move-result-object v1

    .line 214
    .restart local v1    # "varyHeaders":Lcom/android/okhttp/Headers;
    :goto_20
    new-instance v2, Lcom/android/okhttp/Request$Builder;

    invoke-direct {v2}, Lcom/android/okhttp/Request$Builder;-><init>()V

    .line 215
    invoke-virtual {p0}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/Request$Builder;->url(Lcom/android/okhttp/HttpUrl;)Lcom/android/okhttp/Request$Builder;

    move-result-object v2

    .line 216
    invoke-virtual {p0}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;

    move-result-object v2

    .line 217
    invoke-virtual {v2, v1}, Lcom/android/okhttp/Request$Builder;->headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Request$Builder;

    move-result-object v2

    .line 218
    invoke-virtual {v2}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    move-result-object v2

    .line 220
    .local v2, "cacheRequest":Lcom/android/okhttp/Request;
    new-instance v3, Lcom/android/okhttp/Response$Builder;

    invoke-direct {v3}, Lcom/android/okhttp/Response$Builder;-><init>()V

    .line 223
    .local v3, "okResponseBuilder":Lcom/android/okhttp/Response$Builder;
    invoke-virtual {v3, v2}, Lcom/android/okhttp/Response$Builder;->request(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response$Builder;

    .line 226
    invoke-static {p1}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->extractStatusLine(Ljava/net/CacheResponse;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/okhttp/internal/http/StatusLine;->parse(Ljava/lang/String;)Lcom/android/okhttp/internal/http/StatusLine;

    move-result-object v4

    .line 227
    .local v4, "statusLine":Lcom/android/okhttp/internal/http/StatusLine;
    iget-object v5, v4, Lcom/android/okhttp/internal/http/StatusLine;->protocol:Lcom/android/okhttp/Protocol;

    invoke-virtual {v3, v5}, Lcom/android/okhttp/Response$Builder;->protocol(Lcom/android/okhttp/Protocol;)Lcom/android/okhttp/Response$Builder;

    .line 228
    iget v5, v4, Lcom/android/okhttp/internal/http/StatusLine;->code:I

    invoke-virtual {v3, v5}, Lcom/android/okhttp/Response$Builder;->code(I)Lcom/android/okhttp/Response$Builder;

    .line 229
    iget-object v5, v4, Lcom/android/okhttp/internal/http/StatusLine;->message:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/android/okhttp/Response$Builder;->message(Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;

    .line 232
    invoke-static {p1}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->extractOkHeaders(Ljava/net/CacheResponse;)Lcom/android/okhttp/Headers;

    move-result-object v5

    .line 233
    .local v5, "okHeaders":Lcom/android/okhttp/Headers;
    invoke-virtual {v3, v5}, Lcom/android/okhttp/Response$Builder;->headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Response$Builder;

    .line 236
    invoke-static {v5, p1}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->createOkBody(Lcom/android/okhttp/Headers;Ljava/net/CacheResponse;)Lcom/android/okhttp/ResponseBody;

    move-result-object v6

    .line 237
    .local v6, "okBody":Lcom/android/okhttp/ResponseBody;
    invoke-virtual {v3, v6}, Lcom/android/okhttp/Response$Builder;->body(Lcom/android/okhttp/ResponseBody;)Lcom/android/okhttp/Response$Builder;

    .line 240
    instance-of v7, p1, Ljava/net/SecureCacheResponse;

    if-eqz v7, :cond_93

    .line 241
    move-object v7, p1

    check-cast v7, Ljava/net/SecureCacheResponse;

    .line 246
    .local v7, "javaSecureCacheResponse":Ljava/net/SecureCacheResponse;
    :try_start_72
    invoke-virtual {v7}, Ljava/net/SecureCacheResponse;->getServerCertificateChain()Ljava/util/List;

    move-result-object v8
    :try_end_76
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_72 .. :try_end_76} :catch_77

    .line 249
    .local v8, "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    goto :goto_7d

    .line 247
    .end local v8    # "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :catch_77
    move-exception v8

    .line 248
    .local v8, "e":Ljavax/net/ssl/SSLPeerUnverifiedException;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    move-object v8, v9

    .line 250
    .local v8, "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :goto_7d
    invoke-virtual {v7}, Ljava/net/SecureCacheResponse;->getLocalCertificateChain()Ljava/util/List;

    move-result-object v9

    .line 251
    .local v9, "localCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    if-nez v9, :cond_87

    .line 252
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    .line 254
    :cond_87
    nop

    .line 255
    invoke-virtual {v7}, Ljava/net/SecureCacheResponse;->getCipherSuite()Ljava/lang/String;

    move-result-object v10

    .line 254
    invoke-static {v10, v8, v9}, Lcom/android/okhttp/Handshake;->get(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/okhttp/Handshake;

    move-result-object v10

    .line 256
    .local v10, "handshake":Lcom/android/okhttp/Handshake;
    invoke-virtual {v3, v10}, Lcom/android/okhttp/Response$Builder;->handshake(Lcom/android/okhttp/Handshake;)Lcom/android/okhttp/Response$Builder;

    .line 259
    .end local v7    # "javaSecureCacheResponse":Ljava/net/SecureCacheResponse;
    .end local v8    # "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    .end local v9    # "localCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    .end local v10    # "handshake":Lcom/android/okhttp/Handshake;
    :cond_93
    invoke-virtual {v3}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v7

    return-object v7
.end method

.method public static blacklist createOkResponseForCachePut(Ljava/net/URI;Ljava/net/URLConnection;)Lcom/android/okhttp/Response;
    .registers 19
    .param p0, "uri"    # Ljava/net/URI;
    .param p1, "urlConnection"    # Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    move-object/from16 v1, p1

    move-object v2, v1

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 75
    .local v2, "httpUrlConnection":Ljava/net/HttpURLConnection;
    new-instance v0, Lcom/android/okhttp/Response$Builder;

    invoke-direct {v0}, Lcom/android/okhttp/Response$Builder;-><init>()V

    move-object v3, v0

    .line 78
    .local v3, "okResponseBuilder":Lcom/android/okhttp/Response$Builder;
    invoke-virtual/range {p1 .. p1}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->createHeaders(Ljava/util/Map;)Lcom/android/okhttp/Headers;

    move-result-object v4

    .line 80
    .local v4, "responseHeaders":Lcom/android/okhttp/Headers;
    invoke-static {v1, v4}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->varyHeaders(Ljava/net/URLConnection;Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Headers;

    move-result-object v5

    .line 81
    .local v5, "varyHeaders":Lcom/android/okhttp/Headers;
    const/4 v0, 0x0

    if-nez v5, :cond_1b

    .line 82
    return-object v0

    .line 86
    :cond_1b
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v6

    .line 87
    .local v6, "requestMethod":Ljava/lang/String;
    invoke-static {v6}, Lcom/android/okhttp/internal/http/HttpMethod;->requiresRequestBody(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_28

    .line 88
    sget-object v0, Lcom/android/okhttp/internal/huc/JavaApiConverter;->EMPTY_REQUEST_BODY:Lcom/android/okhttp/RequestBody;

    goto :goto_29

    .line 89
    :cond_28
    nop

    :goto_29
    move-object v7, v0

    .line 91
    .local v7, "placeholderBody":Lcom/android/okhttp/RequestBody;
    new-instance v0, Lcom/android/okhttp/Request$Builder;

    invoke-direct {v0}, Lcom/android/okhttp/Request$Builder;-><init>()V

    .line 92
    invoke-virtual/range {p0 .. p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    move-result-object v0

    .line 93
    invoke-virtual {v0, v6, v7}, Lcom/android/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;

    move-result-object v0

    .line 94
    invoke-virtual {v0, v5}, Lcom/android/okhttp/Request$Builder;->headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Request$Builder;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    move-result-object v8

    .line 96
    .local v8, "okRequest":Lcom/android/okhttp/Request;
    invoke-virtual {v3, v8}, Lcom/android/okhttp/Response$Builder;->request(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response$Builder;

    .line 99
    invoke-static {v2}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->extractStatusLine(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okhttp/internal/http/StatusLine;->parse(Ljava/lang/String;)Lcom/android/okhttp/internal/http/StatusLine;

    move-result-object v9

    .line 100
    .local v9, "statusLine":Lcom/android/okhttp/internal/http/StatusLine;
    iget-object v0, v9, Lcom/android/okhttp/internal/http/StatusLine;->protocol:Lcom/android/okhttp/Protocol;

    invoke-virtual {v3, v0}, Lcom/android/okhttp/Response$Builder;->protocol(Lcom/android/okhttp/Protocol;)Lcom/android/okhttp/Response$Builder;

    .line 101
    iget v0, v9, Lcom/android/okhttp/internal/http/StatusLine;->code:I

    invoke-virtual {v3, v0}, Lcom/android/okhttp/Response$Builder;->code(I)Lcom/android/okhttp/Response$Builder;

    .line 102
    iget-object v0, v9, Lcom/android/okhttp/internal/http/StatusLine;->message:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/android/okhttp/Response$Builder;->message(Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;

    .line 105
    invoke-virtual {v3}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v10

    .line 106
    .local v10, "networkResponse":Lcom/android/okhttp/Response;
    invoke-virtual {v3, v10}, Lcom/android/okhttp/Response$Builder;->networkResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;

    .line 109
    invoke-static {v2}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->extractOkResponseHeaders(Ljava/net/HttpURLConnection;)Lcom/android/okhttp/Headers;

    move-result-object v11

    .line 110
    .local v11, "okHeaders":Lcom/android/okhttp/Headers;
    invoke-virtual {v3, v11}, Lcom/android/okhttp/Response$Builder;->headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Response$Builder;

    .line 113
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->createOkBody(Ljava/net/URLConnection;)Lcom/android/okhttp/ResponseBody;

    move-result-object v12

    .line 114
    .local v12, "okBody":Lcom/android/okhttp/ResponseBody;
    invoke-virtual {v3, v12}, Lcom/android/okhttp/Response$Builder;->body(Lcom/android/okhttp/ResponseBody;)Lcom/android/okhttp/Response$Builder;

    .line 117
    instance-of v0, v2, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_9d

    .line 118
    move-object v13, v2

    check-cast v13, Ljavax/net/ssl/HttpsURLConnection;

    .line 122
    .local v13, "httpsUrlConnection":Ljavax/net/ssl/HttpsURLConnection;
    :try_start_79
    invoke-virtual {v13}, Ljavax/net/ssl/HttpsURLConnection;->getServerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0
    :try_end_7d
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_79 .. :try_end_7d} :catch_7e

    .line 125
    .local v0, "peerCertificates":[Ljava/security/cert/Certificate;
    goto :goto_83

    .line 123
    .end local v0    # "peerCertificates":[Ljava/security/cert/Certificate;
    :catch_7e
    move-exception v0

    move-object v14, v0

    move-object v0, v14

    .line 124
    .local v0, "e":Ljavax/net/ssl/SSLPeerUnverifiedException;
    const/4 v14, 0x0

    move-object v0, v14

    .line 127
    .local v0, "peerCertificates":[Ljava/security/cert/Certificate;
    :goto_83
    invoke-virtual {v13}, Ljavax/net/ssl/HttpsURLConnection;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v14

    .line 129
    .local v14, "localCertificates":[Ljava/security/cert/Certificate;
    nop

    .line 130
    invoke-virtual {v13}, Ljavax/net/ssl/HttpsURLConnection;->getCipherSuite()Ljava/lang/String;

    move-result-object v15

    invoke-static {v0}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->nullSafeImmutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 131
    move-object/from16 v16, v0

    .end local v0    # "peerCertificates":[Ljava/security/cert/Certificate;
    .local v16, "peerCertificates":[Ljava/security/cert/Certificate;
    invoke-static {v14}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->nullSafeImmutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 129
    invoke-static {v15, v1, v0}, Lcom/android/okhttp/Handshake;->get(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/okhttp/Handshake;

    move-result-object v0

    .line 132
    .local v0, "handshake":Lcom/android/okhttp/Handshake;
    invoke-virtual {v3, v0}, Lcom/android/okhttp/Response$Builder;->handshake(Lcom/android/okhttp/Handshake;)Lcom/android/okhttp/Response$Builder;

    .line 135
    .end local v0    # "handshake":Lcom/android/okhttp/Handshake;
    .end local v13    # "httpsUrlConnection":Ljavax/net/ssl/HttpsURLConnection;
    .end local v14    # "localCertificates":[Ljava/security/cert/Certificate;
    .end local v16    # "peerCertificates":[Ljava/security/cert/Certificate;
    :cond_9d
    invoke-virtual {v3}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v0

    return-object v0
.end method

.method static blacklist extractJavaHeaders(Lcom/android/okhttp/Request;)Ljava/util/Map;
    .registers 3
    .param p0, "request"    # Lcom/android/okhttp/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/okhttp/Request;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 394
    invoke-virtual {p0}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/okhttp/internal/http/OkHeaders;->toMultimap(Lcom/android/okhttp/Headers;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist extractOkHeaders(Ljava/net/CacheResponse;)Lcom/android/okhttp/Headers;
    .registers 3
    .param p0, "javaResponse"    # Ljava/net/CacheResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 402
    invoke-virtual {p0}, Ljava/net/CacheResponse;->getHeaders()Ljava/util/Map;

    move-result-object v0

    .line 403
    .local v0, "javaResponseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {v0}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->extractOkHeaders(Ljava/util/Map;)Lcom/android/okhttp/Headers;

    move-result-object v1

    return-object v1
.end method

.method static blacklist extractOkHeaders(Ljava/util/Map;)Lcom/android/okhttp/Headers;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/android/okhttp/Headers;"
        }
    .end annotation

    .line 421
    .local p0, "javaHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v0, Lcom/android/okhttp/Headers$Builder;

    invoke-direct {v0}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    .line 422
    .local v0, "okHeadersBuilder":Lcom/android/okhttp/Headers$Builder;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 423
    .local v2, "javaHeader":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 424
    .local v3, "name":Ljava/lang/String;
    if-nez v3, :cond_22

    .line 429
    goto :goto_d

    .line 431
    :cond_22
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 432
    .local v5, "value":Ljava/lang/String;
    sget-object v6, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    invoke-virtual {v6, v0, v3, v5}, Lcom/android/okhttp/internal/Internal;->addLenient(Lcom/android/okhttp/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    .end local v5    # "value":Ljava/lang/String;
    goto :goto_2c

    .line 434
    .end local v2    # "javaHeader":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v3    # "name":Ljava/lang/String;
    :cond_3e
    goto :goto_d

    .line 435
    :cond_3f
    invoke-virtual {v0}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist extractOkResponseHeaders(Ljava/net/HttpURLConnection;)Lcom/android/okhttp/Headers;
    .registers 3
    .param p0, "httpUrlConnection"    # Ljava/net/HttpURLConnection;

    .line 411
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    .line 412
    .local v0, "javaResponseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {v0}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->extractOkHeaders(Ljava/util/Map;)Lcom/android/okhttp/Headers;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist extractStatusLine(Ljava/net/CacheResponse;)Ljava/lang/String;
    .registers 3
    .param p0, "javaResponse"    # Ljava/net/CacheResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 454
    invoke-virtual {p0}, Ljava/net/CacheResponse;->getHeaders()Ljava/util/Map;

    move-result-object v0

    .line 455
    .local v0, "javaResponseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {v0}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->extractStatusLine(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist extractStatusLine(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .registers 2
    .param p0, "httpUrlConnection"    # Ljava/net/HttpURLConnection;

    .line 445
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static blacklist extractStatusLine(Ljava/util/Map;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
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

    .line 461
    .local p0, "javaResponseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 462
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_17

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_17

    .line 468
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 464
    :cond_17
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CacheResponse is missing a \'null\' header containing the status line. Headers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist nullSafeImmutableList([Ljava/lang/Object;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 856
    .local p0, "elements":[Ljava/lang/Object;, "[TT;"
    if-nez p0, :cond_7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_b

    :cond_7
    invoke-static {p0}, Lcom/android/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_b
    return-object v0
.end method

.method private static blacklist stringToLong(Ljava/lang/String;)J
    .registers 4
    .param p0, "s"    # Ljava/lang/String;

    .line 860
    const-wide/16 v0, -0x1

    if-nez p0, :cond_5

    return-wide v0

    .line 862
    :cond_5
    :try_start_5
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_9} :catch_a

    return-wide v0

    .line 863
    :catch_a
    move-exception v2

    .line 864
    .local v2, "e":Ljava/lang/NumberFormatException;
    return-wide v0
.end method

.method private static blacklist throwRequestHeaderAccessException()Ljava/lang/RuntimeException;
    .registers 2

    .line 844
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ResponseCache cannot access request headers"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist throwRequestModificationException()Ljava/lang/RuntimeException;
    .registers 2

    .line 840
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ResponseCache cannot modify the request."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist throwRequestSslAccessException()Ljava/lang/RuntimeException;
    .registers 2

    .line 848
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ResponseCache cannot access SSL internals"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist throwResponseBodyAccessException()Ljava/lang/RuntimeException;
    .registers 2

    .line 852
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ResponseCache cannot access the response body."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist varyHeaders(Ljava/net/URLConnection;Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Headers;
    .registers 11
    .param p0, "urlConnection"    # Ljava/net/URLConnection;
    .param p1, "responseHeaders"    # Lcom/android/okhttp/Headers;

    .line 157
    invoke-static {p1}, Lcom/android/okhttp/internal/http/OkHeaders;->hasVaryAll(Lcom/android/okhttp/Headers;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 159
    return-object v1

    .line 161
    :cond_8
    invoke-static {p1}, Lcom/android/okhttp/internal/http/OkHeaders;->varyFields(Lcom/android/okhttp/Headers;)Ljava/util/Set;

    move-result-object v0

    .line 162
    .local v0, "varyFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 163
    new-instance v1, Lcom/android/okhttp/Headers$Builder;

    invoke-direct {v1}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v1

    return-object v1

    .line 170
    :cond_1c
    instance-of v2, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;

    if-nez v2, :cond_25

    instance-of v2, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpsURLConnection;

    if-nez v2, :cond_25

    .line 172
    return-object v1

    .line 177
    :cond_25
    invoke-virtual {p0}, Ljava/net/URLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v1

    .line 178
    .local v1, "requestProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v2, Lcom/android/okhttp/Headers$Builder;

    invoke-direct {v2}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    .line 179
    .local v2, "result":Lcom/android/okhttp/Headers$Builder;
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_32
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 180
    .local v4, "fieldName":Ljava/lang/String;
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 181
    .local v5, "fieldValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v5, :cond_54

    .line 182
    const-string v6, "Accept-Encoding"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6a

    .line 186
    const-string v7, "gzip"

    invoke-virtual {v2, v6, v7}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    goto :goto_6a

    .line 189
    :cond_54
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_58
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 190
    .local v7, "fieldValue":Ljava/lang/String;
    sget-object v8, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    invoke-virtual {v8, v2, v4, v7}, Lcom/android/okhttp/internal/Internal;->addLenient(Lcom/android/okhttp/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .end local v7    # "fieldValue":Ljava/lang/String;
    goto :goto_58

    .line 193
    .end local v4    # "fieldName":Ljava/lang/String;
    .end local v5    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6a
    :goto_6a
    goto :goto_32

    .line 194
    :cond_6b
    invoke-virtual {v2}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v3

    return-object v3
.end method
