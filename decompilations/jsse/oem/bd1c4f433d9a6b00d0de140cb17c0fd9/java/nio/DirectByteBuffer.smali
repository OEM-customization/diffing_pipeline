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
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field final cleaner:Lsun/misc/Cleaner;

.field final memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/nio/DirectByteBuffer;->-assertionsDisabled:Z

    .line 39
    return-void
.end method

.method public constructor <init>(IJLjava/io/FileDescriptor;Ljava/lang/Runnable;Z)V
    .registers 13
    .param p1, "cap"    # I
    .param p2, "addr"    # J
    .param p4, "fd"    # Ljava/io/FileDescriptor;
    .param p5, "unmapper"    # Ljava/lang/Runnable;
    .param p6, "isReadOnly"    # Z

    .prologue
    .line 123
    const/4 v1, -0x1

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ljava/nio/MappedByteBuffer;-><init>(IIIILjava/io/FileDescriptor;)V

    .line 124
    iput-boolean p6, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    .line 125
    new-instance v0, Ljava/nio/DirectByteBuffer$MemoryRef;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Ljava/nio/DirectByteBuffer$MemoryRef;-><init>(JLjava/lang/Object;)V

    iput-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    .line 126
    iput-wide p2, p0, Ljava/nio/DirectByteBuffer;->address:J

    .line 127
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    invoke-static {v0, p5}, Lsun/misc/Cleaner;->create(Ljava/lang/Object;Ljava/lang/Runnable;)Lsun/misc/Cleaner;

    move-result-object v0

    iput-object v0, p0, Ljava/nio/DirectByteBuffer;->cleaner:Lsun/misc/Cleaner;

    .line 128
    return-void
.end method

.method constructor <init>(ILjava/nio/DirectByteBuffer$MemoryRef;)V
    .registers 10
    .param p1, "capacity"    # I
    .param p2, "memoryRef"    # Ljava/nio/DirectByteBuffer$MemoryRef;

    .prologue
    const/4 v2, 0x0

    .line 100
    iget-object v5, p2, Ljava/nio/DirectByteBuffer$MemoryRef;->buffer:[B

    iget v6, p2, Ljava/nio/DirectByteBuffer$MemoryRef;->offset:I

    const/4 v1, -0x1

    move-object v0, p0

    move v3, p1

    move v4, p1

    invoke-direct/range {v0 .. v6}, Ljava/nio/MappedByteBuffer;-><init>(IIII[BI)V

    .line 103
    iput-object p2, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    .line 104
    iget-wide v0, p2, Ljava/nio/DirectByteBuffer$MemoryRef;->allocatedAddress:J

    iget v3, p2, Ljava/nio/DirectByteBuffer$MemoryRef;->offset:I

    int-to-long v4, v3

    add-long/2addr v0, v4

    iput-wide v0, p0, Ljava/nio/DirectByteBuffer;->address:J

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/DirectByteBuffer;->cleaner:Lsun/misc/Cleaner;

    .line 106
    iput-boolean v2, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    .line 107
    return-void
.end method

.method private constructor <init>(JI)V
    .registers 7
    .param p1, "addr"    # J
    .param p3, "cap"    # I

    .prologue
    .line 112
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p3, p3}, Ljava/nio/MappedByteBuffer;-><init>(IIII)V

    .line 113
    new-instance v0, Ljava/nio/DirectByteBuffer$MemoryRef;

    invoke-direct {v0, p1, p2, p0}, Ljava/nio/DirectByteBuffer$MemoryRef;-><init>(JLjava/lang/Object;)V

    iput-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    .line 114
    iput-wide p1, p0, Ljava/nio/DirectByteBuffer;->address:J

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/DirectByteBuffer;->cleaner:Lsun/misc/Cleaner;

    .line 116
    return-void
.end method

.method constructor <init>(Ljava/nio/DirectByteBuffer$MemoryRef;IIIII)V
    .registers 15
    .param p1, "memoryRef"    # Ljava/nio/DirectByteBuffer$MemoryRef;
    .param p2, "mark"    # I
    .param p3, "pos"    # I
    .param p4, "lim"    # I
    .param p5, "cap"    # I
    .param p6, "off"    # I

    .prologue
    .line 134
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Ljava/nio/DirectByteBuffer;-><init>(Ljava/nio/DirectByteBuffer$MemoryRef;IIIIIZ)V

    .line 135
    return-void
.end method

.method constructor <init>(Ljava/nio/DirectByteBuffer$MemoryRef;IIIIIZ)V
    .registers 15
    .param p1, "memoryRef"    # Ljava/nio/DirectByteBuffer$MemoryRef;
    .param p2, "mark"    # I
    .param p3, "pos"    # I
    .param p4, "lim"    # I
    .param p5, "cap"    # I
    .param p6, "off"    # I
    .param p7, "isReadOnly"    # Z

    .prologue
    .line 140
    iget-object v5, p1, Ljava/nio/DirectByteBuffer$MemoryRef;->buffer:[B

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Ljava/nio/MappedByteBuffer;-><init>(IIII[BI)V

    .line 141
    iput-boolean p7, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    .line 142
    iput-object p1, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    .line 143
    iget-wide v0, p1, Ljava/nio/DirectByteBuffer$MemoryRef;->allocatedAddress:J

    int-to-long v2, p6

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/nio/DirectByteBuffer;->address:J

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/DirectByteBuffer;->cleaner:Lsun/misc/Cleaner;

    .line 145
    return-void
.end method

.method private get(J)B
    .registers 4
    .param p1, "a"    # J

    .prologue
    .line 209
    invoke-static {p1, p2}, Llibcore/io/Memory;->peekByte(J)B

    move-result v0

    return v0
.end method

.method private getDouble(J)D
    .registers 8
    .param p1, "a"    # J

    .prologue
    .line 855
    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-static {p1, p2, v2}, Llibcore/io/Memory;->peekLong(JZ)J

    move-result-wide v0

    .line 856
    .local v0, "x":J
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    return-wide v2
.end method

.method private getFloat(J)F
    .registers 6
    .param p1, "a"    # J

    .prologue
    .line 751
    iget-boolean v1, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {p1, p2, v1}, Llibcore/io/Memory;->peekInt(JZ)I

    move-result v0

    .line 752
    .local v0, "x":I
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    return v1
.end method

.method private getInt(J)I
    .registers 4
    .param p1, "a"    # J

    .prologue
    .line 547
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, p2, v0}, Llibcore/io/Memory;->peekInt(JZ)I

    move-result v0

    return v0
.end method

.method private getLong(J)J
    .registers 6
    .param p1, "a"    # J

    .prologue
    .line 649
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, p2, v0}, Llibcore/io/Memory;->peekLong(JZ)J

    move-result-wide v0

    return-wide v0
.end method

.method private getShort(J)S
    .registers 4
    .param p1, "a"    # J

    .prologue
    .line 445
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, p2, v0}, Llibcore/io/Memory;->peekShort(JZ)S

    move-result v0

    return v0
.end method

.method private ix(I)J
    .registers 6
    .param p1, "i"    # I

    .prologue
    .line 205
    iget-wide v0, p0, Ljava/nio/DirectByteBuffer;->address:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private put(JB)Ljava/nio/ByteBuffer;
    .registers 5
    .param p1, "a"    # J
    .param p3, "x"    # B

    .prologue
    .line 248
    invoke-static {p1, p2, p3}, Llibcore/io/Memory;->pokeByte(JB)V

    .line 249
    return-object p0
.end method

.method private putChar(JC)Ljava/nio/ByteBuffer;
    .registers 7
    .param p1, "a"    # J
    .param p3, "x"    # C

    .prologue
    .line 380
    int-to-short v0, p3

    iget-boolean v1, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {p1, p2, v0, v1}, Llibcore/io/Memory;->pokeShort(JSZ)V

    .line 381
    return-object p0
.end method

.method private putDouble(JD)Ljava/nio/ByteBuffer;
    .registers 8
    .param p1, "a"    # J
    .param p3, "x"    # D

    .prologue
    .line 893
    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 894
    .local v0, "y":J
    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-static {p1, p2, v0, v1, v2}, Llibcore/io/Memory;->pokeLong(JJZ)V

    .line 895
    return-object p0
.end method

.method private putFloat(JF)Ljava/nio/ByteBuffer;
    .registers 7
    .param p1, "a"    # J
    .param p3, "x"    # F

    .prologue
    .line 789
    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 790
    .local v0, "y":I
    iget-boolean v1, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {p1, p2, v0, v1}, Llibcore/io/Memory;->pokeInt(JIZ)V

    .line 791
    return-object p0
.end method

.method private putInt(JI)Ljava/nio/ByteBuffer;
    .registers 5
    .param p1, "a"    # J
    .param p3, "x"    # I

    .prologue
    .line 584
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, p2, p3, v0}, Llibcore/io/Memory;->pokeInt(JIZ)V

    .line 585
    return-object p0
.end method

.method private putLong(JJ)Ljava/nio/ByteBuffer;
    .registers 6
    .param p1, "a"    # J
    .param p3, "x"    # J

    .prologue
    .line 686
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, p2, p3, p4, v0}, Llibcore/io/Memory;->pokeLong(JJZ)V

    .line 687
    return-object p0
.end method

.method private putShort(JS)Ljava/nio/ByteBuffer;
    .registers 5
    .param p1, "a"    # J
    .param p3, "x"    # S

    .prologue
    .line 482
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, p2, p3, v0}, Llibcore/io/Memory;->pokeShort(JSZ)V

    .line 483
    return-object p0
.end method


# virtual methods
.method final _get(I)B
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 330
    invoke-virtual {p0, p1}, Ljava/nio/DirectByteBuffer;->get(I)B

    move-result v0

    return v0
.end method

.method final _put(IB)V
    .registers 3
    .param p1, "i"    # I
    .param p2, "b"    # B

    .prologue
    .line 336
    invoke-virtual {p0, p1, p2}, Ljava/nio/DirectByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 337
    return-void
.end method

.method public final address()J
    .registers 3

    .prologue
    .line 201
    iget-wide v0, p0, Ljava/nio/DirectByteBuffer;->address:J

    return-wide v0
.end method

.method public final asCharBuffer()Ljava/nio/CharBuffer;
    .registers 11

    .prologue
    .line 427
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isFreed:Z

    if-eqz v0, :cond_f

    .line 428
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer has been freed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 430
    :cond_f
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v6

    .line 431
    .local v6, "off":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v8

    .line 432
    .local v8, "lim":I
    sget-boolean v0, Ljava/nio/DirectByteBuffer;->-assertionsDisabled:Z

    if-nez v0, :cond_23

    if-le v6, v8, :cond_23

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 433
    :cond_23
    if-gt v6, v8, :cond_37

    sub-int v9, v8, v6

    .line 434
    .local v9, "rem":I
    :goto_27
    shr-int/lit8 v4, v9, 0x1

    .line 435
    .local v4, "size":I
    new-instance v0, Ljava/nio/ByteBufferAsCharBuffer;

    .line 441
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    .line 436
    const/4 v2, -0x1

    .line 437
    const/4 v3, 0x0

    move-object v1, p0

    move v5, v4

    .line 435
    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsCharBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0

    .line 433
    .end local v4    # "size":I
    .end local v9    # "rem":I
    :cond_37
    const/4 v9, 0x0

    .restart local v9    # "rem":I
    goto :goto_27
.end method

.method public final asDoubleBuffer()Ljava/nio/DoubleBuffer;
    .registers 11

    .prologue
    .line 941
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isFreed:Z

    if-eqz v0, :cond_f

    .line 942
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer has been freed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 944
    :cond_f
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v6

    .line 945
    .local v6, "off":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v8

    .line 946
    .local v8, "lim":I
    sget-boolean v0, Ljava/nio/DirectByteBuffer;->-assertionsDisabled:Z

    if-nez v0, :cond_23

    if-le v6, v8, :cond_23

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 947
    :cond_23
    if-gt v6, v8, :cond_37

    sub-int v9, v8, v6

    .line 949
    .local v9, "rem":I
    :goto_27
    shr-int/lit8 v4, v9, 0x3

    .line 950
    .local v4, "size":I
    new-instance v0, Ljava/nio/ByteBufferAsDoubleBuffer;

    .line 956
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    .line 951
    const/4 v2, -0x1

    .line 952
    const/4 v3, 0x0

    move-object v1, p0

    move v5, v4

    .line 950
    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsDoubleBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0

    .line 947
    .end local v4    # "size":I
    .end local v9    # "rem":I
    :cond_37
    const/4 v9, 0x0

    .restart local v9    # "rem":I
    goto :goto_27
.end method

.method public final asFloatBuffer()Ljava/nio/FloatBuffer;
    .registers 11

    .prologue
    .line 837
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isFreed:Z

    if-eqz v0, :cond_f

    .line 838
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer has been freed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 840
    :cond_f
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v6

    .line 841
    .local v6, "off":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v8

    .line 842
    .local v8, "lim":I
    sget-boolean v0, Ljava/nio/DirectByteBuffer;->-assertionsDisabled:Z

    if-nez v0, :cond_23

    if-le v6, v8, :cond_23

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 843
    :cond_23
    if-gt v6, v8, :cond_37

    sub-int v9, v8, v6

    .line 844
    .local v9, "rem":I
    :goto_27
    shr-int/lit8 v4, v9, 0x2

    .line 845
    .local v4, "size":I
    new-instance v0, Ljava/nio/ByteBufferAsFloatBuffer;

    .line 851
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    .line 846
    const/4 v2, -0x1

    .line 847
    const/4 v3, 0x0

    move-object v1, p0

    move v5, v4

    .line 845
    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsFloatBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0

    .line 843
    .end local v4    # "size":I
    .end local v9    # "rem":I
    :cond_37
    const/4 v9, 0x0

    .restart local v9    # "rem":I
    goto :goto_27
.end method

.method public final asIntBuffer()Ljava/nio/IntBuffer;
    .registers 11

    .prologue
    .line 631
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isFreed:Z

    if-eqz v0, :cond_f

    .line 632
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer has been freed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 634
    :cond_f
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v6

    .line 635
    .local v6, "off":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v8

    .line 636
    .local v8, "lim":I
    sget-boolean v0, Ljava/nio/DirectByteBuffer;->-assertionsDisabled:Z

    if-nez v0, :cond_23

    if-le v6, v8, :cond_23

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 637
    :cond_23
    if-gt v6, v8, :cond_37

    sub-int v9, v8, v6

    .line 638
    .local v9, "rem":I
    :goto_27
    shr-int/lit8 v4, v9, 0x2

    .line 639
    .local v4, "size":I
    new-instance v0, Ljava/nio/ByteBufferAsIntBuffer;

    .line 645
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    .line 640
    const/4 v2, -0x1

    .line 641
    const/4 v3, 0x0

    move-object v1, p0

    move v5, v4

    .line 639
    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsIntBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0

    .line 637
    .end local v4    # "size":I
    .end local v9    # "rem":I
    :cond_37
    const/4 v9, 0x0

    .restart local v9    # "rem":I
    goto :goto_27
.end method

.method public final asLongBuffer()Ljava/nio/LongBuffer;
    .registers 11

    .prologue
    .line 733
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isFreed:Z

    if-eqz v0, :cond_f

    .line 734
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer has been freed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 736
    :cond_f
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v6

    .line 737
    .local v6, "off":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v8

    .line 738
    .local v8, "lim":I
    sget-boolean v0, Ljava/nio/DirectByteBuffer;->-assertionsDisabled:Z

    if-nez v0, :cond_23

    if-le v6, v8, :cond_23

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 739
    :cond_23
    if-gt v6, v8, :cond_37

    sub-int v9, v8, v6

    .line 740
    .local v9, "rem":I
    :goto_27
    shr-int/lit8 v4, v9, 0x3

    .line 741
    .local v4, "size":I
    new-instance v0, Ljava/nio/ByteBufferAsLongBuffer;

    .line 747
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    .line 742
    const/4 v2, -0x1

    .line 743
    const/4 v3, 0x0

    move-object v1, p0

    move v5, v4

    .line 741
    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsLongBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0

    .line 739
    .end local v4    # "size":I
    .end local v9    # "rem":I
    :cond_37
    const/4 v9, 0x0

    .restart local v9    # "rem":I
    goto :goto_27
.end method

.method public final asReadOnlyBuffer()Ljava/nio/ByteBuffer;
    .registers 9

    .prologue
    .line 187
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isFreed:Z

    if-eqz v0, :cond_f

    .line 188
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer has been freed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_f
    new-instance v0, Ljava/nio/DirectByteBuffer;

    iget-object v1, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    .line 191
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->markValue()I

    move-result v2

    .line 192
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v3

    .line 193
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v4

    .line 194
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->capacity()I

    move-result v5

    .line 195
    iget v6, p0, Ljava/nio/DirectByteBuffer;->offset:I

    .line 196
    const/4 v7, 0x1

    .line 190
    invoke-direct/range {v0 .. v7}, Ljava/nio/DirectByteBuffer;-><init>(Ljava/nio/DirectByteBuffer$MemoryRef;IIIIIZ)V

    return-object v0
.end method

.method public final asShortBuffer()Ljava/nio/ShortBuffer;
    .registers 11

    .prologue
    .line 529
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isFreed:Z

    if-eqz v0, :cond_f

    .line 530
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer has been freed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 532
    :cond_f
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v6

    .line 533
    .local v6, "off":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v8

    .line 534
    .local v8, "lim":I
    sget-boolean v0, Ljava/nio/DirectByteBuffer;->-assertionsDisabled:Z

    if-nez v0, :cond_23

    if-le v6, v8, :cond_23

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 535
    :cond_23
    if-gt v6, v8, :cond_37

    sub-int v9, v8, v6

    .line 536
    .local v9, "rem":I
    :goto_27
    shr-int/lit8 v4, v9, 0x1

    .line 537
    .local v4, "size":I
    new-instance v0, Ljava/nio/ByteBufferAsShortBuffer;

    .line 543
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    .line 538
    const/4 v2, -0x1

    .line 539
    const/4 v3, 0x0

    move-object v1, p0

    move v5, v4

    .line 537
    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsShortBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0

    .line 535
    .end local v4    # "size":I
    .end local v9    # "rem":I
    :cond_37
    const/4 v9, 0x0

    .restart local v9    # "rem":I
    goto :goto_27
.end method

.method public final attachment()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    return-object v0
.end method

.method public final cleaner()Lsun/misc/Cleaner;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->cleaner:Lsun/misc/Cleaner;

    return-object v0
.end method

.method public final compact()Ljava/nio/ByteBuffer;
    .registers 9

    .prologue
    .line 300
    iget-object v3, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v3, v3, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v3, :cond_f

    .line 301
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "buffer is inaccessible"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 303
    :cond_f
    iget-boolean v3, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v3, :cond_19

    .line 304
    new-instance v3, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v3}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v3

    .line 306
    :cond_19
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v1

    .line 307
    .local v1, "pos":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v0

    .line 308
    .local v0, "lim":I
    sget-boolean v3, Ljava/nio/DirectByteBuffer;->-assertionsDisabled:Z

    if-nez v3, :cond_2d

    if-le v1, v0, :cond_2d

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 309
    :cond_2d
    if-gt v1, v0, :cond_51

    sub-int v2, v0, v1

    .line 310
    .local v2, "rem":I
    :goto_31
    iget-object v3, p0, Ljava/nio/DirectByteBuffer;->hb:[B

    iget v4, p0, Ljava/nio/DirectByteBuffer;->position:I

    iget v5, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v4, v5

    iget-object v5, p0, Ljava/nio/DirectByteBuffer;->hb:[B

    iget v6, p0, Ljava/nio/DirectByteBuffer;->offset:I

    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->remaining()I

    move-result v7

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 311
    invoke-virtual {p0, v2}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 312
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/nio/DirectByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 313
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->discardMark()V

    .line 314
    return-object p0

    .line 309
    .end local v2    # "rem":I
    :cond_51
    const/4 v2, 0x0

    .restart local v2    # "rem":I
    goto :goto_31
.end method

.method public final duplicate()Ljava/nio/ByteBuffer;
    .registers 9

    .prologue
    .line 173
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isFreed:Z

    if-eqz v0, :cond_f

    .line 174
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer has been freed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_f
    new-instance v0, Ljava/nio/DirectByteBuffer;

    iget-object v1, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    .line 177
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->markValue()I

    move-result v2

    .line 178
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v3

    .line 179
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v4

    .line 180
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->capacity()I

    move-result v5

    .line 181
    iget v6, p0, Ljava/nio/DirectByteBuffer;->offset:I

    .line 182
    iget-boolean v7, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    .line 176
    invoke-direct/range {v0 .. v7}, Ljava/nio/DirectByteBuffer;-><init>(Ljava/nio/DirectByteBuffer$MemoryRef;IIIIIZ)V

    return-object v0
.end method

.method public final get()B
    .registers 3

    .prologue
    .line 214
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_f

    .line 215
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_f
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->nextGetIndex()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->get(J)B

    move-result v0

    return v0
.end method

.method public final get(I)B
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 222
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_f

    .line 223
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_f
    invoke-virtual {p0, p1}, Ljava/nio/DirectByteBuffer;->checkIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->get(J)B

    move-result v0

    return v0
.end method

.method public get([BII)Ljava/nio/ByteBuffer;
    .registers 10
    .param p1, "dst"    # [B
    .param p2, "dstOffset"    # I
    .param p3, "length"    # I

    .prologue
    .line 231
    iget-object v3, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v3, v3, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v3, :cond_f

    .line 232
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "buffer is inaccessible"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 234
    :cond_f
    array-length v3, p1

    invoke-static {p2, p3, v3}, Ljava/nio/DirectByteBuffer;->checkBounds(III)V

    .line 235
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v1

    .line 236
    .local v1, "pos":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v0

    .line 237
    .local v0, "lim":I
    sget-boolean v3, Ljava/nio/DirectByteBuffer;->-assertionsDisabled:Z

    if-nez v3, :cond_27

    if-le v1, v0, :cond_27

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 238
    :cond_27
    if-gt v1, v0, :cond_33

    sub-int v2, v0, v1

    .line 239
    .local v2, "rem":I
    :goto_2b
    if-le p3, v2, :cond_35

    .line 240
    new-instance v3, Ljava/nio/BufferUnderflowException;

    invoke-direct {v3}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v3

    .line 238
    .end local v2    # "rem":I
    :cond_33
    const/4 v2, 0x0

    .restart local v2    # "rem":I
    goto :goto_2b

    .line 241
    :cond_35
    invoke-direct {p0, v1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v4

    invoke-static {v4, v5, p1, p2, p3}, Llibcore/io/Memory;->peekByteArray(J[BII)V

    .line 243
    add-int v3, v1, p3

    iput v3, p0, Ljava/nio/DirectByteBuffer;->position:I

    .line 244
    return-object p0
.end method

.method public final getChar()C
    .registers 6

    .prologue
    .line 341
    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v2, v2, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v2, :cond_f

    .line 342
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "buffer is inaccessible"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 344
    :cond_f
    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/lit8 v0, v2, 0x2

    .line 345
    .local v0, "newPosition":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v2

    if-le v0, v2, :cond_1f

    .line 346
    new-instance v2, Ljava/nio/BufferUnderflowException;

    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v2

    .line 348
    :cond_1f
    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    invoke-direct {p0, v2}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v2

    iget-boolean v4, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v4, v4, 0x1

    invoke-static {v2, v3, v4}, Llibcore/io/Memory;->peekShort(JZ)S

    move-result v2

    int-to-char v1, v2

    .line 349
    .local v1, "x":C
    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    .line 350
    return v1
.end method

.method public final getChar(I)C
    .registers 5
    .param p1, "i"    # I

    .prologue
    .line 355
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_f

    .line 356
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_f
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    .line 359
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1, v2}, Llibcore/io/Memory;->peekShort(JZ)S

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method getCharUnchecked(I)C
    .registers 5
    .param p1, "i"    # I

    .prologue
    .line 364
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_f

    .line 365
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_f
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1, v2}, Llibcore/io/Memory;->peekShort(JZ)S

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public final getDouble()D
    .registers 3

    .prologue
    .line 861
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_f

    .line 862
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 864
    :cond_f
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextGetIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getDouble(I)D
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 869
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_f

    .line 870
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 872
    :cond_f
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method final getDoubleUnchecked(I)D
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 877
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_f

    .line 878
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 880
    :cond_f
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getFloat()F
    .registers 3

    .prologue
    .line 757
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_f

    .line 758
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 760
    :cond_f
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextGetIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getFloat(J)F

    move-result v0

    return v0
.end method

.method public final getFloat(I)F
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 765
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_f

    .line 766
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 768
    :cond_f
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getFloat(J)F

    move-result v0

    return v0
.end method

.method final getFloatUnchecked(I)F
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 773
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_f

    .line 774
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 776
    :cond_f
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getFloat(J)F

    move-result v0

    return v0
.end method

.method public getInt()I
    .registers 3

    .prologue
    .line 552
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_f

    .line 553
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 555
    :cond_f
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextGetIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getInt(J)I

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 560
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_f

    .line 561
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 563
    :cond_f
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getInt(J)I

    move-result v0

    return v0
.end method

.method final getIntUnchecked(I)I
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 568
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_f

    .line 569
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 571
    :cond_f
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getInt(J)I

    move-result v0

    return v0
.end method

.method public final getLong()J
    .registers 3

    .prologue
    .line 654
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_f

    .line 655
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 657
    :cond_f
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextGetIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLong(I)J
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 662
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_f

    .line 663
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 665
    :cond_f
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method final getLongUnchecked(I)J
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 670
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_f

    .line 671
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 673
    :cond_f
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getShort()S
    .registers 3

    .prologue
    .line 450
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_f

    .line 451
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_f
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextGetIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getShort(J)S

    move-result v0

    return v0
.end method

.method public final getShort(I)S
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 458
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_f

    .line 459
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 461
    :cond_f
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getShort(J)S

    move-result v0

    return v0
.end method

.method getShortUnchecked(I)S
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 466
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_f

    .line 467
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 469
    :cond_f
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getShort(J)S

    move-result v0

    return v0
.end method

.method getUnchecked(I[CII)V
    .registers 11
    .param p1, "pos"    # I
    .param p2, "dst"    # [C
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    .prologue
    .line 372
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_f

    .line 373
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_f
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    .line 376
    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v5, v2, 0x1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 375
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->peekCharArray(J[CIIZ)V

    .line 377
    return-void
.end method

.method final getUnchecked(I[DII)V
    .registers 11
    .param p1, "pos"    # I
    .param p2, "dst"    # [D
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    .prologue
    .line 885
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_f

    .line 886
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 888
    :cond_f
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    .line 889
    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v5, v2, 0x1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 888
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->peekDoubleArray(J[DIIZ)V

    .line 890
    return-void
.end method

.method final getUnchecked(I[FII)V
    .registers 11
    .param p1, "pos"    # I
    .param p2, "dst"    # [F
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    .prologue
    .line 781
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_f

    .line 782
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 784
    :cond_f
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    .line 785
    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v5, v2, 0x1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 784
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->peekFloatArray(J[FIIZ)V

    .line 786
    return-void
.end method

.method final getUnchecked(I[III)V
    .registers 11
    .param p1, "pos"    # I
    .param p2, "dst"    # [I
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    .prologue
    .line 576
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_f

    .line 577
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 579
    :cond_f
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    .line 580
    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v5, v2, 0x1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 579
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->peekIntArray(J[IIIZ)V

    .line 581
    return-void
.end method

.method final getUnchecked(I[JII)V
    .registers 11
    .param p1, "pos"    # I
    .param p2, "dst"    # [J
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    .prologue
    .line 678
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_f

    .line 679
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 681
    :cond_f
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    .line 682
    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v5, v2, 0x1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 681
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->peekLongArray(J[JIIZ)V

    .line 683
    return-void
.end method

.method getUnchecked(I[SII)V
    .registers 11
    .param p1, "pos"    # I
    .param p2, "dst"    # [S
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    .prologue
    .line 474
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_f

    .line 475
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 477
    :cond_f
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    .line 478
    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v5, v2, 0x1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 477
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->peekShortArray(J[SIIZ)V

    .line 479
    return-void
.end method

.method public final isAccessible()Z
    .registers 2

    .prologue
    .line 961
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    return v0
.end method

.method public final isDirect()Z
    .registers 2

    .prologue
    .line 319
    const/4 v0, 0x1

    return v0
.end method

.method public final isReadOnly()Z
    .registers 2

    .prologue
    .line 324
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    return v0
.end method

.method public final put(B)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "x"    # B

    .prologue
    .line 254
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_f

    .line 255
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_f
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_19

    .line 258
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 260
    :cond_19
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->nextPutIndex()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Ljava/nio/DirectByteBuffer;->put(JB)Ljava/nio/ByteBuffer;

    .line 261
    return-object p0
.end method

.method public final put(IB)Ljava/nio/ByteBuffer;
    .registers 5
    .param p1, "i"    # I
    .param p2, "x"    # B

    .prologue
    .line 266
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_f

    .line 267
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_f
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_19

    .line 270
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 272
    :cond_19
    invoke-virtual {p0, p1}, Ljava/nio/DirectByteBuffer;->checkIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Ljava/nio/DirectByteBuffer;->put(JB)Ljava/nio/ByteBuffer;

    .line 273
    return-object p0
.end method

.method public put([BII)Ljava/nio/ByteBuffer;
    .registers 10
    .param p1, "src"    # [B
    .param p2, "srcOffset"    # I
    .param p3, "length"    # I

    .prologue
    .line 279
    iget-object v3, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v3, v3, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v3, :cond_f

    .line 280
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "buffer is inaccessible"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 282
    :cond_f
    iget-boolean v3, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v3, :cond_19

    .line 283
    new-instance v3, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v3}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v3

    .line 285
    :cond_19
    array-length v3, p1

    invoke-static {p2, p3, v3}, Ljava/nio/DirectByteBuffer;->checkBounds(III)V

    .line 286
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v1

    .line 287
    .local v1, "pos":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v0

    .line 288
    .local v0, "lim":I
    sget-boolean v3, Ljava/nio/DirectByteBuffer;->-assertionsDisabled:Z

    if-nez v3, :cond_31

    if-le v1, v0, :cond_31

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 289
    :cond_31
    if-gt v1, v0, :cond_3d

    sub-int v2, v0, v1

    .line 290
    .local v2, "rem":I
    :goto_35
    if-le p3, v2, :cond_3f

    .line 291
    new-instance v3, Ljava/nio/BufferOverflowException;

    invoke-direct {v3}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v3

    .line 289
    .end local v2    # "rem":I
    :cond_3d
    const/4 v2, 0x0

    .restart local v2    # "rem":I
    goto :goto_35

    .line 292
    :cond_3f
    invoke-direct {p0, v1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v4

    invoke-static {v4, v5, p1, p2, p3}, Llibcore/io/Memory;->pokeByteArray(J[BII)V

    .line 294
    add-int v3, v1, p3

    iput v3, p0, Ljava/nio/DirectByteBuffer;->position:I

    .line 295
    return-object p0
.end method

.method public final putChar(C)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "x"    # C

    .prologue
    .line 386
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_f

    .line 387
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 389
    :cond_f
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_19

    .line 390
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 392
    :cond_19
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Ljava/nio/DirectByteBuffer;->putChar(JC)Ljava/nio/ByteBuffer;

    .line 393
    return-object p0
.end method

.method public final putChar(IC)Ljava/nio/ByteBuffer;
    .registers 5
    .param p1, "i"    # I
    .param p2, "x"    # C

    .prologue
    .line 398
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_f

    .line 399
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 401
    :cond_f
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_19

    .line 402
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 404
    :cond_19
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Ljava/nio/DirectByteBuffer;->putChar(JC)Ljava/nio/ByteBuffer;

    .line 405
    return-object p0
.end method

.method putCharUnchecked(IC)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "x"    # C

    .prologue
    .line 410
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_f

    .line 411
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_f
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Ljava/nio/DirectByteBuffer;->putChar(JC)Ljava/nio/ByteBuffer;

    .line 414
    return-void
.end method

.method public final putDouble(D)Ljava/nio/ByteBuffer;
    .registers 6
    .param p1, "x"    # D

    .prologue
    .line 900
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_f

    .line 901
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 903
    :cond_f
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_19

    .line 904
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 906
    :cond_19
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Ljava/nio/DirectByteBuffer;->putDouble(JD)Ljava/nio/ByteBuffer;

    .line 907
    return-object p0
.end method

.method public final putDouble(ID)Ljava/nio/ByteBuffer;
    .registers 6
    .param p1, "i"    # I
    .param p2, "x"    # D

    .prologue
    .line 912
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_f

    .line 913
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 915
    :cond_f
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_19

    .line 916
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 918
    :cond_19
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2, p3}, Ljava/nio/DirectByteBuffer;->putDouble(JD)Ljava/nio/ByteBuffer;

    .line 919
    return-object p0
.end method

.method final putDoubleUnchecked(ID)V
    .registers 6
    .param p1, "i"    # I
    .param p2, "x"    # D

    .prologue
    .line 924
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_f

    .line 925
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 927
    :cond_f
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2, p3}, Ljava/nio/DirectByteBuffer;->putDouble(JD)Ljava/nio/ByteBuffer;

    .line 928
    return-void
.end method

.method public final putFloat(F)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "x"    # F

    .prologue
    .line 796
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_f

    .line 797
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 799
    :cond_f
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_19

    .line 800
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 802
    :cond_19
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Ljava/nio/DirectByteBuffer;->putFloat(JF)Ljava/nio/ByteBuffer;

    .line 803
    return-object p0
.end method

.method public final putFloat(IF)Ljava/nio/ByteBuffer;
    .registers 5
    .param p1, "i"    # I
    .param p2, "x"    # F

    .prologue
    .line 808
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_f

    .line 809
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 811
    :cond_f
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_19

    .line 812
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 814
    :cond_19
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Ljava/nio/DirectByteBuffer;->putFloat(JF)Ljava/nio/ByteBuffer;

    .line 815
    return-object p0
.end method

.method final putFloatUnchecked(IF)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "x"    # F

    .prologue
    .line 820
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_f

    .line 821
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 823
    :cond_f
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Ljava/nio/DirectByteBuffer;->putFloat(JF)Ljava/nio/ByteBuffer;

    .line 824
    return-void
.end method

.method public final putInt(I)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "x"    # I

    .prologue
    .line 590
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_f

    .line 591
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 593
    :cond_f
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_19

    .line 594
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 596
    :cond_19
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Ljava/nio/DirectByteBuffer;->putInt(JI)Ljava/nio/ByteBuffer;

    .line 597
    return-object p0
.end method

.method public final putInt(II)Ljava/nio/ByteBuffer;
    .registers 5
    .param p1, "i"    # I
    .param p2, "x"    # I

    .prologue
    .line 602
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_f

    .line 603
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 605
    :cond_f
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_19

    .line 606
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 608
    :cond_19
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Ljava/nio/DirectByteBuffer;->putInt(JI)Ljava/nio/ByteBuffer;

    .line 609
    return-object p0
.end method

.method final putIntUnchecked(II)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "x"    # I

    .prologue
    .line 614
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_f

    .line 615
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 617
    :cond_f
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Ljava/nio/DirectByteBuffer;->putInt(JI)Ljava/nio/ByteBuffer;

    .line 618
    return-void
.end method

.method public final putLong(IJ)Ljava/nio/ByteBuffer;
    .registers 6
    .param p1, "i"    # I
    .param p2, "x"    # J

    .prologue
    .line 704
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_f

    .line 705
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 707
    :cond_f
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_19

    .line 708
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 710
    :cond_19
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2, p3}, Ljava/nio/DirectByteBuffer;->putLong(JJ)Ljava/nio/ByteBuffer;

    .line 711
    return-object p0
.end method

.method public final putLong(J)Ljava/nio/ByteBuffer;
    .registers 6
    .param p1, "x"    # J

    .prologue
    .line 692
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_f

    .line 693
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 695
    :cond_f
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_19

    .line 696
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 698
    :cond_19
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Ljava/nio/DirectByteBuffer;->putLong(JJ)Ljava/nio/ByteBuffer;

    .line 699
    return-object p0
.end method

.method final putLongUnchecked(IJ)V
    .registers 6
    .param p1, "i"    # I
    .param p2, "x"    # J

    .prologue
    .line 716
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_f

    .line 717
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 719
    :cond_f
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2, p3}, Ljava/nio/DirectByteBuffer;->putLong(JJ)Ljava/nio/ByteBuffer;

    .line 720
    return-void
.end method

.method public final putShort(IS)Ljava/nio/ByteBuffer;
    .registers 5
    .param p1, "i"    # I
    .param p2, "x"    # S

    .prologue
    .line 500
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_f

    .line 501
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 503
    :cond_f
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_19

    .line 504
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 506
    :cond_19
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Ljava/nio/DirectByteBuffer;->putShort(JS)Ljava/nio/ByteBuffer;

    .line 507
    return-object p0
.end method

.method public final putShort(S)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "x"    # S

    .prologue
    .line 488
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_f

    .line 489
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 491
    :cond_f
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_19

    .line 492
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 494
    :cond_19
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Ljava/nio/DirectByteBuffer;->putShort(JS)Ljava/nio/ByteBuffer;

    .line 495
    return-object p0
.end method

.method putShortUnchecked(IS)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "x"    # S

    .prologue
    .line 512
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_f

    .line 513
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 515
    :cond_f
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Ljava/nio/DirectByteBuffer;->putShort(JS)Ljava/nio/ByteBuffer;

    .line 516
    return-void
.end method

.method putUnchecked(I[CII)V
    .registers 11
    .param p1, "pos"    # I
    .param p2, "src"    # [C
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    .prologue
    .line 418
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_f

    .line 419
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 421
    :cond_f
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    .line 422
    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v5, v2, 0x1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 421
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->pokeCharArray(J[CIIZ)V

    .line 423
    return-void
.end method

.method final putUnchecked(I[DII)V
    .registers 11
    .param p1, "pos"    # I
    .param p2, "src"    # [D
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    .prologue
    .line 932
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_f

    .line 933
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 935
    :cond_f
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    .line 936
    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v5, v2, 0x1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 935
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->pokeDoubleArray(J[DIIZ)V

    .line 937
    return-void
.end method

.method final putUnchecked(I[FII)V
    .registers 11
    .param p1, "pos"    # I
    .param p2, "src"    # [F
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    .prologue
    .line 828
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_f

    .line 829
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 831
    :cond_f
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    .line 832
    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v5, v2, 0x1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 831
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->pokeFloatArray(J[FIIZ)V

    .line 833
    return-void
.end method

.method final putUnchecked(I[III)V
    .registers 11
    .param p1, "pos"    # I
    .param p2, "src"    # [I
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    .prologue
    .line 622
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_f

    .line 623
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 625
    :cond_f
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    .line 626
    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v5, v2, 0x1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 625
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->pokeIntArray(J[IIIZ)V

    .line 627
    return-void
.end method

.method final putUnchecked(I[JII)V
    .registers 11
    .param p1, "pos"    # I
    .param p2, "src"    # [J
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    .prologue
    .line 724
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_f

    .line 725
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 727
    :cond_f
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    .line 728
    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v5, v2, 0x1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 727
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->pokeLongArray(J[JIIZ)V

    .line 729
    return-void
.end method

.method putUnchecked(I[SII)V
    .registers 11
    .param p1, "pos"    # I
    .param p2, "src"    # [S
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    .prologue
    .line 520
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_f

    .line 521
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 523
    :cond_f
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    .line 524
    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v5, v2, 0x1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 523
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->pokeShortArray(J[SIIZ)V

    .line 525
    return-void
.end method

.method public final setAccessible(Z)V
    .registers 3
    .param p1, "value"    # Z

    .prologue
    .line 966
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iput-boolean p1, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    .line 967
    return-void
.end method

.method public final slice()Ljava/nio/ByteBuffer;
    .registers 11

    .prologue
    const/4 v3, 0x0

    .line 159
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_10

    .line 160
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_10
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v9

    .line 163
    .local v9, "pos":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v8

    .line 164
    .local v8, "lim":I
    sget-boolean v0, Ljava/nio/DirectByteBuffer;->-assertionsDisabled:Z

    if-nez v0, :cond_24

    if-le v9, v8, :cond_24

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 165
    :cond_24
    if-gt v9, v8, :cond_38

    sub-int v4, v8, v9

    .line 166
    .local v4, "rem":I
    :goto_28
    iget v0, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int v6, v9, v0

    .line 167
    .local v6, "off":I
    sget-boolean v0, Ljava/nio/DirectByteBuffer;->-assertionsDisabled:Z

    if-nez v0, :cond_3a

    if-gez v6, :cond_3a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 165
    .end local v4    # "rem":I
    .end local v6    # "off":I
    :cond_38
    const/4 v4, 0x0

    .restart local v4    # "rem":I
    goto :goto_28

    .line 168
    .restart local v6    # "off":I
    :cond_3a
    new-instance v0, Ljava/nio/DirectByteBuffer;

    iget-object v1, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v7, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    const/4 v2, -0x1

    move v5, v4

    invoke-direct/range {v0 .. v7}, Ljava/nio/DirectByteBuffer;-><init>(Ljava/nio/DirectByteBuffer$MemoryRef;IIIIIZ)V

    return-object v0
.end method
