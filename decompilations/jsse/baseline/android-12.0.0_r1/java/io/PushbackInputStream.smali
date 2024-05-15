.class public Ljava/io/PushbackInputStream;
.super Ljava/io/FilterInputStream;
.source "PushbackInputStream.java"


# instance fields
.field protected whitelist test-api buf:[B

.field protected whitelist test-api pos:I


# direct methods
.method public constructor whitelist test-api <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;

    .line 111
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 112
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/InputStream;I)V
    .registers 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "size"    # I

    .line 92
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 93
    if-lez p2, :cond_c

    .line 96
    new-array v0, p2, [B

    iput-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    .line 97
    iput p2, p0, Ljava/io/PushbackInputStream;->pos:I

    .line 98
    return-void

    .line 94
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o ensureOpen()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_5

    .line 75
    return-void

    .line 74
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api available()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    invoke-direct {p0}, Ljava/io/PushbackInputStream;->ensureOpen()V

    .line 276
    iget-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    array-length v0, v0

    iget v1, p0, Ljava/io/PushbackInputStream;->pos:I

    sub-int/2addr v0, v1

    .line 277
    .local v0, "n":I
    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result v1

    .line 278
    .local v1, "avail":I
    const v2, 0x7fffffff

    sub-int v3, v2, v1

    if-le v0, v3, :cond_15

    .line 279
    goto :goto_17

    .line 280
    :cond_15
    add-int v2, v0, v1

    .line 278
    :goto_17
    return v2
.end method

.method public declared-synchronized whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 377
    :try_start_1
    iget-object v0, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_13

    if-nez v0, :cond_7

    .line 378
    monitor-exit p0

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
    iput-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_13

    .line 382
    monitor-exit p0

    return-void

    .line 376
    .end local p0    # "this":Ljava/io/PushbackInputStream;
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized whitelist test-api mark(I)V
    .registers 2
    .param p1, "readlimit"    # I

    monitor-enter p0

    .line 349
    monitor-exit p0

    return-void
.end method

.method public whitelist test-api markSupported()Z
    .registers 2

    .line 335
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    invoke-direct {p0}, Ljava/io/PushbackInputStream;->ensureOpen()V

    .line 136
    iget v0, p0, Ljava/io/PushbackInputStream;->pos:I

    iget-object v1, p0, Ljava/io/PushbackInputStream;->buf:[B

    array-length v2, v1

    if-ge v0, v2, :cond_13

    .line 137
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Ljava/io/PushbackInputStream;->pos:I

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 139
    :cond_13
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    return v0
.end method

.method public whitelist test-api read([BII)I
    .registers 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    invoke-direct {p0}, Ljava/io/PushbackInputStream;->ensureOpen()V

    .line 167
    if-eqz p1, :cond_3e

    .line 169
    if-ltz p2, :cond_38

    if-ltz p3, :cond_38

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_38

    .line 171
    if-nez p3, :cond_11

    .line 172
    const/4 v0, 0x0

    return v0

    .line 175
    :cond_11
    iget-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    array-length v1, v0

    iget v2, p0, Ljava/io/PushbackInputStream;->pos:I

    sub-int/2addr v1, v2

    .line 176
    .local v1, "avail":I
    if-lez v1, :cond_26

    .line 177
    if-ge p3, v1, :cond_1c

    .line 178
    move v1, p3

    .line 180
    :cond_1c
    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    iget v0, p0, Ljava/io/PushbackInputStream;->pos:I

    add-int/2addr v0, v1

    iput v0, p0, Ljava/io/PushbackInputStream;->pos:I

    .line 182
    add-int/2addr p2, v1

    .line 183
    sub-int/2addr p3, v1

    .line 185
    :cond_26
    if-lez p3, :cond_37

    .line 186
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p3

    .line 187
    const/4 v0, -0x1

    if-ne p3, v0, :cond_34

    .line 188
    if-nez v1, :cond_32

    goto :goto_33

    :cond_32
    move v0, v1

    :goto_33
    return v0

    .line 190
    :cond_34
    add-int v0, v1, p3

    return v0

    .line 192
    :cond_37
    return v1

    .line 170
    .end local v1    # "avail":I
    :cond_38
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 168
    :cond_3e
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public declared-synchronized whitelist test-api reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 364
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mark/reset not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_9

    .line 364
    .end local p0    # "this":Ljava/io/PushbackInputStream;
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public whitelist test-api skip(J)J
    .registers 9
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    invoke-direct {p0}, Ljava/io/PushbackInputStream;->ensureOpen()V

    .line 307
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_a

    .line 308
    return-wide v0

    .line 311
    :cond_a
    iget-object v2, p0, Ljava/io/PushbackInputStream;->buf:[B

    array-length v2, v2

    iget v3, p0, Ljava/io/PushbackInputStream;->pos:I

    sub-int/2addr v2, v3

    int-to-long v4, v2

    .line 312
    .local v4, "pskip":J
    cmp-long v2, v4, v0

    if-lez v2, :cond_20

    .line 313
    cmp-long v2, p1, v4

    if-gez v2, :cond_1a

    .line 314
    move-wide v4, p1

    .line 316
    :cond_1a
    int-to-long v2, v3

    add-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, p0, Ljava/io/PushbackInputStream;->pos:I

    .line 317
    sub-long/2addr p1, v4

    .line 319
    :cond_20
    cmp-long v0, p1, v0

    if-lez v0, :cond_29

    .line 320
    invoke-super {p0, p1, p2}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide v0

    add-long/2addr v4, v0

    .line 322
    :cond_29
    return-wide v4
.end method

.method public whitelist test-api unread(I)V
    .registers 5
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    invoke-direct {p0}, Ljava/io/PushbackInputStream;->ensureOpen()V

    .line 208
    iget v0, p0, Ljava/io/PushbackInputStream;->pos:I

    if-eqz v0, :cond_11

    .line 211
    iget-object v1, p0, Ljava/io/PushbackInputStream;->buf:[B

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/io/PushbackInputStream;->pos:I

    int-to-byte v2, p1

    aput-byte v2, v1, v0

    .line 212
    return-void

    .line 209
    :cond_11
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Push back buffer is full"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api unread([B)V
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 253
    return-void
.end method

.method public whitelist test-api unread([BII)V
    .registers 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    invoke-direct {p0}, Ljava/io/PushbackInputStream;->ensureOpen()V

    .line 231
    iget v0, p0, Ljava/io/PushbackInputStream;->pos:I

    if-gt p3, v0, :cond_10

    .line 234
    sub-int/2addr v0, p3

    iput v0, p0, Ljava/io/PushbackInputStream;->pos:I

    .line 235
    iget-object v1, p0, Ljava/io/PushbackInputStream;->buf:[B

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 236
    return-void

    .line 232
    :cond_10
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Push back buffer is full"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
