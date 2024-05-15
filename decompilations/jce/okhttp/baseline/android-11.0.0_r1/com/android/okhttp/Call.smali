.class public Lcom/android/okhttp/Call;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/Call$ApplicationInterceptorChain;,
        Lcom/android/okhttp/Call$AsyncCall;
    }
.end annotation


# instance fields
.field volatile greylist-max-o canceled:Z

.field private final greylist-max-o client:Lcom/android/okhttp/OkHttpClient;

.field greylist-max-o engine:Lcom/android/okhttp/internal/http/HttpEngine;

.field private greylist-max-o executed:Z

.field greylist-max-o originalRequest:Lcom/android/okhttp/Request;


# direct methods
.method protected constructor greylist-max-o <init>(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/Request;)V
    .registers 4
    .param p1, "client"    # Lcom/android/okhttp/OkHttpClient;
    .param p2, "originalRequest"    # Lcom/android/okhttp/Request;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Lcom/android/okhttp/OkHttpClient;->copyWithDefaults()Lcom/android/okhttp/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Call;->client:Lcom/android/okhttp/OkHttpClient;

    .line 52
    iput-object p2, p0, Lcom/android/okhttp/Call;->originalRequest:Lcom/android/okhttp/Request;

    .line 53
    return-void
.end method

.method static synthetic blacklist access$100(Lcom/android/okhttp/Call;Z)Lcom/android/okhttp/Response;
    .registers 3
    .param p0, "x0"    # Lcom/android/okhttp/Call;
    .param p1, "x1"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1}, Lcom/android/okhttp/Call;->getResponseWithInterceptorChain(Z)Lcom/android/okhttp/Response;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$200(Lcom/android/okhttp/Call;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/Call;

    .line 37
    invoke-direct {p0}, Lcom/android/okhttp/Call;->toLoggableString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$300(Lcom/android/okhttp/Call;)Lcom/android/okhttp/OkHttpClient;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/Call;

    .line 37
    iget-object v0, p0, Lcom/android/okhttp/Call;->client:Lcom/android/okhttp/OkHttpClient;

    return-object v0
.end method

.method private greylist-max-o getResponseWithInterceptorChain(Z)Lcom/android/okhttp/Response;
    .registers 5
    .param p1, "forWebSocket"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    new-instance v0, Lcom/android/okhttp/Call$ApplicationInterceptorChain;

    iget-object v1, p0, Lcom/android/okhttp/Call;->originalRequest:Lcom/android/okhttp/Request;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1, p1}, Lcom/android/okhttp/Call$ApplicationInterceptorChain;-><init>(Lcom/android/okhttp/Call;ILcom/android/okhttp/Request;Z)V

    .line 207
    .local v0, "chain":Lcom/android/okhttp/Interceptor$Chain;
    iget-object v1, p0, Lcom/android/okhttp/Call;->originalRequest:Lcom/android/okhttp/Request;

    invoke-interface {v0, v1}, Lcom/android/okhttp/Interceptor$Chain;->proceed(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o toLoggableString()Ljava/lang/String;
    .registers 5

    .line 200
    iget-boolean v0, p0, Lcom/android/okhttp/Call;->canceled:Z

    if-eqz v0, :cond_7

    const-string v0, "canceled call"

    goto :goto_9

    :cond_7
    const-string v0, "call"

    .line 201
    .local v0, "string":Ljava/lang/String;
    :goto_9
    iget-object v1, p0, Lcom/android/okhttp/Call;->originalRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v1}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v1

    const-string v2, "/..."

    invoke-virtual {v1, v2}, Lcom/android/okhttp/HttpUrl;->resolve(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl;

    move-result-object v1

    .line 202
    .local v1, "redactedUrl":Lcom/android/okhttp/HttpUrl;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public greylist-max-o cancel()V
    .registers 2

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/okhttp/Call;->canceled:Z

    .line 125
    iget-object v0, p0, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->cancel()V

    .line 126
    :cond_a
    return-void
.end method

.method public greylist-max-o enqueue(Lcom/android/okhttp/Callback;)V
    .registers 3
    .param p1, "responseCallback"    # Lcom/android/okhttp/Callback;

    .line 108
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/okhttp/Call;->enqueue(Lcom/android/okhttp/Callback;Z)V

    .line 109
    return-void
.end method

.method greylist-max-o enqueue(Lcom/android/okhttp/Callback;Z)V
    .registers 6
    .param p1, "responseCallback"    # Lcom/android/okhttp/Callback;
    .param p2, "forWebSocket"    # Z

    .line 112
    monitor-enter p0

    .line 113
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/Call;->executed:Z

    if-nez v0, :cond_19

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/okhttp/Call;->executed:Z

    .line 115
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_21

    .line 116
    iget-object v0, p0, Lcom/android/okhttp/Call;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/android/okhttp/OkHttpClient;->getDispatcher()Lcom/android/okhttp/Dispatcher;

    move-result-object v0

    new-instance v1, Lcom/android/okhttp/Call$AsyncCall;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/okhttp/Call$AsyncCall;-><init>(Lcom/android/okhttp/Call;Lcom/android/okhttp/Callback;ZLcom/android/okhttp/Call$1;)V

    invoke-virtual {v0, v1}, Lcom/android/okhttp/Dispatcher;->enqueue(Lcom/android/okhttp/Call$AsyncCall;)V

    .line 117
    return-void

    .line 113
    :cond_19
    :try_start_19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/okhttp/Call;
    .end local p1    # "responseCallback":Lcom/android/okhttp/Callback;
    .end local p2    # "forWebSocket":Z
    throw v0

    .line 115
    .restart local p0    # "this":Lcom/android/okhttp/Call;
    .restart local p1    # "responseCallback":Lcom/android/okhttp/Callback;
    .restart local p2    # "forWebSocket":Z
    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public greylist-max-o execute()Lcom/android/okhttp/Response;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    monitor-enter p0

    .line 77
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/Call;->executed:Z

    if-nez v0, :cond_37

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/okhttp/Call;->executed:Z

    .line 79
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_3f

    .line 81
    :try_start_9
    iget-object v0, p0, Lcom/android/okhttp/Call;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/android/okhttp/OkHttpClient;->getDispatcher()Lcom/android/okhttp/Dispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/okhttp/Dispatcher;->executed(Lcom/android/okhttp/Call;)V

    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/okhttp/Call;->getResponseWithInterceptorChain(Z)Lcom/android/okhttp/Response;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_2c

    .line 83
    .local v0, "result":Lcom/android/okhttp/Response;
    if-eqz v0, :cond_24

    .line 84
    nop

    .line 86
    iget-object v1, p0, Lcom/android/okhttp/Call;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v1}, Lcom/android/okhttp/OkHttpClient;->getDispatcher()Lcom/android/okhttp/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/okhttp/Dispatcher;->finished(Lcom/android/okhttp/Call;)V

    .line 84
    return-object v0

    .line 83
    :cond_24
    :try_start_24
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/okhttp/Call;
    throw v1
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    .line 86
    .end local v0    # "result":Lcom/android/okhttp/Response;
    .restart local p0    # "this":Lcom/android/okhttp/Call;
    :catchall_2c
    move-exception v0

    iget-object v1, p0, Lcom/android/okhttp/Call;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v1}, Lcom/android/okhttp/OkHttpClient;->getDispatcher()Lcom/android/okhttp/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/okhttp/Dispatcher;->finished(Lcom/android/okhttp/Call;)V

    .line 87
    throw v0

    .line 77
    :cond_37
    :try_start_37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/okhttp/Call;
    throw v0

    .line 79
    .restart local p0    # "this":Lcom/android/okhttp/Call;
    :catchall_3f
    move-exception v0

    monitor-exit p0
    :try_end_41
    .catchall {:try_start_37 .. :try_end_41} :catchall_3f

    throw v0
.end method

.method greylist-max-o getResponse(Lcom/android/okhttp/Request;Z)Lcom/android/okhttp/Response;
    .registers 20
    .param p1, "request"    # Lcom/android/okhttp/Request;
    .param p2, "forWebSocket"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Lcom/android/okhttp/Request;->body()Lcom/android/okhttp/RequestBody;

    move-result-object v2

    .line 256
    .local v2, "body":Lcom/android/okhttp/RequestBody;
    if-eqz v2, :cond_41

    .line 257
    invoke-virtual/range {p1 .. p1}, Lcom/android/okhttp/Request;->newBuilder()Lcom/android/okhttp/Request$Builder;

    move-result-object v0

    .line 259
    .local v0, "requestBuilder":Lcom/android/okhttp/Request$Builder;
    invoke-virtual {v2}, Lcom/android/okhttp/RequestBody;->contentType()Lcom/android/okhttp/MediaType;

    move-result-object v3

    .line 260
    .local v3, "contentType":Lcom/android/okhttp/MediaType;
    if-eqz v3, :cond_1b

    .line 261
    invoke-virtual {v3}, Lcom/android/okhttp/MediaType;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Content-Type"

    invoke-virtual {v0, v5, v4}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 264
    :cond_1b
    invoke-virtual {v2}, Lcom/android/okhttp/RequestBody;->contentLength()J

    move-result-wide v4

    .line 265
    .local v4, "contentLength":J
    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    const-string v7, "Content-Length"

    const-string v8, "Transfer-Encoding"

    if-eqz v6, :cond_34

    .line 266
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v7, v6}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 267
    invoke-virtual {v0, v8}, Lcom/android/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    goto :goto_3c

    .line 269
    :cond_34
    const-string v6, "chunked"

    invoke-virtual {v0, v8, v6}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 270
    invoke-virtual {v0, v7}, Lcom/android/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 273
    :goto_3c
    invoke-virtual {v0}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    move-result-object v6

    .end local p1    # "request":Lcom/android/okhttp/Request;
    .local v6, "request":Lcom/android/okhttp/Request;
    goto :goto_43

    .line 256
    .end local v0    # "requestBuilder":Lcom/android/okhttp/Request$Builder;
    .end local v3    # "contentType":Lcom/android/okhttp/MediaType;
    .end local v4    # "contentLength":J
    .end local v6    # "request":Lcom/android/okhttp/Request;
    .restart local p1    # "request":Lcom/android/okhttp/Request;
    :cond_41
    move-object/from16 v6, p1

    .line 277
    .end local p1    # "request":Lcom/android/okhttp/Request;
    .restart local v6    # "request":Lcom/android/okhttp/Request;
    :goto_43
    new-instance v0, Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v8, v1, Lcom/android/okhttp/Call;->client:Lcom/android/okhttp/OkHttpClient;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v7, v0

    move-object v9, v6

    move/from16 v12, p2

    invoke-direct/range {v7 .. v15}, Lcom/android/okhttp/internal/http/HttpEngine;-><init>(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/Request;ZZZLcom/android/okhttp/internal/http/StreamAllocation;Lcom/android/okhttp/internal/http/RetryableSink;Lcom/android/okhttp/Response;)V

    iput-object v0, v1, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    .line 279
    const/4 v0, 0x0

    move v3, v0

    .line 281
    .local v3, "followUpCount":I
    :cond_57
    :goto_57
    iget-boolean v0, v1, Lcom/android/okhttp/Call;->canceled:Z

    if-nez v0, :cond_122

    .line 286
    const/4 v4, 0x1

    .line 288
    .local v4, "releaseConnection":Z
    :try_start_5c
    iget-object v0, v1, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->sendRequest()V

    .line 289
    iget-object v0, v1, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->readResponse()V
    :try_end_66
    .catch Lcom/android/okhttp/internal/http/RequestException; {:try_start_5c .. :try_end_66} :catch_110
    .catch Lcom/android/okhttp/internal/http/RouteException; {:try_start_5c .. :try_end_66} :catch_f4
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_66} :catch_da
    .catchall {:try_start_5c .. :try_end_66} :catchall_d8

    .line 290
    const/4 v0, 0x0

    .line 317
    .end local v4    # "releaseConnection":Z
    .local v0, "releaseConnection":Z
    if-eqz v0, :cond_72

    .line 318
    iget-object v4, v1, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v4}, Lcom/android/okhttp/internal/http/HttpEngine;->close()Lcom/android/okhttp/internal/http/StreamAllocation;

    move-result-object v4

    .line 319
    .local v4, "streamAllocation":Lcom/android/okhttp/internal/http/StreamAllocation;
    invoke-virtual {v4}, Lcom/android/okhttp/internal/http/StreamAllocation;->release()V

    .line 323
    .end local v4    # "streamAllocation":Lcom/android/okhttp/internal/http/StreamAllocation;
    :cond_72
    iget-object v4, v1, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v4}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    move-result-object v4

    .line 324
    .local v4, "response":Lcom/android/okhttp/Response;
    iget-object v5, v1, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v5}, Lcom/android/okhttp/internal/http/HttpEngine;->followUpRequest()Lcom/android/okhttp/Request;

    move-result-object v5

    .line 326
    .local v5, "followUp":Lcom/android/okhttp/Request;
    if-nez v5, :cond_88

    .line 327
    if-nez p2, :cond_87

    .line 328
    iget-object v7, v1, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v7}, Lcom/android/okhttp/internal/http/HttpEngine;->releaseStreamAllocation()V

    .line 330
    :cond_87
    return-object v4

    .line 333
    :cond_88
    iget-object v7, v1, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v7}, Lcom/android/okhttp/internal/http/HttpEngine;->close()Lcom/android/okhttp/internal/http/StreamAllocation;

    move-result-object v7

    .line 335
    .local v7, "streamAllocation":Lcom/android/okhttp/internal/http/StreamAllocation;
    add-int/lit8 v3, v3, 0x1

    const/16 v8, 0x14

    if-gt v3, v8, :cond_be

    .line 340
    iget-object v8, v1, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v5}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/okhttp/internal/http/HttpEngine;->sameConnection(Lcom/android/okhttp/HttpUrl;)Z

    move-result v8

    if-nez v8, :cond_a7

    .line 341
    invoke-virtual {v7}, Lcom/android/okhttp/internal/http/StreamAllocation;->release()V

    .line 342
    const/4 v7, 0x0

    move-object/from16 v16, v7

    goto :goto_a9

    .line 340
    :cond_a7
    move-object/from16 v16, v7

    .line 345
    .end local v7    # "streamAllocation":Lcom/android/okhttp/internal/http/StreamAllocation;
    .local v16, "streamAllocation":Lcom/android/okhttp/internal/http/StreamAllocation;
    :goto_a9
    move-object v9, v5

    .line 346
    .end local v6    # "request":Lcom/android/okhttp/Request;
    .local v9, "request":Lcom/android/okhttp/Request;
    new-instance v6, Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v8, v1, Lcom/android/okhttp/Call;->client:Lcom/android/okhttp/OkHttpClient;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    move-object v7, v6

    move/from16 v12, p2

    move-object/from16 v13, v16

    move-object v15, v4

    invoke-direct/range {v7 .. v15}, Lcom/android/okhttp/internal/http/HttpEngine;-><init>(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/Request;ZZZLcom/android/okhttp/internal/http/StreamAllocation;Lcom/android/okhttp/internal/http/RetryableSink;Lcom/android/okhttp/Response;)V

    iput-object v6, v1, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    .line 348
    .end local v0    # "releaseConnection":Z
    .end local v4    # "response":Lcom/android/okhttp/Response;
    .end local v5    # "followUp":Lcom/android/okhttp/Request;
    .end local v16    # "streamAllocation":Lcom/android/okhttp/internal/http/StreamAllocation;
    move-object v6, v9

    goto :goto_57

    .line 336
    .end local v9    # "request":Lcom/android/okhttp/Request;
    .restart local v0    # "releaseConnection":Z
    .restart local v4    # "response":Lcom/android/okhttp/Response;
    .restart local v5    # "followUp":Lcom/android/okhttp/Request;
    .restart local v6    # "request":Lcom/android/okhttp/Request;
    .restart local v7    # "streamAllocation":Lcom/android/okhttp/internal/http/StreamAllocation;
    :cond_be
    invoke-virtual {v7}, Lcom/android/okhttp/internal/http/StreamAllocation;->release()V

    .line 337
    new-instance v8, Ljava/net/ProtocolException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Too many follow-up requests: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 317
    .end local v0    # "releaseConnection":Z
    .end local v5    # "followUp":Lcom/android/okhttp/Request;
    .end local v7    # "streamAllocation":Lcom/android/okhttp/internal/http/StreamAllocation;
    .local v4, "releaseConnection":Z
    :catchall_d8
    move-exception v0

    goto :goto_116

    .line 304
    :catch_da
    move-exception v0

    .line 306
    .local v0, "e":Ljava/io/IOException;
    :try_start_db
    iget-object v5, v1, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7}, Lcom/android/okhttp/internal/http/HttpEngine;->recover(Ljava/io/IOException;Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/internal/http/HttpEngine;

    move-result-object v5

    .line 307
    .local v5, "retryEngine":Lcom/android/okhttp/internal/http/HttpEngine;
    if-eqz v5, :cond_f2

    .line 308
    const/4 v4, 0x0

    .line 309
    iput-object v5, v1, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;
    :try_end_e7
    .catchall {:try_start_db .. :try_end_e7} :catchall_d8

    .line 317
    if-eqz v4, :cond_57

    .line 318
    invoke-virtual {v5}, Lcom/android/okhttp/internal/http/HttpEngine;->close()Lcom/android/okhttp/internal/http/StreamAllocation;

    move-result-object v7

    .line 319
    .restart local v7    # "streamAllocation":Lcom/android/okhttp/internal/http/StreamAllocation;
    invoke-virtual {v7}, Lcom/android/okhttp/internal/http/StreamAllocation;->release()V

    .line 320
    .end local v7    # "streamAllocation":Lcom/android/okhttp/internal/http/StreamAllocation;
    goto/16 :goto_57

    .line 314
    :cond_f2
    nop

    .end local v2    # "body":Lcom/android/okhttp/RequestBody;
    .end local v3    # "followUpCount":I
    .end local v4    # "releaseConnection":Z
    .end local v6    # "request":Lcom/android/okhttp/Request;
    .end local p0    # "this":Lcom/android/okhttp/Call;
    .end local p2    # "forWebSocket":Z
    :try_start_f3
    throw v0

    .line 294
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "retryEngine":Lcom/android/okhttp/internal/http/HttpEngine;
    .restart local v2    # "body":Lcom/android/okhttp/RequestBody;
    .restart local v3    # "followUpCount":I
    .restart local v4    # "releaseConnection":Z
    .restart local v6    # "request":Lcom/android/okhttp/Request;
    .restart local p0    # "this":Lcom/android/okhttp/Call;
    .restart local p2    # "forWebSocket":Z
    :catch_f4
    move-exception v0

    .line 296
    .local v0, "e":Lcom/android/okhttp/internal/http/RouteException;
    iget-object v5, v1, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v5, v0}, Lcom/android/okhttp/internal/http/HttpEngine;->recover(Lcom/android/okhttp/internal/http/RouteException;)Lcom/android/okhttp/internal/http/HttpEngine;

    move-result-object v5

    .line 297
    .restart local v5    # "retryEngine":Lcom/android/okhttp/internal/http/HttpEngine;
    if-eqz v5, :cond_10b

    .line 298
    const/4 v4, 0x0

    .line 299
    iput-object v5, v1, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;
    :try_end_100
    .catchall {:try_start_f3 .. :try_end_100} :catchall_d8

    .line 317
    if-eqz v4, :cond_57

    .line 318
    invoke-virtual {v5}, Lcom/android/okhttp/internal/http/HttpEngine;->close()Lcom/android/okhttp/internal/http/StreamAllocation;

    move-result-object v7

    .line 319
    .restart local v7    # "streamAllocation":Lcom/android/okhttp/internal/http/StreamAllocation;
    invoke-virtual {v7}, Lcom/android/okhttp/internal/http/StreamAllocation;->release()V

    .line 320
    .end local v7    # "streamAllocation":Lcom/android/okhttp/internal/http/StreamAllocation;
    goto/16 :goto_57

    .line 303
    :cond_10b
    :try_start_10b
    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v7

    .end local v2    # "body":Lcom/android/okhttp/RequestBody;
    .end local v3    # "followUpCount":I
    .end local v4    # "releaseConnection":Z
    .end local v6    # "request":Lcom/android/okhttp/Request;
    .end local p0    # "this":Lcom/android/okhttp/Call;
    .end local p2    # "forWebSocket":Z
    throw v7

    .line 291
    .end local v0    # "e":Lcom/android/okhttp/internal/http/RouteException;
    .end local v5    # "retryEngine":Lcom/android/okhttp/internal/http/HttpEngine;
    .restart local v2    # "body":Lcom/android/okhttp/RequestBody;
    .restart local v3    # "followUpCount":I
    .restart local v4    # "releaseConnection":Z
    .restart local v6    # "request":Lcom/android/okhttp/Request;
    .restart local p0    # "this":Lcom/android/okhttp/Call;
    .restart local p2    # "forWebSocket":Z
    :catch_110
    move-exception v0

    .line 293
    .local v0, "e":Lcom/android/okhttp/internal/http/RequestException;
    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/RequestException;->getCause()Ljava/io/IOException;

    move-result-object v5

    .end local v2    # "body":Lcom/android/okhttp/RequestBody;
    .end local v3    # "followUpCount":I
    .end local v4    # "releaseConnection":Z
    .end local v6    # "request":Lcom/android/okhttp/Request;
    .end local p0    # "this":Lcom/android/okhttp/Call;
    .end local p2    # "forWebSocket":Z
    throw v5
    :try_end_116
    .catchall {:try_start_10b .. :try_end_116} :catchall_d8

    .line 317
    .end local v0    # "e":Lcom/android/okhttp/internal/http/RequestException;
    .restart local v2    # "body":Lcom/android/okhttp/RequestBody;
    .restart local v3    # "followUpCount":I
    .restart local v4    # "releaseConnection":Z
    .restart local v6    # "request":Lcom/android/okhttp/Request;
    .restart local p0    # "this":Lcom/android/okhttp/Call;
    .restart local p2    # "forWebSocket":Z
    :goto_116
    if-eqz v4, :cond_121

    .line 318
    iget-object v5, v1, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v5}, Lcom/android/okhttp/internal/http/HttpEngine;->close()Lcom/android/okhttp/internal/http/StreamAllocation;

    move-result-object v5

    .line 319
    .local v5, "streamAllocation":Lcom/android/okhttp/internal/http/StreamAllocation;
    invoke-virtual {v5}, Lcom/android/okhttp/internal/http/StreamAllocation;->release()V

    .line 321
    .end local v5    # "streamAllocation":Lcom/android/okhttp/internal/http/StreamAllocation;
    :cond_121
    throw v0

    .line 282
    .end local v4    # "releaseConnection":Z
    :cond_122
    iget-object v0, v1, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->releaseStreamAllocation()V

    .line 283
    new-instance v0, Ljava/io/IOException;

    const-string v4, "Canceled"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o isCanceled()Z
    .registers 2

    .line 137
    iget-boolean v0, p0, Lcom/android/okhttp/Call;->canceled:Z

    return v0
.end method

.method public declared-synchronized greylist-max-o isExecuted()Z
    .registers 2

    monitor-enter p0

    .line 133
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/Call;->executed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 133
    .end local p0    # "this":Lcom/android/okhttp/Call;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method greylist-max-o tag()Ljava/lang/Object;
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/android/okhttp/Call;->originalRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v0}, Lcom/android/okhttp/Request;->tag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
