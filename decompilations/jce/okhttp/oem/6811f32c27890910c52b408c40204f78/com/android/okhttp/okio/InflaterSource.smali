.class public final Lcom/android/okhttp/okio/InflaterSource;
.super Ljava/lang/Object;
.source "InflaterSource.java"

# interfaces
.implements Lcom/android/okhttp/okio/Source;


# instance fields
.field private bufferBytesHeldByInflater:I

.field private closed:Z

.field private final inflater:Ljava/util/zip/Inflater;

.field private final source:Lcom/android/okhttp/okio/BufferedSource;


# direct methods
.method constructor <init>(Lcom/android/okhttp/okio/BufferedSource;Ljava/util/zip/Inflater;)V
    .registers 5
    .param p1, "source"    # Lcom/android/okhttp/okio/BufferedSource;
    .param p2, "inflater"    # Ljava/util/zip/Inflater;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    if-nez p1, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_e
    if-nez p2, :cond_19

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "inflater == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_19
    iput-object p1, p0, Lcom/android/okhttp/okio/InflaterSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    .line 52
    iput-object p2, p0, Lcom/android/okhttp/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/android/okhttp/okio/Source;Ljava/util/zip/Inflater;)V
    .registers 4
    .param p1, "source"    # Lcom/android/okhttp/okio/Source;
    .param p2, "inflater"    # Ljava/util/zip/Inflater;

    .prologue
    .line 40
    invoke-static {p1}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/okhttp/okio/InflaterSource;-><init>(Lcom/android/okhttp/okio/BufferedSource;Ljava/util/zip/Inflater;)V

    .line 41
    return-void
.end method

.method private releaseInflatedBytes()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    iget v1, p0, Lcom/android/okhttp/okio/InflaterSource;->bufferBytesHeldByInflater:I

    if-nez v1, :cond_5

    return-void

    .line 113
    :cond_5
    iget v1, p0, Lcom/android/okhttp/okio/InflaterSource;->bufferBytesHeldByInflater:I

    iget-object v2, p0, Lcom/android/okhttp/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v2

    sub-int v0, v1, v2

    .line 114
    .local v0, "toRelease":I
    iget v1, p0, Lcom/android/okhttp/okio/InflaterSource;->bufferBytesHeldByInflater:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/android/okhttp/okio/InflaterSource;->bufferBytesHeldByInflater:I

    .line 115
    iget-object v1, p0, Lcom/android/okhttp/okio/InflaterSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lcom/android/okhttp/okio/BufferedSource;->skip(J)V

    .line 116
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/android/okhttp/okio/InflaterSource;->closed:Z

    if-eqz v0, :cond_5

    return-void

    .line 124
    :cond_5
    iget-object v0, p0, Lcom/android/okhttp/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/okhttp/okio/InflaterSource;->closed:Z

    .line 126
    iget-object v0, p0, Lcom/android/okhttp/okio/InflaterSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->close()V

    .line 127
    return-void
.end method

.method public read(Lcom/android/okhttp/okio/Buffer;J)J
    .registers 12
    .param p1, "sink"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 57
    cmp-long v4, p2, v6

    if-gez v4, :cond_20

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "byteCount < 0: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 58
    :cond_20
    iget-boolean v4, p0, Lcom/android/okhttp/okio/InflaterSource;->closed:Z

    if-eqz v4, :cond_2d

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "closed"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 59
    :cond_2d
    cmp-long v4, p2, v6

    if-nez v4, :cond_32

    return-wide v6

    .line 62
    :cond_32
    invoke-virtual {p0}, Lcom/android/okhttp/okio/InflaterSource;->refill()Z

    move-result v2

    .line 66
    .local v2, "sourceExhausted":Z
    const/4 v4, 0x1

    :try_start_37
    invoke-virtual {p1, v4}, Lcom/android/okhttp/okio/Buffer;->writableSegment(I)Lcom/android/okhttp/okio/Segment;

    move-result-object v3

    .line 67
    .local v3, "tail":Lcom/android/okhttp/okio/Segment;
    iget-object v4, p0, Lcom/android/okhttp/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    iget-object v5, v3, Lcom/android/okhttp/okio/Segment;->data:[B

    iget v6, v3, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v7, v3, Lcom/android/okhttp/okio/Segment;->limit:I

    rsub-int v7, v7, 0x2000

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    .line 68
    .local v0, "bytesInflated":I
    if-lez v0, :cond_58

    .line 69
    iget v4, v3, Lcom/android/okhttp/okio/Segment;->limit:I

    add-int/2addr v4, v0

    iput v4, v3, Lcom/android/okhttp/okio/Segment;->limit:I

    .line 70
    iget-wide v4, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    .line 71
    int-to-long v4, v0

    return-wide v4

    .line 73
    :cond_58
    iget-object v4, p0, Lcom/android/okhttp/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->finished()Z

    move-result v4

    if-nez v4, :cond_68

    iget-object v4, p0, Lcom/android/okhttp/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 74
    :cond_68
    invoke-direct {p0}, Lcom/android/okhttp/okio/InflaterSource;->releaseInflatedBytes()V

    .line 75
    iget v4, v3, Lcom/android/okhttp/okio/Segment;->pos:I

    iget v5, v3, Lcom/android/okhttp/okio/Segment;->limit:I

    if-ne v4, v5, :cond_7a

    .line 77
    invoke-virtual {v3}, Lcom/android/okhttp/okio/Segment;->pop()Lcom/android/okhttp/okio/Segment;

    move-result-object v4

    iput-object v4, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 78
    invoke-static {v3}, Lcom/android/okhttp/okio/SegmentPool;->recycle(Lcom/android/okhttp/okio/Segment;)V

    .line 80
    :cond_7a
    const-wide/16 v4, -0x1

    return-wide v4

    .line 82
    :cond_7d
    if-eqz v2, :cond_32

    new-instance v4, Ljava/io/EOFException;

    const-string/jumbo v5, "source exhausted prematurely"

    invoke-direct {v4, v5}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_88
    .catch Ljava/util/zip/DataFormatException; {:try_start_37 .. :try_end_88} :catch_88

    .line 83
    .end local v0    # "bytesInflated":I
    .end local v3    # "tail":Lcom/android/okhttp/okio/Segment;
    :catch_88
    move-exception v1

    .line 84
    .local v1, "e":Ljava/util/zip/DataFormatException;
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public refill()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 95
    iget-object v1, p0, Lcom/android/okhttp/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v1

    if-nez v1, :cond_a

    return v5

    .line 97
    :cond_a
    invoke-direct {p0}, Lcom/android/okhttp/okio/InflaterSource;->releaseInflatedBytes()V

    .line 98
    iget-object v1, p0, Lcom/android/okhttp/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v1

    if-eqz v1, :cond_1e

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "?"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 101
    :cond_1e
    iget-object v1, p0, Lcom/android/okhttp/okio/InflaterSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSource;->exhausted()Z

    move-result v1

    if-eqz v1, :cond_28

    const/4 v1, 0x1

    return v1

    .line 104
    :cond_28
    iget-object v1, p0, Lcom/android/okhttp/okio/InflaterSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSource;->buffer()Lcom/android/okhttp/okio/Buffer;

    move-result-object v1

    iget-object v0, v1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 105
    .local v0, "head":Lcom/android/okhttp/okio/Segment;
    iget v1, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v2, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/okhttp/okio/InflaterSource;->bufferBytesHeldByInflater:I

    .line 106
    iget-object v1, p0, Lcom/android/okhttp/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    iget-object v2, v0, Lcom/android/okhttp/okio/Segment;->data:[B

    iget v3, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    iget v4, p0, Lcom/android/okhttp/okio/InflaterSource;->bufferBytesHeldByInflater:I

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 107
    return v5
.end method

.method public timeout()Lcom/android/okhttp/okio/Timeout;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/okhttp/okio/InflaterSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object v0

    return-object v0
.end method
