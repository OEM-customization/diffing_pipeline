.class public Ljava/util/concurrent/atomic/AtomicLong;
.super Ljava/lang/Number;
.source "AtomicLong.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final U:Lsun/misc/Unsafe;

.field private static final VALUE:J

.field static final VM_SUPPORTS_LONG_CAS:Z

.field private static final serialVersionUID:J = 0x1ac0fab477001718L


# instance fields
.field private volatile value:J


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 57
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/atomic/AtomicLong;->U:Lsun/misc/Unsafe;

    .line 66
    invoke-static {}, Ljava/util/concurrent/atomic/AtomicLong;->VMSupportsCS8()Z

    move-result v1

    sput-boolean v1, Ljava/util/concurrent/atomic/AtomicLong;->VM_SUPPORTS_LONG_CAS:Z

    .line 76
    :try_start_c
    sget-object v1, Ljava/util/concurrent/atomic/AtomicLong;->U:Lsun/misc/Unsafe;

    .line 77
    const-class v2, Ljava/util/concurrent/atomic/AtomicLong;

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 76
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:J
    :try_end_1d
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_c .. :try_end_1d} :catch_1e

    .line 54
    return-void

    .line 78
    :catch_1e
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 98
    return-void
.end method

.method public constructor <init>(J)V
    .registers 4
    .param p1, "initialValue"    # J

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 91
    iput-wide p1, p0, Ljava/util/concurrent/atomic/AtomicLong;->value:J

    .line 92
    return-void
.end method

.method private static native VMSupportsCS8()Z
.end method


# virtual methods
.method public final accumulateAndGet(JLjava/util/function/LongBinaryOperator;)J
    .registers 9
    .param p1, "x"    # J
    .param p3, "accumulatorFunction"    # Ljava/util/function/LongBinaryOperator;

    .prologue
    .line 305
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 306
    .local v2, "prev":J
    invoke-interface {p3, v2, v3, p1, p2}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v0

    .line 307
    .local v0, "next":J
    invoke-virtual {p0, v2, v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 308
    return-wide v0
.end method

.method public final addAndGet(J)J
    .registers 10
    .param p1, "delta"    # J

    .prologue
    .line 222
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->getAndAddLong(Ljava/lang/Object;JJ)J

    move-result-wide v0

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public final compareAndSet(JJ)Z
    .registers 14
    .param p1, "expect"    # J
    .param p3, "update"    # J

    .prologue
    .line 150
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method

.method public final decrementAndGet()J
    .registers 7

    .prologue
    .line 212
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:J

    const-wide/16 v4, -0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->getAndAddLong(Ljava/lang/Object;JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public doubleValue()D
    .registers 3

    .prologue
    .line 351
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public floatValue()F
    .registers 3

    .prologue
    .line 342
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    long-to-float v0, v0

    return v0
.end method

.method public final get()J
    .registers 3

    .prologue
    .line 106
    iget-wide v0, p0, Ljava/util/concurrent/atomic/AtomicLong;->value:J

    return-wide v0
.end method

.method public final getAndAccumulate(JLjava/util/function/LongBinaryOperator;)J
    .registers 9
    .param p1, "x"    # J
    .param p3, "accumulatorFunction"    # Ljava/util/function/LongBinaryOperator;

    .prologue
    .line 281
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 282
    .local v2, "prev":J
    invoke-interface {p3, v2, v3, p1, p2}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v0

    .line 283
    .local v0, "next":J
    invoke-virtual {p0, v2, v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 284
    return-wide v2
.end method

.method public final getAndAdd(J)J
    .registers 10
    .param p1, "delta"    # J

    .prologue
    .line 194
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->getAndAddLong(Ljava/lang/Object;JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getAndDecrement()J
    .registers 7

    .prologue
    .line 184
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:J

    const-wide/16 v4, -0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->getAndAddLong(Ljava/lang/Object;JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getAndIncrement()J
    .registers 7

    .prologue
    .line 175
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:J

    const-wide/16 v4, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->getAndAddLong(Ljava/lang/Object;JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getAndSet(J)J
    .registers 10
    .param p1, "newValue"    # J

    .prologue
    .line 137
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->getAndSetLong(Ljava/lang/Object;JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getAndUpdate(Ljava/util/function/LongUnaryOperator;)J
    .registers 7
    .param p1, "updateFunction"    # Ljava/util/function/LongUnaryOperator;

    .prologue
    .line 238
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 239
    .local v2, "prev":J
    invoke-interface {p1, v2, v3}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v0

    .line 240
    .local v0, "next":J
    invoke-virtual {p0, v2, v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 241
    return-wide v2
.end method

.method public final incrementAndGet()J
    .registers 7

    .prologue
    const-wide/16 v4, 0x1

    .line 203
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:J

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->getAndAddLong(Ljava/lang/Object;JJ)J

    move-result-wide v0

    add-long/2addr v0, v4

    return-wide v0
.end method

.method public intValue()I
    .registers 3

    .prologue
    .line 325
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final lazySet(J)V
    .registers 10
    .param p1, "newValue"    # J

    .prologue
    .line 127
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    .line 128
    return-void
.end method

.method public longValue()J
    .registers 3

    .prologue
    .line 333
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public final set(J)V
    .registers 10
    .param p1, "newValue"    # J

    .prologue
    .line 117
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    .line 118
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 316
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final updateAndGet(Ljava/util/function/LongUnaryOperator;)J
    .registers 7
    .param p1, "updateFunction"    # Ljava/util/function/LongUnaryOperator;

    .prologue
    .line 257
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 258
    .local v2, "prev":J
    invoke-interface {p1, v2, v3}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v0

    .line 259
    .local v0, "next":J
    invoke-virtual {p0, v2, v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 260
    return-wide v0
.end method

.method public final weakCompareAndSet(JJ)Z
    .registers 14
    .param p1, "expect"    # J
    .param p3, "update"    # J

    .prologue
    .line 166
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method
