.class public final Lcom/android/okhttp/okio/GzipSink;
.super Ljava/lang/Object;
.source "GzipSink.java"

# interfaces
.implements Lcom/android/okhttp/okio/Sink;


# instance fields
.field private blacklist closed:Z

.field private final blacklist crc:Ljava/util/zip/CRC32;

.field private final blacklist deflater:Ljava/util/zip/Deflater;

.field private final blacklist deflaterSink:Lcom/android/okhttp/okio/DeflaterSink;

.field private final blacklist sink:Lcom/android/okhttp/okio/BufferedSink;


# direct methods
.method public constructor blacklist <init>(Lcom/android/okhttp/okio/Sink;)V
    .registers 5
    .param p1, "sink"    # Lcom/android/okhttp/okio/Sink;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/okio/GzipSink;->crc:Ljava/util/zip/CRC32;

    .line 59
    if-eqz p1, :cond_26

    .line 60
    new-instance v0, Ljava/util/zip/Deflater;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v0, p0, Lcom/android/okhttp/okio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    .line 61
    invoke-static {p1}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v1

    iput-object v1, p0, Lcom/android/okhttp/okio/GzipSink;->sink:Lcom/android/okhttp/okio/BufferedSink;

    .line 62
    new-instance v2, Lcom/android/okhttp/okio/DeflaterSink;

    invoke-direct {v2, v1, v0}, Lcom/android/okhttp/okio/DeflaterSink;-><init>(Lcom/android/okhttp/okio/BufferedSink;Ljava/util/zip/Deflater;)V

    iput-object v2, p0, Lcom/android/okhttp/okio/GzipSink;->deflaterSink:Lcom/android/okhttp/okio/DeflaterSink;

    .line 64
    invoke-direct {p0}, Lcom/android/okhttp/okio/GzipSink;->writeHeader()V

    .line 65
    return-void

    .line 59
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist updateCrc(Lcom/android/okhttp/okio/Buffer;J)V
    .registers 9
    .param p1, "buffer"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J

    .line 133
    iget-object v0, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .local v0, "head":Lcom/android/okhttp/okio/Segment;
    :goto_2
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-lez v1, :cond_21

    .line 134
    iget v1, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v2, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    .line 135
    .local v1, "segmentLength":I
    iget-object v2, p0, Lcom/android/okhttp/okio/GzipSink;->crc:Ljava/util/zip/CRC32;

    iget-object v3, v0, Lcom/android/okhttp/okio/Segment;->data:[B

    iget v4, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/zip/CRC32;->update([BII)V

    .line 136
    int-to-long v2, v1

    sub-long/2addr p2, v2

    .line 133
    .end local v1    # "segmentLength":I
    iget-object v0, v0, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    goto :goto_2

    .line 138
    .end local v0    # "head":Lcom/android/okhttp/okio/Segment;
    :cond_21
    return-void
.end method

.method private blacklist writeFooter()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSink;->sink:Lcom/android/okhttp/okio/BufferedSink;

    iget-object v1, p0, Lcom/android/okhttp/okio/GzipSink;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeIntLe(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 128
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSink;->sink:Lcom/android/okhttp/okio/BufferedSink;

    iget-object v1, p0, Lcom/android/okhttp/okio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->getTotalIn()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeIntLe(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 129
    return-void
.end method

.method private blacklist writeHeader()V
    .registers 3

    .line 117
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSink;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->buffer()Lcom/android/okhttp/okio/Buffer;

    move-result-object v0

    .line 118
    .local v0, "buffer":Lcom/android/okhttp/okio/Buffer;
    const/16 v1, 0x1f8b

    invoke-virtual {v0, v1}, Lcom/android/okhttp/okio/Buffer;->writeShort(I)Lcom/android/okhttp/okio/Buffer;

    .line 119
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 120
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 121
    invoke-virtual {v0, v1}, Lcom/android/okhttp/okio/Buffer;->writeInt(I)Lcom/android/okhttp/okio/Buffer;

    .line 122
    invoke-virtual {v0, v1}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 123
    invoke-virtual {v0, v1}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 124
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    iget-boolean v0, p0, Lcom/android/okhttp/okio/GzipSink;->closed:Z

    if-eqz v0, :cond_5

    return-void

    .line 91
    :cond_5
    const/4 v0, 0x0

    .line 93
    .local v0, "thrown":Ljava/lang/Throwable;
    :try_start_6
    iget-object v1, p0, Lcom/android/okhttp/okio/GzipSink;->deflaterSink:Lcom/android/okhttp/okio/DeflaterSink;

    invoke-virtual {v1}, Lcom/android/okhttp/okio/DeflaterSink;->finishDeflate()V

    .line 94
    invoke-direct {p0}, Lcom/android/okhttp/okio/GzipSink;->writeFooter()V
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_f

    .line 97
    goto :goto_11

    .line 95
    :catchall_f
    move-exception v1

    .line 96
    .local v1, "e":Ljava/lang/Throwable;
    move-object v0, v1

    .line 100
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_11
    :try_start_11
    iget-object v1, p0, Lcom/android/okhttp/okio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_17

    .line 103
    goto :goto_1b

    .line 101
    :catchall_17
    move-exception v1

    .line 102
    .restart local v1    # "e":Ljava/lang/Throwable;
    if-nez v0, :cond_1b

    move-object v0, v1

    .line 106
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_1b
    :goto_1b
    :try_start_1b
    iget-object v1, p0, Lcom/android/okhttp/okio/GzipSink;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSink;->close()V
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_21

    .line 109
    goto :goto_25

    .line 107
    :catchall_21
    move-exception v1

    .line 108
    .restart local v1    # "e":Ljava/lang/Throwable;
    if-nez v0, :cond_25

    move-object v0, v1

    .line 110
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_25
    :goto_25
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/okhttp/okio/GzipSink;->closed:Z

    .line 112
    if-eqz v0, :cond_2d

    invoke-static {v0}, Lcom/android/okhttp/okio/Util;->sneakyRethrow(Ljava/lang/Throwable;)V

    .line 113
    :cond_2d
    return-void
.end method

.method public whitelist test-api flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSink;->deflaterSink:Lcom/android/okhttp/okio/DeflaterSink;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/DeflaterSink;->flush()V

    .line 77
    return-void
.end method

.method public blacklist timeout()Lcom/android/okhttp/okio/Timeout;
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSink;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/okhttp/okio/Buffer;J)V
    .registers 7
    .param p1, "source"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_14

    .line 69
    cmp-long v0, p2, v0

    if-nez v0, :cond_b

    return-void

    .line 71
    :cond_b
    invoke-direct {p0, p1, p2, p3}, Lcom/android/okhttp/okio/GzipSink;->updateCrc(Lcom/android/okhttp/okio/Buffer;J)V

    .line 72
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSink;->deflaterSink:Lcom/android/okhttp/okio/DeflaterSink;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/okhttp/okio/DeflaterSink;->write(Lcom/android/okhttp/okio/Buffer;J)V

    .line 73
    return-void

    .line 68
    :cond_14
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
