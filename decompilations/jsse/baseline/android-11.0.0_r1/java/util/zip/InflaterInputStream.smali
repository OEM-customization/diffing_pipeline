.class public Ljava/util/zip/InflaterInputStream;
.super Ljava/io/FilterInputStream;
.source "InflaterInputStream.java"


# instance fields
.field private greylist-max-o b:[B

.field protected whitelist core-platform-api test-api buf:[B

.field protected whitelist core-platform-api test-api closed:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected whitelist core-platform-api test-api inf:Ljava/util/zip/Inflater;

.field protected whitelist core-platform-api test-api len:I

.field private greylist-max-o reachEOF:Z

.field private greylist-max-o singleByteBuf:[B


# direct methods
.method public constructor whitelist core-platform-api test-api <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;

    .line 126
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    invoke-direct {p0, p1, v0}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    .line 129
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V
    .registers 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "inf"    # Ljava/util/zip/Inflater;

    .line 114
    const/16 v0, 0x200

    invoke-direct {p0, p1, p2, v0}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V

    .line 115
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V
    .registers 6
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "inf"    # Ljava/util/zip/Inflater;
    .param p3, "size"    # I

    .line 97
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/zip/InflaterInputStream;->closed:Z

    .line 76
    iput-boolean v0, p0, Ljava/util/zip/InflaterInputStream;->reachEOF:Z

    .line 131
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/util/zip/InflaterInputStream;->singleByteBuf:[B

    .line 214
    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/util/zip/InflaterInputStream;->b:[B

    .line 98
    if-eqz p1, :cond_28

    if-eqz p2, :cond_28

    .line 100
    if-lez p3, :cond_20

    .line 103
    iput-object p2, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    .line 104
    new-array v0, p3, [B

    iput-object v0, p0, Ljava/util/zip/InflaterInputStream;->buf:[B

    .line 105
    return-void

    .line 101
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "buffer size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_28
    const/4 v0, 0x0

    throw v0
.end method

.method private greylist-max-o ensureOpen()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget-boolean v0, p0, Ljava/util/zip/InflaterInputStream;->closed:Z

    if-nez v0, :cond_5

    .line 85
    return-void

    .line 83
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api available()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    invoke-direct {p0}, Ljava/util/zip/InflaterInputStream;->ensureOpen()V

    .line 199
    iget-boolean v0, p0, Ljava/util/zip/InflaterInputStream;->reachEOF:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 200
    return v1

    .line 204
    :cond_9
    iget-object v0, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_15

    .line 206
    iput-boolean v2, p0, Ljava/util/zip/InflaterInputStream;->reachEOF:Z

    .line 207
    return v1

    .line 210
    :cond_15
    return v2
.end method

.method public whitelist core-platform-api test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    iget-boolean v0, p0, Ljava/util/zip/InflaterInputStream;->closed:Z

    if-nez v0, :cond_11

    .line 254
    iget-object v0, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 255
    iget-object v0, p0, Ljava/util/zip/InflaterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/zip/InflaterInputStream;->closed:Z

    .line 258
    :cond_11
    return-void
.end method

.method protected whitelist core-platform-api test-api fill()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    invoke-direct {p0}, Ljava/util/zip/InflaterInputStream;->ensureOpen()V

    .line 266
    iget-object v0, p0, Ljava/util/zip/InflaterInputStream;->in:Ljava/io/InputStream;

    iget-object v1, p0, Ljava/util/zip/InflaterInputStream;->buf:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    iput v0, p0, Ljava/util/zip/InflaterInputStream;->len:I

    .line 267
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1a

    .line 270
    iget-object v1, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    iget-object v2, p0, Ljava/util/zip/InflaterInputStream;->buf:[B

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 271
    return-void

    .line 268
    :cond_1a
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "Unexpected end of ZLIB input stream"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized whitelist core-platform-api test-api mark(I)V
    .registers 2
    .param p1, "readlimit"    # I

    monitor-enter p0

    .line 299
    monitor-exit p0

    return-void
.end method

.method public whitelist core-platform-api test-api markSupported()Z
    .registers 2

    .line 285
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist core-platform-api test-api read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    invoke-direct {p0}, Ljava/util/zip/InflaterInputStream;->ensureOpen()V

    .line 141
    iget-object v0, p0, Ljava/util/zip/InflaterInputStream;->singleByteBuf:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/zip/InflaterInputStream;->read([BII)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_f

    goto :goto_17

    :cond_f
    iget-object v0, p0, Ljava/util/zip/InflaterInputStream;->singleByteBuf:[B

    aget-byte v0, v0, v1

    invoke-static {v0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v2

    :goto_17
    return v2
.end method

.method public whitelist core-platform-api test-api read([BII)I
    .registers 8
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    invoke-direct {p0}, Ljava/util/zip/InflaterInputStream;->ensureOpen()V

    .line 162
    if-eqz p1, :cond_54

    .line 164
    if-ltz p2, :cond_4e

    if-ltz p3, :cond_4e

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_4e

    .line 166
    if-nez p3, :cond_11

    .line 167
    const/4 v0, 0x0

    return v0

    .line 171
    :cond_11
    :goto_11
    :try_start_11
    iget-object v0, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    move v1, v0

    .local v1, "n":I
    if-nez v0, :cond_3c

    .line 172
    iget-object v0, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v0

    if-eqz v0, :cond_2b

    goto :goto_37

    .line 176
    :cond_2b
    iget-object v0, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 177
    invoke-virtual {p0}, Ljava/util/zip/InflaterInputStream;->fill()V

    goto :goto_11

    .line 173
    :cond_37
    :goto_37
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/zip/InflaterInputStream;->reachEOF:Z
    :try_end_3a
    .catch Ljava/util/zip/DataFormatException; {:try_start_11 .. :try_end_3a} :catch_3d

    .line 174
    const/4 v0, -0x1

    return v0

    .line 180
    :cond_3c
    return v1

    .line 181
    .end local v1    # "n":I
    :catch_3d
    move-exception v0

    .line 182
    .local v0, "e":Ljava/util/zip/DataFormatException;
    invoke-virtual {v0}, Ljava/util/zip/DataFormatException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, "s":Ljava/lang/String;
    new-instance v2, Ljava/util/zip/ZipException;

    if-eqz v1, :cond_48

    move-object v3, v1

    goto :goto_4a

    :cond_48
    const-string v3, "Invalid ZLIB data format"

    :goto_4a
    invoke-direct {v2, v3}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 165
    .end local v0    # "e":Ljava/util/zip/DataFormatException;
    .end local v1    # "s":Ljava/lang/String;
    :cond_4e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 163
    :cond_54
    const/4 v0, 0x0

    throw v0
.end method

.method public declared-synchronized whitelist core-platform-api test-api reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 314
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mark/reset not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_9

    .line 314
    .end local p0    # "this":Ljava/util/zip/InflaterInputStream;
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public whitelist core-platform-api test-api skip(J)J
    .registers 8
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2e

    .line 227
    invoke-direct {p0}, Ljava/util/zip/InflaterInputStream;->ensureOpen()V

    .line 228
    const-wide/32 v0, 0x7fffffff

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 229
    .local v0, "max":I
    const/4 v1, 0x0

    .line 230
    .local v1, "total":I
    :goto_12
    if-ge v1, v0, :cond_2c

    .line 231
    sub-int v2, v0, v1

    .line 232
    .local v2, "len":I
    iget-object v3, p0, Ljava/util/zip/InflaterInputStream;->b:[B

    array-length v4, v3

    if-le v2, v4, :cond_1c

    .line 233
    array-length v2, v3

    .line 235
    :cond_1c
    iget-object v3, p0, Ljava/util/zip/InflaterInputStream;->b:[B

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v2}, Ljava/util/zip/InflaterInputStream;->read([BII)I

    move-result v2

    .line 236
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2a

    .line 237
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/util/zip/InflaterInputStream;->reachEOF:Z

    .line 238
    goto :goto_2c

    .line 240
    :cond_2a
    add-int/2addr v1, v2

    .line 241
    .end local v2    # "len":I
    goto :goto_12

    .line 242
    :cond_2c
    :goto_2c
    int-to-long v2, v1

    return-wide v2

    .line 225
    .end local v0    # "max":I
    .end local v1    # "total":I
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "negative skip length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
