.class public Ljava/io/ByteArrayOutputStream;
.super Ljava/io/OutputStream;
.source "ByteArrayOutputStream.java"


# static fields
.field private static final greylist-max-o MAX_ARRAY_SIZE:I = 0x7ffffff7


# instance fields
.field protected whitelist test-api buf:[B

.field protected whitelist test-api count:I


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 62
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 63
    return-void
.end method

.method public constructor whitelist test-api <init>(I)V
    .registers 5
    .param p1, "size"    # I

    .line 72
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 73
    if-ltz p1, :cond_a

    .line 77
    new-array v0, p1, [B

    iput-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    .line 78
    return-void

    .line 74
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative initial size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o ensureCapacity(I)V
    .registers 3
    .param p1, "minCapacity"    # I

    .line 92
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    array-length v0, v0

    sub-int v0, p1, v0

    if-lez v0, :cond_a

    .line 93
    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;->grow(I)V

    .line 94
    :cond_a
    return-void
.end method

.method private greylist-max-o grow(I)V
    .registers 5
    .param p1, "minCapacity"    # I

    .line 112
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    array-length v0, v0

    .line 113
    .local v0, "oldCapacity":I
    shl-int/lit8 v1, v0, 0x1

    .line 114
    .local v1, "newCapacity":I
    sub-int v2, v1, p1

    if-gez v2, :cond_a

    .line 115
    move v1, p1

    .line 116
    :cond_a
    const v2, 0x7ffffff7

    sub-int v2, v1, v2

    if-lez v2, :cond_15

    .line 117
    invoke-static {p1}, Ljava/io/ByteArrayOutputStream;->hugeCapacity(I)I

    move-result v1

    .line 118
    :cond_15
    iget-object v2, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    iput-object v2, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    .line 119
    return-void
.end method

.method private static greylist-max-o hugeCapacity(I)I
    .registers 2
    .param p0, "minCapacity"    # I

    .line 122
    if-ltz p0, :cond_d

    .line 124
    const v0, 0x7ffffff7

    if-le p0, v0, :cond_b

    .line 125
    const v0, 0x7fffffff

    goto :goto_c

    .line 126
    :cond_b
    nop

    .line 124
    :goto_c
    return v0

    .line 123
    :cond_d
    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 281
    return-void
.end method

.method public declared-synchronized whitelist test-api reset()V
    .registers 2

    monitor-enter p0

    .line 179
    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Ljava/io/ByteArrayOutputStream;->count:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 180
    monitor-exit p0

    return-void

    .line 178
    .end local p0    # "this":Ljava/io/ByteArrayOutputStream;
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized whitelist test-api size()I
    .registers 2

    monitor-enter p0

    .line 202
    :try_start_1
    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 202
    .end local p0    # "this":Ljava/io/ByteArrayOutputStream;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized whitelist test-api toByteArray()[B
    .registers 3

    monitor-enter p0

    .line 191
    :try_start_1
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    .line 191
    .end local p0    # "this":Ljava/io/ByteArrayOutputStream;
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized whitelist test-api toString()Ljava/lang/String;
    .registers 5

    monitor-enter p0

    .line 221
    :try_start_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    const/4 v2, 0x0

    iget v3, p0, Ljava/io/ByteArrayOutputStream;->count:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-object v0

    .line 221
    .end local p0    # "this":Ljava/io/ByteArrayOutputStream;
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized whitelist test-api toString(I)Ljava/lang/String;
    .registers 6
    .param p1, "hibyte"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 272
    :try_start_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    const/4 v2, 0x0

    iget v3, p0, Ljava/io/ByteArrayOutputStream;->count:I

    invoke-direct {v0, v1, p1, v2, v3}, Ljava/lang/String;-><init>([BIII)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-object v0

    .line 272
    .end local p0    # "this":Ljava/io/ByteArrayOutputStream;
    .end local p1    # "hibyte":I
    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist test-api toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    monitor-enter p0

    .line 245
    :try_start_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    const/4 v2, 0x0

    iget v3, p0, Ljava/io/ByteArrayOutputStream;->count:I

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-object v0

    .line 245
    .end local p0    # "this":Ljava/io/ByteArrayOutputStream;
    .end local p1    # "charsetName":Ljava/lang/String;
    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist test-api write(I)V
    .registers 5
    .param p1, "b"    # I

    monitor-enter p0

    .line 135
    :try_start_1
    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Ljava/io/ByteArrayOutputStream;->ensureCapacity(I)V

    .line 136
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 137
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/io/ByteArrayOutputStream;->count:I
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 138
    monitor-exit p0

    return-void

    .line 134
    .end local p0    # "this":Ljava/io/ByteArrayOutputStream;
    .end local p1    # "b":I
    :catchall_15
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist test-api write([BII)V
    .registers 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    monitor-enter p0

    .line 149
    if-ltz p2, :cond_22

    :try_start_3
    array-length v0, p1

    if-gt p2, v0, :cond_22

    if-ltz p3, :cond_22

    add-int v0, p2, p3

    array-length v1, p1

    sub-int/2addr v0, v1

    if-gtz v0, :cond_22

    .line 153
    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    add-int/2addr v0, p3

    invoke-direct {p0, v0}, Ljava/io/ByteArrayOutputStream;->ensureCapacity(I)V

    .line 154
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/io/ByteArrayOutputStream;->count:I
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_28

    .line 156
    monitor-exit p0

    return-void

    .line 151
    .end local p0    # "this":Ljava/io/ByteArrayOutputStream;
    :cond_22
    :try_start_22
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_28

    .line 148
    .end local p1    # "b":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    :catchall_28
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist test-api writeTo(Ljava/io/OutputStream;)V
    .registers 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 167
    :try_start_1
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    const/4 v1, 0x0

    iget v2, p0, Ljava/io/ByteArrayOutputStream;->count:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 168
    monitor-exit p0

    return-void

    .line 166
    .end local p0    # "this":Ljava/io/ByteArrayOutputStream;
    .end local p1    # "out":Ljava/io/OutputStream;
    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method