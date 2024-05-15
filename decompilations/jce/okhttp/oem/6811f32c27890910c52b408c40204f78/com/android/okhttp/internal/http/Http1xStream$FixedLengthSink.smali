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
.field private bytesRemaining:J

.field private closed:Z

.field final synthetic this$0:Lcom/android/okhttp/internal/http/Http1xStream;

.field private final timeout:Lcom/android/okhttp/okio/ForwardingTimeout;


# direct methods
.method private constructor <init>(Lcom/android/okhttp/internal/http/Http1xStream;J)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/okhttp/internal/http/Http1xStream;
    .param p2, "bytesRemaining"    # J

    .prologue
    .line 273
    iput-object p1, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    new-instance v0, Lcom/android/okhttp/okio/ForwardingTimeout;

    iget-object v1, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    invoke-static {v1}, Lcom/android/okhttp/internal/http/Http1xStream;->-get0(Lcom/android/okhttp/internal/http/Http1xStream;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSink;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/okhttp/okio/ForwardingTimeout;-><init>(Lcom/android/okhttp/okio/Timeout;)V

    iput-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;->timeout:Lcom/android/okhttp/okio/ForwardingTimeout;

    .line 274
    iput-wide p2, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;->bytesRemaining:J

    .line 275
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/okhttp/internal/http/Http1xStream;JLcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/okhttp/internal/http/Http1xStream;
    .param p2, "bytesRemaining"    # J
    .param p4, "-this2"    # Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;-><init>(Lcom/android/okhttp/internal/http/Http1xStream;J)V

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
    .line 298
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;->closed:Z

    if-eqz v0, :cond_5

    return-void

    .line 299
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;->closed:Z

    .line 300
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_19

    new-instance v0, Ljava/net/ProtocolException;

    const-string/jumbo v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_19
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    iget-object v1, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;->timeout:Lcom/android/okhttp/okio/ForwardingTimeout;

    invoke-static {v0, v1}, Lcom/android/okhttp/internal/http/Http1xStream;->-wrap0(Lcom/android/okhttp/internal/http/Http1xStream;Lcom/android/okhttp/okio/ForwardingTimeout;)V

    .line 302
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/okhttp/internal/http/Http1xStream;->-set0(Lcom/android/okhttp/internal/http/Http1xStream;I)I

    .line 303
    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;->closed:Z

    if-eqz v0, :cond_5

    return-void

    .line 294
    :cond_5
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    invoke-static {v0}, Lcom/android/okhttp/internal/http/Http1xStream;->-get0(Lcom/android/okhttp/internal/http/Http1xStream;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->flush()V

    .line 295
    return-void
.end method

.method public timeout()Lcom/android/okhttp/okio/Timeout;
    .registers 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;->timeout:Lcom/android/okhttp/okio/ForwardingTimeout;

    return-object v0
.end method

.method public write(Lcom/android/okhttp/okio/Buffer;J)V
    .registers 10
    .param p1, "source"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;->closed:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_d
    invoke-virtual {p1}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/internal/Util;->checkOffsetAndCount(JJJ)V

    .line 284
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;->bytesRemaining:J

    cmp-long v0, p2, v0

    if-lez v0, :cond_44

    .line 285
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;->bytesRemaining:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 286
    const-string/jumbo v2, " bytes but received "

    .line 285
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_44
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    invoke-static {v0}, Lcom/android/okhttp/internal/http/Http1xStream;->-get0(Lcom/android/okhttp/internal/http/Http1xStream;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/okhttp/okio/BufferedSink;->write(Lcom/android/okhttp/okio/Buffer;J)V

    .line 289
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;->bytesRemaining:J

    sub-long/2addr v0, p2

    iput-wide v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;->bytesRemaining:J

    .line 290
    return-void
.end method
