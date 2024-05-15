.class public final Lcom/android/okhttp/okio/GzipSink;
.super Ljava/lang/Object;
.source "GzipSink.java"

# interfaces
.implements Lcom/android/okhttp/okio/Sink;


# instance fields
.field private closed:Z

.field private final crc:Ljava/util/zip/CRC32;

.field private final deflater:Ljava/util/zip/Deflater;

.field private final deflaterSink:Lcom/android/okhttp/okio/DeflaterSink;

.field private final sink:Lcom/android/okhttp/okio/BufferedSink;


# direct methods
.method public constructor <init>(Lcom/android/okhttp/okio/Sink;)V
    .registers 5
    .param p1, "sink"    # Lcom/android/okhttp/okio/Sink;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/okio/GzipSink;->crc:Ljava/util/zip/CRC32;

    .line 57
    if-nez p1, :cond_15

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_15
    new-instance v0, Ljava/util/zip/Deflater;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v0, p0, Lcom/android/okhttp/okio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    .line 59
    invoke-static {p1}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/okio/GzipSink;->sink:Lcom/android/okhttp/okio/BufferedSink;

    .line 60
    new-instance v0, Lcom/android/okhttp/okio/DeflaterSink;

    iget-object v1, p0, Lcom/android/okhttp/okio/GzipSink;->sink:Lcom/android/okhttp/okio/BufferedSink;

    iget-object v2, p0, Lcom/android/okhttp/okio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    invoke-direct {v0, v1, v2}, Lcom/android/okhttp/okio/DeflaterSink;-><init>(Lcom/android/okhttp/okio/BufferedSink;Ljava/util/zip/Deflater;)V

    iput-object v0, p0, Lcom/android/okhttp/okio/GzipSink;->deflaterSink:Lcom/android/okhttp/okio/DeflaterSink;

    .line 62
    invoke-direct {p0}, Lcom/android/okhttp/okio/GzipSink;->writeHeader()V

    .line 63
    return-void
.end method

.method private updateCrc(Lcom/android/okhttp/okio/Buffer;J)V
    .registers 10
    .param p1, "buffer"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J

    .prologue
    .line 131
    iget-object v0, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .local v0, "head":Lcom/android/okhttp/okio/Segment;
    :goto_2
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_21

    .line 132
    iget v2, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v3, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v1, v2

    .line 133
    .local v1, "segmentLength":I
    iget-object v2, p0, Lcom/android/okhttp/okio/GzipSink;->crc:Ljava/util/zip/CRC32;

    iget-object v3, v0, Lcom/android/okhttp/okio/Segment;->data:[B

    iget v4, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/zip/CRC32;->update([BII)V

    .line 134
    int-to-long v2, v1

    sub-long/2addr p2, v2

    .line 131
    iget-object v0, v0, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    goto :goto_2

    .line 136
    .end local v1    # "segmentLength":I
    :cond_21
    return-void
.end method

.method private writeFooter()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSink;->sink:Lcom/android/okhttp/okio/BufferedSink;

    iget-object v1, p0, Lcom/android/okhttp/okio/GzipSink;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeIntLe(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 126
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSink;->sink:Lcom/android/okhttp/okio/BufferedSink;

    iget-object v1, p0, Lcom/android/okhttp/okio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->getTotalIn()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeIntLe(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 127
    return-void
.end method

.method private writeHeader()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 115
    iget-object v1, p0, Lcom/android/okhttp/okio/GzipSink;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSink;->buffer()Lcom/android/okhttp/okio/Buffer;

    move-result-object v0

    .line 116
    .local v0, "buffer":Lcom/android/okhttp/okio/Buffer;
    const/16 v1, 0x1f8b

    invoke-virtual {v0, v1}, Lcom/android/okhttp/okio/Buffer;->writeShort(I)Lcom/android/okhttp/okio/Buffer;

    .line 117
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 118
    invoke-virtual {v0, v2}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 119
    invoke-virtual {v0, v2}, Lcom/android/okhttp/okio/Buffer;->writeInt(I)Lcom/android/okhttp/okio/Buffer;

    .line 120
    invoke-virtual {v0, v2}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 121
    invoke-virtual {v0, v2}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 122
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
    .line 82
    iget-boolean v2, p0, Lcom/android/okhttp/okio/GzipSink;->closed:Z

    if-eqz v2, :cond_5

    return-void

    .line 89
    :cond_5
    const/4 v1, 0x0

    .line 91
    .local v1, "thrown":Ljava/lang/Throwable;
    :try_start_6
    iget-object v2, p0, Lcom/android/okhttp/okio/GzipSink;->deflaterSink:Lcom/android/okhttp/okio/DeflaterSink;

    invoke-virtual {v2}, Lcom/android/okhttp/okio/DeflaterSink;->finishDeflate()V

    .line 92
    invoke-direct {p0}, Lcom/android/okhttp/okio/GzipSink;->writeFooter()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_e} :catch_21

    .line 98
    .end local v1    # "thrown":Ljava/lang/Throwable;
    :goto_e
    :try_start_e
    iget-object v2, p0, Lcom/android/okhttp/okio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->end()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_13} :catch_24

    .line 104
    :cond_13
    :goto_13
    :try_start_13
    iget-object v2, p0, Lcom/android/okhttp/okio/GzipSink;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v2}, Lcom/android/okhttp/okio/BufferedSink;->close()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_18} :catch_29

    .line 108
    :cond_18
    :goto_18
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/okhttp/okio/GzipSink;->closed:Z

    .line 110
    if-eqz v1, :cond_20

    invoke-static {v1}, Lcom/android/okhttp/okio/Util;->sneakyRethrow(Ljava/lang/Throwable;)V

    .line 111
    :cond_20
    return-void

    .line 93
    .restart local v1    # "thrown":Ljava/lang/Throwable;
    :catch_21
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Throwable;
    move-object v1, v0

    .local v1, "thrown":Ljava/lang/Throwable;
    goto :goto_e

    .line 99
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "thrown":Ljava/lang/Throwable;
    :catch_24
    move-exception v0

    .line 100
    .restart local v0    # "e":Ljava/lang/Throwable;
    if-nez v1, :cond_13

    move-object v1, v0

    .restart local v1    # "thrown":Ljava/lang/Throwable;
    goto :goto_13

    .line 105
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "thrown":Ljava/lang/Throwable;
    :catch_29
    move-exception v0

    .line 106
    .restart local v0    # "e":Ljava/lang/Throwable;
    if-nez v1, :cond_18

    move-object v1, v0

    .restart local v1    # "thrown":Ljava/lang/Throwable;
    goto :goto_18
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSink;->deflaterSink:Lcom/android/okhttp/okio/DeflaterSink;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/DeflaterSink;->flush()V

    .line 75
    return-void
.end method

.method public timeout()Lcom/android/okhttp/okio/Timeout;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSink;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/android/okhttp/okio/Buffer;J)V
    .registers 8
    .param p1, "source"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 66
    cmp-long v0, p2, v2

    if-gez v0, :cond_20

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_20
    cmp-long v0, p2, v2

    if-nez v0, :cond_25

    return-void

    .line 69
    :cond_25
    invoke-direct {p0, p1, p2, p3}, Lcom/android/okhttp/okio/GzipSink;->updateCrc(Lcom/android/okhttp/okio/Buffer;J)V

    .line 70
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSink;->deflaterSink:Lcom/android/okhttp/okio/DeflaterSink;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/okhttp/okio/DeflaterSink;->write(Lcom/android/okhttp/okio/Buffer;J)V

    .line 71
    return-void
.end method
