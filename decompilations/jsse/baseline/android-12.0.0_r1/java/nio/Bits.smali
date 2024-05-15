.class Ljava/nio/Bits;
.super Ljava/lang/Object;
.source "Bits.java"


# static fields
.field private static final blacklist byteOrder:Ljava/nio/ByteOrder;

.field private static blacklist pageSize:I

.field private static blacklist unaligned:Z

.field private static blacklist unalignedKnown:Z

.field private static final blacklist unsafe:Lsun/misc/Unsafe;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 550
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/nio/Bits;->unsafe:Lsun/misc/Unsafe;

    .line 596
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Ljava/nio/Bits;->byteOrder:Ljava/nio/ByteOrder;

    .line 601
    const/4 v0, -0x1

    sput v0, Ljava/nio/Bits;->pageSize:I

    .line 614
    const/4 v0, 0x0

    sput-boolean v0, Ljava/nio/Bits;->unalignedKnown:Z

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist _get(J)B
    .registers 3
    .param p0, "a"    # J

    .line 553
    sget-object v0, Ljava/nio/Bits;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v0

    return v0
.end method

.method private static blacklist _put(JB)V
    .registers 4
    .param p0, "a"    # J
    .param p2, "b"    # B

    .line 557
    sget-object v0, Ljava/nio/Bits;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->putByte(JB)V

    .line 558
    return-void
.end method

.method static blacklist byteOrder()Ljava/nio/ByteOrder;
    .registers 1

    .line 575
    sget-object v0, Ljava/nio/Bits;->byteOrder:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method private static blacklist char0(C)B
    .registers 2
    .param p0, "x"    # C

    .line 97
    int-to-byte v0, p0

    return v0
.end method

.method private static blacklist char1(C)B
    .registers 2
    .param p0, "x"    # C

    .line 96
    shr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    return v0
.end method

.method static blacklist getChar(JZ)C
    .registers 4
    .param p0, "a"    # J
    .param p2, "bigEndian"    # Z

    .line 93
    if-eqz p2, :cond_7

    invoke-static {p0, p1}, Ljava/nio/Bits;->getCharB(J)C

    move-result v0

    goto :goto_b

    :cond_7
    invoke-static {p0, p1}, Ljava/nio/Bits;->getCharL(J)C

    move-result v0

    :goto_b
    return v0
.end method

.method static blacklist getChar(Ljava/nio/ByteBuffer;IZ)C
    .registers 4
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "bigEndian"    # Z

    .line 89
    if-eqz p2, :cond_7

    invoke-static {p0, p1}, Ljava/nio/Bits;->getCharB(Ljava/nio/ByteBuffer;I)C

    move-result v0

    goto :goto_b

    :cond_7
    invoke-static {p0, p1}, Ljava/nio/Bits;->getCharL(Ljava/nio/ByteBuffer;I)C

    move-result v0

    :goto_b
    return v0
.end method

.method static blacklist getCharB(J)C
    .registers 5
    .param p0, "a"    # J

    .line 84
    invoke-static {p0, p1}, Ljava/nio/Bits;->_get(J)B

    move-result v0

    const-wide/16 v1, 0x1

    add-long/2addr v1, p0

    .line 85
    invoke-static {v1, v2}, Ljava/nio/Bits;->_get(J)B

    move-result v1

    .line 84
    invoke-static {v0, v1}, Ljava/nio/Bits;->makeChar(BB)C

    move-result v0

    return v0
.end method

.method static blacklist getCharB(Ljava/nio/ByteBuffer;I)C
    .registers 4
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I

    .line 79
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v0

    add-int/lit8 v1, p1, 0x1

    .line 80
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v1

    .line 79
    invoke-static {v0, v1}, Ljava/nio/Bits;->makeChar(BB)C

    move-result v0

    return v0
.end method

.method static blacklist getCharL(J)C
    .registers 4
    .param p0, "a"    # J

    .line 74
    const-wide/16 v0, 0x1

    add-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/nio/Bits;->_get(J)B

    move-result v0

    .line 75
    invoke-static {p0, p1}, Ljava/nio/Bits;->_get(J)B

    move-result v1

    .line 74
    invoke-static {v0, v1}, Ljava/nio/Bits;->makeChar(BB)C

    move-result v0

    return v0
.end method

.method static blacklist getCharL(Ljava/nio/ByteBuffer;I)C
    .registers 4
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I

    .line 69
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v0

    .line 70
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v1

    .line 69
    invoke-static {v0, v1}, Ljava/nio/Bits;->makeChar(BB)C

    move-result v0

    return v0
.end method

.method static blacklist getDouble(JZ)D
    .registers 5
    .param p0, "a"    # J
    .param p2, "bigEndian"    # Z

    .line 514
    if-eqz p2, :cond_7

    invoke-static {p0, p1}, Ljava/nio/Bits;->getDoubleB(J)D

    move-result-wide v0

    goto :goto_b

    :cond_7
    invoke-static {p0, p1}, Ljava/nio/Bits;->getDoubleL(J)D

    move-result-wide v0

    :goto_b
    return-wide v0
.end method

.method static blacklist getDouble(Ljava/nio/ByteBuffer;IZ)D
    .registers 5
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "bigEndian"    # Z

    .line 510
    if-eqz p2, :cond_7

    invoke-static {p0, p1}, Ljava/nio/Bits;->getDoubleB(Ljava/nio/ByteBuffer;I)D

    move-result-wide v0

    goto :goto_b

    :cond_7
    invoke-static {p0, p1}, Ljava/nio/Bits;->getDoubleL(Ljava/nio/ByteBuffer;I)D

    move-result-wide v0

    :goto_b
    return-wide v0
.end method

.method static blacklist getDoubleB(J)D
    .registers 4
    .param p0, "a"    # J

    .line 506
    invoke-static {p0, p1}, Ljava/nio/Bits;->getLongB(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method static blacklist getDoubleB(Ljava/nio/ByteBuffer;I)D
    .registers 4
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I

    .line 502
    invoke-static {p0, p1}, Ljava/nio/Bits;->getLongB(Ljava/nio/ByteBuffer;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method static blacklist getDoubleL(J)D
    .registers 4
    .param p0, "a"    # J

    .line 498
    invoke-static {p0, p1}, Ljava/nio/Bits;->getLongL(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method static blacklist getDoubleL(Ljava/nio/ByteBuffer;I)D
    .registers 4
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I

    .line 494
    invoke-static {p0, p1}, Ljava/nio/Bits;->getLongL(Ljava/nio/ByteBuffer;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method static blacklist getFloat(JZ)F
    .registers 4
    .param p0, "a"    # J
    .param p2, "bigEndian"    # Z

    .line 457
    if-eqz p2, :cond_7

    invoke-static {p0, p1}, Ljava/nio/Bits;->getFloatB(J)F

    move-result v0

    goto :goto_b

    :cond_7
    invoke-static {p0, p1}, Ljava/nio/Bits;->getFloatL(J)F

    move-result v0

    :goto_b
    return v0
.end method

.method static blacklist getFloat(Ljava/nio/ByteBuffer;IZ)F
    .registers 4
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "bigEndian"    # Z

    .line 453
    if-eqz p2, :cond_7

    invoke-static {p0, p1}, Ljava/nio/Bits;->getFloatB(Ljava/nio/ByteBuffer;I)F

    move-result v0

    goto :goto_b

    :cond_7
    invoke-static {p0, p1}, Ljava/nio/Bits;->getFloatL(Ljava/nio/ByteBuffer;I)F

    move-result v0

    :goto_b
    return v0
.end method

.method static blacklist getFloatB(J)F
    .registers 3
    .param p0, "a"    # J

    .line 449
    invoke-static {p0, p1}, Ljava/nio/Bits;->getIntB(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method static blacklist getFloatB(Ljava/nio/ByteBuffer;I)F
    .registers 3
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I

    .line 445
    invoke-static {p0, p1}, Ljava/nio/Bits;->getIntB(Ljava/nio/ByteBuffer;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method static blacklist getFloatL(J)F
    .registers 3
    .param p0, "a"    # J

    .line 441
    invoke-static {p0, p1}, Ljava/nio/Bits;->getIntL(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method static blacklist getFloatL(Ljava/nio/ByteBuffer;I)F
    .registers 3
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I

    .line 437
    invoke-static {p0, p1}, Ljava/nio/Bits;->getIntL(Ljava/nio/ByteBuffer;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method static blacklist getInt(JZ)I
    .registers 4
    .param p0, "a"    # J
    .param p2, "bigEndian"    # Z

    .line 248
    if-eqz p2, :cond_7

    invoke-static {p0, p1}, Ljava/nio/Bits;->getIntB(J)I

    move-result v0

    goto :goto_b

    :cond_7
    invoke-static {p0, p1}, Ljava/nio/Bits;->getIntL(J)I

    move-result v0

    :goto_b
    return v0
.end method

.method static blacklist getInt(Ljava/nio/ByteBuffer;IZ)I
    .registers 4
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "bigEndian"    # Z

    .line 244
    if-eqz p2, :cond_7

    invoke-static {p0, p1}, Ljava/nio/Bits;->getIntB(Ljava/nio/ByteBuffer;I)I

    move-result v0

    goto :goto_b

    :cond_7
    invoke-static {p0, p1}, Ljava/nio/Bits;->getIntL(Ljava/nio/ByteBuffer;I)I

    move-result v0

    :goto_b
    return v0
.end method

.method static blacklist getIntB(J)I
    .registers 7
    .param p0, "a"    # J

    .line 237
    invoke-static {p0, p1}, Ljava/nio/Bits;->_get(J)B

    move-result v0

    const-wide/16 v1, 0x1

    add-long/2addr v1, p0

    .line 238
    invoke-static {v1, v2}, Ljava/nio/Bits;->_get(J)B

    move-result v1

    const-wide/16 v2, 0x2

    add-long/2addr v2, p0

    .line 239
    invoke-static {v2, v3}, Ljava/nio/Bits;->_get(J)B

    move-result v2

    const-wide/16 v3, 0x3

    add-long/2addr v3, p0

    .line 240
    invoke-static {v3, v4}, Ljava/nio/Bits;->_get(J)B

    move-result v3

    .line 237
    invoke-static {v0, v1, v2, v3}, Ljava/nio/Bits;->makeInt(BBBB)I

    move-result v0

    return v0
.end method

.method static blacklist getIntB(Ljava/nio/ByteBuffer;I)I
    .registers 6
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I

    .line 230
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v0

    add-int/lit8 v1, p1, 0x1

    .line 231
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v1

    add-int/lit8 v2, p1, 0x2

    .line 232
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v2

    add-int/lit8 v3, p1, 0x3

    .line 233
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v3

    .line 230
    invoke-static {v0, v1, v2, v3}, Ljava/nio/Bits;->makeInt(BBBB)I

    move-result v0

    return v0
.end method

.method static blacklist getIntL(J)I
    .registers 6
    .param p0, "a"    # J

    .line 223
    const-wide/16 v0, 0x3

    add-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/nio/Bits;->_get(J)B

    move-result v0

    const-wide/16 v1, 0x2

    add-long/2addr v1, p0

    .line 224
    invoke-static {v1, v2}, Ljava/nio/Bits;->_get(J)B

    move-result v1

    const-wide/16 v2, 0x1

    add-long/2addr v2, p0

    .line 225
    invoke-static {v2, v3}, Ljava/nio/Bits;->_get(J)B

    move-result v2

    .line 226
    invoke-static {p0, p1}, Ljava/nio/Bits;->_get(J)B

    move-result v3

    .line 223
    invoke-static {v0, v1, v2, v3}, Ljava/nio/Bits;->makeInt(BBBB)I

    move-result v0

    return v0
.end method

.method static blacklist getIntL(Ljava/nio/ByteBuffer;I)I
    .registers 6
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I

    .line 216
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v0

    add-int/lit8 v1, p1, 0x2

    .line 217
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v1

    add-int/lit8 v2, p1, 0x1

    .line 218
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v2

    .line 219
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v3

    .line 216
    invoke-static {v0, v1, v2, v3}, Ljava/nio/Bits;->makeInt(BBBB)I

    move-result v0

    return v0
.end method

.method static blacklist getLong(JZ)J
    .registers 5
    .param p0, "a"    # J
    .param p2, "bigEndian"    # Z

    .line 363
    if-eqz p2, :cond_7

    invoke-static {p0, p1}, Ljava/nio/Bits;->getLongB(J)J

    move-result-wide v0

    goto :goto_b

    :cond_7
    invoke-static {p0, p1}, Ljava/nio/Bits;->getLongL(J)J

    move-result-wide v0

    :goto_b
    return-wide v0
.end method

.method static blacklist getLong(Ljava/nio/ByteBuffer;IZ)J
    .registers 5
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "bigEndian"    # Z

    .line 359
    if-eqz p2, :cond_7

    invoke-static {p0, p1}, Ljava/nio/Bits;->getLongB(Ljava/nio/ByteBuffer;I)J

    move-result-wide v0

    goto :goto_b

    :cond_7
    invoke-static {p0, p1}, Ljava/nio/Bits;->getLongL(Ljava/nio/ByteBuffer;I)J

    move-result-wide v0

    :goto_b
    return-wide v0
.end method

.method static blacklist getLongB(J)J
    .registers 11
    .param p0, "a"    # J

    .line 348
    invoke-static {p0, p1}, Ljava/nio/Bits;->_get(J)B

    move-result v0

    const-wide/16 v1, 0x1

    add-long/2addr v1, p0

    .line 349
    invoke-static {v1, v2}, Ljava/nio/Bits;->_get(J)B

    move-result v1

    const-wide/16 v2, 0x2

    add-long/2addr v2, p0

    .line 350
    invoke-static {v2, v3}, Ljava/nio/Bits;->_get(J)B

    move-result v2

    const-wide/16 v3, 0x3

    add-long/2addr v3, p0

    .line 351
    invoke-static {v3, v4}, Ljava/nio/Bits;->_get(J)B

    move-result v3

    const-wide/16 v4, 0x4

    add-long/2addr v4, p0

    .line 352
    invoke-static {v4, v5}, Ljava/nio/Bits;->_get(J)B

    move-result v4

    const-wide/16 v5, 0x5

    add-long/2addr v5, p0

    .line 353
    invoke-static {v5, v6}, Ljava/nio/Bits;->_get(J)B

    move-result v5

    const-wide/16 v6, 0x6

    add-long/2addr v6, p0

    .line 354
    invoke-static {v6, v7}, Ljava/nio/Bits;->_get(J)B

    move-result v6

    const-wide/16 v7, 0x7

    add-long/2addr v7, p0

    .line 355
    invoke-static {v7, v8}, Ljava/nio/Bits;->_get(J)B

    move-result v7

    .line 348
    invoke-static/range {v0 .. v7}, Ljava/nio/Bits;->makeLong(BBBBBBBB)J

    move-result-wide v0

    return-wide v0
.end method

.method static blacklist getLongB(Ljava/nio/ByteBuffer;I)J
    .registers 10
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I

    .line 337
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v0

    add-int/lit8 v1, p1, 0x1

    .line 338
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v1

    add-int/lit8 v2, p1, 0x2

    .line 339
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v2

    add-int/lit8 v3, p1, 0x3

    .line 340
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v3

    add-int/lit8 v4, p1, 0x4

    .line 341
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v4

    add-int/lit8 v5, p1, 0x5

    .line 342
    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v5

    add-int/lit8 v6, p1, 0x6

    .line 343
    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v6

    add-int/lit8 v7, p1, 0x7

    .line 344
    invoke-virtual {p0, v7}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v7

    .line 337
    invoke-static/range {v0 .. v7}, Ljava/nio/Bits;->makeLong(BBBBBBBB)J

    move-result-wide v0

    return-wide v0
.end method

.method static blacklist getLongL(J)J
    .registers 12
    .param p0, "a"    # J

    .line 326
    const-wide/16 v0, 0x7

    add-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/nio/Bits;->_get(J)B

    move-result v2

    const-wide/16 v0, 0x6

    add-long/2addr v0, p0

    .line 327
    invoke-static {v0, v1}, Ljava/nio/Bits;->_get(J)B

    move-result v3

    const-wide/16 v0, 0x5

    add-long/2addr v0, p0

    .line 328
    invoke-static {v0, v1}, Ljava/nio/Bits;->_get(J)B

    move-result v4

    const-wide/16 v0, 0x4

    add-long/2addr v0, p0

    .line 329
    invoke-static {v0, v1}, Ljava/nio/Bits;->_get(J)B

    move-result v5

    const-wide/16 v0, 0x3

    add-long/2addr v0, p0

    .line 330
    invoke-static {v0, v1}, Ljava/nio/Bits;->_get(J)B

    move-result v6

    const-wide/16 v0, 0x2

    add-long/2addr v0, p0

    .line 331
    invoke-static {v0, v1}, Ljava/nio/Bits;->_get(J)B

    move-result v7

    const-wide/16 v0, 0x1

    add-long/2addr v0, p0

    .line 332
    invoke-static {v0, v1}, Ljava/nio/Bits;->_get(J)B

    move-result v8

    .line 333
    invoke-static {p0, p1}, Ljava/nio/Bits;->_get(J)B

    move-result v9

    .line 326
    invoke-static/range {v2 .. v9}, Ljava/nio/Bits;->makeLong(BBBBBBBB)J

    move-result-wide v0

    return-wide v0
.end method

.method static blacklist getLongL(Ljava/nio/ByteBuffer;I)J
    .registers 11
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I

    .line 315
    add-int/lit8 v0, p1, 0x7

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v1

    add-int/lit8 v0, p1, 0x6

    .line 316
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v2

    add-int/lit8 v0, p1, 0x5

    .line 317
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v3

    add-int/lit8 v0, p1, 0x4

    .line 318
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v4

    add-int/lit8 v0, p1, 0x3

    .line 319
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v5

    add-int/lit8 v0, p1, 0x2

    .line 320
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v6

    add-int/lit8 v0, p1, 0x1

    .line 321
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v7

    .line 322
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v8

    .line 315
    invoke-static/range {v1 .. v8}, Ljava/nio/Bits;->makeLong(BBBBBBBB)J

    move-result-wide v0

    return-wide v0
.end method

.method static blacklist getShort(JZ)S
    .registers 4
    .param p0, "a"    # J
    .param p2, "bigEndian"    # Z

    .line 165
    if-eqz p2, :cond_7

    invoke-static {p0, p1}, Ljava/nio/Bits;->getShortB(J)S

    move-result v0

    goto :goto_b

    :cond_7
    invoke-static {p0, p1}, Ljava/nio/Bits;->getShortL(J)S

    move-result v0

    :goto_b
    return v0
.end method

.method static blacklist getShort(Ljava/nio/ByteBuffer;IZ)S
    .registers 4
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "bigEndian"    # Z

    .line 161
    if-eqz p2, :cond_7

    invoke-static {p0, p1}, Ljava/nio/Bits;->getShortB(Ljava/nio/ByteBuffer;I)S

    move-result v0

    goto :goto_b

    :cond_7
    invoke-static {p0, p1}, Ljava/nio/Bits;->getShortL(Ljava/nio/ByteBuffer;I)S

    move-result v0

    :goto_b
    return v0
.end method

.method static blacklist getShortB(J)S
    .registers 5
    .param p0, "a"    # J

    .line 156
    invoke-static {p0, p1}, Ljava/nio/Bits;->_get(J)B

    move-result v0

    const-wide/16 v1, 0x1

    add-long/2addr v1, p0

    .line 157
    invoke-static {v1, v2}, Ljava/nio/Bits;->_get(J)B

    move-result v1

    .line 156
    invoke-static {v0, v1}, Ljava/nio/Bits;->makeShort(BB)S

    move-result v0

    return v0
.end method

.method static blacklist getShortB(Ljava/nio/ByteBuffer;I)S
    .registers 4
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I

    .line 151
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v0

    add-int/lit8 v1, p1, 0x1

    .line 152
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v1

    .line 151
    invoke-static {v0, v1}, Ljava/nio/Bits;->makeShort(BB)S

    move-result v0

    return v0
.end method

.method static blacklist getShortL(J)S
    .registers 4
    .param p0, "a"    # J

    .line 146
    const-wide/16 v0, 0x1

    add-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/nio/Bits;->_get(J)B

    move-result v0

    .line 147
    invoke-static {p0, p1}, Ljava/nio/Bits;->_get(J)B

    move-result v1

    .line 146
    invoke-static {v0, v1}, Ljava/nio/Bits;->makeShort(BB)S

    move-result v0

    return v0
.end method

.method static blacklist getShortL(Ljava/nio/ByteBuffer;I)S
    .registers 4
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I

    .line 141
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v0

    .line 142
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->_get(I)B

    move-result v1

    .line 141
    invoke-static {v0, v1}, Ljava/nio/Bits;->makeShort(BB)S

    move-result v0

    return v0
.end method

.method private static blacklist int0(I)B
    .registers 2
    .param p0, "x"    # I

    .line 254
    int-to-byte v0, p0

    return v0
.end method

.method private static blacklist int1(I)B
    .registers 2
    .param p0, "x"    # I

    .line 253
    shr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    return v0
.end method

.method private static blacklist int2(I)B
    .registers 2
    .param p0, "x"    # I

    .line 252
    shr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    return v0
.end method

.method private static blacklist int3(I)B
    .registers 2
    .param p0, "x"    # I

    .line 251
    shr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    return v0
.end method

.method private static blacklist long0(J)B
    .registers 3
    .param p0, "x"    # J

    .line 373
    long-to-int v0, p0

    int-to-byte v0, v0

    return v0
.end method

.method private static blacklist long1(J)B
    .registers 4
    .param p0, "x"    # J

    .line 372
    const/16 v0, 0x8

    shr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method private static blacklist long2(J)B
    .registers 4
    .param p0, "x"    # J

    .line 371
    const/16 v0, 0x10

    shr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method private static blacklist long3(J)B
    .registers 4
    .param p0, "x"    # J

    .line 370
    const/16 v0, 0x18

    shr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method private static blacklist long4(J)B
    .registers 4
    .param p0, "x"    # J

    .line 369
    const/16 v0, 0x20

    shr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method private static blacklist long5(J)B
    .registers 4
    .param p0, "x"    # J

    .line 368
    const/16 v0, 0x28

    shr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method private static blacklist long6(J)B
    .registers 4
    .param p0, "x"    # J

    .line 367
    const/16 v0, 0x30

    shr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method private static blacklist long7(J)B
    .registers 4
    .param p0, "x"    # J

    .line 366
    const/16 v0, 0x38

    shr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method private static blacklist makeChar(BB)C
    .registers 4
    .param p0, "b1"    # B
    .param p1, "b0"    # B

    .line 65
    shl-int/lit8 v0, p0, 0x8

    and-int/lit16 v1, p1, 0xff

    or-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method private static blacklist makeInt(BBBB)I
    .registers 6
    .param p0, "b3"    # B
    .param p1, "b2"    # B
    .param p2, "b1"    # B
    .param p3, "b0"    # B

    .line 209
    shl-int/lit8 v0, p0, 0x18

    and-int/lit16 v1, p1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p3, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private static blacklist makeLong(BBBBBBBB)J
    .registers 15
    .param p0, "b7"    # B
    .param p1, "b6"    # B
    .param p2, "b5"    # B
    .param p3, "b4"    # B
    .param p4, "b3"    # B
    .param p5, "b2"    # B
    .param p6, "b1"    # B
    .param p7, "b0"    # B

    .line 304
    int-to-long v0, p0

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    int-to-long v2, p1

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const/16 v6, 0x30

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    int-to-long v2, p2

    and-long/2addr v2, v4

    const/16 v6, 0x28

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    int-to-long v2, p3

    and-long/2addr v2, v4

    const/16 v6, 0x20

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    int-to-long v2, p4

    and-long/2addr v2, v4

    const/16 v6, 0x18

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    int-to-long v2, p5

    and-long/2addr v2, v4

    const/16 v6, 0x10

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    int-to-long v2, p6

    and-long/2addr v2, v4

    const/16 v6, 0x8

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    int-to-long v2, p7

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static blacklist makeShort(BB)S
    .registers 4
    .param p0, "b1"    # B
    .param p1, "b0"    # B

    .line 137
    shl-int/lit8 v0, p0, 0x8

    and-int/lit16 v1, p1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method static blacklist pageCount(J)I
    .registers 6
    .param p0, "size"    # J

    .line 610
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

.method static blacklist pageSize()I
    .registers 2

    .line 604
    sget v0, Ljava/nio/Bits;->pageSize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    .line 605
    invoke-static {}, Ljava/nio/Bits;->unsafe()Lsun/misc/Unsafe;

    move-result-object v0

    invoke-virtual {v0}, Lsun/misc/Unsafe;->pageSize()I

    move-result v0

    sput v0, Ljava/nio/Bits;->pageSize:I

    .line 606
    :cond_f
    sget v0, Ljava/nio/Bits;->pageSize:I

    return v0
.end method

.method static blacklist putChar(JCZ)V
    .registers 4
    .param p0, "a"    # J
    .param p2, "x"    # C
    .param p3, "bigEndian"    # Z

    .line 127
    if-eqz p3, :cond_6

    .line 128
    invoke-static {p0, p1, p2}, Ljava/nio/Bits;->putCharB(JC)V

    goto :goto_9

    .line 130
    :cond_6
    invoke-static {p0, p1, p2}, Ljava/nio/Bits;->putCharL(JC)V

    .line 131
    :goto_9
    return-void
.end method

.method static blacklist putChar(Ljava/nio/ByteBuffer;ICZ)V
    .registers 4
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "x"    # C
    .param p3, "bigEndian"    # Z

    .line 120
    if-eqz p3, :cond_6

    .line 121
    invoke-static {p0, p1, p2}, Ljava/nio/Bits;->putCharB(Ljava/nio/ByteBuffer;IC)V

    goto :goto_9

    .line 123
    :cond_6
    invoke-static {p0, p1, p2}, Ljava/nio/Bits;->putCharL(Ljava/nio/ByteBuffer;IC)V

    .line 124
    :goto_9
    return-void
.end method

.method static blacklist putCharB(JC)V
    .registers 6
    .param p0, "a"    # J
    .param p2, "x"    # C

    .line 115
    invoke-static {p2}, Ljava/nio/Bits;->char1(C)B

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/nio/Bits;->_put(JB)V

    .line 116
    const-wide/16 v0, 0x1

    add-long/2addr v0, p0

    invoke-static {p2}, Ljava/nio/Bits;->char0(C)B

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    .line 117
    return-void
.end method

.method static blacklist putCharB(Ljava/nio/ByteBuffer;IC)V
    .registers 5
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "x"    # C

    .line 110
    invoke-static {p2}, Ljava/nio/Bits;->char1(C)B

    move-result v0

    invoke-virtual {p0, p1, v0}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 111
    add-int/lit8 v0, p1, 0x1

    invoke-static {p2}, Ljava/nio/Bits;->char0(C)B

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 112
    return-void
.end method

.method static blacklist putCharL(JC)V
    .registers 6
    .param p0, "a"    # J
    .param p2, "x"    # C

    .line 105
    invoke-static {p2}, Ljava/nio/Bits;->char0(C)B

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/nio/Bits;->_put(JB)V

    .line 106
    const-wide/16 v0, 0x1

    add-long/2addr v0, p0

    invoke-static {p2}, Ljava/nio/Bits;->char1(C)B

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    .line 107
    return-void
.end method

.method static blacklist putCharL(Ljava/nio/ByteBuffer;IC)V
    .registers 5
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "x"    # C

    .line 100
    invoke-static {p2}, Ljava/nio/Bits;->char0(C)B

    move-result v0

    invoke-virtual {p0, p1, v0}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 101
    add-int/lit8 v0, p1, 0x1

    invoke-static {p2}, Ljava/nio/Bits;->char1(C)B

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 102
    return-void
.end method

.method static blacklist putDouble(JDZ)V
    .registers 5
    .param p0, "a"    # J
    .param p2, "x"    # D
    .param p4, "bigEndian"    # Z

    .line 541
    if-eqz p4, :cond_6

    .line 542
    invoke-static {p0, p1, p2, p3}, Ljava/nio/Bits;->putDoubleB(JD)V

    goto :goto_9

    .line 544
    :cond_6
    invoke-static {p0, p1, p2, p3}, Ljava/nio/Bits;->putDoubleL(JD)V

    .line 545
    :goto_9
    return-void
.end method

.method static blacklist putDouble(Ljava/nio/ByteBuffer;IDZ)V
    .registers 5
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "x"    # D
    .param p4, "bigEndian"    # Z

    .line 534
    if-eqz p4, :cond_6

    .line 535
    invoke-static {p0, p1, p2, p3}, Ljava/nio/Bits;->putDoubleB(Ljava/nio/ByteBuffer;ID)V

    goto :goto_9

    .line 537
    :cond_6
    invoke-static {p0, p1, p2, p3}, Ljava/nio/Bits;->putDoubleL(Ljava/nio/ByteBuffer;ID)V

    .line 538
    :goto_9
    return-void
.end method

.method static blacklist putDoubleB(JD)V
    .registers 6
    .param p0, "a"    # J
    .param p2, "x"    # D

    .line 530
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/nio/Bits;->putLongB(JJ)V

    .line 531
    return-void
.end method

.method static blacklist putDoubleB(Ljava/nio/ByteBuffer;ID)V
    .registers 6
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "x"    # D

    .line 526
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/nio/Bits;->putLongB(Ljava/nio/ByteBuffer;IJ)V

    .line 527
    return-void
.end method

.method static blacklist putDoubleL(JD)V
    .registers 6
    .param p0, "a"    # J
    .param p2, "x"    # D

    .line 522
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/nio/Bits;->putLongL(JJ)V

    .line 523
    return-void
.end method

.method static blacklist putDoubleL(Ljava/nio/ByteBuffer;ID)V
    .registers 6
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "x"    # D

    .line 518
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/nio/Bits;->putLongL(Ljava/nio/ByteBuffer;IJ)V

    .line 519
    return-void
.end method

.method static blacklist putFloat(JFZ)V
    .registers 4
    .param p0, "a"    # J
    .param p2, "x"    # F
    .param p3, "bigEndian"    # Z

    .line 484
    if-eqz p3, :cond_6

    .line 485
    invoke-static {p0, p1, p2}, Ljava/nio/Bits;->putFloatB(JF)V

    goto :goto_9

    .line 487
    :cond_6
    invoke-static {p0, p1, p2}, Ljava/nio/Bits;->putFloatL(JF)V

    .line 488
    :goto_9
    return-void
.end method

.method static blacklist putFloat(Ljava/nio/ByteBuffer;IFZ)V
    .registers 4
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "x"    # F
    .param p3, "bigEndian"    # Z

    .line 477
    if-eqz p3, :cond_6

    .line 478
    invoke-static {p0, p1, p2}, Ljava/nio/Bits;->putFloatB(Ljava/nio/ByteBuffer;IF)V

    goto :goto_9

    .line 480
    :cond_6
    invoke-static {p0, p1, p2}, Ljava/nio/Bits;->putFloatL(Ljava/nio/ByteBuffer;IF)V

    .line 481
    :goto_9
    return-void
.end method

.method static blacklist putFloatB(JF)V
    .registers 4
    .param p0, "a"    # J
    .param p2, "x"    # F

    .line 473
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/nio/Bits;->putIntB(JI)V

    .line 474
    return-void
.end method

.method static blacklist putFloatB(Ljava/nio/ByteBuffer;IF)V
    .registers 4
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "x"    # F

    .line 469
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/nio/Bits;->putIntB(Ljava/nio/ByteBuffer;II)V

    .line 470
    return-void
.end method

.method static blacklist putFloatL(JF)V
    .registers 4
    .param p0, "a"    # J
    .param p2, "x"    # F

    .line 465
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/nio/Bits;->putIntL(JI)V

    .line 466
    return-void
.end method

.method static blacklist putFloatL(Ljava/nio/ByteBuffer;IF)V
    .registers 4
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "x"    # F

    .line 461
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/nio/Bits;->putIntL(Ljava/nio/ByteBuffer;II)V

    .line 462
    return-void
.end method

.method static blacklist putInt(JIZ)V
    .registers 4
    .param p0, "a"    # J
    .param p2, "x"    # I
    .param p3, "bigEndian"    # Z

    .line 292
    if-eqz p3, :cond_6

    .line 293
    invoke-static {p0, p1, p2}, Ljava/nio/Bits;->putIntB(JI)V

    goto :goto_9

    .line 295
    :cond_6
    invoke-static {p0, p1, p2}, Ljava/nio/Bits;->putIntL(JI)V

    .line 296
    :goto_9
    return-void
.end method

.method static blacklist putInt(Ljava/nio/ByteBuffer;IIZ)V
    .registers 4
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "x"    # I
    .param p3, "bigEndian"    # Z

    .line 285
    if-eqz p3, :cond_6

    .line 286
    invoke-static {p0, p1, p2}, Ljava/nio/Bits;->putIntB(Ljava/nio/ByteBuffer;II)V

    goto :goto_9

    .line 288
    :cond_6
    invoke-static {p0, p1, p2}, Ljava/nio/Bits;->putIntL(Ljava/nio/ByteBuffer;II)V

    .line 289
    :goto_9
    return-void
.end method

.method static blacklist putIntB(JI)V
    .registers 6
    .param p0, "a"    # J
    .param p2, "x"    # I

    .line 278
    invoke-static {p2}, Ljava/nio/Bits;->int3(I)B

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/nio/Bits;->_put(JB)V

    .line 279
    const-wide/16 v0, 0x1

    add-long/2addr v0, p0

    invoke-static {p2}, Ljava/nio/Bits;->int2(I)B

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    .line 280
    const-wide/16 v0, 0x2

    add-long/2addr v0, p0

    invoke-static {p2}, Ljava/nio/Bits;->int1(I)B

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    .line 281
    const-wide/16 v0, 0x3

    add-long/2addr v0, p0

    invoke-static {p2}, Ljava/nio/Bits;->int0(I)B

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    .line 282
    return-void
.end method

.method static blacklist putIntB(Ljava/nio/ByteBuffer;II)V
    .registers 5
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "x"    # I

    .line 271
    invoke-static {p2}, Ljava/nio/Bits;->int3(I)B

    move-result v0

    invoke-virtual {p0, p1, v0}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 272
    add-int/lit8 v0, p1, 0x1

    invoke-static {p2}, Ljava/nio/Bits;->int2(I)B

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 273
    add-int/lit8 v0, p1, 0x2

    invoke-static {p2}, Ljava/nio/Bits;->int1(I)B

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 274
    add-int/lit8 v0, p1, 0x3

    invoke-static {p2}, Ljava/nio/Bits;->int0(I)B

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 275
    return-void
.end method

.method static blacklist putIntL(JI)V
    .registers 6
    .param p0, "a"    # J
    .param p2, "x"    # I

    .line 264
    const-wide/16 v0, 0x3

    add-long/2addr v0, p0

    invoke-static {p2}, Ljava/nio/Bits;->int3(I)B

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    .line 265
    const-wide/16 v0, 0x2

    add-long/2addr v0, p0

    invoke-static {p2}, Ljava/nio/Bits;->int2(I)B

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    .line 266
    const-wide/16 v0, 0x1

    add-long/2addr v0, p0

    invoke-static {p2}, Ljava/nio/Bits;->int1(I)B

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    .line 267
    invoke-static {p2}, Ljava/nio/Bits;->int0(I)B

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/nio/Bits;->_put(JB)V

    .line 268
    return-void
.end method

.method static blacklist putIntL(Ljava/nio/ByteBuffer;II)V
    .registers 5
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "x"    # I

    .line 257
    add-int/lit8 v0, p1, 0x3

    invoke-static {p2}, Ljava/nio/Bits;->int3(I)B

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 258
    add-int/lit8 v0, p1, 0x2

    invoke-static {p2}, Ljava/nio/Bits;->int2(I)B

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 259
    add-int/lit8 v0, p1, 0x1

    invoke-static {p2}, Ljava/nio/Bits;->int1(I)B

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 260
    invoke-static {p2}, Ljava/nio/Bits;->int0(I)B

    move-result v0

    invoke-virtual {p0, p1, v0}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 261
    return-void
.end method

.method static blacklist putLong(JJZ)V
    .registers 5
    .param p0, "a"    # J
    .param p2, "x"    # J
    .param p4, "bigEndian"    # Z

    .line 427
    if-eqz p4, :cond_6

    .line 428
    invoke-static {p0, p1, p2, p3}, Ljava/nio/Bits;->putLongB(JJ)V

    goto :goto_9

    .line 430
    :cond_6
    invoke-static {p0, p1, p2, p3}, Ljava/nio/Bits;->putLongL(JJ)V

    .line 431
    :goto_9
    return-void
.end method

.method static blacklist putLong(Ljava/nio/ByteBuffer;IJZ)V
    .registers 5
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "x"    # J
    .param p4, "bigEndian"    # Z

    .line 420
    if-eqz p4, :cond_6

    .line 421
    invoke-static {p0, p1, p2, p3}, Ljava/nio/Bits;->putLongB(Ljava/nio/ByteBuffer;IJ)V

    goto :goto_9

    .line 423
    :cond_6
    invoke-static {p0, p1, p2, p3}, Ljava/nio/Bits;->putLongL(Ljava/nio/ByteBuffer;IJ)V

    .line 424
    :goto_9
    return-void
.end method

.method static blacklist putLongB(JJ)V
    .registers 7
    .param p0, "a"    # J
    .param p2, "x"    # J

    .line 409
    invoke-static {p2, p3}, Ljava/nio/Bits;->long7(J)B

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/nio/Bits;->_put(JB)V

    .line 410
    const-wide/16 v0, 0x1

    add-long/2addr v0, p0

    invoke-static {p2, p3}, Ljava/nio/Bits;->long6(J)B

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    .line 411
    const-wide/16 v0, 0x2

    add-long/2addr v0, p0

    invoke-static {p2, p3}, Ljava/nio/Bits;->long5(J)B

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    .line 412
    const-wide/16 v0, 0x3

    add-long/2addr v0, p0

    invoke-static {p2, p3}, Ljava/nio/Bits;->long4(J)B

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    .line 413
    const-wide/16 v0, 0x4

    add-long/2addr v0, p0

    invoke-static {p2, p3}, Ljava/nio/Bits;->long3(J)B

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    .line 414
    const-wide/16 v0, 0x5

    add-long/2addr v0, p0

    invoke-static {p2, p3}, Ljava/nio/Bits;->long2(J)B

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    .line 415
    const-wide/16 v0, 0x6

    add-long/2addr v0, p0

    invoke-static {p2, p3}, Ljava/nio/Bits;->long1(J)B

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    .line 416
    const-wide/16 v0, 0x7

    add-long/2addr v0, p0

    invoke-static {p2, p3}, Ljava/nio/Bits;->long0(J)B

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    .line 417
    return-void
.end method

.method static blacklist putLongB(Ljava/nio/ByteBuffer;IJ)V
    .registers 6
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "x"    # J

    .line 398
    invoke-static {p2, p3}, Ljava/nio/Bits;->long7(J)B

    move-result v0

    invoke-virtual {p0, p1, v0}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 399
    add-int/lit8 v0, p1, 0x1

    invoke-static {p2, p3}, Ljava/nio/Bits;->long6(J)B

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 400
    add-int/lit8 v0, p1, 0x2

    invoke-static {p2, p3}, Ljava/nio/Bits;->long5(J)B

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 401
    add-int/lit8 v0, p1, 0x3

    invoke-static {p2, p3}, Ljava/nio/Bits;->long4(J)B

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 402
    add-int/lit8 v0, p1, 0x4

    invoke-static {p2, p3}, Ljava/nio/Bits;->long3(J)B

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 403
    add-int/lit8 v0, p1, 0x5

    invoke-static {p2, p3}, Ljava/nio/Bits;->long2(J)B

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 404
    add-int/lit8 v0, p1, 0x6

    invoke-static {p2, p3}, Ljava/nio/Bits;->long1(J)B

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 405
    add-int/lit8 v0, p1, 0x7

    invoke-static {p2, p3}, Ljava/nio/Bits;->long0(J)B

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 406
    return-void
.end method

.method static blacklist putLongL(JJ)V
    .registers 7
    .param p0, "a"    # J
    .param p2, "x"    # J

    .line 387
    const-wide/16 v0, 0x7

    add-long/2addr v0, p0

    invoke-static {p2, p3}, Ljava/nio/Bits;->long7(J)B

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    .line 388
    const-wide/16 v0, 0x6

    add-long/2addr v0, p0

    invoke-static {p2, p3}, Ljava/nio/Bits;->long6(J)B

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    .line 389
    const-wide/16 v0, 0x5

    add-long/2addr v0, p0

    invoke-static {p2, p3}, Ljava/nio/Bits;->long5(J)B

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    .line 390
    const-wide/16 v0, 0x4

    add-long/2addr v0, p0

    invoke-static {p2, p3}, Ljava/nio/Bits;->long4(J)B

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    .line 391
    const-wide/16 v0, 0x3

    add-long/2addr v0, p0

    invoke-static {p2, p3}, Ljava/nio/Bits;->long3(J)B

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    .line 392
    const-wide/16 v0, 0x2

    add-long/2addr v0, p0

    invoke-static {p2, p3}, Ljava/nio/Bits;->long2(J)B

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    .line 393
    const-wide/16 v0, 0x1

    add-long/2addr v0, p0

    invoke-static {p2, p3}, Ljava/nio/Bits;->long1(J)B

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    .line 394
    invoke-static {p2, p3}, Ljava/nio/Bits;->long0(J)B

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/nio/Bits;->_put(JB)V

    .line 395
    return-void
.end method

.method static blacklist putLongL(Ljava/nio/ByteBuffer;IJ)V
    .registers 6
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "x"    # J

    .line 376
    add-int/lit8 v0, p1, 0x7

    invoke-static {p2, p3}, Ljava/nio/Bits;->long7(J)B

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 377
    add-int/lit8 v0, p1, 0x6

    invoke-static {p2, p3}, Ljava/nio/Bits;->long6(J)B

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 378
    add-int/lit8 v0, p1, 0x5

    invoke-static {p2, p3}, Ljava/nio/Bits;->long5(J)B

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 379
    add-int/lit8 v0, p1, 0x4

    invoke-static {p2, p3}, Ljava/nio/Bits;->long4(J)B

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 380
    add-int/lit8 v0, p1, 0x3

    invoke-static {p2, p3}, Ljava/nio/Bits;->long3(J)B

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 381
    add-int/lit8 v0, p1, 0x2

    invoke-static {p2, p3}, Ljava/nio/Bits;->long2(J)B

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 382
    add-int/lit8 v0, p1, 0x1

    invoke-static {p2, p3}, Ljava/nio/Bits;->long1(J)B

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 383
    invoke-static {p2, p3}, Ljava/nio/Bits;->long0(J)B

    move-result v0

    invoke-virtual {p0, p1, v0}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 384
    return-void
.end method

.method static blacklist putShort(JSZ)V
    .registers 4
    .param p0, "a"    # J
    .param p2, "x"    # S
    .param p3, "bigEndian"    # Z

    .line 199
    if-eqz p3, :cond_6

    .line 200
    invoke-static {p0, p1, p2}, Ljava/nio/Bits;->putShortB(JS)V

    goto :goto_9

    .line 202
    :cond_6
    invoke-static {p0, p1, p2}, Ljava/nio/Bits;->putShortL(JS)V

    .line 203
    :goto_9
    return-void
.end method

.method static blacklist putShort(Ljava/nio/ByteBuffer;ISZ)V
    .registers 4
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "x"    # S
    .param p3, "bigEndian"    # Z

    .line 192
    if-eqz p3, :cond_6

    .line 193
    invoke-static {p0, p1, p2}, Ljava/nio/Bits;->putShortB(Ljava/nio/ByteBuffer;IS)V

    goto :goto_9

    .line 195
    :cond_6
    invoke-static {p0, p1, p2}, Ljava/nio/Bits;->putShortL(Ljava/nio/ByteBuffer;IS)V

    .line 196
    :goto_9
    return-void
.end method

.method static blacklist putShortB(JS)V
    .registers 6
    .param p0, "a"    # J
    .param p2, "x"    # S

    .line 187
    invoke-static {p2}, Ljava/nio/Bits;->short1(S)B

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/nio/Bits;->_put(JB)V

    .line 188
    const-wide/16 v0, 0x1

    add-long/2addr v0, p0

    invoke-static {p2}, Ljava/nio/Bits;->short0(S)B

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    .line 189
    return-void
.end method

.method static blacklist putShortB(Ljava/nio/ByteBuffer;IS)V
    .registers 5
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "x"    # S

    .line 182
    invoke-static {p2}, Ljava/nio/Bits;->short1(S)B

    move-result v0

    invoke-virtual {p0, p1, v0}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 183
    add-int/lit8 v0, p1, 0x1

    invoke-static {p2}, Ljava/nio/Bits;->short0(S)B

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 184
    return-void
.end method

.method static blacklist putShortL(JS)V
    .registers 6
    .param p0, "a"    # J
    .param p2, "x"    # S

    .line 177
    invoke-static {p2}, Ljava/nio/Bits;->short0(S)B

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/nio/Bits;->_put(JB)V

    .line 178
    const-wide/16 v0, 0x1

    add-long/2addr v0, p0

    invoke-static {p2}, Ljava/nio/Bits;->short1(S)B

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    .line 179
    return-void
.end method

.method static blacklist putShortL(Ljava/nio/ByteBuffer;IS)V
    .registers 5
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "x"    # S

    .line 172
    invoke-static {p2}, Ljava/nio/Bits;->short0(S)B

    move-result v0

    invoke-virtual {p0, p1, v0}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 173
    add-int/lit8 v0, p1, 0x1

    invoke-static {p2}, Ljava/nio/Bits;->short1(S)B

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    .line 174
    return-void
.end method

.method private static blacklist short0(S)B
    .registers 2
    .param p0, "x"    # S

    .line 169
    int-to-byte v0, p0

    return v0
.end method

.method private static blacklist short1(S)B
    .registers 2
    .param p0, "x"    # S

    .line 168
    shr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    return v0
.end method

.method static blacklist swap(C)C
    .registers 2
    .param p0, "x"    # C

    .line 50
    invoke-static {p0}, Ljava/lang/Character;->reverseBytes(C)C

    move-result v0

    return v0
.end method

.method static blacklist swap(I)I
    .registers 2
    .param p0, "x"    # I

    .line 54
    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    return v0
.end method

.method static blacklist swap(J)J
    .registers 4
    .param p0, "x"    # J

    .line 58
    invoke-static {p0, p1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static blacklist swap(S)S
    .registers 2
    .param p0, "x"    # S

    .line 46
    invoke-static {p0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v0

    return v0
.end method

.method static blacklist unaligned()Z
    .registers 3

    .line 617
    sget-boolean v0, Ljava/nio/Bits;->unalignedKnown:Z

    if-eqz v0, :cond_7

    .line 618
    sget-boolean v0, Ljava/nio/Bits;->unaligned:Z

    return v0

    .line 619
    :cond_7
    new-instance v0, Lsun/security/action/GetPropertyAction;

    const-string v1, "os.arch"

    invoke-direct {v0, v1}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 621
    .local v0, "arch":Ljava/lang/String;
    const-string v1, "i386"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_38

    const-string v1, "x86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 622
    const-string v1, "amd64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    const-string v1, "x86_64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    goto :goto_38

    :cond_36
    const/4 v1, 0x0

    goto :goto_39

    :cond_38
    :goto_38
    move v1, v2

    :goto_39
    sput-boolean v1, Ljava/nio/Bits;->unaligned:Z

    .line 623
    sput-boolean v2, Ljava/nio/Bits;->unalignedKnown:Z

    .line 624
    return v1
.end method

.method static blacklist unsafe()Lsun/misc/Unsafe;
    .registers 1

    .line 561
    sget-object v0, Ljava/nio/Bits;->unsafe:Lsun/misc/Unsafe;

    return-object v0
.end method
