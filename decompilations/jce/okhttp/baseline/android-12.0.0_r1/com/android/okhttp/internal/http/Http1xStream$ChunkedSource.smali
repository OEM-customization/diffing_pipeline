.class Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSource;
.super Lcom/android/okhttp/internal/http/Http1xStream$AbstractSource;
.source "Http1xStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/http/Http1xStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChunkedSource"
.end annotation


# static fields
.field private static final blacklist NO_CHUNK_YET:J = -0x1L


# instance fields
.field private blacklist bytesRemainingInChunk:J

.field private blacklist hasMoreChunks:Z

.field private final blacklist httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

.field final synthetic blacklist this$0:Lcom/android/okhttp/internal/http/Http1xStream;


# direct methods
.method constructor blacklist <init>(Lcom/android/okhttp/internal/http/Http1xStream;Lcom/android/okhttp/internal/http/HttpEngine;)V
    .registers 5
    .param p2, "httpEngine"    # Lcom/android/okhttp/internal/http/HttpEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 427
    iput-object p1, p0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSource;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/okhttp/internal/http/Http1xStream$AbstractSource;-><init>(Lcom/android/okhttp/internal/http/Http1xStream;Lcom/android/okhttp/internal/http/Http1xStream$1;)V

    .line 423
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSource;->bytesRemainingInChunk:J

    .line 424
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSource;->hasMoreChunks:Z

    .line 428
    iput-object p2, p0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSource;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    .line 429
    return-void
.end method

.method private blacklist readChunkSize()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 452
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSource;->bytesRemainingInChunk:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    .line 453
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSource;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    # getter for: Lcom/android/okhttp/internal/http/Http1xStream;->source:Lcom/android/okhttp/okio/BufferedSource;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/Http1xStream;->access$600(Lcom/android/okhttp/internal/http/Http1xStream;)Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    .line 456
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSource;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    # getter for: Lcom/android/okhttp/internal/http/Http1xStream;->source:Lcom/android/okhttp/okio/BufferedSource;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/Http1xStream;->access$600(Lcom/android/okhttp/internal/http/Http1xStream;)Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->readHexadecimalUnsignedLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSource;->bytesRemainingInChunk:J

    .line 457
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSource;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    # getter for: Lcom/android/okhttp/internal/http/Http1xStream;->source:Lcom/android/okhttp/okio/BufferedSource;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/Http1xStream;->access$600(Lcom/android/okhttp/internal/http/Http1xStream;)Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 458
    .local v0, "extensions":Ljava/lang/String;
    iget-wide v1, p0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSource;->bytesRemainingInChunk:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_5a

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_41

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_3f
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_3f} :catch_7b

    if-eqz v1, :cond_5a

    .line 464
    .end local v0    # "extensions":Ljava/lang/String;
    :cond_41
    nop

    .line 465
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSource;->bytesRemainingInChunk:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_59

    .line 466
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSource;->hasMoreChunks:Z

    .line 467
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSource;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v1, p0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSource;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/Http1xStream;->readHeaders()Lcom/android/okhttp/Headers;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/HttpEngine;->receiveHeaders(Lcom/android/okhttp/Headers;)V

    .line 468
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSource;->endOfInput()V

    .line 470
    :cond_59
    return-void

    .line 459
    .restart local v0    # "extensions":Ljava/lang/String;
    :cond_5a
    :try_start_5a
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected chunk size and optional extensions but was \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSource;->bytesRemainingInChunk:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSource;
    throw v1
    :try_end_7b
    .catch Ljava/lang/NumberFormatException; {:try_start_5a .. :try_end_7b} :catch_7b

    .line 462
    .end local v0    # "extensions":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSource;
    :catch_7b
    move-exception v0

    .line 463
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/net/ProtocolException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 473
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSource;->closed:Z

    if-eqz v0, :cond_5

    return-void

    .line 474
    :cond_5
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSource;->hasMoreChunks:Z

    if-eqz v0, :cond_16

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Lcom/android/okhttp/internal/Util;->discard(Lcom/android/okhttp/okio/Source;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 475
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSource;->unexpectedEndOfInput()V

    .line 477
    :cond_16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSource;->closed:Z

    .line 478
    return-void
.end method

.method public blacklist read(Lcom/android/okhttp/okio/Buffer;J)J
    .registers 11
    .param p1, "sink"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 432
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_50

    .line 433
    iget-boolean v2, p0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSource;->closed:Z

    if-nez v2, :cond_48

    .line 434
    iget-boolean v2, p0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSource;->hasMoreChunks:Z

    const-wide/16 v3, -0x1

    if-nez v2, :cond_11

    return-wide v3

    .line 436
    :cond_11
    iget-wide v5, p0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSource;->bytesRemainingInChunk:J

    cmp-long v0, v5, v0

    if-eqz v0, :cond_1b

    cmp-long v0, v5, v3

    if-nez v0, :cond_23

    .line 437
    :cond_1b
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSource;->readChunkSize()V

    .line 438
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSource;->hasMoreChunks:Z

    if-nez v0, :cond_23

    return-wide v3

    .line 441
    :cond_23
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSource;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    # getter for: Lcom/android/okhttp/internal/http/Http1xStream;->source:Lcom/android/okhttp/okio/BufferedSource;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/Http1xStream;->access$600(Lcom/android/okhttp/internal/http/Http1xStream;)Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSource;->bytesRemainingInChunk:J

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Lcom/android/okhttp/okio/BufferedSource;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v0

    .line 442
    .local v0, "read":J
    cmp-long v2, v0, v3

    if-eqz v2, :cond_3d

    .line 446
    iget-wide v2, p0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSource;->bytesRemainingInChunk:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSource;->bytesRemainingInChunk:J

    .line 447
    return-wide v0

    .line 443
    :cond_3d
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSource;->unexpectedEndOfInput()V

    .line 444
    new-instance v2, Ljava/net/ProtocolException;

    const-string v3, "unexpected end of stream"

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 433
    .end local v0    # "read":J
    :cond_48
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 432
    :cond_50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
