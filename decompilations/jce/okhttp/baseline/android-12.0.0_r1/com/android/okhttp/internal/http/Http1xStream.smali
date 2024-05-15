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

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    .line 80
    iput-object p1, p0, Lcom/android/okhttp/internal/http/Http1xStream;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    .line 81
    iput-object p2, p0, Lcom/android/okhttp/internal/http/Http1xStream;->source:Lcom/android/okhttp/okio/BufferedSource;

    .line 82
    iput-object p3, p0, Lcom/android/okhttp/internal/http/Http1xStream;->sink:Lcom/android/okhttp/okio/BufferedSink;

    .line 83
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

    .line 263
    invoke-virtual {p1}, Lcom/android/okhttp/okio/ForwardingTimeout;->delegate()Lcom/android/okhttp/okio/Timeout;

    move-result-object v0

    .line 264
    .local v0, "oldDelegate":Lcom/android/okhttp/okio/Timeout;
    sget-object v1, Lcom/android/okhttp/okio/Timeout;->NONE:Lcom/android/okhttp/okio/Timeout;

    invoke-virtual {p1, v1}, Lcom/android/okhttp/okio/ForwardingTimeout;->setDelegate(Lcom/android/okhttp/okio/Timeout;)Lcom/android/okhttp/okio/ForwardingTimeout;

    .line 265
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Timeout;->clearDeadline()Lcom/android/okhttp/okio/Timeout;

    .line 266
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Timeout;->clearTimeout()Lcom/android/okhttp/okio/Timeout;

    .line 267
    return-void
.end method

.method private blacklist getTransferStream(Lcom/android/okhttp/Response;)Lcom/android/okhttp/okio/Source;
    .registers 6
    .param p1, "response"    # Lcom/android/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    invoke-static {p1}, Lcom/android/okhttp/internal/http/HttpEngine;->hasBody(Lcom/android/okhttp/Response;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 139
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/internal/http/Http1xStream;->newFixedLengthSource(J)Lcom/android/okhttp/okio/Source;

    move-result-object v0

    return-object v0

    .line 142
    :cond_d
    const-string v0, "Transfer-Encoding"

    invoke-virtual {p1, v0}, Lcom/android/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "chunked"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 143
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {p0, v0}, Lcom/android/okhttp/internal/http/Http1xStream;->newChunkedSource(Lcom/android/okhttp/internal/http/HttpEngine;)Lcom/android/okhttp/okio/Source;

    move-result-object v0

    return-object v0

    .line 146
    :cond_22
    invoke-static {p1}, Lcom/android/okhttp/internal/http/OkHeaders;->contentLength(Lcom/android/okhttp/Response;)J

    move-result-wide v0

    .line 147
    .local v0, "contentLength":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_31

    .line 148
    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/internal/http/Http1xStream;->newFixedLengthSource(J)Lcom/android/okhttp/okio/Source;

    move-result-object v2

    return-object v2

    .line 154
    :cond_31
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/Http1xStream;->newUnknownLengthSource()Lcom/android/okhttp/okio/Source;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public blacklist cancel()V
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/StreamAllocation;->connection()Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v0

    .line 106
    .local v0, "connection":Lcom/android/okhttp/internal/io/RealConnection;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/okhttp/internal/io/RealConnection;->cancel()V

    .line 107
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

    .line 90
    const-string v0, "Transfer-Encoding"

    invoke-virtual {p1, v0}, Lcom/android/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "chunked"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 92
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/Http1xStream;->newChunkedSink()Lcom/android/okhttp/okio/Sink;

    move-result-object v0

    return-object v0

    .line 95
    :cond_13
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1e

    .line 97
    invoke-virtual {p0, p2, p3}, Lcom/android/okhttp/internal/http/Http1xStream;->newFixedLengthSink(J)Lcom/android/okhttp/okio/Sink;

    move-result-object v0

    return-object v0

    .line 100
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

    .line 163
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->flush()V

    .line 164
    return-void
.end method

.method public blacklist isClosed()Z
    .registers 3

    .line 159
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

    .line 220
    iget v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 221
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    .line 222
    new-instance v0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSink;-><init>(Lcom/android/okhttp/internal/http/Http1xStream;Lcom/android/okhttp/internal/http/Http1xStream$1;)V

    return-object v0

    .line 220
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

    .line 244
    iget v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    .line 245
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    .line 246
    new-instance v0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSource;

    invoke-direct {v0, p0, p1}, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSource;-><init>(Lcom/android/okhttp/internal/http/Http1xStream;Lcom/android/okhttp/internal/http/HttpEngine;)V

    return-object v0

    .line 244
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

    .line 226
    iget v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 227
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    .line 228
    new-instance v0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;-><init>(Lcom/android/okhttp/internal/http/Http1xStream;JLcom/android/okhttp/internal/http/Http1xStream$1;)V

    return-object v0

    .line 226
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

    .line 238
    iget v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    .line 239
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    .line 240
    new-instance v0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSource;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSource;-><init>(Lcom/android/okhttp/internal/http/Http1xStream;J)V

    return-object v0

    .line 238
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

    .line 250
    iget v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1e

    .line 251
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    if-eqz v0, :cond_16

    .line 252
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    .line 253
    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/StreamAllocation;->noNewStreams()V

    .line 254
    new-instance v0, Lcom/android/okhttp/internal/http/Http1xStream$UnknownLengthSource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/okhttp/internal/http/Http1xStream$UnknownLengthSource;-><init>(Lcom/android/okhttp/internal/http/Http1xStream;Lcom/android/okhttp/internal/http/Http1xStream$1;)V

    return-object v0

    .line 251
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "streamAllocation == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
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

    .line 133
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/http/Http1xStream;->getTransferStream(Lcom/android/okhttp/Response;)Lcom/android/okhttp/okio/Source;

    move-result-object v0

    .line 134
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

    .line 211
    new-instance v0, Lcom/android/okhttp/Headers$Builder;

    invoke-direct {v0}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    .line 213
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

    .line 214
    sget-object v1, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    invoke-virtual {v1, v0, v2}, Lcom/android/okhttp/internal/Internal;->addLenient(Lcom/android/okhttp/Headers$Builder;Ljava/lang/String;)V

    goto :goto_5

    .line 216
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

    .line 182
    iget v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_22

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    goto :goto_22

    .line 183
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

    .line 188
    :cond_22
    :goto_22
    :try_start_22
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okhttp/internal/http/StatusLine;->parse(Ljava/lang/String;)Lcom/android/okhttp/internal/http/StatusLine;

    move-result-object v0

    .line 190
    .local v0, "statusLine":Lcom/android/okhttp/internal/http/StatusLine;
    new-instance v1, Lcom/android/okhttp/Response$Builder;

    invoke-direct {v1}, Lcom/android/okhttp/Response$Builder;-><init>()V

    iget-object v2, v0, Lcom/android/okhttp/internal/http/StatusLine;->protocol:Lcom/android/okhttp/Protocol;

    .line 191
    invoke-virtual {v1, v2}, Lcom/android/okhttp/Response$Builder;->protocol(Lcom/android/okhttp/Protocol;)Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    iget v2, v0, Lcom/android/okhttp/internal/http/StatusLine;->code:I

    .line 192
    invoke-virtual {v1, v2}, Lcom/android/okhttp/Response$Builder;->code(I)Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/okhttp/internal/http/StatusLine;->message:Ljava/lang/String;

    .line 193
    invoke-virtual {v1, v2}, Lcom/android/okhttp/Response$Builder;->message(Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    .line 194
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/Http1xStream;->readHeaders()Lcom/android/okhttp/Headers;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/Response$Builder;->headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    .line 196
    .local v1, "responseBuilder":Lcom/android/okhttp/Response$Builder;
    iget v2, v0, Lcom/android/okhttp/internal/http/StatusLine;->code:I

    const/16 v3, 0x64

    if-eq v2, v3, :cond_55

    .line 197
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I
    :try_end_54
    .catch Ljava/io/EOFException; {:try_start_22 .. :try_end_54} :catch_56

    .line 198
    return-object v1

    .line 200
    .end local v0    # "statusLine":Lcom/android/okhttp/internal/http/StatusLine;
    .end local v1    # "responseBuilder":Lcom/android/okhttp/Response$Builder;
    :cond_55
    goto :goto_22

    .line 201
    :catch_56
    move-exception v0

    .line 203
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

    .line 204
    .local v1, "exception":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 205
    throw v1
.end method

.method public blacklist readResponseHeaders()Lcom/android/okhttp/Response$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/Http1xStream;->readResponse()Lcom/android/okhttp/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setHttpEngine(Lcom/android/okhttp/internal/http/HttpEngine;)V
    .registers 2
    .param p1, "httpEngine"    # Lcom/android/okhttp/internal/http/HttpEngine;

    .line 86
    iput-object p1, p0, Lcom/android/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    .line 87
    return-void
.end method

.method public blacklist writeRequest(Lcom/android/okhttp/Headers;Ljava/lang/String;)V
    .registers 8
    .param p1, "headers"    # Lcom/android/okhttp/Headers;
    .param p2, "requestLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    iget v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    if-nez v0, :cond_3d

    .line 169
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v0, p2}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    .line 170
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Lcom/android/okhttp/Headers;->size()I

    move-result v2

    .local v2, "size":I
    :goto_14
    if-ge v0, v2, :cond_34

    .line 171
    iget-object v3, p0, Lcom/android/okhttp/internal/http/Http1xStream;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-virtual {p1, v0}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v3

    .line 172
    const-string v4, ": "

    invoke-interface {v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v3

    .line 173
    invoke-virtual {p1, v0}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v3

    .line 174
    invoke-interface {v3, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 176
    .end local v0    # "i":I
    .end local v2    # "size":I
    :cond_34
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    .line 177
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    .line 178
    return-void

    .line 168
    :cond_3d
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

    .line 232
    iget v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 233
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    .line 234
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-virtual {p1, v0}, Lcom/android/okhttp/internal/http/RetryableSink;->writeToSocket(Lcom/android/okhttp/okio/Sink;)V

    .line 235
    return-void

    .line 232
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
    .registers 4
    .param p1, "request"    # Lcom/android/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->writingRequestHeaders()V

    .line 123
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    .line 124
    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->getConnection()Lcom/android/okhttp/Connection;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/okhttp/Connection;->getRoute()Lcom/android/okhttp/Route;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    .line 123
    invoke-static {p1, v0}, Lcom/android/okhttp/internal/http/RequestLine;->get(Lcom/android/okhttp/Request;Ljava/net/Proxy$Type;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "requestLine":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/okhttp/internal/http/Http1xStream;->writeRequest(Lcom/android/okhttp/Headers;Ljava/lang/String;)V

    .line 126
    return-void
.end method
