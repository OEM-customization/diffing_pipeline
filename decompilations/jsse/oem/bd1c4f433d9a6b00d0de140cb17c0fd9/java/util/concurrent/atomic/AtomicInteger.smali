.class public Ljava/util/concurrent/atomic/AtomicInteger;
.super Ljava/lang/Number;
.source "AtomicInteger.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final U:Lsun/misc/Unsafe;

.field private static final VALUE:J

.field private static final serialVersionUID:J = 0x563f5ecc8c6c168aL


# instance fields
.field private volatile value:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 57
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/atomic/AtomicInteger;->U:Lsun/misc/Unsafe;

    .line 62
    :try_start_6
    sget-object v1, Ljava/util/concurrent/atomic/AtomicInteger;->U:Lsun/misc/Unsafe;

    .line 63
    const-class v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 62
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/atomic/AtomicInteger;->VALUE:J
    :try_end_17
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_6 .. :try_end_17} :catch_18

    .line 54
    return-void

    .line 64
    :catch_18
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 84
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "initialValue"    # I

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 77
    iput p1, p0, Ljava/util/concurrent/atomic/AtomicInteger;->value:I

    .line 78
    return-void
.end method


# virtual methods
.method public final accumulateAndGet(ILjava/util/function/IntBinaryOperator;)I
    .registers 6
    .param p1, "x"    # I
    .param p2, "accumulatorFunction"    # Ljava/util/function/IntBinaryOperator;

    .prologue
    .line 289
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 290
    .local v1, "prev":I
    invoke-interface {p2, v1, p1}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v0

    .line 291
    .local v0, "next":I
    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 292
    return v0
.end method

.method public final addAndGet(I)I
    .registers 6
    .param p1, "delta"    # I

    .prologue
    .line 206
    sget-object v0, Ljava/util/concurrent/atomic/AtomicInteger;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicInteger;->VALUE:J

    invoke-virtual {v0, p0, v2, v3, p1}, Lsun/misc/Unsafe;->getAndAddInt(Ljava/lang/Object;JI)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method public final compareAndSet(II)Z
    .registers 9
    .param p1, "expect"    # I
    .param p2, "update"    # I

    .prologue
    .line 134
    sget-object v0, Ljava/util/concurrent/atomic/AtomicInteger;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicInteger;->VALUE:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0
.end method

.method public final decrementAndGet()I
    .registers 5

    .prologue
    .line 196
    sget-object v0, Ljava/util/concurrent/atomic/AtomicInteger;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicInteger;->VALUE:J

    const/4 v1, -0x1

    invoke-virtual {v0, p0, v2, v3, v1}, Lsun/misc/Unsafe;->getAndAddInt(Ljava/lang/Object;JI)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public doubleValue()D
    .registers 3

    .prologue
    .line 335
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    int-to-double v0, v0

    return-wide v0
.end method

.method public floatValue()F
    .registers 2

    .prologue
    .line 326
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public final get()I
    .registers 2

    .prologue
    .line 92
    iget v0, p0, Ljava/util/concurrent/atomic/AtomicInteger;->value:I

    return v0
.end method

.method public final getAndAccumulate(ILjava/util/function/IntBinaryOperator;)I
    .registers 6
    .param p1, "x"    # I
    .param p2, "accumulatorFunction"    # Ljava/util/function/IntBinaryOperator;

    .prologue
    .line 265
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 266
    .local v1, "prev":I
    invoke-interface {p2, v1, p1}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v0

    .line 267
    .local v0, "next":I
    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 268
    return v1
.end method

.method public final getAndAdd(I)I
    .registers 6
    .param p1, "delta"    # I

    .prologue
    .line 178
    sget-object v0, Ljava/util/concurrent/atomic/AtomicInteger;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicInteger;->VALUE:J

    invoke-virtual {v0, p0, v2, v3, p1}, Lsun/misc/Unsafe;->getAndAddInt(Ljava/lang/Object;JI)I

    move-result v0

    return v0
.end method

.method public final getAndDecrement()I
    .registers 5

    .prologue
    .line 168
    sget-object v0, Ljava/util/concurrent/atomic/AtomicInteger;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicInteger;->VALUE:J

    const/4 v1, -0x1

    invoke-virtual {v0, p0, v2, v3, v1}, Lsun/misc/Unsafe;->getAndAddInt(Ljava/lang/Object;JI)I

    move-result v0

    return v0
.end method

.method public final getAndIncrement()I
    .registers 5

    .prologue
    .line 159
    sget-object v0, Ljava/util/concurrent/atomic/AtomicInteger;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicInteger;->VALUE:J

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v2, v3, v1}, Lsun/misc/Unsafe;->getAndAddInt(Ljava/lang/Object;JI)I

    move-result v0

    return v0
.end method

.method public final getAndSet(I)I
    .registers 6
    .param p1, "newValue"    # I

    .prologue
    .line 121
    sget-object v0, Ljava/util/concurrent/atomic/AtomicInteger;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicInteger;->VALUE:J

    invoke-virtual {v0, p0, v2, v3, p1}, Lsun/misc/Unsafe;->getAndSetInt(Ljava/lang/Object;JI)I

    move-result v0

    return v0
.end method

.method public final getAndUpdate(Ljava/util/function/IntUnaryOperator;)I
    .registers 5
    .param p1, "updateFunction"    # Ljava/util/function/IntUnaryOperator;

    .prologue
    .line 222
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 223
    .local v1, "prev":I
    invoke-interface {p1, v1}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v0

    .line 224
    .local v0, "next":I
    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    return v1
.end method

.method public final incrementAndGet()I
    .registers 5

    .prologue
    .line 187
    sget-object v0, Ljava/util/concurrent/atomic/AtomicInteger;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicInteger;->VALUE:J

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v2, v3, v1}, Lsun/misc/Unsafe;->getAndAddInt(Ljava/lang/Object;JI)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public intValue()I
    .registers 2

    .prologue
    .line 308
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public final lazySet(I)V
    .registers 6
    .param p1, "newValue"    # I

    .prologue
    .line 111
    sget-object v0, Ljava/util/concurrent/atomic/AtomicInteger;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicInteger;->VALUE:J

    invoke-virtual {v0, p0, v2, v3, p1}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    .line 112
    return-void
.end method

.method public longValue()J
    .registers 3

    .prologue
    .line 317
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final set(I)V
    .registers 2
    .param p1, "newValue"    # I

    .prologue
    .line 101
    iput p1, p0, Ljava/util/concurrent/atomic/AtomicInteger;->value:I

    .line 102
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 300
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final updateAndGet(Ljava/util/function/IntUnaryOperator;)I
    .registers 5
    .param p1, "updateFunction"    # Ljava/util/function/IntUnaryOperator;

    .prologue
    .line 241
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 242
    .local v1, "prev":I
    invoke-interface {p1, v1}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v0

    .line 243
    .local v0, "next":I
    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 244
    return v0
.end method

.method public final weakCompareAndSet(II)Z
    .registers 9
    .param p1, "expect"    # I
    .param p2, "update"    # I

    .prologue
    .line 150
    sget-object v0, Ljava/util/concurrent/atomic/AtomicInteger;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicInteger;->VALUE:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0
.end method
