.class public Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;
.super Ljava/net/HttpURLConnection;
.source "HttpURLConnectionImpl.java"


# static fields
.field private static final EMPTY_REQUEST_BODY:Lcom/android/okhttp/RequestBody;

.field private static final METHODS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final client:Lcom/android/okhttp/OkHttpClient;

.field private fixedContentLength:J

.field private followUpCount:I

.field handshake:Lcom/android/okhttp/Handshake;

.field protected httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

.field protected httpEngineFailure:Ljava/io/IOException;

.field private requestHeaders:Lcom/android/okhttp/Headers$Builder;

.field private responseHeaders:Lcom/android/okhttp/Headers;

.field private route:Lcom/android/okhttp/Route;

.field private urlFilter:Lcom/android/okhttp/internal/URLFilter;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 83
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 84
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "OPTIONS"

    aput-object v2, v1, v4

    const-string/jumbo v2, "GET"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string/jumbo v2, "HEAD"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string/jumbo v2, "POST"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string/jumbo v2, "PUT"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "DELETE"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string/jumbo v2, "TRACE"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string/jumbo v2, "PATCH"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 83
    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->METHODS:Ljava/util/Set;

    .line 85
    new-array v0, v4, [B

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/android/okhttp/RequestBody;->create(Lcom/android/okhttp/MediaType;[B)Lcom/android/okhttp/RequestBody;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->EMPTY_REQUEST_BODY:Lcom/android/okhttp/RequestBody;

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lcom/android/okhttp/OkHttpClient;)V
    .registers 5
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "client"    # Lcom/android/okhttp/OkHttpClient;

    .prologue
    .line 114
    invoke-direct {p0, p1}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    .line 89
    new-instance v0, Lcom/android/okhttp/Headers$Builder;

    invoke-direct {v0}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->requestHeaders:Lcom/android/okhttp/Headers$Builder;

    .line 92
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->fixedContentLength:J

    .line 115
    iput-object p2, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    .line 116
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/internal/URLFilter;)V
    .registers 4
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "client"    # Lcom/android/okhttp/OkHttpClient;
    .param p3, "urlFilter"    # Lcom/android/okhttp/internal/URLFilter;

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;-><init>(Ljava/net/URL;Lcom/android/okhttp/OkHttpClient;)V

    .line 120
    iput-object p3, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->urlFilter:Lcom/android/okhttp/internal/URLFilter;

    .line 121
    return-void
.end method

.method private defaultUserAgent()Ljava/lang/String;
    .registers 3

    .prologue
    .line 390
    const-string/jumbo v1, "http.agent"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, "agent":Ljava/lang/String;
    if-eqz v0, :cond_e

    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->toHumanReadableAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_d
    return-object v1

    :cond_e
    invoke-static {}, Lcom/android/okhttp/internal/Version;->userAgent()Ljava/lang/String;

    move-result-object v1

    goto :goto_d
.end method

.method private execute(Z)Z
    .registers 13
    .param p1, "readResponse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 456
    const/4 v4, 0x1

    .line 457
    .local v4, "releaseConnection":Z
    iget-object v8, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->urlFilter:Lcom/android/okhttp/internal/URLFilter;

    if-eqz v8, :cond_15

    .line 458
    iget-object v8, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->urlFilter:Lcom/android/okhttp/internal/URLFilter;

    iget-object v9, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v9}, Lcom/android/okhttp/internal/http/HttpEngine;->getRequest()Lcom/android/okhttp/Request;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/android/okhttp/internal/URLFilter;->checkURLPermitted(Ljava/net/URL;)V

    .line 461
    :cond_15
    :try_start_15
    iget-object v8, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v8}, Lcom/android/okhttp/internal/http/HttpEngine;->sendRequest()V

    .line 462
    iget-object v8, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v8}, Lcom/android/okhttp/internal/http/HttpEngine;->getConnection()Lcom/android/okhttp/Connection;

    move-result-object v0

    .line 463
    .local v0, "connection":Lcom/android/okhttp/Connection;
    if-eqz v0, :cond_43

    .line 464
    invoke-interface {v0}, Lcom/android/okhttp/Connection;->getRoute()Lcom/android/okhttp/Route;

    move-result-object v8

    iput-object v8, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->route:Lcom/android/okhttp/Route;

    .line 465
    invoke-interface {v0}, Lcom/android/okhttp/Connection;->getHandshake()Lcom/android/okhttp/Handshake;

    move-result-object v8

    iput-object v8, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->handshake:Lcom/android/okhttp/Handshake;

    .line 470
    :goto_2e
    if-eqz p1, :cond_35

    .line 471
    iget-object v8, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v8}, Lcom/android/okhttp/internal/http/HttpEngine;->readResponse()V
    :try_end_35
    .catch Lcom/android/okhttp/internal/http/RequestException; {:try_start_15 .. :try_end_35} :catch_4a
    .catch Lcom/android/okhttp/internal/http/RouteException; {:try_start_15 .. :try_end_35} :catch_7a
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_35} :catch_5f
    .catchall {:try_start_15 .. :try_end_35} :catchall_52

    .line 473
    :cond_35
    const/4 v4, 0x0

    .line 475
    const/4 v8, 0x1

    .line 508
    if-eqz v4, :cond_42

    .line 509
    iget-object v9, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v9}, Lcom/android/okhttp/internal/http/HttpEngine;->close()Lcom/android/okhttp/internal/http/StreamAllocation;

    move-result-object v6

    .line 510
    .local v6, "streamAllocation":Lcom/android/okhttp/internal/http/StreamAllocation;
    invoke-virtual {v6}, Lcom/android/okhttp/internal/http/StreamAllocation;->release()V

    .line 475
    .end local v6    # "streamAllocation":Lcom/android/okhttp/internal/http/StreamAllocation;
    :cond_42
    return v8

    .line 467
    :cond_43
    const/4 v8, 0x0

    :try_start_44
    iput-object v8, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->route:Lcom/android/okhttp/Route;

    .line 468
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->handshake:Lcom/android/okhttp/Handshake;
    :try_end_49
    .catch Lcom/android/okhttp/internal/http/RequestException; {:try_start_44 .. :try_end_49} :catch_4a
    .catch Lcom/android/okhttp/internal/http/RouteException; {:try_start_44 .. :try_end_49} :catch_7a
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_49} :catch_5f
    .catchall {:try_start_44 .. :try_end_49} :catchall_52

    goto :goto_2e

    .line 476
    .end local v0    # "connection":Lcom/android/okhttp/Connection;
    :catch_4a
    move-exception v1

    .line 478
    .local v1, "e":Lcom/android/okhttp/internal/http/RequestException;
    :try_start_4b
    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/RequestException;->getCause()Ljava/io/IOException;

    move-result-object v7

    .line 479
    .local v7, "toThrow":Ljava/io/IOException;
    iput-object v7, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    .line 480
    throw v7
    :try_end_52
    .catchall {:try_start_4b .. :try_end_52} :catchall_52

    .line 506
    .end local v1    # "e":Lcom/android/okhttp/internal/http/RequestException;
    .end local v7    # "toThrow":Ljava/io/IOException;
    :catchall_52
    move-exception v8

    .line 508
    if-eqz v4, :cond_5e

    .line 509
    iget-object v9, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v9}, Lcom/android/okhttp/internal/http/HttpEngine;->close()Lcom/android/okhttp/internal/http/StreamAllocation;

    move-result-object v6

    .line 510
    .restart local v6    # "streamAllocation":Lcom/android/okhttp/internal/http/StreamAllocation;
    invoke-virtual {v6}, Lcom/android/okhttp/internal/http/StreamAllocation;->release()V

    .line 506
    .end local v6    # "streamAllocation":Lcom/android/okhttp/internal/http/StreamAllocation;
    :cond_5e
    throw v8

    .line 494
    :catch_5f
    move-exception v3

    .line 496
    .local v3, "e":Ljava/io/IOException;
    :try_start_60
    iget-object v8, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v8, v3}, Lcom/android/okhttp/internal/http/HttpEngine;->recover(Ljava/io/IOException;)Lcom/android/okhttp/internal/http/HttpEngine;

    move-result-object v5

    .line 497
    .local v5, "retryEngine":Lcom/android/okhttp/internal/http/HttpEngine;
    if-eqz v5, :cond_77

    .line 498
    const/4 v4, 0x0

    .line 499
    iput-object v5, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;
    :try_end_6b
    .catchall {:try_start_60 .. :try_end_6b} :catchall_52

    .line 508
    if-eqz v4, :cond_76

    .line 509
    iget-object v8, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v8}, Lcom/android/okhttp/internal/http/HttpEngine;->close()Lcom/android/okhttp/internal/http/StreamAllocation;

    move-result-object v6

    .line 510
    .restart local v6    # "streamAllocation":Lcom/android/okhttp/internal/http/StreamAllocation;
    invoke-virtual {v6}, Lcom/android/okhttp/internal/http/StreamAllocation;->release()V

    .line 500
    .end local v6    # "streamAllocation":Lcom/android/okhttp/internal/http/StreamAllocation;
    :cond_76
    return v10

    .line 504
    :cond_77
    :try_start_77
    iput-object v3, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    .line 505
    throw v3

    .line 481
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "retryEngine":Lcom/android/okhttp/internal/http/HttpEngine;
    :catch_7a
    move-exception v2

    .line 483
    .local v2, "e":Lcom/android/okhttp/internal/http/RouteException;
    iget-object v8, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v8, v2}, Lcom/android/okhttp/internal/http/HttpEngine;->recover(Lcom/android/okhttp/internal/http/RouteException;)Lcom/android/okhttp/internal/http/HttpEngine;

    move-result-object v5

    .line 484
    .restart local v5    # "retryEngine":Lcom/android/okhttp/internal/http/HttpEngine;
    if-eqz v5, :cond_92

    .line 485
    const/4 v4, 0x0

    .line 486
    iput-object v5, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;
    :try_end_86
    .catchall {:try_start_77 .. :try_end_86} :catchall_52

    .line 508
    if-eqz v4, :cond_91

    .line 509
    iget-object v8, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v8}, Lcom/android/okhttp/internal/http/HttpEngine;->close()Lcom/android/okhttp/internal/http/StreamAllocation;

    move-result-object v6

    .line 510
    .restart local v6    # "streamAllocation":Lcom/android/okhttp/internal/http/StreamAllocation;
    invoke-virtual {v6}, Lcom/android/okhttp/internal/http/StreamAllocation;->release()V

    .line 487
    .end local v6    # "streamAllocation":Lcom/android/okhttp/internal/http/StreamAllocation;
    :cond_91
    return v10

    .line 491
    :cond_92
    :try_start_92
    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v7

    .line 492
    .restart local v7    # "toThrow":Ljava/io/IOException;
    iput-object v7, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    .line 493
    throw v7
    :try_end_99
    .catchall {:try_start_92 .. :try_end_99} :catchall_52
.end method

.method private getHeaders()Lcom/android/okhttp/Headers;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    iget-object v2, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->responseHeaders:Lcom/android/okhttp/Headers;

    if-nez v2, :cond_32

    .line 163
    invoke-direct {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getResponse()Lcom/android/okhttp/internal/http/HttpEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    move-result-object v1

    .line 164
    .local v1, "response":Lcom/android/okhttp/Response;
    invoke-virtual {v1}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v0

    .line 165
    .local v0, "headers":Lcom/android/okhttp/Headers;
    invoke-virtual {v0}, Lcom/android/okhttp/Headers;->newBuilder()Lcom/android/okhttp/Headers$Builder;

    move-result-object v2

    .line 166
    sget-object v3, Lcom/android/okhttp/internal/http/OkHeaders;->SELECTED_PROTOCOL:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/okhttp/Response;->protocol()Lcom/android/okhttp/Protocol;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/okhttp/Protocol;->toString()Ljava/lang/String;

    move-result-object v4

    .line 165
    invoke-virtual {v2, v3, v4}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    move-result-object v2

    .line 167
    sget-object v3, Lcom/android/okhttp/internal/http/OkHeaders;->RESPONSE_SOURCE:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->responseSourceHeader(Lcom/android/okhttp/Response;)Ljava/lang/String;

    move-result-object v4

    .line 165
    invoke-virtual {v2, v3, v4}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v2

    iput-object v2, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->responseHeaders:Lcom/android/okhttp/Headers;

    .line 170
    .end local v0    # "headers":Lcom/android/okhttp/Headers;
    .end local v1    # "response":Lcom/android/okhttp/Response;
    :cond_32
    iget-object v2, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->responseHeaders:Lcom/android/okhttp/Headers;

    return-object v2
.end method

.method private getResponse()Lcom/android/okhttp/internal/http/HttpEngine;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 400
    invoke-direct {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->initHttpEngine()V

    .line 402
    iget-object v4, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v4}, Lcom/android/okhttp/internal/http/HttpEngine;->hasResponse()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 403
    iget-object v4, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    return-object v4

    .line 407
    :cond_e
    :goto_e
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->execute(Z)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 411
    iget-object v4, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v4}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    move-result-object v2

    .line 412
    .local v2, "response":Lcom/android/okhttp/Response;
    iget-object v4, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v4}, Lcom/android/okhttp/internal/http/HttpEngine;->followUpRequest()Lcom/android/okhttp/Request;

    move-result-object v0

    .line 414
    .local v0, "followUp":Lcom/android/okhttp/Request;
    if-nez v0, :cond_2b

    .line 415
    iget-object v4, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v4}, Lcom/android/okhttp/internal/http/HttpEngine;->releaseStreamAllocation()V

    .line 416
    iget-object v4, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    return-object v4

    .line 419
    :cond_2b
    iget v4, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->followUpCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->followUpCount:I

    const/16 v5, 0x14

    if-le v4, v5, :cond_51

    .line 420
    new-instance v4, Ljava/net/ProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Too many follow-up requests: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->followUpCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 424
    :cond_51
    invoke-virtual {v0}, Lcom/android/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v4

    iput-object v4, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->url:Ljava/net/URL;

    .line 425
    invoke-virtual {v0}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/okhttp/Headers;->newBuilder()Lcom/android/okhttp/Headers$Builder;

    move-result-object v4

    iput-object v4, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->requestHeaders:Lcom/android/okhttp/Headers$Builder;

    .line 430
    iget-object v4, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v4}, Lcom/android/okhttp/internal/http/HttpEngine;->getRequestBody()Lcom/android/okhttp/okio/Sink;

    move-result-object v1

    .line 431
    .local v1, "requestBody":Lcom/android/okhttp/okio/Sink;
    invoke-virtual {v0}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->method:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_74

    .line 432
    const/4 v1, 0x0

    .line 435
    .end local v1    # "requestBody":Lcom/android/okhttp/okio/Sink;
    :cond_74
    if-eqz v1, :cond_87

    instance-of v4, v1, Lcom/android/okhttp/internal/http/RetryableSink;

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_87

    .line 436
    new-instance v4, Ljava/net/HttpRetryException;

    const-string/jumbo v5, "Cannot retry streamed HTTP body"

    iget v6, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->responseCode:I

    invoke-direct {v4, v5, v6}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 439
    :cond_87
    iget-object v4, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v4}, Lcom/android/okhttp/internal/http/HttpEngine;->close()Lcom/android/okhttp/internal/http/StreamAllocation;

    move-result-object v3

    .line 440
    .local v3, "streamAllocation":Lcom/android/okhttp/internal/http/StreamAllocation;
    iget-object v4, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/okhttp/internal/http/HttpEngine;->sameConnection(Lcom/android/okhttp/HttpUrl;)Z

    move-result v4

    if-nez v4, :cond_9d

    .line 441
    invoke-virtual {v3}, Lcom/android/okhttp/internal/http/StreamAllocation;->release()V

    .line 442
    const/4 v3, 0x0

    .line 445
    .end local v3    # "streamAllocation":Lcom/android/okhttp/internal/http/StreamAllocation;
    :cond_9d
    invoke-virtual {v0}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v4

    check-cast v1, Lcom/android/okhttp/internal/http/RetryableSink;

    invoke-direct {p0, v4, v3, v1, v2}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->newHttpEngine(Ljava/lang/String;Lcom/android/okhttp/internal/http/StreamAllocation;Lcom/android/okhttp/internal/http/RetryableSink;Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/HttpEngine;

    move-result-object v4

    iput-object v4, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    goto/16 :goto_e
.end method

.method private initHttpEngine()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 315
    iget-object v1, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    if-eqz v1, :cond_7

    .line 316
    iget-object v1, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    throw v1

    .line 317
    :cond_7
    iget-object v1, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    if-eqz v1, :cond_c

    .line 318
    return-void

    .line 321
    :cond_c
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->connected:Z

    .line 323
    :try_start_f
    iget-boolean v1, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->doOutput:Z

    if-eqz v1, :cond_23

    .line 324
    iget-object v1, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->method:Ljava/lang/String;

    const-string/jumbo v2, "GET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 326
    const-string/jumbo v1, "POST"

    iput-object v1, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->method:Ljava/lang/String;

    .line 332
    :cond_23
    iget-object v1, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->method:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->newHttpEngine(Ljava/lang/String;Lcom/android/okhttp/internal/http/StreamAllocation;Lcom/android/okhttp/internal/http/RetryableSink;Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/HttpEngine;

    move-result-object v1

    iput-object v1, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    .line 337
    return-void

    .line 327
    :cond_2f
    iget-object v1, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->method:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/okhttp/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 328
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->method:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " does not support writing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_53} :catch_53

    .line 333
    :catch_53
    move-exception v0

    .line 334
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    .line 335
    throw v0
.end method

.method private newHttpEngine(Ljava/lang/String;Lcom/android/okhttp/internal/http/StreamAllocation;Lcom/android/okhttp/internal/http/RetryableSink;Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/HttpEngine;
    .registers 23
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

    .prologue
    .line 343
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/internal/http/HttpMethod;->requiresRequestBody(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 344
    sget-object v15, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->EMPTY_REQUEST_BODY:Lcom/android/okhttp/RequestBody;

    .line 346
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    move-result-object v17

    .line 347
    .local v17, "url":Ljava/net/URL;
    sget-object v2, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/okhttp/internal/Internal;->getHttpUrlChecked(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl;

    move-result-object v13

    .line 348
    .local v13, "httpUrl":Lcom/android/okhttp/HttpUrl;
    new-instance v2, Lcom/android/okhttp/Request$Builder;

    invoke-direct {v2}, Lcom/android/okhttp/Request$Builder;-><init>()V

    invoke-virtual {v2, v13}, Lcom/android/okhttp/Request$Builder;->url(Lcom/android/okhttp/HttpUrl;)Lcom/android/okhttp/Request$Builder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v15}, Lcom/android/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;

    move-result-object v11

    .line 351
    .local v11, "builder":Lcom/android/okhttp/Request$Builder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->requestHeaders:Lcom/android/okhttp/Headers$Builder;

    invoke-virtual {v2}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v12

    .line 352
    .local v12, "headers":Lcom/android/okhttp/Headers;
    const/4 v14, 0x0

    .local v14, "i":I
    invoke-virtual {v12}, Lcom/android/okhttp/Headers;->size()I

    move-result v16

    .local v16, "size":I
    :goto_32
    move/from16 v0, v16

    if-ge v14, v0, :cond_46

    .line 353
    invoke-virtual {v12, v14}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v14}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v2, v6}, Lcom/android/okhttp/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 352
    add-int/lit8 v14, v14, 0x1

    goto :goto_32

    .line 345
    .end local v11    # "builder":Lcom/android/okhttp/Request$Builder;
    .end local v12    # "headers":Lcom/android/okhttp/Headers;
    .end local v13    # "httpUrl":Lcom/android/okhttp/HttpUrl;
    .end local v14    # "i":I
    .end local v16    # "size":I
    .end local v17    # "url":Ljava/net/URL;
    :cond_44
    const/4 v15, 0x0

    .local v15, "placeholderBody":Lcom/android/okhttp/RequestBody;
    goto :goto_8

    .line 356
    .end local v15    # "placeholderBody":Lcom/android/okhttp/RequestBody;
    .restart local v11    # "builder":Lcom/android/okhttp/Request$Builder;
    .restart local v12    # "headers":Lcom/android/okhttp/Headers;
    .restart local v13    # "httpUrl":Lcom/android/okhttp/HttpUrl;
    .restart local v14    # "i":I
    .restart local v16    # "size":I
    .restart local v17    # "url":Ljava/net/URL;
    :cond_46
    const/4 v5, 0x0

    .line 357
    .local v5, "bufferRequestBody":Z
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_77

    .line 359
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->fixedContentLength:J

    const-wide/16 v8, -0x1

    cmp-long v2, v6, v8

    if-eqz v2, :cond_bd

    .line 360
    const-string/jumbo v2, "Content-Length"

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->fixedContentLength:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v2, v6}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 368
    :goto_65
    const-string/jumbo v2, "Content-Type"

    invoke-virtual {v12, v2}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_77

    .line 369
    const-string/jumbo v2, "Content-Type"

    const-string/jumbo v6, "application/x-www-form-urlencoded"

    invoke-virtual {v11, v2, v6}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 373
    :cond_77
    const-string/jumbo v2, "User-Agent"

    invoke-virtual {v12, v2}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8a

    .line 374
    const-string/jumbo v2, "User-Agent"

    invoke-direct/range {p0 .. p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->defaultUserAgent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v2, v6}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 377
    :cond_8a
    invoke-virtual {v11}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    move-result-object v4

    .line 380
    .local v4, "request":Lcom/android/okhttp/Request;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    .line 381
    .local v3, "engineClient":Lcom/android/okhttp/OkHttpClient;
    sget-object v2, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/Internal;->internalCache(Lcom/android/okhttp/OkHttpClient;)Lcom/android/okhttp/internal/InternalCache;

    move-result-object v2

    if-eqz v2, :cond_af

    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getUseCaches()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_af

    .line 382
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v2}, Lcom/android/okhttp/OkHttpClient;->clone()Lcom/android/okhttp/OkHttpClient;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/android/okhttp/OkHttpClient;->setCache(Lcom/android/okhttp/Cache;)Lcom/android/okhttp/OkHttpClient;

    move-result-object v3

    .line 385
    :cond_af
    new-instance v2, Lcom/android/okhttp/internal/http/HttpEngine;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-direct/range {v2 .. v10}, Lcom/android/okhttp/internal/http/HttpEngine;-><init>(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/Request;ZZZLcom/android/okhttp/internal/http/StreamAllocation;Lcom/android/okhttp/internal/http/RetryableSink;Lcom/android/okhttp/Response;)V

    return-object v2

    .line 361
    .end local v3    # "engineClient":Lcom/android/okhttp/OkHttpClient;
    .end local v4    # "request":Lcom/android/okhttp/Request;
    :cond_bd
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->chunkLength:I

    if-lez v2, :cond_cd

    .line 362
    const-string/jumbo v2, "Transfer-Encoding"

    const-string/jumbo v6, "chunked"

    invoke-virtual {v11, v2, v6}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    goto :goto_65

    .line 364
    :cond_cd
    const/4 v5, 0x1

    goto :goto_65
.end method

.method private static responseSourceHeader(Lcom/android/okhttp/Response;)Ljava/lang/String;
    .registers 3
    .param p0, "response"    # Lcom/android/okhttp/Response;

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->networkResponse()Lcom/android/okhttp/Response;

    move-result-object v0

    if-nez v0, :cond_29

    .line 175
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->cacheResponse()Lcom/android/okhttp/Response;

    move-result-object v0

    if-nez v0, :cond_10

    .line 176
    const-string/jumbo v0, "NONE"

    return-object v0

    .line 178
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CACHE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/okhttp/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 180
    :cond_29
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->cacheResponse()Lcom/android/okhttp/Response;

    move-result-object v0

    if-nez v0, :cond_48

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NETWORK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/okhttp/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 183
    :cond_48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CONDITIONAL_CACHE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/okhttp/Response;->networkResponse()Lcom/android/okhttp/Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setProtocols(Ljava/lang/String;Z)V
    .registers 10
    .param p1, "protocolsString"    # Ljava/lang/String;
    .param p2, "append"    # Z

    .prologue
    .line 607
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 608
    .local v2, "protocolsList":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/Protocol;>;"
    if-eqz p2, :cond_10

    .line 609
    iget-object v3, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v3}, Lcom/android/okhttp/OkHttpClient;->getProtocols()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 611
    :cond_10
    const-string/jumbo v3, ","

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    array-length v5, v4

    :goto_1a
    if-ge v3, v5, :cond_2f

    aget-object v1, v4, v3

    .line 613
    .local v1, "protocol":Ljava/lang/String;
    :try_start_1e
    invoke-static {v1}, Lcom/android/okhttp/Protocol;->get(Ljava/lang/String;)Lcom/android/okhttp/Protocol;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_25} :catch_28

    .line 611
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 614
    :catch_28
    move-exception v0

    .line 615
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 618
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "protocol":Ljava/lang/String;
    :cond_2f
    iget-object v3, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v3, v2}, Lcom/android/okhttp/OkHttpClient;->setProtocols(Ljava/util/List;)Lcom/android/okhttp/OkHttpClient;

    .line 619
    return-void
.end method


# virtual methods
.method public final addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 576
    iget-boolean v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->connected:Z

    if-eqz v0, :cond_d

    .line 577
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot add request property after connection is made"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 579
    :cond_d
    if-nez p1, :cond_18

    .line 580
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "field == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 582
    :cond_18
    if-nez p2, :cond_3d

    .line 588
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ignoring header "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " because its value was null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/Platform;->logW(Ljava/lang/String;)V

    .line 589
    return-void

    .line 593
    :cond_3d
    const-string/jumbo v0, "X-Android-Transports"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    const-string/jumbo v0, "X-Android-Protocols"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 594
    :cond_4f
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->setProtocols(Ljava/lang/String;Z)V

    .line 598
    :goto_53
    return-void

    .line 596
    :cond_54
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->requestHeaders:Lcom/android/okhttp/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    goto :goto_53
.end method

.method public final connect()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->initHttpEngine()V

    .line 127
    :cond_3
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->execute(Z)Z

    move-result v0

    .line 128
    .local v0, "success":Z
    if-eqz v0, :cond_3

    .line 129
    return-void
.end method

.method public final disconnect()V
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    if-nez v0, :cond_5

    return-void

    .line 135
    :cond_5
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->cancel()V

    .line 142
    return-void
.end method

.method public getConnectTimeout()I
    .registers 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/android/okhttp/OkHttpClient;->getConnectTimeout()I

    move-result v0

    return v0
.end method

.method public final getErrorStream()Ljava/io/InputStream;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 150
    :try_start_1
    invoke-direct {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getResponse()Lcom/android/okhttp/internal/http/HttpEngine;

    move-result-object v1

    .line 151
    .local v1, "response":Lcom/android/okhttp/internal/http/HttpEngine;
    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    move-result-object v2

    invoke-static {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->hasBody(Lcom/android/okhttp/Response;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 152
    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okhttp/Response;->code()I

    move-result v2

    const/16 v3, 0x190

    if-lt v2, v3, :cond_28

    .line 153
    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okhttp/ResponseBody;->byteStream()Ljava/io/InputStream;
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_26} :catch_29

    move-result-object v2

    return-object v2

    .line 155
    :cond_28
    return-object v4

    .line 156
    .end local v1    # "response":Lcom/android/okhttp/internal/http/HttpEngine;
    :catch_29
    move-exception v0

    .line 157
    .local v0, "e":Ljava/io/IOException;
    return-object v4
.end method

.method public final getHeaderField(I)Ljava/lang/String;
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 192
    :try_start_0
    invoke-direct {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getHeaders()Lcom/android/okhttp/Headers;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    return-object v1

    .line 193
    :catch_9
    move-exception v0

    .line 194
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public final getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 205
    if-nez p1, :cond_14

    .line 206
    :try_start_3
    invoke-direct {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getResponse()Lcom/android/okhttp/internal/http/HttpEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    move-result-object v1

    invoke-static {v1}, Lcom/android/okhttp/internal/http/StatusLine;->get(Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/StatusLine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/StatusLine;->toString()Ljava/lang/String;

    move-result-object v1

    .line 205
    :goto_13
    return-object v1

    .line 207
    :cond_14
    invoke-direct {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getHeaders()Lcom/android/okhttp/Headers;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_1b} :catch_1d

    move-result-object v1

    goto :goto_13

    .line 208
    :catch_1d
    move-exception v0

    .line 209
    .local v0, "e":Ljava/io/IOException;
    return-object v2
.end method

.method public final getHeaderFieldKey(I)Ljava/lang/String;
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 215
    :try_start_0
    invoke-direct {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getHeaders()Lcom/android/okhttp/Headers;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    return-object v1

    .line 216
    :catch_9
    move-exception v0

    .line 217
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public final getHeaderFields()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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
    .line 223
    :try_start_0
    invoke-direct {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getHeaders()Lcom/android/okhttp/Headers;

    move-result-object v1

    .line 224
    invoke-direct {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getResponse()Lcom/android/okhttp/internal/http/HttpEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    move-result-object v2

    invoke-static {v2}, Lcom/android/okhttp/internal/http/StatusLine;->get(Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/StatusLine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/StatusLine;->toString()Ljava/lang/String;

    move-result-object v2

    .line 223
    invoke-static {v1, v2}, Lcom/android/okhttp/internal/http/OkHeaders;->toMultimap(Lcom/android/okhttp/Headers;Ljava/lang/String;)Ljava/util/Map;
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_17} :catch_19

    move-result-object v1

    return-object v1

    .line 225
    :catch_19
    move-exception v0

    .line 226
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    iget-boolean v1, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->doInput:Z

    if-nez v1, :cond_d

    .line 241
    new-instance v1, Ljava/net/ProtocolException;

    const-string/jumbo v2, "This protocol does not support input"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 244
    :cond_d
    invoke-direct {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getResponse()Lcom/android/okhttp/internal/http/HttpEngine;

    move-result-object v0

    .line 250
    .local v0, "response":Lcom/android/okhttp/internal/http/HttpEngine;
    invoke-virtual {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getResponseCode()I

    move-result v1

    const/16 v2, 0x190

    if-lt v1, v2, :cond_25

    .line 251
    new-instance v1, Ljava/io/FileNotFoundException;

    iget-object v2, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 254
    :cond_25
    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method

.method public getInstanceFollowRedirects()Z
    .registers 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/android/okhttp/OkHttpClient;->getFollowRedirects()Z

    move-result v0

    return v0
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->connect()V

    .line 260
    iget-object v1, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/HttpEngine;->getBufferedRequestBody()Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v0

    .line 261
    .local v0, "sink":Lcom/android/okhttp/okio/BufferedSink;
    if-nez v0, :cond_27

    .line 262
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "method does not support a request body: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->method:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 263
    :cond_27
    iget-object v1, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/HttpEngine;->hasResponse()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 264
    new-instance v1, Ljava/net/ProtocolException;

    const-string/jumbo v2, "cannot write request body after response has been read"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 267
    :cond_38
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->outputStream()Ljava/io/OutputStream;

    move-result-object v1

    return-object v1
.end method

.method public final getPermission()Ljava/security/Permission;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    move-result-object v3

    .line 272
    .local v3, "url":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "hostName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/net/URL;->getPort()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4e

    .line 274
    invoke-virtual {v3}, Ljava/net/URL;->getPort()I

    move-result v1

    .line 276
    .local v1, "hostPort":I
    :goto_13
    invoke-virtual {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->usingProxy()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 277
    iget-object v4, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v4}, Lcom/android/okhttp/OkHttpClient;->getProxy()Ljava/net/Proxy;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    check-cast v2, Ljava/net/InetSocketAddress;

    .line 278
    .local v2, "proxyAddress":Ljava/net/InetSocketAddress;
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 279
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    .line 281
    .end local v2    # "proxyAddress":Ljava/net/InetSocketAddress;
    :cond_2d
    new-instance v4, Ljava/net/SocketPermission;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "connect, resolve"

    invoke-direct {v4, v5, v6}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 275
    .end local v1    # "hostPort":I
    :cond_4e
    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/okhttp/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v1

    .restart local v1    # "hostPort":I
    goto :goto_13
.end method

.method public getReadTimeout()I
    .registers 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/android/okhttp/OkHttpClient;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public final getRequestProperties()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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
    .line 231
    iget-boolean v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->connected:Z

    if-eqz v0, :cond_d

    .line 232
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 233
    const-string/jumbo v1, "Cannot access request header fields after connection is set"

    .line 232
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_d
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->requestHeaders:Lcom/android/okhttp/Headers$Builder;

    invoke-virtual {v0}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/okhttp/internal/http/OkHeaders;->toMultimap(Lcom/android/okhttp/Headers;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 285
    if-nez p1, :cond_4

    return-object v0

    .line 286
    :cond_4
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->requestHeaders:Lcom/android/okhttp/Headers$Builder;

    invoke-virtual {v0, p1}, Lcom/android/okhttp/Headers$Builder;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getResponseCode()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 538
    invoke-direct {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getResponse()Lcom/android/okhttp/internal/http/HttpEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Response;->code()I

    move-result v0

    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 534
    invoke-direct {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getResponse()Lcom/android/okhttp/internal/http/HttpEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Response;->message()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setConnectTimeout(I)V
    .registers 6
    .param p1, "timeoutMillis"    # I

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    int-to-long v2, p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/okhttp/OkHttpClient;->setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 291
    return-void
.end method

.method public setFixedLengthStreamingMode(I)V
    .registers 4
    .param p1, "contentLength"    # I

    .prologue
    .line 629
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->setFixedLengthStreamingMode(J)V

    .line 630
    return-void
.end method

.method public setFixedLengthStreamingMode(J)V
    .registers 6
    .param p1, "contentLength"    # J

    .prologue
    .line 633
    iget-boolean v0, p0, Ljava/net/HttpURLConnection;->connected:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 634
    :cond_d
    iget v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->chunkLength:I

    if-lez v0, :cond_1a

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already in chunked mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 635
    :cond_1a
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_29

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "contentLength < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 636
    :cond_29
    iput-wide p1, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->fixedContentLength:J

    .line 637
    const-wide/32 v0, 0x7fffffff

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Ljava/net/HttpURLConnection;->fixedContentLength:I

    .line 638
    return-void
.end method

.method public setIfModifiedSince(J)V
    .registers 10
    .param p1, "newValue"    # J

    .prologue
    .line 567
    invoke-super {p0, p1, p2}, Ljava/net/HttpURLConnection;->setIfModifiedSince(J)V

    .line 568
    iget-wide v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->ifModifiedSince:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1f

    .line 569
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->requestHeaders:Lcom/android/okhttp/Headers$Builder;

    const-string/jumbo v1, "If-Modified-Since"

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->ifModifiedSince:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {v2}, Lcom/android/okhttp/internal/http/HttpDate;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/okhttp/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    .line 573
    :goto_1e
    return-void

    .line 571
    :cond_1f
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->requestHeaders:Lcom/android/okhttp/Headers$Builder;

    const-string/jumbo v1, "If-Modified-Since"

    invoke-virtual {v0, v1}, Lcom/android/okhttp/Headers$Builder;->removeAll(Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    goto :goto_1e
.end method

.method public setInstanceFollowRedirects(Z)V
    .registers 3
    .param p1, "followRedirects"    # Z

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v0, p1}, Lcom/android/okhttp/OkHttpClient;->setFollowRedirects(Z)V

    .line 296
    return-void
.end method

.method public setReadTimeout(I)V
    .registers 6
    .param p1, "timeoutMillis"    # I

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    int-to-long v2, p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/okhttp/OkHttpClient;->setReadTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 308
    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .registers 5
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    .line 622
    sget-object v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->METHODS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 623
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Expected one of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->METHODS:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 625
    :cond_2f
    iput-object p1, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->method:Ljava/lang/String;

    .line 626
    return-void
.end method

.method public final setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 542
    iget-boolean v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->connected:Z

    if-eqz v0, :cond_d

    .line 543
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot set request property after connection is made"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 545
    :cond_d
    if-nez p1, :cond_18

    .line 546
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "field == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 548
    :cond_18
    if-nez p2, :cond_3d

    .line 554
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ignoring header "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " because its value was null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/Platform;->logW(Ljava/lang/String;)V

    .line 555
    return-void

    .line 559
    :cond_3d
    const-string/jumbo v0, "X-Android-Transports"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    const-string/jumbo v0, "X-Android-Protocols"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 560
    :cond_4f
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->setProtocols(Ljava/lang/String;Z)V

    .line 564
    :goto_53
    return-void

    .line 562
    :cond_54
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->requestHeaders:Lcom/android/okhttp/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    goto :goto_53
.end method

.method public final usingProxy()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 527
    iget-object v2, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->route:Lcom/android/okhttp/Route;

    if-eqz v2, :cond_17

    .line 528
    iget-object v2, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->route:Lcom/android/okhttp/Route;

    invoke-virtual {v2}, Lcom/android/okhttp/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    .line 530
    .local v0, "proxy":Ljava/net/Proxy;
    :goto_b
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v2, v3, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1

    .line 529
    .end local v0    # "proxy":Ljava/net/Proxy;
    :cond_17
    iget-object v2, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v2}, Lcom/android/okhttp/OkHttpClient;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    .restart local v0    # "proxy":Ljava/net/Proxy;
    goto :goto_b
.end method
