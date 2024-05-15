.class public final Lcom/android/okhttp/okio/DeflaterSink;
.super Ljava/lang/Object;
.source "DeflaterSink.java"

# interfaces
.implements Lcom/android/okhttp/okio/Sink;


# instance fields
.field private closed:Z

.field private final deflater:Ljava/util/zip/Deflater;

.field private final sink:Lcom/android/okhttp/okio/BufferedSink;


# direct methods
.method constructor <init>(Lcom/android/okhttp/okio/BufferedSink;Ljava/util/zip/Deflater;)V
    .registers 5
    .param p1, "sink"    # Lcom/android/okhttp/okio/BufferedSink;
    .param p2, "deflater"    # Ljava/util/zip/Deflater;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    if-nez p1, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_e
    if-nez p2, :cond_19

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "inflater == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_19
    iput-object p1, p0, Lcom/android/okhttp/okio/DeflaterSink;->sink:Lcom/android/okhttp/okio/BufferedSink;

    .line 55
    iput-object p2, p0, Lcom/android/okhttp/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/android/okhttp/okio/Sink;Ljava/util/zip/Deflater;)V
    .registers 4
    .param p1, "sink"    # Lcom/android/okhttp/okio/Sink;
    .param p2, "deflater"    # Ljava/util/zip/Deflater;

    .prologue
    .line 43
    invoke-static {p1}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/okhttp/okio/DeflaterSink;-><init>(Lcom/android/okhttp/okio/BufferedSink;Ljava/util/zip/Deflater;)V

    .line 44
    return-void
.end method

.method private deflate(Z)V
    .registers 10
    .param p1, "syncFlush"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v3, p0, Lcom/android/okhttp/okio/DeflaterSink;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v3}, Lcom/android/okhttp/okio/BufferedSink;->buffer()Lcom/android/okhttp/okio/Buffer;

    move-result-object v0

    .line 88
    .local v0, "buffer":Lcom/android/okhttp/okio/Buffer;
    :cond_6
    :goto_6
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/okhttp/okio/Buffer;->writableSegment(I)Lcom/android/okhttp/okio/Segment;

    move-result-object v2

    .line 94
    .local v2, "s":Lcom/android/okhttp/okio/Segment;
    if-eqz p1, :cond_2f

    .line 95
    iget-object v3, p0, Lcom/android/okhttp/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    iget-object v4, v2, Lcom/android/okhttp/okio/Segment;->data:[B

    iget v5, v2, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v6, v2, Lcom/android/okhttp/okio/Segment;->limit:I

    rsub-int v6, v6, 0x2000

    const/4 v7, 0x2

    invoke-virtual {v3, v4, v5, v6, v7}, Ljava/util/zip/Deflater;->deflate([BIII)I

    move-result v1

    .line 98
    .local v1, "deflated":I
    :goto_1c
    if-lez v1, :cond_3e

    .line 99
    iget v3, v2, Lcom/android/okhttp/okio/Segment;->limit:I

    add-int/2addr v3, v1

    iput v3, v2, Lcom/android/okhttp/okio/Segment;->limit:I

    .line 100
    iget-wide v4, v0, Lcom/android/okhttp/okio/Buffer;->size:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/android/okhttp/okio/Buffer;->size:J

    .line 101
    iget-object v3, p0, Lcom/android/okhttp/okio/DeflaterSink;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v3}, Lcom/android/okhttp/okio/BufferedSink;->emitCompleteSegments()Lcom/android/okhttp/okio/BufferedSink;

    goto :goto_6

    .line 96
    .end local v1    # "deflated":I
    :cond_2f
    iget-object v3, p0, Lcom/android/okhttp/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    iget-object v4, v2, Lcom/android/okhttp/okio/Segment;->data:[B

    iget v5, v2, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v6, v2, Lcom/android/okhttp/okio/Segment;->limit:I

    rsub-int v6, v6, 0x2000

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v1

    .restart local v1    # "deflated":I
    goto :goto_1c

    .line 102
    :cond_3e
    iget-object v3, p0, Lcom/android/okhttp/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v3}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 103
    iget v3, v2, Lcom/android/okhttp/okio/Segment;->pos:I

    iget v4, v2, Lcom/android/okhttp/okio/Segment;->limit:I

    if-ne v3, v4, :cond_55

    .line 105
    invoke-virtual {v2}, Lcom/android/okhttp/okio/Segment;->pop()Lcom/android/okhttp/okio/Segment;

    move-result-object v3

    iput-object v3, v0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 106
    invoke-static {v2}, Lcom/android/okhttp/okio/SegmentPool;->recycle(Lcom/android/okhttp/okio/Segment;)V

    .line 108
    :cond_55
    return-void
.end method


# virtual methods
.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    iget-boolean v2, p0, Lcom/android/okhttp/okio/DeflaterSink;->closed:Z

    if-eqz v2, :cond_5

    return-void

    .line 128
    :cond_5
    const/4 v1, 0x0

    .line 130
    .local v1, "thrown":Ljava/lang/Throwable;
    :try_start_6
    invoke-virtual {p0}, Lcom/android/okhttp/okio/DeflaterSink;->finishDeflate()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_9} :catch_1c

    .line 136
    .end local v1    # "thrown":Ljava/lang/Throwable;
    :goto_9
    :try_start_9
    iget-object v2, p0, Lcom/android/okhttp/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->end()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_e} :catch_1f

    .line 142
    :cond_e
    :goto_e
    :try_start_e
    iget-object v2, p0, Lcom/android/okhttp/okio/DeflaterSink;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v2}, Lcom/android/okhttp/okio/BufferedSink;->close()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_13} :catch_24

    .line 146
    :cond_13
    :goto_13
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/okhttp/okio/DeflaterSink;->closed:Z

    .line 148
    if-eqz v1, :cond_1b

    invoke-static {v1}, Lcom/android/okhttp/okio/Util;->sneakyRethrow(Ljava/lang/Throwable;)V

    .line 149
    :cond_1b
    return-void

    .line 131
    .restart local v1    # "thrown":Ljava/lang/Throwable;
    :catch_1c
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/Throwable;
    move-object v1, v0

    .local v1, "thrown":Ljava/lang/Throwable;
    goto :goto_9

    .line 137
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "thrown":Ljava/lang/Throwable;
    :catch_1f
    move-exception v0

    .line 138
    .restart local v0    # "e":Ljava/lang/Throwable;
    if-nez v1, :cond_e

    move-object v1, v0

    .restart local v1    # "thrown":Ljava/lang/Throwable;
    goto :goto_e

    .line 143
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "thrown":Ljava/lang/Throwable;
    :catch_24
    move-exception v0

    .line 144
    .restart local v0    # "e":Ljava/lang/Throwable;
    if-nez v1, :cond_13

    move-object v1, v0

    .restart local v1    # "thrown":Ljava/lang/Throwable;
    goto :goto_13
.end method

.method finishDeflate()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/okhttp/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/okhttp/okio/DeflaterSink;->deflate(Z)V

    .line 121
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
    .line 114
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/okhttp/okio/DeflaterSink;->deflate(Z)V

    .line 115
    iget-object v0, p0, Lcom/android/okhttp/okio/DeflaterSink;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->flush()V

    .line 116
    return-void
.end method

.method public timeout()Lcom/android/okhttp/okio/Timeout;
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/okhttp/okio/DeflaterSink;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DeflaterSink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/okhttp/okio/DeflaterSink;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/android/okhttp/okio/Buffer;J)V
    .registers 12
    .param p1, "source"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 60
    iget-wide v0, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 61
    :goto_8
    cmp-long v0, p2, v2

    if-lez v0, :cond_43

    .line 63
    iget-object v6, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 64
    .local v6, "head":Lcom/android/okhttp/okio/Segment;
    iget v0, v6, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v1, v6, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v7, v0

    .line 65
    .local v7, "toDeflate":I
    iget-object v0, p0, Lcom/android/okhttp/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    iget-object v1, v6, Lcom/android/okhttp/okio/Segment;->data:[B

    iget v4, v6, Lcom/android/okhttp/okio/Segment;->pos:I

    invoke-virtual {v0, v1, v4, v7}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/okhttp/okio/DeflaterSink;->deflate(Z)V

    .line 71
    iget-wide v0, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    int-to-long v4, v7

    sub-long/2addr v0, v4

    iput-wide v0, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    .line 72
    iget v0, v6, Lcom/android/okhttp/okio/Segment;->pos:I

    add-int/2addr v0, v7

    iput v0, v6, Lcom/android/okhttp/okio/Segment;->pos:I

    .line 73
    iget v0, v6, Lcom/android/okhttp/okio/Segment;->pos:I

    iget v1, v6, Lcom/android/okhttp/okio/Segment;->limit:I

    if-ne v0, v1, :cond_40

    .line 74
    invoke-virtual {v6}, Lcom/android/okhttp/okio/Segment;->pop()Lcom/android/okhttp/okio/Segment;

    move-result-object v0

    iput-object v0, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 75
    invoke-static {v6}, Lcom/android/okhttp/okio/SegmentPool;->recycle(Lcom/android/okhttp/okio/Segment;)V

    .line 78
    :cond_40
    int-to-long v0, v7

    sub-long/2addr p2, v0

    goto :goto_8

    .line 80
    .end local v6    # "head":Lcom/android/okhttp/okio/Segment;
    .end local v7    # "toDeflate":I
    :cond_43
    return-void
.end method
