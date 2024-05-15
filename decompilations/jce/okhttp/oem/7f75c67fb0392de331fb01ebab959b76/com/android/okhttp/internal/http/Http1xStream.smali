.class public final Lcom/android/okhttp/internal/http/Http1xStream;
.super Ljava/lang/Object;
.source "Http1xStream.java"

# interfaces
.implements Lcom/android/okhttp/internal/http/HttpStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/internal/http/Http1xStream$UnknownLengthSource;,
        Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSource;,
        Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSource;,
        Lcom/android/okhttp/internal/http/Http1xStream$AbstractSource;,
        Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSink;,
        Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;
    }
.end annotation


# static fields
.field private static final blacklist STATE_CLOSED:I = 0x6

.field private static final blacklist STATE_IDLE:I = 0x0

.field private static final blacklist STATE_OPEN_REQUEST_BODY:I = 0x1

.field private static final blacklist STATE_OPEN_RESPONSE_BODY:I = 0x4

.field private static final blacklist STATE_READING_RESPONSE_BODY:I = 0x5

.field private static final blacklist STATE_READ_RESPONSE_HEADERS:I = 0x3

.field private static final blacklist STATE_WRITING_REQUEST_BODY:I = 0x2


# instance fields
.field private blacklist httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

.field private blacklist isMultirat:Z

.field private final blacklist sink:Lcom/android/okhttp/okio/BufferedSink;

.field private final blacklist source:Lcom/android/okhttp/okio/BufferedSource;

.field private blacklist state:I

.field private final blacklist streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;


# direct methods
.method public constructor blacklist <init>(Lcom/android/okhttp/internal/http/StreamAllocation;Lcom/android/okhttp/okio/BufferedSource;Lcom/android/okhttp/okio/BufferedSink;)V
    .registers 5
    .param p1, "streamAllocation"    # Lcom/android/okhttp/internal/http/StreamAllocation;
    .param p2, "source"    # Lcom/android/okhttp/okio/BufferedSource;
    .param p3, "sink"    # Lcom/android/okhttp/okio/BufferedSink;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    .line 80
    iput-boolean v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->isMultirat:Z

    .line 84
    iput-object p1, p0, Lcom/android/okhttp/internal/http/Http1xStream;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    .line 85
    iput-object p2, p0, Lcom/android/okhttp/internal/http/Http1xStream;->source:Lcom/android/okhttp/okio/BufferedSource;

    .line 86
    iput-object p3, p0, Lcom/android/okhttp/internal/http/Http1xStream;->sink:Lcom/android/okhttp/okio/BufferedSink;

    .line 87
    return-void
.end method

.method static synthetic blacklist access$300(Lcom/android/okhttp/internal/http/Http1xStream;)Lcom/android/okhttp/okio/BufferedSink;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/Http1xStream;

    .line 63
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->sink:Lcom/android/okhttp/okio/BufferedSink;

    return-object v0
.end method

.method static synthetic blacklist access$400(Lcom/android/okhttp/internal/http/Http1xStream;Lcom/android/okhttp/okio/ForwardingTimeout;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/Http1xStream;
    .param p1, "x1"    # Lcom/android/okhttp/okio/ForwardingTimeout;

    .line 63
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/http/Http1xStream;->detachTimeout(Lcom/android/okhttp/okio/ForwardingTimeout;)V

    return-void
.end method

.method static synthetic blacklist access$500(Lcom/android/okhttp/internal/http/Http1xStream;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/Http1xStream;

    .line 63
    iget v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    return v0
.end method

.method static synthetic blacklist access$502(Lcom/android/okhttp/internal/http/Http1xStream;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/Http1xStream;
    .param p1, "x1"    # I

    .line 63
    iput p1, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    return p1
.end method

.method static synthetic blacklist access$600(Lcom/android/okhttp/internal/http/Http1xStream;)Lcom/android/okhttp/okio/BufferedSource;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/Http1xStream;

    .line 63
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->source:Lcom/android/okhttp/okio/BufferedSource;

    return-object v0
.end method

.method static synthetic blacklist access$700(Lcom/android/okhttp/internal/http/Http1xStream;)Lcom/android/okhttp/internal/http/StreamAllocation;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/Http1xStream;

    .line 63
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    return-object v0
.end method

.method private blacklist detachTimeout(Lcom/android/okhttp/okio/ForwardingTimeout;)V
    .registers 4
    .param p1, "timeout"    # Lcom/android/okhttp/okio/ForwardingTimeout;

    .line 470
    invoke-virtual {p1}, Lcom/android/okhttp/okio/ForwardingTimeout;->delegate()Lcom/android/okhttp/okio/Timeout;

    move-result-object v0

    .line 471
    .local v0, "oldDelegate":Lcom/android/okhttp/okio/Timeout;
    sget-object v1, Lcom/android/okhttp/okio/Timeout;->NONE:Lcom/android/okhttp/okio/Timeout;

    invoke-virtual {p1, v1}, Lcom/android/okhttp/okio/ForwardingTimeout;->setDelegate(Lcom/android/okhttp/okio/Timeout;)Lcom/android/okhttp/okio/ForwardingTimeout;

    .line 472
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Timeout;->clearDeadline()Lcom/android/okhttp/okio/Timeout;

    .line 473
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Timeout;->clearTimeout()Lcom/android/okhttp/okio/Timeout;

    .line 474
    return-void
.end method

.method private blacklist getTransferStream(Lcom/android/okhttp/Response;)Lcom/android/okhttp/okio/Source;
    .registers 44
    .param p1, "response"    # Lcom/android/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    move-object/from16 v1, p0

    const-string v0, "-"

    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/internal/http/HttpEngine;->hasBody(Lcom/android/okhttp/Response;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 156
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/okhttp/internal/http/Http1xStream;->newFixedLengthSource(J)Lcom/android/okhttp/okio/Source;

    move-result-object v0

    return-object v0

    .line 159
    :cond_11
    const-string v2, "Transfer-Encoding"

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Lcom/android/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "chunked"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 160
    iget-object v0, v1, Lcom/android/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v1, v0}, Lcom/android/okhttp/internal/http/Http1xStream;->newChunkedSource(Lcom/android/okhttp/internal/http/HttpEngine;)Lcom/android/okhttp/okio/Source;

    move-result-object v0

    return-object v0

    .line 163
    :cond_28
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/internal/http/OkHeaders;->contentLength(Lcom/android/okhttp/Response;)J

    move-result-wide v4

    .line 166
    .local v4, "contentLength":J
    sget-boolean v2, Lcom/android/okhttp/internal/http/HttpEngine;->SMARTBONDING_ENABLED:Z

    const-wide/16 v6, -0x1

    if-eqz v2, :cond_568

    .line 168
    :try_start_32
    iget-object v2, v1, Lcom/android/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->getConnection()Lcom/android/okhttp/Connection;

    move-result-object v2

    if-eqz v2, :cond_547

    .line 169
    move-wide v14, v4

    .line 170
    .local v14, "len":J
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_559

    if-eqz v2, :cond_cb

    :try_start_3f
    sget-boolean v2, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-nez v2, :cond_cb

    .line 171
    iget-object v2, v1, Lcom/android/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v2, v2, Lcom/android/okhttp/internal/http/HttpEngine;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getTransferStream : responseHeaders.getContentLength()="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", method="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    .line 172
    invoke-virtual {v9}, Lcom/android/okhttp/internal/http/HttpEngine;->getRequest()Lcom/android/okhttp/Request;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", HTTPVersion="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v9}, Lcom/android/okhttp/internal/http/HttpEngine;->getConnection()Lcom/android/okhttp/Connection;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/okhttp/Connection;->getProtocol()Lcom/android/okhttp/Protocol;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 171
    invoke-virtual {v2, v8}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 173
    iget-object v2, v1, Lcom/android/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v2, v2, Lcom/android/okhttp/internal/http/HttpEngine;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getTransferStream : main connection : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v9}, Lcom/android/okhttp/internal/http/HttpEngine;->getConnection()Lcom/android/okhttp/Connection;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/okhttp/Connection;->getSocket()Ljava/net/Socket;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 174
    iget-object v2, v1, Lcom/android/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v2, v2, Lcom/android/okhttp/internal/http/HttpEngine;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getTransferStream : Is HTTPS SSL Socket "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v9, v9, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    invoke-virtual {v9}, Lcom/android/okhttp/internal/http/StreamAllocation;->connection()Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/okhttp/internal/io/RealConnection;->isSSLSocket()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_c5
    .catchall {:try_start_3f .. :try_end_c5} :catchall_c6

    goto :goto_cb

    .line 314
    .end local v14    # "len":J
    :catchall_c6
    move-exception v0

    move-wide/from16 v33, v4

    goto/16 :goto_55c

    .line 176
    .restart local v14    # "len":J
    :cond_cb
    :goto_cb
    const/4 v2, 0x0

    .line 177
    .local v2, "conClose":Z
    cmp-long v8, v14, v6

    if-eqz v8, :cond_540

    .line 179
    :try_start_d0
    sget-boolean v8, Lcom/android/okhttp/internal/http/HttpEngine;->SMARTBONDING_ENABLED:Z

    if-eqz v8, :cond_539

    iget-object v8, v1, Lcom/android/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v8}, Lcom/android/okhttp/internal/http/HttpEngine;->getRequest()Lcom/android/okhttp/Request;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v8

    const-string v9, "GET"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_539

    const-wide/32 v8, 0x200000

    cmp-long v8, v14, v8

    if-ltz v8, :cond_539

    iget-object v8, v1, Lcom/android/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v8, v8, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    .line 183
    invoke-virtual {v8}, Lcom/android/okhttp/internal/http/StreamAllocation;->connection()Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/okhttp/internal/io/RealConnection;->isValidSocketForMultiRAT()Z

    move-result v8

    if-eqz v8, :cond_532

    .line 185
    sget-boolean v8, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z
    :try_end_fd
    .catchall {:try_start_d0 .. :try_end_fd} :catchall_559

    if-eqz v8, :cond_108

    :try_start_ff
    iget-object v8, v1, Lcom/android/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v8, v8, Lcom/android/okhttp/internal/http/HttpEngine;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    const-string v9, "Initial Conditions for SB are passed"

    invoke-virtual {v8, v9}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_108
    .catchall {:try_start_ff .. :try_end_108} :catchall_c6

    .line 187
    :cond_108
    const-wide/16 v8, 0x0

    .line 188
    .local v8, "offset":J
    const/4 v10, 0x1

    .line 189
    .local v10, "bMultiSocket":Z
    :try_start_10b
    iget-object v11, v1, Lcom/android/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v11}, Lcom/android/okhttp/internal/http/HttpEngine;->getRequest()Lcom/android/okhttp/Request;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    move-result-object v11

    move-object v12, v11

    .line 190
    .local v12, "reqHeaders":Lcom/android/okhttp/Headers;
    invoke-virtual/range {p1 .. p1}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v11

    move-object v13, v11

    .line 191
    .local v13, "rspHeaders":Lcom/android/okhttp/Headers;
    iget-object v11, v1, Lcom/android/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v11}, Lcom/android/okhttp/internal/http/HttpEngine;->getRequest()Lcom/android/okhttp/Request;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/okhttp/Request;->urlString()Ljava/lang/String;

    move-result-object v11

    .line 192
    .local v11, "url":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/okhttp/Response;->code()I

    move-result v16

    move/from16 v28, v16

    .line 194
    .local v28, "rspCode":I
    sget-boolean v16, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z
    :try_end_12d
    .catchall {:try_start_10b .. :try_end_12d} :catchall_559

    if-eqz v16, :cond_198

    :try_start_12f
    sget-boolean v16, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-nez v16, :cond_198

    .line 195
    iget-object v6, v1, Lcom/android/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v6, v6, Lcom/android/okhttp/internal/http/HttpEngine;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v2

    .end local v2    # "conClose":Z
    .local v16, "conClose":Z
    const-string v2, "reqHeaders = "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 196
    iget-object v2, v1, Lcom/android/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v2, v2, Lcom/android/okhttp/internal/http/HttpEngine;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rspHeaders = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 197
    iget-object v2, v1, Lcom/android/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v2, v2, Lcom/android/okhttp/internal/http/HttpEngine;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rspCode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, v28

    .end local v28    # "rspCode":I
    .local v7, "rspCode":I
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 198
    iget-object v2, v1, Lcom/android/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v2, v2, Lcom/android/okhttp/internal/http/HttpEngine;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url = "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_197
    .catchall {:try_start_12f .. :try_end_197} :catchall_c6

    goto :goto_19c

    .line 194
    .end local v7    # "rspCode":I
    .end local v16    # "conClose":Z
    .restart local v2    # "conClose":Z
    .restart local v28    # "rspCode":I
    :cond_198
    move/from16 v16, v2

    move/from16 v7, v28

    .line 201
    .end local v2    # "conClose":Z
    .end local v28    # "rspCode":I
    .restart local v7    # "rspCode":I
    .restart local v16    # "conClose":Z
    :goto_19c
    :try_start_19c
    const-string v2, "Accept-Ranges"

    invoke-virtual {v13, v2}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, "accRange":Ljava/lang/String;
    invoke-static {}, Lcom/android/okhttp/internal/http/SBServiceAPI;->getNBEnabled()Z

    move-result v3
    :try_end_1a6
    .catchall {:try_start_19c .. :try_end_1a6} :catchall_559

    if-nez v3, :cond_1c0

    .line 203
    :try_start_1a8
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_1b5

    iget-object v0, v1, Lcom/android/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v0, v0, Lcom/android/okhttp/internal/http/HttpEngine;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    const-string v3, "Download Booster Enabled Status in Setting is false"

    invoke-virtual {v0, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 204
    :cond_1b5
    const/4 v0, 0x0

    move-object/from16 v28, v2

    move/from16 v29, v7

    move-wide v6, v8

    move/from16 v3, v16

    move v2, v0

    .end local v10    # "bMultiSocket":Z
    .local v0, "bMultiSocket":Z
    goto/16 :goto_37f

    .line 207
    .end local v0    # "bMultiSocket":Z
    .restart local v10    # "bMultiSocket":Z
    :cond_1c0
    if-eqz v11, :cond_1f1

    const-string v3, "unityads"

    invoke-virtual {v11, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1f1

    .line 208
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_1e6

    iget-object v0, v1, Lcom/android/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v0, v0, Lcom/android/okhttp/internal/http/HttpEngine;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTransferStream : Unity Ads is not supported : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 209
    :cond_1e6
    const/4 v0, 0x0

    move-object/from16 v28, v2

    move/from16 v29, v7

    move-wide v6, v8

    move/from16 v3, v16

    move v2, v0

    .end local v10    # "bMultiSocket":Z
    .restart local v0    # "bMultiSocket":Z
    goto/16 :goto_37f

    .line 212
    .end local v0    # "bMultiSocket":Z
    .restart local v10    # "bMultiSocket":Z
    :cond_1f1
    const/16 v3, 0xc8

    if-eq v7, v3, :cond_220

    const/16 v3, 0xce

    if-eq v7, v3, :cond_220

    .line 213
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_215

    iget-object v0, v1, Lcom/android/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v0, v0, Lcom/android/okhttp/internal/http/HttpEngine;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTransferStream : response code is not positive : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 214
    :cond_215
    const/4 v0, 0x0

    move-object/from16 v28, v2

    move/from16 v29, v7

    move-wide v6, v8

    move/from16 v3, v16

    move v2, v0

    .end local v10    # "bMultiSocket":Z
    .restart local v0    # "bMultiSocket":Z
    goto/16 :goto_37f

    .line 216
    .end local v0    # "bMultiSocket":Z
    .restart local v10    # "bMultiSocket":Z
    :cond_220
    if-eqz v2, :cond_246

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v6, "none"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_246

    .line 217
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_23b

    iget-object v0, v1, Lcom/android/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v0, v0, Lcom/android/okhttp/internal/http/HttpEngine;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    const-string v3, "getTransferStream : Accept-Ranges : none"

    invoke-virtual {v0, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_23b
    .catchall {:try_start_1a8 .. :try_end_23b} :catchall_c6

    .line 218
    :cond_23b
    const/4 v0, 0x0

    move-object/from16 v28, v2

    move/from16 v29, v7

    move-wide v6, v8

    move/from16 v3, v16

    move v2, v0

    .end local v10    # "bMultiSocket":Z
    .restart local v0    # "bMultiSocket":Z
    goto/16 :goto_37f

    .line 221
    .end local v0    # "bMultiSocket":Z
    .restart local v10    # "bMultiSocket":Z
    :cond_246
    :try_start_246
    const-string v3, "Connection"

    invoke-virtual {v13, v3}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_24c
    .catchall {:try_start_246 .. :try_end_24c} :catchall_559

    .line 222
    .local v3, "sCon":Ljava/lang/String;
    if-eqz v3, :cond_270

    :try_start_24e
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v28, v2

    .end local v2    # "accRange":Ljava/lang/String;
    .local v28, "accRange":Ljava/lang/String;
    const-string v2, "close"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_272

    .line 223
    const/4 v2, 0x1

    .line 224
    .end local v16    # "conClose":Z
    .local v2, "conClose":Z
    sget-boolean v6, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v6, :cond_26d

    iget-object v6, v1, Lcom/android/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v6, v6, Lcom/android/okhttp/internal/http/HttpEngine;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    move/from16 v16, v2

    .end local v2    # "conClose":Z
    .restart local v16    # "conClose":Z
    const-string v2, "getTransferStream : connection will close each time"

    invoke-virtual {v6, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_26c
    .catchall {:try_start_24e .. :try_end_26c} :catchall_c6

    goto :goto_272

    .end local v16    # "conClose":Z
    .restart local v2    # "conClose":Z
    :cond_26d
    move/from16 v16, v2

    .end local v2    # "conClose":Z
    .restart local v16    # "conClose":Z
    goto :goto_272

    .line 222
    .end local v28    # "accRange":Ljava/lang/String;
    .local v2, "accRange":Ljava/lang/String;
    :cond_270
    move-object/from16 v28, v2

    .line 226
    .end local v2    # "accRange":Ljava/lang/String;
    .restart local v28    # "accRange":Ljava/lang/String;
    :cond_272
    :goto_272
    move/from16 v2, v16

    .end local v16    # "conClose":Z
    .local v2, "conClose":Z
    :try_start_274
    const-string v6, "range"

    invoke-virtual {v12, v6}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_27a
    .catchall {:try_start_274 .. :try_end_27a} :catchall_559

    .line 227
    .local v6, "ranges":Ljava/lang/String;
    if-eqz v6, :cond_370

    .line 228
    :try_start_27c
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v6, v16

    .line 230
    move/from16 v16, v2

    .end local v2    # "conClose":Z
    .restart local v16    # "conClose":Z
    const-string v2, "bytes"

    invoke-virtual {v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_28a
    .catchall {:try_start_27c .. :try_end_28a} :catchall_c6

    move-object/from16 v17, v3

    .end local v3    # "sCon":Ljava/lang/String;
    .local v17, "sCon":Ljava/lang/String;
    const-string v3, "getTransferStream : a unexpected range request : "

    if-eqz v2, :cond_34b

    .line 231
    :try_start_290
    const-string v2, "="

    invoke-virtual {v6, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 232
    .local v2, "i1":I
    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    move/from16 v19, v18

    .line 233
    .local v19, "i2":I
    invoke-virtual {v6, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    move/from16 v18, v0

    .line 234
    .local v18, "i3":I
    const-string v0, ","

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    move/from16 v20, v0

    .line 235
    .local v20, "i4":I
    if-ltz v2, :cond_31f

    move/from16 v29, v7

    move/from16 v7, v19

    .end local v19    # "i2":I
    .local v7, "i2":I
    .local v29, "rspCode":I
    if-ltz v7, :cond_318

    add-int/lit8 v0, v2, 0x1

    if-ge v0, v7, :cond_318

    move-wide/from16 v21, v8

    move/from16 v8, v18

    .end local v18    # "i3":I
    .local v8, "i3":I
    .local v21, "offset":J
    if-ne v7, v8, :cond_315

    if-ltz v20, :cond_2c2

    move/from16 v18, v2

    goto/16 :goto_329

    .line 240
    :cond_2c2
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {v6, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 241
    .local v9, "sOffset":Ljava/lang/String;
    if-eqz v9, :cond_2f2

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_2d3
    .catchall {:try_start_290 .. :try_end_2d3} :catchall_c6

    if-nez v0, :cond_2d6

    goto :goto_2f2

    .line 247
    :cond_2d6
    :try_start_2d6
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18
    :try_end_2da
    .catchall {:try_start_2d6 .. :try_end_2da} :catchall_2df

    .line 248
    .end local v21    # "offset":J
    .local v18, "offset":J
    const/4 v0, 0x1

    .line 253
    .end local v10    # "bMultiSocket":Z
    .restart local v0    # "bMultiSocket":Z
    move-wide/from16 v8, v18

    goto/16 :goto_346

    .line 250
    .end local v0    # "bMultiSocket":Z
    .end local v18    # "offset":J
    .restart local v10    # "bMultiSocket":Z
    .restart local v21    # "offset":J
    :catchall_2df
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 251
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 252
    .end local v10    # "bMultiSocket":Z
    .local v3, "bMultiSocket":Z
    :try_start_2e3
    sget-boolean v10, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v10, :cond_2ee

    iget-object v10, v1, Lcom/android/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v10, v10, Lcom/android/okhttp/internal/http/HttpEngine;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    invoke-virtual {v10, v0}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 256
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v2    # "i1":I
    .end local v7    # "i2":I
    .end local v8    # "i3":I
    .end local v9    # "sOffset":Ljava/lang/String;
    .end local v20    # "i4":I
    :cond_2ee
    move v0, v3

    move-wide/from16 v8, v21

    goto :goto_346

    .line 242
    .end local v3    # "bMultiSocket":Z
    .restart local v2    # "i1":I
    .restart local v7    # "i2":I
    .restart local v8    # "i3":I
    .restart local v9    # "sOffset":Ljava/lang/String;
    .restart local v10    # "bMultiSocket":Z
    .restart local v20    # "i4":I
    :cond_2f2
    :goto_2f2
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_30f

    iget-object v0, v1, Lcom/android/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v0, v0, Lcom/android/okhttp/internal/http/HttpEngine;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    move/from16 v18, v2

    .end local v2    # "i1":I
    .local v18, "i1":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    goto :goto_311

    .end local v18    # "i1":I
    .restart local v2    # "i1":I
    :cond_30f
    move/from16 v18, v2

    .line 243
    .end local v2    # "i1":I
    .restart local v18    # "i1":I
    :goto_311
    const/4 v0, 0x0

    move-wide/from16 v8, v21

    .end local v10    # "bMultiSocket":Z
    .local v0, "bMultiSocket":Z
    goto :goto_346

    .line 235
    .end local v0    # "bMultiSocket":Z
    .end local v9    # "sOffset":Ljava/lang/String;
    .end local v18    # "i1":I
    .restart local v2    # "i1":I
    .restart local v10    # "bMultiSocket":Z
    :cond_315
    move/from16 v18, v2

    .end local v2    # "i1":I
    .restart local v18    # "i1":I
    goto :goto_329

    .end local v21    # "offset":J
    .restart local v2    # "i1":I
    .local v8, "offset":J
    .local v18, "i3":I
    :cond_318
    move-wide/from16 v21, v8

    move/from16 v8, v18

    move/from16 v18, v2

    .end local v2    # "i1":I
    .local v8, "i3":I
    .local v18, "i1":I
    .restart local v21    # "offset":J
    goto :goto_329

    .end local v21    # "offset":J
    .end local v29    # "rspCode":I
    .restart local v2    # "i1":I
    .local v7, "rspCode":I
    .local v8, "offset":J
    .local v18, "i3":I
    .restart local v19    # "i2":I
    :cond_31f
    move/from16 v29, v7

    move-wide/from16 v21, v8

    move/from16 v8, v18

    move/from16 v7, v19

    move/from16 v18, v2

    .line 236
    .end local v2    # "i1":I
    .end local v19    # "i2":I
    .local v7, "i2":I
    .local v8, "i3":I
    .local v18, "i1":I
    .restart local v21    # "offset":J
    .restart local v29    # "rspCode":I
    :goto_329
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_343

    iget-object v0, v1, Lcom/android/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v0, v0, Lcom/android/okhttp/internal/http/HttpEngine;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 237
    :cond_343
    const/4 v0, 0x0

    move-wide/from16 v8, v21

    .line 256
    .end local v7    # "i2":I
    .end local v10    # "bMultiSocket":Z
    .end local v18    # "i1":I
    .end local v20    # "i4":I
    .end local v21    # "offset":J
    .restart local v0    # "bMultiSocket":Z
    .local v8, "offset":J
    :goto_346
    move v2, v0

    move-wide v6, v8

    move/from16 v3, v16

    goto :goto_37f

    .line 259
    .end local v0    # "bMultiSocket":Z
    .end local v29    # "rspCode":I
    .local v7, "rspCode":I
    .restart local v10    # "bMultiSocket":Z
    :cond_34b
    move/from16 v29, v7

    move-wide/from16 v21, v8

    .end local v7    # "rspCode":I
    .end local v8    # "offset":J
    .restart local v21    # "offset":J
    .restart local v29    # "rspCode":I
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_369

    iget-object v0, v1, Lcom/android/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v0, v0, Lcom/android/okhttp/internal/http/HttpEngine;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_369
    .catchall {:try_start_2e3 .. :try_end_369} :catchall_c6

    .line 260
    :cond_369
    const/4 v0, 0x0

    move v2, v0

    move/from16 v3, v16

    move-wide/from16 v6, v21

    .end local v10    # "bMultiSocket":Z
    .restart local v0    # "bMultiSocket":Z
    goto :goto_37f

    .line 264
    .end local v0    # "bMultiSocket":Z
    .end local v16    # "conClose":Z
    .end local v17    # "sCon":Ljava/lang/String;
    .end local v21    # "offset":J
    .end local v29    # "rspCode":I
    .local v2, "conClose":Z
    .local v3, "sCon":Ljava/lang/String;
    .restart local v7    # "rspCode":I
    .restart local v8    # "offset":J
    .restart local v10    # "bMultiSocket":Z
    :cond_370
    move/from16 v16, v2

    move-object/from16 v17, v3

    move/from16 v29, v7

    move-wide/from16 v21, v8

    .end local v2    # "conClose":Z
    .end local v3    # "sCon":Ljava/lang/String;
    .end local v7    # "rspCode":I
    .end local v8    # "offset":J
    .restart local v16    # "conClose":Z
    .restart local v17    # "sCon":Ljava/lang/String;
    .restart local v21    # "offset":J
    .restart local v29    # "rspCode":I
    const/4 v0, 0x1

    .line 265
    .end local v10    # "bMultiSocket":Z
    .restart local v0    # "bMultiSocket":Z
    const-wide/16 v8, 0x0

    move v2, v0

    move-wide v6, v8

    move/from16 v3, v16

    .line 269
    .end local v0    # "bMultiSocket":Z
    .end local v16    # "conClose":Z
    .end local v17    # "sCon":Ljava/lang/String;
    .end local v21    # "offset":J
    .local v2, "bMultiSocket":Z
    .local v3, "conClose":Z
    .local v6, "offset":J
    :goto_37f
    :try_start_37f
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z
    :try_end_381
    .catchall {:try_start_37f .. :try_end_381} :catchall_559

    if-eqz v0, :cond_39b

    :try_start_383
    iget-object v0, v1, Lcom/android/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v0, v0, Lcom/android/okhttp/internal/http/HttpEngine;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getTransferStream : after getSBEnabled bMultiSocket="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_39b
    .catchall {:try_start_383 .. :try_end_39b} :catchall_c6

    .line 270
    :cond_39b
    if-eqz v2, :cond_526

    .line 271
    :try_start_39d
    invoke-static {v14, v15, v3}, Lcom/android/okhttp/internal/http/MultiratUtil;->getBlockSize(JZ)J

    move-result-wide v8

    move-wide v9, v8

    .line 272
    .local v9, "blockSize":J
    invoke-static {v13, v14, v15}, Lcom/android/okhttp/internal/http/MultiratUtil;->getFullContentLength(Lcom/android/okhttp/Headers;J)J

    move-result-wide v16

    move-wide/from16 v30, v16

    .line 273
    .local v30, "fullContentLen":J
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_3d3

    iget-object v0, v1, Lcom/android/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v0, v0, Lcom/android/okhttp/internal/http/HttpEngine;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v32, v2

    .end local v2    # "bMultiSocket":Z
    .local v32, "bMultiSocket":Z
    const-string v2, "getTransferStream : new MultiSocketInputStream(connection, cacheRequest, this, responseHeaders.getContentLength()), blockSize="

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", fullConSize="

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3c4
    .catchall {:try_start_39d .. :try_end_3c4} :catchall_559

    move-wide/from16 v33, v4

    move-wide/from16 v4, v30

    .end local v30    # "fullContentLen":J
    .local v4, "fullContentLen":J
    .local v33, "contentLength":J
    :try_start_3c8
    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    goto :goto_3d9

    .end local v32    # "bMultiSocket":Z
    .end local v33    # "contentLength":J
    .restart local v2    # "bMultiSocket":Z
    .local v4, "contentLength":J
    .restart local v30    # "fullContentLen":J
    :cond_3d3
    move/from16 v32, v2

    move-wide/from16 v33, v4

    move-wide/from16 v4, v30

    .line 275
    .end local v2    # "bMultiSocket":Z
    .end local v30    # "fullContentLen":J
    .local v4, "fullContentLen":J
    .restart local v32    # "bMultiSocket":Z
    .restart local v33    # "contentLength":J
    :goto_3d9
    const/4 v2, 0x0

    .line 277
    .local v2, "cacheType":I
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_401

    sget-boolean v0, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-nez v0, :cond_401

    iget-object v0, v1, Lcom/android/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v0, v0, Lcom/android/okhttp/internal/http/HttpEngine;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v16, v9

    .end local v9    # "blockSize":J
    .local v16, "blockSize":J
    const-string v9, "httpEngine.mOriRequestHeader "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v9, v9, Lcom/android/okhttp/internal/http/HttpEngine;->mOriRequestHeader:Lcom/android/okhttp/Request;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    goto :goto_403

    .end local v16    # "blockSize":J
    .restart local v9    # "blockSize":J
    :cond_401
    move-wide/from16 v16, v9

    .line 278
    .end local v9    # "blockSize":J
    .restart local v16    # "blockSize":J
    :goto_403
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_429

    sget-boolean v0, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-nez v0, :cond_429

    iget-object v0, v1, Lcom/android/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v0, v0, Lcom/android/okhttp/internal/http/HttpEngine;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "httpEngine.getRequest() "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v9}, Lcom/android/okhttp/internal/http/HttpEngine;->getRequest()Lcom/android/okhttp/Request;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 280
    :cond_429
    new-instance v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v9, v1, Lcom/android/okhttp/internal/http/Http1xStream;->source:Lcom/android/okhttp/okio/BufferedSource;

    iget-object v8, v1, Lcom/android/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v8, v8, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    .line 281
    invoke-virtual {v8}, Lcom/android/okhttp/internal/http/StreamAllocation;->connection()Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/okhttp/internal/io/RealConnection;->getSocket()Ljava/net/Socket;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    iget-object v8, v1, Lcom/android/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    move-object/from16 v18, v8

    iget-object v8, v1, Lcom/android/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    .line 282
    invoke-virtual {v8}, Lcom/android/okhttp/internal/http/HttpEngine;->getRequest()Lcom/android/okhttp/Request;

    move-result-object v19

    iget-object v8, v1, Lcom/android/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    move-wide/from16 v30, v4

    .end local v4    # "fullContentLen":J
    .restart local v30    # "fullContentLen":J
    iget-wide v4, v8, Lcom/android/okhttp/internal/http/HttpEngine;->mainResponseTime:J

    iget-object v8, v1, Lcom/android/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    .line 283
    invoke-virtual {v8}, Lcom/android/okhttp/internal/http/HttpEngine;->getConnection()Lcom/android/okhttp/Connection;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/okhttp/Connection;->getSocket()Ljava/net/Socket;

    move-result-object v24

    iget-object v8, v1, Lcom/android/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    .line 284
    invoke-virtual {v8}, Lcom/android/okhttp/internal/http/HttpEngine;->getRequest()Lcom/android/okhttp/Request;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/okhttp/Request;->newBuilder()Lcom/android/okhttp/Request$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    move-result-object v25

    iget-object v8, v1, Lcom/android/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v8, v8, Lcom/android/okhttp/internal/http/HttpEngine;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    move-object/from16 v27, v8

    move-object v8, v0

    move-wide/from16 v35, v16

    .end local v16    # "blockSize":J
    .local v35, "blockSize":J
    move-object/from16 v37, v11

    .end local v11    # "url":Ljava/lang/String;
    .local v37, "url":Ljava/lang/String;
    move-object/from16 v11, v18

    move-object/from16 v38, v12

    move-object/from16 v39, v13

    .end local v12    # "reqHeaders":Lcom/android/okhttp/Headers;
    .end local v13    # "rspHeaders":Lcom/android/okhttp/Headers;
    .local v38, "reqHeaders":Lcom/android/okhttp/Headers;
    .local v39, "rspHeaders":Lcom/android/okhttp/Headers;
    move-wide v12, v14

    move-wide/from16 v40, v14

    .end local v14    # "len":J
    .local v40, "len":J
    move-wide/from16 v14, v35

    move-object/from16 v16, v19

    move-wide/from16 v17, v6

    move/from16 v19, v3

    move-wide/from16 v20, v30

    move-wide/from16 v22, v4

    move/from16 v26, v2

    invoke-direct/range {v8 .. v27}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;-><init>(Lcom/android/okhttp/okio/BufferedSource;Ljava/io/InputStream;Lcom/android/okhttp/internal/http/HttpEngine;JJLcom/android/okhttp/Request;JZJJLjava/net/Socket;Lcom/android/okhttp/Request;ILcom/android/okhttp/internal/http/MultiratLog;)V

    move-object v4, v0

    .line 286
    .local v4, "mS":Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    iget-object v0, v1, Lcom/android/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v0, v0, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/StreamAllocation;->connection()Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v0

    iget-object v5, v1, Lcom/android/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v5}, Lcom/android/okhttp/internal/http/HttpEngine;->getRequest()Lcom/android/okhttp/Request;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/okhttp/Request;->uri()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/android/okhttp/internal/io/RealConnection;->setMultiSocketInputStream(Lcom/android/okhttp/internal/http/MultiSocketInputStream;Ljava/net/URI;)V

    .line 288
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_4bc

    iget-object v0, v1, Lcom/android/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v0, v0, Lcom/android/okhttp/internal/http/HttpEngine;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getTransferStream : new MultiSocketInputStream() result instance : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_4bc
    .catchall {:try_start_3c8 .. :try_end_4bc} :catchall_557

    .line 290
    :cond_4bc
    :try_start_4bc
    const-string v0, "NETWORKBOOSTER_LOCAL_FILE_TAG_UID"
    :try_end_4be
    .catchall {:try_start_4bc .. :try_end_4be} :catchall_50f

    move-object/from16 v5, v38

    .end local v38    # "reqHeaders":Lcom/android/okhttp/Headers;
    .local v5, "reqHeaders":Lcom/android/okhttp/Headers;
    :try_start_4c0
    invoke-virtual {v5, v0}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, "taguid":Ljava/lang/String;
    sget-boolean v8, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v8, :cond_4e0

    iget-object v8, v1, Lcom/android/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v8, v8, Lcom/android/okhttp/internal/http/HttpEngine;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "get NETWORKBOOSTER_LOCAL_FILE_TAG_UID field "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 292
    :cond_4e0
    if-eqz v0, :cond_50c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_50c

    .line 293
    const-string v8, ":"

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 294
    .local v8, "index":I
    const/4 v9, 0x0

    invoke-virtual {v0, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 295
    .local v9, "sTag":Ljava/lang/String;
    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 296
    .local v10, "sUid":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 297
    .local v11, "tag":I
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 298
    .local v12, "uid":I
    iget-object v13, v1, Lcom/android/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v13, v13, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    invoke-virtual {v13}, Lcom/android/okhttp/internal/http/StreamAllocation;->connection()Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v13

    invoke-virtual {v13, v11, v12}, Lcom/android/okhttp/internal/io/RealConnection;->setTagUid(II)V
    :try_end_50c
    .catchall {:try_start_4c0 .. :try_end_50c} :catchall_50d

    .line 303
    .end local v0    # "taguid":Ljava/lang/String;
    .end local v8    # "index":I
    .end local v9    # "sTag":Ljava/lang/String;
    .end local v10    # "sUid":Ljava/lang/String;
    .end local v11    # "tag":I
    .end local v12    # "uid":I
    :cond_50c
    goto :goto_51d

    .line 301
    :catchall_50d
    move-exception v0

    goto :goto_512

    .end local v5    # "reqHeaders":Lcom/android/okhttp/Headers;
    .restart local v38    # "reqHeaders":Lcom/android/okhttp/Headers;
    :catchall_50f
    move-exception v0

    move-object/from16 v5, v38

    .line 302
    .end local v38    # "reqHeaders":Lcom/android/okhttp/Headers;
    .local v0, "exx":Ljava/lang/Throwable;
    .restart local v5    # "reqHeaders":Lcom/android/okhttp/Headers;
    :goto_512
    :try_start_512
    sget-boolean v8, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v8, :cond_51d

    iget-object v8, v1, Lcom/android/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v8, v8, Lcom/android/okhttp/internal/http/HttpEngine;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    invoke-virtual {v8, v0}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 304
    .end local v0    # "exx":Ljava/lang/Throwable;
    :cond_51d
    :goto_51d
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/okhttp/internal/http/Http1xStream;->isMultirat:Z

    .line 305
    new-instance v0, Lcom/android/okhttp/internal/http/MultiratSource;

    invoke-direct {v0, v4}, Lcom/android/okhttp/internal/http/MultiratSource;-><init>(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)V

    return-object v0

    .line 270
    .end local v5    # "reqHeaders":Lcom/android/okhttp/Headers;
    .end local v30    # "fullContentLen":J
    .end local v32    # "bMultiSocket":Z
    .end local v33    # "contentLength":J
    .end local v35    # "blockSize":J
    .end local v37    # "url":Ljava/lang/String;
    .end local v39    # "rspHeaders":Lcom/android/okhttp/Headers;
    .end local v40    # "len":J
    .local v2, "bMultiSocket":Z
    .local v4, "contentLength":J
    .local v11, "url":Ljava/lang/String;
    .local v12, "reqHeaders":Lcom/android/okhttp/Headers;
    .restart local v13    # "rspHeaders":Lcom/android/okhttp/Headers;
    .restart local v14    # "len":J
    :cond_526
    move/from16 v32, v2

    move-wide/from16 v33, v4

    move-object/from16 v37, v11

    move-object v5, v12

    move-object/from16 v39, v13

    move-wide/from16 v40, v14

    .end local v2    # "bMultiSocket":Z
    .end local v4    # "contentLength":J
    .end local v11    # "url":Ljava/lang/String;
    .end local v12    # "reqHeaders":Lcom/android/okhttp/Headers;
    .end local v13    # "rspHeaders":Lcom/android/okhttp/Headers;
    .end local v14    # "len":J
    .restart local v5    # "reqHeaders":Lcom/android/okhttp/Headers;
    .restart local v32    # "bMultiSocket":Z
    .restart local v33    # "contentLength":J
    .restart local v37    # "url":Ljava/lang/String;
    .restart local v39    # "rspHeaders":Lcom/android/okhttp/Headers;
    .restart local v40    # "len":J
    goto :goto_546

    .line 183
    .end local v3    # "conClose":Z
    .end local v5    # "reqHeaders":Lcom/android/okhttp/Headers;
    .end local v6    # "offset":J
    .end local v28    # "accRange":Ljava/lang/String;
    .end local v29    # "rspCode":I
    .end local v32    # "bMultiSocket":Z
    .end local v33    # "contentLength":J
    .end local v37    # "url":Ljava/lang/String;
    .end local v39    # "rspHeaders":Lcom/android/okhttp/Headers;
    .end local v40    # "len":J
    .local v2, "conClose":Z
    .restart local v4    # "contentLength":J
    .restart local v14    # "len":J
    :cond_532
    move/from16 v16, v2

    move-wide/from16 v33, v4

    move-wide/from16 v40, v14

    .end local v2    # "conClose":Z
    .end local v4    # "contentLength":J
    .end local v14    # "len":J
    .local v16, "conClose":Z
    .restart local v33    # "contentLength":J
    .restart local v40    # "len":J
    goto :goto_546

    .line 179
    .end local v16    # "conClose":Z
    .end local v33    # "contentLength":J
    .end local v40    # "len":J
    .restart local v2    # "conClose":Z
    .restart local v4    # "contentLength":J
    .restart local v14    # "len":J
    :cond_539
    move/from16 v16, v2

    move-wide/from16 v33, v4

    move-wide/from16 v40, v14

    .end local v2    # "conClose":Z
    .end local v4    # "contentLength":J
    .end local v14    # "len":J
    .restart local v16    # "conClose":Z
    .restart local v33    # "contentLength":J
    .restart local v40    # "len":J
    goto :goto_546

    .line 177
    .end local v16    # "conClose":Z
    .end local v33    # "contentLength":J
    .end local v40    # "len":J
    .restart local v2    # "conClose":Z
    .restart local v4    # "contentLength":J
    .restart local v14    # "len":J
    :cond_540
    move/from16 v16, v2

    move-wide/from16 v33, v4

    move-wide/from16 v40, v14

    .line 309
    .end local v2    # "conClose":Z
    .end local v4    # "contentLength":J
    .end local v14    # "len":J
    .restart local v33    # "contentLength":J
    :goto_546
    goto :goto_556

    .line 311
    .end local v33    # "contentLength":J
    .restart local v4    # "contentLength":J
    :cond_547
    move-wide/from16 v33, v4

    .end local v4    # "contentLength":J
    .restart local v33    # "contentLength":J
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_556

    iget-object v0, v1, Lcom/android/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v0, v0, Lcom/android/okhttp/internal/http/HttpEngine;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    const-string v2, "getTransferStream : httpEngine.connection is null "

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_556
    .catchall {:try_start_512 .. :try_end_556} :catchall_557

    .line 316
    :cond_556
    :goto_556
    goto :goto_56a

    .line 314
    :catchall_557
    move-exception v0

    goto :goto_55c

    .end local v33    # "contentLength":J
    .restart local v4    # "contentLength":J
    :catchall_559
    move-exception v0

    move-wide/from16 v33, v4

    .line 315
    .end local v4    # "contentLength":J
    .local v0, "e":Ljava/lang/Throwable;
    .restart local v33    # "contentLength":J
    :goto_55c
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_56a

    iget-object v2, v1, Lcom/android/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v2, v2, Lcom/android/okhttp/internal/http/HttpEngine;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    invoke-virtual {v2, v0}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    goto :goto_56a

    .line 166
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v33    # "contentLength":J
    .restart local v4    # "contentLength":J
    :cond_568
    move-wide/from16 v33, v4

    .line 320
    .end local v4    # "contentLength":J
    .restart local v33    # "contentLength":J
    :cond_56a
    :goto_56a
    const-wide/16 v2, -0x1

    cmp-long v0, v33, v2

    if-eqz v0, :cond_577

    .line 321
    move-wide/from16 v2, v33

    .end local v33    # "contentLength":J
    .local v2, "contentLength":J
    invoke-virtual {v1, v2, v3}, Lcom/android/okhttp/internal/http/Http1xStream;->newFixedLengthSource(J)Lcom/android/okhttp/okio/Source;

    move-result-object v0

    return-object v0

    .line 327
    .end local v2    # "contentLength":J
    .restart local v33    # "contentLength":J
    :cond_577
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/internal/http/Http1xStream;->newUnknownLengthSource()Lcom/android/okhttp/okio/Source;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist cancel()V
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/StreamAllocation;->connection()Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v0

    .line 110
    .local v0, "connection":Lcom/android/okhttp/internal/io/RealConnection;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/okhttp/internal/io/RealConnection;->cancel()V

    .line 111
    :cond_b
    return-void
.end method

.method public blacklist createRequestBody(Lcom/android/okhttp/Request;J)Lcom/android/okhttp/okio/Sink;
    .registers 6
    .param p1, "request"    # Lcom/android/okhttp/Request;
    .param p2, "contentLength"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    const-string v0, "Transfer-Encoding"

    invoke-virtual {p1, v0}, Lcom/android/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "chunked"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 96
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/Http1xStream;->newChunkedSink()Lcom/android/okhttp/okio/Sink;

    move-result-object v0

    return-object v0

    .line 99
    :cond_13
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1e

    .line 101
    invoke-virtual {p0, p2, p3}, Lcom/android/okhttp/internal/http/Http1xStream;->newFixedLengthSink(J)Lcom/android/okhttp/okio/Sink;

    move-result-object v0

    return-object v0

    .line 104
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist finishRequest()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 336
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->flush()V

    .line 337
    return-void
.end method

.method public blacklist isClosed()Z
    .registers 3

    .line 332
    iget v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public blacklist newChunkedSink()Lcom/android/okhttp/okio/Sink;
    .registers 4

    .line 427
    iget v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 428
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    .line 429
    new-instance v0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSink;-><init>(Lcom/android/okhttp/internal/http/Http1xStream;Lcom/android/okhttp/internal/http/Http1xStream$1;)V

    return-object v0

    .line 427
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist newChunkedSource(Lcom/android/okhttp/internal/http/HttpEngine;)Lcom/android/okhttp/okio/Source;
    .registers 5
    .param p1, "httpEngine"    # Lcom/android/okhttp/internal/http/HttpEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 451
    iget v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    .line 452
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    .line 453
    new-instance v0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSource;

    invoke-direct {v0, p0, p1}, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSource;-><init>(Lcom/android/okhttp/internal/http/Http1xStream;Lcom/android/okhttp/internal/http/HttpEngine;)V

    return-object v0

    .line 451
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist newFixedLengthSink(J)Lcom/android/okhttp/okio/Sink;
    .registers 6
    .param p1, "contentLength"    # J

    .line 433
    iget v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 434
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    .line 435
    new-instance v0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;-><init>(Lcom/android/okhttp/internal/http/Http1xStream;JLcom/android/okhttp/internal/http/Http1xStream$1;)V

    return-object v0

    .line 433
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist newFixedLengthSource(J)Lcom/android/okhttp/okio/Source;
    .registers 6
    .param p1, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 445
    iget v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    .line 446
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    .line 447
    new-instance v0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSource;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSource;-><init>(Lcom/android/okhttp/internal/http/Http1xStream;J)V

    return-object v0

    .line 445
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist newUnknownLengthSource()Lcom/android/okhttp/okio/Source;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 457
    iget v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1e

    .line 458
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    if-eqz v0, :cond_16

    .line 459
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    .line 460
    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/StreamAllocation;->noNewStreams()V

    .line 461
    new-instance v0, Lcom/android/okhttp/internal/http/Http1xStream$UnknownLengthSource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/okhttp/internal/http/Http1xStream$UnknownLengthSource;-><init>(Lcom/android/okhttp/internal/http/Http1xStream;Lcom/android/okhttp/internal/http/Http1xStream$1;)V

    return-object v0

    .line 458
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "streamAllocation == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 457
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist openResponseBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/ResponseBody;
    .registers 6
    .param p1, "response"    # Lcom/android/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/http/Http1xStream;->getTransferStream(Lcom/android/okhttp/Response;)Lcom/android/okhttp/okio/Source;

    move-result-object v0

    .line 151
    .local v0, "source":Lcom/android/okhttp/okio/Source;
    new-instance v1, Lcom/android/okhttp/internal/http/RealResponseBody;

    invoke-virtual {p1}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v2

    invoke-static {v0}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/http/RealResponseBody;-><init>(Lcom/android/okhttp/Headers;Lcom/android/okhttp/okio/BufferedSource;)V

    return-object v1
.end method

.method public blacklist readHeaders()Lcom/android/okhttp/Headers;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 418
    new-instance v0, Lcom/android/okhttp/Headers$Builder;

    invoke-direct {v0}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    .line 420
    .local v0, "headers":Lcom/android/okhttp/Headers$Builder;
    :goto_5
    iget-object v1, p0, Lcom/android/okhttp/internal/http/Http1xStream;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "line":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_18

    .line 421
    sget-object v1, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    invoke-virtual {v1, v0, v2}, Lcom/android/okhttp/internal/Internal;->addLenient(Lcom/android/okhttp/Headers$Builder;Ljava/lang/String;)V

    goto :goto_5

    .line 423
    .end local v2    # "line":Ljava/lang/String;
    :cond_18
    invoke-virtual {v0}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v1

    return-object v1
.end method

.method public blacklist readResponse()Lcom/android/okhttp/Response$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 389
    iget v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_22

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    goto :goto_22

    .line 390
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_22
    :goto_22
    :try_start_22
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okhttp/internal/http/StatusLine;->parse(Ljava/lang/String;)Lcom/android/okhttp/internal/http/StatusLine;

    move-result-object v0

    .line 397
    .local v0, "statusLine":Lcom/android/okhttp/internal/http/StatusLine;
    new-instance v1, Lcom/android/okhttp/Response$Builder;

    invoke-direct {v1}, Lcom/android/okhttp/Response$Builder;-><init>()V

    iget-object v2, v0, Lcom/android/okhttp/internal/http/StatusLine;->protocol:Lcom/android/okhttp/Protocol;

    .line 398
    invoke-virtual {v1, v2}, Lcom/android/okhttp/Response$Builder;->protocol(Lcom/android/okhttp/Protocol;)Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    iget v2, v0, Lcom/android/okhttp/internal/http/StatusLine;->code:I

    .line 399
    invoke-virtual {v1, v2}, Lcom/android/okhttp/Response$Builder;->code(I)Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/okhttp/internal/http/StatusLine;->message:Ljava/lang/String;

    .line 400
    invoke-virtual {v1, v2}, Lcom/android/okhttp/Response$Builder;->message(Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    .line 401
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/Http1xStream;->readHeaders()Lcom/android/okhttp/Headers;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/Response$Builder;->headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    .line 403
    .local v1, "responseBuilder":Lcom/android/okhttp/Response$Builder;
    iget v2, v0, Lcom/android/okhttp/internal/http/StatusLine;->code:I

    const/16 v3, 0x64

    if-eq v2, v3, :cond_55

    .line 404
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I
    :try_end_54
    .catch Ljava/io/EOFException; {:try_start_22 .. :try_end_54} :catch_56

    .line 405
    return-object v1

    .line 407
    .end local v0    # "statusLine":Lcom/android/okhttp/internal/http/StatusLine;
    .end local v1    # "responseBuilder":Lcom/android/okhttp/Response$Builder;
    :cond_55
    goto :goto_22

    .line 408
    :catch_56
    move-exception v0

    .line 410
    .local v0, "e":Ljava/io/EOFException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected end of stream on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/okhttp/internal/http/Http1xStream;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 411
    .local v1, "exception":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 412
    throw v1
.end method

.method public blacklist readResponseHeaders()Lcom/android/okhttp/Response$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/Http1xStream;->readResponse()Lcom/android/okhttp/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setHttpEngine(Lcom/android/okhttp/internal/http/HttpEngine;)V
    .registers 2
    .param p1, "httpEngine"    # Lcom/android/okhttp/internal/http/HttpEngine;

    .line 90
    iput-object p1, p0, Lcom/android/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    .line 91
    return-void
.end method

.method public blacklist writeRequest(Lcom/android/okhttp/Headers;Ljava/lang/String;)V
    .registers 11
    .param p1, "headers"    # Lcom/android/okhttp/Headers;
    .param p2, "requestLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 341
    iget v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    if-nez v0, :cond_a0

    .line 344
    const/4 v0, 0x0

    .line 347
    .local v0, "isMms":Z
    iget-object v1, p0, Lcom/android/okhttp/internal/http/Http1xStream;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v1, p2}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-interface {v1, v2}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    .line 348
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p1}, Lcom/android/okhttp/Headers;->size()I

    move-result v3

    .local v3, "size":I
    :goto_15
    if-ge v1, v3, :cond_8b

    .line 350
    invoke-virtual {p1, v1}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v4

    .line 351
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    .line 353
    .local v5, "value":Ljava/lang/String;
    const-string v6, "Content-Type"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 354
    const-string v6, "application/vnd.wap.mms-message"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 355
    const/4 v0, 0x1

    .line 360
    :cond_30
    sget-boolean v6, Lcom/android/okhttp/internal/http/HttpEngine;->SMARTBONDING_FEATURE_ENABLED:Z

    if-eqz v6, :cond_6d

    .line 361
    const-string v6, "NETWORKBOOSTER_LOCAL_FILE_NAME"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_54

    .line 362
    const-string v6, "NETWORKBOOSTER_LOCAL_FILE_RANGE"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_54

    .line 363
    const-string v6, "NETWORKBOOSTER_LOCAL_FILE_TAG_UID"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_54

    .line 364
    const-string v6, "NETWORKBOOSTER_CANNOT_USE_WIFIORMOBILE"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6d

    .line 365
    :cond_54
    sget-boolean v6, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v6, :cond_88

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "This is interval interface field, ignore: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/String;)V

    goto :goto_88

    .line 371
    :cond_6d
    iget-object v6, p0, Lcom/android/okhttp/internal/http/Http1xStream;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-virtual {p1, v1}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v6

    .line 372
    const-string v7, ": "

    invoke-interface {v6, v7}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v6

    .line 373
    invoke-virtual {p1, v1}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v6

    .line 374
    invoke-interface {v6, v2}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    .line 348
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_88
    :goto_88
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 376
    .end local v1    # "i":I
    .end local v3    # "size":I
    :cond_8b
    iget-object v1, p0, Lcom/android/okhttp/internal/http/Http1xStream;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v1, v2}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    .line 379
    if-eqz v0, :cond_9c

    .line 380
    const-string v1, "writeRequest() : isMms is true --> call flush"

    invoke-static {v1}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/String;)V

    .line 381
    iget-object v1, p0, Lcom/android/okhttp/internal/http/Http1xStream;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSink;->flush()V

    .line 384
    :cond_9c
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    .line 385
    return-void

    .line 341
    .end local v0    # "isMms":Z
    :cond_a0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist writeRequestBody(Lcom/android/okhttp/internal/http/RetryableSink;)V
    .registers 5
    .param p1, "requestBody"    # Lcom/android/okhttp/internal/http/RetryableSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 439
    iget v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 440
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    .line 441
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-virtual {p1, v0}, Lcom/android/okhttp/internal/http/RetryableSink;->writeToSocket(Lcom/android/okhttp/okio/Sink;)V

    .line 442
    return-void

    .line 439
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist writeRequestHeaders(Lcom/android/okhttp/Request;)V
    .registers 6
    .param p1, "request"    # Lcom/android/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->writingRequestHeaders()V

    .line 127
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    .line 128
    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->getConnection()Lcom/android/okhttp/Connection;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/okhttp/Connection;->getRoute()Lcom/android/okhttp/Route;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    .line 127
    invoke-static {p1, v0}, Lcom/android/okhttp/internal/http/RequestLine;->get(Lcom/android/okhttp/Request;Ljava/net/Proxy$Type;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "requestLine":Ljava/lang/String;
    sget-boolean v1, Lcom/android/okhttp/internal/http/HttpEngine;->SMARTBONDING_ENABLED:Z

    if-eqz v1, :cond_61

    .line 132
    :try_start_1f
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v1, :cond_30

    sget-boolean v1, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-eqz v1, :cond_30

    .line 133
    iget-object v1, p0, Lcom/android/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v1, v1, Lcom/android/okhttp/internal/http/HttpEngine;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    const-string v2, "writeRequestHeaders: .... "

    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 135
    :cond_30
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v1, :cond_61

    sget-boolean v1, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-nez v1, :cond_61

    .line 136
    iget-object v1, p0, Lcom/android/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v1, v1, Lcom/android/okhttp/internal/http/HttpEngine;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeRequestHeaders "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/android/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v1, v1, Lcom/android/okhttp/internal/http/HttpEngine;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    invoke-virtual {p1}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okhttp/Headers;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->d(Ljava/lang/String;)V
    :try_end_5f
    .catchall {:try_start_1f .. :try_end_5f} :catchall_60

    goto :goto_61

    .line 139
    :catchall_60
    move-exception v1

    .line 142
    :cond_61
    :goto_61
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/okhttp/internal/http/Http1xStream;->writeRequest(Lcom/android/okhttp/Headers;Ljava/lang/String;)V

    .line 143
    return-void
.end method
