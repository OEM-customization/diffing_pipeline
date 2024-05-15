.class final Ljava/nio/HeapByteBuffer;
.super Ljava/nio/ByteBuffer;
.source "HeapByteBuffer.java"


# direct methods
.method constructor <init>(II)V
    .registers 4
    .param p1, "cap"    # I
    .param p2, "lim"    # I

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/nio/HeapByteBuffer;-><init>(IIZ)V

    .line 50
    return-void
.end method

.method private constructor <init>(IIZ)V
    .registers 11
    .param p1, "cap"    # I
    .param p2, "lim"    # I
    .param p3, "isReadOnly"    # Z

    .prologue
    const/4 v2, 0x0

    .line 54
    new-array v5, p1, [B

    const/4 v1, -0x1

    move-object v0, p0

    move v3, p2

    move v4, p1

    move v6, v2

    invoke-direct/range {v0 .. v6}, Ljava/nio/ByteBuffer;-><init>(IIII[BI)V

    .line 55
    iput-boolean p3, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    .line 56
    return-void
.end method

.method constructor <init>([BII)V
    .registers 5
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/nio/HeapByteBuffer;-><init>([BIIZ)V

    .line 60
    return-void
.end method

.method private constructor <init>([BIIIIIZ)V
    .registers 15
    .param p1, "buf"    # [B
    .param p2, "mark"    # I
    .param p3, "pos"    # I
    .param p4, "lim"    # I
    .param p5, "cap"    # I
    .param p6, "off"    # I
    .param p7, "isReadOnly"    # Z

    .prologue
    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p1

    move v6, p6

    .line 69
    invoke-direct/range {v0 .. v6}, Ljava/nio/ByteBuffer;-><init>(IIII[BI)V

    .line 70
    iput-boolean p7, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    .line 71
    return-void
.end method

.method private constructor <init>([BIIZ)V
    .registers 12
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "isReadOnly"    # Z

    .prologue
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
.method _get(I)B
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 184
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method _put(IB)V
    .registers 4
    .param p1, "i"    # I
    .param p2, "b"    # B

    .prologue
    .line 189
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_a

    .line 190
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 192
    :cond_a
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    aput-byte p2, v0, p1

    .line 193
    return-void
.end method

.method public asCharBuffer()Ljava/nio/CharBuffer;
    .registers 9

    .prologue
    .line 245
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->remaining()I

    move-result v0

    shr-int/lit8 v4, v0, 0x1

    .line 246
    .local v4, "size":I
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v6

    .line 247
    .local v6, "off":I
    new-instance v0, Ljava/nio/ByteBufferAsCharBuffer;

    .line 253
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    .line 248
    const/4 v2, -0x1

    .line 249
    const/4 v3, 0x0

    move-object v1, p0

    move v5, v4

    .line 247
    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsCharBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0
.end method

.method public asDoubleBuffer()Ljava/nio/DoubleBuffer;
    .registers 9

    .prologue
    .line 551
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->remaining()I

    move-result v0

    shr-int/lit8 v4, v0, 0x3

    .line 552
    .local v4, "size":I
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v6

    .line 553
    .local v6, "off":I
    new-instance v0, Ljava/nio/ByteBufferAsDoubleBuffer;

    .line 559
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    .line 554
    const/4 v2, -0x1

    .line 555
    const/4 v3, 0x0

    move-object v1, p0

    move v5, v4

    .line 553
    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsDoubleBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0
.end method

.method public asFloatBuffer()Ljava/nio/FloatBuffer;
    .registers 9

    .prologue
    .line 490
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->remaining()I

    move-result v0

    shr-int/lit8 v4, v0, 0x2

    .line 491
    .local v4, "size":I
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v6

    .line 492
    .local v6, "off":I
    new-instance v0, Ljava/nio/ByteBufferAsFloatBuffer;

    .line 498
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    .line 493
    const/4 v2, -0x1

    .line 494
    const/4 v3, 0x0

    move-object v1, p0

    move v5, v4

    .line 492
    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsFloatBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0
.end method

.method public asIntBuffer()Ljava/nio/IntBuffer;
    .registers 9

    .prologue
    .line 367
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->remaining()I

    move-result v0

    shr-int/lit8 v4, v0, 0x2

    .line 368
    .local v4, "size":I
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v6

    .line 370
    .local v6, "off":I
    new-instance v0, Ljava/nio/ByteBufferAsIntBuffer;

    .line 376
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    .line 371
    const/4 v2, -0x1

    .line 372
    const/4 v3, 0x0

    move-object v1, p0

    move v5, v4

    .line 370
    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsIntBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0
.end method

.method public asLongBuffer()Ljava/nio/LongBuffer;
    .registers 9

    .prologue
    .line 429
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->remaining()I

    move-result v0

    shr-int/lit8 v4, v0, 0x3

    .line 430
    .local v4, "size":I
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v6

    .line 431
    .local v6, "off":I
    new-instance v0, Ljava/nio/ByteBufferAsLongBuffer;

    .line 437
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    .line 432
    const/4 v2, -0x1

    .line 433
    const/4 v3, 0x0

    move-object v1, p0

    move v5, v4

    .line 431
    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsLongBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0
.end method

.method public asReadOnlyBuffer()Ljava/nio/ByteBuffer;
    .registers 9

    .prologue
    .line 97
    new-instance v0, Ljava/nio/HeapByteBuffer;

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

    .line 102
    iget v6, p0, Ljava/nio/HeapByteBuffer;->offset:I

    const/4 v7, 0x1

    .line 97
    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapByteBuffer;-><init>([BIIIIIZ)V

    return-object v0
.end method

.method public asShortBuffer()Ljava/nio/ShortBuffer;
    .registers 9

    .prologue
    .line 306
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->remaining()I

    move-result v0

    shr-int/lit8 v4, v0, 0x1

    .line 307
    .local v4, "size":I
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v6

    .line 308
    .local v6, "off":I
    new-instance v0, Ljava/nio/ByteBufferAsShortBuffer;

    .line 314
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    .line 309
    const/4 v2, -0x1

    .line 310
    const/4 v3, 0x0

    move-object v1, p0

    move v5, v4

    .line 308
    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsShortBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0
.end method

.method public compact()Ljava/nio/ByteBuffer;
    .registers 6

    .prologue
    .line 172
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_a

    .line 173
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 175
    :cond_a
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

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

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
.end method

.method public duplicate()Ljava/nio/ByteBuffer;
    .registers 9

    .prologue
    .line 86
    new-instance v0, Ljava/nio/HeapByteBuffer;

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

    .line 91
    iget v6, p0, Ljava/nio/HeapByteBuffer;->offset:I

    .line 92
    iget-boolean v7, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    .line 86
    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapByteBuffer;-><init>([BIIIIIZ)V

    return-object v0
.end method

.method public get()B
    .registers 3

    .prologue
    .line 111
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->nextGetIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v1

    aget-byte v0, v0, v1

    return v0
.end method

.method public get(I)B
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 116
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->checkIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v1

    aget-byte v0, v0, v1

    return v0
.end method

.method public get([BII)Ljava/nio/ByteBuffer;
    .registers 6
    .param p1, "dst"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 121
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/HeapByteBuffer;->checkBounds(III)V

    .line 122
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_10

    .line 123
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    .line 124
    :cond_10
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v1

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 125
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 126
    return-object p0
.end method

.method public getChar()C
    .registers 3

    .prologue
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

.method public getChar(I)C
    .registers 4
    .param p1, "i"    # I

    .prologue
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

.method getCharUnchecked(I)C
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 207
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getChar(Ljava/nio/ByteBuffer;IZ)C

    move-result v0

    return v0
.end method

.method public getDouble()D
    .registers 3

    .prologue
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

.method public getDouble(I)D
    .registers 4
    .param p1, "i"    # I

    .prologue
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

.method getDoubleUnchecked(I)D
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 513
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getDouble(Ljava/nio/ByteBuffer;IZ)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat()F
    .registers 3

    .prologue
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

.method public getFloat(I)F
    .registers 4
    .param p1, "i"    # I

    .prologue
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

.method getFloatUnchecked(I)F
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 452
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getFloat(Ljava/nio/ByteBuffer;IZ)F

    move-result v0

    return v0
.end method

.method public getInt()I
    .registers 3

    .prologue
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

.method public getInt(I)I
    .registers 4
    .param p1, "i"    # I

    .prologue
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

.method getIntUnchecked(I)I
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 329
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getInt(Ljava/nio/ByteBuffer;IZ)I

    move-result v0

    return v0
.end method

.method public getLong()J
    .registers 3

    .prologue
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

.method public getLong(I)J
    .registers 4
    .param p1, "i"    # I

    .prologue
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

.method getLongUnchecked(I)J
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 391
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getLong(Ljava/nio/ByteBuffer;IZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort()S
    .registers 3

    .prologue
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

.method public getShort(I)S
    .registers 4
    .param p1, "i"    # I

    .prologue
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

.method getShortUnchecked(I)S
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 268
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getShort(Ljava/nio/ByteBuffer;IZ)S

    move-result v0

    return v0
.end method

.method getUnchecked(I[CII)V
    .registers 12
    .param p1, "pos"    # I
    .param p2, "dst"    # [C
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    .prologue
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

.method getUnchecked(I[DII)V
    .registers 12
    .param p1, "pos"    # I
    .param p2, "dst"    # [D
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    .prologue
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

.method getUnchecked(I[FII)V
    .registers 12
    .param p1, "pos"    # I
    .param p2, "dst"    # [F
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    .prologue
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

.method getUnchecked(I[III)V
    .registers 12
    .param p1, "pos"    # I
    .param p2, "dst"    # [I
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    .prologue
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

.method getUnchecked(I[JII)V
    .registers 12
    .param p1, "pos"    # I
    .param p2, "dst"    # [J
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    .prologue
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

.method getUnchecked(I[SII)V
    .registers 12
    .param p1, "pos"    # I
    .param p2, "dst"    # [S
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    .prologue
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

.method public isDirect()Z
    .registers 2

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public isReadOnly()Z
    .registers 2

    .prologue
    .line 136
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    return v0
.end method

.method protected ix(I)I
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 106
    iget v0, p0, Ljava/nio/HeapByteBuffer;->offset:I

    add-int/2addr v0, p1

    return v0
.end method

.method public put(B)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "x"    # B

    .prologue
    .line 141
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_a

    .line 142
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 144
    :cond_a
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->nextPutIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v1

    aput-byte p1, v0, v1

    .line 145
    return-object p0
.end method

.method public put(IB)Ljava/nio/ByteBuffer;
    .registers 5
    .param p1, "i"    # I
    .param p2, "x"    # B

    .prologue
    .line 150
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_a

    .line 151
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 153
    :cond_a
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->checkIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v1

    aput-byte p2, v0, v1

    .line 154
    return-object p0
.end method

.method public put([BII)Ljava/nio/ByteBuffer;
    .registers 6
    .param p1, "src"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 159
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_a

    .line 160
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 162
    :cond_a
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/HeapByteBuffer;->checkBounds(III)V

    .line 163
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_1a

    .line 164
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 165
    :cond_1a
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v1

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 166
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 167
    return-object p0
.end method

.method public putChar(C)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "x"    # C

    .prologue
    .line 217
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_a

    .line 218
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 220
    :cond_a
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p1, v1}, Ljava/nio/Bits;->putChar(Ljava/nio/ByteBuffer;ICZ)V

    .line 221
    return-object p0
.end method

.method public putChar(IC)Ljava/nio/ByteBuffer;
    .registers 5
    .param p1, "i"    # I
    .param p2, "x"    # C

    .prologue
    .line 226
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_a

    .line 227
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 229
    :cond_a
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p2, v1}, Ljava/nio/Bits;->putChar(Ljava/nio/ByteBuffer;ICZ)V

    .line 230
    return-object p0
.end method

.method putCharUnchecked(IC)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "x"    # C

    .prologue
    .line 235
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p2, v1}, Ljava/nio/Bits;->putChar(Ljava/nio/ByteBuffer;ICZ)V

    .line 236
    return-void
.end method

.method public putDouble(D)Ljava/nio/ByteBuffer;
    .registers 6
    .param p1, "x"    # D

    .prologue
    .line 523
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_a

    .line 524
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 526
    :cond_a
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p1, p2, v1}, Ljava/nio/Bits;->putDouble(Ljava/nio/ByteBuffer;IDZ)V

    .line 527
    return-object p0
.end method

.method public putDouble(ID)Ljava/nio/ByteBuffer;
    .registers 6
    .param p1, "i"    # I
    .param p2, "x"    # D

    .prologue
    .line 532
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_a

    .line 533
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 535
    :cond_a
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p2, p3, v1}, Ljava/nio/Bits;->putDouble(Ljava/nio/ByteBuffer;IDZ)V

    .line 536
    return-object p0
.end method

.method putDoubleUnchecked(ID)V
    .registers 6
    .param p1, "i"    # I
    .param p2, "x"    # D

    .prologue
    .line 541
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p2, p3, v1}, Ljava/nio/Bits;->putDouble(Ljava/nio/ByteBuffer;IDZ)V

    .line 542
    return-void
.end method

.method public putFloat(F)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "x"    # F

    .prologue
    .line 462
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_a

    .line 463
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 465
    :cond_a
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p1, v1}, Ljava/nio/Bits;->putFloat(Ljava/nio/ByteBuffer;IFZ)V

    .line 466
    return-object p0
.end method

.method public putFloat(IF)Ljava/nio/ByteBuffer;
    .registers 5
    .param p1, "i"    # I
    .param p2, "x"    # F

    .prologue
    .line 471
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_a

    .line 472
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 474
    :cond_a
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p2, v1}, Ljava/nio/Bits;->putFloat(Ljava/nio/ByteBuffer;IFZ)V

    .line 475
    return-object p0
.end method

.method putFloatUnchecked(IF)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "x"    # F

    .prologue
    .line 480
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p2, v1}, Ljava/nio/Bits;->putFloat(Ljava/nio/ByteBuffer;IFZ)V

    .line 481
    return-void
.end method

.method public putInt(I)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "x"    # I

    .prologue
    .line 339
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_a

    .line 340
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 342
    :cond_a
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p1, v1}, Ljava/nio/Bits;->putInt(Ljava/nio/ByteBuffer;IIZ)V

    .line 343
    return-object p0
.end method

.method public putInt(II)Ljava/nio/ByteBuffer;
    .registers 5
    .param p1, "i"    # I
    .param p2, "x"    # I

    .prologue
    .line 348
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_a

    .line 349
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 351
    :cond_a
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p2, v1}, Ljava/nio/Bits;->putInt(Ljava/nio/ByteBuffer;IIZ)V

    .line 352
    return-object p0
.end method

.method putIntUnchecked(II)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "x"    # I

    .prologue
    .line 357
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p2, v1}, Ljava/nio/Bits;->putInt(Ljava/nio/ByteBuffer;IIZ)V

    .line 358
    return-void
.end method

.method public putLong(IJ)Ljava/nio/ByteBuffer;
    .registers 6
    .param p1, "i"    # I
    .param p2, "x"    # J

    .prologue
    .line 410
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_a

    .line 411
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 413
    :cond_a
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p2, p3, v1}, Ljava/nio/Bits;->putLong(Ljava/nio/ByteBuffer;IJZ)V

    .line 414
    return-object p0
.end method

.method public putLong(J)Ljava/nio/ByteBuffer;
    .registers 6
    .param p1, "x"    # J

    .prologue
    .line 401
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_a

    .line 402
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 404
    :cond_a
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p1, p2, v1}, Ljava/nio/Bits;->putLong(Ljava/nio/ByteBuffer;IJZ)V

    .line 405
    return-object p0
.end method

.method putLongUnchecked(IJ)V
    .registers 6
    .param p1, "i"    # I
    .param p2, "x"    # J

    .prologue
    .line 419
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p2, p3, v1}, Ljava/nio/Bits;->putLong(Ljava/nio/ByteBuffer;IJZ)V

    .line 420
    return-void
.end method

.method public putShort(IS)Ljava/nio/ByteBuffer;
    .registers 5
    .param p1, "i"    # I
    .param p2, "x"    # S

    .prologue
    .line 287
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_a

    .line 288
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 290
    :cond_a
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p2, v1}, Ljava/nio/Bits;->putShort(Ljava/nio/ByteBuffer;ISZ)V

    .line 291
    return-object p0
.end method

.method public putShort(S)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "x"    # S

    .prologue
    .line 278
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_a

    .line 279
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 281
    :cond_a
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p1, v1}, Ljava/nio/Bits;->putShort(Ljava/nio/ByteBuffer;ISZ)V

    .line 282
    return-object p0
.end method

.method putShortUnchecked(IS)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "x"    # S

    .prologue
    .line 296
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p2, v1}, Ljava/nio/Bits;->putShort(Ljava/nio/ByteBuffer;ISZ)V

    .line 297
    return-void
.end method

.method putUnchecked(I[CII)V
    .registers 12
    .param p1, "pos"    # I
    .param p2, "src"    # [C
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    .prologue
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

.method putUnchecked(I[DII)V
    .registers 12
    .param p1, "pos"    # I
    .param p2, "src"    # [D
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    .prologue
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

.method putUnchecked(I[FII)V
    .registers 12
    .param p1, "pos"    # I
    .param p2, "src"    # [F
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    .prologue
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

.method putUnchecked(I[III)V
    .registers 12
    .param p1, "pos"    # I
    .param p2, "src"    # [I
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    .prologue
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

.method putUnchecked(I[JII)V
    .registers 12
    .param p1, "pos"    # I
    .param p2, "src"    # [J
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    .prologue
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

.method putUnchecked(I[SII)V
    .registers 12
    .param p1, "pos"    # I
    .param p2, "src"    # [S
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    .prologue
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

.method public slice()Ljava/nio/ByteBuffer;
    .registers 9

    .prologue
    .line 75
    new-instance v0, Ljava/nio/HeapByteBuffer;

    iget-object v1, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    .line 78
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->remaining()I

    move-result v4

    .line 79
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->remaining()I

    move-result v5

    .line 80
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v2

    iget v3, p0, Ljava/nio/HeapByteBuffer;->offset:I

    add-int v6, v2, v3

    .line 81
    iget-boolean v7, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    .line 76
    const/4 v2, -0x1

    .line 77
    const/4 v3, 0x0

    .line 75
    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapByteBuffer;-><init>([BIIIIIZ)V

    return-object v0
.end method
