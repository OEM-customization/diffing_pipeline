.class public Ljava/util/concurrent/locks/StampedLock;
.super Ljava/lang/Object;
.source "StampedLock.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/locks/StampedLock$ReadWriteLockView;,
        Ljava/util/concurrent/locks/StampedLock$WriteLockView;,
        Ljava/util/concurrent/locks/StampedLock$ReadLockView;,
        Ljava/util/concurrent/locks/StampedLock$WNode;
    }
.end annotation


# static fields
.field private static final greylist-max-o ABITS:J = 0xffL

.field private static final greylist-max-o CANCELLED:I = 0x1

.field private static final greylist-max-o HEAD_SPINS:I

.field private static final greylist-max-o INTERRUPTED:J = 0x1L

.field private static final greylist-max-o LG_READERS:I = 0x7

.field private static final greylist-max-o MAX_HEAD_SPINS:I

.field private static final greylist-max-o NCPU:I

.field private static final greylist-max-o ORIGIN:J = 0x100L

.field private static final greylist-max-o OVERFLOW_YIELD_RATE:I = 0x7

.field private static final greylist-max-o PARKBLOCKER:J

.field private static final greylist-max-o RBITS:J = 0x7fL

.field private static final greylist-max-o RFULL:J = 0x7eL

.field private static final greylist-max-o RMODE:I = 0x0

.field private static final greylist-max-o RUNIT:J = 0x1L

.field private static final greylist-max-o SBITS:J = -0x80L

.field private static final greylist-max-o SPINS:I

.field private static final greylist-max-o STATE:J

.field private static final greylist-max-o U:Lsun/misc/Unsafe;

.field private static final greylist-max-o WAITING:I = -0x1

.field private static final greylist-max-o WBIT:J = 0x80L

.field private static final greylist-max-o WCOWAIT:J

.field private static final greylist-max-o WHEAD:J

.field private static final greylist-max-o WMODE:I = 0x1

.field private static final greylist-max-o WNEXT:J

.field private static final greylist-max-o WSTATUS:J

.field private static final greylist-max-o WTAIL:J

.field private static final whitelist serialVersionUID:J = -0x5349f9cce5385003L


# instance fields
.field transient greylist-max-o readLockView:Ljava/util/concurrent/locks/StampedLock$ReadLockView;

.field transient greylist-max-o readWriteLockView:Ljava/util/concurrent/locks/StampedLock$ReadWriteLockView;

.field private transient greylist-max-o readerOverflow:I

.field private volatile transient greylist-max-o state:J

.field private volatile transient greylist-max-o whead:Ljava/util/concurrent/locks/StampedLock$WNode;

.field transient greylist-max-o writeLockView:Ljava/util/concurrent/locks/StampedLock$WriteLockView;

.field private volatile transient greylist-max-o wtail:Ljava/util/concurrent/locks/StampedLock$WNode;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 268
    const-class v0, Ljava/util/concurrent/locks/StampedLock;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    sput v1, Ljava/util/concurrent/locks/StampedLock;->NCPU:I

    .line 271
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_13

    const/16 v4, 0x40

    goto :goto_14

    :cond_13
    move v4, v2

    :goto_14
    sput v4, Ljava/util/concurrent/locks/StampedLock;->SPINS:I

    .line 274
    if-le v1, v3, :cond_1b

    const/16 v4, 0x400

    goto :goto_1c

    :cond_1b
    move v4, v2

    :goto_1c
    sput v4, Ljava/util/concurrent/locks/StampedLock;->HEAD_SPINS:I

    .line 277
    if-le v1, v3, :cond_22

    const/high16 v2, 0x10000

    :cond_22
    sput v2, Ljava/util/concurrent/locks/StampedLock;->MAX_HEAD_SPINS:I

    .line 1401
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    .line 1412
    :try_start_2a
    const-string v2, "state"

    .line 1413
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    .line 1414
    const-string v2, "whead"

    .line 1415
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/locks/StampedLock;->WHEAD:J

    .line 1416
    const-string v2, "wtail"

    .line 1417
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/locks/StampedLock;->WTAIL:J

    .line 1419
    const-class v0, Ljava/util/concurrent/locks/StampedLock$WNode;

    const-string v2, "status"

    .line 1420
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/locks/StampedLock;->WSTATUS:J

    .line 1421
    const-class v0, Ljava/util/concurrent/locks/StampedLock$WNode;

    const-string v2, "next"

    .line 1422
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/locks/StampedLock;->WNEXT:J

    .line 1423
    const-class v0, Ljava/util/concurrent/locks/StampedLock$WNode;

    const-string v2, "cowait"

    .line 1424
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/locks/StampedLock;->WCOWAIT:J

    .line 1426
    const-class v0, Ljava/lang/Thread;

    const-string v2, "parkBlocker"

    .line 1427
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/locks/StampedLock;->PARKBLOCKER:J
    :try_end_86
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_2a .. :try_end_86} :catch_88

    .line 1430
    nop

    .line 1431
    return-void

    .line 1428
    :catch_88
    move-exception v0

    .line 1429
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor whitelist test-api <init>()V
    .registers 3

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    const-wide/16 v0, 0x100

    iput-wide v0, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    .line 338
    return-void
.end method

.method private greylist-max-o acquireRead(ZJ)J
    .registers 45
    .param p1, "interruptible"    # Z
    .param p2, "deadline"    # J

    .line 1142
    move-object/from16 v8, p0

    const/4 v0, 0x0

    .line 1143
    .local v0, "wasInterrupted":Z
    const/4 v1, 0x0

    .line 1144
    .local v1, "node":Ljava/util/concurrent/locks/StampedLock$WNode;
    const/4 v2, -0x1

    move v9, v0

    move-object v10, v1

    .line 1146
    .end local v0    # "wasInterrupted":Z
    .end local v1    # "node":Ljava/util/concurrent/locks/StampedLock$WNode;
    .local v2, "spins":I
    .local v9, "wasInterrupted":Z
    .local v10, "node":Ljava/util/concurrent/locks/StampedLock$WNode;
    :goto_7
    iget-object v0, v8, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object v1, v0

    .local v1, "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    iget-object v3, v8, Ljava/util/concurrent/locks/StampedLock;->wtail:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object v4, v3

    .local v4, "p":Ljava/util/concurrent/locks/StampedLock$WNode;
    const-wide/16 v11, 0x1

    const-wide/16 v13, 0x7e

    const-wide/16 v15, 0xff

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x80

    if-ne v0, v3, :cond_96

    move-object v6, v1

    move/from16 v21, v2

    move-object v7, v4

    .line 1148
    .end local v1    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v2    # "spins":I
    .end local v4    # "p":Ljava/util/concurrent/locks/StampedLock$WNode;
    .local v6, "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    .local v7, "p":Ljava/util/concurrent/locks/StampedLock$WNode;
    .local v21, "spins":I
    :goto_1d
    iget-wide v0, v8, Ljava/util/concurrent/locks/StampedLock;->state:J

    move-wide v4, v0

    .local v4, "s":J
    and-long/2addr v0, v15

    move-wide/from16 v22, v0

    .local v22, "m":J
    cmp-long v0, v0, v13

    if-gez v0, :cond_43

    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    add-long v24, v4, v11

    move-wide/from16 v26, v24

    .line 1149
    .local v26, "ns":J
    move-object/from16 v1, p0

    move-wide/from16 v28, v4

    .end local v4    # "s":J
    .local v28, "s":J
    move-object v11, v6

    move-object v12, v7

    .end local v6    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v7    # "p":Ljava/util/concurrent/locks/StampedLock$WNode;
    .local v11, "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    .local v12, "p":Ljava/util/concurrent/locks/StampedLock$WNode;
    move-wide/from16 v6, v24

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_40

    move-wide/from16 v0, v28

    goto :goto_57

    :cond_40
    move-wide/from16 v0, v28

    goto :goto_63

    .end local v11    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v12    # "p":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v26    # "ns":J
    .end local v28    # "s":J
    .restart local v4    # "s":J
    .restart local v6    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v7    # "p":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_43
    move-wide/from16 v28, v4

    move-object v11, v6

    move-object v12, v7

    .end local v4    # "s":J
    .end local v6    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v7    # "p":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v11    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v12    # "p":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v28    # "s":J
    cmp-long v0, v22, v19

    if-gez v0, :cond_61

    .line 1150
    move-wide/from16 v0, v28

    .end local v28    # "s":J
    .local v0, "s":J
    invoke-direct {v8, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->tryIncReaderOverflow(J)J

    move-result-wide v2

    move-wide/from16 v26, v2

    .restart local v26    # "ns":J
    cmp-long v2, v2, v17

    if-eqz v2, :cond_63

    .line 1151
    :goto_57
    if-eqz v9, :cond_60

    .line 1152
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 1153
    :cond_60
    return-wide v26

    .line 1149
    .end local v0    # "s":J
    .end local v26    # "ns":J
    .restart local v28    # "s":J
    :cond_61
    move-wide/from16 v0, v28

    .line 1155
    .end local v28    # "s":J
    .restart local v0    # "s":J
    :cond_63
    :goto_63
    cmp-long v2, v22, v19

    if-ltz v2, :cond_91

    .line 1156
    if-lez v21, :cond_76

    .line 1157
    invoke-static {}, Ljava/util/concurrent/locks/LockSupport;->nextSecondarySeed()I

    move-result v2

    if-ltz v2, :cond_91

    .line 1158
    add-int/lit8 v21, v21, -0x1

    move-object v6, v11

    move-object v7, v12

    const-wide/16 v11, 0x1

    goto :goto_1d

    .line 1161
    :cond_76
    if-nez v21, :cond_8a

    .line 1162
    iget-object v2, v8, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    .local v2, "nh":Ljava/util/concurrent/locks/StampedLock$WNode;
    iget-object v3, v8, Ljava/util/concurrent/locks/StampedLock;->wtail:Ljava/util/concurrent/locks/StampedLock$WNode;

    .line 1163
    .local v3, "np":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-ne v2, v11, :cond_80

    if-eq v3, v12, :cond_9a

    :cond_80
    move-object v4, v2

    .end local v11    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    .local v4, "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    move-object v5, v3

    .end local v12    # "p":Ljava/util/concurrent/locks/StampedLock$WNode;
    .local v5, "p":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eq v2, v3, :cond_87

    .line 1164
    move-object v11, v4

    move-object v12, v5

    goto :goto_9a

    .line 1163
    :cond_87
    move-object v6, v4

    move-object v7, v5

    goto :goto_8c

    .line 1161
    .end local v2    # "nh":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v3    # "np":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v4    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v5    # "p":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v11    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v12    # "p":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_8a
    move-object v6, v11

    move-object v7, v12

    .line 1166
    .end local v11    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v12    # "p":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v6    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v7    # "p":Ljava/util/concurrent/locks/StampedLock$WNode;
    :goto_8c
    sget v21, Ljava/util/concurrent/locks/StampedLock;->SPINS:I

    const-wide/16 v11, 0x1

    goto :goto_1d

    .line 1148
    .end local v0    # "s":J
    .end local v6    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v7    # "p":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v22    # "m":J
    .restart local v11    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v12    # "p":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_91
    move-object v6, v11

    move-object v7, v12

    const-wide/16 v11, 0x1

    goto :goto_1d

    .line 1146
    .end local v11    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v12    # "p":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v21    # "spins":I
    .restart local v1    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    .local v2, "spins":I
    .local v4, "p":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_96
    move-object v11, v1

    move/from16 v21, v2

    move-object v12, v4

    .line 1171
    .end local v1    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v2    # "spins":I
    .end local v4    # "p":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v11    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v12    # "p":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v21    # "spins":I
    :cond_9a
    :goto_9a
    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v12, :cond_b6

    .line 1172
    new-instance v0, Ljava/util/concurrent/locks/StampedLock$WNode;

    invoke-direct {v0, v6, v7}, Ljava/util/concurrent/locks/StampedLock$WNode;-><init>(ILjava/util/concurrent/locks/StampedLock$WNode;)V

    move-object v6, v0

    .line 1173
    .local v6, "hd":Ljava/util/concurrent/locks/StampedLock$WNode;
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->WHEAD:J

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 1174
    iput-object v6, v8, Ljava/util/concurrent/locks/StampedLock;->wtail:Ljava/util/concurrent/locks/StampedLock$WNode;

    .line 1175
    .end local v6    # "hd":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_b4
    goto/16 :goto_389

    .line 1176
    :cond_b6
    const/4 v5, 0x0

    if-nez v10, :cond_c1

    .line 1177
    new-instance v0, Ljava/util/concurrent/locks/StampedLock$WNode;

    invoke-direct {v0, v5, v12}, Ljava/util/concurrent/locks/StampedLock$WNode;-><init>(ILjava/util/concurrent/locks/StampedLock$WNode;)V

    move-object v10, v0

    .end local v10    # "node":Ljava/util/concurrent/locks/StampedLock$WNode;
    .local v0, "node":Ljava/util/concurrent/locks/StampedLock$WNode;
    goto/16 :goto_389

    .line 1178
    .end local v0    # "node":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v10    # "node":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_c1
    if-eq v11, v12, :cond_1e2

    iget v0, v12, Ljava/util/concurrent/locks/StampedLock$WNode;->mode:I

    if-eqz v0, :cond_ca

    move v6, v5

    goto/16 :goto_1e3

    .line 1186
    :cond_ca
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->WCOWAIT:J

    iget-object v4, v12, Ljava/util/concurrent/locks/StampedLock$WNode;->cowait:Ljava/util/concurrent/locks/StampedLock$WNode;

    iput-object v4, v10, Ljava/util/concurrent/locks/StampedLock$WNode;->cowait:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object v1, v12

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_de

    .line 1188
    iput-object v7, v10, Ljava/util/concurrent/locks/StampedLock$WNode;->cowait:Ljava/util/concurrent/locks/StampedLock$WNode;

    goto/16 :goto_389

    .line 1186
    :cond_de
    move/from16 v22, v9

    .line 1192
    .end local v9    # "wasInterrupted":Z
    .local v22, "wasInterrupted":Z
    :goto_e0
    iget-object v0, v8, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object v9, v0

    .end local v11    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    .local v9, "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v0, :cond_106

    iget-object v0, v9, Ljava/util/concurrent/locks/StampedLock$WNode;->cowait:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object v1, v0

    .local v1, "c":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v0, :cond_106

    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v25, Ljava/util/concurrent/locks/StampedLock;->WCOWAIT:J

    iget-object v2, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->cowait:Ljava/util/concurrent/locks/StampedLock$WNode;

    .line 1193
    move-object/from16 v23, v0

    move-object/from16 v24, v9

    move-object/from16 v27, v1

    move-object/from16 v28, v2

    invoke-virtual/range {v23 .. v28}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_106

    iget-object v2, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->thread:Ljava/lang/Thread;

    move-object v3, v2

    .local v3, "w":Ljava/lang/Thread;
    if-eqz v2, :cond_106

    .line 1195
    invoke-virtual {v0, v3}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    .line 1196
    .end local v1    # "c":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v3    # "w":Ljava/lang/Thread;
    :cond_106
    iget-object v0, v12, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object v11, v0

    .local v11, "pp":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eq v9, v0, :cond_113

    if-eq v9, v12, :cond_113

    if-nez v11, :cond_110

    goto :goto_113

    :cond_110
    move v13, v6

    move-object v14, v7

    goto :goto_15f

    .line 1199
    :cond_113
    :goto_113
    iget-wide v0, v8, Ljava/util/concurrent/locks/StampedLock;->state:J

    move-wide v4, v0

    .local v4, "s":J
    and-long/2addr v0, v15

    move-wide/from16 v23, v0

    .local v23, "m":J
    cmp-long v0, v0, v13

    if-gez v0, :cond_13b

    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    const-wide/16 v25, 0x1

    add-long v27, v4, v25

    move-wide/from16 v25, v27

    .line 1200
    .local v25, "ns":J
    move-object/from16 v1, p0

    move-wide/from16 v33, v4

    .end local v4    # "s":J
    .local v33, "s":J
    move v13, v6

    move-object v14, v7

    move-wide/from16 v6, v27

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_138

    move-wide/from16 v0, v33

    goto :goto_14f

    :cond_138
    move-wide/from16 v0, v33

    goto :goto_15b

    .end local v25    # "ns":J
    .end local v33    # "s":J
    .restart local v4    # "s":J
    :cond_13b
    move-wide/from16 v33, v4

    move v13, v6

    move-object v14, v7

    .end local v4    # "s":J
    .restart local v33    # "s":J
    cmp-long v0, v23, v19

    if-gez v0, :cond_159

    .line 1203
    move-wide/from16 v0, v33

    .end local v33    # "s":J
    .local v0, "s":J
    invoke-direct {v8, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->tryIncReaderOverflow(J)J

    move-result-wide v2

    move-wide/from16 v25, v2

    .restart local v25    # "ns":J
    cmp-long v2, v2, v17

    if-eqz v2, :cond_15b

    .line 1204
    :goto_14f
    if-eqz v22, :cond_158

    .line 1205
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 1206
    :cond_158
    return-wide v25

    .line 1200
    .end local v0    # "s":J
    .end local v25    # "ns":J
    .restart local v33    # "s":J
    :cond_159
    move-wide/from16 v0, v33

    .line 1208
    .end local v33    # "s":J
    .restart local v0    # "s":J
    :cond_15b
    :goto_15b
    cmp-long v2, v23, v19

    if-ltz v2, :cond_1db

    .line 1210
    .end local v0    # "s":J
    .end local v23    # "m":J
    :goto_15f
    iget-object v0, v8, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    if-ne v0, v9, :cond_1d3

    iget-object v0, v12, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    if-ne v0, v11, :cond_1d3

    .line 1212
    if-eqz v11, :cond_1cd

    if-eq v9, v12, :cond_1cd

    iget v0, v12, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    if-lez v0, :cond_170

    goto :goto_1cd

    .line 1216
    :cond_170
    cmp-long v0, p2, v17

    if-nez v0, :cond_178

    .line 1217
    const-wide/16 v0, 0x0

    const/4 v6, 0x0

    .local v0, "time":J
    goto :goto_194

    .line 1218
    .end local v0    # "time":J
    :cond_178
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long v0, p2, v0

    move-wide v2, v0

    .local v2, "time":J
    cmp-long v0, v0, v17

    if-gtz v0, :cond_192

    .line 1219
    if-eqz v22, :cond_18c

    .line 1220
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1221
    :cond_18c
    const/4 v6, 0x0

    invoke-direct {v8, v10, v12, v6}, Ljava/util/concurrent/locks/StampedLock;->cancelWaiter(Ljava/util/concurrent/locks/StampedLock$WNode;Ljava/util/concurrent/locks/StampedLock$WNode;Z)J

    move-result-wide v0

    return-wide v0

    .line 1218
    :cond_192
    const/4 v6, 0x0

    move-wide v0, v2

    .line 1223
    .end local v2    # "time":J
    .restart local v0    # "time":J
    :goto_194
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 1224
    .local v2, "wt":Ljava/lang/Thread;
    sget-object v3, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/locks/StampedLock;->PARKBLOCKER:J

    invoke-virtual {v3, v2, v4, v5, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1225
    iput-object v2, v10, Ljava/util/concurrent/locks/StampedLock$WNode;->thread:Ljava/lang/Thread;

    .line 1226
    if-ne v9, v11, :cond_1aa

    iget-wide v13, v8, Ljava/util/concurrent/locks/StampedLock;->state:J

    and-long/2addr v13, v15

    cmp-long v7, v13, v19

    if-nez v7, :cond_1b5

    :cond_1aa
    iget-object v7, v8, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    if-ne v7, v9, :cond_1b5

    iget-object v7, v12, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    if-ne v7, v11, :cond_1b5

    .line 1228
    invoke-virtual {v3, v6, v0, v1}, Lsun/misc/Unsafe;->park(ZJ)V

    .line 1229
    :cond_1b5
    const/4 v7, 0x0

    iput-object v7, v10, Ljava/util/concurrent/locks/StampedLock$WNode;->thread:Ljava/lang/Thread;

    .line 1230
    invoke-virtual {v3, v2, v4, v5, v7}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1231
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_1d4

    .line 1232
    if-eqz p1, :cond_1c9

    .line 1233
    const/4 v3, 0x1

    invoke-direct {v8, v10, v12, v3}, Ljava/util/concurrent/locks/StampedLock;->cancelWaiter(Ljava/util/concurrent/locks/StampedLock$WNode;Ljava/util/concurrent/locks/StampedLock$WNode;Z)J

    move-result-wide v3

    return-wide v3

    .line 1234
    :cond_1c9
    const/4 v3, 0x1

    move/from16 v22, v3

    .end local v22    # "wasInterrupted":Z
    .local v3, "wasInterrupted":Z
    goto :goto_1d4

    .line 1213
    .end local v0    # "time":J
    .end local v2    # "wt":Ljava/lang/Thread;
    .end local v3    # "wasInterrupted":Z
    .restart local v22    # "wasInterrupted":Z
    :cond_1cd
    :goto_1cd
    const/4 v0, 0x0

    .line 1214
    .end local v10    # "node":Ljava/util/concurrent/locks/StampedLock$WNode;
    .local v0, "node":Ljava/util/concurrent/locks/StampedLock$WNode;
    move-object v10, v0

    move/from16 v9, v22

    goto/16 :goto_389

    .line 1210
    .end local v0    # "node":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v10    # "node":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_1d3
    const/4 v6, 0x0

    .line 1237
    .end local v11    # "pp":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_1d4
    :goto_1d4
    move-object v11, v9

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/16 v13, 0x7e

    goto/16 :goto_e0

    .line 1208
    .local v0, "s":J
    .restart local v11    # "pp":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v23    # "m":J
    :cond_1db
    const/4 v6, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/16 v13, 0x7e

    goto/16 :goto_113

    .line 1178
    .end local v0    # "s":J
    .end local v22    # "wasInterrupted":Z
    .end local v23    # "m":J
    .local v9, "wasInterrupted":Z
    .local v11, "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_1e2
    move v6, v5

    .line 1179
    :goto_1e3
    iget-object v0, v10, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    if-eq v0, v12, :cond_1eb

    .line 1180
    iput-object v12, v10, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    goto/16 :goto_389

    .line 1181
    :cond_1eb
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->WTAIL:J

    move-object/from16 v1, p0

    move-object v4, v12

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_389

    .line 1182
    iput-object v10, v12, Ljava/util/concurrent/locks/StampedLock$WNode;->next:Ljava/util/concurrent/locks/StampedLock$WNode;

    .line 1183
    nop

    .line 1241
    .end local v11    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v21    # "spins":I
    const/4 v0, -0x1

    .line 1243
    .local v0, "spins":I
    :goto_1fd
    iget-object v1, v8, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object v11, v1

    .restart local v11    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-ne v1, v12, :cond_2a3

    .line 1244
    if-gez v0, :cond_208

    .line 1245
    sget v0, Ljava/util/concurrent/locks/StampedLock;->HEAD_SPINS:I

    move v13, v0

    goto :goto_211

    .line 1246
    :cond_208
    sget v1, Ljava/util/concurrent/locks/StampedLock;->MAX_HEAD_SPINS:I

    if-ge v0, v1, :cond_210

    .line 1247
    shl-int/lit8 v0, v0, 0x1

    move v13, v0

    goto :goto_211

    .line 1246
    :cond_210
    move v13, v0

    .line 1248
    .end local v0    # "spins":I
    .local v13, "spins":I
    :goto_211
    move v0, v13

    move v14, v0

    .line 1250
    .local v14, "k":I
    :goto_213
    iget-wide v0, v8, Ljava/util/concurrent/locks/StampedLock;->state:J

    move-wide v4, v0

    .restart local v4    # "s":J
    and-long/2addr v0, v15

    move-wide/from16 v21, v0

    const-wide/16 v23, 0x7e

    .local v21, "m":J
    cmp-long v0, v0, v23

    if-gez v0, :cond_239

    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    const-wide/16 v27, 0x1

    add-long v29, v4, v27

    move-wide/from16 v31, v29

    .line 1251
    .local v31, "ns":J
    move-object/from16 v1, p0

    move-wide/from16 v33, v4

    .end local v4    # "s":J
    .restart local v33    # "s":J
    move v15, v6

    move-wide/from16 v6, v29

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_28d

    move-wide/from16 v6, v33

    goto :goto_24e

    .end local v31    # "ns":J
    .end local v33    # "s":J
    .restart local v4    # "s":J
    :cond_239
    move-wide/from16 v33, v4

    move v15, v6

    const-wide/16 v27, 0x1

    .end local v4    # "s":J
    .restart local v33    # "s":J
    cmp-long v0, v21, v19

    if-gez v0, :cond_28d

    .line 1252
    move-wide/from16 v6, v33

    .end local v33    # "s":J
    .local v6, "s":J
    invoke-direct {v8, v6, v7}, Ljava/util/concurrent/locks/StampedLock;->tryIncReaderOverflow(J)J

    move-result-wide v0

    move-wide/from16 v31, v0

    .restart local v31    # "ns":J
    cmp-long v0, v0, v17

    if-eqz v0, :cond_28b

    .line 1254
    :goto_24e
    iput-object v10, v8, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    .line 1255
    const/4 v0, 0x0

    iput-object v0, v10, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    .line 1256
    :goto_253
    iget-object v0, v10, Ljava/util/concurrent/locks/StampedLock$WNode;->cowait:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object v15, v0

    .local v15, "c":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v0, :cond_27f

    .line 1257
    sget-object v5, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->WCOWAIT:J

    iget-object v4, v15, Ljava/util/concurrent/locks/StampedLock$WNode;->cowait:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object v0, v5

    move-object v1, v10

    move-object/from16 v16, v4

    move-object v4, v15

    move-wide/from16 v33, v6

    move-object v6, v5

    .end local v6    # "s":J
    .restart local v33    # "s":J
    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27c

    iget-object v0, v15, Ljava/util/concurrent/locks/StampedLock$WNode;->thread:Ljava/lang/Thread;

    move-object v1, v0

    .local v1, "w":Ljava/lang/Thread;
    if-eqz v0, :cond_279

    .line 1260
    invoke-virtual {v6, v1}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    move-wide/from16 v6, v33

    goto :goto_253

    .line 1257
    :cond_279
    move-wide/from16 v6, v33

    goto :goto_253

    .end local v1    # "w":Ljava/lang/Thread;
    :cond_27c
    move-wide/from16 v6, v33

    goto :goto_253

    .line 1262
    .end local v33    # "s":J
    .restart local v6    # "s":J
    :cond_27f
    move-wide/from16 v33, v6

    .end local v6    # "s":J
    .restart local v33    # "s":J
    if-eqz v9, :cond_28a

    .line 1263
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1264
    :cond_28a
    return-wide v31

    .line 1252
    .end local v15    # "c":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v33    # "s":J
    .restart local v6    # "s":J
    :cond_28b
    move-wide/from16 v33, v6

    .line 1266
    .end local v6    # "s":J
    .end local v31    # "ns":J
    .restart local v33    # "s":J
    :cond_28d
    cmp-long v0, v21, v19

    if-ltz v0, :cond_29e

    .line 1267
    invoke-static {}, Ljava/util/concurrent/locks/LockSupport;->nextSecondarySeed()I

    move-result v0

    if-ltz v0, :cond_29e

    add-int/lit8 v14, v14, -0x1

    if-gtz v14, :cond_29e

    .line 1268
    nop

    .line 1269
    .end local v14    # "k":I
    .end local v21    # "m":J
    .end local v33    # "s":J
    move v0, v13

    goto :goto_2cc

    .restart local v14    # "k":I
    :cond_29e
    move v6, v15

    const-wide/16 v15, 0xff

    goto/16 :goto_213

    .line 1271
    .end local v13    # "spins":I
    .end local v14    # "k":I
    .restart local v0    # "spins":I
    :cond_2a3
    move v15, v6

    const-wide/16 v23, 0x7e

    const-wide/16 v27, 0x1

    if-eqz v11, :cond_2cc

    .line 1273
    :cond_2aa
    :goto_2aa
    iget-object v1, v11, Ljava/util/concurrent/locks/StampedLock$WNode;->cowait:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object v2, v1

    .local v2, "c":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v1, :cond_2cc

    .line 1274
    sget-object v1, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v37, Ljava/util/concurrent/locks/StampedLock;->WCOWAIT:J

    iget-object v3, v2, Ljava/util/concurrent/locks/StampedLock$WNode;->cowait:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v35, v1

    move-object/from16 v36, v11

    move-object/from16 v39, v2

    move-object/from16 v40, v3

    invoke-virtual/range {v35 .. v40}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2aa

    iget-object v3, v2, Ljava/util/concurrent/locks/StampedLock$WNode;->thread:Ljava/lang/Thread;

    move-object v4, v3

    .local v4, "w":Ljava/lang/Thread;
    if-eqz v3, :cond_2aa

    .line 1276
    invoke-virtual {v1, v4}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    goto :goto_2aa

    .line 1279
    .end local v2    # "c":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v4    # "w":Ljava/lang/Thread;
    :cond_2cc
    :goto_2cc
    iget-object v1, v8, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    if-ne v1, v11, :cond_380

    .line 1280
    iget-object v1, v10, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object v2, v1

    .local v2, "np":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eq v1, v12, :cond_2e7

    .line 1281
    if-eqz v2, :cond_2e1

    .line 1282
    move-object v1, v2

    .end local v12    # "p":Ljava/util/concurrent/locks/StampedLock$WNode;
    .local v1, "p":Ljava/util/concurrent/locks/StampedLock$WNode;
    iput-object v10, v2, Ljava/util/concurrent/locks/StampedLock$WNode;->next:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object v12, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v29, 0xff

    goto/16 :goto_384

    .line 1281
    .end local v1    # "p":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v12    # "p":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_2e1
    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v29, 0xff

    goto/16 :goto_384

    .line 1284
    :cond_2e7
    iget v1, v12, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    move v3, v1

    .local v3, "ps":I
    if-nez v1, :cond_2ff

    .line 1285
    sget-object v35, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v37, Ljava/util/concurrent/locks/StampedLock;->WSTATUS:J

    const/16 v39, 0x0

    const/16 v40, -0x1

    move-object/from16 v36, v12

    invoke-virtual/range {v35 .. v40}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v29, 0xff

    goto/16 :goto_384

    .line 1286
    :cond_2ff
    const/4 v1, 0x1

    if-ne v3, v1, :cond_317

    .line 1287
    iget-object v1, v12, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object v4, v1

    .local v4, "pp":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v1, :cond_311

    .line 1288
    iput-object v4, v10, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    .line 1289
    iput-object v10, v4, Ljava/util/concurrent/locks/StampedLock$WNode;->next:Ljava/util/concurrent/locks/StampedLock$WNode;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v29, 0xff

    goto/16 :goto_384

    .line 1287
    :cond_311
    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v29, 0xff

    goto/16 :goto_384

    .line 1294
    .end local v4    # "pp":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_317
    cmp-long v1, p2, v17

    if-nez v1, :cond_31e

    .line 1295
    const-wide/16 v4, 0x0

    .local v4, "time":J
    goto :goto_32f

    .line 1296
    .end local v4    # "time":J
    :cond_31e
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, p2, v4

    move-wide v6, v4

    .local v6, "time":J
    cmp-long v1, v4, v17

    if-gtz v1, :cond_32e

    .line 1297
    invoke-direct {v8, v10, v10, v15}, Ljava/util/concurrent/locks/StampedLock;->cancelWaiter(Ljava/util/concurrent/locks/StampedLock$WNode;Ljava/util/concurrent/locks/StampedLock$WNode;Z)J

    move-result-wide v4

    return-wide v4

    .line 1296
    :cond_32e
    move-wide v4, v6

    .line 1298
    .end local v6    # "time":J
    .restart local v4    # "time":J
    :goto_32f
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 1299
    .local v1, "wt":Ljava/lang/Thread;
    sget-object v6, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v13, Ljava/util/concurrent/locks/StampedLock;->PARKBLOCKER:J

    invoke-virtual {v6, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1300
    iput-object v1, v10, Ljava/util/concurrent/locks/StampedLock$WNode;->thread:Ljava/lang/Thread;

    .line 1301
    iget v7, v12, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    if-gez v7, :cond_361

    if-ne v12, v11, :cond_350

    move-object v7, v2

    move/from16 v16, v3

    .end local v2    # "np":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v3    # "ps":I
    .local v7, "np":Ljava/util/concurrent/locks/StampedLock$WNode;
    .local v16, "ps":I
    iget-wide v2, v8, Ljava/util/concurrent/locks/StampedLock;->state:J

    const-wide/16 v29, 0xff

    and-long v2, v2, v29

    cmp-long v2, v2, v19

    if-nez v2, :cond_366

    goto :goto_355

    .end local v7    # "np":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v16    # "ps":I
    .restart local v2    # "np":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v3    # "ps":I
    :cond_350
    move-object v7, v2

    move/from16 v16, v3

    const-wide/16 v29, 0xff

    .end local v2    # "np":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v3    # "ps":I
    .restart local v7    # "np":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v16    # "ps":I
    :goto_355
    iget-object v2, v8, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    if-ne v2, v11, :cond_366

    iget-object v2, v10, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    if-ne v2, v12, :cond_366

    .line 1304
    invoke-virtual {v6, v15, v4, v5}, Lsun/misc/Unsafe;->park(ZJ)V

    goto :goto_366

    .line 1301
    .end local v7    # "np":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v16    # "ps":I
    .restart local v2    # "np":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v3    # "ps":I
    :cond_361
    move-object v7, v2

    move/from16 v16, v3

    const-wide/16 v29, 0xff

    .line 1305
    .end local v2    # "np":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v3    # "ps":I
    .restart local v7    # "np":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v16    # "ps":I
    :cond_366
    :goto_366
    const/4 v2, 0x0

    iput-object v2, v10, Ljava/util/concurrent/locks/StampedLock$WNode;->thread:Ljava/lang/Thread;

    .line 1306
    invoke-virtual {v6, v1, v13, v14, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1307
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_37e

    .line 1308
    if-eqz p1, :cond_37a

    .line 1309
    const/4 v3, 0x1

    invoke-direct {v8, v10, v10, v3}, Ljava/util/concurrent/locks/StampedLock;->cancelWaiter(Ljava/util/concurrent/locks/StampedLock$WNode;Ljava/util/concurrent/locks/StampedLock$WNode;Z)J

    move-result-wide v2

    return-wide v2

    .line 1310
    :cond_37a
    const/4 v3, 0x1

    const/4 v6, 0x1

    move v9, v6

    .end local v9    # "wasInterrupted":Z
    .local v6, "wasInterrupted":Z
    goto :goto_384

    .line 1307
    .end local v6    # "wasInterrupted":Z
    .restart local v9    # "wasInterrupted":Z
    :cond_37e
    const/4 v3, 0x1

    goto :goto_384

    .line 1279
    .end local v1    # "wt":Ljava/lang/Thread;
    .end local v4    # "time":J
    .end local v7    # "np":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v16    # "ps":I
    :cond_380
    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v29, 0xff

    .line 1314
    .end local v11    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    :goto_384
    move v6, v15

    move-wide/from16 v15, v29

    goto/16 :goto_1fd

    .line 1239
    .end local v0    # "spins":I
    .local v21, "spins":I
    :cond_389
    :goto_389
    move/from16 v2, v21

    goto/16 :goto_7
.end method

.method private greylist-max-o acquireWrite(ZJ)J
    .registers 31
    .param p1, "interruptible"    # Z
    .param p2, "deadline"    # J

    .line 1034
    move-object/from16 v8, p0

    const/4 v0, 0x0

    .line 1035
    .local v0, "node":Ljava/util/concurrent/locks/StampedLock$WNode;
    const/4 v1, -0x1

    move-object v9, v0

    move v10, v1

    .line 1037
    .end local v0    # "node":Ljava/util/concurrent/locks/StampedLock$WNode;
    .local v9, "node":Ljava/util/concurrent/locks/StampedLock$WNode;
    .local v10, "spins":I
    :goto_6
    iget-wide v0, v8, Ljava/util/concurrent/locks/StampedLock;->state:J

    move-wide v11, v0

    .local v11, "s":J
    const-wide/16 v13, 0xff

    and-long/2addr v0, v13

    move-wide v15, v0

    .local v15, "m":J
    const-wide/16 v17, 0x0

    cmp-long v0, v0, v17

    const-wide/16 v19, 0x80

    if-nez v0, :cond_26

    .line 1038
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    add-long v6, v11, v19

    move-wide v13, v6

    .local v13, "ns":J
    move-object/from16 v1, p0

    move-wide v4, v11

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_1cf

    .line 1039
    return-wide v13

    .line 1041
    .end local v13    # "ns":J
    :cond_26
    const/4 v6, 0x0

    if-gez v10, :cond_39

    .line 1042
    cmp-long v0, v15, v19

    if-nez v0, :cond_35

    iget-object v0, v8, Ljava/util/concurrent/locks/StampedLock;->wtail:Ljava/util/concurrent/locks/StampedLock$WNode;

    iget-object v1, v8, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    if-ne v0, v1, :cond_35

    sget v6, Ljava/util/concurrent/locks/StampedLock;->SPINS:I

    :cond_35
    move v0, v6

    move v10, v0

    .end local v10    # "spins":I
    .local v0, "spins":I
    goto/16 :goto_1cf

    .line 1043
    .end local v0    # "spins":I
    .restart local v10    # "spins":I
    :cond_39
    if-lez v10, :cond_45

    .line 1044
    invoke-static {}, Ljava/util/concurrent/locks/LockSupport;->nextSecondarySeed()I

    move-result v0

    if-ltz v0, :cond_1cf

    .line 1045
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_1cf

    .line 1047
    :cond_45
    iget-object v0, v8, Ljava/util/concurrent/locks/StampedLock;->wtail:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object v7, v0

    .local v7, "p":Ljava/util/concurrent/locks/StampedLock$WNode;
    const/4 v5, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_64

    .line 1048
    new-instance v0, Ljava/util/concurrent/locks/StampedLock$WNode;

    invoke-direct {v0, v4, v5}, Ljava/util/concurrent/locks/StampedLock$WNode;-><init>(ILjava/util/concurrent/locks/StampedLock$WNode;)V

    move-object v6, v0

    .line 1049
    .local v6, "hd":Ljava/util/concurrent/locks/StampedLock$WNode;
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->WHEAD:J

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 1050
    iput-object v6, v8, Ljava/util/concurrent/locks/StampedLock;->wtail:Ljava/util/concurrent/locks/StampedLock$WNode;

    .line 1051
    .end local v6    # "hd":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_62
    goto/16 :goto_1cf

    .line 1052
    :cond_64
    if-nez v9, :cond_6e

    .line 1053
    new-instance v0, Ljava/util/concurrent/locks/StampedLock$WNode;

    invoke-direct {v0, v4, v7}, Ljava/util/concurrent/locks/StampedLock$WNode;-><init>(ILjava/util/concurrent/locks/StampedLock$WNode;)V

    move-object v9, v0

    .end local v9    # "node":Ljava/util/concurrent/locks/StampedLock$WNode;
    .local v0, "node":Ljava/util/concurrent/locks/StampedLock$WNode;
    goto/16 :goto_1cf

    .line 1054
    .end local v0    # "node":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v9    # "node":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_6e
    iget-object v0, v9, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    if-eq v0, v7, :cond_76

    .line 1055
    iput-object v7, v9, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    goto/16 :goto_1cf

    .line 1056
    :cond_76
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->WTAIL:J

    move-object/from16 v1, p0

    move-object v4, v7

    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1cf

    .line 1057
    iput-object v9, v7, Ljava/util/concurrent/locks/StampedLock$WNode;->next:Ljava/util/concurrent/locks/StampedLock$WNode;

    .line 1058
    nop

    .line 1062
    .end local v10    # "spins":I
    .end local v11    # "s":J
    .end local v15    # "m":J
    const/4 v0, 0x0

    .line 1063
    .local v0, "wasInterrupted":Z
    const/4 v1, -0x1

    move v10, v0

    move-object v11, v7

    .line 1065
    .end local v0    # "wasInterrupted":Z
    .end local v7    # "p":Ljava/util/concurrent/locks/StampedLock$WNode;
    .local v1, "spins":I
    .local v10, "wasInterrupted":Z
    .local v11, "p":Ljava/util/concurrent/locks/StampedLock$WNode;
    :goto_8b
    iget-object v0, v8, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object v12, v0

    .local v12, "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-ne v0, v11, :cond_e4

    .line 1066
    if-gez v1, :cond_96

    .line 1067
    sget v1, Ljava/util/concurrent/locks/StampedLock;->HEAD_SPINS:I

    move v15, v1

    goto :goto_9f

    .line 1068
    :cond_96
    sget v0, Ljava/util/concurrent/locks/StampedLock;->MAX_HEAD_SPINS:I

    if-ge v1, v0, :cond_9e

    .line 1069
    shl-int/lit8 v1, v1, 0x1

    move v15, v1

    goto :goto_9f

    .line 1068
    :cond_9e
    move v15, v1

    .line 1070
    .end local v1    # "spins":I
    .local v15, "spins":I
    :goto_9f
    move v0, v15

    move/from16 v16, v0

    .line 1072
    .local v16, "k":I
    :goto_a2
    iget-wide v0, v8, Ljava/util/concurrent/locks/StampedLock;->state:J

    move-wide/from16 v21, v0

    .local v21, "s":J
    and-long/2addr v0, v13

    cmp-long v0, v0, v17

    if-nez v0, :cond_d1

    .line 1073
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    add-long v23, v21, v19

    move-wide/from16 v25, v23

    .local v25, "ns":J
    move-object/from16 v1, p0

    move-wide/from16 v4, v21

    move v13, v6

    move-wide/from16 v6, v23

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_cf

    .line 1075
    iput-object v9, v8, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    .line 1076
    const/4 v0, 0x0

    iput-object v0, v9, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    .line 1077
    if-eqz v10, :cond_ce

    .line 1078
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1079
    :cond_ce
    return-wide v25

    .line 1073
    :cond_cf
    const/4 v0, 0x0

    goto :goto_e0

    .line 1082
    .end local v25    # "ns":J
    :cond_d1
    move v13, v6

    const/4 v0, 0x0

    invoke-static {}, Ljava/util/concurrent/locks/LockSupport;->nextSecondarySeed()I

    move-result v1

    if-ltz v1, :cond_e0

    add-int/lit8 v16, v16, -0x1

    if-gtz v16, :cond_e0

    .line 1084
    nop

    .line 1085
    .end local v16    # "k":I
    .end local v21    # "s":J
    move v1, v15

    goto :goto_10a

    .restart local v16    # "k":I
    :cond_e0
    :goto_e0
    move v6, v13

    const-wide/16 v13, 0xff

    goto :goto_a2

    .line 1087
    .end local v15    # "spins":I
    .end local v16    # "k":I
    .restart local v1    # "spins":I
    :cond_e4
    move v13, v6

    const/4 v0, 0x0

    if-eqz v12, :cond_10a

    .line 1089
    :cond_e8
    :goto_e8
    iget-object v2, v12, Ljava/util/concurrent/locks/StampedLock$WNode;->cowait:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object v3, v2

    .local v3, "c":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v2, :cond_10a

    .line 1090
    sget-object v2, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v23, Ljava/util/concurrent/locks/StampedLock;->WCOWAIT:J

    iget-object v4, v3, Ljava/util/concurrent/locks/StampedLock$WNode;->cowait:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v21, v2

    move-object/from16 v22, v12

    move-object/from16 v25, v3

    move-object/from16 v26, v4

    invoke-virtual/range {v21 .. v26}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e8

    iget-object v4, v3, Ljava/util/concurrent/locks/StampedLock$WNode;->thread:Ljava/lang/Thread;

    move-object v5, v4

    .local v5, "w":Ljava/lang/Thread;
    if-eqz v4, :cond_e8

    .line 1092
    invoke-virtual {v2, v5}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    goto :goto_e8

    .line 1095
    .end local v3    # "c":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v5    # "w":Ljava/lang/Thread;
    :cond_10a
    :goto_10a
    iget-object v2, v8, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    if-ne v2, v12, :cond_1c6

    .line 1096
    iget-object v2, v9, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object v3, v2

    .local v3, "np":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eq v2, v11, :cond_125

    .line 1097
    if-eqz v3, :cond_11f

    .line 1098
    move-object v2, v3

    .end local v11    # "p":Ljava/util/concurrent/locks/StampedLock$WNode;
    .local v2, "p":Ljava/util/concurrent/locks/StampedLock$WNode;
    iput-object v9, v3, Ljava/util/concurrent/locks/StampedLock$WNode;->next:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object v14, v0

    move-object v11, v2

    const/4 v0, 0x1

    const-wide/16 v21, 0xff

    goto/16 :goto_1ca

    .line 1097
    .end local v2    # "p":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v11    # "p":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_11f
    move-object v14, v0

    const/4 v0, 0x1

    const-wide/16 v21, 0xff

    goto/16 :goto_1ca

    .line 1100
    :cond_125
    iget v2, v11, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    move v4, v2

    .local v4, "ps":I
    if-nez v2, :cond_13d

    .line 1101
    sget-object v21, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v23, Ljava/util/concurrent/locks/StampedLock;->WSTATUS:J

    const/16 v25, 0x0

    const/16 v26, -0x1

    move-object/from16 v22, v11

    invoke-virtual/range {v21 .. v26}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-object v14, v0

    const/4 v0, 0x1

    const-wide/16 v21, 0xff

    goto/16 :goto_1ca

    .line 1102
    :cond_13d
    const/4 v2, 0x1

    if-ne v4, v2, :cond_155

    .line 1103
    iget-object v5, v11, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object v6, v5

    .local v6, "pp":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v5, :cond_14f

    .line 1104
    iput-object v6, v9, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    .line 1105
    iput-object v9, v6, Ljava/util/concurrent/locks/StampedLock$WNode;->next:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object v14, v0

    move v0, v2

    const-wide/16 v21, 0xff

    goto/16 :goto_1ca

    .line 1103
    :cond_14f
    move-object v14, v0

    move v0, v2

    const-wide/16 v21, 0xff

    goto/16 :goto_1ca

    .line 1110
    .end local v6    # "pp":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_155
    cmp-long v5, p2, v17

    if-nez v5, :cond_15c

    .line 1111
    const-wide/16 v5, 0x0

    .local v5, "time":J
    goto :goto_16d

    .line 1112
    .end local v5    # "time":J
    :cond_15c
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long v5, p2, v5

    move-wide v14, v5

    .local v14, "time":J
    cmp-long v5, v5, v17

    if-gtz v5, :cond_16c

    .line 1113
    invoke-direct {v8, v9, v9, v13}, Ljava/util/concurrent/locks/StampedLock;->cancelWaiter(Ljava/util/concurrent/locks/StampedLock$WNode;Ljava/util/concurrent/locks/StampedLock$WNode;Z)J

    move-result-wide v5

    return-wide v5

    .line 1112
    :cond_16c
    move-wide v5, v14

    .line 1114
    .end local v14    # "time":J
    .restart local v5    # "time":J
    :goto_16d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    .line 1115
    .local v7, "wt":Ljava/lang/Thread;
    sget-object v14, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    move-object v15, v3

    .end local v3    # "np":Ljava/util/concurrent/locks/StampedLock$WNode;
    .local v15, "np":Ljava/util/concurrent/locks/StampedLock$WNode;
    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->PARKBLOCKER:J

    invoke-virtual {v14, v7, v2, v3, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1116
    iput-object v7, v9, Ljava/util/concurrent/locks/StampedLock$WNode;->thread:Ljava/lang/Thread;

    .line 1117
    iget v0, v11, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    if-gez v0, :cond_1a9

    if-ne v11, v12, :cond_192

    move-object/from16 v16, v14

    iget-wide v13, v8, Ljava/util/concurrent/locks/StampedLock;->state:J

    const-wide/16 v21, 0xff

    and-long v13, v13, v21

    cmp-long v13, v13, v17

    if-eqz v13, :cond_18e

    goto :goto_196

    :cond_18e
    move-object/from16 v0, v16

    const/4 v13, 0x0

    goto :goto_1ac

    :cond_192
    move-object/from16 v16, v14

    const-wide/16 v21, 0xff

    :goto_196
    iget-object v13, v8, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    if-ne v13, v12, :cond_1a5

    iget-object v13, v9, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    if-ne v13, v11, :cond_1a5

    .line 1119
    move-object/from16 v0, v16

    const/4 v13, 0x0

    invoke-virtual {v0, v13, v5, v6}, Lsun/misc/Unsafe;->park(ZJ)V

    goto :goto_1ac

    .line 1117
    :cond_1a5
    move-object/from16 v0, v16

    const/4 v13, 0x0

    goto :goto_1ac

    :cond_1a9
    move-object v0, v14

    const-wide/16 v21, 0xff

    .line 1120
    :goto_1ac
    const/4 v14, 0x0

    iput-object v14, v9, Ljava/util/concurrent/locks/StampedLock$WNode;->thread:Ljava/lang/Thread;

    .line 1121
    invoke-virtual {v0, v7, v2, v3, v14}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1122
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_1c4

    .line 1123
    if-eqz p1, :cond_1c0

    .line 1124
    const/4 v0, 0x1

    invoke-direct {v8, v9, v9, v0}, Ljava/util/concurrent/locks/StampedLock;->cancelWaiter(Ljava/util/concurrent/locks/StampedLock$WNode;Ljava/util/concurrent/locks/StampedLock$WNode;Z)J

    move-result-wide v2

    return-wide v2

    .line 1125
    :cond_1c0
    const/4 v0, 0x1

    const/4 v2, 0x1

    move v10, v2

    .end local v10    # "wasInterrupted":Z
    .local v2, "wasInterrupted":Z
    goto :goto_1ca

    .line 1122
    .end local v2    # "wasInterrupted":Z
    .restart local v10    # "wasInterrupted":Z
    :cond_1c4
    const/4 v0, 0x1

    goto :goto_1ca

    .line 1095
    .end local v4    # "ps":I
    .end local v5    # "time":J
    .end local v7    # "wt":Ljava/lang/Thread;
    .end local v15    # "np":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_1c6
    move-object v14, v0

    const/4 v0, 0x1

    const-wide/16 v21, 0xff

    .line 1129
    .end local v12    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    :goto_1ca
    move v6, v13

    move-wide/from16 v13, v21

    goto/16 :goto_8b

    .line 1060
    .end local v1    # "spins":I
    .end local v11    # "p":Ljava/util/concurrent/locks/StampedLock$WNode;
    .local v10, "spins":I
    :cond_1cf
    :goto_1cf
    goto/16 :goto_6
.end method

.method private greylist-max-o cancelWaiter(Ljava/util/concurrent/locks/StampedLock$WNode;Ljava/util/concurrent/locks/StampedLock$WNode;Z)J
    .registers 14
    .param p1, "node"    # Ljava/util/concurrent/locks/StampedLock$WNode;
    .param p2, "group"    # Ljava/util/concurrent/locks/StampedLock$WNode;
    .param p3, "interrupted"    # Z

    .line 1334
    const/4 v0, 0x1

    if-eqz p1, :cond_ac

    if-eqz p2, :cond_ac

    .line 1336
    iput v0, p1, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    .line 1338
    move-object v1, p2

    .local v1, "p":Ljava/util/concurrent/locks/StampedLock$WNode;
    :goto_8
    iget-object v2, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->cowait:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object v8, v2

    .local v8, "q":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v2, :cond_20

    .line 1339
    iget v2, v8, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    if-ne v2, v0, :cond_1e

    .line 1340
    sget-object v2, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/locks/StampedLock;->WCOWAIT:J

    iget-object v7, v8, Ljava/util/concurrent/locks/StampedLock$WNode;->cowait:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object v3, v1

    move-object v6, v8

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 1341
    move-object v1, p2

    goto :goto_8

    .line 1344
    :cond_1e
    move-object v1, v8

    goto :goto_8

    .line 1346
    .end local v1    # "p":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v8    # "q":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_20
    if-ne p2, p1, :cond_ac

    .line 1347
    iget-object v1, p2, Ljava/util/concurrent/locks/StampedLock$WNode;->cowait:Ljava/util/concurrent/locks/StampedLock$WNode;

    .local v1, "r":Ljava/util/concurrent/locks/StampedLock$WNode;
    :goto_24
    if-eqz v1, :cond_33

    .line 1348
    iget-object v2, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->thread:Ljava/lang/Thread;

    move-object v3, v2

    .local v3, "w":Ljava/lang/Thread;
    if-eqz v2, :cond_30

    .line 1349
    sget-object v2, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    .line 1347
    :cond_30
    iget-object v1, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->cowait:Ljava/util/concurrent/locks/StampedLock$WNode;

    goto :goto_24

    .line 1351
    .end local v1    # "r":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v3    # "w":Ljava/lang/Thread;
    :cond_33
    iget-object v1, p1, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    .local v1, "pred":Ljava/util/concurrent/locks/StampedLock$WNode;
    :goto_35
    if-eqz v1, :cond_ac

    .line 1353
    :goto_37
    iget-object v2, p1, Ljava/util/concurrent/locks/StampedLock$WNode;->next:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object v7, v2

    .local v7, "succ":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v2, :cond_43

    iget v2, v7, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    if-ne v2, v0, :cond_41

    goto :goto_43

    :cond_41
    move-object v8, v7

    goto :goto_77

    .line 1355
    :cond_43
    :goto_43
    const/4 v2, 0x0

    .line 1356
    .local v2, "q":Ljava/util/concurrent/locks/StampedLock$WNode;
    iget-object v3, p0, Ljava/util/concurrent/locks/StampedLock;->wtail:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object v9, v2

    .end local v2    # "q":Ljava/util/concurrent/locks/StampedLock$WNode;
    .local v3, "t":Ljava/util/concurrent/locks/StampedLock$WNode;
    .local v9, "q":Ljava/util/concurrent/locks/StampedLock$WNode;
    :goto_47
    if-eqz v3, :cond_54

    if-eq v3, p1, :cond_54

    .line 1357
    iget v2, v3, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    if-eq v2, v0, :cond_51

    .line 1358
    move-object v2, v3

    move-object v9, v2

    .line 1356
    :cond_51
    iget-object v3, v3, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    goto :goto_47

    .line 1359
    .end local v3    # "t":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_54
    if-eq v7, v9, :cond_66

    sget-object v3, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v5, Ljava/util/concurrent/locks/StampedLock;->WNEXT:J

    move-object v2, v9

    .line 1360
    .end local v7    # "succ":Ljava/util/concurrent/locks/StampedLock$WNode;
    .local v2, "succ":Ljava/util/concurrent/locks/StampedLock$WNode;
    move-object v4, p1

    move-object v8, v9

    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_65

    move-object v8, v2

    goto :goto_67

    .line 1366
    .end local v9    # "q":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_65
    goto :goto_37

    .line 1359
    .end local v2    # "succ":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v7    # "succ":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v9    # "q":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_66
    move-object v8, v7

    .line 1362
    .end local v7    # "succ":Ljava/util/concurrent/locks/StampedLock$WNode;
    .local v8, "succ":Ljava/util/concurrent/locks/StampedLock$WNode;
    :goto_67
    if-nez v8, :cond_77

    iget-object v2, p0, Ljava/util/concurrent/locks/StampedLock;->wtail:Ljava/util/concurrent/locks/StampedLock$WNode;

    if-ne p1, v2, :cond_77

    .line 1363
    sget-object v2, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/locks/StampedLock;->WTAIL:J

    move-object v3, p0

    move-object v6, p1

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 1367
    .end local v9    # "q":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_77
    :goto_77
    iget-object v2, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->next:Ljava/util/concurrent/locks/StampedLock$WNode;

    if-ne v2, p1, :cond_85

    .line 1368
    sget-object v2, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/locks/StampedLock;->WNEXT:J

    move-object v3, v1

    move-object v6, p1

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 1369
    :cond_85
    if-eqz v8, :cond_94

    iget-object v2, v8, Ljava/util/concurrent/locks/StampedLock$WNode;->thread:Ljava/lang/Thread;

    move-object v3, v2

    .local v3, "w":Ljava/lang/Thread;
    if-eqz v2, :cond_94

    .line 1370
    const/4 v2, 0x0

    iput-object v2, v8, Ljava/util/concurrent/locks/StampedLock$WNode;->thread:Ljava/lang/Thread;

    .line 1371
    sget-object v2, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    .line 1373
    .end local v3    # "w":Ljava/lang/Thread;
    :cond_94
    iget v2, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    if-ne v2, v0, :cond_ac

    iget-object v2, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object v9, v2

    .local v9, "pp":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-nez v2, :cond_9e

    .line 1374
    goto :goto_ac

    .line 1375
    :cond_9e
    iput-object v9, p1, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    .line 1376
    sget-object v2, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/locks/StampedLock;->WNEXT:J

    move-object v3, v9

    move-object v6, v1

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 1377
    move-object v1, v9

    .line 1378
    .end local v8    # "succ":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v9    # "pp":Ljava/util/concurrent/locks/StampedLock$WNode;
    goto :goto_35

    .line 1382
    .end local v1    # "pred":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_ac
    :goto_ac
    iget-object v1, p0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object v2, v1

    .local v2, "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    const-wide/16 v3, 0x0

    if-eqz v1, :cond_ed

    .line 1384
    iget-object v1, v2, Ljava/util/concurrent/locks/StampedLock$WNode;->next:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object v5, v1

    .local v5, "q":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v1, :cond_bc

    iget v1, v5, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    if-ne v1, v0, :cond_ca

    .line 1385
    :cond_bc
    iget-object v1, p0, Ljava/util/concurrent/locks/StampedLock;->wtail:Ljava/util/concurrent/locks/StampedLock$WNode;

    .local v1, "t":Ljava/util/concurrent/locks/StampedLock$WNode;
    :goto_be
    if-eqz v1, :cond_ca

    if-eq v1, v2, :cond_ca

    .line 1386
    iget v6, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    if-gtz v6, :cond_c7

    .line 1387
    move-object v5, v1

    .line 1385
    :cond_c7
    iget-object v1, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    goto :goto_be

    .line 1389
    .end local v1    # "t":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_ca
    iget-object v1, p0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    if-ne v2, v1, :cond_ec

    .line 1390
    if-eqz v5, :cond_ed

    iget v0, v2, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    if-nez v0, :cond_ed

    iget-wide v0, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    move-wide v6, v0

    .local v6, "s":J
    const-wide/16 v8, 0xff

    and-long/2addr v0, v8

    const-wide/16 v8, 0x80

    cmp-long v0, v0, v8

    if-eqz v0, :cond_ed

    cmp-long v0, v6, v3

    if-eqz v0, :cond_e8

    iget v0, v5, Ljava/util/concurrent/locks/StampedLock$WNode;->mode:I

    if-nez v0, :cond_ed

    .line 1393
    :cond_e8
    invoke-direct {p0, v2}, Ljava/util/concurrent/locks/StampedLock;->release(Ljava/util/concurrent/locks/StampedLock$WNode;)V

    goto :goto_ed

    .line 1396
    .end local v5    # "q":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v6    # "s":J
    :cond_ec
    goto :goto_ac

    .line 1397
    :cond_ed
    :goto_ed
    if-nez p3, :cond_f5

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_f7

    :cond_f5
    const-wide/16 v3, 0x1

    :cond_f7
    return-wide v3
.end method

.method private greylist-max-o getReadLockCount(J)I
    .registers 9
    .param p1, "s"    # J

    .line 779
    const-wide/16 v0, 0x7f

    and-long/2addr v0, p1

    move-wide v2, v0

    .local v2, "readers":J
    const-wide/16 v4, 0x7e

    cmp-long v0, v0, v4

    if-ltz v0, :cond_f

    .line 780
    iget v0, p0, Ljava/util/concurrent/locks/StampedLock;->readerOverflow:I

    int-to-long v0, v0

    add-long v2, v0, v4

    .line 781
    :cond_f
    long-to-int v0, v2

    return v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 8
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 947
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 948
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    const-wide/16 v4, 0x100

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    .line 949
    return-void
.end method

.method private greylist-max-o release(Ljava/util/concurrent/locks/StampedLock$WNode;)V
    .registers 8
    .param p1, "h"    # Ljava/util/concurrent/locks/StampedLock$WNode;

    .line 1011
    if-eqz p1, :cond_30

    .line 1013
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->WSTATUS:J

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    .line 1014
    iget-object v0, p1, Ljava/util/concurrent/locks/StampedLock$WNode;->next:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object v1, v0

    .local v1, "q":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v0, :cond_16

    iget v0, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_24

    .line 1015
    :cond_16
    iget-object v0, p0, Ljava/util/concurrent/locks/StampedLock;->wtail:Ljava/util/concurrent/locks/StampedLock$WNode;

    .local v0, "t":Ljava/util/concurrent/locks/StampedLock$WNode;
    :goto_18
    if-eqz v0, :cond_24

    if-eq v0, p1, :cond_24

    .line 1016
    iget v2, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    if-gtz v2, :cond_21

    .line 1017
    move-object v1, v0

    .line 1015
    :cond_21
    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    goto :goto_18

    .line 1019
    .end local v0    # "t":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_24
    if-eqz v1, :cond_30

    iget-object v0, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->thread:Ljava/lang/Thread;

    move-object v2, v0

    .local v2, "w":Ljava/lang/Thread;
    if-eqz v0, :cond_30

    .line 1020
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    .line 1022
    .end local v1    # "q":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v2    # "w":Ljava/lang/Thread;
    :cond_30
    return-void
.end method

.method private greylist-max-o tryDecReaderOverflow(J)J
    .registers 16
    .param p1, "s"    # J

    .line 984
    const-wide/16 v0, 0xff

    and-long/2addr v0, p1

    const-wide/16 v2, 0x7e

    cmp-long v0, v0, v2

    if-nez v0, :cond_34

    .line 985
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v9, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    const-wide/16 v1, 0x7f

    or-long v7, p1, v1

    move-object v1, v0

    move-object v2, p0

    move-wide v3, v9

    move-wide v5, p1

    invoke-virtual/range {v1 .. v8}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 987
    iget v1, p0, Ljava/util/concurrent/locks/StampedLock;->readerOverflow:I

    move v7, v1

    .local v7, "r":I
    if-lez v1, :cond_27

    .line 988
    add-int/lit8 v1, v7, -0x1

    iput v1, p0, Ljava/util/concurrent/locks/StampedLock;->readerOverflow:I

    .line 989
    move-wide v1, p1

    move-wide v11, v1

    .local v1, "next":J
    goto :goto_2c

    .line 992
    .end local v1    # "next":J
    :cond_27
    const-wide/16 v1, 0x1

    sub-long v1, p1, v1

    move-wide v11, v1

    .line 993
    .local v11, "next":J
    :goto_2c
    move-object v1, v0

    move-object v2, p0

    move-wide v3, v9

    move-wide v5, v11

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    .line 994
    return-wide v11

    .line 997
    .end local v7    # "r":I
    .end local v11    # "next":J
    :cond_34
    invoke-static {}, Ljava/util/concurrent/locks/LockSupport;->nextSecondarySeed()I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    if-nez v0, :cond_3f

    .line 999
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 1000
    :cond_3f
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private greylist-max-o tryIncReaderOverflow(J)J
    .registers 14
    .param p1, "s"    # J

    .line 963
    const-wide/16 v0, 0xff

    and-long/2addr v0, p1

    const-wide/16 v2, 0x7e

    cmp-long v0, v0, v2

    if-nez v0, :cond_29

    .line 964
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v9, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    const-wide/16 v1, 0x7f

    or-long v7, p1, v1

    move-object v1, v0

    move-object v2, p0

    move-wide v3, v9

    move-wide v5, p1

    invoke-virtual/range {v1 .. v8}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 965
    iget v1, p0, Ljava/util/concurrent/locks/StampedLock;->readerOverflow:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/concurrent/locks/StampedLock;->readerOverflow:I

    .line 966
    move-object v1, v0

    move-object v2, p0

    move-wide v3, v9

    move-wide v5, p1

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    .line 967
    return-wide p1

    .line 970
    :cond_29
    invoke-static {}, Ljava/util/concurrent/locks/LockSupport;->nextSecondarySeed()I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    if-nez v0, :cond_34

    .line 972
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 973
    :cond_34
    const-wide/16 v0, 0x0

    return-wide v0
.end method


# virtual methods
.method public whitelist test-api asReadLock()Ljava/util/concurrent/locks/Lock;
    .registers 3

    .line 843
    iget-object v0, p0, Ljava/util/concurrent/locks/StampedLock;->readLockView:Ljava/util/concurrent/locks/StampedLock$ReadLockView;

    move-object v1, v0

    .local v1, "v":Ljava/util/concurrent/locks/StampedLock$ReadLockView;
    if-eqz v0, :cond_7

    move-object v0, v1

    goto :goto_e

    .line 844
    :cond_7
    new-instance v0, Ljava/util/concurrent/locks/StampedLock$ReadLockView;

    invoke-direct {v0, p0}, Ljava/util/concurrent/locks/StampedLock$ReadLockView;-><init>(Ljava/util/concurrent/locks/StampedLock;)V

    iput-object v0, p0, Ljava/util/concurrent/locks/StampedLock;->readLockView:Ljava/util/concurrent/locks/StampedLock$ReadLockView;

    .line 843
    :goto_e
    return-object v0
.end method

.method public whitelist test-api asReadWriteLock()Ljava/util/concurrent/locks/ReadWriteLock;
    .registers 3

    .line 873
    iget-object v0, p0, Ljava/util/concurrent/locks/StampedLock;->readWriteLockView:Ljava/util/concurrent/locks/StampedLock$ReadWriteLockView;

    move-object v1, v0

    .local v1, "v":Ljava/util/concurrent/locks/StampedLock$ReadWriteLockView;
    if-eqz v0, :cond_7

    move-object v0, v1

    goto :goto_e

    .line 874
    :cond_7
    new-instance v0, Ljava/util/concurrent/locks/StampedLock$ReadWriteLockView;

    invoke-direct {v0, p0}, Ljava/util/concurrent/locks/StampedLock$ReadWriteLockView;-><init>(Ljava/util/concurrent/locks/StampedLock;)V

    iput-object v0, p0, Ljava/util/concurrent/locks/StampedLock;->readWriteLockView:Ljava/util/concurrent/locks/StampedLock$ReadWriteLockView;

    .line 873
    :goto_e
    return-object v0
.end method

.method public whitelist test-api asWriteLock()Ljava/util/concurrent/locks/Lock;
    .registers 3

    .line 859
    iget-object v0, p0, Ljava/util/concurrent/locks/StampedLock;->writeLockView:Ljava/util/concurrent/locks/StampedLock$WriteLockView;

    move-object v1, v0

    .local v1, "v":Ljava/util/concurrent/locks/StampedLock$WriteLockView;
    if-eqz v0, :cond_7

    move-object v0, v1

    goto :goto_e

    .line 860
    :cond_7
    new-instance v0, Ljava/util/concurrent/locks/StampedLock$WriteLockView;

    invoke-direct {v0, p0}, Ljava/util/concurrent/locks/StampedLock$WriteLockView;-><init>(Ljava/util/concurrent/locks/StampedLock;)V

    iput-object v0, p0, Ljava/util/concurrent/locks/StampedLock;->writeLockView:Ljava/util/concurrent/locks/StampedLock$WriteLockView;

    .line 859
    :goto_e
    return-object v0
.end method

.method public whitelist test-api getReadLockCount()I
    .registers 3

    .line 809
    iget-wide v0, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->getReadLockCount(J)I

    move-result v0

    return v0
.end method

.method public whitelist test-api isReadLocked()Z
    .registers 5

    .line 799
    iget-wide v0, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    const-wide/16 v2, 0x7f

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public whitelist test-api isWriteLocked()Z
    .registers 5

    .line 790
    iget-wide v0, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    const-wide/16 v2, 0x80

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public whitelist test-api readLock()J
    .registers 13

    .line 421
    iget-wide v8, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    .line 422
    .local v8, "s":J
    iget-object v0, p0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    iget-object v1, p0, Ljava/util/concurrent/locks/StampedLock;->wtail:Ljava/util/concurrent/locks/StampedLock$WNode;

    if-ne v0, v1, :cond_23

    const-wide/16 v0, 0xff

    and-long/2addr v0, v8

    const-wide/16 v2, 0x7e

    cmp-long v0, v0, v2

    if-gez v0, :cond_23

    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    const-wide/16 v4, 0x1

    add-long v6, v8, v4

    move-wide v10, v6

    .line 423
    .local v10, "next":J
    move-object v1, p0

    move-wide v4, v8

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 424
    goto :goto_2a

    .end local v10    # "next":J
    :cond_23
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Ljava/util/concurrent/locks/StampedLock;->acquireRead(ZJ)J

    move-result-wide v10

    .line 422
    :goto_2a
    return-wide v10
.end method

.method public whitelist test-api readLockInterruptibly()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 495
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    .line 496
    invoke-direct {p0, v0, v1, v2}, Ljava/util/concurrent/locks/StampedLock;->acquireRead(ZJ)J

    move-result-wide v0

    move-wide v2, v0

    .local v2, "next":J
    const-wide/16 v4, 0x1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_15

    .line 497
    return-wide v2

    .line 498
    .end local v2    # "next":J
    :cond_15
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 8

    .line 822
    iget-wide v0, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    .line 823
    .local v0, "s":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    const-wide/16 v3, 0xff

    and-long/2addr v3, v0

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1a

    const-string v3, "[Unlocked]"

    goto :goto_3e

    .line 825
    :cond_1a
    const-wide/16 v3, 0x80

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_24

    const-string v3, "[Write-locked]"

    goto :goto_3e

    .line 826
    :cond_24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Read-locks:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->getReadLockCount(J)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 823
    return-object v2
.end method

.method public whitelist test-api tryConvertToOptimisticRead(J)J
    .registers 26
    .param p1, "stamp"    # J

    .line 696
    move-object/from16 v8, p0

    const-wide/16 v9, 0xff

    and-long v11, p1, v9

    .line 697
    .local v11, "a":J
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    invoke-virtual {v0}, Lsun/misc/Unsafe;->loadFence()V

    .line 699
    :cond_b
    iget-wide v0, v8, Ljava/util/concurrent/locks/StampedLock;->state:J

    move-wide v13, v0

    .local v13, "s":J
    const-wide/16 v15, -0x80

    and-long/2addr v0, v15

    and-long v2, p1, v15

    cmp-long v0, v0, v2

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1b

    .line 700
    goto/16 :goto_9b

    .line 701
    :cond_1b
    and-long v3, v13, v9

    move-wide/from16 v17, v3

    .local v17, "m":J
    cmp-long v0, v3, v1

    if-nez v0, :cond_2a

    .line 702
    cmp-long v0, v11, v1

    if-eqz v0, :cond_29

    .line 703
    goto/16 :goto_9b

    .line 704
    :cond_29
    return-wide v13

    .line 706
    :cond_2a
    const-wide/16 v3, 0x80

    cmp-long v0, v17, v3

    if-nez v0, :cond_5a

    .line 707
    cmp-long v0, v11, v17

    if-eqz v0, :cond_36

    .line 708
    goto/16 :goto_9b

    .line 709
    :cond_36
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v5, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    .line 710
    add-long/2addr v3, v13

    move-wide v9, v3

    .end local v13    # "s":J
    .local v9, "s":J
    cmp-long v1, v3, v1

    if-nez v1, :cond_44

    const-wide/16 v1, 0x100

    move-wide v13, v1

    goto :goto_45

    :cond_44
    move-wide v13, v9

    :goto_45
    move-wide v15, v13

    .line 709
    .local v15, "next":J
    move-object/from16 v1, p0

    move-wide v2, v5

    move-wide v4, v13

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    .line 711
    iget-object v0, v8, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object v1, v0

    .local v1, "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v0, :cond_59

    iget v0, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    if-eqz v0, :cond_59

    .line 712
    invoke-direct {v8, v1}, Ljava/util/concurrent/locks/StampedLock;->release(Ljava/util/concurrent/locks/StampedLock$WNode;)V

    .line 713
    :cond_59
    return-wide v15

    .line 715
    .end local v1    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v9    # "s":J
    .end local v15    # "next":J
    .restart local v13    # "s":J
    :cond_5a
    cmp-long v0, v11, v1

    if-eqz v0, :cond_9b

    cmp-long v0, v11, v3

    if-ltz v0, :cond_63

    .line 716
    goto :goto_9b

    .line 717
    :cond_63
    const-wide/16 v3, 0x7e

    cmp-long v0, v17, v3

    if-gez v0, :cond_8f

    .line 718
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    const-wide/16 v19, 0x1

    sub-long v6, v13, v19

    move-wide/from16 v21, v6

    .local v21, "next":J
    move-object/from16 v1, p0

    move-wide v4, v13

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 719
    cmp-long v0, v17, v19

    if-nez v0, :cond_8c

    iget-object v0, v8, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object v1, v0

    .restart local v1    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v0, :cond_8c

    iget v0, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    if-eqz v0, :cond_8c

    .line 720
    invoke-direct {v8, v1}, Ljava/util/concurrent/locks/StampedLock;->release(Ljava/util/concurrent/locks/StampedLock$WNode;)V

    .line 721
    .end local v1    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_8c
    and-long v0, v21, v15

    return-wide v0

    .line 724
    .end local v21    # "next":J
    :cond_8f
    invoke-direct {v8, v13, v14}, Ljava/util/concurrent/locks/StampedLock;->tryDecReaderOverflow(J)J

    move-result-wide v3

    move-wide v5, v3

    .local v5, "next":J
    cmp-long v0, v3, v1

    if-eqz v0, :cond_b

    .line 725
    and-long v0, v5, v15

    return-wide v0

    .line 727
    .end local v5    # "next":J
    .end local v17    # "m":J
    :cond_9b
    :goto_9b
    return-wide v1
.end method

.method public whitelist test-api tryConvertToReadLock(J)J
    .registers 22
    .param p1, "stamp"    # J

    .line 657
    move-object/from16 v8, p0

    const-wide/16 v9, 0xff

    and-long v11, p1, v9

    .line 658
    .local v11, "a":J
    :cond_6
    iget-wide v0, v8, Ljava/util/concurrent/locks/StampedLock;->state:J

    move-wide v13, v0

    .local v13, "s":J
    const-wide/16 v2, -0x80

    and-long/2addr v0, v2

    and-long v2, p1, v2

    cmp-long v0, v0, v2

    const-wide/16 v1, 0x0

    if-nez v0, :cond_72

    .line 659
    and-long v3, v13, v9

    move-wide v15, v3

    .local v15, "m":J
    cmp-long v0, v3, v1

    if-nez v0, :cond_44

    .line 660
    cmp-long v0, v11, v1

    if-eqz v0, :cond_20

    .line 661
    goto :goto_72

    .line 662
    :cond_20
    const-wide/16 v3, 0x7e

    cmp-long v0, v15, v3

    if-gez v0, :cond_3a

    .line 663
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    const-wide/16 v4, 0x1

    add-long v6, v13, v4

    move-wide/from16 v17, v6

    .local v17, "next":J
    move-object/from16 v1, p0

    move-wide v4, v13

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 664
    return-wide v17

    .line 666
    .end local v17    # "next":J
    :cond_3a
    invoke-direct {v8, v13, v14}, Ljava/util/concurrent/locks/StampedLock;->tryIncReaderOverflow(J)J

    move-result-wide v3

    move-wide v5, v3

    .local v5, "next":J
    cmp-long v0, v3, v1

    if-eqz v0, :cond_6

    .line 667
    return-wide v5

    .line 669
    .end local v5    # "next":J
    :cond_44
    const-wide/16 v3, 0x80

    cmp-long v0, v15, v3

    if-nez v0, :cond_69

    .line 670
    cmp-long v0, v11, v15

    if-eqz v0, :cond_4f

    .line 671
    goto :goto_72

    .line 672
    :cond_4f
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    const-wide/16 v4, 0x81

    add-long/2addr v4, v13

    move-wide v6, v4

    .local v6, "next":J
    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    .line 673
    iget-object v0, v8, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object v1, v0

    .local v1, "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v0, :cond_68

    iget v0, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    if-eqz v0, :cond_68

    .line 674
    invoke-direct {v8, v1}, Ljava/util/concurrent/locks/StampedLock;->release(Ljava/util/concurrent/locks/StampedLock$WNode;)V

    .line 675
    :cond_68
    return-wide v6

    .line 677
    .end local v1    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v6    # "next":J
    :cond_69
    cmp-long v0, v11, v1

    if-eqz v0, :cond_72

    cmp-long v0, v11, v3

    if-gez v0, :cond_72

    .line 678
    return-wide p1

    .line 682
    .end local v15    # "m":J
    :cond_72
    :goto_72
    return-wide v1
.end method

.method public whitelist test-api tryConvertToWriteLock(J)J
    .registers 24
    .param p1, "stamp"    # J

    .line 621
    const-wide/16 v0, 0xff

    and-long v2, p1, v0

    .line 622
    .local v2, "a":J
    :cond_4
    move-object/from16 v12, p0

    iget-wide v4, v12, Ljava/util/concurrent/locks/StampedLock;->state:J

    move-wide v13, v4

    .local v13, "s":J
    const-wide/16 v6, -0x80

    and-long/2addr v4, v6

    and-long v6, p1, v6

    cmp-long v4, v4, v6

    const-wide/16 v5, 0x0

    if-nez v4, :cond_61

    .line 623
    and-long v7, v13, v0

    move-wide v15, v7

    .local v15, "m":J
    cmp-long v4, v7, v5

    const-wide/16 v7, 0x80

    if-nez v4, :cond_37

    .line 624
    cmp-long v4, v2, v5

    if-eqz v4, :cond_22

    .line 625
    goto :goto_61

    .line 626
    :cond_22
    sget-object v4, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v9, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    add-long v17, v13, v7

    move-wide/from16 v19, v17

    .local v19, "next":J
    move-object/from16 v5, p0

    move-wide v6, v9

    move-wide v8, v13

    move-wide/from16 v10, v17

    invoke-virtual/range {v4 .. v11}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 627
    return-wide v19

    .line 629
    .end local v19    # "next":J
    :cond_37
    cmp-long v4, v15, v7

    if-nez v4, :cond_41

    .line 630
    cmp-long v0, v2, v15

    if-eqz v0, :cond_40

    .line 631
    goto :goto_61

    .line 632
    :cond_40
    return-wide p1

    .line 634
    :cond_41
    const-wide/16 v9, 0x1

    cmp-long v4, v15, v9

    if-nez v4, :cond_61

    cmp-long v4, v2, v5

    if-eqz v4, :cond_61

    .line 635
    sget-object v4, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v17, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    sub-long v5, v13, v9

    add-long v10, v5, v7

    move-wide/from16 v19, v10

    .restart local v19    # "next":J
    move-object/from16 v5, p0

    move-wide/from16 v6, v17

    move-wide v8, v13

    invoke-virtual/range {v4 .. v11}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 637
    return-wide v19

    .line 642
    .end local v15    # "m":J
    .end local v19    # "next":J
    :cond_61
    :goto_61
    return-wide v5
.end method

.method public whitelist test-api tryOptimisticRead()J
    .registers 7

    .line 509
    iget-wide v0, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    move-wide v2, v0

    .local v2, "s":J
    const-wide/16 v4, 0x80

    and-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_10

    const-wide/16 v0, -0x80

    and-long v4, v2, v0

    :cond_10
    return-wide v4
.end method

.method public whitelist test-api tryReadLock()J
    .registers 15

    .line 436
    :goto_0
    iget-wide v0, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    move-wide v10, v0

    .local v10, "s":J
    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    move-wide v12, v0

    .local v12, "m":J
    const-wide/16 v2, 0x80

    cmp-long v0, v0, v2

    const-wide/16 v1, 0x0

    if-nez v0, :cond_10

    .line 437
    return-wide v1

    .line 438
    :cond_10
    const-wide/16 v3, 0x7e

    cmp-long v0, v12, v3

    if-gez v0, :cond_28

    .line 439
    sget-object v2, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    const-wide/16 v0, 0x1

    add-long v8, v10, v0

    move-wide v0, v8

    .local v0, "next":J
    move-object v3, p0

    move-wide v6, v10

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 440
    return-wide v0

    .line 442
    .end local v0    # "next":J
    :cond_28
    invoke-direct {p0, v10, v11}, Ljava/util/concurrent/locks/StampedLock;->tryIncReaderOverflow(J)J

    move-result-wide v3

    move-wide v5, v3

    .local v5, "next":J
    cmp-long v0, v3, v1

    if-eqz v0, :cond_32

    .line 443
    return-wide v5

    .line 444
    .end local v5    # "next":J
    .end local v10    # "s":J
    .end local v12    # "m":J
    :cond_32
    goto :goto_0
.end method

.method public whitelist test-api tryReadLock(JLjava/util/concurrent/TimeUnit;)J
    .registers 28
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 463
    move-object/from16 v8, p0

    move-wide/from16 v9, p1

    move-object/from16 v11, p3

    invoke-virtual {v11, v9, v10}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v12

    .line 464
    .local v12, "nanos":J
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_60

    .line 465
    iget-wide v0, v8, Ljava/util/concurrent/locks/StampedLock;->state:J

    move-wide v14, v0

    .local v14, "s":J
    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    move-wide/from16 v16, v0

    .local v16, "m":J
    const-wide/16 v2, 0x80

    cmp-long v0, v0, v2

    const-wide/16 v18, 0x1

    const-wide/16 v20, 0x0

    if-eqz v0, :cond_44

    .line 466
    const-wide/16 v0, 0x7e

    cmp-long v0, v16, v0

    if-gez v0, :cond_3a

    .line 467
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    add-long v6, v14, v18

    move-wide/from16 v22, v6

    .local v22, "next":J
    move-object/from16 v1, p0

    move-wide v4, v14

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 468
    return-wide v22

    .line 470
    .end local v22    # "next":J
    :cond_3a
    invoke-direct {v8, v14, v15}, Ljava/util/concurrent/locks/StampedLock;->tryIncReaderOverflow(J)J

    move-result-wide v0

    move-wide v2, v0

    .local v2, "next":J
    cmp-long v0, v0, v20

    if-eqz v0, :cond_44

    .line 471
    return-wide v2

    .line 473
    .end local v2    # "next":J
    :cond_44
    cmp-long v0, v12, v20

    if-gtz v0, :cond_49

    .line 474
    return-wide v20

    .line 475
    :cond_49
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    add-long/2addr v0, v12

    move-wide v2, v0

    .local v2, "deadline":J
    cmp-long v0, v0, v20

    if-nez v0, :cond_55

    .line 476
    const-wide/16 v2, 0x1

    .line 477
    :cond_55
    const/4 v0, 0x1

    invoke-direct {v8, v0, v2, v3}, Ljava/util/concurrent/locks/StampedLock;->acquireRead(ZJ)J

    move-result-wide v0

    move-wide v4, v0

    .local v4, "next":J
    cmp-long v0, v0, v18

    if-eqz v0, :cond_60

    .line 478
    return-wide v4

    .line 480
    .end local v2    # "deadline":J
    .end local v4    # "next":J
    .end local v14    # "s":J
    .end local v16    # "m":J
    :cond_60
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public whitelist test-api tryUnlockRead()Z
    .registers 17

    move-object/from16 v8, p0

    .line 757
    :cond_2
    iget-wide v0, v8, Ljava/util/concurrent/locks/StampedLock;->state:J

    move-wide v9, v0

    .local v9, "s":J
    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    move-wide v11, v0

    .local v11, "m":J
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_47

    const-wide/16 v0, 0x80

    cmp-long v0, v11, v0

    if-gez v0, :cond_47

    .line 758
    const-wide/16 v0, 0x7e

    cmp-long v0, v11, v0

    const/4 v13, 0x1

    if-gez v0, :cond_3e

    .line 759
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    const-wide/16 v14, 0x1

    sub-long v6, v9, v14

    move-object/from16 v1, p0

    move-wide v4, v9

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 760
    cmp-long v0, v11, v14

    if-nez v0, :cond_3d

    iget-object v0, v8, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object v1, v0

    .local v1, "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v0, :cond_3d

    iget v0, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    if-eqz v0, :cond_3d

    .line 761
    invoke-direct {v8, v1}, Ljava/util/concurrent/locks/StampedLock;->release(Ljava/util/concurrent/locks/StampedLock$WNode;)V

    .line 762
    .end local v1    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_3d
    return v13

    .line 765
    :cond_3e
    invoke-direct {v8, v9, v10}, Ljava/util/concurrent/locks/StampedLock;->tryDecReaderOverflow(J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 766
    return v13

    .line 768
    :cond_47
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api tryUnlockWrite()Z
    .registers 15

    .line 739
    iget-wide v0, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    move-wide v2, v0

    .local v2, "s":J
    const-wide/16 v4, 0x80

    and-long/2addr v0, v4

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_2d

    .line 740
    sget-object v8, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v10, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    add-long/2addr v4, v2

    move-wide v0, v4

    .end local v2    # "s":J
    .local v0, "s":J
    cmp-long v2, v4, v6

    if-nez v2, :cond_1a

    const-wide/16 v2, 0x100

    move-wide v12, v2

    goto :goto_1b

    :cond_1a
    move-wide v12, v0

    :goto_1b
    move-object v9, p0

    invoke-virtual/range {v8 .. v13}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    .line 741
    iget-object v2, p0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object v3, v2

    .local v3, "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v2, :cond_2b

    iget v2, v3, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    if-eqz v2, :cond_2b

    .line 742
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/StampedLock;->release(Ljava/util/concurrent/locks/StampedLock$WNode;)V

    .line 743
    :cond_2b
    const/4 v2, 0x1

    return v2

    .line 745
    .end local v0    # "s":J
    .end local v3    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v2    # "s":J
    :cond_2d
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api tryWriteLock()J
    .registers 15

    .line 361
    iget-wide v0, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    move-wide v10, v0

    .local v10, "s":J
    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const-wide/16 v12, 0x0

    cmp-long v0, v0, v12

    if-nez v0, :cond_1f

    sget-object v2, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    const-wide/16 v0, 0x80

    add-long v8, v10, v0

    move-wide v0, v8

    .line 362
    .local v0, "next":J
    move-object v3, p0

    move-wide v6, v10

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 363
    move-wide v12, v0

    goto :goto_20

    .end local v0    # "next":J
    :cond_1f
    nop

    .line 361
    :goto_20
    return-wide v12
.end method

.method public whitelist test-api tryWriteLock(JLjava/util/concurrent/TimeUnit;)J
    .registers 14
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 381
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 382
    .local v0, "nanos":J
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_34

    .line 384
    invoke-virtual {p0}, Ljava/util/concurrent/locks/StampedLock;->tryWriteLock()J

    move-result-wide v2

    move-wide v4, v2

    .local v4, "next":J
    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_16

    .line 385
    return-wide v4

    .line 386
    :cond_16
    cmp-long v2, v0, v6

    if-gtz v2, :cond_1b

    .line 387
    return-wide v6

    .line 388
    :cond_1b
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    add-long/2addr v2, v0

    move-wide v8, v2

    .local v8, "deadline":J
    cmp-long v2, v2, v6

    if-nez v2, :cond_27

    .line 389
    const-wide/16 v8, 0x1

    .line 390
    :cond_27
    const/4 v2, 0x1

    invoke-direct {p0, v2, v8, v9}, Ljava/util/concurrent/locks/StampedLock;->acquireWrite(ZJ)J

    move-result-wide v2

    move-wide v4, v2

    const-wide/16 v6, 0x1

    cmp-long v2, v2, v6

    if-eqz v2, :cond_34

    .line 391
    return-wide v4

    .line 393
    .end local v4    # "next":J
    .end local v8    # "deadline":J
    :cond_34
    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2
.end method

.method public whitelist test-api unlock(J)V
    .registers 22
    .param p1, "stamp"    # J

    .line 581
    move-object/from16 v8, p0

    const-wide/16 v9, 0xff

    and-long v11, p1, v9

    .line 582
    .local v11, "a":J
    :cond_6
    iget-wide v0, v8, Ljava/util/concurrent/locks/StampedLock;->state:J

    move-wide v13, v0

    .local v13, "s":J
    const-wide/16 v2, -0x80

    and-long/2addr v0, v2

    and-long v2, p1, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_84

    .line 583
    and-long v0, v13, v9

    move-wide v15, v0

    .local v15, "m":J
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_84

    .line 585
    const-wide/16 v0, 0x80

    cmp-long v4, v15, v0

    if-nez v4, :cond_4a

    .line 586
    cmp-long v4, v11, v15

    if-nez v4, :cond_49

    .line 588
    sget-object v4, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v5, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    add-long/2addr v0, v13

    move-wide v9, v0

    .end local v13    # "s":J
    .local v9, "s":J
    cmp-long v0, v0, v2

    if-nez v0, :cond_33

    const-wide/16 v0, 0x100

    move-wide v13, v0

    goto :goto_34

    :cond_33
    move-wide v13, v9

    :goto_34
    move-object v0, v4

    move-object/from16 v1, p0

    move-wide v2, v5

    move-wide v4, v13

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    .line 589
    iget-object v0, v8, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object v1, v0

    .local v1, "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v0, :cond_48

    iget v0, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    if-eqz v0, :cond_48

    .line 590
    invoke-direct {v8, v1}, Ljava/util/concurrent/locks/StampedLock;->release(Ljava/util/concurrent/locks/StampedLock$WNode;)V

    .line 591
    :cond_48
    return-void

    .line 587
    .end local v1    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v9    # "s":J
    .restart local v13    # "s":J
    :cond_49
    goto :goto_84

    .line 593
    :cond_4a
    cmp-long v4, v11, v2

    if-eqz v4, :cond_84

    cmp-long v0, v11, v0

    if-gez v0, :cond_83

    .line 595
    const-wide/16 v0, 0x7e

    cmp-long v0, v15, v0

    if-gez v0, :cond_7a

    .line 596
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    const-wide/16 v17, 0x1

    sub-long v6, v13, v17

    move-object/from16 v1, p0

    move-wide v4, v13

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 597
    cmp-long v0, v15, v17

    if-nez v0, :cond_79

    iget-object v0, v8, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object v1, v0

    .restart local v1    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v0, :cond_79

    iget v0, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    if-eqz v0, :cond_79

    .line 598
    invoke-direct {v8, v1}, Ljava/util/concurrent/locks/StampedLock;->release(Ljava/util/concurrent/locks/StampedLock$WNode;)V

    .line 599
    .end local v1    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_79
    return-void

    .line 602
    :cond_7a
    invoke-direct {v8, v13, v14}, Ljava/util/concurrent/locks/StampedLock;->tryDecReaderOverflow(J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    .line 603
    return-void

    .line 594
    :cond_83
    nop

    .line 605
    .end local v15    # "m":J
    :cond_84
    :goto_84
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method public whitelist test-api unlockRead(J)V
    .registers 18
    .param p1, "stamp"    # J

    move-object v8, p0

    .line 557
    :cond_1
    iget-wide v0, v8, Ljava/util/concurrent/locks/StampedLock;->state:J

    move-wide v9, v0

    .local v9, "s":J
    const-wide/16 v2, -0x80

    and-long/2addr v0, v2

    and-long v2, p1, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_54

    const-wide/16 v0, 0xff

    and-long v2, p1, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_54

    and-long/2addr v0, v9

    move-wide v11, v0

    .local v11, "m":J
    cmp-long v0, v0, v4

    if-eqz v0, :cond_54

    const-wide/16 v0, 0x80

    cmp-long v0, v11, v0

    if-eqz v0, :cond_54

    .line 560
    const-wide/16 v0, 0x7e

    cmp-long v0, v11, v0

    if-gez v0, :cond_4a

    .line 561
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    const-wide/16 v13, 0x1

    sub-long v6, v9, v13

    move-object v1, p0

    move-wide v4, v9

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 562
    cmp-long v0, v11, v13

    if-nez v0, :cond_53

    iget-object v0, v8, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object v1, v0

    .local v1, "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v0, :cond_53

    iget v0, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    if-eqz v0, :cond_53

    .line 563
    invoke-direct {p0, v1}, Ljava/util/concurrent/locks/StampedLock;->release(Ljava/util/concurrent/locks/StampedLock$WNode;)V

    goto :goto_53

    .line 567
    .end local v1    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_4a
    invoke-direct {p0, v9, v10}, Ljava/util/concurrent/locks/StampedLock;->tryDecReaderOverflow(J)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 568
    nop

    .line 570
    :cond_53
    :goto_53
    return-void

    .line 559
    .end local v11    # "m":J
    :cond_54
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method public whitelist test-api unlockWrite(J)V
    .registers 15
    .param p1, "stamp"    # J

    .line 539
    iget-wide v0, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_30

    const-wide/16 v0, 0x80

    and-long v2, p1, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_30

    .line 541
    sget-object v6, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v8, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    add-long/2addr v0, p1

    move-wide p1, v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_1e

    const-wide/16 v0, 0x100

    move-wide v10, v0

    goto :goto_1f

    :cond_1e
    move-wide v10, p1

    :goto_1f
    move-object v7, p0

    invoke-virtual/range {v6 .. v11}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    .line 542
    iget-object v0, p0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object v1, v0

    .local v1, "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v0, :cond_2f

    iget v0, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    if-eqz v0, :cond_2f

    .line 543
    invoke-direct {p0, v1}, Ljava/util/concurrent/locks/StampedLock;->release(Ljava/util/concurrent/locks/StampedLock$WNode;)V

    .line 544
    :cond_2f
    return-void

    .line 540
    .end local v1    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_30
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method final greylist-max-o unstampedUnlockRead()V
    .registers 15

    .line 931
    :goto_0
    iget-wide v0, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    move-wide v10, v0

    .local v10, "s":J
    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    move-wide v12, v0

    .local v12, "m":J
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_45

    const-wide/16 v0, 0x80

    cmp-long v0, v12, v0

    if-gez v0, :cond_45

    .line 933
    const-wide/16 v0, 0x7e

    cmp-long v0, v12, v0

    if-gez v0, :cond_3a

    .line 934
    sget-object v2, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    const-wide/16 v0, 0x1

    sub-long v8, v10, v0

    move-object v3, p0

    move-wide v6, v10

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 935
    cmp-long v0, v12, v0

    if-nez v0, :cond_43

    iget-object v0, p0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object v1, v0

    .local v1, "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v0, :cond_43

    iget v0, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    if-eqz v0, :cond_43

    .line 936
    invoke-direct {p0, v1}, Ljava/util/concurrent/locks/StampedLock;->release(Ljava/util/concurrent/locks/StampedLock$WNode;)V

    goto :goto_43

    .line 940
    .end local v1    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_3a
    invoke-direct {p0, v10, v11}, Ljava/util/concurrent/locks/StampedLock;->tryDecReaderOverflow(J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_44

    .line 941
    nop

    .line 943
    .end local v10    # "s":J
    .end local v12    # "m":J
    :cond_43
    :goto_43
    return-void

    .line 942
    :cond_44
    goto :goto_0

    .line 932
    .restart local v10    # "s":J
    .restart local v12    # "m":J
    :cond_45
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method final greylist-max-o unstampedUnlockWrite()V
    .registers 15

    .line 921
    iget-wide v0, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    move-wide v2, v0

    .local v2, "s":J
    const-wide/16 v4, 0x80

    and-long/2addr v0, v4

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_2c

    .line 923
    sget-object v8, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v10, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    add-long/2addr v4, v2

    move-wide v0, v4

    .end local v2    # "s":J
    .local v0, "s":J
    cmp-long v2, v4, v6

    if-nez v2, :cond_1a

    const-wide/16 v2, 0x100

    move-wide v12, v2

    goto :goto_1b

    :cond_1a
    move-wide v12, v0

    :goto_1b
    move-object v9, p0

    invoke-virtual/range {v8 .. v13}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    .line 924
    iget-object v2, p0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object v3, v2

    .local v3, "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v2, :cond_2b

    iget v2, v3, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    if-eqz v2, :cond_2b

    .line 925
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/StampedLock;->release(Ljava/util/concurrent/locks/StampedLock$WNode;)V

    .line 926
    :cond_2b
    return-void

    .line 922
    .end local v0    # "s":J
    .end local v3    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v2    # "s":J
    :cond_2c
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method public whitelist test-api validate(J)Z
    .registers 9
    .param p1, "stamp"    # J

    .line 525
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    invoke-virtual {v0}, Lsun/misc/Unsafe;->loadFence()V

    .line 526
    const-wide/16 v0, -0x80

    and-long v2, p1, v0

    iget-wide v4, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    and-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public whitelist test-api writeLock()J
    .registers 15

    .line 348
    iget-wide v0, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    move-wide v10, v0

    .local v10, "s":J
    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const-wide/16 v12, 0x0

    cmp-long v0, v0, v12

    if-nez v0, :cond_1e

    sget-object v2, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    const-wide/16 v0, 0x80

    add-long v8, v10, v0

    move-wide v0, v8

    .line 349
    .local v0, "next":J
    move-object v3, p0

    move-wide v6, v10

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 350
    goto :goto_23

    .end local v0    # "next":J
    :cond_1e
    const/4 v0, 0x0

    invoke-direct {p0, v0, v12, v13}, Ljava/util/concurrent/locks/StampedLock;->acquireWrite(ZJ)J

    move-result-wide v0

    .line 348
    :goto_23
    return-wide v0
.end method

.method public whitelist test-api writeLockInterruptibly()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 408
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    .line 409
    invoke-direct {p0, v0, v1, v2}, Ljava/util/concurrent/locks/StampedLock;->acquireWrite(ZJ)J

    move-result-wide v0

    move-wide v2, v0

    .local v2, "next":J
    const-wide/16 v4, 0x1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_15

    .line 410
    return-wide v2

    .line 411
    .end local v2    # "next":J
    :cond_15
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method
