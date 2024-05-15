.class public Ljava/io/ByteArrayInputStream;
.super Ljava/io/InputStream;
.source "ByteArrayInputStream.java"


# instance fields
.field protected whitelist test-api buf:[B

.field protected whitelist test-api count:I

.field protected whitelist test-api mark:I

.field protected whitelist test-api pos:I


# direct methods
.method public constructor whitelist test-api <init>([B)V
    .registers 3
    .param p1, "buf"    # [B

    .line 103
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 78
    const/4 v0, 0x0

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

.method public constructor whitelist test-api <init>([BII)V
    .registers 6
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

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
.method public declared-synchronized whitelist test-api available()I
    .registers 3

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

    .line 232
    .end local p0    # "this":Ljava/io/ByteArrayInputStream;
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public whitelist test-api close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    return-void
.end method

.method public whitelist test-api mark(I)V
    .registers 3
    .param p1, "readAheadLimit"    # I

    .line 262
    iget v0, p0, Ljava/io/ByteArrayInputStream;->pos:I

    iput v0, p0, Ljava/io/ByteArrayInputStream;->mark:I

    .line 263
    return-void
.end method

.method public whitelist test-api markSupported()Z
    .registers 2

    .line 243
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized whitelist test-api read()I
    .registers 4

    monitor-enter p0

    .line 144
    :try_start_1
    iget v0, p0, Ljava/io/ByteArrayInputStream;->pos:I

    iget v1, p0, Ljava/io/ByteArrayInputStream;->count:I

    if-ge v0, v1, :cond_12

    iget-object v1, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Ljava/io/ByteArrayInputStream;->pos:I

    aget-byte v0, v1, v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_15

    and-int/lit16 v0, v0, 0xff

    goto :goto_13

    .end local p0    # "this":Ljava/io/ByteArrayInputStream;
    :cond_12
    const/4 v0, -0x1

    :goto_13
    monitor-exit p0

    return v0

    .line 144
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized whitelist test-api read([BII)I
    .registers 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    monitor-enter p0

    .line 177
    if-eqz p1, :cond_2f

    .line 179
    if-ltz p2, :cond_29

    if-ltz p3, :cond_29

    :try_start_7
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_29

    .line 183
    iget v0, p0, Ljava/io/ByteArrayInputStream;->pos:I

    iget v1, p0, Ljava/io/ByteArrayInputStream;->count:I
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_35

    if-lt v0, v1, :cond_14

    .line 184
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 187
    :cond_14
    sub-int/2addr v1, v0

    .line 188
    .local v1, "avail":I
    if-le p3, v1, :cond_18

    .line 189
    move p3, v1

    .line 191
    :cond_18
    if-gtz p3, :cond_1d

    .line 192
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 194
    :cond_1d
    :try_start_1d
    iget-object v2, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    invoke-static {v2, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 195
    iget v0, p0, Ljava/io/ByteArrayInputStream;->pos:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/io/ByteArrayInputStream;->pos:I
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_35

    .line 196
    monitor-exit p0

    return p3

    .line 180
    .end local v1    # "avail":I
    .end local p0    # "this":Ljava/io/ByteArrayInputStream;
    :cond_29
    :try_start_29
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 178
    :cond_2f
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_35
    .catchall {:try_start_29 .. :try_end_35} :catchall_35

    .line 176
    .end local p1    # "b":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    :catchall_35
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist test-api reset()V
    .registers 2

    monitor-enter p0

    .line 271
    :try_start_1
    iget v0, p0, Ljava/io/ByteArrayInputStream;->mark:I

    iput v0, p0, Ljava/io/ByteArrayInputStream;->pos:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    .line 272
    monitor-exit p0

    return-void

    .line 270
    .end local p0    # "this":Ljava/io/ByteArrayInputStream;
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized whitelist test-api skip(J)J
    .registers 9
    .param p1, "n"    # J

    monitor-enter p0

    .line 212
    :try_start_1
    iget v0, p0, Ljava/io/ByteArrayInputStream;->count:I

    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    sub-int/2addr v0, v1

    int-to-long v2, v0

    .line 213
    .local v2, "k":J
    cmp-long v0, p1, v2

    if-gez v0, :cond_14

    .line 214
    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-gez v0, :cond_12

    goto :goto_13

    :cond_12
    move-wide v4, p1

    :goto_13
    move-wide v2, v4

    .line 217
    :cond_14
    int-to-long v0, v1

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Ljava/io/ByteArrayInputStream;->pos:I
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 218
    monitor-exit p0

    return-wide v2

    .line 211
    .end local v2    # "k":J
    .end local p0    # "this":Ljava/io/ByteArrayInputStream;
    .end local p1    # "n":J
    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method
