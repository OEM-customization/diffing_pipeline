.class public Ljava/util/concurrent/atomic/AtomicLong;
.super Ljava/lang/Number;
.source "AtomicLong.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final greylist-max-o U:Lsun/misc/Unsafe;

.field private static final greylist-max-o VALUE:J

.field static final greylist-max-o VM_SUPPORTS_LONG_CAS:Z

.field private static final whitelist serialVersionUID:J = 0x1ac0fab477001718L


# instance fields
.field private volatile greylist-max-o value:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 57
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/atomic/AtomicLong;->U:Lsun/misc/Unsafe;

    .line 66
    invoke-static {}, Ljava/util/concurrent/atomic/AtomicLong;->VMSupportsCS8()Z

    move-result v0

    sput-boolean v0, Ljava/util/concurrent/atomic/AtomicLong;->VM_SUPPORTS_LONG_CAS:Z

    .line 76
    :try_start_c
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->U:Lsun/misc/Unsafe;

    const-class v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-string v2, "value"

    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:J
    :try_end_1c
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_c .. :try_end_1c} :catch_1e

    .line 80
    nop

    .line 81
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

.method public constructor whitelist core-platform-api test-api <init>()V
    .registers 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 98
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(J)V
    .registers 3
    .param p1, "initialValue"    # J

    .line 90
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 91
    iput-wide p1, p0, Ljava/util/concurrent/atomic/AtomicLong;->value:J

    .line 92
    return-void
.end method

.method private static native greylist-max-o VMSupportsCS8()Z
.end method


# virtual methods
.method public final whitelist core-platform-api test-api accumulateAndGet(JLjava/util/function/LongBinaryOperator;)J
    .registers 9
    .param p1, "x"    # J
    .param p3, "accumulatorFunction"    # Ljava/util/function/LongBinaryOperator;

    .line 305
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 306
    .local v0, "prev":J
    invoke-interface {p3, v0, v1, p1, p2}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v2

    .line 307
    .local v2, "next":J
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 308
    return-wide v2

    .line 307
    :cond_f
    goto :goto_0
.end method

.method public final whitelist core-platform-api test-api addAndGet(J)J
    .registers 9
    .param p1, "delta"    # J

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

.method public final whitelist core-platform-api test-api compareAndSet(JJ)Z
    .registers 13
    .param p1, "expect"    # J
    .param p3, "update"    # J

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

.method public final whitelist core-platform-api test-api decrementAndGet()J
    .registers 7

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

.method public whitelist core-platform-api test-api doubleValue()D
    .registers 3

    .line 351
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public whitelist core-platform-api test-api floatValue()F
    .registers 3

    .line 342
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    long-to-float v0, v0

    return v0
.end method

.method public final whitelist core-platform-api test-api get()J
    .registers 3

    .line 106
    iget-wide v0, p0, Ljava/util/concurrent/atomic/AtomicLong;->value:J

    return-wide v0
.end method

.method public final whitelist core-platform-api test-api getAndAccumulate(JLjava/util/function/LongBinaryOperator;)J
    .registers 9
    .param p1, "x"    # J
    .param p3, "accumulatorFunction"    # Ljava/util/function/LongBinaryOperator;

    .line 281
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 282
    .local v0, "prev":J
    invoke-interface {p3, v0, v1, p1, p2}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v2

    .line 283
    .local v2, "next":J
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 284
    return-wide v0

    .line 283
    :cond_f
    goto :goto_0
.end method

.method public final whitelist core-platform-api test-api getAndAdd(J)J
    .registers 9
    .param p1, "delta"    # J

    .line 194
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->getAndAddLong(Ljava/lang/Object;JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist core-platform-api test-api getAndDecrement()J
    .registers 7

    .line 184
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:J

    const-wide/16 v4, -0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->getAndAddLong(Ljava/lang/Object;JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist core-platform-api test-api getAndIncrement()J
    .registers 7

    .line 175
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:J

    const-wide/16 v4, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->getAndAddLong(Ljava/lang/Object;JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist core-platform-api test-api getAndSet(J)J
    .registers 9
    .param p1, "newValue"    # J

    .line 137
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->getAndSetLong(Ljava/lang/Object;JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist core-platform-api test-api getAndUpdate(Ljava/util/function/LongUnaryOperator;)J
    .registers 7
    .param p1, "updateFunction"    # Ljava/util/function/LongUnaryOperator;

    .line 238
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 239
    .local v0, "prev":J
    invoke-interface {p1, v0, v1}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v2

    .line 240
    .local v2, "next":J
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 241
    return-wide v0

    .line 240
    :cond_f
    goto :goto_0
.end method

.method public final whitelist core-platform-api test-api incrementAndGet()J
    .registers 7

    .line 203
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:J

    const-wide/16 v4, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->getAndAddLong(Ljava/lang/Object;JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public whitelist core-platform-api test-api intValue()I
    .registers 3

    .line 325
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final whitelist core-platform-api test-api lazySet(J)V
    .registers 9
    .param p1, "newValue"    # J

    .line 127
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    .line 128
    return-void
.end method

.method public whitelist core-platform-api test-api longValue()J
    .registers 3

    .line 333
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist core-platform-api test-api set(J)V
    .registers 9
    .param p1, "newValue"    # J

    .line 117
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    .line 118
    return-void
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 3

    .line 316
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist core-platform-api test-api updateAndGet(Ljava/util/function/LongUnaryOperator;)J
    .registers 7
    .param p1, "updateFunction"    # Ljava/util/function/LongUnaryOperator;

    .line 257
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 258
    .local v0, "prev":J
    invoke-interface {p1, v0, v1}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v2

    .line 259
    .local v2, "next":J
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 260
    return-wide v2

    .line 259
    :cond_f
    goto :goto_0
.end method

.method public final whitelist core-platform-api test-api weakCompareAndSet(JJ)Z
    .registers 13
    .param p1, "expect"    # J
    .param p3, "update"    # J

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
