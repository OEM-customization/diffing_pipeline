.class public Ljava/nio/DirectByteBuffer;
.super Ljava/nio/MappedByteBuffer;
.source "DirectByteBuffer.java"

# interfaces
.implements Lsun/nio/ch/DirectBuffer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/DirectByteBuffer$MemoryRef;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field final greylist-max-o cleaner:Lsun/misc/Cleaner;

.field final greylist-max-o memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 38
    return-void
.end method

.method public constructor greylist-max-o test-api <init>(IJLjava/io/FileDescriptor;Ljava/lang/Runnable;Z)V
    .registers 13
    .param p1, "cap"    # I
    .param p2, "addr"    # J
    .param p4, "fd"    # Ljava/io/FileDescriptor;
    .param p5, "unmapper"    # Ljava/lang/Runnable;
    .param p6, "isReadOnly"    # Z

    .line 122
    const/4 v1, -0x1

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ljava/nio/MappedByteBuffer;-><init>(IIIILjava/io/FileDescriptor;)V

    .line 123
    iput-boolean p6, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    .line 124
    new-instance v0, Ljava/nio/DirectByteBuffer$MemoryRef;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Ljava/nio/DirectByteBuffer$MemoryRef;-><init>(JLjava/lang/Object;)V

    iput-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    .line 125
    iput-wide p2, p0, Ljava/nio/DirectByteBuffer;->address:J

    .line 126
    invoke-static {v0, p5}, Lsun/misc/Cleaner;->create(Ljava/lang/Object;Ljava/lang/Runnable;)Lsun/misc/Cleaner;

    move-result-object v0

    iput-object v0, p0, Ljava/nio/DirectByteBuffer;->cleaner:Lsun/misc/Cleaner;

    .line 127
    return-void
.end method

.method constructor greylist-max-o <init>(ILjava/nio/DirectByteBuffer$MemoryRef;)V
    .registers 10
    .param p1, "capacity"    # I
    .param p2, "memoryRef"    # Ljava/nio/DirectByteBuffer$MemoryRef;

    .line 99
    iget-object v5, p2, Ljava/nio/DirectByteBuffer$MemoryRef;->buffer:[B

    iget v6, p2, Ljava/nio/DirectByteBuffer$MemoryRef;->offset:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p1

    invoke-direct/range {v0 .. v6}, Ljava/nio/MappedByteBuffer;-><init>(IIII[BI)V

    .line 102
    iput-object p2, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    .line 103
    iget-wide v0, p2, Ljava/nio/DirectByteBuffer$MemoryRef;->allocatedAddress:J

    iget v2, p2, Ljava/nio/DirectByteBuffer$MemoryRef;->offset:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/nio/DirectByteBuffer;->address:J

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/DirectByteBuffer;->cleaner:Lsun/misc/Cleaner;

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    .line 106
    return-void
.end method

.method private constructor greylist-max-r <init>(JI)V
    .registers 6
    .param p1, "addr"    # J
    .param p3, "cap"    # I

    .line 111
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p3, p3}, Ljava/nio/MappedByteBuffer;-><init>(IIII)V

    .line 112
    new-instance v0, Ljava/nio/DirectByteBuffer$MemoryRef;

    invoke-direct {v0, p1, p2, p0}, Ljava/nio/DirectByteBuffer$MemoryRef;-><init>(JLjava/lang/Object;)V

    iput-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    .line 113
    iput-wide p1, p0, Ljava/nio/DirectByteBuffer;->address:J

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/DirectByteBuffer;->cleaner:Lsun/misc/Cleaner;

    .line 115
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/nio/DirectByteBuffer$MemoryRef;IIIII)V
    .registers 15
    .param p1, "memoryRef"    # Ljava/nio/DirectByteBuffer$MemoryRef;
    .param p2, "mark"    # I
    .param p3, "pos"    # I
    .param p4, "lim"    # I
    .param p5, "cap"    # I
    .param p6, "off"    # I

    .line 133
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Ljava/nio/DirectByteBuffer;-><init>(Ljava/nio/DirectByteBuffer$MemoryRef;IIIIIZ)V

    .line 134
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/nio/DirectByteBuffer$MemoryRef;IIIIIZ)V
    .registers 15
    .param p1, "memoryRef"    # Ljava/nio/DirectByteBuffer$MemoryRef;
    .param p2, "mark"    # I
    .param p3, "pos"    # I
    .param p4, "lim"    # I
    .param p5, "cap"    # I
    .param p6, "off"    # I
    .param p7, "isReadOnly"    # Z

    .line 139
    iget-object v5, p1, Ljava/nio/DirectByteBuffer$MemoryRef;->buffer:[B

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Ljava/nio/MappedByteBuffer;-><init>(IIII[BI)V

    .line 140
    iput-boolean p7, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    .line 141
    iput-object p1, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    .line 142
    iget-wide v0, p1, Ljava/nio/DirectByteBuffer$MemoryRef;->allocatedAddress:J

    int-to-long v2, p6

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/nio/DirectByteBuffer;->address:J

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/DirectByteBuffer;->cleaner:Lsun/misc/Cleaner;

    .line 144
    return-void
.end method

.method private greylist-max-o get(J)B
    .registers 4
    .param p1, "a"    # J

    .line 208
    invoke-static {p1, p2}, Llibcore/io/Memory;->peekByte(J)B

    move-result v0

    return v0
.end method

.method private greylist-max-o getDouble(J)D
    .registers 7
    .param p1, "a"    # J

    .line 862
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, p2, v0}, Llibcore/io/Memory;->peekLong(JZ)J

    move-result-wide v0

    .line 863
    .local v0, "x":J
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    return-wide v2
.end method

.method private greylist-max-o getFloat(J)F
    .registers 5
    .param p1, "a"    # J

    .line 758
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, p2, v0}, Llibcore/io/Memory;->peekInt(JZ)I

    move-result v0

    .line 759
    .local v0, "x":I
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    return v1
.end method

.method private greylist-max-o getInt(J)I
    .registers 4
    .param p1, "a"    # J

    .line 554
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, p2, v0}, Llibcore/io/Memory;->peekInt(JZ)I

    move-result v0

    return v0
.end method

.method private greylist-max-o getLong(J)J
    .registers 5
    .param p1, "a"    # J

    .line 656
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, p2, v0}, Llibcore/io/Memory;->peekLong(JZ)J

    move-result-wide v0

    return-wide v0
.end method

.method private greylist-max-o getShort(J)S
    .registers 4
    .param p1, "a"    # J

    .line 452
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, p2, v0}, Llibcore/io/Memory;->peekShort(JZ)S

    move-result v0

    return v0
.end method

.method private greylist-max-o ix(I)J
    .registers 6
    .param p1, "i"    # I

    .line 204
    iget-wide v0, p0, Ljava/nio/DirectByteBuffer;->address:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private greylist-max-o put(JB)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "a"    # J
    .param p3, "x"    # B

    .line 247
    invoke-static {p1, p2, p3}, Llibcore/io/Memory;->pokeByte(JB)V

    .line 248
    return-object p0
.end method

.method private greylist-max-o putChar(JC)Ljava/nio/ByteBuffer;
    .registers 6
    .param p1, "a"    # J
    .param p3, "x"    # C

    .line 387
    int-to-short v0, p3

    iget-boolean v1, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {p1, p2, v0, v1}, Llibcore/io/Memory;->pokeShort(JSZ)V

    .line 388
    return-object p0
.end method

.method private greylist-max-o putDouble(JD)Ljava/nio/ByteBuffer;
    .registers 8
    .param p1, "a"    # J
    .param p3, "x"    # D

    .line 900
    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 901
    .local v0, "y":J
    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-static {p1, p2, v0, v1, v2}, Llibcore/io/Memory;->pokeLong(JJZ)V

    .line 902
    return-object p0
.end method

.method private greylist-max-o putFloat(JF)Ljava/nio/ByteBuffer;
    .registers 6
    .param p1, "a"    # J
    .param p3, "x"    # F

    .line 796
    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 797
    .local v0, "y":I
    iget-boolean v1, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {p1, p2, v0, v1}, Llibcore/io/Memory;->pokeInt(JIZ)V

    .line 798
    return-object p0
.end method

.method private greylist-max-o putInt(JI)Ljava/nio/ByteBuffer;
    .registers 5
    .param p1, "a"    # J
    .param p3, "x"    # I

    .line 591
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, p2, p3, v0}, Llibcore/io/Memory;->pokeInt(JIZ)V

    .line 592
    return-object p0
.end method

.method private greylist-max-o putLong(JJ)Ljava/nio/ByteBuffer;
    .registers 6
    .param p1, "a"    # J
    .param p3, "x"    # J

    .line 693
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, p2, p3, p4, v0}, Llibcore/io/Memory;->pokeLong(JJZ)V

    .line 694
    return-object p0
.end method

.method private greylist-max-o putShort(JS)Ljava/nio/ByteBuffer;
    .registers 5
    .param p1, "a"    # J
    .param p3, "x"    # S

    .line 489
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, p2, p3, v0}, Llibcore/io/Memory;->pokeShort(JSZ)V

    .line 490
    return-object p0
.end method


# virtual methods
.method final greylist-max-o _get(I)B
    .registers 3
    .param p1, "i"    # I

    .line 337
    invoke-virtual {p0, p1}, Ljava/nio/DirectByteBuffer;->get(I)B

    move-result v0

    return v0
.end method

.method final greylist-max-o _put(IB)V
    .registers 3
    .param p1, "i"    # I
    .param p2, "b"    # B

    .line 343
    invoke-virtual {p0, p1, p2}, Ljava/nio/DirectByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 344
    return-void
.end method

.method public final blacklist test-api address()J
    .registers 3

    .line 200
    iget-wide v0, p0, Ljava/nio/DirectByteBuffer;->address:J

    return-wide v0
.end method

.method public final whitelist test-api asCharBuffer()Ljava/nio/CharBuffer;
    .registers 14

    .line 434
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isFreed:Z

    if-nez v0, :cond_29

    .line 437
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v0

    .line 438
    .local v0, "off":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v9

    .line 439
    .local v9, "lim":I
    nop

    .line 440
    if-gt v0, v9, :cond_14

    sub-int v1, v9, v0

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    move v10, v1

    .line 441
    .local v10, "rem":I
    shr-int/lit8 v11, v10, 0x1

    .line 442
    .local v11, "size":I
    new-instance v12, Ljava/nio/ByteBufferAsCharBuffer;

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 448
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v8

    move-object v1, v12

    move-object v2, p0

    move v5, v11

    move v6, v11

    move v7, v0

    invoke-direct/range {v1 .. v8}, Ljava/nio/ByteBufferAsCharBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    .line 442
    return-object v12

    .line 435
    .end local v0    # "off":I
    .end local v9    # "lim":I
    .end local v10    # "rem":I
    .end local v11    # "size":I
    :cond_29
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer has been freed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api asDoubleBuffer()Ljava/nio/DoubleBuffer;
    .registers 14

    .line 948
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isFreed:Z

    if-nez v0, :cond_29

    .line 951
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v0

    .line 952
    .local v0, "off":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v9

    .line 953
    .local v9, "lim":I
    nop

    .line 954
    if-gt v0, v9, :cond_14

    sub-int v1, v9, v0

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    move v10, v1

    .line 956
    .local v10, "rem":I
    shr-int/lit8 v11, v10, 0x3

    .line 957
    .local v11, "size":I
    new-instance v12, Ljava/nio/ByteBufferAsDoubleBuffer;

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 963
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v8

    move-object v1, v12

    move-object v2, p0

    move v5, v11

    move v6, v11

    move v7, v0

    invoke-direct/range {v1 .. v8}, Ljava/nio/ByteBufferAsDoubleBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    .line 957
    return-object v12

    .line 949
    .end local v0    # "off":I
    .end local v9    # "lim":I
    .end local v10    # "rem":I
    .end local v11    # "size":I
    :cond_29
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer has been freed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api asFloatBuffer()Ljava/nio/FloatBuffer;
    .registers 14

    .line 844
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isFreed:Z

    if-nez v0, :cond_29

    .line 847
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v0

    .line 848
    .local v0, "off":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v9

    .line 849
    .local v9, "lim":I
    nop

    .line 850
    if-gt v0, v9, :cond_14

    sub-int v1, v9, v0

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    move v10, v1

    .line 851
    .local v10, "rem":I
    shr-int/lit8 v11, v10, 0x2

    .line 852
    .local v11, "size":I
    new-instance v12, Ljava/nio/ByteBufferAsFloatBuffer;

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 858
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v8

    move-object v1, v12

    move-object v2, p0

    move v5, v11

    move v6, v11

    move v7, v0

    invoke-direct/range {v1 .. v8}, Ljava/nio/ByteBufferAsFloatBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    .line 852
    return-object v12

    .line 845
    .end local v0    # "off":I
    .end local v9    # "lim":I
    .end local v10    # "rem":I
    .end local v11    # "size":I
    :cond_29
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer has been freed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api asIntBuffer()Ljava/nio/IntBuffer;
    .registers 14

    .line 638
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isFreed:Z

    if-nez v0, :cond_29

    .line 641
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v0

    .line 642
    .local v0, "off":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v9

    .line 643
    .local v9, "lim":I
    nop

    .line 644
    if-gt v0, v9, :cond_14

    sub-int v1, v9, v0

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    move v10, v1

    .line 645
    .local v10, "rem":I
    shr-int/lit8 v11, v10, 0x2

    .line 646
    .local v11, "size":I
    new-instance v12, Ljava/nio/ByteBufferAsIntBuffer;

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 652
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v8

    move-object v1, v12

    move-object v2, p0

    move v5, v11

    move v6, v11

    move v7, v0

    invoke-direct/range {v1 .. v8}, Ljava/nio/ByteBufferAsIntBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    .line 646
    return-object v12

    .line 639
    .end local v0    # "off":I
    .end local v9    # "lim":I
    .end local v10    # "rem":I
    .end local v11    # "size":I
    :cond_29
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer has been freed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api asLongBuffer()Ljava/nio/LongBuffer;
    .registers 14

    .line 740
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isFreed:Z

    if-nez v0, :cond_29

    .line 743
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v0

    .line 744
    .local v0, "off":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v9

    .line 745
    .local v9, "lim":I
    nop

    .line 746
    if-gt v0, v9, :cond_14

    sub-int v1, v9, v0

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    move v10, v1

    .line 747
    .local v10, "rem":I
    shr-int/lit8 v11, v10, 0x3

    .line 748
    .local v11, "size":I
    new-instance v12, Ljava/nio/ByteBufferAsLongBuffer;

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 754
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v8

    move-object v1, v12

    move-object v2, p0

    move v5, v11

    move v6, v11

    move v7, v0

    invoke-direct/range {v1 .. v8}, Ljava/nio/ByteBufferAsLongBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    .line 748
    return-object v12

    .line 741
    .end local v0    # "off":I
    .end local v9    # "lim":I
    .end local v10    # "rem":I
    .end local v11    # "size":I
    :cond_29
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer has been freed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api asReadOnlyBuffer()Ljava/nio/ByteBuffer;
    .registers 10

    .line 186
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isFreed:Z

    if-nez v0, :cond_22

    .line 189
    new-instance v0, Ljava/nio/DirectByteBuffer;

    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    .line 190
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->markValue()I

    move-result v3

    .line 191
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v4

    .line 192
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v5

    .line 193
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->capacity()I

    move-result v6

    iget v7, p0, Ljava/nio/DirectByteBuffer;->offset:I

    const/4 v8, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/nio/DirectByteBuffer;-><init>(Ljava/nio/DirectByteBuffer$MemoryRef;IIIIIZ)V

    .line 189
    return-object v0

    .line 187
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer has been freed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api asShortBuffer()Ljava/nio/ShortBuffer;
    .registers 14

    .line 536
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isFreed:Z

    if-nez v0, :cond_29

    .line 539
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v0

    .line 540
    .local v0, "off":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v9

    .line 541
    .local v9, "lim":I
    nop

    .line 542
    if-gt v0, v9, :cond_14

    sub-int v1, v9, v0

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    move v10, v1

    .line 543
    .local v10, "rem":I
    shr-int/lit8 v11, v10, 0x1

    .line 544
    .local v11, "size":I
    new-instance v12, Ljava/nio/ByteBufferAsShortBuffer;

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 550
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v8

    move-object v1, v12

    move-object v2, p0

    move v5, v11

    move v6, v11

    move v7, v0

    invoke-direct/range {v1 .. v8}, Ljava/nio/ByteBufferAsShortBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    .line 544
    return-object v12

    .line 537
    .end local v0    # "off":I
    .end local v9    # "lim":I
    .end local v10    # "rem":I
    .end local v11    # "size":I
    :cond_29
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer has been freed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final blacklist attachment()Ljava/lang/Object;
    .registers 2

    .line 148
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    return-object v0
.end method

.method public final greylist cleaner()Lsun/misc/Cleaner;
    .registers 2

    .line 153
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->cleaner:Lsun/misc/Cleaner;

    return-object v0
.end method

.method public final whitelist test-api compact()Ljava/nio/ByteBuffer;
    .registers 9

    .line 307
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_3f

    .line 310
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-nez v0, :cond_39

    .line 313
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v0

    .line 314
    .local v0, "pos":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v1

    .line 315
    .local v1, "lim":I
    nop

    .line 316
    if-gt v0, v1, :cond_18

    sub-int v2, v1, v0

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    .line 317
    .local v2, "rem":I
    :goto_19
    iget-object v3, p0, Ljava/nio/DirectByteBuffer;->hb:[B

    iget v4, p0, Ljava/nio/DirectByteBuffer;->position:I

    iget v5, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v4, v5

    iget-object v5, p0, Ljava/nio/DirectByteBuffer;->hb:[B

    iget v6, p0, Ljava/nio/DirectByteBuffer;->offset:I

    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->remaining()I

    move-result v7

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 318
    invoke-virtual {p0, v2}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 319
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/nio/DirectByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 320
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->discardMark()V

    .line 321
    return-object p0

    .line 311
    .end local v0    # "pos":I
    .end local v1    # "lim":I
    .end local v2    # "rem":I
    :cond_39
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 308
    :cond_3f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api duplicate()Ljava/nio/ByteBuffer;
    .registers 10

    .line 172
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isFreed:Z

    if-nez v0, :cond_23

    .line 175
    new-instance v0, Ljava/nio/DirectByteBuffer;

    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    .line 176
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->markValue()I

    move-result v3

    .line 177
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v4

    .line 178
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v5

    .line 179
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->capacity()I

    move-result v6

    iget v7, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget-boolean v8, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/nio/DirectByteBuffer;-><init>(Ljava/nio/DirectByteBuffer$MemoryRef;IIIIIZ)V

    .line 175
    return-object v0

    .line 173
    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer has been freed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api get()B
    .registers 3

    .line 213
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_13

    .line 216
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->nextGetIndex()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->get(J)B

    move-result v0

    return v0

    .line 214
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api get(I)B
    .registers 4
    .param p1, "i"    # I

    .line 221
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_13

    .line 224
    invoke-virtual {p0, p1}, Ljava/nio/DirectByteBuffer;->checkIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->get(J)B

    move-result v0

    return v0

    .line 222
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api get([BII)Ljava/nio/ByteBuffer;
    .registers 9
    .param p1, "dst"    # [B
    .param p2, "dstOffset"    # I
    .param p3, "length"    # I

    .line 230
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_2d

    .line 233
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/DirectByteBuffer;->checkBounds(III)V

    .line 234
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v0

    .line 235
    .local v0, "pos":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v1

    .line 236
    .local v1, "lim":I
    nop

    .line 237
    if-gt v0, v1, :cond_18

    sub-int v2, v1, v0

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    .line 238
    .local v2, "rem":I
    :goto_19
    if-gt p3, v2, :cond_27

    .line 240
    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v3

    invoke-static {v3, v4, p1, p2, p3}, Llibcore/io/Memory;->peekByteArray(J[BII)V

    .line 242
    add-int v3, v0, p3

    iput v3, p0, Ljava/nio/DirectByteBuffer;->position:I

    .line 243
    return-object p0

    .line 239
    :cond_27
    new-instance v3, Ljava/nio/BufferUnderflowException;

    invoke-direct {v3}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v3

    .line 231
    .end local v0    # "pos":I
    .end local v1    # "lim":I
    .end local v2    # "rem":I
    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api getChar()C
    .registers 5

    .line 348
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_28

    .line 351
    iget v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/lit8 v0, v0, 0x2

    .line 352
    .local v0, "newPosition":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v1

    if-gt v0, v1, :cond_22

    .line 355
    iget v1, p0, Ljava/nio/DirectByteBuffer;->position:I

    invoke-direct {p0, v1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v1

    iget-boolean v3, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-static {v1, v2, v3}, Llibcore/io/Memory;->peekShort(JZ)S

    move-result v1

    int-to-char v1, v1

    .line 356
    .local v1, "x":C
    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    .line 357
    return v1

    .line 353
    .end local v1    # "x":C
    :cond_22
    new-instance v1, Ljava/nio/BufferUnderflowException;

    invoke-direct {v1}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v1

    .line 349
    .end local v0    # "newPosition":I
    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api getChar(I)C
    .registers 5
    .param p1, "i"    # I

    .line 362
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_18

    .line 365
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    .line 366
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1, v2}, Llibcore/io/Memory;->peekShort(JZ)S

    move-result v0

    int-to-char v0, v0

    return v0

    .line 363
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o getCharUnchecked(I)C
    .registers 5
    .param p1, "i"    # I

    .line 371
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_14

    .line 374
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1, v2}, Llibcore/io/Memory;->peekShort(JZ)S

    move-result v0

    int-to-char v0, v0

    return v0

    .line 372
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api getDouble()D
    .registers 3

    .line 868
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_15

    .line 871
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextGetIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getDouble(J)D

    move-result-wide v0

    return-wide v0

    .line 869
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api getDouble(I)D
    .registers 4
    .param p1, "i"    # I

    .line 876
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_15

    .line 879
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getDouble(J)D

    move-result-wide v0

    return-wide v0

    .line 877
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final greylist-max-o getDoubleUnchecked(I)D
    .registers 4
    .param p1, "i"    # I

    .line 884
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_f

    .line 887
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getDouble(J)D

    move-result-wide v0

    return-wide v0

    .line 885
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api getFloat()F
    .registers 3

    .line 764
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_14

    .line 767
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextGetIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getFloat(J)F

    move-result v0

    return v0

    .line 765
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api getFloat(I)F
    .registers 4
    .param p1, "i"    # I

    .line 772
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_14

    .line 775
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getFloat(J)F

    move-result v0

    return v0

    .line 773
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final greylist-max-o getFloatUnchecked(I)F
    .registers 4
    .param p1, "i"    # I

    .line 780
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_f

    .line 783
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getFloat(J)F

    move-result v0

    return v0

    .line 781
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getInt()I
    .registers 3

    .line 559
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_14

    .line 562
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextGetIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getInt(J)I

    move-result v0

    return v0

    .line 560
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getInt(I)I
    .registers 4
    .param p1, "i"    # I

    .line 567
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_14

    .line 570
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getInt(J)I

    move-result v0

    return v0

    .line 568
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final greylist-max-o getIntUnchecked(I)I
    .registers 4
    .param p1, "i"    # I

    .line 575
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_f

    .line 578
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getInt(J)I

    move-result v0

    return v0

    .line 576
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api getLong()J
    .registers 3

    .line 661
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_15

    .line 664
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextGetIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getLong(J)J

    move-result-wide v0

    return-wide v0

    .line 662
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api getLong(I)J
    .registers 4
    .param p1, "i"    # I

    .line 669
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_15

    .line 672
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getLong(J)J

    move-result-wide v0

    return-wide v0

    .line 670
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final greylist-max-o getLongUnchecked(I)J
    .registers 4
    .param p1, "i"    # I

    .line 677
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_f

    .line 680
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getLong(J)J

    move-result-wide v0

    return-wide v0

    .line 678
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api getShort()S
    .registers 3

    .line 457
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_14

    .line 460
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextGetIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getShort(J)S

    move-result v0

    return v0

    .line 458
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api getShort(I)S
    .registers 4
    .param p1, "i"    # I

    .line 465
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_14

    .line 468
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getShort(J)S

    move-result v0

    return v0

    .line 466
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o getShortUnchecked(I)S
    .registers 4
    .param p1, "i"    # I

    .line 473
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_f

    .line 476
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getShort(J)S

    move-result v0

    return v0

    .line 474
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o getUnchecked(I[CII)V
    .registers 12
    .param p1, "pos"    # I
    .param p2, "dst"    # [C
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    .line 379
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_15

    .line 382
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v1

    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v6, v0, 0x1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v1 .. v6}, Llibcore/io/Memory;->peekCharArray(J[CIIZ)V

    .line 384
    return-void

    .line 380
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final greylist-max-o getUnchecked(I[DII)V
    .registers 12
    .param p1, "pos"    # I
    .param p2, "dst"    # [D
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    .line 892
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_15

    .line 895
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v1

    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v6, v0, 0x1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v1 .. v6}, Llibcore/io/Memory;->peekDoubleArray(J[DIIZ)V

    .line 897
    return-void

    .line 893
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final greylist-max-o getUnchecked(I[FII)V
    .registers 12
    .param p1, "pos"    # I
    .param p2, "dst"    # [F
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    .line 788
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_15

    .line 791
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v1

    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v6, v0, 0x1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v1 .. v6}, Llibcore/io/Memory;->peekFloatArray(J[FIIZ)V

    .line 793
    return-void

    .line 789
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final greylist-max-o getUnchecked(I[III)V
    .registers 12
    .param p1, "pos"    # I
    .param p2, "dst"    # [I
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    .line 583
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_15

    .line 586
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v1

    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v6, v0, 0x1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v1 .. v6}, Llibcore/io/Memory;->peekIntArray(J[IIIZ)V

    .line 588
    return-void

    .line 584
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final greylist-max-o getUnchecked(I[JII)V
    .registers 12
    .param p1, "pos"    # I
    .param p2, "dst"    # [J
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    .line 685
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_15

    .line 688
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v1

    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v6, v0, 0x1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v1 .. v6}, Llibcore/io/Memory;->peekLongArray(J[JIIZ)V

    .line 690
    return-void

    .line 686
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o getUnchecked(I[SII)V
    .registers 12
    .param p1, "pos"    # I
    .param p2, "dst"    # [S
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    .line 481
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_15

    .line 484
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v1

    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v6, v0, 0x1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v1 .. v6}, Llibcore/io/Memory;->peekShortArray(J[SIIZ)V

    .line 486
    return-void

    .line 482
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final greylist-max-o isAccessible()Z
    .registers 2

    .line 968
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    return v0
.end method

.method public final whitelist test-api isDirect()Z
    .registers 2

    .line 326
    const/4 v0, 0x1

    return v0
.end method

.method public final whitelist test-api isReadOnly()Z
    .registers 2

    .line 331
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    return v0
.end method

.method public final whitelist test-api put(B)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "x"    # B

    .line 261
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_1c

    .line 264
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-nez v0, :cond_16

    .line 267
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->nextPutIndex()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Ljava/nio/DirectByteBuffer;->put(JB)Ljava/nio/ByteBuffer;

    .line 268
    return-object p0

    .line 265
    :cond_16
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 262
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api put(IB)Ljava/nio/ByteBuffer;
    .registers 5
    .param p1, "i"    # I
    .param p2, "x"    # B

    .line 273
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_1c

    .line 276
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-nez v0, :cond_16

    .line 279
    invoke-virtual {p0, p1}, Ljava/nio/DirectByteBuffer;->checkIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Ljava/nio/DirectByteBuffer;->put(JB)Ljava/nio/ByteBuffer;

    .line 280
    return-object p0

    .line 277
    :cond_16
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 274
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "src"    # Ljava/nio/ByteBuffer;

    .line 253
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_b

    .line 256
    invoke-super {p0, p1}, Ljava/nio/MappedByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 254
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api put([BII)Ljava/nio/ByteBuffer;
    .registers 9
    .param p1, "src"    # [B
    .param p2, "srcOffset"    # I
    .param p3, "length"    # I

    .line 286
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_37

    .line 289
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-nez v0, :cond_31

    .line 292
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/DirectByteBuffer;->checkBounds(III)V

    .line 293
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v0

    .line 294
    .local v0, "pos":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v1

    .line 295
    .local v1, "lim":I
    nop

    .line 296
    if-gt v0, v1, :cond_1c

    sub-int v2, v1, v0

    goto :goto_1d

    :cond_1c
    const/4 v2, 0x0

    .line 297
    .local v2, "rem":I
    :goto_1d
    if-gt p3, v2, :cond_2b

    .line 299
    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v3

    invoke-static {v3, v4, p1, p2, p3}, Llibcore/io/Memory;->pokeByteArray(J[BII)V

    .line 301
    add-int v3, v0, p3

    iput v3, p0, Ljava/nio/DirectByteBuffer;->position:I

    .line 302
    return-object p0

    .line 298
    :cond_2b
    new-instance v3, Ljava/nio/BufferOverflowException;

    invoke-direct {v3}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v3

    .line 290
    .end local v0    # "pos":I
    .end local v1    # "lim":I
    .end local v2    # "rem":I
    :cond_31
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 287
    :cond_37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api putChar(C)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "x"    # C

    .line 393
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_1d

    .line 396
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-nez v0, :cond_17

    .line 399
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Ljava/nio/DirectByteBuffer;->putChar(JC)Ljava/nio/ByteBuffer;

    .line 400
    return-object p0

    .line 397
    :cond_17
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 394
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api putChar(IC)Ljava/nio/ByteBuffer;
    .registers 5
    .param p1, "i"    # I
    .param p2, "x"    # C

    .line 405
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_1d

    .line 408
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-nez v0, :cond_17

    .line 411
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Ljava/nio/DirectByteBuffer;->putChar(JC)Ljava/nio/ByteBuffer;

    .line 412
    return-object p0

    .line 409
    :cond_17
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 406
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o putCharUnchecked(IC)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "x"    # C

    .line 417
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_e

    .line 420
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Ljava/nio/DirectByteBuffer;->putChar(JC)Ljava/nio/ByteBuffer;

    .line 421
    return-void

    .line 418
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api putDouble(D)Ljava/nio/ByteBuffer;
    .registers 5
    .param p1, "x"    # D

    .line 907
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_1e

    .line 910
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-nez v0, :cond_18

    .line 913
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Ljava/nio/DirectByteBuffer;->putDouble(JD)Ljava/nio/ByteBuffer;

    .line 914
    return-object p0

    .line 911
    :cond_18
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 908
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api putDouble(ID)Ljava/nio/ByteBuffer;
    .registers 6
    .param p1, "i"    # I
    .param p2, "x"    # D

    .line 919
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_1e

    .line 922
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-nez v0, :cond_18

    .line 925
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2, p3}, Ljava/nio/DirectByteBuffer;->putDouble(JD)Ljava/nio/ByteBuffer;

    .line 926
    return-object p0

    .line 923
    :cond_18
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 920
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final greylist-max-o putDoubleUnchecked(ID)V
    .registers 6
    .param p1, "i"    # I
    .param p2, "x"    # D

    .line 931
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_e

    .line 934
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2, p3}, Ljava/nio/DirectByteBuffer;->putDouble(JD)Ljava/nio/ByteBuffer;

    .line 935
    return-void

    .line 932
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api putFloat(F)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "x"    # F

    .line 803
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_1d

    .line 806
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-nez v0, :cond_17

    .line 809
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Ljava/nio/DirectByteBuffer;->putFloat(JF)Ljava/nio/ByteBuffer;

    .line 810
    return-object p0

    .line 807
    :cond_17
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 804
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api putFloat(IF)Ljava/nio/ByteBuffer;
    .registers 5
    .param p1, "i"    # I
    .param p2, "x"    # F

    .line 815
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_1d

    .line 818
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-nez v0, :cond_17

    .line 821
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Ljava/nio/DirectByteBuffer;->putFloat(JF)Ljava/nio/ByteBuffer;

    .line 822
    return-object p0

    .line 819
    :cond_17
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 816
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final greylist-max-o putFloatUnchecked(IF)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "x"    # F

    .line 827
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_e

    .line 830
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Ljava/nio/DirectByteBuffer;->putFloat(JF)Ljava/nio/ByteBuffer;

    .line 831
    return-void

    .line 828
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api putInt(I)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "x"    # I

    .line 597
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_1d

    .line 600
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-nez v0, :cond_17

    .line 603
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Ljava/nio/DirectByteBuffer;->putInt(JI)Ljava/nio/ByteBuffer;

    .line 604
    return-object p0

    .line 601
    :cond_17
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 598
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api putInt(II)Ljava/nio/ByteBuffer;
    .registers 5
    .param p1, "i"    # I
    .param p2, "x"    # I

    .line 609
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_1d

    .line 612
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-nez v0, :cond_17

    .line 615
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Ljava/nio/DirectByteBuffer;->putInt(JI)Ljava/nio/ByteBuffer;

    .line 616
    return-object p0

    .line 613
    :cond_17
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 610
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final greylist-max-o putIntUnchecked(II)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "x"    # I

    .line 621
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_e

    .line 624
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Ljava/nio/DirectByteBuffer;->putInt(JI)Ljava/nio/ByteBuffer;

    .line 625
    return-void

    .line 622
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api putLong(IJ)Ljava/nio/ByteBuffer;
    .registers 6
    .param p1, "i"    # I
    .param p2, "x"    # J

    .line 711
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_1e

    .line 714
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-nez v0, :cond_18

    .line 717
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2, p3}, Ljava/nio/DirectByteBuffer;->putLong(JJ)Ljava/nio/ByteBuffer;

    .line 718
    return-object p0

    .line 715
    :cond_18
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 712
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api putLong(J)Ljava/nio/ByteBuffer;
    .registers 5
    .param p1, "x"    # J

    .line 699
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_1e

    .line 702
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-nez v0, :cond_18

    .line 705
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Ljava/nio/DirectByteBuffer;->putLong(JJ)Ljava/nio/ByteBuffer;

    .line 706
    return-object p0

    .line 703
    :cond_18
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 700
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final greylist-max-o putLongUnchecked(IJ)V
    .registers 6
    .param p1, "i"    # I
    .param p2, "x"    # J

    .line 723
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_e

    .line 726
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2, p3}, Ljava/nio/DirectByteBuffer;->putLong(JJ)Ljava/nio/ByteBuffer;

    .line 727
    return-void

    .line 724
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api putShort(IS)Ljava/nio/ByteBuffer;
    .registers 5
    .param p1, "i"    # I
    .param p2, "x"    # S

    .line 507
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_1d

    .line 510
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-nez v0, :cond_17

    .line 513
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Ljava/nio/DirectByteBuffer;->putShort(JS)Ljava/nio/ByteBuffer;

    .line 514
    return-object p0

    .line 511
    :cond_17
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 508
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api putShort(S)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "x"    # S

    .line 495
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_1d

    .line 498
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-nez v0, :cond_17

    .line 501
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Ljava/nio/DirectByteBuffer;->putShort(JS)Ljava/nio/ByteBuffer;

    .line 502
    return-object p0

    .line 499
    :cond_17
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 496
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o putShortUnchecked(IS)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "x"    # S

    .line 519
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_e

    .line 522
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Ljava/nio/DirectByteBuffer;->putShort(JS)Ljava/nio/ByteBuffer;

    .line 523
    return-void

    .line 520
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o putUnchecked(I[CII)V
    .registers 12
    .param p1, "pos"    # I
    .param p2, "src"    # [C
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    .line 425
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_15

    .line 428
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v1

    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v6, v0, 0x1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v1 .. v6}, Llibcore/io/Memory;->pokeCharArray(J[CIIZ)V

    .line 430
    return-void

    .line 426
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final greylist-max-o putUnchecked(I[DII)V
    .registers 12
    .param p1, "pos"    # I
    .param p2, "src"    # [D
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    .line 939
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_15

    .line 942
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v1

    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v6, v0, 0x1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v1 .. v6}, Llibcore/io/Memory;->pokeDoubleArray(J[DIIZ)V

    .line 944
    return-void

    .line 940
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final greylist-max-o putUnchecked(I[FII)V
    .registers 12
    .param p1, "pos"    # I
    .param p2, "src"    # [F
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    .line 835
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_15

    .line 838
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v1

    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v6, v0, 0x1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v1 .. v6}, Llibcore/io/Memory;->pokeFloatArray(J[FIIZ)V

    .line 840
    return-void

    .line 836
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final greylist-max-o putUnchecked(I[III)V
    .registers 12
    .param p1, "pos"    # I
    .param p2, "src"    # [I
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    .line 629
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_15

    .line 632
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v1

    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v6, v0, 0x1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v1 .. v6}, Llibcore/io/Memory;->pokeIntArray(J[IIIZ)V

    .line 634
    return-void

    .line 630
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final greylist-max-o putUnchecked(I[JII)V
    .registers 12
    .param p1, "pos"    # I
    .param p2, "src"    # [J
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    .line 731
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_15

    .line 734
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v1

    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v6, v0, 0x1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v1 .. v6}, Llibcore/io/Memory;->pokeLongArray(J[JIIZ)V

    .line 736
    return-void

    .line 732
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o putUnchecked(I[SII)V
    .registers 12
    .param p1, "pos"    # I
    .param p2, "src"    # [S
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    .line 527
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_15

    .line 530
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v1

    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v6, v0, 0x1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v1 .. v6}, Llibcore/io/Memory;->pokeShortArray(J[SIIZ)V

    .line 532
    return-void

    .line 528
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final greylist-max-o test-api setAccessible(Z)V
    .registers 3
    .param p1, "value"    # Z

    .line 973
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iput-boolean p1, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    .line 974
    return-void
.end method

.method public final whitelist test-api slice()Ljava/nio/ByteBuffer;
    .registers 13

    .line 158
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_29

    .line 161
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v0

    .line 162
    .local v0, "pos":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v1

    .line 163
    .local v1, "lim":I
    nop

    .line 164
    if-gt v0, v1, :cond_14

    sub-int v2, v1, v0

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    move v7, v2

    .line 165
    .local v7, "rem":I
    iget v2, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v2, v0

    .line 166
    .local v2, "off":I
    nop

    .line 167
    new-instance v11, Ljava/nio/DirectByteBuffer;

    iget-object v4, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    const/4 v5, -0x1

    const/4 v6, 0x0

    iget-boolean v10, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    move-object v3, v11

    move v8, v7

    move v9, v2

    invoke-direct/range {v3 .. v10}, Ljava/nio/DirectByteBuffer;-><init>(Ljava/nio/DirectByteBuffer$MemoryRef;IIIIIZ)V

    return-object v11

    .line 159
    .end local v0    # "pos":I
    .end local v1    # "lim":I
    .end local v2    # "off":I
    .end local v7    # "rem":I
    :cond_29
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
