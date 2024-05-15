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
.field volatile canceled:Z

.field private final client:Lcom/android/okhttp/OkHttpClient;

.field engine:Lcom/android/okhttp/internal/http/HttpEngine;

.field private executed:Z

.field originalRequest:Lcom/android/okhttp/Request;


# direct methods
.method static synthetic -get0(Lcom/android/okhttp/Call;)Lcom/android/okhttp/OkHttpClient;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/Call;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/Call;->client:Lcom/android/okhttp/OkHttpClient;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/okhttp/Call;Z)Lcom/android/okhttp/Response;
    .registers 3
    .param p0, "-this"    # Lcom/android/okhttp/Call;
    .param p1, "forWebSocket"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/okhttp/Call;->getResponseWithInterceptorChain(Z)Lcom/android/okhttp/Response;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/okhttp/Call;)Ljava/lang/String;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/Call;

    .prologue
    invoke-direct {p0}, Lcom/android/okhttp/Call;->toLoggableString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected constructor <init>(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/Request;)V
    .registers 4
    .param p1, "client"    # Lcom/android/okhttp/OkHttpClient;
    .param p2, "originalRequest"    # Lcom/android/okhttp/Request;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p1}, Lcom/android/okhttp/OkHttpClient;->copyWithDefaults()Lcom/android/okhttp/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Call;->client:Lcom/android/okhttp/OkHttpClient;

    .line 50
    iput-object p2, p0, Lcom/android/okhttp/Call;->originalRequest:Lcom/android/okhttp/Request;

    .line 51
    return-void
.end method

.method private getResponseWithInterceptorChain(Z)Lcom/android/okhttp/Response;
    .registers 5
    .param p1, "forWebSocket"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    new-instance v0, Lcom/android/okhttp/Call$ApplicationInterceptorChain;

    iget-object v1, p0, Lcom/android/okhttp/Call;->originalRequest:Lcom/android/okhttp/Request;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1, p1}, Lcom/android/okhttp/Call$ApplicationInterceptorChain;-><init>(Lcom/android/okhttp/Call;ILcom/android/okhttp/Request;Z)V

    .line 205
    .local v0, "chain":Lcom/android/okhttp/Interceptor$Chain;
    iget-object v1, p0, Lcom/android/okhttp/Call;->originalRequest:Lcom/android/okhttp/Request;

    invoke-interface {v0, v1}, Lcom/android/okhttp/Interceptor$Chain;->proceed(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response;

    move-result-object v1

    return-object v1
.end method

.method private toLoggableString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 198
    iget-boolean v2, p0, Lcom/android/okhttp/Call;->canceled:Z

    if-eqz v2, :cond_2d

    const-string/jumbo v1, "canceled call"

    .line 199
    .local v1, "string":Ljava/lang/String;
    :goto_7
    iget-object v2, p0, Lcom/android/okhttp/Call;->originalRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v2}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v2

    const-string/jumbo v3, "/..."

    invoke-virtual {v2, v3}, Lcom/android/okhttp/HttpUrl;->resolve(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl;

    move-result-object v0

    .line 200
    .local v0, "redactedUrl":Lcom/android/okhttp/HttpUrl;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 198
    .end local v0    # "redactedUrl":Lcom/android/okhttp/HttpUrl;
    .end local v1    # "string":Ljava/lang/String;
    :cond_2d
    const-string/jumbo v1, "call"

    .restart local v1    # "string":Ljava/lang/String;
    goto :goto_7
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/okhttp/Call;->canceled:Z

    .line 123
    iget-object v0, p0, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->cancel()V

    .line 124
    :cond_c
    return-void
.end method

.method public enqueue(Lcom/android/okhttp/Callback;)V
    .registers 3
    .param p1, "responseCallback"    # Lcom/android/okhttp/Callback;

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/okhttp/Call;->enqueue(Lcom/android/okhttp/Callback;Z)V

    .line 107
    return-void
.end method

.method enqueue(Lcom/android/okhttp/Callback;Z)V
    .registers 6
    .param p1, "responseCallback"    # Lcom/android/okhttp/Callback;
    .param p2, "forWebSocket"    # Z

    .prologue
    .line 110
    monitor-enter p0

    .line 111
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/Call;->executed:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_e

    .line 110
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 112
    :cond_11
    const/4 v0, 0x1

    :try_start_12
    iput-boolean v0, p0, Lcom/android/okhttp/Call;->executed:Z
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_e

    monitor-exit p0

    .line 114
    iget-object v0, p0, Lcom/android/okhttp/Call;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/android/okhttp/OkHttpClient;->getDispatcher()Lcom/android/okhttp/Dispatcher;

    move-result-object v0

    new-instance v1, Lcom/android/okhttp/Call$AsyncCall;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/okhttp/Call$AsyncCall;-><init>(Lcom/android/okhttp/Call;Lcom/android/okhttp/Callback;ZLcom/android/okhttp/Call$AsyncCall;)V

    invoke-virtual {v0, v1}, Lcom/android/okhttp/Dispatcher;->enqueue(Lcom/android/okhttp/Call$AsyncCall;)V

    .line 115
    return-void
.end method

.method public execute()Lcom/android/okhttp/Response;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    monitor-enter p0

    .line 75
    :try_start_1
    iget-boolean v1, p0, Lcom/android/okhttp/Call;->executed:Z

    if-eqz v1, :cond_11

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Already Executed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_e

    .line 74
    :catchall_e
    move-exception v1

    monitor-exit p0

    throw v1

    .line 76
    :cond_11
    const/4 v1, 0x1

    :try_start_12
    iput-boolean v1, p0, Lcom/android/okhttp/Call;->executed:Z
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_e

    monitor-exit p0

    .line 79
    :try_start_15
    iget-object v1, p0, Lcom/android/okhttp/Call;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v1}, Lcom/android/okhttp/OkHttpClient;->getDispatcher()Lcom/android/okhttp/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/okhttp/Dispatcher;->executed(Lcom/android/okhttp/Call;)V

    .line 80
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/okhttp/Call;->getResponseWithInterceptorChain(Z)Lcom/android/okhttp/Response;

    move-result-object v0

    .line 81
    .local v0, "result":Lcom/android/okhttp/Response;
    if-nez v0, :cond_39

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Canceled"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2e
    .catchall {:try_start_15 .. :try_end_2e} :catchall_2e

    .line 83
    .end local v0    # "result":Lcom/android/okhttp/Response;
    :catchall_2e
    move-exception v1

    .line 84
    iget-object v2, p0, Lcom/android/okhttp/Call;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v2}, Lcom/android/okhttp/OkHttpClient;->getDispatcher()Lcom/android/okhttp/Dispatcher;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/okhttp/Dispatcher;->finished(Lcom/android/okhttp/Call;)V

    .line 83
    throw v1

    .line 84
    .restart local v0    # "result":Lcom/android/okhttp/Response;
    :cond_39
    iget-object v1, p0, Lcom/android/okhttp/Call;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v1}, Lcom/android/okhttp/OkHttpClient;->getDispatcher()Lcom/android/okhttp/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/okhttp/Dispatcher;->finished(Lcom/android/okhttp/Call;)V

    .line 82
    return-object v0
.end method

.method getResponse(Lcom/android/okhttp/Request;Z)Lcom/android/okhttp/Response;
    .registers 25
    .param p1, "request"    # Lcom/android/okhttp/Request;
    .param p2, "forWebSocket"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    invoke-virtual/range {p1 .. p1}, Lcom/android/okhttp/Request;->body()Lcom/android/okhttp/RequestBody;

    move-result-object v11

    .line 254
    .local v11, "body":Lcom/android/okhttp/RequestBody;
    if-eqz v11, :cond_3e

    .line 255
    invoke-virtual/range {p1 .. p1}, Lcom/android/okhttp/Request;->newBuilder()Lcom/android/okhttp/Request$Builder;

    move-result-object v20

    .line 257
    .local v20, "requestBuilder":Lcom/android/okhttp/Request$Builder;
    invoke-virtual {v11}, Lcom/android/okhttp/RequestBody;->contentType()Lcom/android/okhttp/MediaType;

    move-result-object v14

    .line 258
    .local v14, "contentType":Lcom/android/okhttp/MediaType;
    if-eqz v14, :cond_1c

    .line 259
    const-string/jumbo v2, "Content-Type"

    invoke-virtual {v14}, Lcom/android/okhttp/MediaType;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 262
    :cond_1c
    invoke-virtual {v11}, Lcom/android/okhttp/RequestBody;->contentLength()J

    move-result-wide v12

    .line 263
    .local v12, "contentLength":J
    const-wide/16 v2, -0x1

    cmp-long v2, v12, v2

    if-eqz v2, :cond_6c

    .line 264
    const-string/jumbo v2, "Content-Length"

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 265
    const-string/jumbo v2, "Transfer-Encoding"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/android/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 271
    :goto_3a
    invoke-virtual/range {v20 .. v20}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    move-result-object p1

    .line 275
    .end local v12    # "contentLength":J
    .end local v14    # "contentType":Lcom/android/okhttp/MediaType;
    .end local v20    # "requestBuilder":Lcom/android/okhttp/Request$Builder;
    :cond_3e
    new-instance v2, Lcom/android/okhttp/internal/http/HttpEngine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/okhttp/Call;->client:Lcom/android/okhttp/OkHttpClient;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p1

    move/from16 v7, p2

    invoke-direct/range {v2 .. v10}, Lcom/android/okhttp/internal/http/HttpEngine;-><init>(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/Request;ZZZLcom/android/okhttp/internal/http/StreamAllocation;Lcom/android/okhttp/internal/http/RetryableSink;Lcom/android/okhttp/Response;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    .line 277
    const/16 v18, 0x0

    .line 279
    .local v18, "followUpCount":I
    :cond_56
    :goto_56
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/okhttp/Call;->canceled:Z

    if-eqz v2, :cond_80

    .line 280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->releaseStreamAllocation()V

    .line 281
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Canceled"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 267
    .end local v18    # "followUpCount":I
    .restart local v12    # "contentLength":J
    .restart local v14    # "contentType":Lcom/android/okhttp/MediaType;
    .restart local v20    # "requestBuilder":Lcom/android/okhttp/Request$Builder;
    :cond_6c
    const-string/jumbo v2, "Transfer-Encoding"

    const-string/jumbo v3, "chunked"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 268
    const-string/jumbo v2, "Content-Length"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/android/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    goto :goto_3a

    .line 284
    .end local v12    # "contentLength":J
    .end local v14    # "contentType":Lcom/android/okhttp/MediaType;
    .end local v20    # "requestBuilder":Lcom/android/okhttp/Request$Builder;
    .restart local v18    # "followUpCount":I
    :cond_80
    const/16 v19, 0x1

    .line 286
    .local v19, "releaseConnection":Z
    :try_start_82
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->sendRequest()V

    .line 287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->readResponse()V
    :try_end_90
    .catch Lcom/android/okhttp/internal/http/RequestException; {:try_start_82 .. :try_end_90} :catch_119
    .catch Lcom/android/okhttp/internal/http/RouteException; {:try_start_82 .. :try_end_90} :catch_f0
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_90} :catch_bb
    .catchall {:try_start_82 .. :try_end_90} :catchall_e1

    .line 288
    const/16 v19, 0x0

    .line 315
    if-eqz v19, :cond_9f

    .line 316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->close()Lcom/android/okhttp/internal/http/StreamAllocation;

    move-result-object v8

    .line 317
    .local v8, "streamAllocation":Lcom/android/okhttp/internal/http/StreamAllocation;
    invoke-virtual {v8}, Lcom/android/okhttp/internal/http/StreamAllocation;->release()V

    .line 321
    .end local v8    # "streamAllocation":Lcom/android/okhttp/internal/http/StreamAllocation;
    :cond_9f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    move-result-object v10

    .line 322
    .local v10, "response":Lcom/android/okhttp/Response;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->followUpRequest()Lcom/android/okhttp/Request;

    move-result-object v4

    .line 324
    .local v4, "followUp":Lcom/android/okhttp/Request;
    if-nez v4, :cond_11f

    .line 325
    if-nez p2, :cond_ba

    .line 326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->releaseStreamAllocation()V

    .line 328
    :cond_ba
    return-object v10

    .line 302
    .end local v4    # "followUp":Lcom/android/okhttp/Request;
    .end local v10    # "response":Lcom/android/okhttp/Response;
    :catch_bb
    move-exception v17

    .line 304
    .local v17, "e":Ljava/io/IOException;
    :try_start_bc
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v3}, Lcom/android/okhttp/internal/http/HttpEngine;->recover(Ljava/io/IOException;Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/internal/http/HttpEngine;

    move-result-object v21

    .line 305
    .local v21, "retryEngine":Lcom/android/okhttp/internal/http/HttpEngine;
    if-eqz v21, :cond_e0

    .line 306
    const/16 v19, 0x0

    .line 307
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;
    :try_end_d1
    .catchall {:try_start_bc .. :try_end_d1} :catchall_e1

    .line 315
    if-eqz v19, :cond_56

    .line 316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->close()Lcom/android/okhttp/internal/http/StreamAllocation;

    move-result-object v8

    .line 317
    .restart local v8    # "streamAllocation":Lcom/android/okhttp/internal/http/StreamAllocation;
    invoke-virtual {v8}, Lcom/android/okhttp/internal/http/StreamAllocation;->release()V

    goto/16 :goto_56

    .line 312
    .end local v8    # "streamAllocation":Lcom/android/okhttp/internal/http/StreamAllocation;
    :cond_e0
    :try_start_e0
    throw v17
    :try_end_e1
    .catchall {:try_start_e0 .. :try_end_e1} :catchall_e1

    .line 313
    .end local v17    # "e":Ljava/io/IOException;
    .end local v21    # "retryEngine":Lcom/android/okhttp/internal/http/HttpEngine;
    :catchall_e1
    move-exception v2

    .line 315
    if-eqz v19, :cond_ef

    .line 316
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v3}, Lcom/android/okhttp/internal/http/HttpEngine;->close()Lcom/android/okhttp/internal/http/StreamAllocation;

    move-result-object v8

    .line 317
    .restart local v8    # "streamAllocation":Lcom/android/okhttp/internal/http/StreamAllocation;
    invoke-virtual {v8}, Lcom/android/okhttp/internal/http/StreamAllocation;->release()V

    .line 313
    .end local v8    # "streamAllocation":Lcom/android/okhttp/internal/http/StreamAllocation;
    :cond_ef
    throw v2

    .line 292
    :catch_f0
    move-exception v16

    .line 294
    .local v16, "e":Lcom/android/okhttp/internal/http/RouteException;
    :try_start_f1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/okhttp/internal/http/HttpEngine;->recover(Lcom/android/okhttp/internal/http/RouteException;)Lcom/android/okhttp/internal/http/HttpEngine;

    move-result-object v21

    .line 295
    .restart local v21    # "retryEngine":Lcom/android/okhttp/internal/http/HttpEngine;
    if-eqz v21, :cond_114

    .line 296
    const/16 v19, 0x0

    .line 297
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;
    :try_end_105
    .catchall {:try_start_f1 .. :try_end_105} :catchall_e1

    .line 315
    if-eqz v19, :cond_56

    .line 316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->close()Lcom/android/okhttp/internal/http/StreamAllocation;

    move-result-object v8

    .line 317
    .restart local v8    # "streamAllocation":Lcom/android/okhttp/internal/http/StreamAllocation;
    invoke-virtual {v8}, Lcom/android/okhttp/internal/http/StreamAllocation;->release()V

    goto/16 :goto_56

    .line 301
    .end local v8    # "streamAllocation":Lcom/android/okhttp/internal/http/StreamAllocation;
    :cond_114
    :try_start_114
    invoke-virtual/range {v16 .. v16}, Lcom/android/okhttp/internal/http/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 289
    .end local v16    # "e":Lcom/android/okhttp/internal/http/RouteException;
    .end local v21    # "retryEngine":Lcom/android/okhttp/internal/http/HttpEngine;
    :catch_119
    move-exception v15

    .line 291
    .local v15, "e":Lcom/android/okhttp/internal/http/RequestException;
    invoke-virtual {v15}, Lcom/android/okhttp/internal/http/RequestException;->getCause()Ljava/io/IOException;

    move-result-object v2

    throw v2
    :try_end_11f
    .catchall {:try_start_114 .. :try_end_11f} :catchall_e1

    .line 331
    .end local v15    # "e":Lcom/android/okhttp/internal/http/RequestException;
    .restart local v4    # "followUp":Lcom/android/okhttp/Request;
    .restart local v10    # "response":Lcom/android/okhttp/Response;
    :cond_11f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->close()Lcom/android/okhttp/internal/http/StreamAllocation;

    move-result-object v8

    .line 333
    .restart local v8    # "streamAllocation":Lcom/android/okhttp/internal/http/StreamAllocation;
    add-int/lit8 v18, v18, 0x1

    const/16 v2, 0x14

    move/from16 v0, v18

    if-le v0, v2, :cond_14e

    .line 334
    invoke-virtual {v8}, Lcom/android/okhttp/internal/http/StreamAllocation;->release()V

    .line 335
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Too many follow-up requests: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 338
    :cond_14e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v4}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/HttpEngine;->sameConnection(Lcom/android/okhttp/HttpUrl;)Z

    move-result v2

    if-nez v2, :cond_160

    .line 339
    invoke-virtual {v8}, Lcom/android/okhttp/internal/http/StreamAllocation;->release()V

    .line 340
    const/4 v8, 0x0

    .line 343
    .end local v8    # "streamAllocation":Lcom/android/okhttp/internal/http/StreamAllocation;
    :cond_160
    move-object/from16 p1, v4

    .line 344
    new-instance v2, Lcom/android/okhttp/internal/http/HttpEngine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/okhttp/Call;->client:Lcom/android/okhttp/OkHttpClient;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    move/from16 v7, p2

    invoke-direct/range {v2 .. v10}, Lcom/android/okhttp/internal/http/HttpEngine;-><init>(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/Request;ZZZLcom/android/okhttp/internal/http/StreamAllocation;Lcom/android/okhttp/internal/http/RetryableSink;Lcom/android/okhttp/Response;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    goto/16 :goto_56
.end method

.method public isCanceled()Z
    .registers 2

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/android/okhttp/Call;->canceled:Z

    return v0
.end method

.method public declared-synchronized isExecuted()Z
    .registers 2

    .prologue
    monitor-enter p0

    .line 131
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/Call;->executed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method tag()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/okhttp/Call;->originalRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v0}, Lcom/android/okhttp/Request;->tag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
