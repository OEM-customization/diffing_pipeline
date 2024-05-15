.class public Ljava/util/concurrent/locks/LockSupport;
.super Ljava/lang/Object;
.source "LockSupport.java"


# static fields
.field private static final greylist-max-o PARKBLOCKER:J

.field private static final greylist-max-o SECONDARY:J

.field private static final greylist-max-o U:Lsun/misc/Unsafe;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 409
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/locks/LockSupport;->U:Lsun/misc/Unsafe;

    .line 414
    :try_start_6
    const-class v1, Ljava/lang/Thread;

    const-string v2, "parkBlocker"

    .line 415
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Ljava/util/concurrent/locks/LockSupport;->PARKBLOCKER:J

    .line 416
    const-class v1, Ljava/lang/Thread;

    const-string v2, "threadLocalRandomSecondarySeed"

    .line 417
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/locks/LockSupport;->SECONDARY:J
    :try_end_22
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_6 .. :try_end_22} :catch_24

    .line 420
    nop

    .line 421
    return-void

    .line 418
    :catch_24
    move-exception v0

    .line 419
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist test-api getBlocker(Ljava/lang/Thread;)Ljava/lang/Object;
    .registers 4
    .param p0, "t"    # Ljava/lang/Thread;

    .line 288
    if-eqz p0, :cond_b

    .line 290
    sget-object v0, Ljava/util/concurrent/locks/LockSupport;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava/util/concurrent/locks/LockSupport;->PARKBLOCKER:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 289
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method static final greylist-max-o nextSecondarySeed()I
    .registers 6

    .line 396
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 397
    .local v0, "t":Ljava/lang/Thread;
    sget-object v1, Ljava/util/concurrent/locks/LockSupport;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/LockSupport;->SECONDARY:J

    invoke-virtual {v1, v0, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    move v5, v4

    .local v5, "r":I
    if-eqz v4, :cond_19

    .line 398
    shl-int/lit8 v4, v5, 0xd

    xor-int/2addr v4, v5

    .line 399
    .end local v5    # "r":I
    .local v4, "r":I
    ushr-int/lit8 v5, v4, 0x11

    xor-int/2addr v4, v5

    .line 400
    shl-int/lit8 v5, v4, 0x5

    xor-int/2addr v4, v5

    goto :goto_27

    .line 402
    .end local v4    # "r":I
    .restart local v5    # "r":I
    :cond_19
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    move-result v4

    move v5, v4

    if-nez v4, :cond_26

    .line 403
    const/4 v4, 0x1

    .end local v5    # "r":I
    .restart local v4    # "r":I
    goto :goto_27

    .line 402
    .end local v4    # "r":I
    .restart local v5    # "r":I
    :cond_26
    move v4, v5

    .line 404
    .end local v5    # "r":I
    .restart local v4    # "r":I
    :goto_27
    invoke-virtual {v1, v0, v2, v3, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 405
    return v4
.end method

.method public static whitelist test-api park()V
    .registers 4

    .line 319
    sget-object v0, Ljava/util/concurrent/locks/LockSupport;->U:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->park(ZJ)V

    .line 320
    return-void
.end method

.method public static whitelist test-api park(Ljava/lang/Object;)V
    .registers 6
    .param p0, "blocker"    # Ljava/lang/Object;

    .line 188
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 189
    .local v0, "t":Ljava/lang/Thread;
    invoke-static {v0, p0}, Ljava/util/concurrent/locks/LockSupport;->setBlocker(Ljava/lang/Thread;Ljava/lang/Object;)V

    .line 190
    sget-object v1, Ljava/util/concurrent/locks/LockSupport;->U:Lsun/misc/Unsafe;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lsun/misc/Unsafe;->park(ZJ)V

    .line 191
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/concurrent/locks/LockSupport;->setBlocker(Ljava/lang/Thread;Ljava/lang/Object;)V

    .line 192
    return-void
.end method

.method public static whitelist test-api parkNanos(J)V
    .registers 4
    .param p0, "nanos"    # J

    .line 352
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_c

    .line 353
    sget-object v0, Ljava/util/concurrent/locks/LockSupport;->U:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0, p1}, Lsun/misc/Unsafe;->park(ZJ)V

    .line 354
    :cond_c
    return-void
.end method

.method public static whitelist test-api parkNanos(Ljava/lang/Object;J)V
    .registers 6
    .param p0, "blocker"    # Ljava/lang/Object;
    .param p1, "nanos"    # J

    .line 227
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_17

    .line 228
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 229
    .local v0, "t":Ljava/lang/Thread;
    invoke-static {v0, p0}, Ljava/util/concurrent/locks/LockSupport;->setBlocker(Ljava/lang/Thread;Ljava/lang/Object;)V

    .line 230
    sget-object v1, Ljava/util/concurrent/locks/LockSupport;->U:Lsun/misc/Unsafe;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1, p2}, Lsun/misc/Unsafe;->park(ZJ)V

    .line 231
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/concurrent/locks/LockSupport;->setBlocker(Ljava/lang/Thread;Ljava/lang/Object;)V

    .line 233
    .end local v0    # "t":Ljava/lang/Thread;
    :cond_17
    return-void
.end method

.method public static whitelist test-api parkUntil(J)V
    .registers 4
    .param p0, "deadline"    # J

    .line 387
    sget-object v0, Ljava/util/concurrent/locks/LockSupport;->U:Lsun/misc/Unsafe;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0, p1}, Lsun/misc/Unsafe;->park(ZJ)V

    .line 388
    return-void
.end method

.method public static whitelist test-api parkUntil(Ljava/lang/Object;J)V
    .registers 6
    .param p0, "blocker"    # Ljava/lang/Object;
    .param p1, "deadline"    # J

    .line 269
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 270
    .local v0, "t":Ljava/lang/Thread;
    invoke-static {v0, p0}, Ljava/util/concurrent/locks/LockSupport;->setBlocker(Ljava/lang/Thread;Ljava/lang/Object;)V

    .line 271
    sget-object v1, Ljava/util/concurrent/locks/LockSupport;->U:Lsun/misc/Unsafe;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1, p2}, Lsun/misc/Unsafe;->park(ZJ)V

    .line 272
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/concurrent/locks/LockSupport;->setBlocker(Ljava/lang/Thread;Ljava/lang/Object;)V

    .line 273
    return-void
.end method

.method private static greylist-max-o setBlocker(Ljava/lang/Thread;Ljava/lang/Object;)V
    .registers 5
    .param p0, "t"    # Ljava/lang/Thread;
    .param p1, "arg"    # Ljava/lang/Object;

    .line 140
    sget-object v0, Ljava/util/concurrent/locks/LockSupport;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava/util/concurrent/locks/LockSupport;->PARKBLOCKER:J

    invoke-virtual {v0, p0, v1, v2, p1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 141
    return-void
.end method

.method public static whitelist test-api unpark(Ljava/lang/Thread;)V
    .registers 2
    .param p0, "thread"    # Ljava/lang/Thread;

    .line 155
    if-eqz p0, :cond_7

    .line 156
    sget-object v0, Ljava/util/concurrent/locks/LockSupport;->U:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    .line 157
    :cond_7
    return-void
.end method
