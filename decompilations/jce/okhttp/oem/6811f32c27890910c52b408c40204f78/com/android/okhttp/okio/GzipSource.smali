.class public final Lcom/android/okhttp/okio/GzipSource;
.super Ljava/lang/Object;
.source "GzipSource.java"

# interfaces
.implements Lcom/android/okhttp/okio/Source;


# static fields
.field private static final FCOMMENT:B = 0x4t

.field private static final FEXTRA:B = 0x2t

.field private static final FHCRC:B = 0x1t

.field private static final FNAME:B = 0x3t

.field private static final SECTION_BODY:B = 0x1t

.field private static final SECTION_DONE:B = 0x3t

.field private static final SECTION_HEADER:B = 0x0t

.field private static final SECTION_TRAILER:B = 0x2t


# instance fields
.field private final crc:Ljava/util/zip/CRC32;

.field private final inflater:Ljava/util/zip/Inflater;

.field private final inflaterSource:Lcom/android/okhttp/okio/InflaterSource;

.field private section:I

.field private final source:Lcom/android/okhttp/okio/BufferedSource;


# direct methods
.method public constructor <init>(Lcom/android/okhttp/okio/Source;)V
    .registers 5
    .param p1, "source"    # Lcom/android/okhttp/okio/Source;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/okhttp/okio/GzipSource;->section:I

    .line 58
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/okio/GzipSource;->crc:Ljava/util/zip/CRC32;

    .line 61
    if-nez p1, :cond_18

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_18
    new-instance v0, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v0, p0, Lcom/android/okhttp/okio/GzipSource;->inflater:Ljava/util/zip/Inflater;

    .line 63
    invoke-static {p1}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    .line 64
    new-instance v0, Lcom/android/okhttp/okio/InflaterSource;

    iget-object v1, p0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    iget-object v2, p0, Lcom/android/okhttp/okio/GzipSource;->inflater:Ljava/util/zip/Inflater;

    invoke-direct {v0, v1, v2}, Lcom/android/okhttp/okio/InflaterSource;-><init>(Lcom/android/okhttp/okio/BufferedSource;Ljava/util/zip/Inflater;)V

    iput-object v0, p0, Lcom/android/okhttp/okio/GzipSource;->inflaterSource:Lcom/android/okhttp/okio/InflaterSource;

    .line 65
    return-void
.end method

.method private checkEqual(Ljava/lang/String;II)V
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "expected"    # I
    .param p3, "actual"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    if-eq p3, p2, :cond_23

    .line 205
    new-instance v0, Ljava/io/IOException;

    .line 206
    const-string/jumbo v1, "%s: actual 0x%08x != expected 0x%08x"

    .line 205
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 206
    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 205
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_23
    return-void
.end method

.method private consumeHeader()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    const-wide/16 v2, 0xa

    invoke-interface {v0, v2, v3}, Lcom/android/okhttp/okio/BufferedSource;->require(J)V

    .line 115
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->buffer()Lcom/android/okhttp/okio/Buffer;

    move-result-object v0

    const-wide/16 v2, 0x3

    invoke-virtual {v0, v2, v3}, Lcom/android/okhttp/okio/Buffer;->getByte(J)B

    move-result v7

    .line 116
    .local v7, "flags":B
    shr-int/lit8 v0, v7, 0x1

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9d

    const/4 v6, 0x1

    .line 117
    .local v6, "fhcrc":Z
    :goto_1b
    if-eqz v6, :cond_2b

    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->buffer()Lcom/android/okhttp/okio/Buffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/okhttp/okio/GzipSource;->updateCrc(Lcom/android/okhttp/okio/Buffer;JJ)V

    .line 119
    :cond_2b
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->readShort()S

    move-result v8

    .line 120
    .local v8, "id1id2":S
    const-string/jumbo v0, "ID1ID2"

    const/16 v1, 0x1f8b

    invoke-direct {p0, v0, v1, v8}, Lcom/android/okhttp/okio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    .line 121
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    const-wide/16 v2, 0x8

    invoke-interface {v0, v2, v3}, Lcom/android/okhttp/okio/BufferedSource;->skip(J)V

    .line 127
    shr-int/lit8 v0, v7, 0x2

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_83

    .line 128
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    const-wide/16 v2, 0x2

    invoke-interface {v0, v2, v3}, Lcom/android/okhttp/okio/BufferedSource;->require(J)V

    .line 129
    if-eqz v6, :cond_5e

    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->buffer()Lcom/android/okhttp/okio/Buffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/okhttp/okio/GzipSource;->updateCrc(Lcom/android/okhttp/okio/Buffer;JJ)V

    .line 130
    :cond_5e
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->buffer()Lcom/android/okhttp/okio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->readShortLe()S

    move-result v9

    .line 131
    .local v9, "xlen":I
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    int-to-long v2, v9

    invoke-interface {v0, v2, v3}, Lcom/android/okhttp/okio/BufferedSource;->require(J)V

    .line 132
    if-eqz v6, :cond_7d

    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->buffer()Lcom/android/okhttp/okio/Buffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    int-to-long v4, v9

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/okhttp/okio/GzipSource;->updateCrc(Lcom/android/okhttp/okio/Buffer;JJ)V

    .line 133
    :cond_7d
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    int-to-long v2, v9

    invoke-interface {v0, v2, v3}, Lcom/android/okhttp/okio/BufferedSource;->skip(J)V

    .line 140
    .end local v9    # "xlen":I
    :cond_83
    shr-int/lit8 v0, v7, 0x3

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b9

    .line 141
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSource;->indexOf(B)J

    move-result-wide v10

    .line 142
    .local v10, "index":J
    const-wide/16 v0, -0x1

    cmp-long v0, v10, v0

    if-nez v0, :cond_a0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 116
    .end local v6    # "fhcrc":Z
    .end local v8    # "id1id2":S
    .end local v10    # "index":J
    :cond_9d
    const/4 v6, 0x0

    .restart local v6    # "fhcrc":Z
    goto/16 :goto_1b

    .line 143
    .restart local v8    # "id1id2":S
    .restart local v10    # "index":J
    :cond_a0
    if-eqz v6, :cond_b1

    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->buffer()Lcom/android/okhttp/okio/Buffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    add-long/2addr v4, v10

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/okhttp/okio/GzipSource;->updateCrc(Lcom/android/okhttp/okio/Buffer;JJ)V

    .line 144
    :cond_b1
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    const-wide/16 v2, 0x1

    add-long/2addr v2, v10

    invoke-interface {v0, v2, v3}, Lcom/android/okhttp/okio/BufferedSource;->skip(J)V

    .line 151
    .end local v10    # "index":J
    :cond_b9
    shr-int/lit8 v0, v7, 0x4

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_ec

    .line 152
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSource;->indexOf(B)J

    move-result-wide v10

    .line 153
    .restart local v10    # "index":J
    const-wide/16 v0, -0x1

    cmp-long v0, v10, v0

    if-nez v0, :cond_d3

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 154
    :cond_d3
    if-eqz v6, :cond_e4

    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->buffer()Lcom/android/okhttp/okio/Buffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    add-long/2addr v4, v10

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/okhttp/okio/GzipSource;->updateCrc(Lcom/android/okhttp/okio/Buffer;JJ)V

    .line 155
    :cond_e4
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    const-wide/16 v2, 0x1

    add-long/2addr v2, v10

    invoke-interface {v0, v2, v3}, Lcom/android/okhttp/okio/BufferedSource;->skip(J)V

    .line 162
    .end local v10    # "index":J
    :cond_ec
    if-eqz v6, :cond_107

    .line 163
    const-string/jumbo v0, "FHCRC"

    iget-object v1, p0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSource;->readShortLe()S

    move-result v1

    iget-object v2, p0, Lcom/android/okhttp/okio/GzipSource;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v2, v2

    int-to-short v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/okhttp/okio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    .line 164
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSource;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    .line 166
    :cond_107
    return-void
.end method

.method private consumeTrailer()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    const-string/jumbo v0, "CRC"

    iget-object v1, p0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSource;->readIntLe()I

    move-result v1

    iget-object v2, p0, Lcom/android/okhttp/okio/GzipSource;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/okhttp/okio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    .line 174
    const-string/jumbo v0, "ISIZE"

    iget-object v1, p0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSource;->readIntLe()I

    move-result v1

    iget-object v2, p0, Lcom/android/okhttp/okio/GzipSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->getTotalOut()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/okhttp/okio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    .line 175
    return-void
.end method

.method private updateCrc(Lcom/android/okhttp/okio/Buffer;JJ)V
    .registers 12
    .param p1, "buffer"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "offset"    # J
    .param p4, "byteCount"    # J

    .prologue
    .line 188
    iget-object v1, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 189
    .local v1, "s":Lcom/android/okhttp/okio/Segment;
    :goto_2
    iget v3, v1, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v4, v1, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v4, v3

    cmp-long v3, p2, v4

    if-ltz v3, :cond_16

    .line 190
    iget v3, v1, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v4, v1, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v4, v3

    sub-long/2addr p2, v4

    .line 189
    iget-object v1, v1, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    goto :goto_2

    .line 194
    :cond_16
    :goto_16
    const-wide/16 v4, 0x0

    cmp-long v3, p4, v4

    if-lez v3, :cond_38

    .line 195
    iget v3, v1, Lcom/android/okhttp/okio/Segment;->pos:I

    int-to-long v4, v3

    add-long/2addr v4, p2

    long-to-int v0, v4

    .line 196
    .local v0, "pos":I
    iget v3, v1, Lcom/android/okhttp/okio/Segment;->limit:I

    sub-int/2addr v3, v0

    int-to-long v4, v3

    invoke-static {v4, v5, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v2, v4

    .line 197
    .local v2, "toUpdate":I
    iget-object v3, p0, Lcom/android/okhttp/okio/GzipSource;->crc:Ljava/util/zip/CRC32;

    iget-object v4, v1, Lcom/android/okhttp/okio/Segment;->data:[B

    invoke-virtual {v3, v4, v0, v2}, Ljava/util/zip/CRC32;->update([BII)V

    .line 198
    int-to-long v4, v2

    sub-long/2addr p4, v4

    .line 199
    const-wide/16 p2, 0x0

    .line 194
    iget-object v1, v1, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    goto :goto_16

    .line 201
    .end local v0    # "pos":I
    .end local v2    # "toUpdate":I
    :cond_38
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
    .line 182
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSource;->inflaterSource:Lcom/android/okhttp/okio/InflaterSource;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/InflaterSource;->close()V

    .line 183
    return-void
.end method

.method public read(Lcom/android/okhttp/okio/Buffer;J)J
    .registers 16
    .param p1, "sink"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, -0x1

    const/4 v8, 0x2

    const/4 v1, 0x1

    const-wide/16 v6, 0x0

    .line 68
    cmp-long v0, p2, v6

    if-gez v0, :cond_24

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "byteCount < 0: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_24
    cmp-long v0, p2, v6

    if-nez v0, :cond_29

    return-wide v6

    .line 72
    :cond_29
    iget v0, p0, Lcom/android/okhttp/okio/GzipSource;->section:I

    if-nez v0, :cond_32

    .line 73
    invoke-direct {p0}, Lcom/android/okhttp/okio/GzipSource;->consumeHeader()V

    .line 74
    iput v1, p0, Lcom/android/okhttp/okio/GzipSource;->section:I

    .line 78
    :cond_32
    iget v0, p0, Lcom/android/okhttp/okio/GzipSource;->section:I

    if-ne v0, v1, :cond_4a

    .line 79
    iget-wide v2, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    .line 80
    .local v2, "offset":J
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSource;->inflaterSource:Lcom/android/okhttp/okio/InflaterSource;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/okhttp/okio/InflaterSource;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v4

    .line 81
    .local v4, "result":J
    cmp-long v0, v4, v10

    if-eqz v0, :cond_48

    move-object v0, p0

    move-object v1, p1

    .line 82
    invoke-direct/range {v0 .. v5}, Lcom/android/okhttp/okio/GzipSource;->updateCrc(Lcom/android/okhttp/okio/Buffer;JJ)V

    .line 83
    return-wide v4

    .line 85
    :cond_48
    iput v8, p0, Lcom/android/okhttp/okio/GzipSource;->section:I

    .line 91
    .end local v2    # "offset":J
    .end local v4    # "result":J
    :cond_4a
    iget v0, p0, Lcom/android/okhttp/okio/GzipSource;->section:I

    if-ne v0, v8, :cond_65

    .line 92
    invoke-direct {p0}, Lcom/android/okhttp/okio/GzipSource;->consumeTrailer()V

    .line 93
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/okhttp/okio/GzipSource;->section:I

    .line 99
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->exhausted()Z

    move-result v0

    if-nez v0, :cond_65

    .line 100
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "gzip finished without exhausting source"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_65
    return-wide v10
.end method

.method public timeout()Lcom/android/okhttp/okio/Timeout;
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object v0

    return-object v0
.end method
