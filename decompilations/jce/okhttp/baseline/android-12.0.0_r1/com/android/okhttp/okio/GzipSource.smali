.class public final Lcom/android/okhttp/okio/GzipSource;
.super Ljava/lang/Object;
.source "GzipSource.java"

# interfaces
.implements Lcom/android/okhttp/okio/Source;


# static fields
.field private static final blacklist FCOMMENT:B = 0x4t

.field private static final blacklist FEXTRA:B = 0x2t

.field private static final blacklist FHCRC:B = 0x1t

.field private static final blacklist FNAME:B = 0x3t

.field private static final blacklist SECTION_BODY:B = 0x1t

.field private static final blacklist SECTION_DONE:B = 0x3t

.field private static final blacklist SECTION_HEADER:B = 0x0t

.field private static final blacklist SECTION_TRAILER:B = 0x2t


# instance fields
.field private final blacklist crc:Ljava/util/zip/CRC32;

.field private final blacklist inflater:Ljava/util/zip/Inflater;

.field private final blacklist inflaterSource:Lcom/android/okhttp/okio/InflaterSource;

.field private blacklist section:I

.field private final blacklist source:Lcom/android/okhttp/okio/BufferedSource;


# direct methods
.method public constructor blacklist <init>(Lcom/android/okhttp/okio/Source;)V
    .registers 5
    .param p1, "source"    # Lcom/android/okhttp/okio/Source;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/okhttp/okio/GzipSource;->section:I

    .line 60
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/okio/GzipSource;->crc:Ljava/util/zip/CRC32;

    .line 63
    if-eqz p1, :cond_25

    .line 64
    new-instance v0, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v0, p0, Lcom/android/okhttp/okio/GzipSource;->inflater:Ljava/util/zip/Inflater;

    .line 65
    invoke-static {p1}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v1

    iput-object v1, p0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    .line 66
    new-instance v2, Lcom/android/okhttp/okio/InflaterSource;

    invoke-direct {v2, v1, v0}, Lcom/android/okhttp/okio/InflaterSource;-><init>(Lcom/android/okhttp/okio/BufferedSource;Ljava/util/zip/Inflater;)V

    iput-object v2, p0, Lcom/android/okhttp/okio/GzipSource;->inflaterSource:Lcom/android/okhttp/okio/InflaterSource;

    .line 67
    return-void

    .line 63
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist checkEqual(Ljava/lang/String;II)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "expected"    # I
    .param p3, "actual"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    if-ne p3, p2, :cond_3

    .line 210
    return-void

    .line 207
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    .line 208
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 207
    const-string v2, "%s: actual 0x%08x != expected 0x%08x"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist consumeHeader()V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    const-wide/16 v1, 0xa

    invoke-interface {v0, v1, v2}, Lcom/android/okhttp/okio/BufferedSource;->require(J)V

    .line 117
    iget-object v0, v6, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->buffer()Lcom/android/okhttp/okio/Buffer;

    move-result-object v0

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/okhttp/okio/Buffer;->getByte(J)B

    move-result v7

    .line 118
    .local v7, "flags":B
    shr-int/lit8 v0, v7, 0x1

    const/4 v8, 0x1

    and-int/2addr v0, v8

    const/4 v9, 0x0

    if-ne v0, v8, :cond_1e

    move v0, v8

    goto :goto_1f

    :cond_1e
    move v0, v9

    :goto_1f
    move v10, v0

    .line 119
    .local v10, "fhcrc":Z
    if-eqz v10, :cond_31

    iget-object v0, v6, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->buffer()Lcom/android/okhttp/okio/Buffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/okhttp/okio/GzipSource;->updateCrc(Lcom/android/okhttp/okio/Buffer;JJ)V

    .line 121
    :cond_31
    iget-object v0, v6, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->readShort()S

    move-result v11

    .line 122
    .local v11, "id1id2":S
    const/16 v0, 0x1f8b

    const-string v1, "ID1ID2"

    invoke-direct {v6, v1, v0, v11}, Lcom/android/okhttp/okio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    .line 123
    iget-object v0, v6, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    const-wide/16 v1, 0x8

    invoke-interface {v0, v1, v2}, Lcom/android/okhttp/okio/BufferedSource;->skip(J)V

    .line 129
    shr-int/lit8 v0, v7, 0x2

    and-int/2addr v0, v8

    if-ne v0, v8, :cond_88

    .line 130
    iget-object v0, v6, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    const-wide/16 v1, 0x2

    invoke-interface {v0, v1, v2}, Lcom/android/okhttp/okio/BufferedSource;->require(J)V

    .line 131
    if-eqz v10, :cond_62

    iget-object v0, v6, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->buffer()Lcom/android/okhttp/okio/Buffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/okhttp/okio/GzipSource;->updateCrc(Lcom/android/okhttp/okio/Buffer;JJ)V

    .line 132
    :cond_62
    iget-object v0, v6, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->buffer()Lcom/android/okhttp/okio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->readShortLe()S

    move-result v12

    .line 133
    .local v12, "xlen":I
    iget-object v0, v6, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    int-to-long v1, v12

    invoke-interface {v0, v1, v2}, Lcom/android/okhttp/okio/BufferedSource;->require(J)V

    .line 134
    if-eqz v10, :cond_82

    iget-object v0, v6, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->buffer()Lcom/android/okhttp/okio/Buffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    int-to-long v4, v12

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/okhttp/okio/GzipSource;->updateCrc(Lcom/android/okhttp/okio/Buffer;JJ)V

    .line 135
    :cond_82
    iget-object v0, v6, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    int-to-long v1, v12

    invoke-interface {v0, v1, v2}, Lcom/android/okhttp/okio/BufferedSource;->skip(J)V

    .line 142
    .end local v12    # "xlen":I
    :cond_88
    shr-int/lit8 v0, v7, 0x3

    and-int/2addr v0, v8

    const-wide/16 v12, -0x1

    const-wide/16 v14, 0x1

    if-ne v0, v8, :cond_ba

    .line 143
    iget-object v0, v6, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0, v9}, Lcom/android/okhttp/okio/BufferedSource;->indexOf(B)J

    move-result-wide v16

    .line 144
    .local v16, "index":J
    cmp-long v0, v16, v12

    if-eqz v0, :cond_b4

    .line 145
    if-eqz v10, :cond_ac

    iget-object v0, v6, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->buffer()Lcom/android/okhttp/okio/Buffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    add-long v4, v16, v14

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/okhttp/okio/GzipSource;->updateCrc(Lcom/android/okhttp/okio/Buffer;JJ)V

    .line 146
    :cond_ac
    iget-object v0, v6, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    add-long v1, v16, v14

    invoke-interface {v0, v1, v2}, Lcom/android/okhttp/okio/BufferedSource;->skip(J)V

    goto :goto_ba

    .line 144
    :cond_b4
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 153
    .end local v16    # "index":J
    :cond_ba
    :goto_ba
    shr-int/lit8 v0, v7, 0x4

    and-int/2addr v0, v8

    if-ne v0, v8, :cond_e7

    .line 154
    iget-object v0, v6, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0, v9}, Lcom/android/okhttp/okio/BufferedSource;->indexOf(B)J

    move-result-wide v8

    .line 155
    .local v8, "index":J
    cmp-long v0, v8, v12

    if-eqz v0, :cond_e1

    .line 156
    if-eqz v10, :cond_da

    iget-object v0, v6, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->buffer()Lcom/android/okhttp/okio/Buffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    add-long v4, v8, v14

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/okhttp/okio/GzipSource;->updateCrc(Lcom/android/okhttp/okio/Buffer;JJ)V

    .line 157
    :cond_da
    iget-object v0, v6, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    add-long/2addr v14, v8

    invoke-interface {v0, v14, v15}, Lcom/android/okhttp/okio/BufferedSource;->skip(J)V

    goto :goto_e7

    .line 155
    :cond_e1
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 164
    .end local v8    # "index":J
    :cond_e7
    :goto_e7
    if-eqz v10, :cond_101

    .line 165
    iget-object v0, v6, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->readShortLe()S

    move-result v0

    iget-object v1, v6, Lcom/android/okhttp/okio/GzipSource;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v1, v1

    int-to-short v1, v1

    const-string v2, "FHCRC"

    invoke-direct {v6, v2, v0, v1}, Lcom/android/okhttp/okio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    .line 166
    iget-object v0, v6, Lcom/android/okhttp/okio/GzipSource;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    .line 168
    :cond_101
    return-void
.end method

.method private blacklist consumeTrailer()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->readIntLe()I

    move-result v0

    iget-object v1, p0, Lcom/android/okhttp/okio/GzipSource;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v1, v1

    const-string v2, "CRC"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/okhttp/okio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    .line 176
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->readIntLe()I

    move-result v0

    iget-object v1, p0, Lcom/android/okhttp/okio/GzipSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getTotalOut()I

    move-result v1

    const-string v2, "ISIZE"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/okhttp/okio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    .line 177
    return-void
.end method

.method private blacklist updateCrc(Lcom/android/okhttp/okio/Buffer;JJ)V
    .registers 11
    .param p1, "buffer"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "offset"    # J
    .param p4, "byteCount"    # J

    .line 190
    iget-object v0, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 191
    .local v0, "s":Lcom/android/okhttp/okio/Segment;
    :goto_2
    iget v1, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v2, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    cmp-long v1, p2, v1

    if-ltz v1, :cond_16

    .line 192
    iget v1, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v2, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    sub-long/2addr p2, v1

    .line 191
    iget-object v0, v0, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    goto :goto_2

    .line 196
    :cond_16
    :goto_16
    const-wide/16 v1, 0x0

    cmp-long v1, p4, v1

    if-lez v1, :cond_38

    .line 197
    iget v1, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    int-to-long v1, v1

    add-long/2addr v1, p2

    long-to-int v1, v1

    .line 198
    .local v1, "pos":I
    iget v2, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    sub-int/2addr v2, v1

    int-to-long v2, v2

    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 199
    .local v2, "toUpdate":I
    iget-object v3, p0, Lcom/android/okhttp/okio/GzipSource;->crc:Ljava/util/zip/CRC32;

    iget-object v4, v0, Lcom/android/okhttp/okio/Segment;->data:[B

    invoke-virtual {v3, v4, v1, v2}, Ljava/util/zip/CRC32;->update([BII)V

    .line 200
    int-to-long v3, v2

    sub-long/2addr p4, v3

    .line 201
    const-wide/16 p2, 0x0

    .line 196
    .end local v1    # "pos":I
    .end local v2    # "toUpdate":I
    iget-object v0, v0, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    goto :goto_16

    .line 203
    :cond_38
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSource;->inflaterSource:Lcom/android/okhttp/okio/InflaterSource;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/InflaterSource;->close()V

    .line 185
    return-void
.end method

.method public blacklist read(Lcom/android/okhttp/okio/Buffer;J)J
    .registers 18
    .param p1, "sink"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    move-object v6, p0

    move-object v7, p1

    move-wide/from16 v8, p2

    const-wide/16 v0, 0x0

    cmp-long v2, v8, v0

    if-ltz v2, :cond_52

    .line 71
    cmp-long v2, v8, v0

    if-nez v2, :cond_f

    return-wide v0

    .line 74
    :cond_f
    iget v0, v6, Lcom/android/okhttp/okio/GzipSource;->section:I

    const/4 v1, 0x1

    if-nez v0, :cond_19

    .line 75
    invoke-direct {p0}, Lcom/android/okhttp/okio/GzipSource;->consumeHeader()V

    .line 76
    iput v1, v6, Lcom/android/okhttp/okio/GzipSource;->section:I

    .line 80
    :cond_19
    iget v0, v6, Lcom/android/okhttp/okio/GzipSource;->section:I

    const-wide/16 v2, -0x1

    const/4 v4, 0x2

    if-ne v0, v1, :cond_36

    .line 81
    iget-wide v10, v7, Lcom/android/okhttp/okio/Buffer;->size:J

    .line 82
    .local v10, "offset":J
    iget-object v0, v6, Lcom/android/okhttp/okio/GzipSource;->inflaterSource:Lcom/android/okhttp/okio/InflaterSource;

    invoke-virtual {v0, p1, v8, v9}, Lcom/android/okhttp/okio/InflaterSource;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v12

    .line 83
    .local v12, "result":J
    cmp-long v0, v12, v2

    if-eqz v0, :cond_34

    .line 84
    move-object v0, p0

    move-object v1, p1

    move-wide v2, v10

    move-wide v4, v12

    invoke-direct/range {v0 .. v5}, Lcom/android/okhttp/okio/GzipSource;->updateCrc(Lcom/android/okhttp/okio/Buffer;JJ)V

    .line 85
    return-wide v12

    .line 87
    :cond_34
    iput v4, v6, Lcom/android/okhttp/okio/GzipSource;->section:I

    .line 93
    .end local v10    # "offset":J
    .end local v12    # "result":J
    :cond_36
    iget v0, v6, Lcom/android/okhttp/okio/GzipSource;->section:I

    if-ne v0, v4, :cond_51

    .line 94
    invoke-direct {p0}, Lcom/android/okhttp/okio/GzipSource;->consumeTrailer()V

    .line 95
    const/4 v0, 0x3

    iput v0, v6, Lcom/android/okhttp/okio/GzipSource;->section:I

    .line 101
    iget-object v0, v6, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->exhausted()Z

    move-result v0

    if-eqz v0, :cond_49

    goto :goto_51

    .line 102
    :cond_49
    new-instance v0, Ljava/io/IOException;

    const-string v1, "gzip finished without exhausting source"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_51
    :goto_51
    return-wide v2

    .line 70
    :cond_52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist timeout()Lcom/android/okhttp/okio/Timeout;
    .registers 2

    .line 180
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object v0

    return-object v0
.end method
