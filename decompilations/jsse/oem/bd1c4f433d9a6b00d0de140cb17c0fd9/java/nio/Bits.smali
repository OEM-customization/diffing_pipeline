.class Ljava/nio/Bits;
.super Ljava/lang/Object;
.source "Bits.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field static final JNI_COPY_FROM_ARRAY_THRESHOLD:I = 0x6

.field static final JNI_COPY_TO_ARRAY_THRESHOLD:I = 0x6

.field static final UNSAFE_COPY_THRESHOLD:J = 0x100000L

.field private static final byteOrder:Ljava/nio/ByteOrder;

.field private static volatile count:J

.field private static volatile maxMemory:J

.field private static memoryLimitSet:Z

.field private static pageSize:I

.field private static volatile reservedMemory:J

.field private static volatile totalCapacity:J

.field private static unaligned:Z

.field private static unalignedKnown:Z

.field private static final unsafe:Lsun/misc/Unsafe;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    const-class v0, Ljava/nio/Bits;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/nio/Bits;->-assertionsDisabled:Z

    .line 594
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/nio/Bits;->unsafe:Lsun/misc/Unsafe;

    .line 613
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Ljava/nio/Bits;->byteOrder:Ljava/nio/ByteOrder;

    .line 661
    const/4 v0, -0x1

    sput v0, Ljava/nio/Bits;->pageSize:I

    .line 674
    sput-boolean v2, Ljava/nio/Bits;->unalignedKnown:Z

    .line 693
    invoke-static {}, Lsun/misc/VM;->maxDirectMemory()J

    move-result-wide v0

    sput-wide v0, Ljava/nio/Bits;->maxMemory:J

    .line 697
    sput-boolean v2, Ljava/nio/Bits;->memoryLimitSet:Z

    .line 38
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method private static _get(J)B
    .registers 4
    .param p0, "a"    # J

    .prologue
    .line 597
    sget-object v0, Ljava/nio/Bits;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v0

    return v0
.end method

.method private static _put(JB)V
    .registers 5
    .param p0, "a"    # J
    .param p2, "b"    # B

    .prologue
    .line 601
    sget-object v0, Ljava/nio/Bits;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->putByte(JB)V

    .line 602
    return-void
.end method

.method static byteOrder()Ljava/nio/ByteOrder;
    .registers 1

    .prologue
    .line 636
    sget-object v0, Ljava/nio/Bits;->byteOrder:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method private static char0(C)B
    .registers 2
    .param p0, "x"    # C

    .prologue
    .line 102
    int-to-byte v0, p0

    return v0
.end method

.method private static char1(C)B
    .registers 2
    .param p0, "x"    # C

    .prologue
    .line 98
    shr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    return v0
.end method

.method static copyFromArray(Ljava/lang/Object;JJJJ)V
    .registers 18
    .param p0, "src"    # Ljava/lang/Object;
    .param p1, "srcBaseOffset"    # J
    .param p3, "srcPos"    # J
    .param p5, "dstAddr"    # J
    .param p7, "length"    # J

    .prologue
    .line 815
    add-long v2, p1, p3

    .line 816
    .local v2, "offset":J
    :goto_2
    const-wide/16 v0, 0x0

    cmp-long v0, p7, v0

    if-lez v0, :cond_21

    .line 817
    const-wide/32 v0, 0x100000

    cmp-long v0, p7, v0

    if-lez v0, :cond_1e

    const-wide/32 v6, 0x100000

    .line 818
    .local v6, "size":J
    :goto_12
    sget-object v0, Ljava/nio/Bits;->unsafe:Lsun/misc/Unsafe;

    move-object v1, p0

    move-wide v4, p5

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->copyMemoryFromPrimitiveArray(Ljava/lang/Object;JJJ)V

    .line 819
    sub-long p7, p7, v6

    .line 820
    add-long/2addr v2, v6

    .line 821
    add-long/2addr p5, v6

    goto :goto_2

    .line 817
    .end local v6    # "size":J
    :cond_1e
    move-wide/from16 v6, p7

    .restart local v6    # "size":J
    goto :goto_12

    .line 823
    .end local v6    # "size":J
    :cond_21
    return-void
.end method

.method static copyFromCharArray(Ljava/lang/Object;JJJ)V
    .registers 8
    .param p0, "src"    # Ljava/lang/Object;
    .param p1, "srcPos"    # J
    .param p3, "dstAddr"    # J
    .param p5, "length"    # J

    .prologue
    .line 848
    invoke-static/range {p0 .. p6}, Ljava/nio/Bits;->copyFromShortArray(Ljava/lang/Object;JJJ)V

    .line 849
    return-void
.end method

.method static native copyFromIntArray(Ljava/lang/Object;JJJ)V
.end method

.method static native copyFromLongArray(Ljava/lang/Object;JJJ)V
.end method

.method static native copyFromShortArray(Ljava/lang/Object;JJJ)V
.end method

.method static copyToArray(JLjava/lang/Object;JJJ)V
    .registers 18
    .param p0, "srcAddr"    # J
    .param p2, "dst"    # Ljava/lang/Object;
    .param p3, "dstBaseOffset"    # J
    .param p5, "dstPos"    # J
    .param p7, "length"    # J

    .prologue
    .line 836
    add-long v4, p3, p5

    .line 837
    .local v4, "offset":J
    :goto_2
    const-wide/16 v0, 0x0

    cmp-long v0, p7, v0

    if-lez v0, :cond_21

    .line 838
    const-wide/32 v0, 0x100000

    cmp-long v0, p7, v0

    if-lez v0, :cond_1e

    const-wide/32 v6, 0x100000

    .line 839
    .local v6, "size":J
    :goto_12
    sget-object v0, Ljava/nio/Bits;->unsafe:Lsun/misc/Unsafe;

    move-wide v1, p0

    move-object v3, p2

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->copyMemoryToPrimitiveArray(JLjava/lang/Object;JJ)V

    .line 840
    sub-long p7, p7, v6

    .line 841
    add-long/2addr p0, v6

    .line 842
    add-long/2addr v4, v6

    goto :goto_2

    .line 838
    .end local v6    # "size":J
    :cond_1e
    move-wide/from16 v6, p7

    .restart local v6    # "size":J
    goto :goto_12

    .line 844
    .end local v6    # "size":J
    :cond_21
    return-void
.end method

.method static copyToCharArray(JLjava/lang/Object;JJ)V
    .registers 8
    .param p0, "srcAddr"    # J
    .param p2, "dst"    # Ljava/lang/Object;
    .param p3, "dstPos"    # J
    .param p5, "length"    # J

    .prologue
    .line 853
    invoke-static/range {p0 .. p6}, Ljava/nio/Bits;->copyToShortArray(JLjava/lang/Object;JJ)V

    .line 854
    return-void
.end method

.method static native copyToIntArray(JLjava/lang/Object;JJ)V
.end method

.method static native copyToLongArray(JLjava/lang/Object;JJ)V
.end method

.method static native copyToShortArray(JLjava/lang/Object;JJ)V
.end method

.method static getChar(JZ)C
    .registers 5
    .param p0, "a"    # J
    .param p2, "bigEndian"    # Z

    .prologue
    .line 94
    if-eqz p2, :cond_7

    invoke-static {p0, p1}, Ljava/nio/Bits;->getCharB(J)C

    move-result v0

    :goto_6
    return v0

    :cond_7
    invoke-static {p0, p1}, Ljava/nio/Bits;->getCharL(J)C

    move-result v0

    goto :goto_6
.end method

.method static getChar(Ljava/nio/ByteBuffer;IZ)C
    .registers 4
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "bigEndian"    # Z

    .prologue
    .line 90
    if-eqz p2, :cond_7

    invoke-static {p0, p1}, Ljava/nio/Bits;->getCharB(Ljava/nio/ByteBuffer;I)C

    move-result v0

    :goto_6
    return v0

    :cond_7
    invoke-static {p0, p1}, Ljava/nio/Bits;->getCharL(Ljava/nio/ByteBuffer;I)C

    move-result v0

    goto :goto_6
.end method

.method static getCharB(J)C
    .registers 6
    .param p0, "a"    # J

    .prologue
    .line 85
    invoke-static {p0, p1}, Ljava/nio/Bits;->_get(J)B

    move-result v0

    .line 86
    const-wide/16 v2, 0x1

    add-long/2addr v2, p0

    invoke-static {v2, v3}, Ljava/nio/Bits;->_get(J)B

    move-result v1

    .line 85
    invoke-static {v0, v1}, Ljava/nio/Bits;->makeChar(BB)C

    move-result v0

    return v0
.end method

.method static getCharB(Ljava/nio/ByteBuffer;I)C
    .registers 4
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v0

    .line 81
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v1

    .line 80
    invoke-static {v0, v1}, Ljava/nio/Bits;->makeChar(BB)C

    move-result v0

    return v0
.end method

.method static getCharL(J)C
    .registers 4
    .param p0, "a"    # J

    .prologue
    .line 75
    const-wide/16 v0, 0x1

    add-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/nio/Bits;->_get(J)B

    move-result v0

    .line 76
    invoke-static {p0, p1}, Ljava/nio/Bits;->_get(J)B

    move-result v1

    .line 75
    invoke-static {v0, v1}, Ljava/nio/Bits;->makeChar(BB)C

    move-result v0

    return v0
.end method

.method static getCharL(Ljava/nio/ByteBuffer;I)C
    .registers 4
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I

    .prologue
    .line 70
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v0

    .line 71
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v1

    .line 70
    invoke-static {v0, v1}, Ljava/nio/Bits;->makeChar(BB)C

    move-result v0

    return v0
.end method

.method static getDouble(JZ)D
    .registers 5
    .param p0, "a"    # J
    .param p2, "bigEndian"    # Z

    .prologue
    .line 558
    if-eqz p2, :cond_7

    invoke-static {p0, p1}, Ljava/nio/Bits;->getDoubleB(J)D

    move-result-wide v0

    :goto_6
    return-wide v0

    :cond_7
    invoke-static {p0, p1}, Ljava/nio/Bits;->getDoubleL(J)D

    move-result-wide v0

    goto :goto_6
.end method

.method static getDouble(Ljava/nio/ByteBuffer;IZ)D
    .registers 5
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "bigEndian"    # Z

    .prologue
    .line 554
    if-eqz p2, :cond_7

    invoke-static {p0, p1}, Ljava/nio/Bits;->getDoubleB(Ljava/nio/ByteBuffer;I)D

    move-result-wide v0

    :goto_6
    return-wide v0

    :cond_7
    invoke-static {p0, p1}, Ljava/nio/Bits;->getDoubleL(Ljava/nio/ByteBuffer;I)D

    move-result-wide v0

    goto :goto_6
.end method

.method static getDoubleB(J)D
    .registers 4
    .param p0, "a"    # J

    .prologue
    .line 550
    invoke-static {p0, p1}, Ljava/nio/Bits;->getLongB(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method static getDoubleB(Ljava/nio/ByteBuffer;I)D
    .registers 4
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I

    .prologue
    .line 546
    invoke-static {p0, p1}, Ljava/nio/Bits;->getLongB(Ljava/nio/ByteBuffer;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method static getDoubleL(J)D
    .registers 4
    .param p0, "a"    # J

    .prologue
    .line 542
    invoke-static {p0, p1}, Ljava/nio/Bits;->getLongL(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method static getDoubleL(Ljava/nio/ByteBuffer;I)D
    .registers 4
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I

    .prologue
    .line 538
    invoke-static {p0, p1}, Ljava/nio/Bits;->getLongL(Ljava/nio/ByteBuffer;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method static getFloat(JZ)F
    .registers 5
    .param p0, "a"    # J
    .param p2, "bigEndian"    # Z

    .prologue
    .line 501
    if-eqz p2, :cond_7

    invoke-static {p0, p1}, Ljava/nio/Bits;->getFloatB(J)F

    move-result v0

    :goto_6
    return v0

    :cond_7
    invoke-static {p0, p1}, Ljava/nio/Bits;->getFloatL(J)F

    move-result v0

    goto :goto_6
.end method

.method static getFloat(Ljava/nio/ByteBuffer;IZ)F
    .registers 4
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "bigEndian"    # Z

    .prologue
    .line 497
    if-eqz p2, :cond_7

    invoke-static {p0, p1}, Ljava/nio/Bits;->getFloatB(Ljava/nio/ByteBuffer;I)F

    move-result v0

    :goto_6
    return v0

    :cond_7
    invoke-static {p0, p1}, Ljava/nio/Bits;->getFloatL(Ljava/nio/ByteBuffer;I)F

    move-result v0

    goto :goto_6
.end method

.method static getFloatB(J)F
    .registers 4
    .param p0, "a"    # J

    .prologue
    .line 493
    invoke-static {p0, p1}, Ljava/nio/Bits;->getIntB(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method static getFloatB(Ljava/nio/ByteBuffer;I)F
    .registers 3
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I

    .prologue
    .line 489
    invoke-static {p0, p1}, Ljava/nio/Bits;->getIntB(Ljava/nio/ByteBuffer;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method static getFloatL(J)F
    .registers 4
    .param p0, "a"    # J

    .prologue
    .line 485
    invoke-static {p0, p1}, Ljava/nio/Bits;->getIntL(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method static getFloatL(Ljava/nio/ByteBuffer;I)F
    .registers 3
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I

    .prologue
    .line 481
    invoke-static {p0, p1}, Ljava/nio/Bits;->getIntL(Ljava/nio/ByteBuffer;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method static getInt(JZ)I
    .registers 5
    .param p0, "a"    # J
    .param p2, "bigEndian"    # Z

    .prologue
    .line 259
    if-eqz p2, :cond_7

    invoke-static {p0, p1}, Ljava/nio/Bits;->getIntB(J)I

    move-result v0

    :goto_6
    return v0

    :cond_7
    invoke-static {p0, p1}, Ljava/nio/Bits;->getIntL(J)I

    move-result v0

    goto :goto_6
.end method

.method static getInt(Ljava/nio/ByteBuffer;IZ)I
    .registers 4
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "bigEndian"    # Z

    .prologue
    .line 255
    if-eqz p2, :cond_7

    invoke-static {p0, p1}, Ljava/nio/Bits;->getIntB(Ljava/nio/ByteBuffer;I)I

    move-result v0

    :goto_6
    return v0

    :cond_7
    invoke-static {p0, p1}, Ljava/nio/Bits;->getIntL(Ljava/nio/ByteBuffer;I)I

    move-result v0

    goto :goto_6
.end method

.method static getIntB(J)I
    .registers 8
    .param p0, "a"    # J

    .prologue
    .line 248
    invoke-static {p0, p1}, Ljava/nio/Bits;->_get(J)B

    move-result v0

    .line 249
    const-wide/16 v2, 0x1

    add-long/2addr v2, p0

    invoke-static {v2, v3}, Ljava/nio/Bits;->_get(J)B

    move-result v1

    .line 250
    const-wide/16 v2, 0x2

    add-long/2addr v2, p0

    invoke-static {v2, v3}, Ljava/nio/Bits;->_get(J)B

    move-result v2

    .line 251
    const-wide/16 v4, 0x3

    add-long/2addr v4, p0

    invoke-static {v4, v5}, Ljava/nio/Bits;->_get(J)B

    move-result v3

    .line 248
    invoke-static {v0, v1, v2, v3}, Ljava/nio/Bits;->makeInt(BBBB)I

    move-result v0

    return v0
.end method

.method static getIntB(Ljava/nio/ByteBuffer;I)I
    .registers 6
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I

    .prologue
    .line 241
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v0

    .line 242
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v1

    .line 243
    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v2

    .line 244
    add-int/lit8 v3, p1, 0x3

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v3

    .line 241
    invoke-static {v0, v1, v2, v3}, Ljava/nio/Bits;->makeInt(BBBB)I

    move-result v0

    return v0
.end method

.method static getIntL(J)I
    .registers 6
    .param p0, "a"    # J

    .prologue
    .line 234
    const-wide/16 v0, 0x3

    add-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/nio/Bits;->_get(J)B

    move-result v0

    .line 235
    const-wide/16 v2, 0x2

    add-long/2addr v2, p0

    invoke-static {v2, v3}, Ljava/nio/Bits;->_get(J)B

    move-result v1

    .line 236
    const-wide/16 v2, 0x1

    add-long/2addr v2, p0

    invoke-static {v2, v3}, Ljava/nio/Bits;->_get(J)B

    move-result v2

    .line 237
    invoke-static {p0, p1}, Ljava/nio/Bits;->_get(J)B

    move-result v3

    .line 234
    invoke-static {v0, v1, v2, v3}, Ljava/nio/Bits;->makeInt(BBBB)I

    move-result v0

    return v0
.end method

.method static getIntL(Ljava/nio/ByteBuffer;I)I
    .registers 6
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I

    .prologue
    .line 227
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v0

    .line 228
    add-int/lit8 v1, p1, 0x2

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v1

    .line 229
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v2

    .line 230
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v3

    .line 227
    invoke-static {v0, v1, v2, v3}, Ljava/nio/Bits;->makeInt(BBBB)I

    move-result v0

    return v0
.end method

.method static getLong(JZ)J
    .registers 5
    .param p0, "a"    # J
    .param p2, "bigEndian"    # Z

    .prologue
    .line 384
    if-eqz p2, :cond_7

    invoke-static {p0, p1}, Ljava/nio/Bits;->getLongB(J)J

    move-result-wide v0

    :goto_6
    return-wide v0

    :cond_7
    invoke-static {p0, p1}, Ljava/nio/Bits;->getLongL(J)J

    move-result-wide v0

    goto :goto_6
.end method

.method static getLong(Ljava/nio/ByteBuffer;IZ)J
    .registers 5
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "bigEndian"    # Z

    .prologue
    .line 380
    if-eqz p2, :cond_7

    invoke-static {p0, p1}, Ljava/nio/Bits;->getLongB(Ljava/nio/ByteBuffer;I)J

    move-result-wide v0

    :goto_6
    return-wide v0

    :cond_7
    invoke-static {p0, p1}, Ljava/nio/Bits;->getLongL(Ljava/nio/ByteBuffer;I)J

    move-result-wide v0

    goto :goto_6
.end method

.method static getLongB(J)J
    .registers 12
    .param p0, "a"    # J

    .prologue
    .line 369
    invoke-static {p0, p1}, Ljava/nio/Bits;->_get(J)B

    move-result v0

    .line 370
    const-wide/16 v2, 0x1

    add-long/2addr v2, p0

    invoke-static {v2, v3}, Ljava/nio/Bits;->_get(J)B

    move-result v1

    .line 371
    const-wide/16 v2, 0x2

    add-long/2addr v2, p0

    invoke-static {v2, v3}, Ljava/nio/Bits;->_get(J)B

    move-result v2

    .line 372
    const-wide/16 v4, 0x3

    add-long/2addr v4, p0

    invoke-static {v4, v5}, Ljava/nio/Bits;->_get(J)B

    move-result v3

    .line 373
    const-wide/16 v4, 0x4

    add-long/2addr v4, p0

    invoke-static {v4, v5}, Ljava/nio/Bits;->_get(J)B

    move-result v4

    .line 374
    const-wide/16 v6, 0x5

    add-long/2addr v6, p0

    invoke-static {v6, v7}, Ljava/nio/Bits;->_get(J)B

    move-result v5

    .line 375
    const-wide/16 v6, 0x6

    add-long/2addr v6, p0

    invoke-static {v6, v7}, Ljava/nio/Bits;->_get(J)B

    move-result v6

    .line 376
    const-wide/16 v8, 0x7

    add-long/2addr v8, p0

    invoke-static {v8, v9}, Ljava/nio/Bits;->_get(J)B

    move-result v7

    .line 369
    invoke-static/range {v0 .. v7}, Ljava/nio/Bits;->makeLong(BBBBBBBB)J

    move-result-wide v0

    return-wide v0
.end method

.method static getLongB(Ljava/nio/ByteBuffer;I)J
    .registers 10
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I

    .prologue
    .line 358
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v0

    .line 359
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v1

    .line 360
    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v2

    .line 361
    add-int/lit8 v3, p1, 0x3

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v3

    .line 362
    add-int/lit8 v4, p1, 0x4

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v4

    .line 363
    add-int/lit8 v5, p1, 0x5

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v5

    .line 364
    add-int/lit8 v6, p1, 0x6

    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v6

    .line 365
    add-int/lit8 v7, p1, 0x7

    invoke-virtual {p0, v7}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v7

    .line 358
    invoke-static/range {v0 .. v7}, Ljava/nio/Bits;->makeLong(BBBBBBBB)J

    move-result-wide v0

    return-wide v0
.end method

.method static getLongL(J)J
    .registers 10
    .param p0, "a"    # J

    .prologue
    .line 347
    const-wide/16 v0, 0x7

    add-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/nio/Bits;->_get(J)B

    move-result v0

    .line 348
    const-wide/16 v2, 0x6

    add-long/2addr v2, p0

    invoke-static {v2, v3}, Ljava/nio/Bits;->_get(J)B

    move-result v1

    .line 349
    const-wide/16 v2, 0x5

    add-long/2addr v2, p0

    invoke-static {v2, v3}, Ljava/nio/Bits;->_get(J)B

    move-result v2

    .line 350
    const-wide/16 v4, 0x4

    add-long/2addr v4, p0

    invoke-static {v4, v5}, Ljava/nio/Bits;->_get(J)B

    move-result v3

    .line 351
    const-wide/16 v4, 0x3

    add-long/2addr v4, p0

    invoke-static {v4, v5}, Ljava/nio/Bits;->_get(J)B

    move-result v4

    .line 352
    const-wide/16 v6, 0x2

    add-long/2addr v6, p0

    invoke-static {v6, v7}, Ljava/nio/Bits;->_get(J)B

    move-result v5

    .line 353
    const-wide/16 v6, 0x1

    add-long/2addr v6, p0

    invoke-static {v6, v7}, Ljava/nio/Bits;->_get(J)B

    move-result v6

    .line 354
    invoke-static {p0, p1}, Ljava/nio/Bits;->_get(J)B

    move-result v7

    .line 347
    invoke-static/range {v0 .. v7}, Ljava/nio/Bits;->makeLong(BBBBBBBB)J

    move-result-wide v0

    return-wide v0
.end method

.method static getLongL(Ljava/nio/ByteBuffer;I)J
    .registers 10
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I

    .prologue
    .line 336
    add-int/lit8 v0, p1, 0x7

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v0

    .line 337
    add-int/lit8 v1, p1, 0x6

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v1

    .line 338
    add-int/lit8 v2, p1, 0x5

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v2

    .line 339
    add-int/lit8 v3, p1, 0x4

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v3

    .line 340
    add-int/lit8 v4, p1, 0x3

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v4

    .line 341
    add-int/lit8 v5, p1, 0x2

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v5

    .line 342
    add-int/lit8 v6, p1, 0x1

    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v6

    .line 343
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v7

    .line 336
    invoke-static/range {v0 .. v7}, Ljava/nio/Bits;->makeLong(BBBBBBBB)J

    move-result-wide v0

    return-wide v0
.end method

.method static getShort(JZ)S
    .registers 5
    .param p0, "a"    # J
    .param p2, "bigEndian"    # Z

    .prologue
    .line 171
    if-eqz p2, :cond_7

    invoke-static {p0, p1}, Ljava/nio/Bits;->getShortB(J)S

    move-result v0

    :goto_6
    return v0

    :cond_7
    invoke-static {p0, p1}, Ljava/nio/Bits;->getShortL(J)S

    move-result v0

    goto :goto_6
.end method

.method static getShort(Ljava/nio/ByteBuffer;IZ)S
    .registers 4
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "bigEndian"    # Z

    .prologue
    .line 167
    if-eqz p2, :cond_7

    invoke-static {p0, p1}, Ljava/nio/Bits;->getShortB(Ljava/nio/ByteBuffer;I)S

    move-result v0

    :goto_6
    return v0

    :cond_7
    invoke-static {p0, p1}, Ljava/nio/Bits;->getShortL(Ljava/nio/ByteBuffer;I)S

    move-result v0

    goto :goto_6
.end method

.method static getShortB(J)S
    .registers 6
    .param p0, "a"    # J

    .prologue
    .line 162
    invoke-static {p0, p1}, Ljava/nio/Bits;->_get(J)B

    move-result v0

    .line 163
    const-wide/16 v2, 0x1

    add-long/2addr v2, p0

    invoke-static {v2, v3}, Ljava/nio/Bits;->_get(J)B

    move-result v1

    .line 162
    invoke-static {v0, v1}, Ljava/nio/Bits;->makeShort(BB)S

    move-result v0

    return v0
.end method

.method static getShortB(Ljava/nio/ByteBuffer;I)S
    .registers 4
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v0

    .line 158
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v1

    .line 157
    invoke-static {v0, v1}, Ljava/nio/Bits;->makeShort(BB)S

    move-result v0

    return v0
.end method

.method static getShortL(J)S
    .registers 4
    .param p0, "a"    # J

    .prologue
    .line 152
    const-wide/16 v0, 0x1

    add-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/nio/Bits;->_get(J)B

    move-result v0

    .line 153
    invoke-static {p0, p1}, Ljava/nio/Bits;->_get(J)B

    move-result v1

    .line 152
    invoke-static {v0, v1}, Ljava/nio/Bits;->makeShort(BB)S

    move-result v0

    return v0
.end method

.method static getShortL(Ljava/nio/ByteBuffer;I)S
    .registers 4
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I

    .prologue
    .line 147
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v0

    .line 148
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v1

    .line 147
    invoke-static {v0, v1}, Ljava/nio/Bits;->makeShort(BB)S

    move-result v0

    return v0
.end method

.method private static int0(I)B
    .registers 2
    .param p0, "x"    # I

    .prologue
    .line 275
    int-to-byte v0, p0

    return v0
.end method

.method private static int1(I)B
    .registers 2
    .param p0, "x"    # I

    .prologue
    .line 271
    shr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    return v0
.end method

.method private static int2(I)B
    .registers 2
    .param p0, "x"    # I

    .prologue
    .line 267
    shr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    return v0
.end method

.method private static int3(I)B
    .registers 2
    .param p0, "x"    # I

    .prologue
    .line 263
    shr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    return v0
.end method

.method private static long0(J)B
    .registers 4
    .param p0, "x"    # J

    .prologue
    .line 416
    long-to-int v0, p0

    int-to-byte v0, v0

    return v0
.end method

.method private static long1(J)B
    .registers 4
    .param p0, "x"    # J

    .prologue
    .line 412
    const/16 v0, 0x8

    shr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method private static long2(J)B
    .registers 4
    .param p0, "x"    # J

    .prologue
    .line 408
    const/16 v0, 0x10

    shr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method private static long3(J)B
    .registers 4
    .param p0, "x"    # J

    .prologue
    .line 404
    const/16 v0, 0x18

    shr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method private static long4(J)B
    .registers 4
    .param p0, "x"    # J

    .prologue
    .line 400
    const/16 v0, 0x20

    shr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method private static long5(J)B
    .registers 4
    .param p0, "x"    # J

    .prologue
    .line 396
    const/16 v0, 0x28

    shr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method private static long6(J)B
    .registers 4
    .param p0, "x"    # J

    .prologue
    .line 392
    const/16 v0, 0x30

    shr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method private static long7(J)B
    .registers 4
    .param p0, "x"    # J

    .prologue
    .line 388
    const/16 v0, 0x38

    shr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method private static makeChar(BB)C
    .registers 4
    .param p0, "b1"    # B
    .param p1, "b0"    # B

    .prologue
    .line 66
    shl-int/lit8 v0, p0, 0x8

    and-int/lit16 v1, p1, 0xff

    or-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method private static makeInt(BBBB)I
    .registers 6
    .param p0, "b3"    # B
    .param p1, "b2"    # B
    .param p2, "b1"    # B
    .param p3, "b0"    # B

    .prologue
    .line 220
    shl-int/lit8 v0, p0, 0x18

    .line 221
    and-int/lit16 v1, p1, 0xff

    shl-int/lit8 v1, v1, 0x10

    .line 220
    or-int/2addr v0, v1

    .line 222
    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x8

    .line 220
    or-int/2addr v0, v1

    .line 223
    and-int/lit16 v1, p3, 0xff

    .line 220
    or-int/2addr v0, v1

    return v0
.end method

.method private static makeLong(BBBBBBBB)J
    .registers 16
    .param p0, "b7"    # B
    .param p1, "b6"    # B
    .param p2, "b5"    # B
    .param p3, "b4"    # B
    .param p4, "b3"    # B
    .param p5, "b2"    # B
    .param p6, "b1"    # B
    .param p7, "b0"    # B

    .prologue
    const-wide/16 v6, 0xff

    .line 325
    int-to-long v0, p0

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    .line 326
    int-to-long v2, p1

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    .line 325
    or-long/2addr v0, v2

    .line 327
    int-to-long v2, p2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    .line 325
    or-long/2addr v0, v2

    .line 328
    int-to-long v2, p3

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    .line 325
    or-long/2addr v0, v2

    .line 329
    int-to-long v2, p4

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    .line 325
    or-long/2addr v0, v2

    .line 330
    int-to-long v2, p5

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    .line 325
    or-long/2addr v0, v2

    .line 331
    int-to-long v2, p6

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    .line 325
    or-long/2addr v0, v2

    .line 332
    int-to-long v2, p7

    and-long/2addr v2, v6

    .line 325
    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static makeShort(BB)S
    .registers 4
    .param p0, "b1"    # B
    .param p1, "b0"    # B

    .prologue
    .line 143
    shl-int/lit8 v0, p0, 0x8

    and-int/lit16 v1, p1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method static pageCount(J)I
    .registers 6
    .param p0, "size"    # J

    .prologue
    .line 670
    invoke-static {}, Ljava/nio/Bits;->pageSize()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, p0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {}, Ljava/nio/Bits;->pageSize()I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method static pageSize()I
    .registers 2

    .prologue
    .line 664
    sget v0, Ljava/nio/Bits;->pageSize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    .line 665
    invoke-static {}, Ljava/nio/Bits;->unsafe()Lsun/misc/Unsafe;

    move-result-object v0

    invoke-virtual {v0}, Lsun/misc/Unsafe;->pageSize()I

    move-result v0

    sput v0, Ljava/nio/Bits;->pageSize:I

    .line 666
    :cond_f
    sget v0, Ljava/nio/Bits;->pageSize:I

    return v0
.end method

.method static putChar(JCZ)V
    .registers 4
    .param p0, "a"    # J
    .param p2, "x"    # C
    .param p3, "bigEndian"    # Z

    .prologue
    .line 133
    if-eqz p3, :cond_6

    .line 134
    invoke-static {p0, p1, p2}, Ljava/nio/Bits;->putCharB(JC)V

    .line 137
    :goto_5
    return-void

    .line 136
    :cond_6
    invoke-static {p0, p1, p2}, Ljava/nio/Bits;->putCharL(JC)V

    goto :goto_5
.end method

.method static putChar(Ljava/nio/ByteBuffer;ICZ)V
    .registers 4
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "x"    # C
    .param p3, "bigEndian"    # Z

    .prologue
    .line 126
    if-eqz p3, :cond_6

    .line 127
    invoke-static {p0, p1, p2}, Ljava/nio/Bits;->putCharB(Ljava/nio/ByteBuffer;IC)V

    .line 130
    :goto_5
    return-void

    .line 129
    :cond_6
    invoke-static {p0, p1, p2}, Ljava/nio/Bits;->putCharL(Ljava/nio/ByteBuffer;IC)V

    goto :goto_5
.end method

.method static putCharB(JC)V
    .registers 7
    .param p0, "a"    # J
    .param p2, "x"    # C

    .prologue
    .line 121
    invoke-static {p2}, Ljava/nio/Bits;->char1(C)B

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/nio/Bits;->_put(JB)V

    .line 122
    const-wide/16 v0, 0x1

    add-long/2addr v0, p0

    invoke-static {p2}, Ljava/nio/Bits;->char0(C)B

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    .line 123
    return-void
.end method

.method static putCharB(Ljava/nio/ByteBuffer;IC)V
    .registers 5
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "x"    # C

    .prologue
    .line 116
    invoke-static {p2}, Ljava/nio/Bits;->char1(C)B

    move-result v0

    invoke-virtual {p0, p1, v0}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 117
    add-int/lit8 v0, p1, 0x1

    invoke-static {p2}, Ljava/nio/Bits;->char0(C)B

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 118
    return-void
.end method

.method static putCharL(JC)V
    .registers 7
    .param p0, "a"    # J
    .param p2, "x"    # C

    .prologue
    .line 111
    invoke-static {p2}, Ljava/nio/Bits;->char0(C)B

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/nio/Bits;->_put(JB)V

    .line 112
    const-wide/16 v0, 0x1

    add-long/2addr v0, p0

    invoke-static {p2}, Ljava/nio/Bits;->char1(C)B

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    .line 113
    return-void
.end method

.method static putCharL(Ljava/nio/ByteBuffer;IC)V
    .registers 5
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "x"    # C

    .prologue
    .line 106
    invoke-static {p2}, Ljava/nio/Bits;->char0(C)B

    move-result v0

    invoke-virtual {p0, p1, v0}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 107
    add-int/lit8 v0, p1, 0x1

    invoke-static {p2}, Ljava/nio/Bits;->char1(C)B

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 108
    return-void
.end method

.method static putDouble(JDZ)V
    .registers 5
    .param p0, "a"    # J
    .param p2, "x"    # D
    .param p4, "bigEndian"    # Z

    .prologue
    .line 585
    if-eqz p4, :cond_6

    .line 586
    invoke-static {p0, p1, p2, p3}, Ljava/nio/Bits;->putDoubleB(JD)V

    .line 589
    :goto_5
    return-void

    .line 588
    :cond_6
    invoke-static {p0, p1, p2, p3}, Ljava/nio/Bits;->putDoubleL(JD)V

    goto :goto_5
.end method

.method static putDouble(Ljava/nio/ByteBuffer;IDZ)V
    .registers 5
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "x"    # D
    .param p4, "bigEndian"    # Z

    .prologue
    .line 578
    if-eqz p4, :cond_6

    .line 579
    invoke-static {p0, p1, p2, p3}, Ljava/nio/Bits;->putDoubleB(Ljava/nio/ByteBuffer;ID)V

    .line 582
    :goto_5
    return-void

    .line 581
    :cond_6
    invoke-static {p0, p1, p2, p3}, Ljava/nio/Bits;->putDoubleL(Ljava/nio/ByteBuffer;ID)V

    goto :goto_5
.end method

.method static putDoubleB(JD)V
    .registers 6
    .param p0, "a"    # J
    .param p2, "x"    # D

    .prologue
    .line 574
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/nio/Bits;->putLongB(JJ)V

    .line 575
    return-void
.end method

.method static putDoubleB(Ljava/nio/ByteBuffer;ID)V
    .registers 6
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "x"    # D

    .prologue
    .line 570
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/nio/Bits;->putLongB(Ljava/nio/ByteBuffer;IJ)V

    .line 571
    return-void
.end method

.method static putDoubleL(JD)V
    .registers 6
    .param p0, "a"    # J
    .param p2, "x"    # D

    .prologue
    .line 566
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/nio/Bits;->putLongL(JJ)V

    .line 567
    return-void
.end method

.method static putDoubleL(Ljava/nio/ByteBuffer;ID)V
    .registers 6
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "x"    # D

    .prologue
    .line 562
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/nio/Bits;->putLongL(Ljava/nio/ByteBuffer;IJ)V

    .line 563
    return-void
.end method

.method static putFloat(JFZ)V
    .registers 4
    .param p0, "a"    # J
    .param p2, "x"    # F
    .param p3, "bigEndian"    # Z

    .prologue
    .line 528
    if-eqz p3, :cond_6

    .line 529
    invoke-static {p0, p1, p2}, Ljava/nio/Bits;->putFloatB(JF)V

    .line 532
    :goto_5
    return-void

    .line 531
    :cond_6
    invoke-static {p0, p1, p2}, Ljava/nio/Bits;->putFloatL(JF)V

    goto :goto_5
.end method

.method static putFloat(Ljava/nio/ByteBuffer;IFZ)V
    .registers 4
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "x"    # F
    .param p3, "bigEndian"    # Z

    .prologue
    .line 521
    if-eqz p3, :cond_6

    .line 522
    invoke-static {p0, p1, p2}, Ljava/nio/Bits;->putFloatB(Ljava/nio/ByteBuffer;IF)V

    .line 525
    :goto_5
    return-void

    .line 524
    :cond_6
    invoke-static {p0, p1, p2}, Ljava/nio/Bits;->putFloatL(Ljava/nio/ByteBuffer;IF)V

    goto :goto_5
.end method

.method static putFloatB(JF)V
    .registers 5
    .param p0, "a"    # J
    .param p2, "x"    # F

    .prologue
    .line 517
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/nio/Bits;->putIntB(JI)V

    .line 518
    return-void
.end method

.method static putFloatB(Ljava/nio/ByteBuffer;IF)V
    .registers 4
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "x"    # F

    .prologue
    .line 513
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/nio/Bits;->putIntB(Ljava/nio/ByteBuffer;II)V

    .line 514
    return-void
.end method

.method static putFloatL(JF)V
    .registers 5
    .param p0, "a"    # J
    .param p2, "x"    # F

    .prologue
    .line 509
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/nio/Bits;->putIntL(JI)V

    .line 510
    return-void
.end method

.method static putFloatL(Ljava/nio/ByteBuffer;IF)V
    .registers 4
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "x"    # F

    .prologue
    .line 505
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/nio/Bits;->putIntL(Ljava/nio/ByteBuffer;II)V

    .line 506
    return-void
.end method

.method static putInt(JIZ)V
    .registers 4
    .param p0, "a"    # J
    .param p2, "x"    # I
    .param p3, "bigEndian"    # Z

    .prologue
    .line 314
    if-eqz p3, :cond_6

    .line 315
    invoke-static {p0, p1, p2}, Ljava/nio/Bits;->putIntB(JI)V

    .line 318
    :goto_5
    return-void

    .line 317
    :cond_6
    invoke-static {p0, p1, p2}, Ljava/nio/Bits;->putIntL(JI)V

    goto :goto_5
.end method

.method static putInt(Ljava/nio/ByteBuffer;IIZ)V
    .registers 4
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "x"    # I
    .param p3, "bigEndian"    # Z

    .prologue
    .line 307
    if-eqz p3, :cond_6

    .line 308
    invoke-static {p0, p1, p2}, Ljava/nio/Bits;->putIntB(Ljava/nio/ByteBuffer;II)V

    .line 311
    :goto_5
    return-void

    .line 310
    :cond_6
    invoke-static {p0, p1, p2}, Ljava/nio/Bits;->putIntL(Ljava/nio/ByteBuffer;II)V

    goto :goto_5
.end method

.method static putIntB(JI)V
    .registers 7
    .param p0, "a"    # J
    .param p2, "x"    # I

    .prologue
    .line 300
    invoke-static {p2}, Ljava/nio/Bits;->int3(I)B

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/nio/Bits;->_put(JB)V

    .line 301
    const-wide/16 v0, 0x1

    add-long/2addr v0, p0

    invoke-static {p2}, Ljava/nio/Bits;->int2(I)B

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    .line 302
    const-wide/16 v0, 0x2

    add-long/2addr v0, p0

    invoke-static {p2}, Ljava/nio/Bits;->int1(I)B

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    .line 303
    const-wide/16 v0, 0x3

    add-long/2addr v0, p0

    invoke-static {p2}, Ljava/nio/Bits;->int0(I)B

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    .line 304
    return-void
.end method

.method static putIntB(Ljava/nio/ByteBuffer;II)V
    .registers 5
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "x"    # I

    .prologue
    .line 293
    invoke-static {p2}, Ljava/nio/Bits;->int3(I)B

    move-result v0

    invoke-virtual {p0, p1, v0}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 294
    add-int/lit8 v0, p1, 0x1

    invoke-static {p2}, Ljava/nio/Bits;->int2(I)B

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 295
    add-int/lit8 v0, p1, 0x2

    invoke-static {p2}, Ljava/nio/Bits;->int1(I)B

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 296
    add-int/lit8 v0, p1, 0x3

    invoke-static {p2}, Ljava/nio/Bits;->int0(I)B

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 297
    return-void
.end method

.method static putIntL(JI)V
    .registers 7
    .param p0, "a"    # J
    .param p2, "x"    # I

    .prologue
    .line 286
    const-wide/16 v0, 0x3

    add-long/2addr v0, p0

    invoke-static {p2}, Ljava/nio/Bits;->int3(I)B

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    .line 287
    const-wide/16 v0, 0x2

    add-long/2addr v0, p0

    invoke-static {p2}, Ljava/nio/Bits;->int2(I)B

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    .line 288
    const-wide/16 v0, 0x1

    add-long/2addr v0, p0

    invoke-static {p2}, Ljava/nio/Bits;->int1(I)B

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    .line 289
    invoke-static {p2}, Ljava/nio/Bits;->int0(I)B

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/nio/Bits;->_put(JB)V

    .line 290
    return-void
.end method

.method static putIntL(Ljava/nio/ByteBuffer;II)V
    .registers 5
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "x"    # I

    .prologue
    .line 279
    add-int/lit8 v0, p1, 0x3

    invoke-static {p2}, Ljava/nio/Bits;->int3(I)B

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 280
    add-int/lit8 v0, p1, 0x2

    invoke-static {p2}, Ljava/nio/Bits;->int2(I)B

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 281
    add-int/lit8 v0, p1, 0x1

    invoke-static {p2}, Ljava/nio/Bits;->int1(I)B

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 282
    invoke-static {p2}, Ljava/nio/Bits;->int0(I)B

    move-result v0

    invoke-virtual {p0, p1, v0}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 283
    return-void
.end method

.method static putLong(JJZ)V
    .registers 5
    .param p0, "a"    # J
    .param p2, "x"    # J
    .param p4, "bigEndian"    # Z

    .prologue
    .line 471
    if-eqz p4, :cond_6

    .line 472
    invoke-static {p0, p1, p2, p3}, Ljava/nio/Bits;->putLongB(JJ)V

    .line 475
    :goto_5
    return-void

    .line 474
    :cond_6
    invoke-static {p0, p1, p2, p3}, Ljava/nio/Bits;->putLongL(JJ)V

    goto :goto_5
.end method

.method static putLong(Ljava/nio/ByteBuffer;IJZ)V
    .registers 5
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "x"    # J
    .param p4, "bigEndian"    # Z

    .prologue
    .line 464
    if-eqz p4, :cond_6

    .line 465
    invoke-static {p0, p1, p2, p3}, Ljava/nio/Bits;->putLongB(Ljava/nio/ByteBuffer;IJ)V

    .line 468
    :goto_5
    return-void

    .line 467
    :cond_6
    invoke-static {p0, p1, p2, p3}, Ljava/nio/Bits;->putLongL(Ljava/nio/ByteBuffer;IJ)V

    goto :goto_5
.end method

.method static putLongB(JJ)V
    .registers 8
    .param p0, "a"    # J
    .param p2, "x"    # J

    .prologue
    .line 453
    invoke-static {p2, p3}, Ljava/nio/Bits;->long7(J)B

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/nio/Bits;->_put(JB)V

    .line 454
    const-wide/16 v0, 0x1

    add-long/2addr v0, p0

    invoke-static {p2, p3}, Ljava/nio/Bits;->long6(J)B

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    .line 455
    const-wide/16 v0, 0x2

    add-long/2addr v0, p0

    invoke-static {p2, p3}, Ljava/nio/Bits;->long5(J)B

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    .line 456
    const-wide/16 v0, 0x3

    add-long/2addr v0, p0

    invoke-static {p2, p3}, Ljava/nio/Bits;->long4(J)B

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    .line 457
    const-wide/16 v0, 0x4

    add-long/2addr v0, p0

    invoke-static {p2, p3}, Ljava/nio/Bits;->long3(J)B

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    .line 458
    const-wide/16 v0, 0x5

    add-long/2addr v0, p0

    invoke-static {p2, p3}, Ljava/nio/Bits;->long2(J)B

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    .line 459
    const-wide/16 v0, 0x6

    add-long/2addr v0, p0

    invoke-static {p2, p3}, Ljava/nio/Bits;->long1(J)B

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    .line 460
    const-wide/16 v0, 0x7

    add-long/2addr v0, p0

    invoke-static {p2, p3}, Ljava/nio/Bits;->long0(J)B

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    .line 461
    return-void
.end method

.method static putLongB(Ljava/nio/ByteBuffer;IJ)V
    .registers 6
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "x"    # J

    .prologue
    .line 442
    invoke-static {p2, p3}, Ljava/nio/Bits;->long7(J)B

    move-result v0

    invoke-virtual {p0, p1, v0}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 443
    add-int/lit8 v0, p1, 0x1

    invoke-static {p2, p3}, Ljava/nio/Bits;->long6(J)B

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 444
    add-int/lit8 v0, p1, 0x2

    invoke-static {p2, p3}, Ljava/nio/Bits;->long5(J)B

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 445
    add-int/lit8 v0, p1, 0x3

    invoke-static {p2, p3}, Ljava/nio/Bits;->long4(J)B

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 446
    add-int/lit8 v0, p1, 0x4

    invoke-static {p2, p3}, Ljava/nio/Bits;->long3(J)B

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 447
    add-int/lit8 v0, p1, 0x5

    invoke-static {p2, p3}, Ljava/nio/Bits;->long2(J)B

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 448
    add-int/lit8 v0, p1, 0x6

    invoke-static {p2, p3}, Ljava/nio/Bits;->long1(J)B

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 449
    add-int/lit8 v0, p1, 0x7

    invoke-static {p2, p3}, Ljava/nio/Bits;->long0(J)B

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 450
    return-void
.end method

.method static putLongL(JJ)V
    .registers 8
    .param p0, "a"    # J
    .param p2, "x"    # J

    .prologue
    .line 431
    const-wide/16 v0, 0x7

    add-long/2addr v0, p0

    invoke-static {p2, p3}, Ljava/nio/Bits;->long7(J)B

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    .line 432
    const-wide/16 v0, 0x6

    add-long/2addr v0, p0

    invoke-static {p2, p3}, Ljava/nio/Bits;->long6(J)B

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    .line 433
    const-wide/16 v0, 0x5

    add-long/2addr v0, p0

    invoke-static {p2, p3}, Ljava/nio/Bits;->long5(J)B

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    .line 434
    const-wide/16 v0, 0x4

    add-long/2addr v0, p0

    invoke-static {p2, p3}, Ljava/nio/Bits;->long4(J)B

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    .line 435
    const-wide/16 v0, 0x3

    add-long/2addr v0, p0

    invoke-static {p2, p3}, Ljava/nio/Bits;->long3(J)B

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    .line 436
    const-wide/16 v0, 0x2

    add-long/2addr v0, p0

    invoke-static {p2, p3}, Ljava/nio/Bits;->long2(J)B

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    .line 437
    const-wide/16 v0, 0x1

    add-long/2addr v0, p0

    invoke-static {p2, p3}, Ljava/nio/Bits;->long1(J)B

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    .line 438
    invoke-static {p2, p3}, Ljava/nio/Bits;->long0(J)B

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/nio/Bits;->_put(JB)V

    .line 439
    return-void
.end method

.method static putLongL(Ljava/nio/ByteBuffer;IJ)V
    .registers 6
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "x"    # J

    .prologue
    .line 420
    add-int/lit8 v0, p1, 0x7

    invoke-static {p2, p3}, Ljava/nio/Bits;->long7(J)B

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 421
    add-int/lit8 v0, p1, 0x6

    invoke-static {p2, p3}, Ljava/nio/Bits;->long6(J)B

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 422
    add-int/lit8 v0, p1, 0x5

    invoke-static {p2, p3}, Ljava/nio/Bits;->long5(J)B

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 423
    add-int/lit8 v0, p1, 0x4

    invoke-static {p2, p3}, Ljava/nio/Bits;->long4(J)B

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 424
    add-int/lit8 v0, p1, 0x3

    invoke-static {p2, p3}, Ljava/nio/Bits;->long3(J)B

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 425
    add-int/lit8 v0, p1, 0x2

    invoke-static {p2, p3}, Ljava/nio/Bits;->long2(J)B

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 426
    add-int/lit8 v0, p1, 0x1

    invoke-static {p2, p3}, Ljava/nio/Bits;->long1(J)B

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 427
    invoke-static {p2, p3}, Ljava/nio/Bits;->long0(J)B

    move-result v0

    invoke-virtual {p0, p1, v0}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 428
    return-void
.end method

.method static putShort(JSZ)V
    .registers 4
    .param p0, "a"    # J
    .param p2, "x"    # S
    .param p3, "bigEndian"    # Z

    .prologue
    .line 210
    if-eqz p3, :cond_6

    .line 211
    invoke-static {p0, p1, p2}, Ljava/nio/Bits;->putShortB(JS)V

    .line 214
    :goto_5
    return-void

    .line 213
    :cond_6
    invoke-static {p0, p1, p2}, Ljava/nio/Bits;->putShortL(JS)V

    goto :goto_5
.end method

.method static putShort(Ljava/nio/ByteBuffer;ISZ)V
    .registers 4
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "x"    # S
    .param p3, "bigEndian"    # Z

    .prologue
    .line 203
    if-eqz p3, :cond_6

    .line 204
    invoke-static {p0, p1, p2}, Ljava/nio/Bits;->putShortB(Ljava/nio/ByteBuffer;IS)V

    .line 207
    :goto_5
    return-void

    .line 206
    :cond_6
    invoke-static {p0, p1, p2}, Ljava/nio/Bits;->putShortL(Ljava/nio/ByteBuffer;IS)V

    goto :goto_5
.end method

.method static putShortB(JS)V
    .registers 7
    .param p0, "a"    # J
    .param p2, "x"    # S

    .prologue
    .line 198
    invoke-static {p2}, Ljava/nio/Bits;->short1(S)B

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/nio/Bits;->_put(JB)V

    .line 199
    const-wide/16 v0, 0x1

    add-long/2addr v0, p0

    invoke-static {p2}, Ljava/nio/Bits;->short0(S)B

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    .line 200
    return-void
.end method

.method static putShortB(Ljava/nio/ByteBuffer;IS)V
    .registers 5
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "x"    # S

    .prologue
    .line 193
    invoke-static {p2}, Ljava/nio/Bits;->short1(S)B

    move-result v0

    invoke-virtual {p0, p1, v0}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 194
    add-int/lit8 v0, p1, 0x1

    invoke-static {p2}, Ljava/nio/Bits;->short0(S)B

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 195
    return-void
.end method

.method static putShortL(JS)V
    .registers 7
    .param p0, "a"    # J
    .param p2, "x"    # S

    .prologue
    .line 188
    invoke-static {p2}, Ljava/nio/Bits;->short0(S)B

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/nio/Bits;->_put(JB)V

    .line 189
    const-wide/16 v0, 0x1

    add-long/2addr v0, p0

    invoke-static {p2}, Ljava/nio/Bits;->short1(S)B

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    .line 190
    return-void
.end method

.method static putShortL(Ljava/nio/ByteBuffer;IS)V
    .registers 5
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "x"    # S

    .prologue
    .line 183
    invoke-static {p2}, Ljava/nio/Bits;->short0(S)B

    move-result v0

    invoke-virtual {p0, p1, v0}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 184
    add-int/lit8 v0, p1, 0x1

    invoke-static {p2}, Ljava/nio/Bits;->short1(S)B

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 185
    return-void
.end method

.method static reserveMemory(JI)V
    .registers 15
    .param p0, "size"    # J
    .param p2, "cap"    # I

    .prologue
    const-wide/16 v10, 0x1

    .line 703
    const-class v2, Ljava/nio/Bits;

    monitor-enter v2

    .line 704
    :try_start_5
    sget-boolean v1, Ljava/nio/Bits;->memoryLimitSet:Z

    if-nez v1, :cond_18

    invoke-static {}, Lsun/misc/VM;->isBooted()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 705
    invoke-static {}, Lsun/misc/VM;->maxDirectMemory()J

    move-result-wide v4

    sput-wide v4, Ljava/nio/Bits;->maxMemory:J

    .line 706
    const/4 v1, 0x1

    sput-boolean v1, Ljava/nio/Bits;->memoryLimitSet:Z

    .line 711
    :cond_18
    int-to-long v4, p2

    sget-wide v6, Ljava/nio/Bits;->maxMemory:J

    sget-wide v8, Ljava/nio/Bits;->totalCapacity:J

    sub-long/2addr v6, v8

    cmp-long v1, v4, v6

    if-gtz v1, :cond_34

    .line 712
    sget-wide v4, Ljava/nio/Bits;->reservedMemory:J

    add-long/2addr v4, p0

    sput-wide v4, Ljava/nio/Bits;->reservedMemory:J

    .line 713
    sget-wide v4, Ljava/nio/Bits;->totalCapacity:J

    int-to-long v6, p2

    add-long/2addr v4, v6

    sput-wide v4, Ljava/nio/Bits;->totalCapacity:J

    .line 714
    sget-wide v4, Ljava/nio/Bits;->count:J

    add-long/2addr v4, v10

    sput-wide v4, Ljava/nio/Bits;->count:J
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_56

    monitor-exit v2

    .line 715
    return-void

    :cond_34
    monitor-exit v2

    .line 719
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 721
    const-wide/16 v2, 0x64

    :try_start_3a
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3d
    .catch Ljava/lang/InterruptedException; {:try_start_3a .. :try_end_3d} :catch_59

    .line 726
    :goto_3d
    const-class v2, Ljava/nio/Bits;

    monitor-enter v2

    .line 727
    :try_start_40
    sget-wide v4, Ljava/nio/Bits;->totalCapacity:J

    int-to-long v6, p2

    add-long/2addr v4, v6

    sget-wide v6, Ljava/nio/Bits;->maxMemory:J

    cmp-long v1, v4, v6

    if-lez v1, :cond_62

    .line 728
    new-instance v1, Ljava/lang/OutOfMemoryError;

    const-string/jumbo v3, "Direct buffer memory"

    invoke-direct {v1, v3}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_53
    .catchall {:try_start_40 .. :try_end_53} :catchall_53

    .line 726
    :catchall_53
    move-exception v1

    monitor-exit v2

    throw v1

    .line 703
    :catchall_56
    move-exception v1

    monitor-exit v2

    throw v1

    .line 722
    :catch_59
    move-exception v0

    .line 724
    .local v0, "x":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_3d

    .line 729
    .end local v0    # "x":Ljava/lang/InterruptedException;
    :cond_62
    :try_start_62
    sget-wide v4, Ljava/nio/Bits;->reservedMemory:J

    add-long/2addr v4, p0

    sput-wide v4, Ljava/nio/Bits;->reservedMemory:J

    .line 730
    sget-wide v4, Ljava/nio/Bits;->totalCapacity:J

    int-to-long v6, p2

    add-long/2addr v4, v6

    sput-wide v4, Ljava/nio/Bits;->totalCapacity:J

    .line 731
    sget-wide v4, Ljava/nio/Bits;->count:J

    add-long/2addr v4, v10

    sput-wide v4, Ljava/nio/Bits;->count:J
    :try_end_72
    .catchall {:try_start_62 .. :try_end_72} :catchall_53

    monitor-exit v2

    .line 734
    return-void
.end method

.method private static short0(S)B
    .registers 2
    .param p0, "x"    # S

    .prologue
    .line 179
    int-to-byte v0, p0

    return v0
.end method

.method private static short1(S)B
    .registers 2
    .param p0, "x"    # S

    .prologue
    .line 175
    shr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    return v0
.end method

.method static swap(C)C
    .registers 2
    .param p0, "x"    # C

    .prologue
    .line 51
    invoke-static {p0}, Ljava/lang/Character;->reverseBytes(C)C

    move-result v0

    return v0
.end method

.method static swap(I)I
    .registers 2
    .param p0, "x"    # I

    .prologue
    .line 55
    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    return v0
.end method

.method static swap(J)J
    .registers 4
    .param p0, "x"    # J

    .prologue
    .line 59
    invoke-static {p0, p1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static swap(S)S
    .registers 2
    .param p0, "x"    # S

    .prologue
    .line 47
    invoke-static {p0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v0

    return v0
.end method

.method static unaligned()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 677
    sget-boolean v1, Ljava/nio/Bits;->unalignedKnown:Z

    if-eqz v1, :cond_8

    .line 678
    sget-boolean v1, Ljava/nio/Bits;->unaligned:Z

    return v1

    .line 680
    :cond_8
    new-instance v1, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v3, "os.arch"

    invoke-direct {v1, v3}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    .line 679
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 681
    .local v0, "arch":Ljava/lang/String;
    const-string/jumbo v1, "i386"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    const-string/jumbo v1, "x86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 682
    const-string/jumbo v1, "amd64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 681
    if-nez v1, :cond_3f

    .line 682
    const-string/jumbo v1, "x86_64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 681
    :goto_38
    sput-boolean v1, Ljava/nio/Bits;->unaligned:Z

    .line 683
    sput-boolean v2, Ljava/nio/Bits;->unalignedKnown:Z

    .line 684
    sget-boolean v1, Ljava/nio/Bits;->unaligned:Z

    return v1

    :cond_3f
    move v1, v2

    .line 681
    goto :goto_38
.end method

.method static declared-synchronized unreserveMemory(JI)V
    .registers 9
    .param p0, "size"    # J
    .param p2, "cap"    # I

    .prologue
    const-class v1, Ljava/nio/Bits;

    monitor-enter v1

    .line 737
    :try_start_3
    sget-wide v2, Ljava/nio/Bits;->reservedMemory:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_32

    .line 738
    sget-wide v2, Ljava/nio/Bits;->reservedMemory:J

    sub-long/2addr v2, p0

    sput-wide v2, Ljava/nio/Bits;->reservedMemory:J

    .line 739
    sget-wide v2, Ljava/nio/Bits;->totalCapacity:J

    int-to-long v4, p2

    sub-long/2addr v2, v4

    sput-wide v2, Ljava/nio/Bits;->totalCapacity:J

    .line 740
    sget-wide v2, Ljava/nio/Bits;->count:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    sput-wide v2, Ljava/nio/Bits;->count:J

    .line 741
    sget-boolean v0, Ljava/nio/Bits;->-assertionsDisabled:Z

    if-nez v0, :cond_32

    sget-wide v2, Ljava/nio/Bits;->reservedMemory:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-gtz v0, :cond_32

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2f

    :catchall_2f
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_32
    monitor-exit v1

    .line 743
    return-void
.end method

.method static unsafe()Lsun/misc/Unsafe;
    .registers 1

    .prologue
    .line 605
    sget-object v0, Ljava/nio/Bits;->unsafe:Lsun/misc/Unsafe;

    return-object v0
.end method
