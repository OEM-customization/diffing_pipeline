.class public final Lcom/android/okhttp/internal/http/Http1xStream;
.super Ljava/lang/Object;
.source "Http1xStream.java"

# interfaces
.implements Lcom/android/okhttp/internal/http/HttpStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/internal/http/Http1xStream$AbstractSource;,
        Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSink;,
        Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSource;,
        Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;,
        Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSource;,
        Lcom/android/okhttp/internal/http/Http1xStream$UnknownLengthSource;
    }
.end annotation


# static fields
.field private static final STATE_CLOSED:I = 0x6

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_OPEN_REQUEST_BODY:I = 0x1

.field private static final STATE_OPEN_RESPONSE_BODY:I = 0x4

.field private static final STATE_READING_RESPONSE_BODY:I = 0x5

.field private static final STATE_READ_RESPONSE_HEADERS:I = 0x3

.field private static final STATE_WRITING_REQUEST_BODY:I = 0x2


# instance fields
.field private httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

.field private final sink:Lcom/android/okhttp/okio/BufferedSink;

.field private final source:Lcom/android/okhttp/okio/BufferedSource;

.field private state:I

.field private final streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;


# direct methods
.method static synthetic -get0(Lcom/android/okhttp/internal/http/Http1xStream;)Lcom/android/okhttp/okio/BufferedSink;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/http/Http1xStream;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->sink:Lcom/android/okhttp/okio/BufferedSink;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/okhttp/internal/http/Http1xStream;)Lcom/android/okhttp/okio/BufferedSource;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/http/Http1xStream;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->source:Lcom/android/okhttp/okio/BufferedSource;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/okhttp/internal/http/Http1xStream;)I
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/http/Http1xStream;

    .prologue
    iget v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/okhttp/internal/http/Http1xStream;)Lcom/android/okhttp/internal/http/StreamAllocation;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/http/Http1xStream;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/okhttp/internal/http/Http1xStream;I)I
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/http/Http1xStream;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/okhttp/internal/http/Http1xStream;Lcom/android/okhttp/okio/ForwardingTimeout;)V
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/http/Http1xStream;
    .param p1, "timeout"    # Lcom/android/okhttp/okio/ForwardingTimeout;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/http/Http1xStream;->detachTimeout(Lcom/android/okhttp/okio/ForwardingTimeout;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/okhttp/internal/http/StreamAllocation;Lcom/android/okhttp/okio/BufferedSource;Lcom/android/okhttp/okio/BufferedSink;)V
    .registers 5
    .param p1, "streamAllocation"    # Lcom/android/okhttp/internal/http/StreamAllocation;
    .param p2, "source"    # Lcom/android/okhttp/okio/BufferedSource;
    .param p3, "sink"    # Lcom/android/okhttp/okio/BufferedSink;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    .line 78
    iput-object p1, p0, Lcom/android/okhttp/internal/http/Http1xStream;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    .line 79
    iput-object p2, p0, Lcom/android/okhttp/internal/http/Http1xStream;->source:Lcom/android/okhttp/okio/BufferedSource;

    .line 80
    iput-object p3, p0, Lcom/android/okhttp/internal/http/Http1xStream;->sink:Lcom/android/okhttp/okio/BufferedSink;

    .line 81
    return-void
.end method

.method private detachTimeout(Lcom/android/okhttp/okio/ForwardingTimeout;)V
    .registers 4
    .param p1, "timeout"    # Lcom/android/okhttp/okio/ForwardingTimeout;

    .prologue
    .line 261
    invoke-virtual {p1}, Lcom/android/okhttp/okio/ForwardingTimeout;->delegate()Lcom/android/okhttp/okio/Timeout;

    move-result-object v0

    .line 262
    .local v0, "oldDelegate":Lcom/android/okhttp/okio/Timeout;
    sget-object v1, Lcom/android/okhttp/okio/Timeout;->NONE:Lcom/android/okhttp/okio/Timeout;

    invoke-virtual {p1, v1}, Lcom/android/okhttp/okio/ForwardingTimeout;->setDelegate(Lcom/android/okhttp/okio/Timeout;)Lcom/android/okhttp/okio/ForwardingTimeout;

    .line 263
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Timeout;->clearDeadline()Lcom/android/okhttp/okio/Timeout;

    .line 264
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Timeout;->clearTimeout()Lcom/android/okhttp/okio/Timeout;

    .line 265
    return-void
.end method

.method private getTransferStream(Lcom/android/okhttp/Response;)Lcom/android/okhttp/okio/Source;
    .registers 6
    .param p1, "response"    # Lcom/android/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-static {p1}, Lcom/android/okhttp/internal/http/HttpEngine;->hasBody(Lcom/android/okhttp/Response;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 137
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/okhttp/internal/http/Http1xStream;->newFixedLengthSource(J)Lcom/android/okhttp/okio/Source;

    move-result-object v2

    return-object v2

    .line 140
    :cond_d
    const-string/jumbo v2, "chunked"

    const-string/jumbo v3, "Transfer-Encoding"

    invoke-virtual {p1, v3}, Lcom/android/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 141
    iget-object v2, p0, Lcom/android/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {p0, v2}, Lcom/android/okhttp/internal/http/Http1xStream;->newChunkedSource(Lcom/android/okhttp/internal/http/HttpEngine;)Lcom/android/okhttp/okio/Source;

    move-result-object v2

    return-object v2

    .line 144
    :cond_24
    invoke-static {p1}, Lcom/android/okhttp/internal/http/OkHeaders;->contentLength(Lcom/android/okhttp/Response;)J

    move-result-wide v0

    .line 145
    .local v0, "contentLength":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_33

    .line 146
    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/internal/http/Http1xStream;->newFixedLengthSource(J)Lcom/android/okhttp/okio/Source;

    move-result-object v2

    return-object v2

    .line 152
    :cond_33
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/Http1xStream;->newUnknownLengthSource()Lcom/android/okhttp/okio/Source;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .prologue
    .line 103
    iget-object v1, p0, Lcom/android/okhttp/internal/http/Http1xStream;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/StreamAllocation;->connection()Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v0

    .line 104
    .local v0, "connection":Lcom/android/okhttp/internal/io/RealConnection;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/okhttp/internal/io/RealConnection;->cancel()V

    .line 105
    :cond_b
    return-void
.end method

.method public createRequestBody(Lcom/android/okhttp/Request;J)Lcom/android/okhttp/okio/Sink;
    .registers 6
    .param p1, "request"    # Lcom/android/okhttp/Request;
    .param p2, "contentLength"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    const-string/jumbo v0, "chunked"

    const-string/jumbo v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lcom/android/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 90
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/Http1xStream;->newChunkedSink()Lcom/android/okhttp/okio/Sink;

    move-result-object v0

    return-object v0

    .line 93
    :cond_15
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_20

    .line 95
    invoke-virtual {p0, p2, p3}, Lcom/android/okhttp/internal/http/Http1xStream;->newFixedLengthSink(J)Lcom/android/okhttp/okio/Sink;

    move-result-object v0

    return-object v0

    .line 98
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 99
    const-string/jumbo v1, "Cannot stream a request body without chunked encoding or a known content length!"

    .line 98
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public finishRequest()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->flush()V

    .line 162
    return-void
.end method

.method public isClosed()Z
    .registers 3

    .prologue
    .line 157
    iget v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public newChunkedSink()Lcom/android/okhttp/okio/Sink;
    .registers 4

    .prologue
    .line 218
    iget v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_21

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_21
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    .line 220
    new-instance v0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSink;-><init>(Lcom/android/okhttp/internal/http/Http1xStream;Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSink;)V

    return-object v0
.end method

.method public newChunkedSource(Lcom/android/okhttp/internal/http/HttpEngine;)Lcom/android/okhttp/okio/Source;
    .registers 5
    .param p1, "httpEngine"    # Lcom/android/okhttp/internal/http/HttpEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    iget v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_21

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_21
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    .line 244
    new-instance v0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSource;

    invoke-direct {v0, p0, p1}, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSource;-><init>(Lcom/android/okhttp/internal/http/Http1xStream;Lcom/android/okhttp/internal/http/HttpEngine;)V

    return-object v0
.end method

.method public newFixedLengthSink(J)Lcom/android/okhttp/okio/Sink;
    .registers 6
    .param p1, "contentLength"    # J

    .prologue
    .line 224
    iget v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_21

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_21
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    .line 226
    new-instance v0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;-><init>(Lcom/android/okhttp/internal/http/Http1xStream;JLcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;)V

    return-object v0
.end method

.method public newFixedLengthSource(J)Lcom/android/okhttp/okio/Source;
    .registers 6
    .param p1, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    iget v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_21

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_21
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    .line 238
    new-instance v0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSource;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSource;-><init>(Lcom/android/okhttp/internal/http/Http1xStream;J)V

    return-object v0
.end method

.method public newUnknownLengthSource()Lcom/android/okhttp/okio/Source;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 248
    iget v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_22

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_22
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    if-nez v0, :cond_2f

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "streamAllocation == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_2f
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    .line 251
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/StreamAllocation;->noNewStreams()V

    .line 252
    new-instance v0, Lcom/android/okhttp/internal/http/Http1xStream$UnknownLengthSource;

    invoke-direct {v0, p0, v2}, Lcom/android/okhttp/internal/http/Http1xStream$UnknownLengthSource;-><init>(Lcom/android/okhttp/internal/http/Http1xStream;Lcom/android/okhttp/internal/http/Http1xStream$UnknownLengthSource;)V

    return-object v0
.end method

.method public openResponseBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/ResponseBody;
    .registers 6
    .param p1, "response"    # Lcom/android/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/http/Http1xStream;->getTransferStream(Lcom/android/okhttp/Response;)Lcom/android/okhttp/okio/Source;

    move-result-object v0

    .line 132
    .local v0, "source":Lcom/android/okhttp/okio/Source;
    new-instance v1, Lcom/android/okhttp/internal/http/RealResponseBody;

    invoke-virtual {p1}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v2

    invoke-static {v0}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/http/RealResponseBody;-><init>(Lcom/android/okhttp/Headers;Lcom/android/okhttp/okio/BufferedSource;)V

    return-object v1
.end method

.method public readHeaders()Lcom/android/okhttp/Headers;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    new-instance v0, Lcom/android/okhttp/Headers$Builder;

    invoke-direct {v0}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    .line 211
    .local v0, "headers":Lcom/android/okhttp/Headers$Builder;
    :goto_5
    iget-object v2, p0, Lcom/android/okhttp/internal/http/Http1xStream;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v2}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_17

    .line 212
    sget-object v2, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    invoke-virtual {v2, v0, v1}, Lcom/android/okhttp/internal/Internal;->addLenient(Lcom/android/okhttp/Headers$Builder;Ljava/lang/String;)V

    goto :goto_5

    .line 214
    :cond_17
    invoke-virtual {v0}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v2

    return-object v2
.end method

.method public readResponse()Lcom/android/okhttp/Response$Builder;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    iget v4, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_26

    iget v4, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_26

    .line 181
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 186
    :cond_26
    :try_start_26
    iget-object v4, p0, Lcom/android/okhttp/internal/http/Http1xStream;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v4}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/okhttp/internal/http/StatusLine;->parse(Ljava/lang/String;)Lcom/android/okhttp/internal/http/StatusLine;

    move-result-object v3

    .line 188
    .local v3, "statusLine":Lcom/android/okhttp/internal/http/StatusLine;
    new-instance v4, Lcom/android/okhttp/Response$Builder;

    invoke-direct {v4}, Lcom/android/okhttp/Response$Builder;-><init>()V

    .line 189
    iget-object v5, v3, Lcom/android/okhttp/internal/http/StatusLine;->protocol:Lcom/android/okhttp/Protocol;

    .line 188
    invoke-virtual {v4, v5}, Lcom/android/okhttp/Response$Builder;->protocol(Lcom/android/okhttp/Protocol;)Lcom/android/okhttp/Response$Builder;

    move-result-object v4

    .line 190
    iget v5, v3, Lcom/android/okhttp/internal/http/StatusLine;->code:I

    .line 188
    invoke-virtual {v4, v5}, Lcom/android/okhttp/Response$Builder;->code(I)Lcom/android/okhttp/Response$Builder;

    move-result-object v4

    .line 191
    iget-object v5, v3, Lcom/android/okhttp/internal/http/StatusLine;->message:Ljava/lang/String;

    .line 188
    invoke-virtual {v4, v5}, Lcom/android/okhttp/Response$Builder;->message(Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;

    move-result-object v4

    .line 192
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/Http1xStream;->readHeaders()Lcom/android/okhttp/Headers;

    move-result-object v5

    .line 188
    invoke-virtual {v4, v5}, Lcom/android/okhttp/Response$Builder;->headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Response$Builder;

    move-result-object v2

    .line 194
    .local v2, "responseBuilder":Lcom/android/okhttp/Response$Builder;
    iget v4, v3, Lcom/android/okhttp/internal/http/StatusLine;->code:I

    const/16 v5, 0x64

    if-eq v4, v5, :cond_26

    .line 195
    const/4 v4, 0x4

    iput v4, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I
    :try_end_58
    .catch Ljava/io/EOFException; {:try_start_26 .. :try_end_58} :catch_59

    .line 196
    return-object v2

    .line 199
    .end local v2    # "responseBuilder":Lcom/android/okhttp/Response$Builder;
    .end local v3    # "statusLine":Lcom/android/okhttp/internal/http/StatusLine;
    :catch_59
    move-exception v0

    .line 201
    .local v0, "e":Ljava/io/EOFException;
    new-instance v1, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unexpected end of stream on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/okhttp/internal/http/Http1xStream;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 202
    .local v1, "exception":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 203
    throw v1
.end method

.method public readResponseHeaders()Lcom/android/okhttp/Response$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/Http1xStream;->readResponse()Lcom/android/okhttp/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setHttpEngine(Lcom/android/okhttp/internal/http/HttpEngine;)V
    .registers 2
    .param p1, "httpEngine"    # Lcom/android/okhttp/internal/http/HttpEngine;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    .line 85
    return-void
.end method

.method public writeRequest(Lcom/android/okhttp/Headers;Ljava/lang/String;)V
    .registers 8
    .param p1, "headers"    # Lcom/android/okhttp/Headers;
    .param p2, "requestLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    iget v2, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    if-eqz v2, :cond_20

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 167
    :cond_20
    iget-object v2, p0, Lcom/android/okhttp/internal/http/Http1xStream;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v2, p2}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    invoke-interface {v2, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    .line 168
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Lcom/android/okhttp/Headers;->size()I

    move-result v1

    .local v1, "size":I
    :goto_31
    if-ge v0, v1, :cond_55

    .line 169
    iget-object v2, p0, Lcom/android/okhttp/internal/http/Http1xStream;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-virtual {p1, v0}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v2

    .line 170
    const-string/jumbo v3, ": "

    .line 169
    invoke-interface {v2, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v2

    .line 171
    invoke-virtual {p1, v0}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    .line 169
    invoke-interface {v2, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v2

    .line 172
    const-string/jumbo v3, "\r\n"

    .line 169
    invoke-interface {v2, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 174
    :cond_55
    iget-object v2, p0, Lcom/android/okhttp/internal/http/Http1xStream;->sink:Lcom/android/okhttp/okio/BufferedSink;

    const-string/jumbo v3, "\r\n"

    invoke-interface {v2, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    .line 175
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    .line 176
    return-void
.end method

.method public writeRequestBody(Lcom/android/okhttp/internal/http/RetryableSink;)V
    .registers 5
    .param p1, "requestBody"    # Lcom/android/okhttp/internal/http/RetryableSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    iget v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_21

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_21
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->state:I

    .line 232
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-virtual {p1, v0}, Lcom/android/okhttp/internal/http/RetryableSink;->writeToSocket(Lcom/android/okhttp/okio/Sink;)V

    .line 233
    return-void
.end method

.method public writeRequestHeaders(Lcom/android/okhttp/Request;)V
    .registers 4
    .param p1, "request"    # Lcom/android/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    iget-object v1, p0, Lcom/android/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/HttpEngine;->writingRequestHeaders()V

    .line 122
    iget-object v1, p0, Lcom/android/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/HttpEngine;->getConnection()Lcom/android/okhttp/Connection;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/okhttp/Connection;->getRoute()Lcom/android/okhttp/Route;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    .line 121
    invoke-static {p1, v1}, Lcom/android/okhttp/internal/http/RequestLine;->get(Lcom/android/okhttp/Request;Ljava/net/Proxy$Type;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "requestLine":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/okhttp/internal/http/Http1xStream;->writeRequest(Lcom/android/okhttp/Headers;Ljava/lang/String;)V

    .line 124
    return-void
.end method
