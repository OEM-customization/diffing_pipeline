.class public Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;
.super Ljava/net/HttpURLConnection;
.source "HttpURLConnectionImpl.java"


# static fields
.field private static final blacklist EMPTY_REQUEST_BODY:Lcom/android/okhttp/RequestBody;

.field private static final blacklist METHODS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final greylist client:Lcom/android/okhttp/OkHttpClient;

.field private blacklist fixedContentLength:J

.field private blacklist followUpCount:I

.field blacklist handshake:Lcom/android/okhttp/Handshake;

.field protected greylist httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

.field protected blacklist httpEngineFailure:Ljava/io/IOException;

.field private blacklist requestHeaders:Lcom/android/okhttp/Headers$Builder;

.field private blacklist responseHeaders:Lcom/android/okhttp/Headers;

.field private blacklist route:Lcom/android/okhttp/Route;

.field private blacklist urlFilter:Lcom/android/okhttp/internal/URLFilter;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 9

    .line 85
    new-instance v0, Ljava/util/LinkedHashSet;

    const-string v1, "OPTIONS"

    const-string v2, "GET"

    const-string v3, "HEAD"

    const-string v4, "POST"

    const-string v5, "PUT"

    const-string v6, "DELETE"

    const-string v7, "TRACE"

    const-string v8, "PATCH"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->METHODS:Ljava/util/Set;

    .line 87
    const/4 v0, 0x0

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/android/okhttp/RequestBody;->create(Lcom/android/okhttp/MediaType;[B)Lcom/android/okhttp/RequestBody;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->EMPTY_REQUEST_BODY:Lcom/android/okhttp/RequestBody;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/net/URL;Lcom/android/okhttp/OkHttpClient;)V
    .registers 5
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "client"    # Lcom/android/okhttp/OkHttpClient;

    .line 118
    invoke-direct {p0, p1}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    .line 92
    new-instance v0, Lcom/android/okhttp/Headers$Builder;

    invoke-direct {v0}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->requestHeaders:Lcom/android/okhttp/Headers$Builder;

    .line 95
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->fixedContentLength:J

    .line 119
    iput-object p2, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    .line 120
    return-void
.end method

.method public constructor blacklist <init>(Ljava/net/URL;Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/internal/URLFilter;)V
    .registers 4
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "client"    # Lcom/android/okhttp/OkHttpClient;
    .param p3, "urlFilter"    # Lcom/android/okhttp/internal/URLFilter;

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;-><init>(Ljava/net/URL;Lcom/android/okhttp/OkHttpClient;)V

    .line 124
    iput-object p3, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->urlFilter:Lcom/android/okhttp/internal/URLFilter;

    .line 125
    return-void
.end method

.method private blacklist defaultUserAgent()Ljava/lang/String;
    .registers 3

    .line 394
    const-string v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "agent":Ljava/lang/String;
    if-eqz v0, :cond_d

    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->toHumanReadableAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_d
    invoke-static {}, Lcom/android/okhttp/internal/Version;->userAgent()Ljava/lang/String;

    move-result-object v1

    :goto_11
    return-object v1
.end method

.method private blacklist execute(Z)Z
    .registers 7
    .param p1, "readResponse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 460
    const/4 v0, 0x1

    .line 461
    .local v0, "releaseConnection":Z
    iget-object v1, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->urlFilter:Lcom/android/okhttp/internal/URLFilter;

    if-eqz v1, :cond_12

    .line 462
    iget-object v2, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->getRequest()Lcom/android/okhttp/Request;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/okhttp/internal/URLFilter;->checkURLPermitted(Ljava/net/URL;)V

    .line 465
    :cond_12
    const/4 v1, 0x0

    :try_start_13
    iget-object v2, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->sendRequest()V

    .line 466
    iget-object v2, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->getConnection()Lcom/android/okhttp/Connection;

    move-result-object v2

    .line 467
    .local v2, "connection":Lcom/android/okhttp/Connection;
    if-eqz v2, :cond_2d

    .line 468
    invoke-interface {v2}, Lcom/android/okhttp/Connection;->getRoute()Lcom/android/okhttp/Route;

    move-result-object v3

    iput-object v3, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->route:Lcom/android/okhttp/Route;

    .line 469
    invoke-interface {v2}, Lcom/android/okhttp/Connection;->getHandshake()Lcom/android/okhttp/Handshake;

    move-result-object v3

    iput-object v3, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->handshake:Lcom/android/okhttp/Handshake;

    goto :goto_32

    .line 471
    :cond_2d
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->route:Lcom/android/okhttp/Route;

    .line 472
    iput-object v3, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->handshake:Lcom/android/okhttp/Handshake;

    .line 474
    :goto_32
    if-eqz p1, :cond_39

    .line 475
    iget-object v3, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v3}, Lcom/android/okhttp/internal/http/HttpEngine;->readResponse()V
    :try_end_39
    .catch Lcom/android/okhttp/internal/http/RequestException; {:try_start_13 .. :try_end_39} :catch_83
    .catch Lcom/android/okhttp/internal/http/RouteException; {:try_start_13 .. :try_end_39} :catch_64
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_39} :catch_49
    .catchall {:try_start_13 .. :try_end_39} :catchall_47

    .line 477
    :cond_39
    const/4 v0, 0x0

    .line 479
    const/4 v1, 0x1

    .line 512
    if-eqz v0, :cond_46

    .line 513
    iget-object v3, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v3}, Lcom/android/okhttp/internal/http/HttpEngine;->close()Lcom/android/okhttp/internal/http/StreamAllocation;

    move-result-object v3

    .line 514
    .local v3, "streamAllocation":Lcom/android/okhttp/internal/http/StreamAllocation;
    invoke-virtual {v3}, Lcom/android/okhttp/internal/http/StreamAllocation;->release()V

    .line 479
    .end local v3    # "streamAllocation":Lcom/android/okhttp/internal/http/StreamAllocation;
    :cond_46
    return v1

    .line 512
    .end local v2    # "connection":Lcom/android/okhttp/Connection;
    :catchall_47
    move-exception v1

    goto :goto_8c

    .line 498
    :catch_49
    move-exception v2

    .line 500
    .local v2, "e":Ljava/io/IOException;
    :try_start_4a
    iget-object v3, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v3, v2}, Lcom/android/okhttp/internal/http/HttpEngine;->recover(Ljava/io/IOException;)Lcom/android/okhttp/internal/http/HttpEngine;

    move-result-object v3

    .line 501
    .local v3, "retryEngine":Lcom/android/okhttp/internal/http/HttpEngine;
    if-eqz v3, :cond_60

    .line 502
    const/4 v0, 0x0

    .line 503
    iput-object v3, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;
    :try_end_55
    .catchall {:try_start_4a .. :try_end_55} :catchall_47

    .line 504
    nop

    .line 512
    if-eqz v0, :cond_5f

    .line 513
    invoke-virtual {v3}, Lcom/android/okhttp/internal/http/HttpEngine;->close()Lcom/android/okhttp/internal/http/StreamAllocation;

    move-result-object v4

    .line 514
    .local v4, "streamAllocation":Lcom/android/okhttp/internal/http/StreamAllocation;
    invoke-virtual {v4}, Lcom/android/okhttp/internal/http/StreamAllocation;->release()V

    .line 504
    .end local v4    # "streamAllocation":Lcom/android/okhttp/internal/http/StreamAllocation;
    :cond_5f
    return v1

    .line 508
    :cond_60
    :try_start_60
    iput-object v2, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    .line 509
    nop

    .end local v0    # "releaseConnection":Z
    .end local p0    # "this":Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;
    .end local p1    # "readResponse":Z
    throw v2

    .line 485
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "retryEngine":Lcom/android/okhttp/internal/http/HttpEngine;
    .restart local v0    # "releaseConnection":Z
    .restart local p0    # "this":Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;
    .restart local p1    # "readResponse":Z
    :catch_64
    move-exception v2

    .line 487
    .local v2, "e":Lcom/android/okhttp/internal/http/RouteException;
    iget-object v3, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v3, v2}, Lcom/android/okhttp/internal/http/HttpEngine;->recover(Lcom/android/okhttp/internal/http/RouteException;)Lcom/android/okhttp/internal/http/HttpEngine;

    move-result-object v3

    .line 488
    .restart local v3    # "retryEngine":Lcom/android/okhttp/internal/http/HttpEngine;
    if-eqz v3, :cond_7b

    .line 489
    const/4 v0, 0x0

    .line 490
    iput-object v3, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;
    :try_end_70
    .catchall {:try_start_60 .. :try_end_70} :catchall_47

    .line 491
    nop

    .line 512
    if-eqz v0, :cond_7a

    .line 513
    invoke-virtual {v3}, Lcom/android/okhttp/internal/http/HttpEngine;->close()Lcom/android/okhttp/internal/http/StreamAllocation;

    move-result-object v4

    .line 514
    .restart local v4    # "streamAllocation":Lcom/android/okhttp/internal/http/StreamAllocation;
    invoke-virtual {v4}, Lcom/android/okhttp/internal/http/StreamAllocation;->release()V

    .line 491
    .end local v4    # "streamAllocation":Lcom/android/okhttp/internal/http/StreamAllocation;
    :cond_7a
    return v1

    .line 495
    :cond_7b
    :try_start_7b
    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v1

    .line 496
    .local v1, "toThrow":Ljava/io/IOException;
    iput-object v1, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    .line 497
    nop

    .end local v0    # "releaseConnection":Z
    .end local p0    # "this":Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;
    .end local p1    # "readResponse":Z
    throw v1

    .line 480
    .end local v1    # "toThrow":Ljava/io/IOException;
    .end local v2    # "e":Lcom/android/okhttp/internal/http/RouteException;
    .end local v3    # "retryEngine":Lcom/android/okhttp/internal/http/HttpEngine;
    .restart local v0    # "releaseConnection":Z
    .restart local p0    # "this":Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;
    .restart local p1    # "readResponse":Z
    :catch_83
    move-exception v1

    .line 482
    .local v1, "e":Lcom/android/okhttp/internal/http/RequestException;
    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/RequestException;->getCause()Ljava/io/IOException;

    move-result-object v2

    .line 483
    .local v2, "toThrow":Ljava/io/IOException;
    iput-object v2, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    .line 484
    nop

    .end local v0    # "releaseConnection":Z
    .end local p0    # "this":Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;
    .end local p1    # "readResponse":Z
    throw v2
    :try_end_8c
    .catchall {:try_start_7b .. :try_end_8c} :catchall_47

    .line 512
    .end local v1    # "e":Lcom/android/okhttp/internal/http/RequestException;
    .end local v2    # "toThrow":Ljava/io/IOException;
    .restart local v0    # "releaseConnection":Z
    .restart local p0    # "this":Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;
    .restart local p1    # "readResponse":Z
    :goto_8c
    if-eqz v0, :cond_97

    .line 513
    iget-object v2, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->close()Lcom/android/okhttp/internal/http/StreamAllocation;

    move-result-object v2

    .line 514
    .local v2, "streamAllocation":Lcom/android/okhttp/internal/http/StreamAllocation;
    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/StreamAllocation;->release()V

    .line 516
    .end local v2    # "streamAllocation":Lcom/android/okhttp/internal/http/StreamAllocation;
    :cond_97
    throw v1
.end method

.method private blacklist getHeaders()Lcom/android/okhttp/Headers;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->responseHeaders:Lcom/android/okhttp/Headers;

    if-nez v0, :cond_32

    .line 167
    invoke-direct {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getResponse()Lcom/android/okhttp/internal/http/HttpEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    move-result-object v0

    .line 168
    .local v0, "response":Lcom/android/okhttp/Response;
    invoke-virtual {v0}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v1

    .line 169
    .local v1, "headers":Lcom/android/okhttp/Headers;
    invoke-virtual {v1}, Lcom/android/okhttp/Headers;->newBuilder()Lcom/android/okhttp/Headers$Builder;

    move-result-object v2

    sget-object v3, Lcom/android/okhttp/internal/http/OkHeaders;->SELECTED_PROTOCOL:Ljava/lang/String;

    .line 170
    invoke-virtual {v0}, Lcom/android/okhttp/Response;->protocol()Lcom/android/okhttp/Protocol;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/okhttp/Protocol;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    move-result-object v2

    sget-object v3, Lcom/android/okhttp/internal/http/OkHeaders;->RESPONSE_SOURCE:Ljava/lang/String;

    .line 171
    invoke-static {v0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->responseSourceHeader(Lcom/android/okhttp/Response;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    move-result-object v2

    .line 172
    invoke-virtual {v2}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v2

    iput-object v2, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->responseHeaders:Lcom/android/okhttp/Headers;

    .line 174
    .end local v0    # "response":Lcom/android/okhttp/Response;
    .end local v1    # "headers":Lcom/android/okhttp/Headers;
    :cond_32
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->responseHeaders:Lcom/android/okhttp/Headers;

    return-object v0
.end method

.method private blacklist getResponse()Lcom/android/okhttp/internal/http/HttpEngine;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 404
    invoke-direct {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->initHttpEngine()V

    .line 406
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->hasResponse()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 407
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    return-object v0

    .line 411
    :cond_e
    :goto_e
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->execute(Z)Z

    move-result v1

    if-nez v1, :cond_16

    .line 412
    goto :goto_e

    .line 415
    :cond_16
    iget-object v1, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    move-result-object v1

    .line 416
    .local v1, "response":Lcom/android/okhttp/Response;
    iget-object v2, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->followUpRequest()Lcom/android/okhttp/Request;

    move-result-object v2

    .line 418
    .local v2, "followUp":Lcom/android/okhttp/Request;
    if-nez v2, :cond_2c

    .line 419
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->releaseStreamAllocation()V

    .line 420
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    return-object v0

    .line 423
    :cond_2c
    iget v3, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->followUpCount:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->followUpCount:I

    const/16 v0, 0x14

    if-gt v3, v0, :cond_8d

    .line 428
    invoke-virtual {v2}, Lcom/android/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->url:Ljava/net/URL;

    .line 429
    invoke-virtual {v2}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Headers;->newBuilder()Lcom/android/okhttp/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->requestHeaders:Lcom/android/okhttp/Headers$Builder;

    .line 434
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->getRequestBody()Lcom/android/okhttp/okio/Sink;

    move-result-object v0

    .line 435
    .local v0, "requestBody":Lcom/android/okhttp/okio/Sink;
    invoke-virtual {v2}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->method:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_58

    .line 436
    const/4 v0, 0x0

    .line 439
    :cond_58
    if-eqz v0, :cond_69

    instance-of v3, v0, Lcom/android/okhttp/internal/http/RetryableSink;

    if-eqz v3, :cond_5f

    goto :goto_69

    .line 440
    :cond_5f
    new-instance v3, Ljava/net/HttpRetryException;

    iget v4, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->responseCode:I

    const-string v5, "Cannot retry streamed HTTP body"

    invoke-direct {v3, v5, v4}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 443
    :cond_69
    :goto_69
    iget-object v3, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v3}, Lcom/android/okhttp/internal/http/HttpEngine;->close()Lcom/android/okhttp/internal/http/StreamAllocation;

    move-result-object v3

    .line 444
    .local v3, "streamAllocation":Lcom/android/okhttp/internal/http/StreamAllocation;
    iget-object v4, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/okhttp/internal/http/HttpEngine;->sameConnection(Lcom/android/okhttp/HttpUrl;)Z

    move-result v4

    if-nez v4, :cond_7f

    .line 445
    invoke-virtual {v3}, Lcom/android/okhttp/internal/http/StreamAllocation;->release()V

    .line 446
    const/4 v3, 0x0

    .line 449
    :cond_7f
    invoke-virtual {v2}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v4

    move-object v5, v0

    check-cast v5, Lcom/android/okhttp/internal/http/RetryableSink;

    invoke-direct {p0, v4, v3, v5, v1}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->newHttpEngine(Ljava/lang/String;Lcom/android/okhttp/internal/http/StreamAllocation;Lcom/android/okhttp/internal/http/RetryableSink;Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/HttpEngine;

    move-result-object v4

    iput-object v4, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    .line 451
    .end local v0    # "requestBody":Lcom/android/okhttp/okio/Sink;
    .end local v1    # "response":Lcom/android/okhttp/Response;
    .end local v2    # "followUp":Lcom/android/okhttp/Request;
    .end local v3    # "streamAllocation":Lcom/android/okhttp/internal/http/StreamAllocation;
    goto :goto_e

    .line 424
    .restart local v1    # "response":Lcom/android/okhttp/Response;
    .restart local v2    # "followUp":Lcom/android/okhttp/Request;
    :cond_8d
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Too many follow-up requests: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->followUpCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist initHttpEngine()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    if-nez v0, :cond_50

    .line 321
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    if-eqz v0, :cond_9

    .line 322
    return-void

    .line 325
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->connected:Z

    .line 327
    :try_start_c
    iget-boolean v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->doOutput:Z

    if-eqz v0, :cond_41

    .line 328
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->method:Ljava/lang/String;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 330
    const-string v0, "POST"

    iput-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->method:Ljava/lang/String;

    goto :goto_41

    .line 331
    :cond_1f
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->method:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/okhttp/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    goto :goto_41

    .line 332
    :cond_28
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not support writing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;
    throw v0

    .line 336
    .restart local p0    # "this":Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;
    :cond_41
    :goto_41
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->method:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1, v1}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->newHttpEngine(Ljava/lang/String;Lcom/android/okhttp/internal/http/StreamAllocation;Lcom/android/okhttp/internal/http/RetryableSink;Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/HttpEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_4a} :catch_4c

    .line 340
    nop

    .line 341
    return-void

    .line 337
    :catch_4c
    move-exception v0

    .line 338
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    .line 339
    throw v0

    .line 320
    .end local v0    # "e":Ljava/io/IOException;
    :cond_50
    throw v0
.end method

.method private blacklist newHttpEngine(Ljava/lang/String;Lcom/android/okhttp/internal/http/StreamAllocation;Lcom/android/okhttp/internal/http/RetryableSink;Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/HttpEngine;
    .registers 25
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "streamAllocation"    # Lcom/android/okhttp/internal/http/StreamAllocation;
    .param p3, "requestBody"    # Lcom/android/okhttp/internal/http/RetryableSink;
    .param p4, "priorResponse"    # Lcom/android/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 347
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/internal/http/HttpMethod;->requiresRequestBody(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 348
    sget-object v1, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->EMPTY_REQUEST_BODY:Lcom/android/okhttp/RequestBody;

    goto :goto_d

    .line 349
    :cond_c
    move-object v1, v2

    :goto_d
    nop

    .line 350
    .local v1, "placeholderBody":Lcom/android/okhttp/RequestBody;
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    move-result-object v3

    .line 351
    .local v3, "url":Ljava/net/URL;
    sget-object v4, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/okhttp/internal/Internal;->getHttpUrlChecked(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl;

    move-result-object v4

    .line 352
    .local v4, "httpUrl":Lcom/android/okhttp/HttpUrl;
    new-instance v5, Lcom/android/okhttp/Request$Builder;

    invoke-direct {v5}, Lcom/android/okhttp/Request$Builder;-><init>()V

    .line 353
    invoke-virtual {v5, v4}, Lcom/android/okhttp/Request$Builder;->url(Lcom/android/okhttp/HttpUrl;)Lcom/android/okhttp/Request$Builder;

    move-result-object v5

    .line 354
    move-object/from16 v6, p1

    invoke-virtual {v5, v6, v1}, Lcom/android/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;

    move-result-object v5

    .line 355
    .local v5, "builder":Lcom/android/okhttp/Request$Builder;
    iget-object v7, v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->requestHeaders:Lcom/android/okhttp/Headers$Builder;

    invoke-virtual {v7}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v7

    .line 356
    .local v7, "headers":Lcom/android/okhttp/Headers;
    const/4 v8, 0x0

    .local v8, "i":I
    invoke-virtual {v7}, Lcom/android/okhttp/Headers;->size()I

    move-result v9

    .local v9, "size":I
    :goto_36
    if-ge v8, v9, :cond_46

    .line 357
    invoke-virtual {v7, v8}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Lcom/android/okhttp/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 356
    add-int/lit8 v8, v8, 0x1

    goto :goto_36

    .line 360
    .end local v8    # "i":I
    .end local v9    # "size":I
    :cond_46
    const/4 v8, 0x0

    .line 361
    .local v8, "bufferRequestBody":Z
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_79

    .line 363
    iget-wide v9, v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->fixedContentLength:J

    const-wide/16 v11, -0x1

    cmp-long v11, v9, v11

    if-eqz v11, :cond_5f

    .line 364
    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    const-string v10, "Content-Length"

    invoke-virtual {v5, v10, v9}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    goto :goto_6c

    .line 365
    :cond_5f
    iget v9, v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->chunkLength:I

    if-lez v9, :cond_6b

    .line 366
    const-string v9, "Transfer-Encoding"

    const-string v10, "chunked"

    invoke-virtual {v5, v9, v10}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    goto :goto_6c

    .line 368
    :cond_6b
    const/4 v8, 0x1

    .line 372
    :goto_6c
    const-string v9, "Content-Type"

    invoke-virtual {v7, v9}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_79

    .line 373
    const-string v10, "application/x-www-form-urlencoded"

    invoke-virtual {v5, v9, v10}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 377
    :cond_79
    const-string v9, "User-Agent"

    invoke-virtual {v7, v9}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_88

    .line 378
    invoke-direct/range {p0 .. p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->defaultUserAgent()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 381
    :cond_88
    invoke-virtual {v5}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    move-result-object v9

    .line 384
    .local v9, "request":Lcom/android/okhttp/Request;
    iget-object v10, v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    .line 385
    .local v10, "engineClient":Lcom/android/okhttp/OkHttpClient;
    sget-object v11, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    invoke-virtual {v11, v10}, Lcom/android/okhttp/internal/Internal;->internalCache(Lcom/android/okhttp/OkHttpClient;)Lcom/android/okhttp/internal/InternalCache;

    move-result-object v11

    if-eqz v11, :cond_a6

    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getUseCaches()Z

    move-result v11

    if-nez v11, :cond_a6

    .line 386
    iget-object v11, v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v11}, Lcom/android/okhttp/OkHttpClient;->clone()Lcom/android/okhttp/OkHttpClient;

    move-result-object v11

    invoke-virtual {v11, v2}, Lcom/android/okhttp/OkHttpClient;->setCache(Lcom/android/okhttp/Cache;)Lcom/android/okhttp/OkHttpClient;

    move-result-object v10

    .line 389
    :cond_a6
    new-instance v2, Lcom/android/okhttp/internal/http/HttpEngine;

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object v11, v2

    move-object v12, v10

    move-object v13, v9

    move v14, v8

    move-object/from16 v17, p2

    move-object/from16 v18, p3

    move-object/from16 v19, p4

    invoke-direct/range {v11 .. v19}, Lcom/android/okhttp/internal/http/HttpEngine;-><init>(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/Request;ZZZLcom/android/okhttp/internal/http/StreamAllocation;Lcom/android/okhttp/internal/http/RetryableSink;Lcom/android/okhttp/Response;)V

    return-object v2
.end method

.method private static blacklist responseSourceHeader(Lcom/android/okhttp/Response;)Ljava/lang/String;
    .registers 3
    .param p0, "response"    # Lcom/android/okhttp/Response;

    .line 178
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->networkResponse()Lcom/android/okhttp/Response;

    move-result-object v0

    if-nez v0, :cond_25

    .line 179
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->cacheResponse()Lcom/android/okhttp/Response;

    move-result-object v0

    if-nez v0, :cond_f

    .line 180
    const-string v0, "NONE"

    return-object v0

    .line 182
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CACHE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/okhttp/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 184
    :cond_25
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->cacheResponse()Lcom/android/okhttp/Response;

    move-result-object v0

    if-nez v0, :cond_41

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NETWORK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/okhttp/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 187
    :cond_41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CONDITIONAL_CACHE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/okhttp/Response;->networkResponse()Lcom/android/okhttp/Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist setProtocols(Ljava/lang/String;Z)V
    .registers 9
    .param p1, "protocolsString"    # Ljava/lang/String;
    .param p2, "append"    # Z

    .line 611
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 612
    .local v0, "protocolsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/Protocol;>;"
    if-eqz p2, :cond_10

    .line 613
    iget-object v1, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v1}, Lcom/android/okhttp/OkHttpClient;->getProtocols()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 615
    :cond_10
    const/4 v1, -0x1

    const-string v2, ","

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v2, :cond_2f

    aget-object v4, v1, v3

    .line 617
    .local v4, "protocol":Ljava/lang/String;
    :try_start_1d
    invoke-static {v4}, Lcom/android/okhttp/Protocol;->get(Ljava/lang/String;)Lcom/android/okhttp/Protocol;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_24} :catch_28

    .line 620
    nop

    .line 615
    .end local v4    # "protocol":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 618
    .restart local v4    # "protocol":Ljava/lang/String;
    :catch_28
    move-exception v1

    .line 619
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 622
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "protocol":Ljava/lang/String;
    :cond_2f
    iget-object v1, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v1, v0}, Lcom/android/okhttp/OkHttpClient;->setProtocols(Ljava/util/List;)Lcom/android/okhttp/OkHttpClient;

    .line 623
    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 580
    iget-boolean v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->connected:Z

    if-nez v0, :cond_4a

    .line 583
    if-eqz p1, :cond_42

    .line 586
    if-nez p2, :cond_26

    .line 592
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring header "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " because its value was null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/Platform;->logW(Ljava/lang/String;)V

    .line 593
    return-void

    .line 597
    :cond_26
    const-string v0, "X-Android-Transports"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    const-string v0, "X-Android-Protocols"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    goto :goto_3d

    .line 600
    :cond_37
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->requestHeaders:Lcom/android/okhttp/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    goto :goto_41

    .line 598
    :cond_3d
    :goto_3d
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->setProtocols(Ljava/lang/String;Z)V

    .line 602
    :goto_41
    return-void

    .line 584
    :cond_42
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "field == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 581
    :cond_4a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add request property after connection is made"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist core-platform-api test-api connect()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    invoke-direct {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->initHttpEngine()V

    .line 131
    :goto_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->execute(Z)Z

    move-result v0

    .line 132
    .local v0, "success":Z
    if-eqz v0, :cond_b

    .line 133
    return-void

    .line 132
    :cond_b
    goto :goto_3
.end method

.method public final whitelist core-platform-api test-api disconnect()V
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    if-nez v0, :cond_5

    return-void

    .line 139
    :cond_5
    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->cancel()V

    .line 146
    return-void
.end method

.method public whitelist core-platform-api test-api getConnectTimeout()I
    .registers 2

    .line 307
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/android/okhttp/OkHttpClient;->getConnectTimeout()I

    move-result v0

    return v0
.end method

.method public final whitelist core-platform-api test-api getErrorStream()Ljava/io/InputStream;
    .registers 5

    .line 154
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getResponse()Lcom/android/okhttp/internal/http/HttpEngine;

    move-result-object v1

    .line 155
    .local v1, "response":Lcom/android/okhttp/internal/http/HttpEngine;
    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    move-result-object v2

    invoke-static {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->hasBody(Lcom/android/okhttp/Response;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 156
    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okhttp/Response;->code()I

    move-result v2

    const/16 v3, 0x190

    if-lt v2, v3, :cond_28

    .line 157
    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okhttp/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_27} :catch_29

    return-object v0

    .line 159
    :cond_28
    return-object v0

    .line 160
    .end local v1    # "response":Lcom/android/okhttp/internal/http/HttpEngine;
    :catch_29
    move-exception v1

    .line 161
    .local v1, "e":Ljava/io/IOException;
    return-object v0
.end method

.method public final whitelist core-platform-api test-api getHeaderField(I)Ljava/lang/String;
    .registers 4
    .param p1, "position"    # I

    .line 196
    :try_start_0
    invoke-direct {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getHeaders()Lcom/android/okhttp/Headers;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 197
    :catch_9
    move-exception v0

    .line 198
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public final whitelist core-platform-api test-api getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 209
    if-nez p1, :cond_13

    .line 210
    :try_start_2
    invoke-direct {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getResponse()Lcom/android/okhttp/internal/http/HttpEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okhttp/internal/http/StatusLine;->get(Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/StatusLine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/StatusLine;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    .line 211
    :cond_13
    invoke-direct {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getHeaders()Lcom/android/okhttp/Headers;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_1b} :catch_1c

    .line 209
    :goto_1b
    return-object v0

    .line 212
    :catch_1c
    move-exception v0

    .line 213
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public final whitelist core-platform-api test-api getHeaderFieldKey(I)Ljava/lang/String;
    .registers 4
    .param p1, "position"    # I

    .line 219
    :try_start_0
    invoke-direct {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getHeaders()Lcom/android/okhttp/Headers;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 220
    :catch_9
    move-exception v0

    .line 221
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public final whitelist core-platform-api test-api getHeaderFields()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 227
    :try_start_0
    invoke-direct {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getHeaders()Lcom/android/okhttp/Headers;

    move-result-object v0

    .line 228
    invoke-direct {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getResponse()Lcom/android/okhttp/internal/http/HttpEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    move-result-object v1

    invoke-static {v1}, Lcom/android/okhttp/internal/http/StatusLine;->get(Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/StatusLine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/StatusLine;->toString()Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-static {v0, v1}, Lcom/android/okhttp/internal/http/OkHeaders;->toMultimap(Lcom/android/okhttp/Headers;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_18} :catch_19

    return-object v0

    .line 229
    :catch_19
    move-exception v0

    .line 230
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public final whitelist core-platform-api test-api getInputStream()Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    iget-boolean v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->doInput:Z

    if-eqz v0, :cond_29

    .line 248
    invoke-direct {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getResponse()Lcom/android/okhttp/internal/http/HttpEngine;

    move-result-object v0

    .line 254
    .local v0, "response":Lcom/android/okhttp/internal/http/HttpEngine;
    invoke-virtual {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getResponseCode()I

    move-result v1

    const/16 v2, 0x190

    if-ge v1, v2, :cond_1d

    .line 258
    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v1

    return-object v1

    .line 255
    :cond_1d
    new-instance v1, Ljava/io/FileNotFoundException;

    iget-object v2, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 245
    .end local v0    # "response":Lcom/android/okhttp/internal/http/HttpEngine;
    :cond_29
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "This protocol does not support input"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api getInstanceFollowRedirects()Z
    .registers 2

    .line 303
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/android/okhttp/OkHttpClient;->getFollowRedirects()Z

    move-result v0

    return v0
.end method

.method public final whitelist core-platform-api test-api getOutputStream()Ljava/io/OutputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    invoke-virtual {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->connect()V

    .line 264
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->getBufferedRequestBody()Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v0

    .line 265
    .local v0, "sink":Lcom/android/okhttp/okio/BufferedSink;
    if-eqz v0, :cond_20

    .line 267
    iget-object v1, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/HttpEngine;->hasResponse()Z

    move-result v1

    if-nez v1, :cond_18

    .line 271
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->outputStream()Ljava/io/OutputStream;

    move-result-object v1

    return-object v1

    .line 268
    :cond_18
    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "cannot write request body after response has been read"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 266
    :cond_20
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "method does not support a request body: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->method:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final whitelist core-platform-api test-api getPermission()Ljava/security/Permission;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    invoke-virtual {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    move-result-object v0

    .line 276
    .local v0, "url":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, "hostName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_14

    .line 278
    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v2

    goto :goto_1c

    .line 279
    :cond_14
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/okhttp/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v2

    :goto_1c
    nop

    .line 280
    .local v2, "hostPort":I
    invoke-virtual {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->usingProxy()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 281
    iget-object v3, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v3}, Lcom/android/okhttp/OkHttpClient;->getProxy()Ljava/net/Proxy;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v3

    check-cast v3, Ljava/net/InetSocketAddress;

    .line 282
    .local v3, "proxyAddress":Ljava/net/InetSocketAddress;
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    .line 283
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    .line 285
    .end local v3    # "proxyAddress":Ljava/net/InetSocketAddress;
    :cond_37
    new-instance v3, Ljava/net/SocketPermission;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "connect, resolve"

    invoke-direct {v3, v4, v5}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public whitelist core-platform-api test-api getReadTimeout()I
    .registers 2

    .line 315
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/android/okhttp/OkHttpClient;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public final whitelist core-platform-api test-api getRequestProperties()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 235
    iget-boolean v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->connected:Z

    if-nez v0, :cond_10

    .line 240
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->requestHeaders:Lcom/android/okhttp/Headers$Builder;

    invoke-virtual {v0}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/okhttp/internal/http/OkHeaders;->toMultimap(Lcom/android/okhttp/Headers;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 236
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access request header fields after connection is set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist core-platform-api test-api getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "field"    # Ljava/lang/String;

    .line 289
    if-nez p1, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 290
    :cond_4
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->requestHeaders:Lcom/android/okhttp/Headers$Builder;

    invoke-virtual {v0, p1}, Lcom/android/okhttp/Headers$Builder;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist core-platform-api test-api getResponseCode()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 542
    invoke-direct {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getResponse()Lcom/android/okhttp/internal/http/HttpEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Response;->code()I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api getResponseMessage()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 538
    invoke-direct {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getResponse()Lcom/android/okhttp/internal/http/HttpEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Response;->message()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api setConnectTimeout(I)V
    .registers 6
    .param p1, "timeoutMillis"    # I

    .line 294
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    int-to-long v1, p1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/okhttp/OkHttpClient;->setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 295
    return-void
.end method

.method public whitelist core-platform-api test-api setFixedLengthStreamingMode(I)V
    .registers 4
    .param p1, "contentLength"    # I

    .line 633
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->setFixedLengthStreamingMode(J)V

    .line 634
    return-void
.end method

.method public whitelist core-platform-api test-api setFixedLengthStreamingMode(J)V
    .registers 5
    .param p1, "contentLength"    # J

    .line 637
    iget-boolean v0, p0, Ljava/net/HttpURLConnection;->connected:Z

    if-nez v0, :cond_2b

    .line 638
    iget v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->chunkLength:I

    if-gtz v0, :cond_23

    .line 639
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1b

    .line 640
    iput-wide p1, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->fixedContentLength:J

    .line 641
    const-wide/32 v0, 0x7fffffff

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Ljava/net/HttpURLConnection;->fixedContentLength:I

    .line 642
    return-void

    .line 639
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "contentLength < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 638
    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already in chunked mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 637
    :cond_2b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api setIfModifiedSince(J)V
    .registers 8
    .param p1, "newValue"    # J

    .line 571
    invoke-super {p0, p1, p2}, Ljava/net/HttpURLConnection;->setIfModifiedSince(J)V

    .line 572
    iget-wide v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->ifModifiedSince:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "If-Modified-Since"

    if-eqz v0, :cond_1e

    .line 573
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->requestHeaders:Lcom/android/okhttp/Headers$Builder;

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->ifModifiedSince:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-static {v2}, Lcom/android/okhttp/internal/http/HttpDate;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/okhttp/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    goto :goto_23

    .line 575
    :cond_1e
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->requestHeaders:Lcom/android/okhttp/Headers$Builder;

    invoke-virtual {v0, v1}, Lcom/android/okhttp/Headers$Builder;->removeAll(Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    .line 577
    :goto_23
    return-void
.end method

.method public whitelist core-platform-api test-api setInstanceFollowRedirects(Z)V
    .registers 3
    .param p1, "followRedirects"    # Z

    .line 299
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v0, p1}, Lcom/android/okhttp/OkHttpClient;->setFollowRedirects(Z)V

    .line 300
    return-void
.end method

.method public whitelist core-platform-api test-api setReadTimeout(I)V
    .registers 6
    .param p1, "timeoutMillis"    # I

    .line 311
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    int-to-long v1, p1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/okhttp/OkHttpClient;->setReadTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 312
    return-void
.end method

.method public whitelist core-platform-api test-api setRequestMethod(Ljava/lang/String;)V
    .registers 5
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 626
    sget-object v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->METHODS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 629
    iput-object p1, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->method:Ljava/lang/String;

    .line 630
    return-void

    .line 627
    :cond_b
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected one of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->METHODS:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist core-platform-api test-api setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .line 546
    iget-boolean v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->connected:Z

    if-nez v0, :cond_4a

    .line 549
    if-eqz p1, :cond_42

    .line 552
    if-nez p2, :cond_26

    .line 558
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring header "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " because its value was null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/Platform;->logW(Ljava/lang/String;)V

    .line 559
    return-void

    .line 563
    :cond_26
    const-string v0, "X-Android-Transports"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    const-string v0, "X-Android-Protocols"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    goto :goto_3d

    .line 566
    :cond_37
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->requestHeaders:Lcom/android/okhttp/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    goto :goto_41

    .line 564
    :cond_3d
    :goto_3d
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->setProtocols(Ljava/lang/String;Z)V

    .line 568
    :goto_41
    return-void

    .line 550
    :cond_42
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "field == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 547
    :cond_4a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set request property after connection is made"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist core-platform-api test-api usingProxy()Z
    .registers 4

    .line 531
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->route:Lcom/android/okhttp/Route;

    if-eqz v0, :cond_9

    .line 532
    invoke-virtual {v0}, Lcom/android/okhttp/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    goto :goto_f

    .line 533
    :cond_9
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/android/okhttp/OkHttpClient;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    :goto_f
    nop

    .line 534
    .local v0, "proxy":Ljava/net/Proxy;
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v1, v2, :cond_1c

    const/4 v1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    return v1
.end method
