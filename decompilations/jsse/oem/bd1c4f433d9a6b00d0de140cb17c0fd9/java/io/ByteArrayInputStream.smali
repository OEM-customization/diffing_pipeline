.class public Ljava/io/ByteArrayInputStream;
.super Ljava/io/InputStream;
.source "ByteArrayInputStream.java"


# instance fields
.field protected buf:[B

.field protected count:I

.field protected mark:I

.field protected pos:I


# direct methods
.method public constructor <init>([B)V
    .registers 3
    .param p1, "buf"    # [B

    .prologue
    const/4 v0, 0x0

    .line 103
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 78
    iput v0, p0, Ljava/io/ByteArrayInputStream;->mark:I

    .line 104
    iput-object p1, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    .line 105
    iput v0, p0, Ljava/io/ByteArrayInputStream;->pos:I

    .line 106
    array-length v0, p1

    iput v0, p0, Ljava/io/ByteArrayInputStream;->count:I

    .line 107
    return-void
.end method

.method public constructor <init>([BII)V
    .registers 6
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/ByteArrayInputStream;->mark:I

    .line 124
    iput-object p1, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    .line 125
    iput p2, p0, Ljava/io/ByteArrayInputStream;->pos:I

    .line 126
    add-int v0, p2, p3

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljava/io/ByteArrayInputStream;->count:I

    .line 127
    iput p2, p0, Ljava/io/ByteArrayInputStream;->mark:I

    .line 128
    return-void
.end method


# virtual methods
.method public declared-synchronized available()I
    .registers 3

    .prologue
    monitor-enter p0

    .line 232
    :try_start_1
    iget v0, p0, Ljava/io/ByteArrayInputStream;->count:I

    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_8

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 280
    return-void
.end method

.method public mark(I)V
    .registers 3
    .param p1, "readAheadLimit"    # I

    .prologue
    .line 262
    iget v0, p0, Ljava/io/ByteArrayInputStream;->pos:I

    iput v0, p0, Ljava/io/ByteArrayInputStream;->mark:I

    .line 263
    return-void
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 243
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized read()I
    .registers 4

    .prologue
    monitor-enter p0

    .line 144
    :try_start_1
    iget v0, p0, Ljava/io/ByteArrayInputStream;->pos:I

    iget v1, p0, Ljava/io/ByteArrayInputStream;->count:I

    if-ge v0, v1, :cond_15

    iget-object v0, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/ByteArrayInputStream;->pos:I

    aget-byte v0, v0, v1
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_17

    and-int/lit16 v0, v0, 0xff

    :goto_13
    monitor-exit p0

    return v0

    :cond_15
    const/4 v0, -0x1

    goto :goto_13

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .registers 8
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v3, 0x0

    monitor-enter p0

    .line 177
    if-nez p1, :cond_d

    .line 178
    :try_start_4
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_a

    :catchall_a
    move-exception v1

    monitor-exit p0

    throw v1

    .line 179
    :cond_d
    if-ltz p2, :cond_11

    if-gez p3, :cond_17

    .line 180
    :cond_11
    :try_start_11
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 179
    :cond_17
    array-length v1, p1

    sub-int/2addr v1, p2

    if-gt p3, v1, :cond_11

    .line 183
    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    iget v2, p0, Ljava/io/ByteArrayInputStream;->count:I
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_a

    if-lt v1, v2, :cond_24

    .line 184
    const/4 v1, -0x1

    monitor-exit p0

    return v1

    .line 187
    :cond_24
    :try_start_24
    iget v1, p0, Ljava/io/ByteArrayInputStream;->count:I

    iget v2, p0, Ljava/io/ByteArrayInputStream;->pos:I
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_a

    sub-int v0, v1, v2

    .line 188
    .local v0, "avail":I
    if-le p3, v0, :cond_2d

    .line 189
    move p3, v0

    .line 191
    :cond_2d
    if-gtz p3, :cond_31

    monitor-exit p0

    .line 192
    return v3

    .line 194
    :cond_31
    :try_start_31
    iget-object v1, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v2, p0, Ljava/io/ByteArrayInputStream;->pos:I

    invoke-static {v1, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 195
    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    add-int/2addr v1, p3

    iput v1, p0, Ljava/io/ByteArrayInputStream;->pos:I
    :try_end_3d
    .catchall {:try_start_31 .. :try_end_3d} :catchall_a

    monitor-exit p0

    .line 196
    return p3
.end method

.method public declared-synchronized reset()V
    .registers 2

    .prologue
    monitor-enter p0

    .line 271
    :try_start_1
    iget v0, p0, Ljava/io/ByteArrayInputStream;->mark:I

    iput v0, p0, Ljava/io/ByteArrayInputStream;->pos:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    .line 272
    return-void

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized skip(J)J
    .registers 8
    .param p1, "n"    # J

    .prologue
    monitor-enter p0

    .line 212
    :try_start_1
    iget v2, p0, Ljava/io/ByteArrayInputStream;->count:I

    iget v3, p0, Ljava/io/ByteArrayInputStream;->pos:I

    sub-int/2addr v2, v3

    int-to-long v0, v2

    .line 213
    .local v0, "k":J
    cmp-long v2, p1, v0

    if-gez v2, :cond_13

    .line 214
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_1c

    const-wide/16 v0, 0x0

    .line 217
    :cond_13
    :goto_13
    iget v2, p0, Ljava/io/ByteArrayInputStream;->pos:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Ljava/io/ByteArrayInputStream;->pos:I
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1e

    monitor-exit p0

    .line 218
    return-wide v0

    .line 214
    :cond_1c
    move-wide v0, p1

    goto :goto_13

    .end local v0    # "k":J
    :catchall_1e
    move-exception v2

    monitor-exit p0

    throw v2
.end method
