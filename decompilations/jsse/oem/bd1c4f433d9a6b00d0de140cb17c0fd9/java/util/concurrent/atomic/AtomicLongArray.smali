.class public Ljava/util/concurrent/atomic/AtomicLongArray;
.super Ljava/lang/Object;
.source "AtomicLongArray.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final ABASE:I

.field private static final ASHIFT:I

.field private static final U:Lsun/misc/Unsafe;

.field private static final serialVersionUID:J = -0x200931f59d1d4008L


# instance fields
.field private final array:[J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 51
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/atomic/AtomicLongArray;->U:Lsun/misc/Unsafe;

    .line 57
    sget-object v1, Ljava/util/concurrent/atomic/AtomicLongArray;->U:Lsun/misc/Unsafe;

    const-class v2, [J

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v1

    sput v1, Ljava/util/concurrent/atomic/AtomicLongArray;->ABASE:I

    .line 58
    sget-object v1, Ljava/util/concurrent/atomic/AtomicLongArray;->U:Lsun/misc/Unsafe;

    const-class v2, [J

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    .line 59
    .local v0, "scale":I
    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, v0

    if-eqz v1, :cond_26

    .line 60
    new-instance v1, Ljava/lang/Error;

    const-string/jumbo v2, "array index scale not a power of two"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    :cond_26
    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1f

    sput v1, Ljava/util/concurrent/atomic/AtomicLongArray;->ASHIFT:I

    .line 48
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "length"    # I

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-array v0, p1, [J

    iput-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    .line 83
    return-void
.end method

.method public constructor <init>([J)V
    .registers 3
    .param p1, "array"    # [J

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    iput-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    .line 95
    return-void
.end method

.method private static byteOffset(I)J
    .registers 5
    .param p0, "i"    # I

    .prologue
    .line 72
    int-to-long v0, p0

    sget v2, Ljava/util/concurrent/atomic/AtomicLongArray;->ASHIFT:I

    shl-long/2addr v0, v2

    sget v2, Ljava/util/concurrent/atomic/AtomicLongArray;->ABASE:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private checkedByteOffset(I)J
    .registers 5
    .param p1, "i"    # I

    .prologue
    .line 65
    if-ltz p1, :cond_7

    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    array-length v0, v0

    if-lt p1, v0, :cond_21

    .line 66
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_21
    invoke-static {p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->byteOffset(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private compareAndSetRaw(JJJ)Z
    .registers 16
    .param p1, "offset"    # J
    .param p3, "expect"    # J
    .param p5, "update"    # J

    .prologue
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

.method private getRaw(J)J
    .registers 6
    .param p1, "offset"    # J

    .prologue
    .line 117
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->U:Lsun/misc/Unsafe;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    invoke-virtual {v0, v1, p1, p2}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final accumulateAndGet(IJLjava/util/function/LongBinaryOperator;)J
    .registers 13
    .param p1, "i"    # I
    .param p2, "x"    # J
    .param p4, "accumulatorFunction"    # Ljava/util/function/LongBinaryOperator;

    .prologue
    .line 335
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->checkedByteOffset(I)J

    move-result-wide v2

    .line 338
    .local v2, "offset":J
    :cond_4
    invoke-direct {p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLongArray;->getRaw(J)J

    move-result-wide v4

    .line 339
    .local v4, "prev":J
    invoke-interface {p4, v4, v5, p2, p3}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v6

    .local v6, "next":J
    move-object v1, p0

    .line 340
    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSetRaw(JJJ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 341
    return-wide v6
.end method

.method public addAndGet(IJ)J
    .registers 6
    .param p1, "i"    # I
    .param p2, "delta"    # J

    .prologue
    .line 247
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLongArray;->getAndAdd(IJ)J

    move-result-wide v0

    add-long/2addr v0, p2

    return-wide v0
.end method

.method public final compareAndSet(IJJ)Z
    .registers 14
    .param p1, "i"    # I
    .param p2, "expect"    # J
    .param p4, "update"    # J

    .prologue
    .line 164
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->checkedByteOffset(I)J

    move-result-wide v2

    move-object v1, p0

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSetRaw(JJJ)Z

    move-result v0

    return v0
.end method

.method public final decrementAndGet(I)J
    .registers 6
    .param p1, "i"    # I

    .prologue
    .line 236
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->getAndAdd(IJ)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final get(I)J
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 113
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->checkedByteOffset(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->getRaw(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getAndAccumulate(IJLjava/util/function/LongBinaryOperator;)J
    .registers 13
    .param p1, "i"    # I
    .param p2, "x"    # J
    .param p4, "accumulatorFunction"    # Ljava/util/function/LongBinaryOperator;

    .prologue
    .line 309
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->checkedByteOffset(I)J

    move-result-wide v2

    .line 312
    .local v2, "offset":J
    :cond_4
    invoke-direct {p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLongArray;->getRaw(J)J

    move-result-wide v4

    .line 313
    .local v4, "prev":J
    invoke-interface {p4, v4, v5, p2, p3}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v6

    .local v6, "next":J
    move-object v1, p0

    .line 314
    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSetRaw(JJJ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 315
    return-wide v4
.end method

.method public final getAndAdd(IJ)J
    .registers 10
    .param p1, "i"    # I
    .param p2, "delta"    # J

    .prologue
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

.method public final getAndDecrement(I)J
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 205
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->getAndAdd(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getAndIncrement(I)J
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 195
    const-wide/16 v0, 0x1

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->getAndAdd(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getAndSet(IJ)J
    .registers 10
    .param p1, "i"    # I
    .param p2, "newValue"    # J

    .prologue
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

.method public final getAndUpdate(ILjava/util/function/LongUnaryOperator;)J
    .registers 11
    .param p1, "i"    # I
    .param p2, "updateFunction"    # Ljava/util/function/LongUnaryOperator;

    .prologue
    .line 262
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->checkedByteOffset(I)J

    move-result-wide v2

    .line 265
    .local v2, "offset":J
    :cond_4
    invoke-direct {p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLongArray;->getRaw(J)J

    move-result-wide v4

    .line 266
    .local v4, "prev":J
    invoke-interface {p2, v4, v5}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v6

    .local v6, "next":J
    move-object v1, p0

    .line 267
    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSetRaw(JJJ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 268
    return-wide v4
.end method

.method public final incrementAndGet(I)J
    .registers 6
    .param p1, "i"    # I

    .prologue
    const-wide/16 v2, 0x1

    .line 226
    invoke-virtual {p0, p1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLongArray;->getAndAdd(IJ)J

    move-result-wide v0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final lazySet(IJ)V
    .registers 10
    .param p1, "i"    # I
    .param p2, "newValue"    # J

    .prologue
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

.method public final length()I
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    array-length v0, v0

    return v0
.end method

.method public final set(IJ)V
    .registers 10
    .param p1, "i"    # I
    .param p2, "newValue"    # J

    .prologue
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

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 349
    iget-object v3, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    array-length v3, v3

    add-int/lit8 v2, v3, -0x1

    .line 350
    .local v2, "iMax":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_c

    .line 351
    const-string/jumbo v3, "[]"

    return-object v3

    .line 353
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 354
    .local v0, "b":Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 355
    const/4 v1, 0x0

    .line 356
    .local v1, "i":I
    :goto_17
    invoke-static {v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->byteOffset(I)J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLongArray;->getRaw(J)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 357
    if-ne v1, v2, :cond_2f

    .line 358
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 359
    :cond_2f
    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 355
    add-int/lit8 v1, v1, 0x1

    goto :goto_17
.end method

.method public final updateAndGet(ILjava/util/function/LongUnaryOperator;)J
    .registers 11
    .param p1, "i"    # I
    .param p2, "updateFunction"    # Ljava/util/function/LongUnaryOperator;

    .prologue
    .line 283
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->checkedByteOffset(I)J

    move-result-wide v2

    .line 286
    .local v2, "offset":J
    :cond_4
    invoke-direct {p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLongArray;->getRaw(J)J

    move-result-wide v4

    .line 287
    .local v4, "prev":J
    invoke-interface {p2, v4, v5}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v6

    .local v6, "next":J
    move-object v1, p0

    .line 288
    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSetRaw(JJJ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 289
    return-wide v6
.end method

.method public final weakCompareAndSet(IJJ)Z
    .registers 8
    .param p1, "i"    # I
    .param p2, "expect"    # J
    .param p4, "update"    # J

    .prologue
    .line 185
    invoke-virtual/range {p0 .. p5}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSet(IJJ)Z

    move-result v0

    return v0
.end method
