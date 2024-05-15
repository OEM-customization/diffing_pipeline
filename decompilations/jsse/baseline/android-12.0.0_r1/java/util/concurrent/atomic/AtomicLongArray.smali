.class public Ljava/util/concurrent/atomic/AtomicLongArray;
.super Ljava/lang/Object;
.source "AtomicLongArray.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final greylist-max-o ABASE:I

.field private static final greylist-max-o ASHIFT:I

.field private static final greylist-max-o U:Lsun/misc/Unsafe;

.field private static final whitelist serialVersionUID:J = -0x200931f59d1d4008L


# instance fields
.field private final greylist-max-o array:[J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 51
    const-class v0, [J

    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/atomic/AtomicLongArray;->U:Lsun/misc/Unsafe;

    .line 57
    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v2

    sput v2, Ljava/util/concurrent/atomic/AtomicLongArray;->ABASE:I

    .line 58
    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    .line 59
    .local v0, "scale":I
    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, v0

    if-nez v1, :cond_20

    .line 61
    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1f

    sput v1, Ljava/util/concurrent/atomic/AtomicLongArray;->ASHIFT:I

    .line 62
    .end local v0    # "scale":I
    return-void

    .line 60
    .restart local v0    # "scale":I
    :cond_20
    new-instance v1, Ljava/lang/Error;

    const-string v2, "array index scale not a power of two"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor whitelist test-api <init>(I)V
    .registers 3
    .param p1, "length"    # I

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-array v0, p1, [J

    iput-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    .line 83
    return-void
.end method

.method public constructor whitelist test-api <init>([J)V
    .registers 3
    .param p1, "array"    # [J

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-virtual {p1}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    iput-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    .line 95
    return-void
.end method

.method private static greylist-max-o byteOffset(I)J
    .registers 5
    .param p0, "i"    # I

    .line 72
    int-to-long v0, p0

    sget v2, Ljava/util/concurrent/atomic/AtomicLongArray;->ASHIFT:I

    shl-long/2addr v0, v2

    sget v2, Ljava/util/concurrent/atomic/AtomicLongArray;->ABASE:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private greylist-max-o checkedByteOffset(I)J
    .registers 5
    .param p1, "i"    # I

    .line 65
    if-ltz p1, :cond_c

    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    array-length v0, v0

    if-ge p1, v0, :cond_c

    .line 68
    invoke-static {p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->byteOffset(I)J

    move-result-wide v0

    return-wide v0

    .line 66
    :cond_c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o compareAndSetRaw(JJJ)Z
    .registers 15
    .param p1, "offset"    # J
    .param p3, "expect"    # J
    .param p5, "update"    # J

    .line 168
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->U:Lsun/misc/Unsafe;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method

.method private greylist-max-o getRaw(J)J
    .registers 5
    .param p1, "offset"    # J

    .line 117
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->U:Lsun/misc/Unsafe;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    invoke-virtual {v0, v1, p1, p2}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final whitelist test-api accumulateAndGet(IJLjava/util/function/LongBinaryOperator;)J
    .registers 22
    .param p1, "i"    # I
    .param p2, "x"    # J
    .param p4, "accumulatorFunction"    # Ljava/util/function/LongBinaryOperator;

    .line 335
    invoke-direct/range {p0 .. p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->checkedByteOffset(I)J

    move-result-wide v7

    .line 338
    .local v7, "offset":J
    :goto_4
    move-object/from16 v9, p0

    invoke-direct {v9, v7, v8}, Ljava/util/concurrent/atomic/AtomicLongArray;->getRaw(J)J

    move-result-wide v10

    .line 339
    .local v10, "prev":J
    move-wide/from16 v12, p2

    move-object/from16 v14, p4

    invoke-interface {v14, v10, v11, v12, v13}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v15

    .line 340
    .local v15, "next":J
    move-object/from16 v0, p0

    move-wide v1, v7

    move-wide v3, v10

    move-wide v5, v15

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSetRaw(JJJ)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 341
    return-wide v15

    .line 340
    :cond_1e
    goto :goto_4
.end method

.method public whitelist test-api addAndGet(IJ)J
    .registers 6
    .param p1, "i"    # I
    .param p2, "delta"    # J

    .line 247
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLongArray;->getAndAdd(IJ)J

    move-result-wide v0

    add-long/2addr v0, p2

    return-wide v0
.end method

.method public final whitelist test-api compareAndSet(IJJ)Z
    .registers 13
    .param p1, "i"    # I
    .param p2, "expect"    # J
    .param p4, "update"    # J

    .line 164
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->checkedByteOffset(I)J

    move-result-wide v1

    move-object v0, p0

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSetRaw(JJJ)Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api decrementAndGet(I)J
    .registers 6
    .param p1, "i"    # I

    .line 236
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->getAndAdd(IJ)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final whitelist test-api get(I)J
    .registers 4
    .param p1, "i"    # I

    .line 113
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->checkedByteOffset(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->getRaw(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist test-api getAndAccumulate(IJLjava/util/function/LongBinaryOperator;)J
    .registers 22
    .param p1, "i"    # I
    .param p2, "x"    # J
    .param p4, "accumulatorFunction"    # Ljava/util/function/LongBinaryOperator;

    .line 309
    invoke-direct/range {p0 .. p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->checkedByteOffset(I)J

    move-result-wide v7

    .line 312
    .local v7, "offset":J
    :goto_4
    move-object/from16 v9, p0

    invoke-direct {v9, v7, v8}, Ljava/util/concurrent/atomic/AtomicLongArray;->getRaw(J)J

    move-result-wide v10

    .line 313
    .local v10, "prev":J
    move-wide/from16 v12, p2

    move-object/from16 v14, p4

    invoke-interface {v14, v10, v11, v12, v13}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v15

    .line 314
    .local v15, "next":J
    move-object/from16 v0, p0

    move-wide v1, v7

    move-wide v3, v10

    move-wide v5, v15

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSetRaw(JJJ)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 315
    return-wide v10

    .line 314
    :cond_1e
    goto :goto_4
.end method

.method public final whitelist test-api getAndAdd(IJ)J
    .registers 10
    .param p1, "i"    # I
    .param p2, "delta"    # J

    .line 216
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->U:Lsun/misc/Unsafe;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->checkedByteOffset(I)J

    move-result-wide v2

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->getAndAddLong(Ljava/lang/Object;JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist test-api getAndDecrement(I)J
    .registers 4
    .param p1, "i"    # I

    .line 205
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->getAndAdd(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist test-api getAndIncrement(I)J
    .registers 4
    .param p1, "i"    # I

    .line 195
    const-wide/16 v0, 0x1

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->getAndAdd(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist test-api getAndSet(IJ)J
    .registers 10
    .param p1, "i"    # I
    .param p2, "newValue"    # J

    .line 150
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->U:Lsun/misc/Unsafe;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->checkedByteOffset(I)J

    move-result-wide v2

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->getAndSetLong(Ljava/lang/Object;JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist test-api getAndUpdate(ILjava/util/function/LongUnaryOperator;)J
    .registers 16
    .param p1, "i"    # I
    .param p2, "updateFunction"    # Ljava/util/function/LongUnaryOperator;

    .line 262
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->checkedByteOffset(I)J

    move-result-wide v7

    .line 265
    .local v7, "offset":J
    :goto_4
    invoke-direct {p0, v7, v8}, Ljava/util/concurrent/atomic/AtomicLongArray;->getRaw(J)J

    move-result-wide v9

    .line 266
    .local v9, "prev":J
    invoke-interface {p2, v9, v10}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v11

    .line 267
    .local v11, "next":J
    move-object v0, p0

    move-wide v1, v7

    move-wide v3, v9

    move-wide v5, v11

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSetRaw(JJJ)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 268
    return-wide v9

    .line 267
    :cond_17
    goto :goto_4
.end method

.method public final whitelist test-api incrementAndGet(I)J
    .registers 6
    .param p1, "i"    # I

    .line 226
    const-wide/16 v0, 0x1

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->getAndAdd(IJ)J

    move-result-wide v2

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public final whitelist test-api lazySet(IJ)V
    .registers 10
    .param p1, "i"    # I
    .param p2, "newValue"    # J

    .line 138
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->U:Lsun/misc/Unsafe;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->checkedByteOffset(I)J

    move-result-wide v2

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    .line 139
    return-void
.end method

.method public final whitelist test-api length()I
    .registers 2

    .line 103
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    array-length v0, v0

    return v0
.end method

.method public final whitelist test-api set(IJ)V
    .registers 10
    .param p1, "i"    # I
    .param p2, "newValue"    # J

    .line 127
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->U:Lsun/misc/Unsafe;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->checkedByteOffset(I)J

    move-result-wide v2

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    .line 128
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 349
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 350
    .local v0, "iMax":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 351
    const-string v1, "[]"

    return-object v1

    .line 353
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 354
    .local v1, "b":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 355
    const/4 v2, 0x0

    .line 356
    .local v2, "i":I
    :goto_16
    invoke-static {v2}, Ljava/util/concurrent/atomic/AtomicLongArray;->byteOffset(I)J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLongArray;->getRaw(J)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 357
    if-ne v2, v0, :cond_2d

    .line 358
    const/16 v3, 0x5d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 359
    :cond_2d
    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 355
    add-int/lit8 v2, v2, 0x1

    goto :goto_16
.end method

.method public final whitelist test-api updateAndGet(ILjava/util/function/LongUnaryOperator;)J
    .registers 16
    .param p1, "i"    # I
    .param p2, "updateFunction"    # Ljava/util/function/LongUnaryOperator;

    .line 283
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->checkedByteOffset(I)J

    move-result-wide v7

    .line 286
    .local v7, "offset":J
    :goto_4
    invoke-direct {p0, v7, v8}, Ljava/util/concurrent/atomic/AtomicLongArray;->getRaw(J)J

    move-result-wide v9

    .line 287
    .local v9, "prev":J
    invoke-interface {p2, v9, v10}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v11

    .line 288
    .local v11, "next":J
    move-object v0, p0

    move-wide v1, v7

    move-wide v3, v9

    move-wide v5, v11

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSetRaw(JJJ)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 289
    return-wide v11

    .line 288
    :cond_17
    goto :goto_4
.end method

.method public final whitelist test-api weakCompareAndSet(IJJ)Z
    .registers 7
    .param p1, "i"    # I
    .param p2, "expect"    # J
    .param p4, "update"    # J

    .line 185
    invoke-virtual/range {p0 .. p5}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSet(IJJ)Z

    move-result v0

    return v0
.end method
