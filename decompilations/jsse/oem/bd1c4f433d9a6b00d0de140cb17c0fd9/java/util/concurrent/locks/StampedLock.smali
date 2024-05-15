.class public Ljava/util/concurrent/locks/StampedLock;
.super Ljava/lang/Object;
.source "StampedLock.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/locks/StampedLock$ReadLockView;,
        Ljava/util/concurrent/locks/StampedLock$ReadWriteLockView;,
        Ljava/util/concurrent/locks/StampedLock$WNode;,
        Ljava/util/concurrent/locks/StampedLock$WriteLockView;
    }
.end annotation


# static fields
.field private static final ABITS:J = 0xffL

.field private static final CANCELLED:I = 0x1

.field private static final HEAD_SPINS:I

.field private static final INTERRUPTED:J = 0x1L

.field private static final LG_READERS:I = 0x7

.field private static final MAX_HEAD_SPINS:I

.field private static final NCPU:I

.field private static final ORIGIN:J = 0x100L

.field private static final OVERFLOW_YIELD_RATE:I = 0x7

.field private static final PARKBLOCKER:J

.field private static final RBITS:J = 0x7fL

.field private static final RFULL:J = 0x7eL

.field private static final RMODE:I = 0x0

.field private static final RUNIT:J = 0x1L

.field private static final SBITS:J = -0x80L

.field private static final SPINS:I

.field private static final STATE:J

.field private static final U:Lsun/misc/Unsafe;

.field private static final WAITING:I = -0x1

.field private static final WBIT:J = 0x80L

.field private static final WCOWAIT:J

.field private static final WHEAD:J

.field private static final WMODE:I = 0x1

.field private static final WNEXT:J

.field private static final WSTATUS:J

.field private static final WTAIL:J

.field private static final serialVersionUID:J = -0x5349f9cce5385003L


# instance fields
.field transient readLockView:Ljava/util/concurrent/locks/StampedLock$ReadLockView;

.field transient readWriteLockView:Ljava/util/concurrent/locks/StampedLock$ReadWriteLockView;

.field private transient readerOverflow:I

.field private volatile transient state:J

.field private volatile transient whead:Ljava/util/concurrent/locks/StampedLock$WNode;

.field transient writeLockView:Ljava/util/concurrent/locks/StampedLock$WriteLockView;

.field private volatile transient wtail:Ljava/util/concurrent/locks/StampedLock$WNode;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 268
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    sput v1, Ljava/util/concurrent/locks/StampedLock;->NCPU:I

    .line 271
    sget v1, Ljava/util/concurrent/locks/StampedLock;->NCPU:I

    if-le v1, v3, :cond_a2

    const/16 v1, 0x40

    :goto_12
    sput v1, Ljava/util/concurrent/locks/StampedLock;->SPINS:I

    .line 274
    sget v1, Ljava/util/concurrent/locks/StampedLock;->NCPU:I

    if-le v1, v3, :cond_a5

    const/16 v1, 0x400

    :goto_1a
    sput v1, Ljava/util/concurrent/locks/StampedLock;->HEAD_SPINS:I

    .line 277
    sget v1, Ljava/util/concurrent/locks/StampedLock;->NCPU:I

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
    sget-object v1, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    .line 1413
    const-class v2, Ljava/util/concurrent/locks/StampedLock;

    const-string/jumbo v3, "state"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1412
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    .line 1414
    sget-object v1, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    .line 1415
    const-class v2, Ljava/util/concurrent/locks/StampedLock;

    const-string/jumbo v3, "whead"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1414
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/locks/StampedLock;->WHEAD:J

    .line 1416
    sget-object v1, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    .line 1417
    const-class v2, Ljava/util/concurrent/locks/StampedLock;

    const-string/jumbo v3, "wtail"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1416
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/locks/StampedLock;->WTAIL:J

    .line 1419
    sget-object v1, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    .line 1420
    const-class v2, Ljava/util/concurrent/locks/StampedLock$WNode;

    const-string/jumbo v3, "status"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1419
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/locks/StampedLock;->WSTATUS:J

    .line 1421
    sget-object v1, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    .line 1422
    const-class v2, Ljava/util/concurrent/locks/StampedLock$WNode;

    const-string/jumbo v3, "next"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1421
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/locks/StampedLock;->WNEXT:J

    .line 1423
    sget-object v1, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    .line 1424
    const-class v2, Ljava/util/concurrent/locks/StampedLock$WNode;

    const-string/jumbo v3, "cowait"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1423
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/locks/StampedLock;->WCOWAIT:J

    .line 1426
    sget-object v1, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    .line 1427
    const-class v2, Ljava/lang/Thread;

    const-string/jumbo v3, "parkBlocker"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1426
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/locks/StampedLock;->PARKBLOCKER:J
    :try_end_a1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_2a .. :try_end_a1} :catch_a8

    .line 187
    return-void

    :cond_a2
    move v1, v2

    .line 271
    goto/16 :goto_12

    :cond_a5
    move v1, v2

    .line 274
    goto/16 :goto_1a

    .line 1428
    :catch_a8
    move-exception v0

    .line 1429
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    const-wide/16 v0, 0x100

    iput-wide v0, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    .line 338
    return-void
.end method

.method private acquireRead(ZJ)J
    .registers 54
    .param p1, "interruptible"    # Z
    .param p2, "deadline"    # J

    .prologue
    .line 1142
    const/16 v48, 0x0

    .line 1143
    .local v48, "wasInterrupted":Z
    const/16 v23, 0x0

    .line 1144
    .local v23, "node":Ljava/util/concurrent/locks/StampedLock$WNode;
    const/16 v44, -0x1

    .line 1146
    .end local v23    # "node":Ljava/util/concurrent/locks/StampedLock$WNode;
    .local v44, "spins":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v25, v0

    .local v25, "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock;->wtail:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v22, v0

    .local v22, "p":Ljava/util/concurrent/locks/StampedLock$WNode;
    move-object/from16 v0, v25

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_3f7

    .line 1148
    :cond_18
    :goto_18
    move-object/from16 v0, p0

    iget-wide v8, v0, Ljava/util/concurrent/locks/StampedLock;->state:J

    .local v8, "s":J
    const-wide/16 v4, 0xff

    and-long v38, v8, v4

    .local v38, "m":J
    const-wide/16 v4, 0x7e

    cmp-long v4, v38, v4

    if-gez v4, :cond_40

    .line 1149
    sget-object v4, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v6, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    const-wide/16 v12, 0x1

    add-long v10, v8, v12

    .local v10, "ns":J
    move-object/from16 v5, p0

    invoke-virtual/range {v4 .. v11}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v4

    .line 1148
    if-eqz v4, :cond_52

    .line 1151
    :cond_36
    if-eqz v48, :cond_3f

    .line 1152
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 1153
    :cond_3f
    return-wide v10

    .line 1150
    .end local v10    # "ns":J
    :cond_40
    const-wide/16 v4, 0x80

    cmp-long v4, v38, v4

    if-gez v4, :cond_52

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Ljava/util/concurrent/locks/StampedLock;->tryIncReaderOverflow(J)J

    move-result-wide v10

    .restart local v10    # "ns":J
    const-wide/16 v4, 0x0

    cmp-long v4, v10, v4

    if-nez v4, :cond_36

    .line 1155
    .end local v10    # "ns":J
    :cond_52
    const-wide/16 v4, 0x80

    cmp-long v4, v38, v4

    if-ltz v4, :cond_18

    .line 1156
    if-lez v44, :cond_63

    .line 1157
    invoke-static {}, Ljava/util/concurrent/locks/LockSupport;->nextSecondarySeed()I

    move-result v4

    if-ltz v4, :cond_18

    .line 1158
    add-int/lit8 v44, v44, -0x1

    goto :goto_18

    .line 1161
    :cond_63
    if-nez v44, :cond_ac

    .line 1162
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v40, v0

    .local v40, "nh":Ljava/util/concurrent/locks/StampedLock$WNode;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock;->wtail:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v41, v0

    .line 1163
    .local v41, "np":Ljava/util/concurrent/locks/StampedLock$WNode;
    move-object/from16 v0, v40

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_a2

    move-object/from16 v0, v41

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_a2

    :cond_7d
    move-object/from16 v36, v25

    .line 1171
    .end local v8    # "s":J
    .end local v25    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v38    # "m":J
    .end local v40    # "nh":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v41    # "np":Ljava/util/concurrent/locks/StampedLock$WNode;
    .local v36, "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    :goto_7f
    if-nez v22, :cond_b0

    .line 1172
    new-instance v17, Ljava/util/concurrent/locks/StampedLock$WNode;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v4, v5}, Ljava/util/concurrent/locks/StampedLock$WNode;-><init>(ILjava/util/concurrent/locks/StampedLock$WNode;)V

    .line 1173
    .local v17, "hd":Ljava/util/concurrent/locks/StampedLock$WNode;
    sget-object v12, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v14, Ljava/util/concurrent/locks/StampedLock;->WHEAD:J

    const/16 v16, 0x0

    move-object/from16 v13, p0

    invoke-virtual/range {v12 .. v17}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f3

    .line 1174
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/concurrent/locks/StampedLock;->wtail:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v25, v36

    .end local v36    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v25    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    goto/16 :goto_6

    .line 1163
    .end local v17    # "hd":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v8    # "s":J
    .restart local v38    # "m":J
    .restart local v40    # "nh":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v41    # "np":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_a2
    move-object/from16 v25, v40

    move-object/from16 v22, v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    if-ne v0, v1, :cond_7d

    .line 1166
    .end local v40    # "nh":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v41    # "np":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_ac
    sget v44, Ljava/util/concurrent/locks/StampedLock;->SPINS:I

    goto/16 :goto_18

    .line 1176
    .end local v8    # "s":J
    .end local v25    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v38    # "m":J
    .restart local v36    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_b0
    if-nez v23, :cond_c0

    .line 1177
    new-instance v23, Ljava/util/concurrent/locks/StampedLock$WNode;

    const/4 v4, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v0, v4, v1}, Ljava/util/concurrent/locks/StampedLock$WNode;-><init>(ILjava/util/concurrent/locks/StampedLock$WNode;)V

    .local v23, "node":Ljava/util/concurrent/locks/StampedLock$WNode;
    move-object/from16 v25, v36

    .end local v36    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v25    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    goto/16 :goto_6

    .line 1178
    .end local v23    # "node":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v25    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v36    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_c0
    move-object/from16 v0, v36

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_cc

    move-object/from16 v0, v22

    iget v4, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->mode:I

    if-eqz v4, :cond_159

    .line 1179
    :cond_cc
    move-object/from16 v0, v23

    iget-object v4, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v0, v22

    if-eq v4, v0, :cond_de

    .line 1180
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    iput-object v0, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    :cond_da
    move-object/from16 v25, v36

    .line 1178
    .end local v36    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v25    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    goto/16 :goto_6

    .line 1181
    .end local v25    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v36    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_de
    sget-object v18, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v20, Ljava/util/concurrent/locks/StampedLock;->WTAIL:J

    move-object/from16 v19, p0

    invoke-virtual/range {v18 .. v23}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_da

    .line 1182
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->next:Ljava/util/concurrent/locks/StampedLock$WNode;

    .line 1241
    const/16 v44, -0x1

    .line 1243
    .end local v36    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_f2
    :goto_f2
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v25, v0

    .restart local v25    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    move-object/from16 v0, v25

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_306

    .line 1244
    if-gez v44, :cond_2b0

    .line 1245
    sget v44, Ljava/util/concurrent/locks/StampedLock;->HEAD_SPINS:I

    .line 1248
    :cond_102
    :goto_102
    move/from16 v37, v44

    .line 1250
    .local v37, "k":I
    :cond_104
    move-object/from16 v0, p0

    iget-wide v8, v0, Ljava/util/concurrent/locks/StampedLock;->state:J

    .restart local v8    # "s":J
    const-wide/16 v4, 0xff

    and-long v38, v8, v4

    .restart local v38    # "m":J
    const-wide/16 v4, 0x7e

    cmp-long v4, v38, v4

    if-gez v4, :cond_2ba

    .line 1251
    sget-object v4, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v6, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    const-wide/16 v12, 0x1

    add-long v10, v8, v12

    .restart local v10    # "ns":J
    move-object/from16 v5, p0

    invoke-virtual/range {v4 .. v11}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v4

    .line 1250
    if-eqz v4, :cond_2cc

    .line 1254
    :cond_122
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    .line 1255
    const/4 v4, 0x0

    move-object/from16 v0, v23

    iput-object v4, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    .line 1256
    :cond_12d
    :goto_12d
    move-object/from16 v0, v23

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->cowait:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v28, v0

    .local v28, "c":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v28, :cond_2fc

    .line 1257
    sget-object v30, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v32, Ljava/util/concurrent/locks/StampedLock;->WCOWAIT:J

    .line 1258
    move-object/from16 v0, v28

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->cowait:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v35, v0

    move-object/from16 v31, v23

    move-object/from16 v34, v28

    .line 1257
    invoke-virtual/range {v30 .. v35}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12d

    .line 1259
    move-object/from16 v0, v28

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->thread:Ljava/lang/Thread;

    move-object/from16 v45, v0

    .local v45, "w":Ljava/lang/Thread;
    if-eqz v45, :cond_12d

    .line 1260
    sget-object v4, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    move-object/from16 v0, v45

    invoke-virtual {v4, v0}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    goto :goto_12d

    .line 1186
    .end local v8    # "s":J
    .end local v10    # "ns":J
    .end local v25    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v28    # "c":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v37    # "k":I
    .end local v38    # "m":J
    .end local v45    # "w":Ljava/lang/Thread;
    .restart local v36    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_159
    sget-object v24, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v26, Ljava/util/concurrent/locks/StampedLock;->WCOWAIT:J

    .line 1187
    move-object/from16 v0, v22

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->cowait:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    iput-object v0, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->cowait:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v25, v22

    move-object/from16 v29, v23

    .line 1186
    invoke-virtual/range {v24 .. v29}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3ef

    .line 1188
    const/4 v4, 0x0

    move-object/from16 v0, v23

    iput-object v4, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->cowait:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v25, v36

    .end local v36    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v25    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    goto/16 :goto_6

    .line 1234
    .local v42, "pp":Ljava/util/concurrent/locks/StampedLock$WNode;
    .local v46, "time":J
    .local v49, "wt":Ljava/lang/Thread;
    :cond_17c
    const/16 v48, 0x1

    .line 1192
    .end local v42    # "pp":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v46    # "time":J
    .end local v49    # "wt":Ljava/lang/Thread;
    :cond_17e
    :goto_17e
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1ad

    move-object/from16 v0, v25

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->cowait:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v28, v0

    .restart local v28    # "c":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v28, :cond_1ad

    .line 1193
    sget-object v24, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v26, Ljava/util/concurrent/locks/StampedLock;->WCOWAIT:J

    move-object/from16 v0, v28

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->cowait:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v29, v0

    invoke-virtual/range {v24 .. v29}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .line 1192
    if-eqz v4, :cond_1ad

    .line 1194
    move-object/from16 v0, v28

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->thread:Ljava/lang/Thread;

    move-object/from16 v45, v0

    .restart local v45    # "w":Ljava/lang/Thread;
    if-eqz v45, :cond_1ad

    .line 1195
    sget-object v4, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    move-object/from16 v0, v45

    invoke-virtual {v4, v0}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    .line 1196
    .end local v28    # "c":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v45    # "w":Ljava/lang/Thread;
    :cond_1ad
    move-object/from16 v0, v22

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v42, v0

    .restart local v42    # "pp":Ljava/util/concurrent/locks/StampedLock$WNode;
    move-object/from16 v0, v25

    move-object/from16 v1, v42

    if-eq v0, v1, :cond_1bf

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_1e7

    .line 1199
    :cond_1bf
    :goto_1bf
    move-object/from16 v0, p0

    iget-wide v8, v0, Ljava/util/concurrent/locks/StampedLock;->state:J

    .restart local v8    # "s":J
    const-wide/16 v4, 0xff

    and-long v38, v8, v4

    .restart local v38    # "m":J
    const-wide/16 v4, 0x7e

    cmp-long v4, v38, v4

    if-gez v4, :cond_205

    .line 1200
    sget-object v4, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v6, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    .line 1201
    const-wide/16 v12, 0x1

    add-long v10, v8, v12

    .restart local v10    # "ns":J
    move-object/from16 v5, p0

    .line 1200
    invoke-virtual/range {v4 .. v11}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v4

    .line 1199
    if-eqz v4, :cond_217

    .line 1204
    :cond_1dd
    if-eqz v48, :cond_1e6

    .line 1205
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 1206
    :cond_1e6
    return-wide v10

    .line 1196
    .end local v8    # "s":J
    .end local v10    # "ns":J
    .end local v38    # "m":J
    :cond_1e7
    if-eqz v42, :cond_1bf

    .line 1210
    :cond_1e9
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v0, v25

    if-ne v4, v0, :cond_17e

    move-object/from16 v0, v22

    iget-object v4, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v0, v42

    if-ne v4, v0, :cond_17e

    .line 1212
    if-eqz v42, :cond_201

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_21e

    .line 1213
    :cond_201
    const/16 v23, 0x0

    .line 1214
    .local v23, "node":Ljava/util/concurrent/locks/StampedLock$WNode;
    goto/16 :goto_6

    .line 1202
    .end local v23    # "node":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v8    # "s":J
    .restart local v38    # "m":J
    :cond_205
    const-wide/16 v4, 0x80

    cmp-long v4, v38, v4

    if-gez v4, :cond_217

    .line 1203
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Ljava/util/concurrent/locks/StampedLock;->tryIncReaderOverflow(J)J

    move-result-wide v10

    .restart local v10    # "ns":J
    const-wide/16 v4, 0x0

    cmp-long v4, v10, v4

    if-nez v4, :cond_1dd

    .line 1208
    .end local v10    # "ns":J
    :cond_217
    const-wide/16 v4, 0x80

    cmp-long v4, v38, v4

    if-gez v4, :cond_1e9

    goto :goto_1bf

    .line 1212
    .end local v8    # "s":J
    .end local v38    # "m":J
    :cond_21e
    move-object/from16 v0, v22

    iget v4, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    if-gtz v4, :cond_201

    .line 1216
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-nez v4, :cond_28f

    .line 1217
    const-wide/16 v46, 0x0

    .line 1223
    .restart local v46    # "time":J
    :cond_22c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v49

    .line 1224
    .restart local v49    # "wt":Ljava/lang/Thread;
    sget-object v4, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v6, Ljava/util/concurrent/locks/StampedLock;->PARKBLOCKER:J

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    invoke-virtual {v4, v0, v6, v7, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1225
    move-object/from16 v0, v49

    move-object/from16 v1, v23

    iput-object v0, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->thread:Ljava/lang/Thread;

    .line 1226
    move-object/from16 v0, v25

    move-object/from16 v1, v42

    if-ne v0, v1, :cond_254

    move-object/from16 v0, p0

    iget-wide v4, v0, Ljava/util/concurrent/locks/StampedLock;->state:J

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    const-wide/16 v6, 0x80

    cmp-long v4, v4, v6

    if-nez v4, :cond_26c

    .line 1227
    :cond_254
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v0, v25

    if-ne v4, v0, :cond_26c

    move-object/from16 v0, v22

    iget-object v4, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v0, v42

    if-ne v4, v0, :cond_26c

    .line 1228
    sget-object v4, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    const/4 v5, 0x0

    move-wide/from16 v0, v46

    invoke-virtual {v4, v5, v0, v1}, Lsun/misc/Unsafe;->park(ZJ)V

    .line 1229
    :cond_26c
    const/4 v4, 0x0

    move-object/from16 v0, v23

    iput-object v4, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->thread:Ljava/lang/Thread;

    .line 1230
    sget-object v4, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v6, Ljava/util/concurrent/locks/StampedLock;->PARKBLOCKER:J

    const/4 v5, 0x0

    move-object/from16 v0, v49

    invoke-virtual {v4, v0, v6, v7, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1231
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-eqz v4, :cond_17e

    .line 1232
    if-eqz p1, :cond_17c

    .line 1233
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2, v4}, Ljava/util/concurrent/locks/StampedLock;->cancelWaiter(Ljava/util/concurrent/locks/StampedLock$WNode;Ljava/util/concurrent/locks/StampedLock$WNode;Z)J

    move-result-wide v4

    return-wide v4

    .line 1218
    .end local v46    # "time":J
    .end local v49    # "wt":Ljava/lang/Thread;
    :cond_28f
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v46, p2, v4

    .restart local v46    # "time":J
    const-wide/16 v4, 0x0

    cmp-long v4, v46, v4

    if-gtz v4, :cond_22c

    .line 1219
    if-eqz v48, :cond_2a4

    .line 1220
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 1221
    :cond_2a4
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2, v4}, Ljava/util/concurrent/locks/StampedLock;->cancelWaiter(Ljava/util/concurrent/locks/StampedLock$WNode;Ljava/util/concurrent/locks/StampedLock$WNode;Z)J

    move-result-wide v4

    return-wide v4

    .line 1246
    .end local v42    # "pp":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v46    # "time":J
    :cond_2b0
    sget v4, Ljava/util/concurrent/locks/StampedLock;->MAX_HEAD_SPINS:I

    move/from16 v0, v44

    if-ge v0, v4, :cond_102

    .line 1247
    shl-int/lit8 v44, v44, 0x1

    goto/16 :goto_102

    .line 1252
    .restart local v8    # "s":J
    .restart local v37    # "k":I
    .restart local v38    # "m":J
    :cond_2ba
    const-wide/16 v4, 0x80

    cmp-long v4, v38, v4

    if-gez v4, :cond_2cc

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Ljava/util/concurrent/locks/StampedLock;->tryIncReaderOverflow(J)J

    move-result-wide v10

    .restart local v10    # "ns":J
    const-wide/16 v4, 0x0

    cmp-long v4, v10, v4

    if-nez v4, :cond_122

    .line 1266
    .end local v10    # "ns":J
    :cond_2cc
    const-wide/16 v4, 0x80

    cmp-long v4, v38, v4

    if-ltz v4, :cond_104

    .line 1267
    invoke-static {}, Ljava/util/concurrent/locks/LockSupport;->nextSecondarySeed()I

    move-result v4

    if-ltz v4, :cond_104

    add-int/lit8 v37, v37, -0x1

    if-gtz v37, :cond_104

    .line 1279
    .end local v8    # "s":J
    .end local v37    # "k":I
    .end local v38    # "m":J
    :cond_2dc
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v0, v25

    if-ne v4, v0, :cond_f2

    .line 1280
    move-object/from16 v0, v23

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v41, v0

    .restart local v41    # "np":Ljava/util/concurrent/locks/StampedLock$WNode;
    move-object/from16 v0, v41

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_330

    .line 1281
    if-eqz v41, :cond_f2

    .line 1282
    move-object/from16 v22, v41

    move-object/from16 v0, v23

    move-object/from16 v1, v41

    iput-object v0, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->next:Ljava/util/concurrent/locks/StampedLock$WNode;

    goto/16 :goto_f2

    .line 1262
    .end local v41    # "np":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v8    # "s":J
    .restart local v10    # "ns":J
    .restart local v28    # "c":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v37    # "k":I
    .restart local v38    # "m":J
    :cond_2fc
    if-eqz v48, :cond_305

    .line 1263
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 1264
    :cond_305
    return-wide v10

    .line 1271
    .end local v8    # "s":J
    .end local v10    # "ns":J
    .end local v28    # "c":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v37    # "k":I
    .end local v38    # "m":J
    :cond_306
    if-eqz v25, :cond_2dc

    .line 1273
    :cond_308
    :goto_308
    move-object/from16 v0, v25

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->cowait:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v28, v0

    .restart local v28    # "c":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v28, :cond_2dc

    .line 1274
    sget-object v24, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v26, Ljava/util/concurrent/locks/StampedLock;->WCOWAIT:J

    move-object/from16 v0, v28

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->cowait:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v29, v0

    invoke-virtual/range {v24 .. v29}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_308

    .line 1275
    move-object/from16 v0, v28

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->thread:Ljava/lang/Thread;

    move-object/from16 v45, v0

    .restart local v45    # "w":Ljava/lang/Thread;
    if-eqz v45, :cond_308

    .line 1276
    sget-object v4, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    move-object/from16 v0, v45

    invoke-virtual {v4, v0}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    goto :goto_308

    .line 1284
    .end local v28    # "c":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v45    # "w":Ljava/lang/Thread;
    .restart local v41    # "np":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_330
    move-object/from16 v0, v22

    iget v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    move/from16 v43, v0

    .local v43, "ps":I
    if-nez v43, :cond_347

    .line 1285
    sget-object v30, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v32, Ljava/util/concurrent/locks/StampedLock;->WSTATUS:J

    const/16 v34, 0x0

    const/16 v35, -0x1

    move-object/from16 v31, v22

    invoke-virtual/range {v30 .. v35}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    goto/16 :goto_f2

    .line 1286
    :cond_347
    const/4 v4, 0x1

    move/from16 v0, v43

    if-ne v0, v4, :cond_362

    .line 1287
    move-object/from16 v0, v22

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v42, v0

    .restart local v42    # "pp":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v42, :cond_f2

    .line 1288
    move-object/from16 v0, v42

    move-object/from16 v1, v23

    iput-object v0, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    .line 1289
    move-object/from16 v0, v23

    move-object/from16 v1, v42

    iput-object v0, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->next:Ljava/util/concurrent/locks/StampedLock$WNode;

    goto/16 :goto_f2

    .line 1294
    .end local v42    # "pp":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_362
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-nez v4, :cond_3d3

    .line 1295
    const-wide/16 v46, 0x0

    .line 1298
    .restart local v46    # "time":J
    :cond_36a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v49

    .line 1299
    .restart local v49    # "wt":Ljava/lang/Thread;
    sget-object v4, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v6, Ljava/util/concurrent/locks/StampedLock;->PARKBLOCKER:J

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    invoke-virtual {v4, v0, v6, v7, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1300
    move-object/from16 v0, v49

    move-object/from16 v1, v23

    iput-object v0, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->thread:Ljava/lang/Thread;

    .line 1301
    move-object/from16 v0, v22

    iget v4, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    if-gez v4, :cond_3b0

    .line 1302
    move-object/from16 v0, v22

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_398

    move-object/from16 v0, p0

    iget-wide v4, v0, Ljava/util/concurrent/locks/StampedLock;->state:J

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    const-wide/16 v6, 0x80

    cmp-long v4, v4, v6

    if-nez v4, :cond_3b0

    .line 1303
    :cond_398
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v0, v25

    if-ne v4, v0, :cond_3b0

    move-object/from16 v0, v23

    iget-object v4, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v0, v22

    if-ne v4, v0, :cond_3b0

    .line 1304
    sget-object v4, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    const/4 v5, 0x0

    move-wide/from16 v0, v46

    invoke-virtual {v4, v5, v0, v1}, Lsun/misc/Unsafe;->park(ZJ)V

    .line 1305
    :cond_3b0
    const/4 v4, 0x0

    move-object/from16 v0, v23

    iput-object v4, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->thread:Ljava/lang/Thread;

    .line 1306
    sget-object v4, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v6, Ljava/util/concurrent/locks/StampedLock;->PARKBLOCKER:J

    const/4 v5, 0x0

    move-object/from16 v0, v49

    invoke-virtual {v4, v0, v6, v7, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1307
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-eqz v4, :cond_f2

    .line 1308
    if-eqz p1, :cond_3eb

    .line 1309
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2, v4}, Ljava/util/concurrent/locks/StampedLock;->cancelWaiter(Ljava/util/concurrent/locks/StampedLock$WNode;Ljava/util/concurrent/locks/StampedLock$WNode;Z)J

    move-result-wide v4

    return-wide v4

    .line 1296
    .end local v46    # "time":J
    .end local v49    # "wt":Ljava/lang/Thread;
    :cond_3d3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v46, p2, v4

    .restart local v46    # "time":J
    const-wide/16 v4, 0x0

    cmp-long v4, v46, v4

    if-gtz v4, :cond_36a

    .line 1297
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2, v4}, Ljava/util/concurrent/locks/StampedLock;->cancelWaiter(Ljava/util/concurrent/locks/StampedLock$WNode;Ljava/util/concurrent/locks/StampedLock$WNode;Z)J

    move-result-wide v4

    return-wide v4

    .line 1310
    .restart local v49    # "wt":Ljava/lang/Thread;
    :cond_3eb
    const/16 v48, 0x1

    goto/16 :goto_f2

    .end local v25    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v41    # "np":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v43    # "ps":I
    .end local v46    # "time":J
    .end local v49    # "wt":Ljava/lang/Thread;
    .restart local v36    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_3ef
    move-object/from16 v25, v36

    .end local v36    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v25    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    goto/16 :goto_17e

    .end local v25    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v17    # "hd":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v36    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_3f3
    move-object/from16 v25, v36

    .end local v36    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v25    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    goto/16 :goto_6

    .end local v17    # "hd":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_3f7
    move-object/from16 v36, v25

    .end local v25    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v36    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    goto/16 :goto_7f
.end method

.method private acquireWrite(ZJ)J
    .registers 52
    .param p1, "interruptible"    # Z
    .param p2, "deadline"    # J

    .prologue
    .line 1034
    const/16 v23, 0x0

    .line 1035
    .local v23, "node":Ljava/util/concurrent/locks/StampedLock$WNode;
    const/16 v42, -0x1

    .line 1037
    .end local v23    # "node":Ljava/util/concurrent/locks/StampedLock$WNode;
    .local v42, "spins":I
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-wide v8, v0, Ljava/util/concurrent/locks/StampedLock;->state:J

    .local v8, "s":J
    const-wide/16 v4, 0xff

    and-long v38, v8, v4

    .local v38, "m":J
    const-wide/16 v4, 0x0

    cmp-long v4, v38, v4

    if-nez v4, :cond_23

    .line 1038
    sget-object v4, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v6, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    const-wide/16 v12, 0x80

    add-long v10, v8, v12

    .local v10, "ns":J
    move-object/from16 v5, p0

    invoke-virtual/range {v4 .. v11}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1039
    return-wide v10

    .line 1041
    .end local v10    # "ns":J
    :cond_23
    if-gez v42, :cond_3b

    .line 1042
    const-wide/16 v4, 0x80

    cmp-long v4, v38, v4

    if-nez v4, :cond_38

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/concurrent/locks/StampedLock;->wtail:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v0, p0

    iget-object v5, v0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    if-ne v4, v5, :cond_38

    sget v42, Ljava/util/concurrent/locks/StampedLock;->SPINS:I

    goto :goto_4

    :cond_38
    const/16 v42, 0x0

    goto :goto_4

    .line 1043
    :cond_3b
    if-lez v42, :cond_46

    .line 1044
    invoke-static {}, Ljava/util/concurrent/locks/LockSupport;->nextSecondarySeed()I

    move-result v4

    if-ltz v4, :cond_4

    .line 1045
    add-int/lit8 v42, v42, -0x1

    goto :goto_4

    .line 1047
    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock;->wtail:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v22, v0

    .local v22, "p":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-nez v22, :cond_6c

    .line 1048
    new-instance v17, Ljava/util/concurrent/locks/StampedLock$WNode;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v4, v5}, Ljava/util/concurrent/locks/StampedLock$WNode;-><init>(ILjava/util/concurrent/locks/StampedLock$WNode;)V

    .line 1049
    .local v17, "hd":Ljava/util/concurrent/locks/StampedLock$WNode;
    sget-object v12, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v14, Ljava/util/concurrent/locks/StampedLock;->WHEAD:J

    const/16 v16, 0x0

    move-object/from16 v13, p0

    invoke-virtual/range {v12 .. v17}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1050
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/concurrent/locks/StampedLock;->wtail:Ljava/util/concurrent/locks/StampedLock$WNode;

    goto :goto_4

    .line 1052
    .end local v17    # "hd":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_6c
    if-nez v23, :cond_79

    .line 1053
    new-instance v23, Ljava/util/concurrent/locks/StampedLock$WNode;

    const/4 v4, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v0, v4, v1}, Ljava/util/concurrent/locks/StampedLock$WNode;-><init>(ILjava/util/concurrent/locks/StampedLock$WNode;)V

    .local v23, "node":Ljava/util/concurrent/locks/StampedLock$WNode;
    goto :goto_4

    .line 1054
    .end local v23    # "node":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_79
    move-object/from16 v0, v23

    iget-object v4, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v0, v22

    if-eq v4, v0, :cond_89

    .line 1055
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    iput-object v0, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    goto/16 :goto_4

    .line 1056
    :cond_89
    sget-object v18, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v20, Ljava/util/concurrent/locks/StampedLock;->WTAIL:J

    move-object/from16 v19, p0

    invoke-virtual/range {v18 .. v23}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1057
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->next:Ljava/util/concurrent/locks/StampedLock$WNode;

    .line 1062
    const/16 v46, 0x0

    .line 1063
    .local v46, "wasInterrupted":Z
    const/16 v42, -0x1

    .line 1065
    :cond_9f
    :goto_9f
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v25, v0

    .local v25, "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    move-object/from16 v0, v25

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_115

    .line 1066
    if-gez v42, :cond_e3

    .line 1067
    sget v42, Ljava/util/concurrent/locks/StampedLock;->HEAD_SPINS:I

    .line 1070
    :cond_af
    :goto_af
    move/from16 v36, v42

    .line 1072
    .local v36, "k":I
    :cond_b1
    move-object/from16 v0, p0

    iget-wide v8, v0, Ljava/util/concurrent/locks/StampedLock;->state:J

    const-wide/16 v4, 0xff

    and-long/2addr v4, v8

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_ec

    .line 1073
    sget-object v4, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v6, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    .line 1074
    const-wide/16 v12, 0x80

    add-long v10, v8, v12

    .restart local v10    # "ns":J
    move-object/from16 v5, p0

    .line 1073
    invoke-virtual/range {v4 .. v11}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v4

    if-eqz v4, :cond_b1

    .line 1075
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    .line 1076
    const/4 v4, 0x0

    move-object/from16 v0, v23

    iput-object v4, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    .line 1077
    if-eqz v46, :cond_e2

    .line 1078
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 1079
    :cond_e2
    return-wide v10

    .line 1068
    .end local v10    # "ns":J
    .end local v36    # "k":I
    :cond_e3
    sget v4, Ljava/util/concurrent/locks/StampedLock;->MAX_HEAD_SPINS:I

    move/from16 v0, v42

    if-ge v0, v4, :cond_af

    .line 1069
    shl-int/lit8 v42, v42, 0x1

    goto :goto_af

    .line 1082
    .restart local v36    # "k":I
    :cond_ec
    invoke-static {}, Ljava/util/concurrent/locks/LockSupport;->nextSecondarySeed()I

    move-result v4

    if-ltz v4, :cond_b1

    .line 1083
    add-int/lit8 v36, v36, -0x1

    if-gtz v36, :cond_b1

    .line 1095
    .end local v36    # "k":I
    :cond_f6
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v0, v25

    if-ne v4, v0, :cond_9f

    .line 1096
    move-object/from16 v0, v23

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v37, v0

    .local v37, "np":Ljava/util/concurrent/locks/StampedLock$WNode;
    move-object/from16 v0, v37

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_13f

    .line 1097
    if-eqz v37, :cond_9f

    .line 1098
    move-object/from16 v22, v37

    move-object/from16 v0, v23

    move-object/from16 v1, v37

    iput-object v0, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->next:Ljava/util/concurrent/locks/StampedLock$WNode;

    goto :goto_9f

    .line 1087
    .end local v37    # "np":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_115
    if-eqz v25, :cond_f6

    .line 1089
    :cond_117
    :goto_117
    move-object/from16 v0, v25

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->cowait:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v28, v0

    .local v28, "c":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v28, :cond_f6

    .line 1090
    sget-object v24, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v26, Ljava/util/concurrent/locks/StampedLock;->WCOWAIT:J

    move-object/from16 v0, v28

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->cowait:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v29, v0

    invoke-virtual/range {v24 .. v29}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_117

    .line 1091
    move-object/from16 v0, v28

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->thread:Ljava/lang/Thread;

    move-object/from16 v43, v0

    .local v43, "w":Ljava/lang/Thread;
    if-eqz v43, :cond_117

    .line 1092
    sget-object v4, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    goto :goto_117

    .line 1100
    .end local v28    # "c":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v43    # "w":Ljava/lang/Thread;
    .restart local v37    # "np":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_13f
    move-object/from16 v0, v22

    iget v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    move/from16 v41, v0

    .local v41, "ps":I
    if-nez v41, :cond_156

    .line 1101
    sget-object v30, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v32, Ljava/util/concurrent/locks/StampedLock;->WSTATUS:J

    const/16 v34, 0x0

    const/16 v35, -0x1

    move-object/from16 v31, v22

    invoke-virtual/range {v30 .. v35}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    goto/16 :goto_9f

    .line 1102
    :cond_156
    const/4 v4, 0x1

    move/from16 v0, v41

    if-ne v0, v4, :cond_171

    .line 1103
    move-object/from16 v0, v22

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v40, v0

    .local v40, "pp":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v40, :cond_9f

    .line 1104
    move-object/from16 v0, v40

    move-object/from16 v1, v23

    iput-object v0, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    .line 1105
    move-object/from16 v0, v23

    move-object/from16 v1, v40

    iput-object v0, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->next:Ljava/util/concurrent/locks/StampedLock$WNode;

    goto/16 :goto_9f

    .line 1110
    .end local v40    # "pp":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_171
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-nez v4, :cond_1e2

    .line 1111
    const-wide/16 v44, 0x0

    .line 1114
    .local v44, "time":J
    :cond_179
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v47

    .line 1115
    .local v47, "wt":Ljava/lang/Thread;
    sget-object v4, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v6, Ljava/util/concurrent/locks/StampedLock;->PARKBLOCKER:J

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    invoke-virtual {v4, v0, v6, v7, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1116
    move-object/from16 v0, v47

    move-object/from16 v1, v23

    iput-object v0, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->thread:Ljava/lang/Thread;

    .line 1117
    move-object/from16 v0, v22

    iget v4, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    if-gez v4, :cond_1bf

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_1a7

    move-object/from16 v0, p0

    iget-wide v4, v0, Ljava/util/concurrent/locks/StampedLock;->state:J

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1bf

    .line 1118
    :cond_1a7
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v0, v25

    if-ne v4, v0, :cond_1bf

    move-object/from16 v0, v23

    iget-object v4, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v0, v22

    if-ne v4, v0, :cond_1bf

    .line 1119
    sget-object v4, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    const/4 v5, 0x0

    move-wide/from16 v0, v44

    invoke-virtual {v4, v5, v0, v1}, Lsun/misc/Unsafe;->park(ZJ)V

    .line 1120
    :cond_1bf
    const/4 v4, 0x0

    move-object/from16 v0, v23

    iput-object v4, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->thread:Ljava/lang/Thread;

    .line 1121
    sget-object v4, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v6, Ljava/util/concurrent/locks/StampedLock;->PARKBLOCKER:J

    const/4 v5, 0x0

    move-object/from16 v0, v47

    invoke-virtual {v4, v0, v6, v7, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1122
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-eqz v4, :cond_9f

    .line 1123
    if-eqz p1, :cond_1fa

    .line 1124
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2, v4}, Ljava/util/concurrent/locks/StampedLock;->cancelWaiter(Ljava/util/concurrent/locks/StampedLock$WNode;Ljava/util/concurrent/locks/StampedLock$WNode;Z)J

    move-result-wide v4

    return-wide v4

    .line 1112
    .end local v44    # "time":J
    .end local v47    # "wt":Ljava/lang/Thread;
    :cond_1e2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v44, p2, v4

    .restart local v44    # "time":J
    const-wide/16 v4, 0x0

    cmp-long v4, v44, v4

    if-gtz v4, :cond_179

    .line 1113
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2, v4}, Ljava/util/concurrent/locks/StampedLock;->cancelWaiter(Ljava/util/concurrent/locks/StampedLock$WNode;Ljava/util/concurrent/locks/StampedLock$WNode;Z)J

    move-result-wide v4

    return-wide v4

    .line 1125
    .restart local v47    # "wt":Ljava/lang/Thread;
    :cond_1fa
    const/16 v46, 0x1

    goto/16 :goto_9f
.end method

.method private cancelWaiter(Ljava/util/concurrent/locks/StampedLock$WNode;Ljava/util/concurrent/locks/StampedLock$WNode;Z)J
    .registers 35
    .param p1, "node"    # Ljava/util/concurrent/locks/StampedLock$WNode;
    .param p2, "group"    # Ljava/util/concurrent/locks/StampedLock$WNode;
    .param p3, "interrupted"    # Z

    .prologue
    .line 1334
    if-eqz p1, :cond_d4

    if-eqz p2, :cond_d4

    .line 1336
    const/4 v2, 0x1

    move-object/from16 v0, p1

    iput v2, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    .line 1338
    move-object/from16 v3, p2

    .local v3, "p":Ljava/util/concurrent/locks/StampedLock$WNode;
    :goto_b
    iget-object v6, v3, Ljava/util/concurrent/locks/StampedLock$WNode;->cowait:Ljava/util/concurrent/locks/StampedLock$WNode;

    .local v6, "q":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v6, :cond_22

    .line 1339
    iget v2, v6, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_20

    .line 1340
    sget-object v2, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/locks/StampedLock;->WCOWAIT:J

    iget-object v7, v6, Ljava/util/concurrent/locks/StampedLock$WNode;->cowait:Ljava/util/concurrent/locks/StampedLock$WNode;

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 1341
    move-object/from16 v3, p2

    goto :goto_b

    .line 1344
    :cond_20
    move-object v3, v6

    goto :goto_b

    .line 1346
    :cond_22
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_d4

    .line 1347
    move-object/from16 v0, p2

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->cowait:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v25, v0

    .local v25, "r":Ljava/util/concurrent/locks/StampedLock$WNode;
    :goto_2e
    if-eqz v25, :cond_46

    .line 1348
    move-object/from16 v0, v25

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->thread:Ljava/lang/Thread;

    move-object/from16 v30, v0

    .local v30, "w":Ljava/lang/Thread;
    if-eqz v30, :cond_3f

    .line 1349
    sget-object v2, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    .line 1347
    :cond_3f
    move-object/from16 v0, v25

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->cowait:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v25, v0

    goto :goto_2e

    .line 1351
    .end local v30    # "w":Ljava/lang/Thread;
    :cond_46
    move-object/from16 v0, p1

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v19, v0

    .end local v6    # "q":Ljava/util/concurrent/locks/StampedLock$WNode;
    .local v19, "pred":Ljava/util/concurrent/locks/StampedLock$WNode;
    :goto_4c
    if-eqz v19, :cond_d4

    .line 1353
    :cond_4e
    move-object/from16 v0, p1

    iget-object v12, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->next:Ljava/util/concurrent/locks/StampedLock$WNode;

    .local v12, "succ":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v12, :cond_59

    .line 1354
    iget v2, v12, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_a0

    .line 1355
    :cond_59
    const/4 v6, 0x0

    .line 1356
    .local v6, "q":Ljava/util/concurrent/locks/StampedLock$WNode;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock;->wtail:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v29, v0

    .end local v6    # "q":Ljava/util/concurrent/locks/StampedLock$WNode;
    .local v29, "t":Ljava/util/concurrent/locks/StampedLock$WNode;
    :goto_60
    if-eqz v29, :cond_78

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_78

    .line 1357
    move-object/from16 v0, v29

    iget v2, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    const/4 v4, 0x1

    if-eq v2, v4, :cond_71

    .line 1358
    move-object/from16 v6, v29

    .line 1356
    :cond_71
    move-object/from16 v0, v29

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v29, v0

    goto :goto_60

    .line 1359
    :cond_78
    if-eq v12, v6, :cond_8b

    .line 1360
    sget-object v8, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v10, Ljava/util/concurrent/locks/StampedLock;->WNEXT:J

    .line 1361
    move-object/from16 v28, v6

    .end local v12    # "succ":Ljava/util/concurrent/locks/StampedLock$WNode;
    .local v28, "succ":Ljava/util/concurrent/locks/StampedLock$WNode;
    move-object/from16 v9, p1

    move-object v13, v6

    .line 1360
    invoke-virtual/range {v8 .. v13}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 1359
    if-eqz v2, :cond_4e

    move-object/from16 v12, v28

    .line 1362
    .end local v28    # "succ":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v12    # "succ":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_8b
    if-nez v12, :cond_a0

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/concurrent/locks/StampedLock;->wtail:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_a0

    .line 1363
    sget-object v14, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v16, Ljava/util/concurrent/locks/StampedLock;->WTAIL:J

    move-object/from16 v15, p0

    move-object/from16 v18, p1

    invoke-virtual/range {v14 .. v19}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 1367
    .end local v29    # "t":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_a0
    move-object/from16 v0, v19

    iget-object v2, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->next:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v0, p1

    if-ne v2, v0, :cond_b3

    .line 1368
    sget-object v18, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v20, Ljava/util/concurrent/locks/StampedLock;->WNEXT:J

    move-object/from16 v22, p1

    move-object/from16 v23, v12

    invoke-virtual/range {v18 .. v23}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 1369
    :cond_b3
    if-eqz v12, :cond_c5

    iget-object v0, v12, Ljava/util/concurrent/locks/StampedLock$WNode;->thread:Ljava/lang/Thread;

    move-object/from16 v30, v0

    .restart local v30    # "w":Ljava/lang/Thread;
    if-eqz v30, :cond_c5

    .line 1370
    const/4 v2, 0x0

    iput-object v2, v12, Ljava/util/concurrent/locks/StampedLock$WNode;->thread:Ljava/lang/Thread;

    .line 1371
    sget-object v2, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    .line 1373
    .end local v30    # "w":Ljava/lang/Thread;
    :cond_c5
    move-object/from16 v0, v19

    iget v2, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_d4

    move-object/from16 v0, v19

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v16, v0

    .local v16, "pp":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-nez v16, :cond_104

    .line 1382
    .end local v3    # "p":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v12    # "succ":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v16    # "pp":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v19    # "pred":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v25    # "r":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_d4
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v24, v0

    .local v24, "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v24, :cond_148

    .line 1384
    move-object/from16 v0, v24

    iget-object v6, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->next:Ljava/util/concurrent/locks/StampedLock$WNode;

    .local v6, "q":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v6, :cond_e7

    iget v2, v6, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_117

    .line 1385
    :cond_e7
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock;->wtail:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v29, v0

    .restart local v29    # "t":Ljava/util/concurrent/locks/StampedLock$WNode;
    :goto_ed
    if-eqz v29, :cond_117

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_117

    .line 1386
    move-object/from16 v0, v29

    iget v2, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    if-gtz v2, :cond_fd

    .line 1387
    move-object/from16 v6, v29

    .line 1385
    :cond_fd
    move-object/from16 v0, v29

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v29, v0

    goto :goto_ed

    .line 1375
    .end local v6    # "q":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v24    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v29    # "t":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v3    # "p":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v12    # "succ":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v16    # "pp":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v19    # "pred":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v25    # "r":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_104
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    iput-object v0, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    .line 1376
    sget-object v15, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v17, Ljava/util/concurrent/locks/StampedLock;->WNEXT:J

    move-object/from16 v20, v12

    invoke-virtual/range {v15 .. v20}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 1377
    move-object/from16 v19, v16

    goto/16 :goto_4c

    .line 1389
    .end local v3    # "p":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v12    # "succ":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v16    # "pp":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v19    # "pred":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v25    # "r":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v6    # "q":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v24    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_117
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v0, v24

    if-ne v0, v2, :cond_d4

    .line 1390
    if-eqz v6, :cond_148

    move-object/from16 v0, v24

    iget v2, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    if-nez v2, :cond_148

    .line 1391
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/concurrent/locks/StampedLock;->state:J

    move-wide/from16 v26, v0

    .local v26, "s":J
    const-wide/16 v4, 0xff

    and-long v4, v4, v26

    const-wide/16 v8, 0x80

    cmp-long v2, v4, v8

    if-eqz v2, :cond_148

    .line 1392
    const-wide/16 v4, 0x0

    cmp-long v2, v26, v4

    if-eqz v2, :cond_141

    iget v2, v6, Ljava/util/concurrent/locks/StampedLock$WNode;->mode:I

    if-nez v2, :cond_148

    .line 1393
    :cond_141
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/StampedLock;->release(Ljava/util/concurrent/locks/StampedLock$WNode;)V

    .line 1397
    .end local v6    # "q":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v26    # "s":J
    :cond_148
    if-nez p3, :cond_150

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_153

    :cond_150
    const-wide/16 v4, 0x1

    :goto_152
    return-wide v4

    :cond_153
    const-wide/16 v4, 0x0

    goto :goto_152
.end method

.method private getReadLockCount(J)I
    .registers 10
    .param p1, "s"    # J

    .prologue
    const-wide/16 v4, 0x7e

    .line 779
    const-wide/16 v2, 0x7f

    and-long v0, p1, v2

    .local v0, "readers":J
    cmp-long v2, v0, v4

    if-ltz v2, :cond_f

    .line 780
    iget v2, p0, Ljava/util/concurrent/locks/StampedLock;->readerOverflow:I

    int-to-long v2, v2

    add-long v0, v4, v2

    .line 781
    :cond_f
    long-to-int v2, v0

    return v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 8
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
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

.method private release(Ljava/util/concurrent/locks/StampedLock$WNode;)V
    .registers 11
    .param p1, "h"    # Ljava/util/concurrent/locks/StampedLock$WNode;

    .prologue
    const/4 v5, 0x0

    .line 1011
    if-eqz p1, :cond_2e

    .line 1013
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->WSTATUS:J

    const/4 v4, -0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    .line 1014
    iget-object v6, p1, Ljava/util/concurrent/locks/StampedLock$WNode;->next:Ljava/util/concurrent/locks/StampedLock$WNode;

    .local v6, "q":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v6, :cond_15

    iget v0, v6, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_23

    .line 1015
    :cond_15
    iget-object v7, p0, Ljava/util/concurrent/locks/StampedLock;->wtail:Ljava/util/concurrent/locks/StampedLock$WNode;

    .local v7, "t":Ljava/util/concurrent/locks/StampedLock$WNode;
    :goto_17
    if-eqz v7, :cond_23

    if-eq v7, p1, :cond_23

    .line 1016
    iget v0, v7, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    if-gtz v0, :cond_20

    .line 1017
    move-object v6, v7

    .line 1015
    :cond_20
    iget-object v7, v7, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    goto :goto_17

    .line 1019
    .end local v7    # "t":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_23
    if-eqz v6, :cond_2e

    iget-object v8, v6, Ljava/util/concurrent/locks/StampedLock$WNode;->thread:Ljava/lang/Thread;

    .local v8, "w":Ljava/lang/Thread;
    if-eqz v8, :cond_2e

    .line 1020
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    invoke-virtual {v0, v8}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    .line 1022
    .end local v6    # "q":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v8    # "w":Ljava/lang/Thread;
    :cond_2e
    return-void
.end method

.method private tryDecReaderOverflow(J)J
    .registers 12
    .param p1, "s"    # J

    .prologue
    .line 984
    const-wide/16 v0, 0xff

    and-long/2addr v0, p1

    const-wide/16 v2, 0x7e

    cmp-long v0, v0, v2

    if-nez v0, :cond_2f

    .line 985
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    const-wide/16 v6, 0x7f

    or-long/2addr v6, p1

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 987
    iget v8, p0, Ljava/util/concurrent/locks/StampedLock;->readerOverflow:I

    .local v8, "r":I
    if-lez v8, :cond_2a

    .line 988
    add-int/lit8 v0, v8, -0x1

    iput v0, p0, Ljava/util/concurrent/locks/StampedLock;->readerOverflow:I

    .line 989
    move-wide v4, p1

    .line 993
    .local v4, "next":J
    :goto_21
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    .line 994
    return-wide v4

    .line 992
    .end local v4    # "next":J
    :cond_2a
    const-wide/16 v0, 0x1

    sub-long v4, p1, v0

    .restart local v4    # "next":J
    goto :goto_21

    .line 997
    .end local v4    # "next":J
    .end local v8    # "r":I
    :cond_2f
    invoke-static {}, Ljava/util/concurrent/locks/LockSupport;->nextSecondarySeed()I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    if-nez v0, :cond_3a

    .line 999
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 1000
    :cond_3a
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private tryIncReaderOverflow(J)J
    .registers 12
    .param p1, "s"    # J

    .prologue
    .line 963
    const-wide/16 v0, 0xff

    and-long/2addr v0, p1

    const-wide/16 v2, 0x7e

    cmp-long v0, v0, v2

    if-nez v0, :cond_29

    .line 964
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    const-wide/16 v4, 0x7f

    or-long v6, p1, v4

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 965
    iget v0, p0, Ljava/util/concurrent/locks/StampedLock;->readerOverflow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/concurrent/locks/StampedLock;->readerOverflow:I

    .line 966
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

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
.method public asReadLock()Ljava/util/concurrent/locks/Lock;
    .registers 2

    .prologue
    .line 843
    iget-object v0, p0, Ljava/util/concurrent/locks/StampedLock;->readLockView:Ljava/util/concurrent/locks/StampedLock$ReadLockView;

    .local v0, "v":Ljava/util/concurrent/locks/StampedLock$ReadLockView;
    if-eqz v0, :cond_5

    .end local v0    # "v":Ljava/util/concurrent/locks/StampedLock$ReadLockView;
    :goto_4
    return-object v0

    .line 844
    .restart local v0    # "v":Ljava/util/concurrent/locks/StampedLock$ReadLockView;
    :cond_5
    new-instance v0, Ljava/util/concurrent/locks/StampedLock$ReadLockView;

    .end local v0    # "v":Ljava/util/concurrent/locks/StampedLock$ReadLockView;
    invoke-direct {v0, p0}, Ljava/util/concurrent/locks/StampedLock$ReadLockView;-><init>(Ljava/util/concurrent/locks/StampedLock;)V

    iput-object v0, p0, Ljava/util/concurrent/locks/StampedLock;->readLockView:Ljava/util/concurrent/locks/StampedLock$ReadLockView;

    goto :goto_4
.end method

.method public asReadWriteLock()Ljava/util/concurrent/locks/ReadWriteLock;
    .registers 2

    .prologue
    .line 873
    iget-object v0, p0, Ljava/util/concurrent/locks/StampedLock;->readWriteLockView:Ljava/util/concurrent/locks/StampedLock$ReadWriteLockView;

    .local v0, "v":Ljava/util/concurrent/locks/StampedLock$ReadWriteLockView;
    if-eqz v0, :cond_5

    .end local v0    # "v":Ljava/util/concurrent/locks/StampedLock$ReadWriteLockView;
    :goto_4
    return-object v0

    .line 874
    .restart local v0    # "v":Ljava/util/concurrent/locks/StampedLock$ReadWriteLockView;
    :cond_5
    new-instance v0, Ljava/util/concurrent/locks/StampedLock$ReadWriteLockView;

    .end local v0    # "v":Ljava/util/concurrent/locks/StampedLock$ReadWriteLockView;
    invoke-direct {v0, p0}, Ljava/util/concurrent/locks/StampedLock$ReadWriteLockView;-><init>(Ljava/util/concurrent/locks/StampedLock;)V

    iput-object v0, p0, Ljava/util/concurrent/locks/StampedLock;->readWriteLockView:Ljava/util/concurrent/locks/StampedLock$ReadWriteLockView;

    goto :goto_4
.end method

.method public asWriteLock()Ljava/util/concurrent/locks/Lock;
    .registers 2

    .prologue
    .line 859
    iget-object v0, p0, Ljava/util/concurrent/locks/StampedLock;->writeLockView:Ljava/util/concurrent/locks/StampedLock$WriteLockView;

    .local v0, "v":Ljava/util/concurrent/locks/StampedLock$WriteLockView;
    if-eqz v0, :cond_5

    .end local v0    # "v":Ljava/util/concurrent/locks/StampedLock$WriteLockView;
    :goto_4
    return-object v0

    .line 860
    .restart local v0    # "v":Ljava/util/concurrent/locks/StampedLock$WriteLockView;
    :cond_5
    new-instance v0, Ljava/util/concurrent/locks/StampedLock$WriteLockView;

    .end local v0    # "v":Ljava/util/concurrent/locks/StampedLock$WriteLockView;
    invoke-direct {v0, p0}, Ljava/util/concurrent/locks/StampedLock$WriteLockView;-><init>(Ljava/util/concurrent/locks/StampedLock;)V

    iput-object v0, p0, Ljava/util/concurrent/locks/StampedLock;->writeLockView:Ljava/util/concurrent/locks/StampedLock$WriteLockView;

    goto :goto_4
.end method

.method public getReadLockCount()I
    .registers 3

    .prologue
    .line 809
    iget-wide v0, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->getReadLockCount(J)I

    move-result v0

    return v0
.end method

.method public isReadLocked()Z
    .registers 5

    .prologue
    .line 799
    iget-wide v0, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    const-wide/16 v2, 0x7f

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public isWriteLocked()Z
    .registers 5

    .prologue
    .line 790
    iget-wide v0, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    const-wide/16 v2, 0x80

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public readLock()J
    .registers 11

    .prologue
    .line 421
    iget-wide v4, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    .line 422
    .local v4, "s":J
    iget-object v0, p0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    iget-object v1, p0, Ljava/util/concurrent/locks/StampedLock;->wtail:Ljava/util/concurrent/locks/StampedLock$WNode;

    if-ne v0, v1, :cond_21

    const-wide/16 v0, 0xff

    and-long/2addr v0, v4

    const-wide/16 v2, 0x7e

    cmp-long v0, v0, v2

    if-gez v0, :cond_21

    .line 423
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    const-wide/16 v8, 0x1

    add-long v6, v4, v8

    .local v6, "next":J
    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    .line 422
    if-eqz v0, :cond_21

    .end local v6    # "next":J
    :goto_20
    return-wide v6

    .line 424
    :cond_21
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Ljava/util/concurrent/locks/StampedLock;->acquireRead(ZJ)J

    move-result-wide v6

    goto :goto_20
.end method

.method public readLockInterruptibly()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 495
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_14

    .line 496
    const/4 v2, 0x1

    const-wide/16 v4, 0x0

    invoke-direct {p0, v2, v4, v5}, Ljava/util/concurrent/locks/StampedLock;->acquireRead(ZJ)J

    move-result-wide v0

    .local v0, "next":J
    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_14

    .line 497
    return-wide v0

    .line 498
    .end local v0    # "next":J
    :cond_14
    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .prologue
    const-wide/16 v6, 0x0

    .line 822
    iget-wide v0, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    .line 823
    .local v0, "s":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 824
    const-wide/16 v4, 0xff

    and-long/2addr v4, v0

    cmp-long v2, v4, v6

    if-nez v2, :cond_24

    const-string/jumbo v2, "[Unlocked]"

    .line 823
    :goto_1b
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 825
    :cond_24
    const-wide/16 v4, 0x80

    and-long/2addr v4, v0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_2f

    const-string/jumbo v2, "[Write-locked]"

    goto :goto_1b

    .line 826
    :cond_2f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[Read-locks:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->getReadLockCount(J)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1b
.end method

.method public tryConvertToOptimisticRead(J)J
    .registers 26
    .param p1, "stamp"    # J

    .prologue
    .line 696
    const-wide/16 v2, 0xff

    and-long v16, p1, v2

    .line 697
    .local v16, "a":J
    sget-object v2, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    invoke-virtual {v2}, Lsun/misc/Unsafe;->loadFence()V

    .line 699
    :cond_9
    move-object/from16 v0, p0

    iget-wide v12, v0, Ljava/util/concurrent/locks/StampedLock;->state:J

    .local v12, "s":J
    const-wide/16 v2, -0x80

    and-long/2addr v2, v12

    const-wide/16 v4, -0x80

    and-long v4, v4, p1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1b

    .line 727
    :cond_18
    const-wide/16 v2, 0x0

    return-wide v2

    .line 701
    :cond_1b
    const-wide/16 v2, 0xff

    and-long v20, v12, v2

    .local v20, "m":J
    const-wide/16 v2, 0x0

    cmp-long v2, v20, v2

    if-nez v2, :cond_2c

    .line 702
    const-wide/16 v2, 0x0

    cmp-long v2, v16, v2

    if-nez v2, :cond_18

    .line 704
    return-wide v12

    .line 706
    :cond_2c
    const-wide/16 v2, 0x80

    cmp-long v2, v20, v2

    if-nez v2, :cond_62

    .line 707
    cmp-long v2, v16, v20

    if-nez v2, :cond_18

    .line 709
    sget-object v2, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    .line 710
    const-wide/16 v8, 0x80

    add-long/2addr v12, v8

    const-wide/16 v8, 0x0

    cmp-long v3, v12, v8

    if-nez v3, :cond_60

    const-wide/16 v6, 0x100

    .local v6, "next":J
    :goto_45
    move-object/from16 v3, p0

    .line 709
    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v18, v0

    .local v18, "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v18, :cond_5f

    move-object/from16 v0, v18

    iget v2, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    if-eqz v2, :cond_5f

    .line 712
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/StampedLock;->release(Ljava/util/concurrent/locks/StampedLock$WNode;)V

    .line 713
    :cond_5f
    return-wide v6

    .end local v6    # "next":J
    .end local v18    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_60
    move-wide v6, v12

    .line 710
    goto :goto_45

    .line 715
    :cond_62
    const-wide/16 v2, 0x0

    cmp-long v2, v16, v2

    if-eqz v2, :cond_18

    const-wide/16 v2, 0x80

    cmp-long v2, v16, v2

    if-gez v2, :cond_18

    .line 717
    const-wide/16 v2, 0x7e

    cmp-long v2, v20, v2

    if-gez v2, :cond_a4

    .line 718
    sget-object v8, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v10, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    const-wide/16 v2, 0x1

    sub-long v6, v12, v2

    .restart local v6    # "next":J
    move-object/from16 v9, p0

    move-wide v14, v6

    invoke-virtual/range {v8 .. v15}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 719
    const-wide/16 v2, 0x1

    cmp-long v2, v20, v2

    if-nez v2, :cond_a0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v18, v0

    .restart local v18    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v18, :cond_a0

    move-object/from16 v0, v18

    iget v2, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    if-eqz v2, :cond_a0

    .line 720
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/StampedLock;->release(Ljava/util/concurrent/locks/StampedLock$WNode;)V

    .line 721
    .end local v18    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_a0
    const-wide/16 v2, -0x80

    and-long/2addr v2, v6

    return-wide v2

    .line 724
    .end local v6    # "next":J
    :cond_a4
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Ljava/util/concurrent/locks/StampedLock;->tryDecReaderOverflow(J)J

    move-result-wide v6

    .restart local v6    # "next":J
    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-eqz v2, :cond_9

    .line 725
    const-wide/16 v2, -0x80

    and-long/2addr v2, v6

    return-wide v2
.end method

.method public tryConvertToReadLock(J)J
    .registers 26
    .param p1, "stamp"    # J

    .prologue
    .line 657
    const-wide/16 v2, 0xff

    and-long v16, p1, v2

    .line 658
    .local v16, "a":J
    :cond_4
    move-object/from16 v0, p0

    iget-wide v6, v0, Ljava/util/concurrent/locks/StampedLock;->state:J

    .local v6, "s":J
    const-wide/16 v2, -0x80

    and-long/2addr v2, v6

    const-wide/16 v4, -0x80

    and-long v4, v4, p1

    cmp-long v2, v2, v4

    if-nez v2, :cond_23

    .line 659
    const-wide/16 v2, 0xff

    and-long v20, v6, v2

    .local v20, "m":J
    const-wide/16 v2, 0x0

    cmp-long v2, v20, v2

    if-nez v2, :cond_4a

    .line 660
    const-wide/16 v2, 0x0

    cmp-long v2, v16, v2

    if-eqz v2, :cond_26

    .line 682
    .end local v20    # "m":J
    :cond_23
    const-wide/16 v2, 0x0

    return-wide v2

    .line 662
    .restart local v20    # "m":J
    :cond_26
    const-wide/16 v2, 0x7e

    cmp-long v2, v20, v2

    if-gez v2, :cond_3d

    .line 663
    sget-object v2, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    const-wide/16 v10, 0x1

    add-long v8, v6, v10

    .local v8, "next":J
    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 664
    return-wide v8

    .line 666
    .end local v8    # "next":J
    :cond_3d
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Ljava/util/concurrent/locks/StampedLock;->tryIncReaderOverflow(J)J

    move-result-wide v8

    .restart local v8    # "next":J
    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-eqz v2, :cond_4

    .line 667
    return-wide v8

    .line 669
    .end local v8    # "next":J
    :cond_4a
    const-wide/16 v2, 0x80

    cmp-long v2, v20, v2

    if-nez v2, :cond_78

    .line 670
    cmp-long v2, v16, v20

    if-nez v2, :cond_23

    .line 672
    sget-object v10, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v12, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    const-wide/16 v2, 0x81

    add-long v8, v6, v2

    .restart local v8    # "next":J
    move-object/from16 v11, p0

    move-wide v14, v8

    invoke-virtual/range {v10 .. v15}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v18, v0

    .local v18, "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v18, :cond_77

    move-object/from16 v0, v18

    iget v2, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    if-eqz v2, :cond_77

    .line 674
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/StampedLock;->release(Ljava/util/concurrent/locks/StampedLock$WNode;)V

    .line 675
    :cond_77
    return-wide v8

    .line 677
    .end local v8    # "next":J
    .end local v18    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_78
    const-wide/16 v2, 0x0

    cmp-long v2, v16, v2

    if-eqz v2, :cond_23

    const-wide/16 v2, 0x80

    cmp-long v2, v16, v2

    if-gez v2, :cond_23

    .line 678
    return-wide p1
.end method

.method public tryConvertToWriteLock(J)J
    .registers 22
    .param p1, "stamp"    # J

    .prologue
    .line 621
    const-wide/16 v2, 0xff

    and-long v10, p1, v2

    .line 622
    .local v10, "a":J
    :cond_4
    move-object/from16 v0, p0

    iget-wide v6, v0, Ljava/util/concurrent/locks/StampedLock;->state:J

    .local v6, "s":J
    const-wide/16 v2, -0x80

    and-long/2addr v2, v6

    const-wide/16 v4, -0x80

    and-long v4, v4, p1

    cmp-long v2, v2, v4

    if-nez v2, :cond_23

    .line 623
    const-wide/16 v2, 0xff

    and-long v12, v6, v2

    .local v12, "m":J
    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-nez v2, :cond_37

    .line 624
    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-eqz v2, :cond_26

    .line 642
    .end local v12    # "m":J
    :cond_23
    const-wide/16 v2, 0x0

    return-wide v2

    .line 626
    .restart local v12    # "m":J
    :cond_26
    sget-object v2, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    const-wide/16 v14, 0x80

    add-long v8, v6, v14

    .local v8, "next":J
    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 627
    return-wide v8

    .line 629
    .end local v8    # "next":J
    :cond_37
    const-wide/16 v2, 0x80

    cmp-long v2, v12, v2

    if-nez v2, :cond_42

    .line 630
    cmp-long v2, v10, v12

    if-nez v2, :cond_23

    .line 632
    return-wide p1

    .line 634
    :cond_42
    const-wide/16 v2, 0x1

    cmp-long v2, v12, v2

    if-nez v2, :cond_23

    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-eqz v2, :cond_23

    .line 635
    sget-object v2, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    .line 636
    const-wide/16 v14, 0x1

    sub-long v14, v6, v14

    const-wide/16 v16, 0x80

    add-long v8, v14, v16

    .restart local v8    # "next":J
    move-object/from16 v3, p0

    .line 635
    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 637
    return-wide v8
.end method

.method public tryOptimisticRead()J
    .registers 7

    .prologue
    const-wide/16 v2, 0x0

    .line 509
    iget-wide v0, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    .local v0, "s":J
    const-wide/16 v4, 0x80

    and-long/2addr v4, v0

    cmp-long v4, v4, v2

    if-nez v4, :cond_e

    const-wide/16 v2, -0x80

    and-long/2addr v2, v0

    :cond_e
    return-wide v2
.end method

.method public tryReadLock()J
    .registers 15

    .prologue
    const-wide/16 v12, 0x0

    .line 436
    :cond_2
    iget-wide v4, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    .local v4, "s":J
    const-wide/16 v0, 0xff

    and-long v8, v4, v0

    .local v8, "m":J
    const-wide/16 v0, 0x80

    cmp-long v0, v8, v0

    if-nez v0, :cond_f

    .line 437
    return-wide v12

    .line 438
    :cond_f
    const-wide/16 v0, 0x7e

    cmp-long v0, v8, v0

    if-gez v0, :cond_25

    .line 439
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    const-wide/16 v10, 0x1

    add-long v6, v4, v10

    .local v6, "next":J
    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 440
    return-wide v6

    .line 442
    .end local v6    # "next":J
    :cond_25
    invoke-direct {p0, v4, v5}, Ljava/util/concurrent/locks/StampedLock;->tryIncReaderOverflow(J)J

    move-result-wide v6

    .restart local v6    # "next":J
    cmp-long v0, v6, v12

    if-eqz v0, :cond_2

    .line 443
    return-wide v6
.end method

.method public tryReadLock(JLjava/util/concurrent/TimeUnit;)J
    .registers 25
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 463
    move-object/from16 v0, p3

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v16

    .line 464
    .local v16, "nanos":J
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_65

    .line 465
    move-object/from16 v0, p0

    iget-wide v8, v0, Ljava/util/concurrent/locks/StampedLock;->state:J

    .local v8, "s":J
    const-wide/16 v4, 0xff

    and-long v14, v8, v4

    .local v14, "m":J
    const-wide/16 v4, 0x80

    cmp-long v4, v14, v4

    if-eqz v4, :cond_40

    .line 466
    const-wide/16 v4, 0x7e

    cmp-long v4, v14, v4

    if-gez v4, :cond_33

    .line 467
    sget-object v4, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v6, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    const-wide/16 v18, 0x1

    add-long v10, v8, v18

    .local v10, "next":J
    move-object/from16 v5, p0

    invoke-virtual/range {v4 .. v11}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 468
    return-wide v10

    .line 470
    .end local v10    # "next":J
    :cond_33
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Ljava/util/concurrent/locks/StampedLock;->tryIncReaderOverflow(J)J

    move-result-wide v10

    .restart local v10    # "next":J
    const-wide/16 v4, 0x0

    cmp-long v4, v10, v4

    if-eqz v4, :cond_40

    .line 471
    return-wide v10

    .line 473
    .end local v10    # "next":J
    :cond_40
    const-wide/16 v4, 0x0

    cmp-long v4, v16, v4

    if-gtz v4, :cond_49

    .line 474
    const-wide/16 v4, 0x0

    return-wide v4

    .line 475
    :cond_49
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    add-long v12, v4, v16

    .local v12, "deadline":J
    const-wide/16 v4, 0x0

    cmp-long v4, v12, v4

    if-nez v4, :cond_57

    .line 476
    const-wide/16 v12, 0x1

    .line 477
    :cond_57
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v12, v13}, Ljava/util/concurrent/locks/StampedLock;->acquireRead(ZJ)J

    move-result-wide v10

    .restart local v10    # "next":J
    const-wide/16 v4, 0x1

    cmp-long v4, v10, v4

    if-eqz v4, :cond_65

    .line 478
    return-wide v10

    .line 480
    .end local v8    # "s":J
    .end local v10    # "next":J
    .end local v12    # "deadline":J
    .end local v14    # "m":J
    :cond_65
    new-instance v4, Ljava/lang/InterruptedException;

    invoke-direct {v4}, Ljava/lang/InterruptedException;-><init>()V

    throw v4
.end method

.method public tryUnlockRead()Z
    .registers 13

    .prologue
    .line 757
    :cond_0
    iget-wide v4, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    .local v4, "s":J
    const-wide/16 v0, 0xff

    and-long v10, v4, v0

    .local v10, "m":J
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-eqz v0, :cond_46

    const-wide/16 v0, 0x80

    cmp-long v0, v10, v0

    if-gez v0, :cond_46

    .line 758
    const-wide/16 v0, 0x7e

    cmp-long v0, v10, v0

    if-gez v0, :cond_3a

    .line 759
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    const-wide/16 v6, 0x1

    sub-long v6, v4, v6

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 760
    const-wide/16 v0, 0x1

    cmp-long v0, v10, v0

    if-nez v0, :cond_38

    iget-object v8, p0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    .local v8, "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v8, :cond_38

    iget v0, v8, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    if-eqz v0, :cond_38

    .line 761
    invoke-direct {p0, v8}, Ljava/util/concurrent/locks/StampedLock;->release(Ljava/util/concurrent/locks/StampedLock$WNode;)V

    .line 762
    .end local v8    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_38
    const/4 v0, 0x1

    return v0

    .line 765
    :cond_3a
    invoke-direct {p0, v4, v5}, Ljava/util/concurrent/locks/StampedLock;->tryDecReaderOverflow(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 766
    const/4 v0, 0x1

    return v0

    .line 768
    :cond_46
    const/4 v0, 0x0

    return v0
.end method

.method public tryUnlockWrite()Z
    .registers 13

    .prologue
    const-wide/16 v10, 0x80

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 739
    iget-wide v8, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    .local v8, "s":J
    and-long v0, v8, v10

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2b

    .line 740
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    add-long/2addr v8, v10

    cmp-long v1, v8, v4

    if-nez v1, :cond_29

    const-wide/16 v4, 0x100

    :goto_18
    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    .line 741
    iget-object v6, p0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    .local v6, "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v6, :cond_27

    iget v0, v6, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    if-eqz v0, :cond_27

    .line 742
    invoke-direct {p0, v6}, Ljava/util/concurrent/locks/StampedLock;->release(Ljava/util/concurrent/locks/StampedLock$WNode;)V

    .line 743
    :cond_27
    const/4 v0, 0x1

    return v0

    .end local v6    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_29
    move-wide v4, v8

    .line 740
    goto :goto_18

    .line 745
    :cond_2b
    return v2
.end method

.method public tryWriteLock()J
    .registers 13

    .prologue
    const-wide/16 v8, 0x0

    .line 361
    iget-wide v4, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    .local v4, "s":J
    const-wide/16 v0, 0xff

    and-long/2addr v0, v4

    cmp-long v0, v0, v8

    if-nez v0, :cond_1b

    .line 362
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    const-wide/16 v10, 0x80

    add-long v6, v4, v10

    .local v6, "next":J
    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    .line 361
    if-eqz v0, :cond_1b

    .end local v6    # "next":J
    :goto_1a
    return-wide v6

    :cond_1b
    move-wide v6, v8

    .line 363
    goto :goto_1a
.end method

.method public tryWriteLock(JLjava/util/concurrent/TimeUnit;)J
    .registers 15
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    .line 381
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 382
    .local v2, "nanos":J
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-nez v6, :cond_32

    .line 384
    invoke-virtual {p0}, Ljava/util/concurrent/locks/StampedLock;->tryWriteLock()J

    move-result-wide v4

    .local v4, "next":J
    cmp-long v6, v4, v8

    if-eqz v6, :cond_15

    .line 385
    return-wide v4

    .line 386
    :cond_15
    cmp-long v6, v2, v8

    if-gtz v6, :cond_1a

    .line 387
    return-wide v8

    .line 388
    :cond_1a
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    add-long v0, v6, v2

    .local v0, "deadline":J
    cmp-long v6, v0, v8

    if-nez v6, :cond_26

    .line 389
    const-wide/16 v0, 0x1

    .line 390
    :cond_26
    const/4 v6, 0x1

    invoke-direct {p0, v6, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->acquireWrite(ZJ)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v6, v4, v6

    if-eqz v6, :cond_32

    .line 391
    return-wide v4

    .line 393
    .end local v0    # "deadline":J
    .end local v4    # "next":J
    :cond_32
    new-instance v6, Ljava/lang/InterruptedException;

    invoke-direct {v6}, Ljava/lang/InterruptedException;-><init>()V

    throw v6
.end method

.method public unlock(J)V
    .registers 18
    .param p1, "stamp"    # J

    .prologue
    .line 581
    const-wide/16 v0, 0xff

    and-long v8, p1, v0

    .line 582
    .local v8, "a":J
    :cond_4
    iget-wide v4, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    .local v4, "s":J
    const-wide/16 v0, -0x80

    and-long/2addr v0, v4

    const-wide/16 v2, -0x80

    and-long v2, v2, p1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    .line 583
    const-wide/16 v0, 0xff

    and-long v12, v4, v0

    .local v12, "m":J
    const-wide/16 v0, 0x0

    cmp-long v0, v12, v0

    if-nez v0, :cond_21

    .line 605
    .end local v12    # "m":J
    :cond_1b
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0

    .line 585
    .restart local v12    # "m":J
    :cond_21
    const-wide/16 v0, 0x80

    cmp-long v0, v12, v0

    if-nez v0, :cond_4a

    .line 586
    cmp-long v0, v8, v12

    if-nez v0, :cond_1b

    .line 588
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    const-wide/16 v6, 0x80

    add-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_3a

    const-wide/16 v4, 0x100

    .end local v4    # "s":J
    :cond_3a
    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    .line 589
    iget-object v10, p0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    .local v10, "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v10, :cond_49

    iget v0, v10, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    if-eqz v0, :cond_49

    .line 590
    invoke-direct {p0, v10}, Ljava/util/concurrent/locks/StampedLock;->release(Ljava/util/concurrent/locks/StampedLock$WNode;)V

    .line 591
    :cond_49
    return-void

    .line 593
    .end local v10    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v4    # "s":J
    :cond_4a
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-eqz v0, :cond_1b

    const-wide/16 v0, 0x80

    cmp-long v0, v8, v0

    if-gez v0, :cond_1b

    .line 595
    const-wide/16 v0, 0x7e

    cmp-long v0, v12, v0

    if-gez v0, :cond_7d

    .line 596
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    const-wide/16 v6, 0x1

    sub-long v6, v4, v6

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 597
    const-wide/16 v0, 0x1

    cmp-long v0, v12, v0

    if-nez v0, :cond_7c

    iget-object v10, p0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    .restart local v10    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v10, :cond_7c

    iget v0, v10, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    if-eqz v0, :cond_7c

    .line 598
    invoke-direct {p0, v10}, Ljava/util/concurrent/locks/StampedLock;->release(Ljava/util/concurrent/locks/StampedLock$WNode;)V

    .line 599
    .end local v10    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_7c
    return-void

    .line 602
    :cond_7d
    invoke-direct {p0, v4, v5}, Ljava/util/concurrent/locks/StampedLock;->tryDecReaderOverflow(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 603
    return-void
.end method

.method public unlockRead(J)V
    .registers 16
    .param p1, "stamp"    # J

    .prologue
    .line 557
    :cond_0
    iget-wide v4, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    .local v4, "s":J
    const-wide/16 v0, -0x80

    and-long/2addr v0, v4

    const-wide/16 v2, -0x80

    and-long/2addr v2, p1

    cmp-long v0, v0, v2

    if-nez v0, :cond_15

    .line 558
    const-wide/16 v0, 0xff

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    .line 559
    :cond_15
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0

    .line 558
    :cond_1b
    const-wide/16 v0, 0xff

    and-long v10, v4, v0

    .local v10, "m":J
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-eqz v0, :cond_15

    const-wide/16 v0, 0x80

    cmp-long v0, v10, v0

    if-eqz v0, :cond_15

    .line 560
    const-wide/16 v0, 0x7e

    cmp-long v0, v10, v0

    if-gez v0, :cond_52

    .line 561
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    const-wide/16 v6, 0x1

    sub-long v6, v4, v6

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    const-wide/16 v0, 0x1

    cmp-long v0, v10, v0

    if-nez v0, :cond_51

    iget-object v8, p0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    .local v8, "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v8, :cond_51

    iget v0, v8, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    if-eqz v0, :cond_51

    .line 563
    invoke-direct {p0, v8}, Ljava/util/concurrent/locks/StampedLock;->release(Ljava/util/concurrent/locks/StampedLock$WNode;)V

    .line 570
    .end local v8    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_51
    :goto_51
    return-void

    .line 567
    :cond_52
    invoke-direct {p0, v4, v5}, Ljava/util/concurrent/locks/StampedLock;->tryDecReaderOverflow(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_51
.end method

.method public unlockWrite(J)V
    .registers 14
    .param p1, "stamp"    # J

    .prologue
    const-wide/16 v8, 0x80

    const-wide/16 v4, 0x0

    .line 539
    iget-wide v0, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_10

    and-long v0, p1, v8

    cmp-long v0, v0, v4

    if-nez v0, :cond_16

    .line 540
    :cond_10
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0

    .line 541
    :cond_16
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    add-long/2addr p1, v8

    cmp-long v1, p1, v4

    if-nez v1, :cond_31

    const-wide/16 v4, 0x100

    :goto_21
    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    .line 542
    iget-object v6, p0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    .local v6, "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v6, :cond_30

    iget v0, v6, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    if-eqz v0, :cond_30

    .line 543
    invoke-direct {p0, v6}, Ljava/util/concurrent/locks/StampedLock;->release(Ljava/util/concurrent/locks/StampedLock$WNode;)V

    .line 544
    :cond_30
    return-void

    .end local v6    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_31
    move-wide v4, p1

    .line 541
    goto :goto_21
.end method

.method final unstampedUnlockRead()V
    .registers 13

    .prologue
    .line 931
    :cond_0
    iget-wide v4, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    .local v4, "s":J
    const-wide/16 v0, 0xff

    and-long v10, v4, v0

    .local v10, "m":J
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-eqz v0, :cond_12

    const-wide/16 v0, 0x80

    cmp-long v0, v10, v0

    if-ltz v0, :cond_18

    .line 932
    :cond_12
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0

    .line 933
    :cond_18
    const-wide/16 v0, 0x7e

    cmp-long v0, v10, v0

    if-gez v0, :cond_3f

    .line 934
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    const-wide/16 v6, 0x1

    sub-long v6, v4, v6

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 935
    const-wide/16 v0, 0x1

    cmp-long v0, v10, v0

    if-nez v0, :cond_3e

    iget-object v8, p0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    .local v8, "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v8, :cond_3e

    iget v0, v8, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    if-eqz v0, :cond_3e

    .line 936
    invoke-direct {p0, v8}, Ljava/util/concurrent/locks/StampedLock;->release(Ljava/util/concurrent/locks/StampedLock$WNode;)V

    .line 943
    .end local v8    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_3e
    :goto_3e
    return-void

    .line 940
    :cond_3f
    invoke-direct {p0, v4, v5}, Ljava/util/concurrent/locks/StampedLock;->tryDecReaderOverflow(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_3e
.end method

.method final unstampedUnlockWrite()V
    .registers 13

    .prologue
    const-wide/16 v10, 0x80

    const-wide/16 v4, 0x0

    .line 921
    iget-wide v8, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    .local v8, "s":J
    and-long v0, v8, v10

    cmp-long v0, v0, v4

    if-nez v0, :cond_12

    .line 922
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0

    .line 923
    :cond_12
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    add-long/2addr v8, v10

    cmp-long v1, v8, v4

    if-nez v1, :cond_2d

    const-wide/16 v4, 0x100

    :goto_1d
    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    .line 924
    iget-object v6, p0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    .local v6, "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v6, :cond_2c

    iget v0, v6, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    if-eqz v0, :cond_2c

    .line 925
    invoke-direct {p0, v6}, Ljava/util/concurrent/locks/StampedLock;->release(Ljava/util/concurrent/locks/StampedLock$WNode;)V

    .line 926
    :cond_2c
    return-void

    .end local v6    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_2d
    move-wide v4, v8

    .line 923
    goto :goto_1d
.end method

.method public validate(J)Z
    .registers 10
    .param p1, "stamp"    # J

    .prologue
    const-wide/16 v4, -0x80

    .line 525
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    invoke-virtual {v0}, Lsun/misc/Unsafe;->loadFence()V

    .line 526
    and-long v0, p1, v4

    iget-wide v2, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    and-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public writeLock()J
    .registers 13

    .prologue
    const-wide/16 v10, 0x0

    .line 348
    iget-wide v4, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    .local v4, "s":J
    const-wide/16 v0, 0xff

    and-long/2addr v0, v4

    cmp-long v0, v0, v10

    if-nez v0, :cond_1b

    .line 349
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    const-wide/16 v8, 0x80

    add-long v6, v4, v8

    .local v6, "next":J
    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    .line 348
    if-eqz v0, :cond_1b

    .end local v6    # "next":J
    :goto_1a
    return-wide v6

    .line 350
    :cond_1b
    const/4 v0, 0x0

    invoke-direct {p0, v0, v10, v11}, Ljava/util/concurrent/locks/StampedLock;->acquireWrite(ZJ)J

    move-result-wide v6

    goto :goto_1a
.end method

.method public writeLockInterruptibly()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 408
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_14

    .line 409
    const/4 v2, 0x1

    const-wide/16 v4, 0x0

    invoke-direct {p0, v2, v4, v5}, Ljava/util/concurrent/locks/StampedLock;->acquireWrite(ZJ)J

    move-result-wide v0

    .local v0, "next":J
    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_14

    .line 410
    return-wide v0

    .line 411
    .end local v0    # "next":J
    :cond_14
    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2
.end method
