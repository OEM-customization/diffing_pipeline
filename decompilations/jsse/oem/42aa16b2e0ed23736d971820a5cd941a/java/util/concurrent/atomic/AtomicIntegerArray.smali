.class public Ljava/util/concurrent/atomic/AtomicIntegerArray;
.super Ljava/lang/Object;
.source "AtomicIntegerArray.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final greylist-max-o ABASE:I

.field private static final greylist-max-o ASHIFT:I

.field private static final greylist-max-o U:Lsun/misc/Unsafe;

.field private static final whitelist serialVersionUID:J = 0x27b857513300bd8bL


# instance fields
.field private final greylist-max-o array:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 52
    const-class v0, [I

    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/atomic/AtomicIntegerArray;->U:Lsun/misc/Unsafe;

    .line 58
    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v1

    sput v1, Ljava/util/concurrent/atomic/AtomicIntegerArray;->ABASE:I

    .line 59
    sget-object v1, Ljava/util/concurrent/atomic/AtomicIntegerArray;->U:Lsun/misc/Unsafe;

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    .line 60
    .local v0, "scale":I
    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, v0

    if-nez v1, :cond_22

    .line 62
    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1f

    sput v1, Ljava/util/concurrent/atomic/AtomicIntegerArray;->ASHIFT:I

    .line 63
    .end local v0    # "scale":I
    return-void

    .line 61
    .restart local v0    # "scale":I
    :cond_22
    new-instance v1, Ljava/lang/Error;

    const-string v2, "array index scale not a power of two"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor whitelist core-platform-api test-api <init>(I)V
    .registers 3
    .param p1, "length"    # I

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-array v0, p1, [I

    iput-object v0, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    .line 84
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>([I)V
    .registers 3
    .param p1, "array"    # [I

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    .line 96
    return-void
.end method

.method private static greylist-max-o byteOffset(I)J
    .registers 5
    .param p0, "i"    # I

    .line 73
    int-to-long v0, p0

    sget v2, Ljava/util/concurrent/atomic/AtomicIntegerArray;->ASHIFT:I

    shl-long/2addr v0, v2

    sget v2, Ljava/util/concurrent/atomic/AtomicIntegerArray;->ABASE:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private greylist-max-o checkedByteOffset(I)J
    .registers 5
    .param p1, "i"    # I

    .line 66
    if-ltz p1, :cond_c

    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    array-length v0, v0

    if-ge p1, v0, :cond_c

    .line 69
    invoke-static {p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->byteOffset(I)J

    move-result-wide v0

    return-wide v0

    .line 67
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

.method private greylist-max-o compareAndSetRaw(JII)Z
    .registers 11
    .param p1, "offset"    # J
    .param p3, "expect"    # I
    .param p4, "update"    # I

    .line 169
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->U:Lsun/misc/Unsafe;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0
.end method

.method private greylist-max-o getRaw(J)I
    .registers 5
    .param p1, "offset"    # J

    .line 118
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->U:Lsun/misc/Unsafe;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    invoke-virtual {v0, v1, p1, p2}, Lsun/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final whitelist core-platform-api test-api accumulateAndGet(IILjava/util/function/IntBinaryOperator;)I
    .registers 9
    .param p1, "i"    # I
    .param p2, "x"    # I
    .param p3, "accumulatorFunction"    # Ljava/util/function/IntBinaryOperator;

    .line 336
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->checkedByteOffset(I)J

    move-result-wide v0

    .line 339
    .local v0, "offset":J
    :goto_4
    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->getRaw(J)I

    move-result v2

    .line 340
    .local v2, "prev":I
    invoke-interface {p3, v2, p2}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v3

    .line 341
    .local v3, "next":I
    invoke-direct {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->compareAndSetRaw(JII)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 342
    return v3

    .line 341
    :cond_13
    goto :goto_4
.end method

.method public final whitelist core-platform-api test-api addAndGet(II)I
    .registers 4
    .param p1, "i"    # I
    .param p2, "delta"    # I

    .line 248
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->getAndAdd(II)I

    move-result v0

    add-int/2addr v0, p2

    return v0
.end method

.method public final whitelist core-platform-api test-api compareAndSet(III)Z
    .registers 6
    .param p1, "i"    # I
    .param p2, "expect"    # I
    .param p3, "update"    # I

    .line 165
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->checkedByteOffset(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2, p3}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->compareAndSetRaw(JII)Z

    move-result v0

    return v0
.end method

.method public final whitelist core-platform-api test-api decrementAndGet(I)I
    .registers 3
    .param p1, "i"    # I

    .line 237
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->getAndAdd(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final whitelist core-platform-api test-api get(I)I
    .registers 4
    .param p1, "i"    # I

    .line 114
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->checkedByteOffset(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->getRaw(J)I

    move-result v0

    return v0
.end method

.method public final whitelist core-platform-api test-api getAndAccumulate(IILjava/util/function/IntBinaryOperator;)I
    .registers 9
    .param p1, "i"    # I
    .param p2, "x"    # I
    .param p3, "accumulatorFunction"    # Ljava/util/function/IntBinaryOperator;

    .line 310
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->checkedByteOffset(I)J

    move-result-wide v0

    .line 313
    .local v0, "offset":J
    :goto_4
    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->getRaw(J)I

    move-result v2

    .line 314
    .local v2, "prev":I
    invoke-interface {p3, v2, p2}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v3

    .line 315
    .local v3, "next":I
    invoke-direct {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->compareAndSetRaw(JII)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 316
    return v2

    .line 315
    :cond_13
    goto :goto_4
.end method

.method public final whitelist core-platform-api test-api getAndAdd(II)I
    .registers 7
    .param p1, "i"    # I
    .param p2, "delta"    # I

    .line 217
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->U:Lsun/misc/Unsafe;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->checkedByteOffset(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3, p2}, Lsun/misc/Unsafe;->getAndAddInt(Ljava/lang/Object;JI)I

    move-result v0

    return v0
.end method

.method public final whitelist core-platform-api test-api getAndDecrement(I)I
    .registers 3
    .param p1, "i"    # I

    .line 206
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->getAndAdd(II)I

    move-result v0

    return v0
.end method

.method public final whitelist core-platform-api test-api getAndIncrement(I)I
    .registers 3
    .param p1, "i"    # I

    .line 196
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->getAndAdd(II)I

    move-result v0

    return v0
.end method

.method public final whitelist core-platform-api test-api getAndSet(II)I
    .registers 7
    .param p1, "i"    # I
    .param p2, "newValue"    # I

    .line 151
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->U:Lsun/misc/Unsafe;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->checkedByteOffset(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3, p2}, Lsun/misc/Unsafe;->getAndSetInt(Ljava/lang/Object;JI)I

    move-result v0

    return v0
.end method

.method public final whitelist core-platform-api test-api getAndUpdate(ILjava/util/function/IntUnaryOperator;)I
    .registers 8
    .param p1, "i"    # I
    .param p2, "updateFunction"    # Ljava/util/function/IntUnaryOperator;

    .line 263
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->checkedByteOffset(I)J

    move-result-wide v0

    .line 266
    .local v0, "offset":J
    :goto_4
    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->getRaw(J)I

    move-result v2

    .line 267
    .local v2, "prev":I
    invoke-interface {p2, v2}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v3

    .line 268
    .local v3, "next":I
    invoke-direct {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->compareAndSetRaw(JII)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 269
    return v2

    .line 268
    :cond_13
    goto :goto_4
.end method

.method public final whitelist core-platform-api test-api incrementAndGet(I)I
    .registers 4
    .param p1, "i"    # I

    .line 227
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->getAndAdd(II)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final whitelist core-platform-api test-api lazySet(II)V
    .registers 7
    .param p1, "i"    # I
    .param p2, "newValue"    # I

    .line 139
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->U:Lsun/misc/Unsafe;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->checkedByteOffset(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3, p2}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    .line 140
    return-void
.end method

.method public final whitelist core-platform-api test-api length()I
    .registers 2

    .line 104
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    array-length v0, v0

    return v0
.end method

.method public final whitelist core-platform-api test-api set(II)V
    .registers 7
    .param p1, "i"    # I
    .param p2, "newValue"    # I

    .line 128
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->U:Lsun/misc/Unsafe;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->checkedByteOffset(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3, p2}, Lsun/misc/Unsafe;->putIntVolatile(Ljava/lang/Object;JI)V

    .line 129
    return-void
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 6

    .line 350
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 351
    .local v0, "iMax":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 352
    const-string v1, "[]"

    return-object v1

    .line 354
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 355
    .local v1, "b":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 356
    const/4 v2, 0x0

    .line 357
    .local v2, "i":I
    :goto_16
    invoke-static {v2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->byteOffset(I)J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->getRaw(J)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 358
    if-ne v2, v0, :cond_2d

    .line 359
    const/16 v3, 0x5d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 360
    :cond_2d
    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 356
    add-int/lit8 v2, v2, 0x1

    goto :goto_16
.end method

.method public final whitelist core-platform-api test-api updateAndGet(ILjava/util/function/IntUnaryOperator;)I
    .registers 8
    .param p1, "i"    # I
    .param p2, "updateFunction"    # Ljava/util/function/IntUnaryOperator;

    .line 284
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->checkedByteOffset(I)J

    move-result-wide v0

    .line 287
    .local v0, "offset":J
    :goto_4
    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->getRaw(J)I

    move-result v2

    .line 288
    .local v2, "prev":I
    invoke-interface {p2, v2}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v3

    .line 289
    .local v3, "next":I
    invoke-direct {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->compareAndSetRaw(JII)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 290
    return v3

    .line 289
    :cond_13
    goto :goto_4
.end method

.method public final whitelist core-platform-api test-api weakCompareAndSet(III)Z
    .registers 5
    .param p1, "i"    # I
    .param p2, "expect"    # I
    .param p3, "update"    # I

    .line 186
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->compareAndSet(III)Z

    move-result v0

    return v0
.end method
