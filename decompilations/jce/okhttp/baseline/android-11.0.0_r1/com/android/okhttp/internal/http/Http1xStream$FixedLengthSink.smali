.class final Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;
.super Ljava/lang/Object;
.source "Http1xStream.java"

# interfaces
.implements Lcom/android/okhttp/okio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/http/Http1xStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FixedLengthSink"
.end annotation


# instance fields
.field private blacklist bytesRemaining:J

.field private blacklist closed:Z

.field final synthetic blacklist this$0:Lcom/android/okhttp/internal/http/Http1xStream;

.field private final blacklist timeout:Lcom/android/okhttp/okio/ForwardingTimeout;


# direct methods
.method private constructor blacklist <init>(Lcom/android/okhttp/internal/http/Http1xStream;J)V
    .registers 5
    .param p2, "bytesRemaining"    # J

    .line 275
    iput-object p1, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    new-instance p1, Lcom/android/okhttp/okio/ForwardingTimeout;

    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    # getter for: Lcom/android/okhttp/internal/http/Http1xStream;->sink:Lcom/android/okhttp/okio/BufferedSink;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/Http1xStream;->access$300(Lcom/android/okhttp/internal/http/Http1xStream;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/okhttp/okio/ForwardingTimeout;-><init>(Lcom/android/okhttp/okio/Timeout;)V

    iput-object p1, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;->timeout:Lcom/android/okhttp/okio/ForwardingTimeout;

    .line 276
    iput-wide p2, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;->bytesRemaining:J

    .line 277
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/okhttp/internal/http/Http1xStream;JLcom/android/okhttp/internal/http/Http1xStream$1;)V
    .registers 5
    .param p1, "x0"    # Lcom/android/okhttp/internal/http/Http1xStream;
    .param p2, "x1"    # J
    .param p4, "x2"    # Lcom/android/okhttp/internal/http/Http1xStream$1;

    .line 270
    invoke-direct {p0, p1, p2, p3}, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;-><init>(Lcom/android/okhttp/internal/http/Http1xStream;J)V

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

    .line 300
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;->closed:Z

    if-eqz v0, :cond_5

    return-void

    .line 301
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;->closed:Z

    .line 302
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1e

    .line 303
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    iget-object v1, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;->timeout:Lcom/android/okhttp/okio/ForwardingTimeout;

    # invokes: Lcom/android/okhttp/internal/http/Http1xStream;->detachTimeout(Lcom/android/okhttp/okio/ForwardingTimeout;)V
    invoke-static {v0, v1}, Lcom/android/okhttp/internal/http/Http1xStream;->access$400(Lcom/android/okhttp/internal/http/Http1xStream;Lcom/android/okhttp/okio/ForwardingTimeout;)V

    .line 304
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    const/4 v1, 0x3

    # setter for: Lcom/android/okhttp/internal/http/Http1xStream;->state:I
    invoke-static {v0, v1}, Lcom/android/okhttp/internal/http/Http1xStream;->access$502(Lcom/android/okhttp/internal/http/Http1xStream;I)I

    .line 305
    return-void

    .line 302
    :cond_1e
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;->closed:Z

    if-eqz v0, :cond_5

    return-void

    .line 296
    :cond_5
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    # getter for: Lcom/android/okhttp/internal/http/Http1xStream;->sink:Lcom/android/okhttp/okio/BufferedSink;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/Http1xStream;->access$300(Lcom/android/okhttp/internal/http/Http1xStream;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->flush()V

    .line 297
    return-void
.end method

.method public blacklist timeout()Lcom/android/okhttp/okio/Timeout;
    .registers 2

    .line 280
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;->timeout:Lcom/android/okhttp/okio/ForwardingTimeout;

    return-object v0
.end method

.method public blacklist write(Lcom/android/okhttp/okio/Buffer;J)V
    .registers 11
    .param p1, "source"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;->closed:Z

    if-nez v0, :cond_44

    .line 285
    invoke-virtual {p1}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lcom/android/okhttp/internal/Util;->checkOffsetAndCount(JJJ)V

    .line 286
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;->bytesRemaining:J

    cmp-long v0, p2, v0

    if-gtz v0, :cond_23

    .line 290
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    # getter for: Lcom/android/okhttp/internal/http/Http1xStream;->sink:Lcom/android/okhttp/okio/BufferedSink;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/Http1xStream;->access$300(Lcom/android/okhttp/internal/http/Http1xStream;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/okhttp/okio/BufferedSink;->write(Lcom/android/okhttp/okio/Buffer;J)V

    .line 291
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;->bytesRemaining:J

    sub-long/2addr v0, p2

    iput-wide v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;->bytesRemaining:J

    .line 292
    return-void

    .line 287
    :cond_23
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;->bytesRemaining:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " bytes but received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_44
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
