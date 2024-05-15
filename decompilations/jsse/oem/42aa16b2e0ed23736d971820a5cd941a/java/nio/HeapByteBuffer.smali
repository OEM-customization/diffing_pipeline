.class final Ljava/nio/HeapByteBuffer;
.super Ljava/nio/ByteBuffer;
.source "HeapByteBuffer.java"


# direct methods
.method constructor blacklist <init>(II)V
    .registers 4
    .param p1, "cap"    # I
    .param p2, "lim"    # I

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/nio/HeapByteBuffer;-><init>(IIZ)V

    .line 50
    return-void
.end method

.method private constructor blacklist <init>(IIZ)V
    .registers 11
    .param p1, "cap"    # I
    .param p2, "lim"    # I
    .param p3, "isReadOnly"    # Z

    .line 54
    new-array v5, p1, [B

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v3, p2

    move v4, p1

    invoke-direct/range {v0 .. v6}, Ljava/nio/ByteBuffer;-><init>(IIII[BI)V

    .line 55
    iput-boolean p3, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    .line 56
    return-void
.end method

.method constructor blacklist <init>([BII)V
    .registers 5
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/nio/HeapByteBuffer;-><init>([BIIZ)V

    .line 60
    return-void
.end method

.method private constructor blacklist <init>([BIIIIIZ)V
    .registers 15
    .param p1, "buf"    # [B
    .param p2, "mark"    # I
    .param p3, "pos"    # I
    .param p4, "lim"    # I
    .param p5, "cap"    # I
    .param p6, "off"    # I
    .param p7, "isReadOnly"    # Z

    .line 69
    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p1

    move v6, p6

    invoke-direct/range {v0 .. v6}, Ljava/nio/ByteBuffer;-><init>(IIII[BI)V

    .line 70
    iput-boolean p7, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    .line 71
    return-void
.end method

.method private constructor blacklist <init>([BIIZ)V
    .registers 12
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "isReadOnly"    # Z

    .line 63
    add-int v3, p2, p3

    array-length v4, p1

    const/4 v1, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v2, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Ljava/nio/ByteBuffer;-><init>(IIII[BI)V

    .line 64
    iput-boolean p4, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    .line 65
    return-void
.end method


# virtual methods
.method blacklist _get(I)B
    .registers 3
    .param p1, "i"    # I

    .line 184
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method blacklist _put(IB)V
    .registers 4
    .param p1, "i"    # I
    .param p2, "b"    # B

    .line 189
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-nez v0, :cond_9

    .line 192
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    aput-byte p2, v0, p1

    .line 193
    return-void

    .line 190
    :cond_9
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api asCharBuffer()Ljava/nio/CharBuffer;
    .registers 12

    .line 245
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->remaining()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    .line 246
    .local v0, "size":I
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v9

    .line 247
    .local v9, "off":I
    new-instance v10, Ljava/nio/ByteBufferAsCharBuffer;

    .line 253
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v8

    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object v1, v10

    move-object v2, p0

    move v5, v0

    move v6, v0

    move v7, v9

    invoke-direct/range {v1 .. v8}, Ljava/nio/ByteBufferAsCharBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    .line 247
    return-object v10
.end method

.method public whitelist core-platform-api test-api asDoubleBuffer()Ljava/nio/DoubleBuffer;
    .registers 12

    .line 551
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->remaining()I

    move-result v0

    shr-int/lit8 v0, v0, 0x3

    .line 552
    .local v0, "size":I
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v9

    .line 553
    .local v9, "off":I
    new-instance v10, Ljava/nio/ByteBufferAsDoubleBuffer;

    .line 559
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v8

    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object v1, v10

    move-object v2, p0

    move v5, v0

    move v6, v0

    move v7, v9

    invoke-direct/range {v1 .. v8}, Ljava/nio/ByteBufferAsDoubleBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    .line 553
    return-object v10
.end method

.method public whitelist core-platform-api test-api asFloatBuffer()Ljava/nio/FloatBuffer;
    .registers 12

    .line 490
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->remaining()I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    .line 491
    .local v0, "size":I
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v9

    .line 492
    .local v9, "off":I
    new-instance v10, Ljava/nio/ByteBufferAsFloatBuffer;

    .line 498
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v8

    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object v1, v10

    move-object v2, p0

    move v5, v0

    move v6, v0

    move v7, v9

    invoke-direct/range {v1 .. v8}, Ljava/nio/ByteBufferAsFloatBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    .line 492
    return-object v10
.end method

.method public whitelist core-platform-api test-api asIntBuffer()Ljava/nio/IntBuffer;
    .registers 12

    .line 367
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->remaining()I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    .line 368
    .local v0, "size":I
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v9

    .line 370
    .local v9, "off":I
    new-instance v10, Ljava/nio/ByteBufferAsIntBuffer;

    .line 376
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v8

    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object v1, v10

    move-object v2, p0

    move v5, v0

    move v6, v0

    move v7, v9

    invoke-direct/range {v1 .. v8}, Ljava/nio/ByteBufferAsIntBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    .line 370
    return-object v10
.end method

.method public whitelist core-platform-api test-api asLongBuffer()Ljava/nio/LongBuffer;
    .registers 12

    .line 429
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->remaining()I

    move-result v0

    shr-int/lit8 v0, v0, 0x3

    .line 430
    .local v0, "size":I
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v9

    .line 431
    .local v9, "off":I
    new-instance v10, Ljava/nio/ByteBufferAsLongBuffer;

    .line 437
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v8

    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object v1, v10

    move-object v2, p0

    move v5, v0

    move v6, v0

    move v7, v9

    invoke-direct/range {v1 .. v8}, Ljava/nio/ByteBufferAsLongBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    .line 431
    return-object v10
.end method

.method public whitelist core-platform-api test-api asReadOnlyBuffer()Ljava/nio/ByteBuffer;
    .registers 10

    .line 97
    new-instance v8, Ljava/nio/HeapByteBuffer;

    iget-object v1, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    .line 98
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->markValue()I

    move-result v2

    .line 99
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v3

    .line 100
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->limit()I

    move-result v4

    .line 101
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->capacity()I

    move-result v5

    iget v6, p0, Ljava/nio/HeapByteBuffer;->offset:I

    const/4 v7, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapByteBuffer;-><init>([BIIIIIZ)V

    .line 97
    return-object v8
.end method

.method public whitelist core-platform-api test-api asShortBuffer()Ljava/nio/ShortBuffer;
    .registers 12

    .line 306
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->remaining()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    .line 307
    .local v0, "size":I
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v9

    .line 308
    .local v9, "off":I
    new-instance v10, Ljava/nio/ByteBufferAsShortBuffer;

    .line 314
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v8

    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object v1, v10

    move-object v2, p0

    move v5, v0

    move v6, v0

    move v7, v9

    invoke-direct/range {v1 .. v8}, Ljava/nio/ByteBufferAsShortBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    .line 308
    return-object v10
.end method

.method public whitelist core-platform-api test-api compact()Ljava/nio/ByteBuffer;
    .registers 6

    .line 172
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-nez v0, :cond_2e

    .line 175
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v1

    iget-object v2, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v3

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->remaining()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 177
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 178
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->discardMark()V

    .line 179
    return-object p0

    .line 173
    :cond_2e
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api duplicate()Ljava/nio/ByteBuffer;
    .registers 10

    .line 86
    new-instance v8, Ljava/nio/HeapByteBuffer;

    iget-object v1, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    .line 87
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->markValue()I

    move-result v2

    .line 88
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v3

    .line 89
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->limit()I

    move-result v4

    .line 90
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->capacity()I

    move-result v5

    iget v6, p0, Ljava/nio/HeapByteBuffer;->offset:I

    iget-boolean v7, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapByteBuffer;-><init>([BIIIIIZ)V

    .line 86
    return-object v8
.end method

.method public whitelist core-platform-api test-api get()B
    .registers 3

    .line 111
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->nextGetIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v1

    aget-byte v0, v0, v1

    return v0
.end method

.method public whitelist core-platform-api test-api get(I)B
    .registers 4
    .param p1, "i"    # I

    .line 116
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->checkIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v1

    aget-byte v0, v0, v1

    return v0
.end method

.method public whitelist core-platform-api test-api get([BII)Ljava/nio/ByteBuffer;
    .registers 6
    .param p1, "dst"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 121
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/HeapByteBuffer;->checkBounds(III)V

    .line 122
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->remaining()I

    move-result v0

    if-gt p3, v0, :cond_20

    .line 124
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v1

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 126
    return-object p0

    .line 123
    :cond_20
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api getChar()C
    .registers 3

    .line 197
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->nextGetIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getChar(Ljava/nio/ByteBuffer;IZ)C

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api getChar(I)C
    .registers 4
    .param p1, "i"    # I

    .line 202
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getChar(Ljava/nio/ByteBuffer;IZ)C

    move-result v0

    return v0
.end method

.method blacklist getCharUnchecked(I)C
    .registers 4
    .param p1, "i"    # I

    .line 207
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getChar(Ljava/nio/ByteBuffer;IZ)C

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api getDouble()D
    .registers 3

    .line 503
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->nextGetIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getDouble(Ljava/nio/ByteBuffer;IZ)D

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist core-platform-api test-api getDouble(I)D
    .registers 4
    .param p1, "i"    # I

    .line 508
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getDouble(Ljava/nio/ByteBuffer;IZ)D

    move-result-wide v0

    return-wide v0
.end method

.method blacklist getDoubleUnchecked(I)D
    .registers 4
    .param p1, "i"    # I

    .line 513
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getDouble(Ljava/nio/ByteBuffer;IZ)D

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist core-platform-api test-api getFloat()F
    .registers 3

    .line 442
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->nextGetIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getFloat(Ljava/nio/ByteBuffer;IZ)F

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api getFloat(I)F
    .registers 4
    .param p1, "i"    # I

    .line 447
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getFloat(Ljava/nio/ByteBuffer;IZ)F

    move-result v0

    return v0
.end method

.method blacklist getFloatUnchecked(I)F
    .registers 4
    .param p1, "i"    # I

    .line 452
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getFloat(Ljava/nio/ByteBuffer;IZ)F

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api getInt()I
    .registers 3

    .line 319
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->nextGetIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getInt(Ljava/nio/ByteBuffer;IZ)I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api getInt(I)I
    .registers 4
    .param p1, "i"    # I

    .line 324
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getInt(Ljava/nio/ByteBuffer;IZ)I

    move-result v0

    return v0
.end method

.method blacklist getIntUnchecked(I)I
    .registers 4
    .param p1, "i"    # I

    .line 329
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getInt(Ljava/nio/ByteBuffer;IZ)I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api getLong()J
    .registers 3

    .line 381
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->nextGetIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getLong(Ljava/nio/ByteBuffer;IZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist core-platform-api test-api getLong(I)J
    .registers 4
    .param p1, "i"    # I

    .line 386
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getLong(Ljava/nio/ByteBuffer;IZ)J

    move-result-wide v0

    return-wide v0
.end method

.method blacklist getLongUnchecked(I)J
    .registers 4
    .param p1, "i"    # I

    .line 391
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getLong(Ljava/nio/ByteBuffer;IZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist core-platform-api test-api getShort()S
    .registers 3

    .line 258
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->nextGetIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getShort(Ljava/nio/ByteBuffer;IZ)S

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api getShort(I)S
    .registers 4
    .param p1, "i"    # I

    .line 263
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getShort(Ljava/nio/ByteBuffer;IZ)S

    move-result v0

    return v0
.end method

.method blacklist getShortUnchecked(I)S
    .registers 4
    .param p1, "i"    # I

    .line 268
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getShort(Ljava/nio/ByteBuffer;IZ)S

    move-result v0

    return v0
.end method

.method blacklist getUnchecked(I[CII)V
    .registers 12
    .param p1, "pos"    # I
    .param p2, "dst"    # [C
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    .line 212
    mul-int/lit8 v2, p4, 0x2

    iget-object v3, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v4

    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v6, v0, 0x1

    const/4 v5, 0x2

    move-object v0, p2

    move v1, p3

    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkGet(Ljava/lang/Object;II[BIIZ)V

    .line 213
    return-void
.end method

.method blacklist getUnchecked(I[DII)V
    .registers 12
    .param p1, "pos"    # I
    .param p2, "dst"    # [D
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    .line 518
    mul-int/lit8 v2, p4, 0x8

    iget-object v3, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v4

    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v6, v0, 0x1

    const/16 v5, 0x8

    move-object v0, p2

    move v1, p3

    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkGet(Ljava/lang/Object;II[BIIZ)V

    .line 519
    return-void
.end method

.method blacklist getUnchecked(I[FII)V
    .registers 12
    .param p1, "pos"    # I
    .param p2, "dst"    # [F
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    .line 457
    mul-int/lit8 v2, p4, 0x4

    iget-object v3, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v4

    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v6, v0, 0x1

    const/4 v5, 0x4

    move-object v0, p2

    move v1, p3

    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkGet(Ljava/lang/Object;II[BIIZ)V

    .line 458
    return-void
.end method

.method blacklist getUnchecked(I[III)V
    .registers 12
    .param p1, "pos"    # I
    .param p2, "dst"    # [I
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    .line 334
    mul-int/lit8 v2, p4, 0x4

    iget-object v3, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v4

    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v6, v0, 0x1

    const/4 v5, 0x4

    move-object v0, p2

    move v1, p3

    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkGet(Ljava/lang/Object;II[BIIZ)V

    .line 335
    return-void
.end method

.method blacklist getUnchecked(I[JII)V
    .registers 12
    .param p1, "pos"    # I
    .param p2, "dst"    # [J
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    .line 396
    mul-int/lit8 v2, p4, 0x8

    iget-object v3, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v4

    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v6, v0, 0x1

    const/16 v5, 0x8

    move-object v0, p2

    move v1, p3

    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkGet(Ljava/lang/Object;II[BIIZ)V

    .line 397
    return-void
.end method

.method blacklist getUnchecked(I[SII)V
    .registers 12
    .param p1, "pos"    # I
    .param p2, "dst"    # [S
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    .line 273
    mul-int/lit8 v2, p4, 0x2

    iget-object v3, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v4

    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v6, v0, 0x1

    const/4 v5, 0x2

    move-object v0, p2

    move v1, p3

    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkGet(Ljava/lang/Object;II[BIIZ)V

    .line 274
    return-void
.end method

.method public whitelist core-platform-api test-api isDirect()Z
    .registers 2

    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist core-platform-api test-api isReadOnly()Z
    .registers 2

    .line 136
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    return v0
.end method

.method protected blacklist ix(I)I
    .registers 3
    .param p1, "i"    # I

    .line 106
    iget v0, p0, Ljava/nio/HeapByteBuffer;->offset:I

    add-int/2addr v0, p1

    return v0
.end method

.method public whitelist core-platform-api test-api put(B)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "x"    # B

    .line 141
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-nez v0, :cond_11

    .line 144
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->nextPutIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v1

    aput-byte p1, v0, v1

    .line 145
    return-object p0

    .line 142
    :cond_11
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api put(IB)Ljava/nio/ByteBuffer;
    .registers 5
    .param p1, "i"    # I
    .param p2, "x"    # B

    .line 150
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-nez v0, :cond_11

    .line 153
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->checkIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v1

    aput-byte p2, v0, v1

    .line 154
    return-object p0

    .line 151
    :cond_11
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api put([BII)Ljava/nio/ByteBuffer;
    .registers 6
    .param p1, "src"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 159
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-nez v0, :cond_2a

    .line 162
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/HeapByteBuffer;->checkBounds(III)V

    .line 163
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->remaining()I

    move-result v0

    if-gt p3, v0, :cond_24

    .line 165
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v1

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 167
    return-object p0

    .line 164
    :cond_24
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 160
    :cond_2a
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api putChar(C)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "x"    # C

    .line 217
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-nez v0, :cond_13

    .line 220
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p1, v1}, Ljava/nio/Bits;->putChar(Ljava/nio/ByteBuffer;ICZ)V

    .line 221
    return-object p0

    .line 218
    :cond_13
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api putChar(IC)Ljava/nio/ByteBuffer;
    .registers 5
    .param p1, "i"    # I
    .param p2, "x"    # C

    .line 226
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-nez v0, :cond_13

    .line 229
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p2, v1}, Ljava/nio/Bits;->putChar(Ljava/nio/ByteBuffer;ICZ)V

    .line 230
    return-object p0

    .line 227
    :cond_13
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method blacklist putCharUnchecked(IC)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "x"    # C

    .line 235
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p2, v1}, Ljava/nio/Bits;->putChar(Ljava/nio/ByteBuffer;ICZ)V

    .line 236
    return-void
.end method

.method public whitelist core-platform-api test-api putDouble(D)Ljava/nio/ByteBuffer;
    .registers 5
    .param p1, "x"    # D

    .line 523
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-nez v0, :cond_14

    .line 526
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p1, p2, v1}, Ljava/nio/Bits;->putDouble(Ljava/nio/ByteBuffer;IDZ)V

    .line 527
    return-object p0

    .line 524
    :cond_14
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api putDouble(ID)Ljava/nio/ByteBuffer;
    .registers 6
    .param p1, "i"    # I
    .param p2, "x"    # D

    .line 532
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-nez v0, :cond_14

    .line 535
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p2, p3, v1}, Ljava/nio/Bits;->putDouble(Ljava/nio/ByteBuffer;IDZ)V

    .line 536
    return-object p0

    .line 533
    :cond_14
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method blacklist putDoubleUnchecked(ID)V
    .registers 6
    .param p1, "i"    # I
    .param p2, "x"    # D

    .line 541
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p2, p3, v1}, Ljava/nio/Bits;->putDouble(Ljava/nio/ByteBuffer;IDZ)V

    .line 542
    return-void
.end method

.method public whitelist core-platform-api test-api putFloat(F)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "x"    # F

    .line 462
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-nez v0, :cond_13

    .line 465
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p1, v1}, Ljava/nio/Bits;->putFloat(Ljava/nio/ByteBuffer;IFZ)V

    .line 466
    return-object p0

    .line 463
    :cond_13
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api putFloat(IF)Ljava/nio/ByteBuffer;
    .registers 5
    .param p1, "i"    # I
    .param p2, "x"    # F

    .line 471
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-nez v0, :cond_13

    .line 474
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p2, v1}, Ljava/nio/Bits;->putFloat(Ljava/nio/ByteBuffer;IFZ)V

    .line 475
    return-object p0

    .line 472
    :cond_13
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method blacklist putFloatUnchecked(IF)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "x"    # F

    .line 480
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p2, v1}, Ljava/nio/Bits;->putFloat(Ljava/nio/ByteBuffer;IFZ)V

    .line 481
    return-void
.end method

.method public whitelist core-platform-api test-api putInt(I)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "x"    # I

    .line 339
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-nez v0, :cond_13

    .line 342
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p1, v1}, Ljava/nio/Bits;->putInt(Ljava/nio/ByteBuffer;IIZ)V

    .line 343
    return-object p0

    .line 340
    :cond_13
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api putInt(II)Ljava/nio/ByteBuffer;
    .registers 5
    .param p1, "i"    # I
    .param p2, "x"    # I

    .line 348
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-nez v0, :cond_13

    .line 351
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p2, v1}, Ljava/nio/Bits;->putInt(Ljava/nio/ByteBuffer;IIZ)V

    .line 352
    return-object p0

    .line 349
    :cond_13
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method blacklist putIntUnchecked(II)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "x"    # I

    .line 357
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p2, v1}, Ljava/nio/Bits;->putInt(Ljava/nio/ByteBuffer;IIZ)V

    .line 358
    return-void
.end method

.method public whitelist core-platform-api test-api putLong(IJ)Ljava/nio/ByteBuffer;
    .registers 6
    .param p1, "i"    # I
    .param p2, "x"    # J

    .line 410
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-nez v0, :cond_14

    .line 413
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p2, p3, v1}, Ljava/nio/Bits;->putLong(Ljava/nio/ByteBuffer;IJZ)V

    .line 414
    return-object p0

    .line 411
    :cond_14
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api putLong(J)Ljava/nio/ByteBuffer;
    .registers 5
    .param p1, "x"    # J

    .line 401
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-nez v0, :cond_14

    .line 404
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p1, p2, v1}, Ljava/nio/Bits;->putLong(Ljava/nio/ByteBuffer;IJZ)V

    .line 405
    return-object p0

    .line 402
    :cond_14
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method blacklist putLongUnchecked(IJ)V
    .registers 6
    .param p1, "i"    # I
    .param p2, "x"    # J

    .line 419
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p2, p3, v1}, Ljava/nio/Bits;->putLong(Ljava/nio/ByteBuffer;IJZ)V

    .line 420
    return-void
.end method

.method public whitelist core-platform-api test-api putShort(IS)Ljava/nio/ByteBuffer;
    .registers 5
    .param p1, "i"    # I
    .param p2, "x"    # S

    .line 287
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-nez v0, :cond_13

    .line 290
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p2, v1}, Ljava/nio/Bits;->putShort(Ljava/nio/ByteBuffer;ISZ)V

    .line 291
    return-object p0

    .line 288
    :cond_13
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api putShort(S)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "x"    # S

    .line 278
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-nez v0, :cond_13

    .line 281
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p1, v1}, Ljava/nio/Bits;->putShort(Ljava/nio/ByteBuffer;ISZ)V

    .line 282
    return-object p0

    .line 279
    :cond_13
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method blacklist putShortUnchecked(IS)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "x"    # S

    .line 296
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p2, v1}, Ljava/nio/Bits;->putShort(Ljava/nio/ByteBuffer;ISZ)V

    .line 297
    return-void
.end method

.method blacklist putUnchecked(I[CII)V
    .registers 12
    .param p1, "pos"    # I
    .param p2, "src"    # [C
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    .line 240
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v1

    mul-int/lit8 v2, p4, 0x2

    iget-boolean v3, p0, Ljava/nio/HeapByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v6, v3, 0x1

    const/4 v5, 0x2

    move-object v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkPut([BIILjava/lang/Object;IIZ)V

    .line 241
    return-void
.end method

.method blacklist putUnchecked(I[DII)V
    .registers 12
    .param p1, "pos"    # I
    .param p2, "src"    # [D
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    .line 546
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v1

    mul-int/lit8 v2, p4, 0x8

    iget-boolean v3, p0, Ljava/nio/HeapByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v6, v3, 0x1

    const/16 v5, 0x8

    move-object v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkPut([BIILjava/lang/Object;IIZ)V

    .line 547
    return-void
.end method

.method blacklist putUnchecked(I[FII)V
    .registers 12
    .param p1, "pos"    # I
    .param p2, "src"    # [F
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    .line 485
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v1

    mul-int/lit8 v2, p4, 0x4

    iget-boolean v3, p0, Ljava/nio/HeapByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v6, v3, 0x1

    const/4 v5, 0x4

    move-object v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkPut([BIILjava/lang/Object;IIZ)V

    .line 486
    return-void
.end method

.method blacklist putUnchecked(I[III)V
    .registers 12
    .param p1, "pos"    # I
    .param p2, "src"    # [I
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    .line 362
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v1

    mul-int/lit8 v2, p4, 0x4

    iget-boolean v3, p0, Ljava/nio/HeapByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v6, v3, 0x1

    const/4 v5, 0x4

    move-object v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkPut([BIILjava/lang/Object;IIZ)V

    .line 363
    return-void
.end method

.method blacklist putUnchecked(I[JII)V
    .registers 12
    .param p1, "pos"    # I
    .param p2, "src"    # [J
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    .line 424
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v1

    mul-int/lit8 v2, p4, 0x8

    iget-boolean v3, p0, Ljava/nio/HeapByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v6, v3, 0x1

    const/16 v5, 0x8

    move-object v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkPut([BIILjava/lang/Object;IIZ)V

    .line 425
    return-void
.end method

.method blacklist putUnchecked(I[SII)V
    .registers 12
    .param p1, "pos"    # I
    .param p2, "src"    # [S
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    .line 301
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v1

    mul-int/lit8 v2, p4, 0x2

    iget-boolean v3, p0, Ljava/nio/HeapByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v6, v3, 0x1

    const/4 v5, 0x2

    move-object v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkPut([BIILjava/lang/Object;IIZ)V

    .line 302
    return-void
.end method

.method public whitelist core-platform-api test-api slice()Ljava/nio/ByteBuffer;
    .registers 10

    .line 75
    new-instance v8, Ljava/nio/HeapByteBuffer;

    iget-object v1, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    .line 78
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->remaining()I

    move-result v4

    .line 79
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->remaining()I

    move-result v5

    .line 80
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v0

    iget v2, p0, Ljava/nio/HeapByteBuffer;->offset:I

    add-int v6, v0, v2

    iget-boolean v7, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    const/4 v2, -0x1

    const/4 v3, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapByteBuffer;-><init>([BIIIIIZ)V

    .line 75
    return-object v8
.end method
