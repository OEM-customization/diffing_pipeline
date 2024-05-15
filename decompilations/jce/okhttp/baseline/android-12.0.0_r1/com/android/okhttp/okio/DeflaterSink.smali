.class public final Lcom/android/okhttp/okio/DeflaterSink;
.super Ljava/lang/Object;
.source "DeflaterSink.java"

# interfaces
.implements Lcom/android/okhttp/okio/Sink;


# instance fields
.field private blacklist closed:Z

.field private final blacklist deflater:Ljava/util/zip/Deflater;

.field private final blacklist sink:Lcom/android/okhttp/okio/BufferedSink;


# direct methods
.method constructor blacklist <init>(Lcom/android/okhttp/okio/BufferedSink;Ljava/util/zip/Deflater;)V
    .registers 5
    .param p1, "sink"    # Lcom/android/okhttp/okio/BufferedSink;
    .param p2, "deflater"    # Ljava/util/zip/Deflater;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    if-eqz p1, :cond_14

    .line 55
    if-eqz p2, :cond_c

    .line 56
    iput-object p1, p0, Lcom/android/okhttp/okio/DeflaterSink;->sink:Lcom/android/okhttp/okio/BufferedSink;

    .line 57
    iput-object p2, p0, Lcom/android/okhttp/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    .line 58
    return-void

    .line 55
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inflater == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>(Lcom/android/okhttp/okio/Sink;Ljava/util/zip/Deflater;)V
    .registers 4
    .param p1, "sink"    # Lcom/android/okhttp/okio/Sink;
    .param p2, "deflater"    # Ljava/util/zip/Deflater;

    .line 45
    invoke-static {p1}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/okhttp/okio/DeflaterSink;-><init>(Lcom/android/okhttp/okio/BufferedSink;Ljava/util/zip/Deflater;)V

    .line 46
    return-void
.end method

.method private blacklist deflate(Z)V
    .registers 9
    .param p1, "syncFlush"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/android/okhttp/okio/DeflaterSink;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->buffer()Lcom/android/okhttp/okio/Buffer;

    move-result-object v0

    .line 90
    .local v0, "buffer":Lcom/android/okhttp/okio/Buffer;
    :goto_6
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/okio/Buffer;->writableSegment(I)Lcom/android/okhttp/okio/Segment;

    move-result-object v1

    .line 96
    .local v1, "s":Lcom/android/okhttp/okio/Segment;
    if-eqz p1, :cond_1d

    .line 97
    iget-object v2, p0, Lcom/android/okhttp/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    iget-object v3, v1, Lcom/android/okhttp/okio/Segment;->data:[B

    iget v4, v1, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v5, v1, Lcom/android/okhttp/okio/Segment;->limit:I

    rsub-int v5, v5, 0x2000

    const/4 v6, 0x2

    invoke-virtual {v2, v3, v4, v5, v6}, Ljava/util/zip/Deflater;->deflate([BIII)I

    move-result v2

    goto :goto_2b

    .line 98
    :cond_1d
    iget-object v2, p0, Lcom/android/okhttp/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    iget-object v3, v1, Lcom/android/okhttp/okio/Segment;->data:[B

    iget v4, v1, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v5, v1, Lcom/android/okhttp/okio/Segment;->limit:I

    rsub-int v5, v5, 0x2000

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v2

    :goto_2b
    nop

    .line 100
    .local v2, "deflated":I
    if-lez v2, :cond_3f

    .line 101
    iget v3, v1, Lcom/android/okhttp/okio/Segment;->limit:I

    add-int/2addr v3, v2

    iput v3, v1, Lcom/android/okhttp/okio/Segment;->limit:I

    .line 102
    iget-wide v3, v0, Lcom/android/okhttp/okio/Buffer;->size:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, v0, Lcom/android/okhttp/okio/Buffer;->size:J

    .line 103
    iget-object v3, p0, Lcom/android/okhttp/okio/DeflaterSink;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v3}, Lcom/android/okhttp/okio/BufferedSink;->emitCompleteSegments()Lcom/android/okhttp/okio/BufferedSink;

    goto :goto_57

    .line 104
    :cond_3f
    iget-object v3, p0, Lcom/android/okhttp/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v3}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v3

    if-eqz v3, :cond_57

    .line 105
    iget v3, v1, Lcom/android/okhttp/okio/Segment;->pos:I

    iget v4, v1, Lcom/android/okhttp/okio/Segment;->limit:I

    if-ne v3, v4, :cond_56

    .line 107
    invoke-virtual {v1}, Lcom/android/okhttp/okio/Segment;->pop()Lcom/android/okhttp/okio/Segment;

    move-result-object v3

    iput-object v3, v0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 108
    invoke-static {v1}, Lcom/android/okhttp/okio/SegmentPool;->recycle(Lcom/android/okhttp/okio/Segment;)V

    .line 110
    :cond_56
    return-void

    .line 112
    .end local v1    # "s":Lcom/android/okhttp/okio/Segment;
    .end local v2    # "deflated":I
    :cond_57
    :goto_57
    goto :goto_6
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    iget-boolean v0, p0, Lcom/android/okhttp/okio/DeflaterSink;->closed:Z

    if-eqz v0, :cond_5

    return-void

    .line 130
    :cond_5
    const/4 v0, 0x0

    .line 132
    .local v0, "thrown":Ljava/lang/Throwable;
    :try_start_6
    invoke-virtual {p0}, Lcom/android/okhttp/okio/DeflaterSink;->finishDeflate()V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_a

    .line 135
    goto :goto_c

    .line 133
    :catchall_a
    move-exception v1

    .line 134
    .local v1, "e":Ljava/lang/Throwable;
    move-object v0, v1

    .line 138
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_c
    :try_start_c
    iget-object v1, p0, Lcom/android/okhttp/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_12

    .line 141
    goto :goto_16

    .line 139
    :catchall_12
    move-exception v1

    .line 140
    .restart local v1    # "e":Ljava/lang/Throwable;
    if-nez v0, :cond_16

    move-object v0, v1

    .line 144
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_16
    :goto_16
    :try_start_16
    iget-object v1, p0, Lcom/android/okhttp/okio/DeflaterSink;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSink;->close()V
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_1c

    .line 147
    goto :goto_20

    .line 145
    :catchall_1c
    move-exception v1

    .line 146
    .restart local v1    # "e":Ljava/lang/Throwable;
    if-nez v0, :cond_20

    move-object v0, v1

    .line 148
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_20
    :goto_20
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/okhttp/okio/DeflaterSink;->closed:Z

    .line 150
    if-eqz v0, :cond_28

    invoke-static {v0}, Lcom/android/okhttp/okio/Util;->sneakyRethrow(Ljava/lang/Throwable;)V

    .line 151
    :cond_28
    return-void
.end method

.method blacklist finishDeflate()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/android/okhttp/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/okhttp/okio/DeflaterSink;->deflate(Z)V

    .line 123
    return-void
.end method

.method public whitelist test-api flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/okhttp/okio/DeflaterSink;->deflate(Z)V

    .line 117
    iget-object v0, p0, Lcom/android/okhttp/okio/DeflaterSink;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->flush()V

    .line 118
    return-void
.end method

.method public blacklist timeout()Lcom/android/okhttp/okio/Timeout;
    .registers 2

    .line 154
    iget-object v0, p0, Lcom/android/okhttp/okio/DeflaterSink;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeflaterSink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/okhttp/okio/DeflaterSink;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/okhttp/okio/Buffer;J)V
    .registers 10
    .param p1, "source"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iget-wide v0, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 63
    :goto_8
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_45

    .line 65
    iget-object v0, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 66
    .local v0, "head":Lcom/android/okhttp/okio/Segment;
    iget v1, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v2, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    .line 67
    .local v1, "toDeflate":I
    iget-object v2, p0, Lcom/android/okhttp/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    iget-object v3, v0, Lcom/android/okhttp/okio/Segment;->data:[B

    iget v4, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 70
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/okhttp/okio/DeflaterSink;->deflate(Z)V

    .line 73
    iget-wide v2, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    .line 74
    iget v2, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    .line 75
    iget v2, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    iget v3, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    if-ne v2, v3, :cond_42

    .line 76
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Segment;->pop()Lcom/android/okhttp/okio/Segment;

    move-result-object v2

    iput-object v2, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 77
    invoke-static {v0}, Lcom/android/okhttp/okio/SegmentPool;->recycle(Lcom/android/okhttp/okio/Segment;)V

    .line 80
    :cond_42
    int-to-long v2, v1

    sub-long/2addr p2, v2

    .line 81
    .end local v0    # "head":Lcom/android/okhttp/okio/Segment;
    .end local v1    # "toDeflate":I
    goto :goto_8

    .line 82
    :cond_45
    return-void
.end method
