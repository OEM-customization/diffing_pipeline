.class public final Lcom/android/okhttp/internal/http/RetryableSink;
.super Ljava/lang/Object;
.source "RetryableSink.java"

# interfaces
.implements Lcom/android/okhttp/okio/Sink;


# instance fields
.field private closed:Z

.field private final content:Lcom/android/okhttp/okio/Buffer;

.field private final limit:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/okhttp/internal/http/RetryableSink;-><init>(I)V

    .line 43
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "limit"    # I

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {v0}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/internal/http/RetryableSink;->content:Lcom/android/okhttp/okio/Buffer;

    .line 38
    iput p1, p0, Lcom/android/okhttp/internal/http/RetryableSink;->limit:I

    .line 39
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
    .line 46
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/RetryableSink;->closed:Z

    if-eqz v0, :cond_5

    return-void

    .line 47
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/okhttp/internal/http/RetryableSink;->closed:Z

    .line 48
    iget-object v0, p0, Lcom/android/okhttp/internal/http/RetryableSink;->content:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v0

    iget v2, p0, Lcom/android/okhttp/internal/http/RetryableSink;->limit:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_42

    .line 49
    new-instance v0, Ljava/net/ProtocolException;

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "content-length promised "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/okhttp/internal/http/RetryableSink;->limit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " bytes, but received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/okhttp/internal/http/RetryableSink;->content:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v2}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_42
    return-void
.end method

.method public contentLength()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/okhttp/internal/http/RetryableSink;->content:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public flush()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    return-void
.end method

.method public timeout()Lcom/android/okhttp/okio/Timeout;
    .registers 2

    .prologue
    .line 67
    sget-object v0, Lcom/android/okhttp/okio/Timeout;->NONE:Lcom/android/okhttp/okio/Timeout;

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
    .line 55
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/RetryableSink;->closed:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_d
    invoke-virtual {p1}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/internal/Util;->checkOffsetAndCount(JJJ)V

    .line 57
    iget v0, p0, Lcom/android/okhttp/internal/http/RetryableSink;->limit:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4d

    iget-object v0, p0, Lcom/android/okhttp/internal/http/RetryableSink;->content:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v0

    iget v2, p0, Lcom/android/okhttp/internal/http/RetryableSink;->limit:I

    int-to-long v2, v2

    sub-long/2addr v2, p2

    cmp-long v0, v0, v2

    if-lez v0, :cond_4d

    .line 58
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "exceeded content-length limit of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/okhttp/internal/http/RetryableSink;->limit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_4d
    iget-object v0, p0, Lcom/android/okhttp/internal/http/RetryableSink;->content:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/okhttp/okio/Buffer;->write(Lcom/android/okhttp/okio/Buffer;J)V

    .line 61
    return-void
.end method

.method public writeToSocket(Lcom/android/okhttp/okio/Sink;)V
    .registers 8
    .param p1, "socketOut"    # Lcom/android/okhttp/okio/Sink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    new-instance v1, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {v1}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    .line 77
    .local v1, "buffer":Lcom/android/okhttp/okio/Buffer;
    iget-object v0, p0, Lcom/android/okhttp/internal/http/RetryableSink;->content:Lcom/android/okhttp/okio/Buffer;

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/android/okhttp/internal/http/RetryableSink;->content:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v4}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/okhttp/okio/Buffer;->copyTo(Lcom/android/okhttp/okio/Buffer;JJ)Lcom/android/okhttp/okio/Buffer;

    .line 78
    invoke-virtual {v1}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lcom/android/okhttp/okio/Sink;->write(Lcom/android/okhttp/okio/Buffer;J)V

    .line 79
    return-void
.end method
