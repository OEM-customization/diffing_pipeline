.class abstract Ljava/util/concurrent/atomic/Striped64;
.super Ljava/lang/Number;
.source "Striped64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/atomic/Striped64$Cell;
    }
.end annotation


# static fields
.field private static final greylist-max-o BASE:J

.field private static final greylist-max-o CELLSBUSY:J

.field static final greylist-max-o NCPU:I

.field private static final greylist-max-o PROBE:J

.field private static final greylist-max-o U:Lsun/misc/Unsafe;


# instance fields
.field volatile transient greylist-max-o base:J

.field volatile transient greylist-max-o cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

.field volatile transient greylist-max-o cellsBusy:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 151
    const-class v0, Ljava/util/concurrent/atomic/Striped64;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    sput v1, Ljava/util/concurrent/atomic/Striped64;->NCPU:I

    .line 377
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/atomic/Striped64;->U:Lsun/misc/Unsafe;

    .line 383
    :try_start_12
    const-string v2, "base"

    .line 384
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Ljava/util/concurrent/atomic/Striped64;->BASE:J

    .line 385
    sget-object v1, Ljava/util/concurrent/atomic/Striped64;->U:Lsun/misc/Unsafe;

    const-string v2, "cellsBusy"

    .line 386
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/atomic/Striped64;->CELLSBUSY:J

    .line 388
    sget-object v0, Ljava/util/concurrent/atomic/Striped64;->U:Lsun/misc/Unsafe;

    const-class v1, Ljava/lang/Thread;

    const-string v2, "threadLocalRandomProbe"

    .line 389
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/atomic/Striped64;->PROBE:J
    :try_end_3c
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_12 .. :try_end_3c} :catch_3e

    .line 392
    nop

    .line 393
    return-void

    .line 390
    :catch_3e
    move-exception v0

    .line 391
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor greylist-max-o <init>()V
    .registers 1

    .line 172
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 173
    return-void
.end method

.method static final greylist-max-o advanceProbe(I)I
    .registers 5
    .param p0, "probe"    # I

    .line 203
    shl-int/lit8 v0, p0, 0xd

    xor-int/2addr p0, v0

    .line 204
    ushr-int/lit8 v0, p0, 0x11

    xor-int/2addr p0, v0

    .line 205
    shl-int/lit8 v0, p0, 0x5

    xor-int/2addr p0, v0

    .line 206
    sget-object v0, Ljava/util/concurrent/atomic/Striped64;->U:Lsun/misc/Unsafe;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    sget-wide v2, Ljava/util/concurrent/atomic/Striped64;->PROBE:J

    invoke-virtual {v0, v1, v2, v3, p0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 207
    return p0
.end method

.method private static greylist-max-o apply(Ljava/util/function/DoubleBinaryOperator;JD)J
    .registers 9
    .param p0, "fn"    # Ljava/util/function/DoubleBinaryOperator;
    .param p1, "v"    # J
    .param p3, "x"    # D

    .line 295
    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 296
    .local v0, "d":D
    if-nez p0, :cond_9

    add-double v2, v0, p3

    goto :goto_d

    :cond_9
    invoke-interface {p0, v0, v1, p3, p4}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v2

    :goto_d
    move-wide v0, v2

    .line 297
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    return-wide v2
.end method

.method static final greylist-max-o getProbe()I
    .registers 4

    .line 194
    sget-object v0, Ljava/util/concurrent/atomic/Striped64;->U:Lsun/misc/Unsafe;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    sget-wide v2, Ljava/util/concurrent/atomic/Striped64;->PROBE:J

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method


# virtual methods
.method final greylist-max-o casBase(JJ)Z
    .registers 13
    .param p1, "cmp"    # J
    .param p3, "val"    # J

    .line 179
    sget-object v0, Ljava/util/concurrent/atomic/Striped64;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/Striped64;->BASE:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method

.method final greylist-max-o casCellsBusy()Z
    .registers 7

    .line 186
    sget-object v0, Ljava/util/concurrent/atomic/Striped64;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/Striped64;->CELLSBUSY:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0
.end method

.method final greylist-max-o doubleAccumulate(DLjava/util/function/DoubleBinaryOperator;Z)V
    .registers 21
    .param p1, "x"    # D
    .param p3, "fn"    # Ljava/util/function/DoubleBinaryOperator;
    .param p4, "wasUncontended"    # Z

    .line 309
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    invoke-static {}, Ljava/util/concurrent/atomic/Striped64;->getProbe()I

    move-result v0

    move v5, v0

    .local v5, "h":I
    if-nez v0, :cond_16

    .line 310
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    .line 311
    invoke-static {}, Ljava/util/concurrent/atomic/Striped64;->getProbe()I

    move-result v5

    .line 312
    const/4 v0, 0x1

    .end local p4    # "wasUncontended":Z
    .local v0, "wasUncontended":Z
    goto :goto_18

    .line 309
    .end local v0    # "wasUncontended":Z
    .restart local p4    # "wasUncontended":Z
    :cond_16
    move/from16 v0, p4

    .line 314
    .end local p4    # "wasUncontended":Z
    .restart local v0    # "wasUncontended":Z
    :goto_18
    const/4 v6, 0x0

    move v7, v6

    move v6, v5

    move v5, v0

    .line 317
    .end local v0    # "wasUncontended":Z
    .local v5, "wasUncontended":Z
    .local v6, "h":I
    .local v7, "collide":Z
    :goto_1c
    iget-object v0, v1, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    move-object v8, v0

    .local v8, "as":[Ljava/util/concurrent/atomic/Striped64$Cell;
    const/4 v9, 0x0

    if-eqz v0, :cond_b9

    array-length v0, v8

    move v10, v0

    .local v10, "n":I
    if-lez v0, :cond_b8

    .line 318
    add-int/lit8 v0, v10, -0x1

    and-int/2addr v0, v6

    aget-object v0, v8, v0

    move-object v11, v0

    .local v11, "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-nez v0, :cond_68

    .line 319
    iget v0, v1, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    if-nez v0, :cond_65

    .line 320
    new-instance v0, Ljava/util/concurrent/atomic/Striped64$Cell;

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v12

    invoke-direct {v0, v12, v13}, Ljava/util/concurrent/atomic/Striped64$Cell;-><init>(J)V

    move-object v12, v0

    .line 321
    .local v12, "r":Ljava/util/concurrent/atomic/Striped64$Cell;
    iget v0, v1, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    if-nez v0, :cond_65

    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/atomic/Striped64;->casCellsBusy()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 324
    :try_start_46
    iget-object v0, v1, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    move-object v13, v0

    .local v13, "rs":[Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v0, :cond_5d

    array-length v0, v13

    move v14, v0

    .local v14, "m":I
    if-lez v0, :cond_5d

    add-int/lit8 v0, v14, -0x1

    and-int/2addr v0, v6

    move v15, v0

    .local v15, "j":I
    aget-object v0, v13, v0

    if-nez v0, :cond_5d

    .line 327
    aput-object v12, v13, v15
    :try_end_59
    .catchall {:try_start_46 .. :try_end_59} :catchall_61

    .line 331
    iput v9, v1, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    .line 328
    goto/16 :goto_f8

    .line 331
    .end local v13    # "rs":[Ljava/util/concurrent/atomic/Striped64$Cell;
    .end local v14    # "m":I
    .end local v15    # "j":I
    :cond_5d
    iput v9, v1, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    .line 332
    nop

    .line 333
    goto :goto_1c

    .line 331
    :catchall_61
    move-exception v0

    iput v9, v1, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    .line 332
    throw v0

    .line 336
    .end local v12    # "r":Ljava/util/concurrent/atomic/Striped64$Cell;
    :cond_65
    const/4 v7, 0x0

    move v9, v10

    goto :goto_b2

    .line 338
    :cond_68
    if-nez v5, :cond_6d

    .line 339
    const/4 v5, 0x1

    move v9, v10

    goto :goto_b2

    .line 340
    :cond_6d
    iget-wide v12, v11, Ljava/util/concurrent/atomic/Striped64$Cell;->value:J

    move-wide v14, v12

    move/from16 p4, v10

    .end local v10    # "n":I
    .local v14, "v":J
    .local p4, "n":I
    invoke-static {v4, v14, v15, v2, v3}, Ljava/util/concurrent/atomic/Striped64;->apply(Ljava/util/function/DoubleBinaryOperator;JD)J

    move-result-wide v9

    invoke-virtual {v11, v12, v13, v9, v10}, Ljava/util/concurrent/atomic/Striped64$Cell;->cas(JJ)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 341
    goto/16 :goto_f8

    .line 342
    :cond_7e
    sget v0, Ljava/util/concurrent/atomic/Striped64;->NCPU:I

    move/from16 v9, p4

    .end local p4    # "n":I
    .local v9, "n":I
    if-ge v9, v0, :cond_b1

    iget-object v0, v1, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    if-eq v0, v8, :cond_89

    goto :goto_b1

    .line 344
    :cond_89
    if-nez v7, :cond_8d

    .line 345
    const/4 v7, 0x1

    goto :goto_b2

    .line 346
    :cond_8d
    iget v0, v1, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    if-nez v0, :cond_b2

    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/atomic/Striped64;->casCellsBusy()Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 348
    :try_start_97
    iget-object v0, v1, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    if-ne v0, v8, :cond_a5

    .line 349
    shl-int/lit8 v0, v9, 0x1

    invoke-static {v8, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/concurrent/atomic/Striped64$Cell;

    iput-object v0, v1, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;
    :try_end_a5
    .catchall {:try_start_97 .. :try_end_a5} :catchall_ac

    .line 351
    :cond_a5
    const/4 v10, 0x0

    iput v10, v1, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    .line 352
    nop

    .line 353
    const/4 v7, 0x0

    .line 354
    goto/16 :goto_1c

    .line 351
    :catchall_ac
    move-exception v0

    const/4 v10, 0x0

    iput v10, v1, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    .line 352
    throw v0

    .line 343
    :cond_b1
    :goto_b1
    const/4 v7, 0x0

    .line 356
    .end local v14    # "v":J
    :cond_b2
    :goto_b2
    invoke-static {v6}, Ljava/util/concurrent/atomic/Striped64;->advanceProbe(I)I

    move-result v0

    move v6, v0

    .end local v6    # "h":I
    .local v0, "h":I
    goto :goto_f9

    .line 317
    .end local v0    # "h":I
    .end local v9    # "n":I
    .end local v11    # "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    .restart local v6    # "h":I
    .restart local v10    # "n":I
    :cond_b8
    move v9, v10

    .line 358
    .end local v10    # "n":I
    :cond_b9
    iget v0, v1, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    if-nez v0, :cond_ea

    iget-object v0, v1, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    if-ne v0, v8, :cond_ea

    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/atomic/Striped64;->casCellsBusy()Z

    move-result v0

    if-eqz v0, :cond_ea

    .line 360
    :try_start_c7
    iget-object v0, v1, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    if-ne v0, v8, :cond_e1

    .line 361
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/concurrent/atomic/Striped64$Cell;

    .line 362
    .local v0, "rs":[Ljava/util/concurrent/atomic/Striped64$Cell;
    and-int/lit8 v9, v6, 0x1

    new-instance v10, Ljava/util/concurrent/atomic/Striped64$Cell;

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v11

    invoke-direct {v10, v11, v12}, Ljava/util/concurrent/atomic/Striped64$Cell;-><init>(J)V

    aput-object v10, v0, v9

    .line 363
    iput-object v0, v1, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;
    :try_end_dd
    .catchall {:try_start_c7 .. :try_end_dd} :catchall_e5

    .line 367
    const/4 v9, 0x0

    iput v9, v1, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    .line 364
    goto :goto_f8

    .line 367
    .end local v0    # "rs":[Ljava/util/concurrent/atomic/Striped64$Cell;
    :cond_e1
    const/4 v9, 0x0

    iput v9, v1, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    .line 368
    goto :goto_f9

    .line 367
    :catchall_e5
    move-exception v0

    const/4 v9, 0x0

    iput v9, v1, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    .line 368
    throw v0

    .line 371
    :cond_ea
    iget-wide v9, v1, Ljava/util/concurrent/atomic/Striped64;->base:J

    move-wide v11, v9

    .local v11, "v":J
    invoke-static {v4, v11, v12, v2, v3}, Ljava/util/concurrent/atomic/Striped64;->apply(Ljava/util/function/DoubleBinaryOperator;JD)J

    move-result-wide v13

    invoke-virtual {v1, v9, v10, v13, v14}, Ljava/util/concurrent/atomic/Striped64;->casBase(JJ)Z

    move-result v0

    if-eqz v0, :cond_f9

    .line 372
    nop

    .line 374
    .end local v8    # "as":[Ljava/util/concurrent/atomic/Striped64$Cell;
    .end local v11    # "v":J
    :goto_f8
    return-void

    .line 373
    :cond_f9
    :goto_f9
    goto/16 :goto_1c
.end method

.method final greylist-max-o longAccumulate(JLjava/util/function/LongBinaryOperator;Z)V
    .registers 23
    .param p1, "x"    # J
    .param p3, "fn"    # Ljava/util/function/LongBinaryOperator;
    .param p4, "wasUncontended"    # Z

    .line 225
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    invoke-static {}, Ljava/util/concurrent/atomic/Striped64;->getProbe()I

    move-result v0

    move v5, v0

    .local v5, "h":I
    if-nez v0, :cond_16

    .line 226
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    .line 227
    invoke-static {}, Ljava/util/concurrent/atomic/Striped64;->getProbe()I

    move-result v5

    .line 228
    const/4 v0, 0x1

    .end local p4    # "wasUncontended":Z
    .local v0, "wasUncontended":Z
    goto :goto_18

    .line 225
    .end local v0    # "wasUncontended":Z
    .restart local p4    # "wasUncontended":Z
    :cond_16
    move/from16 v0, p4

    .line 230
    .end local p4    # "wasUncontended":Z
    .restart local v0    # "wasUncontended":Z
    :goto_18
    const/4 v6, 0x0

    move v7, v6

    move v6, v5

    move v5, v0

    .line 233
    .end local v0    # "wasUncontended":Z
    .local v5, "wasUncontended":Z
    .local v6, "h":I
    .local v7, "collide":Z
    :goto_1c
    iget-object v0, v1, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    move-object v8, v0

    .local v8, "as":[Ljava/util/concurrent/atomic/Striped64$Cell;
    const/4 v9, 0x0

    if-eqz v0, :cond_bc

    array-length v0, v8

    move v10, v0

    .local v10, "n":I
    if-lez v0, :cond_bb

    .line 234
    add-int/lit8 v0, v10, -0x1

    and-int/2addr v0, v6

    aget-object v0, v8, v0

    move-object v11, v0

    .local v11, "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-nez v0, :cond_64

    .line 235
    iget v0, v1, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    if-nez v0, :cond_61

    .line 236
    new-instance v0, Ljava/util/concurrent/atomic/Striped64$Cell;

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/Striped64$Cell;-><init>(J)V

    move-object v12, v0

    .line 237
    .local v12, "r":Ljava/util/concurrent/atomic/Striped64$Cell;
    iget v0, v1, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    if-nez v0, :cond_61

    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/atomic/Striped64;->casCellsBusy()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 240
    :try_start_42
    iget-object v0, v1, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    move-object v13, v0

    .local v13, "rs":[Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v0, :cond_59

    array-length v0, v13

    move v14, v0

    .local v14, "m":I
    if-lez v0, :cond_59

    add-int/lit8 v0, v14, -0x1

    and-int/2addr v0, v6

    move v15, v0

    .local v15, "j":I
    aget-object v0, v13, v0

    if-nez v0, :cond_59

    .line 243
    aput-object v12, v13, v15
    :try_end_55
    .catchall {:try_start_42 .. :try_end_55} :catchall_5d

    .line 247
    iput v9, v1, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    .line 244
    goto/16 :goto_fc

    .line 247
    .end local v13    # "rs":[Ljava/util/concurrent/atomic/Striped64$Cell;
    .end local v14    # "m":I
    .end local v15    # "j":I
    :cond_59
    iput v9, v1, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    .line 248
    nop

    .line 249
    goto :goto_1c

    .line 247
    :catchall_5d
    move-exception v0

    iput v9, v1, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    .line 248
    throw v0

    .line 252
    .end local v12    # "r":Ljava/util/concurrent/atomic/Striped64$Cell;
    :cond_61
    const/4 v7, 0x0

    move v9, v10

    goto :goto_b5

    .line 254
    :cond_64
    if-nez v5, :cond_69

    .line 255
    const/4 v5, 0x1

    move v9, v10

    goto :goto_b5

    .line 256
    :cond_69
    iget-wide v12, v11, Ljava/util/concurrent/atomic/Striped64$Cell;->value:J

    move-wide v14, v12

    .line 257
    .local v14, "v":J
    if-nez v4, :cond_71

    add-long v16, v14, v2

    goto :goto_75

    :cond_71
    invoke-interface {v4, v14, v15, v2, v3}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v16

    :goto_75
    move/from16 p4, v10

    move-wide/from16 v9, v16

    .line 256
    .end local v10    # "n":I
    .local p4, "n":I
    invoke-virtual {v11, v12, v13, v9, v10}, Ljava/util/concurrent/atomic/Striped64$Cell;->cas(JJ)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 258
    goto/16 :goto_fc

    .line 259
    :cond_81
    sget v0, Ljava/util/concurrent/atomic/Striped64;->NCPU:I

    move/from16 v9, p4

    .end local p4    # "n":I
    .local v9, "n":I
    if-ge v9, v0, :cond_b4

    iget-object v0, v1, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    if-eq v0, v8, :cond_8c

    goto :goto_b4

    .line 261
    :cond_8c
    if-nez v7, :cond_90

    .line 262
    const/4 v7, 0x1

    goto :goto_b5

    .line 263
    :cond_90
    iget v0, v1, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    if-nez v0, :cond_b5

    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/atomic/Striped64;->casCellsBusy()Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 265
    :try_start_9a
    iget-object v0, v1, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    if-ne v0, v8, :cond_a8

    .line 266
    shl-int/lit8 v0, v9, 0x1

    invoke-static {v8, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/concurrent/atomic/Striped64$Cell;

    iput-object v0, v1, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;
    :try_end_a8
    .catchall {:try_start_9a .. :try_end_a8} :catchall_af

    .line 268
    :cond_a8
    const/4 v10, 0x0

    iput v10, v1, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    .line 269
    nop

    .line 270
    const/4 v7, 0x0

    .line 271
    goto/16 :goto_1c

    .line 268
    :catchall_af
    move-exception v0

    const/4 v10, 0x0

    iput v10, v1, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    .line 269
    throw v0

    .line 260
    :cond_b4
    :goto_b4
    const/4 v7, 0x0

    .line 273
    .end local v14    # "v":J
    :cond_b5
    :goto_b5
    invoke-static {v6}, Ljava/util/concurrent/atomic/Striped64;->advanceProbe(I)I

    move-result v0

    move v6, v0

    .end local v6    # "h":I
    .local v0, "h":I
    goto :goto_fd

    .line 233
    .end local v0    # "h":I
    .end local v9    # "n":I
    .end local v11    # "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    .restart local v6    # "h":I
    .restart local v10    # "n":I
    :cond_bb
    move v9, v10

    .line 275
    .end local v10    # "n":I
    :cond_bc
    iget v0, v1, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    if-nez v0, :cond_e9

    iget-object v0, v1, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    if-ne v0, v8, :cond_e9

    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/atomic/Striped64;->casCellsBusy()Z

    move-result v0

    if-eqz v0, :cond_e9

    .line 277
    :try_start_ca
    iget-object v0, v1, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    if-ne v0, v8, :cond_e0

    .line 278
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/concurrent/atomic/Striped64$Cell;

    .line 279
    .local v0, "rs":[Ljava/util/concurrent/atomic/Striped64$Cell;
    and-int/lit8 v9, v6, 0x1

    new-instance v10, Ljava/util/concurrent/atomic/Striped64$Cell;

    invoke-direct {v10, v2, v3}, Ljava/util/concurrent/atomic/Striped64$Cell;-><init>(J)V

    aput-object v10, v0, v9

    .line 280
    iput-object v0, v1, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;
    :try_end_dc
    .catchall {:try_start_ca .. :try_end_dc} :catchall_e4

    .line 284
    const/4 v9, 0x0

    iput v9, v1, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    .line 281
    goto :goto_fc

    .line 284
    .end local v0    # "rs":[Ljava/util/concurrent/atomic/Striped64$Cell;
    :cond_e0
    const/4 v9, 0x0

    iput v9, v1, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    .line 285
    goto :goto_fd

    .line 284
    :catchall_e4
    move-exception v0

    const/4 v9, 0x0

    iput v9, v1, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    .line 285
    throw v0

    .line 288
    :cond_e9
    iget-wide v9, v1, Ljava/util/concurrent/atomic/Striped64;->base:J

    move-wide v11, v9

    .line 289
    .local v11, "v":J
    if-nez v4, :cond_f1

    add-long v13, v11, v2

    goto :goto_f5

    :cond_f1
    invoke-interface {v4, v11, v12, v2, v3}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v13

    .line 288
    :goto_f5
    invoke-virtual {v1, v9, v10, v13, v14}, Ljava/util/concurrent/atomic/Striped64;->casBase(JJ)Z

    move-result v0

    if-eqz v0, :cond_fd

    .line 290
    nop

    .line 292
    .end local v8    # "as":[Ljava/util/concurrent/atomic/Striped64$Cell;
    .end local v11    # "v":J
    :goto_fc
    return-void

    .line 291
    :cond_fd
    :goto_fd
    goto/16 :goto_1c
.end method
