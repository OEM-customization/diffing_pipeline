.class public Ljava/io/PushbackInputStream;
.super Ljava/io/FilterInputStream;
.source "PushbackInputStream.java"


# instance fields
.field protected buf:[B

.field protected pos:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 111
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "size"    # I

    .prologue
    .line 92
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 93
    if-gtz p2, :cond_e

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_e
    new-array v0, p2, [B

    iput-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    .line 97
    iput p2, p0, Ljava/io/PushbackInputStream;->pos:I

    .line 98
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
    .line 73
    iget-object v0, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    if-nez v0, :cond_d

    .line 74
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_d
    return-void
.end method


# virtual methods
.method public available()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v2, 0x7fffffff

    .line 275
    invoke-direct {p0}, Ljava/io/PushbackInputStream;->ensureOpen()V

    .line 276
    iget-object v3, p0, Ljava/io/PushbackInputStream;->buf:[B

    array-length v3, v3

    iget v4, p0, Ljava/io/PushbackInputStream;->pos:I

    sub-int v1, v3, v4

    .line 277
    .local v1, "n":I
    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result v0

    .line 278
    .local v0, "avail":I
    sub-int v3, v2, v0

    if-le v1, v3, :cond_16

    :goto_15
    return v2

    .line 280
    :cond_16
    add-int v2, v1, v0

    goto :goto_15
.end method

.method public declared-synchronized close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 377
    :try_start_1
    iget-object v0, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_14

    if-nez v0, :cond_7

    monitor-exit p0

    .line 378
    return-void

    .line 379
    :cond_7
    :try_start_7
    iget-object v0, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 380
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    .line 381
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_14

    monitor-exit p0

    .line 382
    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized mark(I)V
    .registers 2
    .param p1, "readlimit"    # I

    .prologue
    monitor-enter p0

    monitor-exit p0

    .line 349
    return-void
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 335
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/io/PushbackInputStream;->ensureOpen()V

    .line 136
    iget v0, p0, Ljava/io/PushbackInputStream;->pos:I

    iget-object v1, p0, Ljava/io/PushbackInputStream;->buf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_17

    .line 137
    iget-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    iget v1, p0, Ljava/io/PushbackInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/PushbackInputStream;->pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 139
    :cond_17
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 8
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 166
    invoke-direct {p0}, Ljava/io/PushbackInputStream;->ensureOpen()V

    .line 167
    if-nez p1, :cond_d

    .line 168
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 169
    :cond_d
    if-ltz p2, :cond_11

    if-gez p3, :cond_17

    .line 170
    :cond_11
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 169
    :cond_17
    array-length v2, p1

    sub-int/2addr v2, p2

    if-gt p3, v2, :cond_11

    .line 171
    if-nez p3, :cond_1e

    .line 172
    return v3

    .line 175
    :cond_1e
    iget-object v2, p0, Ljava/io/PushbackInputStream;->buf:[B

    array-length v2, v2

    iget v3, p0, Ljava/io/PushbackInputStream;->pos:I

    sub-int v0, v2, v3

    .line 176
    .local v0, "avail":I
    if-lez v0, :cond_38

    .line 177
    if-ge p3, v0, :cond_2a

    .line 178
    move v0, p3

    .line 180
    :cond_2a
    iget-object v2, p0, Ljava/io/PushbackInputStream;->buf:[B

    iget v3, p0, Ljava/io/PushbackInputStream;->pos:I

    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 181
    iget v2, p0, Ljava/io/PushbackInputStream;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Ljava/io/PushbackInputStream;->pos:I

    .line 182
    add-int/2addr p2, v0

    .line 183
    sub-int/2addr p3, v0

    .line 185
    :cond_38
    if-lez p3, :cond_47

    .line 186
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p3

    .line 187
    if-ne p3, v1, :cond_44

    .line 188
    if-nez v0, :cond_43

    move v0, v1

    .end local v0    # "avail":I
    :cond_43
    return v0

    .line 190
    .restart local v0    # "avail":I
    :cond_44
    add-int v1, v0, p3

    return v1

    .line 192
    :cond_47
    return v0
.end method

.method public declared-synchronized reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 364
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "mark/reset not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_a

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .registers 10
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 306
    invoke-direct {p0}, Ljava/io/PushbackInputStream;->ensureOpen()V

    .line 307
    cmp-long v2, p1, v4

    if-gtz v2, :cond_a

    .line 308
    return-wide v4

    .line 311
    :cond_a
    iget-object v2, p0, Ljava/io/PushbackInputStream;->buf:[B

    array-length v2, v2

    iget v3, p0, Ljava/io/PushbackInputStream;->pos:I

    sub-int/2addr v2, v3

    int-to-long v0, v2

    .line 312
    .local v0, "pskip":J
    cmp-long v2, v0, v4

    if-lez v2, :cond_22

    .line 313
    cmp-long v2, p1, v0

    if-gez v2, :cond_1a

    .line 314
    move-wide v0, p1

    .line 316
    :cond_1a
    iget v2, p0, Ljava/io/PushbackInputStream;->pos:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Ljava/io/PushbackInputStream;->pos:I

    .line 317
    sub-long/2addr p1, v0

    .line 319
    :cond_22
    cmp-long v2, p1, v4

    if-lez v2, :cond_2b

    .line 320
    invoke-super {p0, p1, p2}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 322
    :cond_2b
    return-wide v0
.end method

.method public unread(I)V
    .registers 5
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/io/PushbackInputStream;->ensureOpen()V

    .line 208
    iget v0, p0, Ljava/io/PushbackInputStream;->pos:I

    if-nez v0, :cond_10

    .line 209
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Push back buffer is full"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_10
    iget-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    iget v1, p0, Ljava/io/PushbackInputStream;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/io/PushbackInputStream;->pos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 212
    return-void
.end method

.method public unread([B)V
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 253
    return-void
.end method

.method public unread([BII)V
    .registers 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/io/PushbackInputStream;->ensureOpen()V

    .line 231
    iget v0, p0, Ljava/io/PushbackInputStream;->pos:I

    if-le p3, v0, :cond_10

    .line 232
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Push back buffer is full"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_10
    iget v0, p0, Ljava/io/PushbackInputStream;->pos:I

    sub-int/2addr v0, p3

    iput v0, p0, Ljava/io/PushbackInputStream;->pos:I

    .line 235
    iget-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    iget v1, p0, Ljava/io/PushbackInputStream;->pos:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 236
    return-void
.end method
