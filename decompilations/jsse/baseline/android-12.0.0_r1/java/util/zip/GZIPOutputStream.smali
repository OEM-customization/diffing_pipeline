.class public Ljava/util/zip/GZIPOutputStream;
.super Ljava/util/zip/DeflaterOutputStream;
.source "GZIPOutputStream.java"


# static fields
.field private static final greylist-max-o GZIP_MAGIC:I = 0x8b1f

.field private static final greylist-max-o TRAILER_SIZE:I = 0x8


# instance fields
.field protected whitelist test-api crc:Ljava/util/zip/CRC32;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    const/16 v0, 0x200

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;IZ)V

    .line 110
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/OutputStream;I)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;IZ)V

    .line 68
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/OutputStream;IZ)V
    .registers 7
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "size"    # I
    .param p3, "syncFlush"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/util/zip/Deflater;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/zip/Deflater;-><init>(IZ)V

    invoke-direct {p0, p1, v0, p2, p3}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;IZ)V

    .line 42
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Ljava/util/zip/GZIPOutputStream;->crc:Ljava/util/zip/CRC32;

    .line 93
    iput-boolean v2, p0, Ljava/util/zip/GZIPOutputStream;->usesDefaultDeflater:Z

    .line 94
    invoke-direct {p0}, Ljava/util/zip/GZIPOutputStream;->writeHeader()V

    .line 95
    iget-object v0, p0, Ljava/util/zip/GZIPOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    .line 96
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/OutputStream;Z)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "syncFlush"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    const/16 v0, 0x200

    invoke-direct {p0, p1, v0, p2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;IZ)V

    .line 132
    return-void
.end method

.method private greylist-max-o writeHeader()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    iget-object v0, p0, Ljava/util/zip/GZIPOutputStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0xa

    new-array v1, v1, [B

    fill-array-data v1, :array_e

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 194
    return-void

    nop

    :array_e
    .array-data 1
        0x1ft
        -0x75t
        0x8t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private greylist-max-o writeInt(I[BI)V
    .registers 6
    .param p1, "i"    # I
    .param p2, "buf"    # [B
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    const v0, 0xffff

    and-int v1, p1, v0

    invoke-direct {p0, v1, p2, p3}, Ljava/util/zip/GZIPOutputStream;->writeShort(I[BI)V

    .line 211
    shr-int/lit8 v1, p1, 0x10

    and-int/2addr v0, v1

    add-int/lit8 v1, p3, 0x2

    invoke-direct {p0, v0, p2, v1}, Ljava/util/zip/GZIPOutputStream;->writeShort(I[BI)V

    .line 212
    return-void
.end method

.method private greylist-max-o writeShort(I[BI)V
    .registers 6
    .param p1, "s"    # I
    .param p2, "buf"    # [B
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 220
    add-int/lit8 v0, p3, 0x1

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 221
    return-void
.end method

.method private greylist-max-o writeTrailer([BI)V
    .registers 5
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    iget-object v0, p0, Ljava/util/zip/GZIPOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/zip/GZIPOutputStream;->writeInt(I[BI)V

    .line 202
    iget-object v0, p0, Ljava/util/zip/GZIPOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->getTotalIn()I

    move-result v0

    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, v0, p1, v1}, Ljava/util/zip/GZIPOutputStream;->writeInt(I[BI)V

    .line 203
    return-void
.end method


# virtual methods
.method public whitelist test-api finish()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    iget-object v0, p0, Ljava/util/zip/GZIPOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_53

    .line 157
    iget-object v0, p0, Ljava/util/zip/GZIPOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    .line 158
    :goto_d
    iget-object v0, p0, Ljava/util/zip/GZIPOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_49

    .line 159
    iget-object v0, p0, Ljava/util/zip/GZIPOutputStream;->def:Ljava/util/zip/Deflater;

    iget-object v3, p0, Ljava/util/zip/GZIPOutputStream;->buf:[B

    iget-object v4, p0, Ljava/util/zip/GZIPOutputStream;->buf:[B

    array-length v4, v4

    invoke-virtual {v0, v3, v2, v4}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v0

    .line 160
    .local v0, "len":I
    iget-object v3, p0, Ljava/util/zip/GZIPOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v3}, Ljava/util/zip/Deflater;->finished()Z

    move-result v3

    if-eqz v3, :cond_3f

    iget-object v3, p0, Ljava/util/zip/GZIPOutputStream;->buf:[B

    array-length v3, v3

    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_3f

    .line 162
    iget-object v3, p0, Ljava/util/zip/GZIPOutputStream;->buf:[B

    invoke-direct {p0, v3, v0}, Ljava/util/zip/GZIPOutputStream;->writeTrailer([BI)V

    .line 163
    add-int/2addr v0, v1

    .line 164
    iget-object v1, p0, Ljava/util/zip/GZIPOutputStream;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Ljava/util/zip/GZIPOutputStream;->buf:[B

    invoke-virtual {v1, v3, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 165
    return-void

    .line 167
    :cond_3f
    if-lez v0, :cond_48

    .line 168
    iget-object v1, p0, Ljava/util/zip/GZIPOutputStream;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Ljava/util/zip/GZIPOutputStream;->buf:[B

    invoke-virtual {v1, v3, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 169
    .end local v0    # "len":I
    :cond_48
    goto :goto_d

    .line 172
    :cond_49
    new-array v0, v1, [B

    .line 173
    .local v0, "trailer":[B
    invoke-direct {p0, v0, v2}, Ljava/util/zip/GZIPOutputStream;->writeTrailer([BI)V

    .line 174
    iget-object v1, p0, Ljava/util/zip/GZIPOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 176
    .end local v0    # "trailer":[B
    :cond_53
    return-void
.end method

.method public declared-synchronized whitelist test-api write([BII)V
    .registers 5
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 145
    :try_start_1
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/DeflaterOutputStream;->write([BII)V

    .line 146
    iget-object v0, p0, Ljava/util/zip/GZIPOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 147
    monitor-exit p0

    return-void

    .line 144
    .end local p0    # "this":Ljava/util/zip/GZIPOutputStream;
    .end local p1    # "buf":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method