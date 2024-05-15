.class public abstract Ljava/nio/ByteBuffer;
.super Ljava/nio/Buffer;
.source "ByteBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/Buffer;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field bigEndian:Z

.field final hb:[B

.field isReadOnly:Z

.field nativeByteOrder:Z

.field final offset:I


# direct methods
.method constructor <init>(IIII)V
    .registers 12
    .param p1, "mark"    # I
    .param p2, "pos"    # I
    .param p3, "lim"    # I
    .param p4, "cap"    # I

    .prologue
    .line 219
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Ljava/nio/ByteBuffer;-><init>(IIII[BI)V

    .line 220
    return-void
.end method

.method constructor <init>(IIII[BI)V
    .registers 14
    .param p1, "mark"    # I
    .param p2, "pos"    # I
    .param p3, "lim"    # I
    .param p4, "cap"    # I
    .param p5, "hb"    # [B
    .param p6, "offset"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 211
    invoke-direct/range {v0 .. v5}, Ljava/nio/Buffer;-><init>(IIIII)V

    .line 894
    iput-boolean v6, p0, Ljava/nio/ByteBuffer;->bigEndian:Z

    .line 897
    invoke-static {}, Ljava/nio/Bits;->byteOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_15

    move v5, v6

    .line 896
    :cond_15
    iput-boolean v5, p0, Ljava/nio/ByteBuffer;->nativeByteOrder:Z

    .line 212
    iput-object p5, p0, Ljava/nio/ByteBuffer;->hb:[B

    .line 213
    iput p6, p0, Ljava/nio/ByteBuffer;->offset:I

    .line 214
    return-void
.end method

.method public static allocate(I)Ljava/nio/ByteBuffer;
    .registers 2
    .param p0, "capacity"    # I

    .prologue
    .line 259
    if-gez p0, :cond_8

    .line 260
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 261
    :cond_8
    new-instance v0, Ljava/nio/HeapByteBuffer;

    invoke-direct {v0, p0, p0}, Ljava/nio/HeapByteBuffer;-><init>(II)V

    return-object v0
.end method

.method public static allocateDirect(I)Ljava/nio/ByteBuffer;
    .registers 5
    .param p0, "capacity"    # I

    .prologue
    .line 236
    if-gez p0, :cond_1c

    .line 237
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "capacity < 0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 240
    :cond_1c
    new-instance v0, Ljava/nio/DirectByteBuffer$MemoryRef;

    invoke-direct {v0, p0}, Ljava/nio/DirectByteBuffer$MemoryRef;-><init>(I)V

    .line 241
    .local v0, "memoryRef":Ljava/nio/DirectByteBuffer$MemoryRef;
    new-instance v1, Ljava/nio/DirectByteBuffer;

    invoke-direct {v1, p0, v0}, Ljava/nio/DirectByteBuffer;-><init>(ILjava/nio/DirectByteBuffer$MemoryRef;)V

    return-object v1
.end method

.method private static compare(BB)I
    .registers 3
    .param p0, "x"    # B
    .param p1, "y"    # B

    .prologue
    .line 884
    invoke-static {p0, p1}, Ljava/lang/Byte;->compare(BB)I

    move-result v0

    return v0
.end method

.method private static equals(BB)Z
    .registers 3
    .param p0, "x"    # B
    .param p1, "y"    # B

    .prologue
    .line 844
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static wrap([B)Ljava/nio/ByteBuffer;
    .registers 3
    .param p0, "array"    # [B

    .prologue
    .line 312
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static wrap([BII)Ljava/nio/ByteBuffer;
    .registers 5
    .param p0, "array"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 291
    :try_start_0
    new-instance v1, Ljava/nio/HeapByteBuffer;

    invoke-direct {v1, p0, p1, p2}, Ljava/nio/HeapByteBuffer;-><init>([BII)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v1

    .line 292
    :catch_6
    move-exception v0

    .line 293
    .local v0, "x":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method


# virtual methods
.method abstract _get(I)B
.end method

.method abstract _put(IB)V
.end method

.method public bridge synthetic array()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 663
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public final array()[B
    .registers 2

    .prologue
    .line 679
    iget-object v0, p0, Ljava/nio/ByteBuffer;->hb:[B

    if-nez v0, :cond_a

    .line 680
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 681
    :cond_a
    iget-boolean v0, p0, Ljava/nio/ByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_14

    .line 682
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 683
    :cond_14
    iget-object v0, p0, Ljava/nio/ByteBuffer;->hb:[B

    return-object v0
.end method

.method public final arrayOffset()I
    .registers 2

    .prologue
    .line 703
    iget-object v0, p0, Ljava/nio/ByteBuffer;->hb:[B

    if-nez v0, :cond_a

    .line 704
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 705
    :cond_a
    iget-boolean v0, p0, Ljava/nio/ByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_14

    .line 706
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 707
    :cond_14
    iget v0, p0, Ljava/nio/ByteBuffer;->offset:I

    return v0
.end method

.method public abstract asCharBuffer()Ljava/nio/CharBuffer;
.end method

.method public abstract asDoubleBuffer()Ljava/nio/DoubleBuffer;
.end method

.method public abstract asFloatBuffer()Ljava/nio/FloatBuffer;
.end method

.method public abstract asIntBuffer()Ljava/nio/IntBuffer;
.end method

.method public abstract asLongBuffer()Ljava/nio/LongBuffer;
.end method

.method public abstract asReadOnlyBuffer()Ljava/nio/ByteBuffer;
.end method

.method public abstract asShortBuffer()Ljava/nio/ShortBuffer;
.end method

.method public abstract compact()Ljava/nio/ByteBuffer;
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 848
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->compareTo(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/nio/ByteBuffer;)I
    .registers 9
    .param p1, "that"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 872
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int v3, v4, v5

    .line 873
    .local v3, "n":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .local v1, "i":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .local v2, "j":I
    :goto_1a
    if-ge v1, v3, :cond_30

    .line 874
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    invoke-static {v4, v5}, Ljava/nio/ByteBuffer;->compare(BB)I

    move-result v0

    .line 875
    .local v0, "cmp":I
    if-eqz v0, :cond_2b

    .line 876
    return v0

    .line 873
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 878
    .end local v0    # "cmp":I
    :cond_30
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    sub-int/2addr v4, v5

    return v4
.end method

.method public abstract duplicate()Ljava/nio/ByteBuffer;
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "ob"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 827
    if-ne p0, p1, :cond_5

    .line 828
    return v7

    .line 829
    :cond_5
    instance-of v4, p1, Ljava/nio/ByteBuffer;

    if-nez v4, :cond_a

    .line 830
    return v6

    :cond_a
    move-object v3, p1

    .line 831
    check-cast v3, Ljava/nio/ByteBuffer;

    .line 832
    .local v3, "that":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-eq v4, v5, :cond_18

    .line 833
    return v6

    .line 834
    :cond_18
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 835
    .local v2, "p":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "j":I
    :goto_28
    if-lt v0, v2, :cond_3e

    .line 836
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    invoke-static {v4, v5}, Ljava/nio/ByteBuffer;->equals(BB)Z

    move-result v4

    if-nez v4, :cond_39

    .line 837
    return v6

    .line 835
    :cond_39
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_28

    .line 838
    :cond_3e
    return v7
.end method

.method public abstract get()B
.end method

.method public abstract get(I)B
.end method

.method public get([B)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "dst"    # [B

    .prologue
    .line 493
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public get([BII)Ljava/nio/ByteBuffer;
    .registers 7
    .param p1, "dst"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 469
    array-length v2, p1

    invoke-static {p2, p3, v2}, Ljava/nio/ByteBuffer;->checkBounds(III)V

    .line 470
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-le p3, v2, :cond_10

    .line 471
    new-instance v2, Ljava/nio/BufferUnderflowException;

    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v2

    .line 472
    :cond_10
    add-int v0, p2, p3

    .line 473
    .local v0, "end":I
    move v1, p2

    .local v1, "i":I
    :goto_13
    if-ge v1, v0, :cond_1e

    .line 474
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    aput-byte v2, p1, v1

    .line 473
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 475
    :cond_1e
    return-object p0
.end method

.method public abstract getChar()C
.end method

.method public abstract getChar(I)C
.end method

.method getCharUnchecked(I)C
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 979
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract getDouble()D
.end method

.method public abstract getDouble(I)D
.end method

.method getDoubleUnchecked(I)D
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 1454
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract getFloat()F
.end method

.method public abstract getFloat(I)F
.end method

.method getFloatUnchecked(I)F
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 1359
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract getInt()I
.end method

.method public abstract getInt(I)I
.end method

.method getIntUnchecked(I)I
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 1169
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract getLong()J
.end method

.method public abstract getLong(I)J
.end method

.method getLongUnchecked(I)J
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 1264
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract getShort()S
.end method

.method public abstract getShort(I)S
.end method

.method getShortUnchecked(I)S
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 1074
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method getUnchecked(I[CII)V
    .registers 6
    .param p1, "pos"    # I
    .param p2, "dst"    # [C
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    .prologue
    .line 983
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method getUnchecked(I[DII)V
    .registers 6
    .param p1, "pos"    # I
    .param p2, "dst"    # [D
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    .prologue
    .line 1458
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method getUnchecked(I[FII)V
    .registers 6
    .param p1, "pos"    # I
    .param p2, "dst"    # [F
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    .prologue
    .line 1363
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method getUnchecked(I[III)V
    .registers 6
    .param p1, "pos"    # I
    .param p2, "dst"    # [I
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    .prologue
    .line 1173
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method getUnchecked(I[JII)V
    .registers 6
    .param p1, "pos"    # I
    .param p2, "dst"    # [J
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    .prologue
    .line 1268
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method getUnchecked(I[SII)V
    .registers 6
    .param p1, "pos"    # I
    .param p2, "dst"    # [S
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    .prologue
    .line 1078
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final hasArray()Z
    .registers 2

    .prologue
    .line 660
    iget-object v0, p0, Ljava/nio/ByteBuffer;->hb:[B

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public hashCode()I
    .registers 6

    .prologue
    .line 788
    const/4 v0, 0x1

    .line 789
    .local v0, "h":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 790
    .local v2, "p":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_b
    if-lt v1, v2, :cond_18

    .line 791
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    add-int v0, v3, v4

    .line 790
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 792
    :cond_18
    return v0
.end method

.method public isAccessible()Z
    .registers 2

    .prologue
    .line 1508
    const/4 v0, 0x1

    return v0
.end method

.method public abstract isDirect()Z
.end method

.method public final order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    .registers 7
    .param p1, "bo"    # Ljava/nio/ByteOrder;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 922
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p1, v0, :cond_19

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Ljava/nio/ByteBuffer;->bigEndian:Z

    .line 924
    iget-boolean v3, p0, Ljava/nio/ByteBuffer;->bigEndian:Z

    invoke-static {}, Ljava/nio/Bits;->byteOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v4, :cond_1b

    move v0, v1

    :goto_14
    if-ne v3, v0, :cond_1d

    .line 923
    :goto_16
    iput-boolean v1, p0, Ljava/nio/ByteBuffer;->nativeByteOrder:Z

    .line 925
    return-object p0

    :cond_19
    move v0, v2

    .line 922
    goto :goto_7

    :cond_1b
    move v0, v2

    .line 924
    goto :goto_14

    :cond_1d
    move v1, v2

    goto :goto_16
.end method

.method public final order()Ljava/nio/ByteOrder;
    .registers 2

    .prologue
    .line 910
    iget-boolean v0, p0, Ljava/nio/ByteBuffer;->bigEndian:Z

    if-eqz v0, :cond_7

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_6
.end method

.method public abstract put(B)Ljava/nio/ByteBuffer;
.end method

.method public abstract put(IB)Ljava/nio/ByteBuffer;
.end method

.method public put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 13
    .param p1, "src"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 533
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isAccessible()Z

    move-result v4

    if-nez v4, :cond_f

    .line 534
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "buffer is inaccessible"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 536
    :cond_f
    if-ne p1, p0, :cond_17

    .line 537
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 539
    :cond_17
    iget-boolean v4, p0, Ljava/nio/ByteBuffer;->isReadOnly:Z

    if-eqz v4, :cond_21

    .line 540
    new-instance v4, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v4}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v4

    .line 542
    :cond_21
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    .line 543
    .local v7, "n":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-le v7, v4, :cond_31

    .line 544
    new-instance v4, Ljava/nio/BufferOverflowException;

    invoke-direct {v4}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v4

    .line 550
    :cond_31
    iget-object v4, p0, Ljava/nio/ByteBuffer;->hb:[B

    if-eqz v4, :cond_5e

    iget-object v4, p1, Ljava/nio/ByteBuffer;->hb:[B

    if-eqz v4, :cond_5e

    .line 552
    iget-object v4, p1, Ljava/nio/ByteBuffer;->hb:[B

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    iget v8, p1, Ljava/nio/ByteBuffer;->offset:I

    add-int/2addr v5, v8

    iget-object v8, p0, Ljava/nio/ByteBuffer;->hb:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    iget v10, p0, Ljava/nio/ByteBuffer;->offset:I

    add-int/2addr v9, v10

    invoke-static {v4, v5, v8, v9, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 572
    :goto_4e
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 573
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v7

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 574
    return-object p0

    .line 558
    :cond_5e
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v4

    if-eqz v4, :cond_8c

    move-object v2, p1

    .line 559
    .local v2, "srcObject":Ljava/lang/Object;
    :goto_65
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 560
    .local v3, "srcOffset":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v4

    if-nez v4, :cond_72

    .line 561
    iget v4, p1, Ljava/nio/ByteBuffer;->offset:I

    add-int/2addr v3, v4

    .line 564
    :cond_72
    move-object v6, p0

    .line 565
    .local v6, "dst":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v4

    if-eqz v4, :cond_8f

    move-object v0, p0

    .line 566
    .local v0, "dstObject":Ljava/lang/Object;
    :goto_7a
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 567
    .local v1, "dstOffset":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v4

    if-nez v4, :cond_87

    .line 568
    iget v4, p0, Ljava/nio/ByteBuffer;->offset:I

    add-int/2addr v1, v4

    .line 570
    :cond_87
    int-to-long v4, v7

    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->memmove(Ljava/lang/Object;ILjava/lang/Object;IJ)V

    goto :goto_4e

    .line 558
    .end local v0    # "dstObject":Ljava/lang/Object;
    .end local v1    # "dstOffset":I
    .end local v2    # "srcObject":Ljava/lang/Object;
    .end local v3    # "srcOffset":I
    .end local v6    # "dst":Ljava/nio/ByteBuffer;
    :cond_8c
    iget-object v2, p1, Ljava/nio/ByteBuffer;->hb:[B

    .restart local v2    # "srcObject":Ljava/lang/Object;
    goto :goto_65

    .line 565
    .restart local v3    # "srcOffset":I
    .restart local v6    # "dst":Ljava/nio/ByteBuffer;
    :cond_8f
    iget-object v0, p0, Ljava/nio/ByteBuffer;->hb:[B

    .restart local v0    # "dstObject":Ljava/lang/Object;
    goto :goto_7a
.end method

.method public final put([B)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "src"    # [B

    .prologue
    .line 642
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public put([BII)Ljava/nio/ByteBuffer;
    .registers 7
    .param p1, "src"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 617
    array-length v2, p1

    invoke-static {p2, p3, v2}, Ljava/nio/ByteBuffer;->checkBounds(III)V

    .line 618
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-le p3, v2, :cond_10

    .line 619
    new-instance v2, Ljava/nio/BufferOverflowException;

    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v2

    .line 620
    :cond_10
    add-int v0, p2, p3

    .line 621
    .local v0, "end":I
    move v1, p2

    .local v1, "i":I
    :goto_13
    if-ge v1, v0, :cond_1d

    .line 622
    aget-byte v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 621
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 623
    :cond_1d
    return-object p0
.end method

.method public abstract putChar(C)Ljava/nio/ByteBuffer;
.end method

.method public abstract putChar(IC)Ljava/nio/ByteBuffer;
.end method

.method putCharUnchecked(IC)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "value"    # C

    .prologue
    .line 1004
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract putDouble(D)Ljava/nio/ByteBuffer;
.end method

.method public abstract putDouble(ID)Ljava/nio/ByteBuffer;
.end method

.method putDoubleUnchecked(ID)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "value"    # D

    .prologue
    .line 1479
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract putFloat(F)Ljava/nio/ByteBuffer;
.end method

.method public abstract putFloat(IF)Ljava/nio/ByteBuffer;
.end method

.method putFloatUnchecked(IF)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "value"    # F

    .prologue
    .line 1384
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract putInt(I)Ljava/nio/ByteBuffer;
.end method

.method public abstract putInt(II)Ljava/nio/ByteBuffer;
.end method

.method putIntUnchecked(II)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 1194
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract putLong(IJ)Ljava/nio/ByteBuffer;
.end method

.method public abstract putLong(J)Ljava/nio/ByteBuffer;
.end method

.method putLongUnchecked(IJ)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "value"    # J

    .prologue
    .line 1289
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract putShort(IS)Ljava/nio/ByteBuffer;
.end method

.method public abstract putShort(S)Ljava/nio/ByteBuffer;
.end method

.method putShortUnchecked(IS)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "value"    # S

    .prologue
    .line 1099
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method putUnchecked(I[CII)V
    .registers 6
    .param p1, "pos"    # I
    .param p2, "dst"    # [C
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    .prologue
    .line 1008
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method putUnchecked(I[DII)V
    .registers 6
    .param p1, "pos"    # I
    .param p2, "dst"    # [D
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    .prologue
    .line 1483
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method putUnchecked(I[FII)V
    .registers 6
    .param p1, "pos"    # I
    .param p2, "dst"    # [F
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    .prologue
    .line 1388
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method putUnchecked(I[III)V
    .registers 6
    .param p1, "pos"    # I
    .param p2, "dst"    # [I
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    .prologue
    .line 1198
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method putUnchecked(I[JII)V
    .registers 6
    .param p1, "pos"    # I
    .param p2, "dst"    # [J
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    .prologue
    .line 1293
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method putUnchecked(I[SII)V
    .registers 6
    .param p1, "pos"    # I
    .param p2, "dst"    # [S
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    .prologue
    .line 1103
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setAccessible(Z)V
    .registers 3
    .param p1, "value"    # Z

    .prologue
    .line 1515
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract slice()Ljava/nio/ByteBuffer;
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 761
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 762
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 763
    const-string/jumbo v1, "[pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 764
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 765
    const-string/jumbo v1, " lim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 766
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 767
    const-string/jumbo v1, " cap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 768
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 769
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 770
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
