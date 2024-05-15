.class final Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSink;
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
    name = "ChunkedSink"
.end annotation


# instance fields
.field private closed:Z

.field final synthetic this$0:Lcom/android/okhttp/internal/http/Http1xStream;

.field private final timeout:Lcom/android/okhttp/okio/ForwardingTimeout;


# direct methods
.method private constructor <init>(Lcom/android/okhttp/internal/http/Http1xStream;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/okhttp/internal/http/Http1xStream;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSink;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    new-instance v0, Lcom/android/okhttp/okio/ForwardingTimeout;

    iget-object v1, p0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSink;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    invoke-static {v1}, Lcom/android/okhttp/internal/http/Http1xStream;->-get0(Lcom/android/okhttp/internal/http/Http1xStream;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSink;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/okhttp/okio/ForwardingTimeout;-><init>(Lcom/android/okhttp/okio/Timeout;)V

    iput-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSink;->timeout:Lcom/android/okhttp/okio/ForwardingTimeout;

    .line 311
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/okhttp/internal/http/Http1xStream;Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSink;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/okhttp/internal/http/Http1xStream;
    .param p2, "-this1"    # Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSink;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSink;-><init>(Lcom/android/okhttp/internal/http/Http1xStream;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 335
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSink;->closed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_25

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    .line 336
    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSink;->closed:Z

    .line 337
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSink;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    invoke-static {v0}, Lcom/android/okhttp/internal/http/Http1xStream;->-get0(Lcom/android/okhttp/internal/http/Http1xStream;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v0

    const-string/jumbo v1, "0\r\n\r\n"

    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    .line 338
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSink;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    iget-object v1, p0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSink;->timeout:Lcom/android/okhttp/okio/ForwardingTimeout;

    invoke-static {v0, v1}, Lcom/android/okhttp/internal/http/Http1xStream;->-wrap0(Lcom/android/okhttp/internal/http/Http1xStream;Lcom/android/okhttp/okio/ForwardingTimeout;)V

    .line 339
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSink;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/okhttp/internal/http/Http1xStream;->-set0(Lcom/android/okhttp/internal/http/Http1xStream;I)I
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_25

    monitor-exit p0

    .line 340
    return-void

    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 330
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSink;->closed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    .line 331
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSink;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    invoke-static {v0}, Lcom/android/okhttp/internal/http/Http1xStream;->-get0(Lcom/android/okhttp/internal/http/Http1xStream;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->flush()V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_12

    monitor-exit p0

    .line 332
    return-void

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public timeout()Lcom/android/okhttp/okio/Timeout;
    .registers 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSink;->timeout:Lcom/android/okhttp/okio/ForwardingTimeout;

    return-object v0
.end method

.method public write(Lcom/android/okhttp/okio/Buffer;J)V
    .registers 6
    .param p1, "source"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSink;->closed:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :cond_d
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_14

    return-void

    .line 323
    :cond_14
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSink;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    invoke-static {v0}, Lcom/android/okhttp/internal/http/Http1xStream;->-get0(Lcom/android/okhttp/internal/http/Http1xStream;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lcom/android/okhttp/okio/BufferedSink;->writeHexadecimalUnsignedLong(J)Lcom/android/okhttp/okio/BufferedSink;

    .line 324
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSink;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    invoke-static {v0}, Lcom/android/okhttp/internal/http/Http1xStream;->-get0(Lcom/android/okhttp/internal/http/Http1xStream;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    .line 325
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSink;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    invoke-static {v0}, Lcom/android/okhttp/internal/http/Http1xStream;->-get0(Lcom/android/okhttp/internal/http/Http1xStream;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/okhttp/okio/BufferedSink;->write(Lcom/android/okhttp/okio/Buffer;J)V

    .line 326
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSink;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    invoke-static {v0}, Lcom/android/okhttp/internal/http/Http1xStream;->-get0(Lcom/android/okhttp/internal/http/Http1xStream;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    .line 327
    return-void
.end method
