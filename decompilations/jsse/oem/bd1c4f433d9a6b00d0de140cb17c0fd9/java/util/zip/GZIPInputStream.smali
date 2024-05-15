.class public Ljava/util/zip/GZIPInputStream;
.super Ljava/util/zip/InflaterInputStream;
.source "GZIPInputStream.java"


# static fields
.field private static final FCOMMENT:I = 0x10

.field private static final FEXTRA:I = 0x4

.field private static final FHCRC:I = 0x2

.field private static final FNAME:I = 0x8

.field private static final FTEXT:I = 0x1

.field public static final GZIP_MAGIC:I = 0x8b1f


# instance fields
.field private closed:Z

.field protected crc:Ljava/util/zip/CRC32;

.field protected eos:Z

.field private tmpbuf:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    const/16 v0, 0x200

    invoke-direct {p0, p1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {p0, p1, v0, p2}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V

    .line 48
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/zip/GZIPInputStream;->closed:Z

    .line 279
    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/util/zip/GZIPInputStream;->tmpbuf:[B

    .line 80
    invoke-direct {p0, p1}, Ljava/util/zip/GZIPInputStream;->readHeader(Ljava/io/InputStream;)I

    .line 81
    return-void
.end method

.method private ensureOpen()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    iget-boolean v0, p0, Ljava/util/zip/GZIPInputStream;->closed:Z

    if-eqz v0, :cond_d

    .line 62
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_d
    return-void
.end method

.method private readHeader(Ljava/io/InputStream;)I
    .registers 10
    .param p1, "this_in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x8

    .line 162
    new-instance v1, Ljava/util/zip/CheckedInputStream;

    iget-object v5, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-direct {v1, p1, v5}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    .line 163
    .local v1, "in":Ljava/util/zip/CheckedInputStream;
    iget-object v5, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v5}, Ljava/util/zip/CRC32;->reset()V

    .line 165
    invoke-direct {p0, v1}, Ljava/util/zip/GZIPInputStream;->readUShort(Ljava/io/InputStream;)I

    move-result v5

    const v6, 0x8b1f

    if-eq v5, v6, :cond_20

    .line 166
    new-instance v5, Ljava/util/zip/ZipException;

    const-string/jumbo v6, "Not in GZIP format"

    invoke-direct {v5, v6}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 169
    :cond_20
    invoke-direct {p0, v1}, Ljava/util/zip/GZIPInputStream;->readUByte(Ljava/io/InputStream;)I

    move-result v5

    if-eq v5, v7, :cond_2f

    .line 170
    new-instance v5, Ljava/util/zip/ZipException;

    const-string/jumbo v6, "Unsupported compression method"

    invoke-direct {v5, v6}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 173
    :cond_2f
    invoke-direct {p0, v1}, Ljava/util/zip/GZIPInputStream;->readUByte(Ljava/io/InputStream;)I

    move-result v0

    .line 175
    .local v0, "flg":I
    const/4 v5, 0x6

    invoke-direct {p0, v1, v5}, Ljava/util/zip/GZIPInputStream;->skipBytes(Ljava/io/InputStream;I)V

    .line 176
    const/16 v3, 0xa

    .line 178
    .local v3, "n":I
    and-int/lit8 v5, v0, 0x4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_49

    .line 179
    invoke-direct {p0, v1}, Ljava/util/zip/GZIPInputStream;->readUShort(Ljava/io/InputStream;)I

    move-result v2

    .line 180
    .local v2, "m":I
    invoke-direct {p0, v1, v2}, Ljava/util/zip/GZIPInputStream;->skipBytes(Ljava/io/InputStream;I)V

    .line 181
    add-int/lit8 v5, v2, 0x2

    add-int/lit8 v3, v5, 0xa

    .line 184
    .end local v2    # "m":I
    :cond_49
    and-int/lit8 v5, v0, 0x8

    if-ne v5, v7, :cond_55

    .line 186
    :cond_4d
    add-int/lit8 v3, v3, 0x1

    .line 187
    invoke-direct {p0, v1}, Ljava/util/zip/GZIPInputStream;->readUByte(Ljava/io/InputStream;)I

    move-result v5

    if-nez v5, :cond_4d

    .line 190
    :cond_55
    and-int/lit8 v5, v0, 0x10

    const/16 v6, 0x10

    if-ne v5, v6, :cond_63

    .line 192
    :cond_5b
    add-int/lit8 v3, v3, 0x1

    .line 193
    invoke-direct {p0, v1}, Ljava/util/zip/GZIPInputStream;->readUByte(Ljava/io/InputStream;)I

    move-result v5

    if-nez v5, :cond_5b

    .line 196
    :cond_63
    and-int/lit8 v5, v0, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_85

    .line 197
    iget-object v5, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v5}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v6

    long-to-int v5, v6

    const v6, 0xffff

    and-int v4, v5, v6

    .line 198
    .local v4, "v":I
    invoke-direct {p0, v1}, Ljava/util/zip/GZIPInputStream;->readUShort(Ljava/io/InputStream;)I

    move-result v5

    if-eq v5, v4, :cond_83

    .line 199
    new-instance v5, Ljava/util/zip/ZipException;

    const-string/jumbo v6, "Corrupt GZIP header"

    invoke-direct {v5, v6}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 201
    :cond_83
    add-int/lit8 v3, v3, 0x2

    .line 203
    .end local v4    # "v":I
    :cond_85
    iget-object v5, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v5}, Ljava/util/zip/CRC32;->reset()V

    .line 204
    return v3
.end method

.method private readTrailer()Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 213
    iget-object v0, p0, Ljava/util/zip/GZIPInputStream;->in:Ljava/io/InputStream;

    .line 214
    .local v0, "in":Ljava/io/InputStream;
    iget-object v5, p0, Ljava/util/zip/GZIPInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v5}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v3

    .line 215
    .local v3, "n":I
    if-lez v3, :cond_21

    .line 216
    new-instance v1, Ljava/io/SequenceInputStream;

    .line 217
    new-instance v5, Ljava/io/ByteArrayInputStream;

    iget-object v6, p0, Ljava/util/zip/GZIPInputStream;->buf:[B

    iget v7, p0, Ljava/util/zip/GZIPInputStream;->len:I

    sub-int/2addr v7, v3

    invoke-direct {v5, v6, v7, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 218
    new-instance v6, Ljava/util/zip/GZIPInputStream$1;

    invoke-direct {v6, p0, v0}, Ljava/util/zip/GZIPInputStream$1;-><init>(Ljava/util/zip/GZIPInputStream;Ljava/io/InputStream;)V

    .line 216
    invoke-direct {v1, v5, v6}, Ljava/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    .end local v0    # "in":Ljava/io/InputStream;
    .local v1, "in":Ljava/io/InputStream;
    move-object v0, v1

    .line 223
    .end local v1    # "in":Ljava/io/InputStream;
    .restart local v0    # "in":Ljava/io/InputStream;
    :cond_21
    invoke-direct {p0, v0}, Ljava/util/zip/GZIPInputStream;->readUInt(Ljava/io/InputStream;)J

    move-result-wide v6

    iget-object v5, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v5}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-nez v5, :cond_43

    .line 225
    invoke-direct {p0, v0}, Ljava/util/zip/GZIPInputStream;->readUInt(Ljava/io/InputStream;)J

    move-result-wide v6

    iget-object v5, p0, Ljava/util/zip/GZIPInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v5}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    cmp-long v5, v6, v8

    if-eqz v5, :cond_4c

    .line 226
    :cond_43
    new-instance v5, Ljava/util/zip/ZipException;

    const-string/jumbo v6, "Corrupt GZIP trailer"

    invoke-direct {v5, v6}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 232
    :cond_4c
    iget-object v5, p0, Ljava/util/zip/GZIPInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result v5

    if-gtz v5, :cond_58

    const/16 v5, 0x1a

    if-le v3, v5, :cond_77

    .line 233
    :cond_58
    const/16 v2, 0x8

    .line 235
    .local v2, "m":I
    :try_start_5a
    invoke-direct {p0, v0}, Ljava/util/zip/GZIPInputStream;->readHeader(Ljava/io/InputStream;)I
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_75

    move-result v5

    add-int/lit8 v2, v5, 0x8

    .line 239
    iget-object v5, p0, Ljava/util/zip/GZIPInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v5}, Ljava/util/zip/Inflater;->reset()V

    .line 240
    if-le v3, v2, :cond_74

    .line 241
    iget-object v5, p0, Ljava/util/zip/GZIPInputStream;->inf:Ljava/util/zip/Inflater;

    iget-object v6, p0, Ljava/util/zip/GZIPInputStream;->buf:[B

    iget v7, p0, Ljava/util/zip/GZIPInputStream;->len:I

    sub-int/2addr v7, v3

    add-int/2addr v7, v2

    sub-int v8, v3, v2

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 242
    :cond_74
    return v12

    .line 236
    :catch_75
    move-exception v4

    .line 237
    .local v4, "ze":Ljava/io/IOException;
    return v13

    .line 244
    .end local v2    # "m":I
    .end local v4    # "ze":Ljava/io/IOException;
    :cond_77
    return v13
.end method

.method private readUByte(Ljava/io/InputStream;)I
    .registers 6
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 267
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 268
    .local v0, "b":I
    if-ne v0, v1, :cond_d

    .line 269
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 271
    :cond_d
    if-lt v0, v1, :cond_13

    const/16 v1, 0xff

    if-le v0, v1, :cond_3b

    .line 273
    :cond_13
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ljava/util/zip/GZIPInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 274
    const-string/jumbo v3, ".read() returned value out of range -1..255: "

    .line 273
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 276
    :cond_3b
    return v0
.end method

.method private readUInt(Ljava/io/InputStream;)J
    .registers 7
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    invoke-direct {p0, p1}, Ljava/util/zip/GZIPInputStream;->readUShort(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v0, v2

    .line 252
    .local v0, "s":J
    invoke-direct {p0, p1}, Ljava/util/zip/GZIPInputStream;->readUShort(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v2, v0

    return-wide v2
.end method

.method private readUShort(Ljava/io/InputStream;)I
    .registers 4
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 259
    invoke-direct {p0, p1}, Ljava/util/zip/GZIPInputStream;->readUByte(Ljava/io/InputStream;)I

    move-result v0

    .line 260
    .local v0, "b":I
    invoke-direct {p0, p1}, Ljava/util/zip/GZIPInputStream;->readUByte(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v0

    return v1
.end method

.method private skipBytes(Ljava/io/InputStream;I)V
    .registers 7
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 286
    :goto_1
    if-lez p2, :cond_1e

    .line 287
    iget-object v2, p0, Ljava/util/zip/GZIPInputStream;->tmpbuf:[B

    iget-object v1, p0, Ljava/util/zip/GZIPInputStream;->tmpbuf:[B

    array-length v1, v1

    if-ge p2, v1, :cond_18

    move v1, p2

    :goto_b
    invoke-virtual {p1, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 288
    .local v0, "len":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1c

    .line 289
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 287
    .end local v0    # "len":I
    :cond_18
    iget-object v1, p0, Ljava/util/zip/GZIPInputStream;->tmpbuf:[B

    array-length v1, v1

    goto :goto_b

    .line 291
    .restart local v0    # "len":I
    :cond_1c
    sub-int/2addr p2, v0

    goto :goto_1

    .line 293
    .end local v0    # "len":I
    :cond_1e
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 136
    iget-boolean v0, p0, Ljava/util/zip/GZIPInputStream;->closed:Z

    if-nez v0, :cond_c

    .line 137
    invoke-super {p0}, Ljava/util/zip/InflaterInputStream;->close()V

    .line 138
    iput-boolean v1, p0, Ljava/util/zip/GZIPInputStream;->eos:Z

    .line 139
    iput-boolean v1, p0, Ljava/util/zip/GZIPInputStream;->closed:Z

    .line 141
    :cond_c
    return-void
.end method

.method public read([BII)I
    .registers 7
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 114
    invoke-direct {p0}, Ljava/util/zip/GZIPInputStream;->ensureOpen()V

    .line 115
    iget-boolean v1, p0, Ljava/util/zip/GZIPInputStream;->eos:Z

    if-eqz v1, :cond_9

    .line 116
    return v2

    .line 118
    :cond_9
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/InflaterInputStream;->read([BII)I

    move-result v0

    .line 119
    .local v0, "n":I
    if-ne v0, v2, :cond_1e

    .line 120
    invoke-direct {p0}, Ljava/util/zip/GZIPInputStream;->readTrailer()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 121
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/zip/GZIPInputStream;->eos:Z

    .line 127
    :goto_18
    return v0

    .line 123
    :cond_19
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v1

    return v1

    .line 125
    :cond_1e
    iget-object v1, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1, p1, p2, v0}, Ljava/util/zip/CRC32;->update([BII)V

    goto :goto_18
.end method
