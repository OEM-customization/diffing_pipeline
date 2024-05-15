.class public Ljava/util/concurrent/atomic/AtomicIntegerArray;
.super Ljava/lang/Object;
.source "AtomicIntegerArray.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final ABASE:I

.field private static final ASHIFT:I

.field private static final U:Lsun/misc/Unsafe;

.field private static final serialVersionUID:J = 0x27b857513300bd8bL


# instance fields
.field private final array:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 52
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/atomic/AtomicIntegerArray;->U:Lsun/misc/Unsafe;

    .line 58
    sget-object v1, Ljava/util/concurrent/atomic/AtomicIntegerArray;->U:Lsun/misc/Unsafe;

    const-class v2, [I

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v1

    sput v1, Ljava/util/concurrent/atomic/AtomicIntegerArray;->ABASE:I

    .line 59
    sget-object v1, Ljava/util/concurrent/atomic/AtomicIntegerArray;->U:Lsun/misc/Unsafe;

    const-class v2, [I

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    .line 60
    .local v0, "scale":I
    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, v0

    if-eqz v1, :cond_26

    .line 61
    new-instance v1, Ljava/lang/Error;

    const-string/jumbo v2, "array index scale not a power of two"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    :cond_26
    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1f

    sput v1, Ljava/util/concurrent/atomic/AtomicIntegerArray;->ASHIFT:I

    .line 49
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "length"    # I

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-array v0, p1, [I

    iput-object v0, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    .line 84
    return-void
.end method

.method public constructor <init>([I)V
    .registers 3
    .param p1, "array"    # [I

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    .line 96
    return-void
.end method

.method private static byteOffset(I)J
    .registers 5
    .param p0, "i"    # I

    .prologue
    .line 73
    int-to-long v0, p0

    sget v2, Ljava/util/concurrent/atomic/AtomicIntegerArray;->ASHIFT:I

    shl-long/2addr v0, v2

    sget v2, Ljava/util/concurrent/atomic/AtomicIntegerArray;->ABASE:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private checkedByteOffset(I)J
    .registers 5
    .param p1, "i"    # I

    .prologue
    .line 66
    if-ltz p1, :cond_7

    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    array-length v0, v0

    if-lt p1, v0, :cond_21

    .line 67
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

    .line 69
    :cond_21
    invoke-static {p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->byteOffset(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private compareAndSetRaw(JII)Z
    .registers 12
    .param p1, "offset"    # J
    .param p3, "expect"    # I
    .param p4, "update"    # I

    .prologue
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

.method private getRaw(J)I
    .registers 6
    .param p1, "offset"    # J

    .prologue
    .line 118
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->U:Lsun/misc/Unsafe;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    invoke-virtual {v0, v1, p1, p2}, Lsun/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final accumulateAndGet(IILjava/util/function/IntBinaryOperator;)I
    .registers 9
    .param p1, "i"    # I
    .param p2, "x"    # I
    .param p3, "accumulatorFunction"    # Ljava/util/function/IntBinaryOperator;

    .prologue
    .line 336
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->checkedByteOffset(I)J

    move-result-wide v2

    .line 339
    .local v2, "offset":J
    :cond_4
    invoke-direct {p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->getRaw(J)I

    move-result v1

    .line 340
    .local v1, "prev":I
    invoke-interface {p3, v1, p2}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v0

    .line 341
    .local v0, "next":I
    invoke-direct {p0, v2, v3, v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->compareAndSetRaw(JII)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 342
    return v0
.end method

.method public final addAndGet(II)I
    .registers 4
    .param p1, "i"    # I
    .param p2, "delta"    # I

    .prologue
    .line 248
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->getAndAdd(II)I

    move-result v0

    add-int/2addr v0, p2

    return v0
.end method

.method public final compareAndSet(III)Z
    .registers 6
    .param p1, "i"    # I
    .param p2, "expect"    # I
    .param p3, "update"    # I

    .prologue
    .line 165
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->checkedByteOffset(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2, p3}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->compareAndSetRaw(JII)Z

    move-result v0

    return v0
.end method

.method public final decrementAndGet(I)I
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 237
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->getAndAdd(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final get(I)I
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 114
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->checkedByteOffset(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->getRaw(J)I

    move-result v0

    return v0
.end method

.method public final getAndAccumulate(IILjava/util/function/IntBinaryOperator;)I
    .registers 9
    .param p1, "i"    # I
    .param p2, "x"    # I
    .param p3, "accumulatorFunction"    # Ljava/util/function/IntBinaryOperator;

    .prologue
    .line 310
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->checkedByteOffset(I)J

    move-result-wide v2

    .line 313
    .local v2, "offset":J
    :cond_4
    invoke-direct {p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->getRaw(J)I

    move-result v1

    .line 314
    .local v1, "prev":I
    invoke-interface {p3, v1, p2}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v0

    .line 315
    .local v0, "next":I
    invoke-direct {p0, v2, v3, v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->compareAndSetRaw(JII)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 316
    return v1
.end method

.method public final getAndAdd(II)I
    .registers 7
    .param p1, "i"    # I
    .param p2, "delta"    # I

    .prologue
    .line 217
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->U:Lsun/misc/Unsafe;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->checkedByteOffset(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3, p2}, Lsun/misc/Unsafe;->getAndAddInt(Ljava/lang/Object;JI)I

    move-result v0

    return v0
.end method

.method public final getAndDecrement(I)I
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 206
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->getAndAdd(II)I

    move-result v0

    return v0
.end method

.method public final getAndIncrement(I)I
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 196
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->getAndAdd(II)I

    move-result v0

    return v0
.end method

.method public final getAndSet(II)I
    .registers 7
    .param p1, "i"    # I
    .param p2, "newValue"    # I

    .prologue
    .line 151
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->U:Lsun/misc/Unsafe;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->checkedByteOffset(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3, p2}, Lsun/misc/Unsafe;->getAndSetInt(Ljava/lang/Object;JI)I

    move-result v0

    return v0
.end method

.method public final getAndUpdate(ILjava/util/function/IntUnaryOperator;)I
    .registers 8
    .param p1, "i"    # I
    .param p2, "updateFunction"    # Ljava/util/function/IntUnaryOperator;

    .prologue
    .line 263
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->checkedByteOffset(I)J

    move-result-wide v2

    .line 266
    .local v2, "offset":J
    :cond_4
    invoke-direct {p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->getRaw(J)I

    move-result v1

    .line 267
    .local v1, "prev":I
    invoke-interface {p2, v1}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v0

    .line 268
    .local v0, "next":I
    invoke-direct {p0, v2, v3, v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->compareAndSetRaw(JII)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 269
    return v1
.end method

.method public final incrementAndGet(I)I
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 227
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->getAndAdd(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final lazySet(II)V
    .registers 7
    .param p1, "i"    # I
    .param p2, "newValue"    # I

    .prologue
    .line 139
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->U:Lsun/misc/Unsafe;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->checkedByteOffset(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3, p2}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    .line 140
    return-void
.end method

.method public final length()I
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    array-length v0, v0

    return v0
.end method

.method public final set(II)V
    .registers 7
    .param p1, "i"    # I
    .param p2, "newValue"    # I

    .prologue
    .line 128
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->U:Lsun/misc/Unsafe;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->checkedByteOffset(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3, p2}, Lsun/misc/Unsafe;->putIntVolatile(Ljava/lang/Object;JI)V

    .line 129
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 350
    iget-object v3, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    array-length v3, v3

    add-int/lit8 v2, v3, -0x1

    .line 351
    .local v2, "iMax":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_c

    .line 352
    const-string/jumbo v3, "[]"

    return-object v3

    .line 354
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 355
    .local v0, "b":Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 356
    const/4 v1, 0x0

    .line 357
    .local v1, "i":I
    :goto_17
    invoke-static {v1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->byteOffset(I)J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->getRaw(J)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 358
    if-ne v1, v2, :cond_2f

    .line 359
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 360
    :cond_2f
    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 356
    add-int/lit8 v1, v1, 0x1

    goto :goto_17
.end method

.method public final updateAndGet(ILjava/util/function/IntUnaryOperator;)I
    .registers 8
    .param p1, "i"    # I
    .param p2, "updateFunction"    # Ljava/util/function/IntUnaryOperator;

    .prologue
    .line 284
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->checkedByteOffset(I)J

    move-result-wide v2

    .line 287
    .local v2, "offset":J
    :cond_4
    invoke-direct {p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->getRaw(J)I

    move-result v1

    .line 288
    .local v1, "prev":I
    invoke-interface {p2, v1}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v0

    .line 289
    .local v0, "next":I
    invoke-direct {p0, v2, v3, v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->compareAndSetRaw(JII)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 290
    return v0
.end method

.method public final weakCompareAndSet(III)Z
    .registers 5
    .param p1, "i"    # I
    .param p2, "expect"    # I
    .param p3, "update"    # I

    .prologue
    .line 186
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->compareAndSet(III)Z

    move-result v0

    return v0
.end method
