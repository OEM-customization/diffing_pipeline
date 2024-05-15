.class public abstract Ljava/nio/ByteBuffer;
.super Ljava/nio/Buffer;
.source "ByteBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/Buffer;",
        "Ljava/lang/Comparable<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field greylist-max-o bigEndian:Z

.field final greylist-max-r hb:[B

.field greylist-max-r isReadOnly:Z

.field greylist-max-o nativeByteOrder:Z

.field final greylist-max-r offset:I


# direct methods
.method constructor greylist-max-o <init>(IIII)V
    .registers 12
    .param p1, "mark"    # I
    .param p2, "pos"    # I
    .param p3, "lim"    # I
    .param p4, "cap"    # I

    .line 235
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Ljava/nio/ByteBuffer;-><init>(IIII[BI)V

    .line 236
    return-void
.end method

.method constructor greylist-max-o <init>(IIII[BI)V
    .registers 13
    .param p1, "mark"    # I
    .param p2, "pos"    # I
    .param p3, "lim"    # I
    .param p4, "cap"    # I
    .param p5, "hb"    # [B
    .param p6, "offset"    # I

    .line 227
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Ljava/nio/Buffer;-><init>(IIIII)V

    .line 1036
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/nio/ByteBuffer;->bigEndian:Z

    .line 1038
    nop

    .line 1039
    invoke-static {}, Ljava/nio/Bits;->byteOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_16

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    iput-boolean v0, p0, Ljava/nio/ByteBuffer;->nativeByteOrder:Z

    .line 228
    iput-object p5, p0, Ljava/nio/ByteBuffer;->hb:[B

    .line 229
    iput p6, p0, Ljava/nio/ByteBuffer;->offset:I

    .line 230
    return-void
.end method

.method public static whitelist test-api allocate(I)Ljava/nio/ByteBuffer;
    .registers 2
    .param p0, "capacity"    # I

    .line 280
    if-ltz p0, :cond_8

    .line 282
    new-instance v0, Ljava/nio/HeapByteBuffer;

    invoke-direct {v0, p0, p0}, Ljava/nio/HeapByteBuffer;-><init>(II)V

    return-object v0

    .line 281
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static whitelist test-api allocateDirect(I)Ljava/nio/ByteBuffer;
    .registers 3
    .param p0, "capacity"    # I

    .line 258
    new-instance v0, Ljava/nio/DirectByteBuffer$MemoryRef;

    invoke-direct {v0, p0}, Ljava/nio/DirectByteBuffer$MemoryRef;-><init>(I)V

    .line 259
    .local v0, "memoryRef":Ljava/nio/DirectByteBuffer$MemoryRef;
    new-instance v1, Ljava/nio/DirectByteBuffer;

    invoke-direct {v1, p0, v0}, Ljava/nio/DirectByteBuffer;-><init>(ILjava/nio/DirectByteBuffer$MemoryRef;)V

    return-object v1
.end method

.method private static greylist-max-o compare(BB)I
    .registers 3
    .param p0, "x"    # B
    .param p1, "y"    # B

    .line 1026
    invoke-static {p0, p1}, Ljava/lang/Byte;->compare(BB)I

    move-result v0

    return v0
.end method

.method private static greylist-max-o equals(BB)Z
    .registers 3
    .param p0, "x"    # B
    .param p1, "y"    # B

    .line 986
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method public static whitelist test-api wrap([B)Ljava/nio/ByteBuffer;
    .registers 3
    .param p0, "array"    # [B

    .line 343
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api wrap([BII)Ljava/nio/ByteBuffer;
    .registers 5
    .param p0, "array"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 320
    :try_start_0
    new-instance v0, Ljava/nio/HeapByteBuffer;

    invoke-direct {v0, p0, p1, p2}, Ljava/nio/HeapByteBuffer;-><init>([BII)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    .line 321
    :catch_6
    move-exception v0

    .line 322
    .local v0, "x":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method


# virtual methods
.method abstract greylist-max-o _get(I)B
.end method

.method abstract greylist-max-o _put(IB)V
.end method

.method public bridge synthetic whitelist test-api array()Ljava/lang/Object;
    .registers 2

    .line 207
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api array()[B
    .registers 3

    .line 773
    iget-object v0, p0, Ljava/nio/ByteBuffer;->hb:[B

    if-eqz v0, :cond_f

    .line 775
    iget-boolean v1, p0, Ljava/nio/ByteBuffer;->isReadOnly:Z

    if-nez v1, :cond_9

    .line 777
    return-object v0

    .line 776
    :cond_9
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 774
    :cond_f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final whitelist test-api arrayOffset()I
    .registers 2

    .line 801
    iget-object v0, p0, Ljava/nio/ByteBuffer;->hb:[B

    if-eqz v0, :cond_11

    .line 803
    iget-boolean v0, p0, Ljava/nio/ByteBuffer;->isReadOnly:Z

    if-nez v0, :cond_b

    .line 805
    iget v0, p0, Ljava/nio/ByteBuffer;->offset:I

    return v0

    .line 804
    :cond_b
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 802
    :cond_11
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract whitelist test-api asCharBuffer()Ljava/nio/CharBuffer;
.end method

.method public abstract whitelist test-api asDoubleBuffer()Ljava/nio/DoubleBuffer;
.end method

.method public abstract whitelist test-api asFloatBuffer()Ljava/nio/FloatBuffer;
.end method

.method public abstract whitelist test-api asIntBuffer()Ljava/nio/IntBuffer;
.end method

.method public abstract whitelist test-api asLongBuffer()Ljava/nio/LongBuffer;
.end method

.method public abstract whitelist test-api asReadOnlyBuffer()Ljava/nio/ByteBuffer;
.end method

.method public abstract whitelist test-api asShortBuffer()Ljava/nio/ShortBuffer;
.end method

.method public whitelist test-api clear()Ljava/nio/Buffer;
    .registers 2

    .line 836
    invoke-super {p0}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api clear()Ljava/nio/ByteBuffer;
    .registers 2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public abstract whitelist test-api compact()Ljava/nio/ByteBuffer;
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 207
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->compareTo(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api compareTo(Ljava/nio/ByteBuffer;)I
    .registers 7
    .param p1, "that"    # Ljava/nio/ByteBuffer;

    .line 1014
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1015
    .local v0, "n":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .local v1, "i":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .local v2, "j":I
    :goto_19
    if-ge v1, v0, :cond_2f

    .line 1016
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-static {v3, v4}, Ljava/nio/ByteBuffer;->compare(BB)I

    move-result v3

    .line 1017
    .local v3, "cmp":I
    if-eqz v3, :cond_2a

    .line 1018
    return v3

    .line 1015
    .end local v3    # "cmp":I
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 1020
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_2f
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    sub-int/2addr v1, v2

    return v1
.end method

.method public abstract whitelist test-api duplicate()Ljava/nio/ByteBuffer;
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "ob"    # Ljava/lang/Object;

    .line 969
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 970
    return v0

    .line 971
    :cond_4
    instance-of v1, p1, Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 972
    return v2

    .line 973
    :cond_a
    move-object v1, p1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 974
    .local v1, "that":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-eq v3, v4, :cond_18

    .line 975
    return v2

    .line 976
    :cond_18
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 977
    .local v3, "p":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    sub-int/2addr v4, v0

    .local v4, "i":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    sub-int/2addr v5, v0

    .local v5, "j":I
    :goto_26
    if-lt v4, v3, :cond_3c

    .line 978
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    invoke-static {v6, v7}, Ljava/nio/ByteBuffer;->equals(BB)Z

    move-result v6

    if-nez v6, :cond_37

    .line 979
    return v2

    .line 977
    :cond_37
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_26

    .line 980
    .end local v4    # "i":I
    .end local v5    # "j":I
    :cond_3c
    return v0
.end method

.method public whitelist test-api flip()Ljava/nio/Buffer;
    .registers 2

    .line 842
    invoke-super {p0}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api flip()Ljava/nio/ByteBuffer;
    .registers 2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public abstract whitelist test-api get()B
.end method

.method public abstract whitelist test-api get(I)B
.end method

.method public whitelist test-api get([B)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "dst"    # [B

    .line 557
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api get([BII)Ljava/nio/ByteBuffer;
    .registers 7
    .param p1, "dst"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 528
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/ByteBuffer;->checkBounds(III)V

    .line 529
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-gt p3, v0, :cond_19

    .line 531
    add-int v0, p2, p3

    .line 532
    .local v0, "end":I
    move v1, p2

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_18

    .line 533
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    aput-byte v2, p1, v1

    .line 532
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 534
    .end local v1    # "i":I
    :cond_18
    return-object p0

    .line 530
    .end local v0    # "end":I
    :cond_19
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0
.end method

.method public abstract whitelist test-api getChar()C
.end method

.method public abstract whitelist test-api getChar(I)C
.end method

.method abstract greylist-max-o getCharUnchecked(I)C
.end method

.method public abstract whitelist test-api getDouble()D
.end method

.method public abstract whitelist test-api getDouble(I)D
.end method

.method abstract greylist-max-o getDoubleUnchecked(I)D
.end method

.method public abstract whitelist test-api getFloat()F
.end method

.method public abstract whitelist test-api getFloat(I)F
.end method

.method abstract greylist-max-o getFloatUnchecked(I)F
.end method

.method public abstract whitelist test-api getInt()I
.end method

.method public abstract whitelist test-api getInt(I)I
.end method

.method abstract greylist-max-o getIntUnchecked(I)I
.end method

.method public abstract whitelist test-api getLong()J
.end method

.method public abstract whitelist test-api getLong(I)J
.end method

.method abstract greylist-max-o getLongUnchecked(I)J
.end method

.method public abstract whitelist test-api getShort()S
.end method

.method public abstract whitelist test-api getShort(I)S
.end method

.method abstract greylist-max-o getShortUnchecked(I)S
.end method

.method abstract greylist-max-o getUnchecked(I[CII)V
.end method

.method abstract greylist-max-o getUnchecked(I[DII)V
.end method

.method abstract greylist-max-o getUnchecked(I[FII)V
.end method

.method abstract greylist-max-o getUnchecked(I[III)V
.end method

.method abstract greylist-max-o getUnchecked(I[JII)V
.end method

.method abstract greylist-max-o getUnchecked(I[SII)V
.end method

.method public final whitelist test-api hasArray()Z
    .registers 2

    .line 750
    iget-object v0, p0, Ljava/nio/ByteBuffer;->hb:[B

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Ljava/nio/ByteBuffer;->isReadOnly:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 935
    const/4 v0, 0x1

    .line 936
    .local v0, "h":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 937
    .local v1, "p":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_b
    if-lt v2, v1, :cond_18

    .line 938
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    add-int v0, v3, v4

    .line 937
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    .line 939
    .end local v2    # "i":I
    :cond_18
    return v0
.end method

.method public greylist-max-o isAccessible()Z
    .registers 2

    .line 1736
    const/4 v0, 0x1

    return v0
.end method

.method public abstract whitelist test-api isDirect()Z
.end method

.method public whitelist test-api limit(I)Ljava/nio/Buffer;
    .registers 3
    .param p1, "newLimit"    # I

    .line 818
    invoke-super {p0, p1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api limit(I)Ljava/nio/ByteBuffer;
    .registers 2

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public whitelist test-api mark()Ljava/nio/Buffer;
    .registers 2

    .line 824
    invoke-super {p0}, Ljava/nio/Buffer;->mark()Ljava/nio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api mark()Ljava/nio/ByteBuffer;
    .registers 2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final whitelist test-api order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    .registers 7
    .param p1, "bo"    # Ljava/nio/ByteOrder;

    .line 1066
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    :goto_9
    iput-boolean v0, p0, Ljava/nio/ByteBuffer;->bigEndian:Z

    .line 1067
    nop

    .line 1068
    invoke-static {}, Ljava/nio/Bits;->byteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v3, v4, :cond_16

    move v3, v1

    goto :goto_17

    :cond_16
    move v3, v2

    :goto_17
    if-ne v0, v3, :cond_1a

    goto :goto_1b

    :cond_1a
    move v1, v2

    :goto_1b
    iput-boolean v1, p0, Ljava/nio/ByteBuffer;->nativeByteOrder:Z

    .line 1069
    return-object p0
.end method

.method public final whitelist test-api order()Ljava/nio/ByteOrder;
    .registers 2

    .line 1052
    iget-boolean v0, p0, Ljava/nio/ByteBuffer;->bigEndian:Z

    if-eqz v0, :cond_7

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_9

    :cond_7
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :goto_9
    return-object v0
.end method

.method public whitelist test-api position(I)Ljava/nio/Buffer;
    .registers 3
    .param p1, "newPosition"    # I

    .line 812
    invoke-super {p0, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api position(I)Ljava/nio/ByteBuffer;
    .registers 2

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public abstract whitelist test-api put(B)Ljava/nio/ByteBuffer;
.end method

.method public abstract whitelist test-api put(IB)Ljava/nio/ByteBuffer;
.end method

.method public whitelist test-api put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 12
    .param p1, "src"    # Ljava/nio/ByteBuffer;

    .line 605
    if-eq p1, p0, :cond_83

    .line 607
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_7d

    .line 609
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 610
    .local v0, "n":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_77

    .line 621
    iget-object v1, p0, Ljava/nio/ByteBuffer;->hb:[B

    if-eqz v1, :cond_2e

    iget-object v1, p1, Ljava/nio/ByteBuffer;->hb:[B

    if-eqz v1, :cond_2e

    .line 623
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    iget v3, p1, Ljava/nio/ByteBuffer;->offset:I

    add-int/2addr v2, v3

    iget-object v3, p0, Ljava/nio/ByteBuffer;->hb:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    iget v5, p0, Ljava/nio/ByteBuffer;->offset:I

    add-int/2addr v4, v5

    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_67

    .line 629
    :cond_2e
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_36

    move-object v4, p1

    goto :goto_39

    :cond_36
    iget-object v1, p1, Ljava/nio/ByteBuffer;->hb:[B

    move-object v4, v1

    .line 630
    .local v4, "srcObject":Ljava/lang/Object;
    :goto_39
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 631
    .local v1, "srcOffset":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v2

    if-nez v2, :cond_46

    .line 632
    iget v2, p1, Ljava/nio/ByteBuffer;->offset:I

    add-int/2addr v1, v2

    .line 635
    :cond_46
    move-object v8, p0

    .line 636
    .local v8, "dst":Ljava/nio/ByteBuffer;
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v2

    if-eqz v2, :cond_4f

    move-object v2, v8

    goto :goto_51

    :cond_4f
    iget-object v2, v8, Ljava/nio/ByteBuffer;->hb:[B

    .line 637
    .local v2, "dstObject":Ljava/lang/Object;
    :goto_51
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 638
    .local v3, "dstOffset":I
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v5

    if-nez v5, :cond_60

    .line 639
    iget v5, v8, Ljava/nio/ByteBuffer;->offset:I

    add-int/2addr v3, v5

    move v9, v3

    goto :goto_61

    .line 638
    :cond_60
    move v9, v3

    .line 641
    .end local v3    # "dstOffset":I
    .local v9, "dstOffset":I
    :goto_61
    int-to-long v6, v0

    move v3, v9

    move v5, v1

    invoke-static/range {v2 .. v7}, Llibcore/io/Memory;->memmove(Ljava/lang/Object;ILjava/lang/Object;IJ)V

    .line 643
    .end local v1    # "srcOffset":I
    .end local v2    # "dstObject":Ljava/lang/Object;
    .end local v4    # "srcObject":Ljava/lang/Object;
    .end local v8    # "dst":Ljava/nio/ByteBuffer;
    .end local v9    # "dstOffset":I
    :goto_67
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 644
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 645
    return-object p0

    .line 611
    :cond_77
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 608
    .end local v0    # "n":I
    :cond_7d
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 606
    :cond_83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public final whitelist test-api put([B)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "src"    # [B

    .line 732
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api put([BII)Ljava/nio/ByteBuffer;
    .registers 7
    .param p1, "src"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 700
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/ByteBuffer;->checkBounds(III)V

    .line 701
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-gt p3, v0, :cond_18

    .line 703
    add-int v0, p2, p3

    .line 704
    .local v0, "end":I
    move v1, p2

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_17

    .line 705
    aget-byte v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 704
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 706
    .end local v1    # "i":I
    :cond_17
    return-object p0

    .line 702
    .end local v0    # "end":I
    :cond_18
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0
.end method

.method public abstract whitelist test-api putChar(C)Ljava/nio/ByteBuffer;
.end method

.method public abstract whitelist test-api putChar(IC)Ljava/nio/ByteBuffer;
.end method

.method abstract greylist-max-o putCharUnchecked(IC)V
.end method

.method public abstract whitelist test-api putDouble(D)Ljava/nio/ByteBuffer;
.end method

.method public abstract whitelist test-api putDouble(ID)Ljava/nio/ByteBuffer;
.end method

.method abstract greylist-max-o putDoubleUnchecked(ID)V
.end method

.method public abstract whitelist test-api putFloat(F)Ljava/nio/ByteBuffer;
.end method

.method public abstract whitelist test-api putFloat(IF)Ljava/nio/ByteBuffer;
.end method

.method abstract greylist-max-o putFloatUnchecked(IF)V
.end method

.method public abstract whitelist test-api putInt(I)Ljava/nio/ByteBuffer;
.end method

.method public abstract whitelist test-api putInt(II)Ljava/nio/ByteBuffer;
.end method

.method abstract greylist-max-o putIntUnchecked(II)V
.end method

.method public abstract whitelist test-api putLong(IJ)Ljava/nio/ByteBuffer;
.end method

.method public abstract whitelist test-api putLong(J)Ljava/nio/ByteBuffer;
.end method

.method abstract greylist-max-o putLongUnchecked(IJ)V
.end method

.method public abstract whitelist test-api putShort(IS)Ljava/nio/ByteBuffer;
.end method

.method public abstract whitelist test-api putShort(S)Ljava/nio/ByteBuffer;
.end method

.method abstract greylist-max-o putShortUnchecked(IS)V
.end method

.method abstract greylist-max-o putUnchecked(I[CII)V
.end method

.method abstract greylist-max-o putUnchecked(I[DII)V
.end method

.method abstract greylist-max-o putUnchecked(I[FII)V
.end method

.method abstract greylist-max-o putUnchecked(I[III)V
.end method

.method abstract greylist-max-o putUnchecked(I[JII)V
.end method

.method abstract greylist-max-o putUnchecked(I[SII)V
.end method

.method public whitelist test-api reset()Ljava/nio/Buffer;
    .registers 2

    .line 830
    invoke-super {p0}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api reset()Ljava/nio/ByteBuffer;
    .registers 2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public whitelist test-api rewind()Ljava/nio/Buffer;
    .registers 2

    .line 848
    invoke-super {p0}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api rewind()Ljava/nio/ByteBuffer;
    .registers 2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public greylist-max-o test-api setAccessible(Z)V
    .registers 3
    .param p1, "value"    # Z

    .line 1743
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract whitelist test-api slice()Ljava/nio/ByteBuffer;
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 908
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 909
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 910
    const-string v1, "[pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 911
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 912
    const-string v1, " lim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 913
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 914
    const-string v1, " cap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 915
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 916
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 917
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
