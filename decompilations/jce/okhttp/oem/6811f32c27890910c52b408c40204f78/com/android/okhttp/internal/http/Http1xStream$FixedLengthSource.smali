.class Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSource;
.super Lcom/android/okhttp/internal/http/Http1xStream$AbstractSource;
.source "Http1xStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/http/Http1xStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FixedLengthSource"
.end annotation


# instance fields
.field private bytesRemaining:J

.field final synthetic this$0:Lcom/android/okhttp/internal/http/Http1xStream;


# direct methods
.method public constructor <init>(Lcom/android/okhttp/internal/http/Http1xStream;J)V
    .registers 8
    .param p1, "this$0"    # Lcom/android/okhttp/internal/http/Http1xStream;
    .param p2, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 381
    iput-object p1, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSource;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/okhttp/internal/http/Http1xStream$AbstractSource;-><init>(Lcom/android/okhttp/internal/http/Http1xStream;Lcom/android/okhttp/internal/http/Http1xStream$AbstractSource;)V

    .line 382
    iput-wide p2, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSource;->bytesRemaining:J

    .line 383
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_13

    .line 384
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSource;->endOfInput()V

    .line 386
    :cond_13
    return-void
.end method


# virtual methods
.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 407
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSource;->closed:Z

    if-eqz v0, :cond_5

    return-void

    .line 409
    :cond_5
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1c

    .line 410
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/16 v1, 0x64

    invoke-static {p0, v1, v0}, Lcom/android/okhttp/internal/Util;->discard(Lcom/android/okhttp/okio/Source;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 409
    if-eqz v0, :cond_1c

    .line 411
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSource;->unexpectedEndOfInput()V

    .line 414
    :cond_1c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSource;->closed:Z

    .line 415
    return-void
.end method

.method public read(Lcom/android/okhttp/okio/Buffer;J)J
    .registers 14
    .param p1, "sink"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, -0x1

    const-wide/16 v6, 0x0

    .line 389
    cmp-long v2, p2, v6

    if-gez v2, :cond_22

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "byteCount < 0: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 390
    :cond_22
    iget-boolean v2, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSource;->closed:Z

    if-eqz v2, :cond_2f

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "closed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 391
    :cond_2f
    iget-wide v2, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSource;->bytesRemaining:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_36

    return-wide v8

    .line 393
    :cond_36
    iget-object v2, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSource;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    invoke-static {v2}, Lcom/android/okhttp/internal/http/Http1xStream;->-get1(Lcom/android/okhttp/internal/http/Http1xStream;)Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSource;->bytesRemaining:J

    invoke-static {v4, v5, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-interface {v2, p1, v4, v5}, Lcom/android/okhttp/okio/BufferedSource;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v0

    .line 394
    .local v0, "read":J
    cmp-long v2, v0, v8

    if-nez v2, :cond_56

    .line 395
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSource;->unexpectedEndOfInput()V

    .line 396
    new-instance v2, Ljava/net/ProtocolException;

    const-string/jumbo v3, "unexpected end of stream"

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 399
    :cond_56
    iget-wide v2, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSource;->bytesRemaining:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSource;->bytesRemaining:J

    .line 400
    iget-wide v2, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSource;->bytesRemaining:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_64

    .line 401
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSource;->endOfInput()V

    .line 403
    :cond_64
    return-wide v0
.end method
