.class public final Lcom/android/okhttp/okio/InflaterSource;
.super Ljava/lang/Object;
.source "InflaterSource.java"

# interfaces
.implements Lcom/android/okhttp/okio/Source;


# instance fields
.field private blacklist bufferBytesHeldByInflater:I

.field private blacklist closed:Z

.field private final blacklist inflater:Ljava/util/zip/Inflater;

.field private final blacklist source:Lcom/android/okhttp/okio/BufferedSource;


# direct methods
.method constructor blacklist <init>(Lcom/android/okhttp/okio/BufferedSource;Ljava/util/zip/Inflater;)V
    .registers 5
    .param p1, "source"    # Lcom/android/okhttp/okio/BufferedSource;
    .param p2, "inflater"    # Ljava/util/zip/Inflater;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    if-eqz p1, :cond_14

    .line 52
    if-eqz p2, :cond_c

    .line 53
    iput-object p1, p0, Lcom/android/okhttp/okio/InflaterSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    .line 54
    iput-object p2, p0, Lcom/android/okhttp/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    .line 55
    return-void

    .line 52
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inflater == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>(Lcom/android/okhttp/okio/Source;Ljava/util/zip/Inflater;)V
    .registers 4
    .param p1, "source"    # Lcom/android/okhttp/okio/Source;
    .param p2, "inflater"    # Ljava/util/zip/Inflater;

    .line 42
    invoke-static {p1}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/okhttp/okio/InflaterSource;-><init>(Lcom/android/okhttp/okio/BufferedSource;Ljava/util/zip/Inflater;)V

    .line 43
    return-void
.end method

.method private blacklist releaseInflatedBytes()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    iget v0, p0, Lcom/android/okhttp/okio/InflaterSource;->bufferBytesHeldByInflater:I

    if-nez v0, :cond_5

    return-void

    .line 115
    :cond_5
    iget-object v1, p0, Lcom/android/okhttp/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v1

    sub-int/2addr v0, v1

    .line 116
    .local v0, "toRelease":I
    iget v1, p0, Lcom/android/okhttp/okio/InflaterSource;->bufferBytesHeldByInflater:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/android/okhttp/okio/InflaterSource;->bufferBytesHeldByInflater:I

    .line 117
    iget-object v1, p0, Lcom/android/okhttp/okio/InflaterSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lcom/android/okhttp/okio/BufferedSource;->skip(J)V

    .line 118
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    iget-boolean v0, p0, Lcom/android/okhttp/okio/InflaterSource;->closed:Z

    if-eqz v0, :cond_5

    return-void

    .line 126
    :cond_5
    iget-object v0, p0, Lcom/android/okhttp/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/okhttp/okio/InflaterSource;->closed:Z

    .line 128
    iget-object v0, p0, Lcom/android/okhttp/okio/InflaterSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->close()V

    .line 129
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

    .line 59
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_76

    .line 60
    iget-boolean v2, p0, Lcom/android/okhttp/okio/InflaterSource;->closed:Z

    if-nez v2, :cond_6e

    .line 61
    cmp-long v2, p2, v0

    if-nez v2, :cond_f

    return-wide v0

    .line 64
    :cond_f
    :goto_f
    invoke-virtual {p0}, Lcom/android/okhttp/okio/InflaterSource;->refill()Z

    move-result v0

    .line 68
    .local v0, "sourceExhausted":Z
    const/4 v1, 0x1

    :try_start_14
    invoke-virtual {p1, v1}, Lcom/android/okhttp/okio/Buffer;->writableSegment(I)Lcom/android/okhttp/okio/Segment;

    move-result-object v1

    .line 69
    .local v1, "tail":Lcom/android/okhttp/okio/Segment;
    iget-object v2, p0, Lcom/android/okhttp/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    iget-object v3, v1, Lcom/android/okhttp/okio/Segment;->data:[B

    iget v4, v1, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v5, v1, Lcom/android/okhttp/okio/Segment;->limit:I

    rsub-int v5, v5, 0x2000

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v2

    .line 70
    .local v2, "bytesInflated":I
    if-lez v2, :cond_35

    .line 71
    iget v3, v1, Lcom/android/okhttp/okio/Segment;->limit:I

    add-int/2addr v3, v2

    iput v3, v1, Lcom/android/okhttp/okio/Segment;->limit:I

    .line 72
    iget-wide v3, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    .line 73
    int-to-long v3, v2

    return-wide v3

    .line 75
    :cond_35
    iget-object v3, p0, Lcom/android/okhttp/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->finished()Z

    move-result v3

    if-nez v3, :cond_52

    iget-object v3, p0, Lcom/android/okhttp/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v3

    if-eqz v3, :cond_46

    goto :goto_52

    .line 84
    :cond_46
    if-nez v0, :cond_4a

    .line 87
    .end local v1    # "tail":Lcom/android/okhttp/okio/Segment;
    .end local v2    # "bytesInflated":I
    nop

    .line 88
    .end local v0    # "sourceExhausted":Z
    goto :goto_f

    .line 84
    .restart local v0    # "sourceExhausted":Z
    .restart local v1    # "tail":Lcom/android/okhttp/okio/Segment;
    .restart local v2    # "bytesInflated":I
    :cond_4a
    new-instance v3, Ljava/io/EOFException;

    const-string v4, "source exhausted prematurely"

    invoke-direct {v3, v4}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .end local v0    # "sourceExhausted":Z
    .end local p0    # "this":Lcom/android/okhttp/okio/InflaterSource;
    .end local p1    # "sink":Lcom/android/okhttp/okio/Buffer;
    .end local p2    # "byteCount":J
    throw v3

    .line 76
    .restart local v0    # "sourceExhausted":Z
    .restart local p0    # "this":Lcom/android/okhttp/okio/InflaterSource;
    .restart local p1    # "sink":Lcom/android/okhttp/okio/Buffer;
    .restart local p2    # "byteCount":J
    :cond_52
    :goto_52
    invoke-direct {p0}, Lcom/android/okhttp/okio/InflaterSource;->releaseInflatedBytes()V

    .line 77
    iget v3, v1, Lcom/android/okhttp/okio/Segment;->pos:I

    iget v4, v1, Lcom/android/okhttp/okio/Segment;->limit:I

    if-ne v3, v4, :cond_64

    .line 79
    invoke-virtual {v1}, Lcom/android/okhttp/okio/Segment;->pop()Lcom/android/okhttp/okio/Segment;

    move-result-object v3

    iput-object v3, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 80
    invoke-static {v1}, Lcom/android/okhttp/okio/SegmentPool;->recycle(Lcom/android/okhttp/okio/Segment;)V
    :try_end_64
    .catch Ljava/util/zip/DataFormatException; {:try_start_14 .. :try_end_64} :catch_67

    .line 82
    :cond_64
    const-wide/16 v3, -0x1

    return-wide v3

    .line 85
    .end local v1    # "tail":Lcom/android/okhttp/okio/Segment;
    .end local v2    # "bytesInflated":I
    :catch_67
    move-exception v1

    .line 86
    .local v1, "e":Ljava/util/zip/DataFormatException;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 60
    .end local v0    # "sourceExhausted":Z
    .end local v1    # "e":Ljava/util/zip/DataFormatException;
    :cond_6e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_76
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

.method public blacklist refill()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/android/okhttp/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 99
    :cond_a
    invoke-direct {p0}, Lcom/android/okhttp/okio/InflaterSource;->releaseInflatedBytes()V

    .line 100
    iget-object v0, p0, Lcom/android/okhttp/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v0

    if-nez v0, :cond_3a

    .line 103
    iget-object v0, p0, Lcom/android/okhttp/okio/InflaterSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->exhausted()Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    return v0

    .line 106
    :cond_1f
    iget-object v0, p0, Lcom/android/okhttp/okio/InflaterSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->buffer()Lcom/android/okhttp/okio/Buffer;

    move-result-object v0

    iget-object v0, v0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 107
    .local v0, "head":Lcom/android/okhttp/okio/Segment;
    iget v2, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v3, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/okhttp/okio/InflaterSource;->bufferBytesHeldByInflater:I

    .line 108
    iget-object v2, p0, Lcom/android/okhttp/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    iget-object v3, v0, Lcom/android/okhttp/okio/Segment;->data:[B

    iget v4, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    iget v5, p0, Lcom/android/okhttp/okio/InflaterSource;->bufferBytesHeldByInflater:I

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 109
    return v1

    .line 100
    .end local v0    # "head":Lcom/android/okhttp/okio/Segment;
    :cond_3a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist timeout()Lcom/android/okhttp/okio/Timeout;
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/android/okhttp/okio/InflaterSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object v0

    return-object v0
.end method
