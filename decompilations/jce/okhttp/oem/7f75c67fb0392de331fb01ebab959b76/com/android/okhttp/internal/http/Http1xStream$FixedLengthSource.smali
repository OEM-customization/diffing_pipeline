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
.field private blacklist bytesRemaining:J

.field final synthetic blacklist this$0:Lcom/android/okhttp/internal/http/Http1xStream;


# direct methods
.method public constructor blacklist <init>(Lcom/android/okhttp/internal/http/Http1xStream;J)V
    .registers 6
    .param p2, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 590
    iput-object p1, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSource;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/okhttp/internal/http/Http1xStream$AbstractSource;-><init>(Lcom/android/okhttp/internal/http/Http1xStream;Lcom/android/okhttp/internal/http/Http1xStream$1;)V

    .line 591
    iput-wide p2, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSource;->bytesRemaining:J

    .line 592
    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-nez p1, :cond_11

    .line 593
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSource;->endOfInput()V

    .line 595
    :cond_11
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 616
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSource;->closed:Z

    if-eqz v0, :cond_5

    return-void

    .line 618
    :cond_5
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1a

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 619
    invoke-static {p0, v0, v1}, Lcom/android/okhttp/internal/Util;->discard(Lcom/android/okhttp/okio/Source;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 620
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSource;->unexpectedEndOfInput()V

    .line 623
    :cond_1a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSource;->closed:Z

    .line 624
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

    .line 598
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_47

    .line 599
    iget-boolean v2, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSource;->closed:Z

    if-nez v2, :cond_3f

    .line 600
    iget-wide v2, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSource;->bytesRemaining:J

    cmp-long v2, v2, v0

    const-wide/16 v3, -0x1

    if-nez v2, :cond_13

    return-wide v3

    .line 602
    :cond_13
    iget-object v2, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSource;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    # getter for: Lcom/android/okhttp/internal/http/Http1xStream;->source:Lcom/android/okhttp/okio/BufferedSource;
    invoke-static {v2}, Lcom/android/okhttp/internal/http/Http1xStream;->access$600(Lcom/android/okhttp/internal/http/Http1xStream;)Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v2

    iget-wide v5, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSource;->bytesRemaining:J

    invoke-static {v5, v6, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    invoke-interface {v2, p1, v5, v6}, Lcom/android/okhttp/okio/BufferedSource;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v5

    .line 603
    .local v5, "read":J
    cmp-long v2, v5, v3

    if-eqz v2, :cond_34

    .line 608
    iget-wide v2, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSource;->bytesRemaining:J

    sub-long/2addr v2, v5

    iput-wide v2, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSource;->bytesRemaining:J

    .line 609
    cmp-long v0, v2, v0

    if-nez v0, :cond_33

    .line 610
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSource;->endOfInput()V

    .line 612
    :cond_33
    return-wide v5

    .line 604
    :cond_34
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSource;->unexpectedEndOfInput()V

    .line 605
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 599
    .end local v5    # "read":J
    :cond_3f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 598
    :cond_47
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
