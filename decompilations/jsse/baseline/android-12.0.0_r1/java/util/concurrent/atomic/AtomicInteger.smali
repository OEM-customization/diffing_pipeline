.class public Ljava/util/concurrent/atomic/AtomicInteger;
.super Ljava/lang/Number;
.source "AtomicInteger.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final greylist-max-o U:Lsun/misc/Unsafe;

.field private static final greylist-max-o VALUE:J

.field private static final whitelist serialVersionUID:J = 0x563f5ecc8c6c168aL


# instance fields
.field private volatile greylist value:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 57
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/atomic/AtomicInteger;->U:Lsun/misc/Unsafe;

    .line 62
    :try_start_6
    const-class v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v2, "value"

    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/atomic/AtomicInteger;->VALUE:J
    :try_end_14
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_6 .. :try_end_14} :catch_16

    .line 66
    nop

    .line 67
    return-void

    .line 64
    :catch_16
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 84
    return-void
.end method

.method public constructor whitelist test-api <init>(I)V
    .registers 2
    .param p1, "initialValue"    # I

    .line 76
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 77
    iput p1, p0, Ljava/util/concurrent/atomic/AtomicInteger;->value:I

    .line 78
    return-void
.end method


# virtual methods
.method public final whitelist test-api accumulateAndGet(ILjava/util/function/IntBinaryOperator;)I
    .registers 6
    .param p1, "x"    # I
    .param p2, "accumulatorFunction"    # Ljava/util/function/IntBinaryOperator;

    .line 289
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 290
    .local v0, "prev":I
    invoke-interface {p2, v0, p1}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v1

    .line 291
    .local v1, "next":I
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 292
    return v1

    .line 291
    :cond_f
    goto :goto_0
.end method

.method public final whitelist test-api addAndGet(I)I
    .registers 5
    .param p1, "delta"    # I

    .line 206
    sget-object v0, Ljava/util/concurrent/atomic/AtomicInteger;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava/util/concurrent/atomic/AtomicInteger;->VALUE:J

    invoke-virtual {v0, p0, v1, v2, p1}, Lsun/misc/Unsafe;->getAndAddInt(Ljava/lang/Object;JI)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method public final whitelist test-api compareAndSet(II)Z
    .registers 9
    .param p1, "expect"    # I
    .param p2, "update"    # I

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

.method public final whitelist test-api decrementAndGet()I
    .registers 5

    .line 196
    sget-object v0, Ljava/util/concurrent/atomic/AtomicInteger;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava/util/concurrent/atomic/AtomicInteger;->VALUE:J

    const/4 v3, -0x1

    invoke-virtual {v0, p0, v1, v2, v3}, Lsun/misc/Unsafe;->getAndAddInt(Ljava/lang/Object;JI)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public whitelist test-api doubleValue()D
    .registers 3

    .line 335
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    int-to-double v0, v0

    return-wide v0
.end method

.method public whitelist test-api floatValue()F
    .registers 2

    .line 326
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public final whitelist test-api get()I
    .registers 2

    .line 92
    iget v0, p0, Ljava/util/concurrent/atomic/AtomicInteger;->value:I

    return v0
.end method

.method public final whitelist test-api getAndAccumulate(ILjava/util/function/IntBinaryOperator;)I
    .registers 6
    .param p1, "x"    # I
    .param p2, "accumulatorFunction"    # Ljava/util/function/IntBinaryOperator;

    .line 265
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 266
    .local v0, "prev":I
    invoke-interface {p2, v0, p1}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v1

    .line 267
    .local v1, "next":I
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 268
    return v0

    .line 267
    :cond_f
    goto :goto_0
.end method

.method public final whitelist test-api getAndAdd(I)I
    .registers 5
    .param p1, "delta"    # I

    .line 178
    sget-object v0, Ljava/util/concurrent/atomic/AtomicInteger;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava/util/concurrent/atomic/AtomicInteger;->VALUE:J

    invoke-virtual {v0, p0, v1, v2, p1}, Lsun/misc/Unsafe;->getAndAddInt(Ljava/lang/Object;JI)I

    move-result v0

    return v0
.end method

.method public final whitelist test-api getAndDecrement()I
    .registers 5

    .line 168
    sget-object v0, Ljava/util/concurrent/atomic/AtomicInteger;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava/util/concurrent/atomic/AtomicInteger;->VALUE:J

    const/4 v3, -0x1

    invoke-virtual {v0, p0, v1, v2, v3}, Lsun/misc/Unsafe;->getAndAddInt(Ljava/lang/Object;JI)I

    move-result v0

    return v0
.end method

.method public final whitelist test-api getAndIncrement()I
    .registers 5

    .line 159
    sget-object v0, Ljava/util/concurrent/atomic/AtomicInteger;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava/util/concurrent/atomic/AtomicInteger;->VALUE:J

    const/4 v3, 0x1

    invoke-virtual {v0, p0, v1, v2, v3}, Lsun/misc/Unsafe;->getAndAddInt(Ljava/lang/Object;JI)I

    move-result v0

    return v0
.end method

.method public final whitelist test-api getAndSet(I)I
    .registers 5
    .param p1, "newValue"    # I

    .line 121
    sget-object v0, Ljava/util/concurrent/atomic/AtomicInteger;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava/util/concurrent/atomic/AtomicInteger;->VALUE:J

    invoke-virtual {v0, p0, v1, v2, p1}, Lsun/misc/Unsafe;->getAndSetInt(Ljava/lang/Object;JI)I

    move-result v0

    return v0
.end method

.method public final whitelist test-api getAndUpdate(Ljava/util/function/IntUnaryOperator;)I
    .registers 5
    .param p1, "updateFunction"    # Ljava/util/function/IntUnaryOperator;

    .line 222
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 223
    .local v0, "prev":I
    invoke-interface {p1, v0}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v1

    .line 224
    .local v1, "next":I
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 225
    return v0

    .line 224
    :cond_f
    goto :goto_0
.end method

.method public final whitelist test-api incrementAndGet()I
    .registers 5

    .line 187
    sget-object v0, Ljava/util/concurrent/atomic/AtomicInteger;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava/util/concurrent/atomic/AtomicInteger;->VALUE:J

    const/4 v3, 0x1

    invoke-virtual {v0, p0, v1, v2, v3}, Lsun/misc/Unsafe;->getAndAddInt(Ljava/lang/Object;JI)I

    move-result v0

    add-int/2addr v0, v3

    return v0
.end method

.method public whitelist test-api intValue()I
    .registers 2

    .line 308
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public final whitelist test-api lazySet(I)V
    .registers 5
    .param p1, "newValue"    # I

    .line 111
    sget-object v0, Ljava/util/concurrent/atomic/AtomicInteger;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava/util/concurrent/atomic/AtomicInteger;->VALUE:J

    invoke-virtual {v0, p0, v1, v2, p1}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    .line 112
    return-void
.end method

.method public whitelist test-api longValue()J
    .registers 3

    .line 317
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final whitelist test-api set(I)V
    .registers 2
    .param p1, "newValue"    # I

    .line 101
    iput p1, p0, Ljava/util/concurrent/atomic/AtomicInteger;->value:I

    .line 102
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 300
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api updateAndGet(Ljava/util/function/IntUnaryOperator;)I
    .registers 5
    .param p1, "updateFunction"    # Ljava/util/function/IntUnaryOperator;

    .line 241
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 242
    .local v0, "prev":I
    invoke-interface {p1, v0}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v1

    .line 243
    .local v1, "next":I
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 244
    return v1

    .line 243
    :cond_f
    goto :goto_0
.end method

.method public final whitelist test-api weakCompareAndSet(II)Z
    .registers 9
    .param p1, "expect"    # I
    .param p2, "update"    # I

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
