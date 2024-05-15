.class public final Ljava/util/SplittableRandom;
.super Ljava/lang/Object;
.source "SplittableRandom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/SplittableRandom$RandomDoublesSpliterator;,
        Ljava/util/SplittableRandom$RandomLongsSpliterator;,
        Ljava/util/SplittableRandom$RandomIntsSpliterator;
    }
.end annotation


# static fields
.field static final greylist-max-o BAD_BOUND:Ljava/lang/String; = "bound must be positive"

.field static final greylist-max-o BAD_RANGE:Ljava/lang/String; = "bound must be greater than origin"

.field static final greylist-max-o BAD_SIZE:Ljava/lang/String; = "size must be non-negative"

.field private static final greylist-max-o DOUBLE_UNIT:D = 1.1102230246251565E-16

.field private static final greylist-max-o GOLDEN_GAMMA:J = -0x61c8864680b583ebL

.field private static final greylist-max-o defaultGen:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final greylist-max-o gamma:J

.field private greylist-max-o seed:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 11

    .line 230
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/util/SplittableRandom;->mix64(J)J

    move-result-wide v1

    .line 232
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/util/SplittableRandom;->mix64(J)J

    move-result-wide v3

    xor-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Ljava/util/SplittableRandom;->defaultGen:Ljava/util/concurrent/atomic/AtomicLong;

    .line 236
    new-instance v0, Ljava/util/SplittableRandom$1;

    invoke-direct {v0}, Ljava/util/SplittableRandom$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 241
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/security/SecureRandom;->getSeed(I)[B

    move-result-object v1

    .line 242
    .local v1, "seedBytes":[B
    const/4 v2, 0x0

    aget-byte v2, v1, v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    .line 243
    .local v2, "s":J
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_37
    if-ge v6, v0, :cond_44

    .line 244
    shl-long v7, v2, v0

    aget-byte v9, v1, v6

    int-to-long v9, v9

    and-long/2addr v9, v4

    or-long v2, v7, v9

    .line 243
    add-int/lit8 v6, v6, 0x1

    goto :goto_37

    .line 245
    .end local v6    # "i":I
    :cond_44
    sget-object v0, Ljava/util/SplittableRandom;->defaultGen:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 247
    .end local v1    # "seedBytes":[B
    .end local v2    # "s":J
    :cond_49
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>()V
    .registers 5

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    sget-object v0, Ljava/util/SplittableRandom;->defaultGen:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, 0x3c6ef372fe94f82aL    # 1.3422845051698468E-17

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    move-result-wide v0

    .line 379
    .local v0, "s":J
    invoke-static {v0, v1}, Ljava/util/SplittableRandom;->mix64(J)J

    move-result-wide v2

    iput-wide v2, p0, Ljava/util/SplittableRandom;->seed:J

    .line 380
    const-wide v2, -0x61c8864680b583ebL

    add-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/util/SplittableRandom;->mixGamma(J)J

    move-result-wide v2

    iput-wide v2, p0, Ljava/util/SplittableRandom;->gamma:J

    .line 381
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(J)V
    .registers 5
    .param p1, "seed"    # J

    .line 368
    const-wide v0, -0x61c8864680b583ebL

    invoke-direct {p0, p1, p2, v0, v1}, Ljava/util/SplittableRandom;-><init>(JJ)V

    .line 369
    return-void
.end method

.method private constructor greylist-max-o <init>(JJ)V
    .registers 5
    .param p1, "seed"    # J
    .param p3, "gamma"    # J

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-wide p1, p0, Ljava/util/SplittableRandom;->seed:J

    .line 184
    iput-wide p3, p0, Ljava/util/SplittableRandom;->gamma:J

    .line 185
    return-void
.end method

.method private static greylist-max-o mix32(J)I
    .registers 6
    .param p0, "z"    # J

    .line 200
    const/16 v0, 0x21

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    const-wide v2, 0x62a9d9ed799705f5L    # 1.905503099867627E167

    mul-long/2addr v0, v2

    .line 201
    .end local p0    # "z":J
    .local v0, "z":J
    const/16 p0, 0x1c

    ushr-long p0, v0, p0

    xor-long/2addr p0, v0

    const-wide v2, -0x34db2f5a3773ca4dL    # -9.968418789810265E53

    mul-long/2addr p0, v2

    const/16 v2, 0x20

    ushr-long/2addr p0, v2

    long-to-int p0, p0

    return p0
.end method

.method private static greylist-max-o mix64(J)J
    .registers 6
    .param p0, "z"    # J

    .line 191
    const/16 v0, 0x1e

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    const-wide v2, -0x40a7b892e31b1a47L    # -0.0014818730883930777

    mul-long/2addr v0, v2

    .line 192
    .end local p0    # "z":J
    .local v0, "z":J
    const/16 p0, 0x1b

    ushr-long p0, v0, p0

    xor-long/2addr p0, v0

    const-wide v2, -0x6b2fb644ecceee15L    # -1.981759996145912E-208

    mul-long/2addr p0, v2

    .line 193
    .end local v0    # "z":J
    .restart local p0    # "z":J
    const/16 v0, 0x1f

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    return-wide v0
.end method

.method private static greylist-max-o mixGamma(J)J
    .registers 7
    .param p0, "z"    # J

    .line 208
    const/16 v0, 0x21

    ushr-long v1, p0, v0

    xor-long/2addr v1, p0

    const-wide v3, -0xae502812aa7333L

    mul-long/2addr v1, v3

    .line 209
    .end local p0    # "z":J
    .local v1, "z":J
    ushr-long p0, v1, v0

    xor-long/2addr p0, v1

    const-wide v3, -0x3b314601e57a13adL    # -2.902039044684214E23

    mul-long/2addr p0, v3

    .line 210
    .end local v1    # "z":J
    .restart local p0    # "z":J
    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    const-wide/16 v2, 0x1

    or-long p0, v0, v2

    .line 211
    const/4 v0, 0x1

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    .line 212
    .local v0, "n":I
    const/16 v1, 0x18

    if-ge v0, v1, :cond_2e

    const-wide v1, -0x5555555555555556L

    xor-long/2addr v1, p0

    goto :goto_2f

    :cond_2e
    move-wide v1, p0

    :goto_2f
    return-wide v1
.end method

.method private greylist-max-o nextSeed()J
    .registers 5

    .line 219
    iget-wide v0, p0, Ljava/util/SplittableRandom;->seed:J

    iget-wide v2, p0, Ljava/util/SplittableRandom;->gamma:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/SplittableRandom;->seed:J

    return-wide v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api doubles()Ljava/util/stream/DoubleStream;
    .registers 12

    .line 764
    new-instance v10, Ljava/util/SplittableRandom$RandomDoublesSpliterator;

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide/16 v8, 0x0

    move-object v0, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Ljava/util/SplittableRandom$RandomDoublesSpliterator;-><init>(Ljava/util/SplittableRandom;JJDD)V

    .line 765
    const/4 v0, 0x0

    invoke-static {v10, v0}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    move-result-object v0

    .line 764
    return-object v0
.end method

.method public whitelist core-platform-api test-api doubles(DD)Ljava/util/stream/DoubleStream;
    .registers 16
    .param p1, "randomNumberOrigin"    # D
    .param p3, "randomNumberBound"    # D

    .line 814
    cmpg-double v0, p1, p3

    if-gez v0, :cond_1a

    .line 816
    new-instance v0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;

    const-wide/16 v3, 0x0

    const-wide v5, 0x7fffffffffffffffL

    move-object v1, v0

    move-object v2, p0

    move-wide v7, p1

    move-wide v9, p3

    invoke-direct/range {v1 .. v10}, Ljava/util/SplittableRandom$RandomDoublesSpliterator;-><init>(Ljava/util/SplittableRandom;JJDD)V

    const/4 v1, 0x0

    .line 817
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    move-result-object v0

    .line 816
    return-object v0

    .line 815
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api doubles(J)Ljava/util/stream/DoubleStream;
    .registers 14
    .param p1, "streamSize"    # J

    .line 745
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1d

    .line 747
    new-instance v0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;

    const-wide/16 v3, 0x0

    const-wide v7, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide/16 v9, 0x0

    move-object v1, v0

    move-object v2, p0

    move-wide v5, p1

    invoke-direct/range {v1 .. v10}, Ljava/util/SplittableRandom$RandomDoublesSpliterator;-><init>(Ljava/util/SplittableRandom;JJDD)V

    const/4 v1, 0x0

    .line 748
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    move-result-object v0

    .line 747
    return-object v0

    .line 746
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api doubles(JDD)Ljava/util/stream/DoubleStream;
    .registers 19
    .param p1, "streamSize"    # J
    .param p3, "randomNumberOrigin"    # D
    .param p5, "randomNumberBound"    # D

    .line 788
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_25

    .line 790
    cmpg-double v0, p3, p5

    if-gez v0, :cond_1d

    .line 792
    new-instance v0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;

    const-wide/16 v4, 0x0

    move-object v2, v0

    move-object v3, p0

    move-wide v6, p1

    move-wide v8, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v2 .. v11}, Ljava/util/SplittableRandom$RandomDoublesSpliterator;-><init>(Ljava/util/SplittableRandom;JJDD)V

    const/4 v1, 0x0

    .line 793
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    move-result-object v0

    .line 792
    return-object v0

    .line 791
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 789
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final greylist-max-o internalNextDouble(DD)D
    .registers 11
    .param p1, "origin"    # D
    .param p3, "bound"    # D

    .line 349
    invoke-virtual {p0}, Ljava/util/SplittableRandom;->nextLong()J

    move-result-wide v0

    const/16 v2, 0xb

    ushr-long/2addr v0, v2

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ca0000000000000L

    mul-double/2addr v0, v2

    .line 350
    .local v0, "r":D
    cmpg-double v2, p1, p3

    if-gez v2, :cond_23

    .line 351
    sub-double v2, p3, p1

    mul-double/2addr v2, v0

    add-double v0, v2, p1

    .line 352
    cmpl-double v2, v0, p3

    if-ltz v2, :cond_23

    .line 353
    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 355
    :cond_23
    return-wide v0
.end method

.method final greylist-max-o internalNextInt(II)I
    .registers 9
    .param p1, "origin"    # I
    .param p2, "bound"    # I

    .line 321
    invoke-direct {p0}, Ljava/util/SplittableRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/SplittableRandom;->mix32(J)I

    move-result v0

    .line 322
    .local v0, "r":I
    if-ge p1, p2, :cond_3d

    .line 323
    sub-int v1, p2, p1

    .local v1, "n":I
    add-int/lit8 v2, v1, -0x1

    .line 324
    .local v2, "m":I
    and-int v3, v1, v2

    if-nez v3, :cond_17

    .line 325
    and-int v3, v0, v2

    add-int v0, v3, p1

    goto :goto_3d

    .line 326
    :cond_17
    if-lez v1, :cond_30

    .line 327
    ushr-int/lit8 v3, v0, 0x1

    .line 328
    .local v3, "u":I
    :goto_1b
    add-int v4, v3, v2

    rem-int v5, v3, v1

    move v0, v5

    sub-int/2addr v4, v5

    if-gez v4, :cond_2e

    .line 329
    invoke-direct {p0}, Ljava/util/SplittableRandom;->nextSeed()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/util/SplittableRandom;->mix32(J)I

    move-result v4

    ushr-int/lit8 v3, v4, 0x1

    goto :goto_1b

    .line 331
    .end local v3    # "u":I
    :cond_2e
    add-int/2addr v0, p1

    goto :goto_3d

    .line 334
    :cond_30
    :goto_30
    if-lt v0, p1, :cond_34

    if-lt v0, p2, :cond_3d

    .line 335
    :cond_34
    invoke-direct {p0}, Ljava/util/SplittableRandom;->nextSeed()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/util/SplittableRandom;->mix32(J)I

    move-result v0

    goto :goto_30

    .line 338
    .end local v1    # "n":I
    .end local v2    # "m":I
    :cond_3d
    :goto_3d
    return v0
.end method

.method final greylist-max-o internalNextLong(JJ)J
    .registers 21
    .param p1, "origin"    # J
    .param p3, "bound"    # J

    .line 292
    invoke-direct/range {p0 .. p0}, Ljava/util/SplittableRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/SplittableRandom;->mix64(J)J

    move-result-wide v0

    .line 293
    .local v0, "r":J
    cmp-long v2, p1, p3

    if-gez v2, :cond_4f

    .line 294
    sub-long v2, p3, p1

    .local v2, "n":J
    const-wide/16 v4, 0x1

    sub-long v4, v2, v4

    .line 295
    .local v4, "m":J
    and-long v6, v2, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_1f

    .line 296
    and-long v6, v0, v4

    add-long v0, v6, p1

    goto :goto_4f

    .line 297
    :cond_1f
    cmp-long v6, v2, v8

    if-lez v6, :cond_3e

    .line 298
    const/4 v6, 0x1

    ushr-long v10, v0, v6

    .line 299
    .local v10, "u":J
    :goto_26
    add-long v12, v10, v4

    rem-long v14, v10, v2

    move-wide v0, v14

    sub-long/2addr v12, v14

    cmp-long v7, v12, v8

    if-gez v7, :cond_3b

    .line 300
    invoke-direct/range {p0 .. p0}, Ljava/util/SplittableRandom;->nextSeed()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/util/SplittableRandom;->mix64(J)J

    move-result-wide v12

    ushr-long v10, v12, v6

    goto :goto_26

    .line 302
    .end local v10    # "u":J
    :cond_3b
    add-long v0, v0, p1

    goto :goto_4f

    .line 305
    :cond_3e
    :goto_3e
    cmp-long v6, v0, p1

    if-ltz v6, :cond_46

    cmp-long v6, v0, p3

    if-ltz v6, :cond_4f

    .line 306
    :cond_46
    invoke-direct/range {p0 .. p0}, Ljava/util/SplittableRandom;->nextSeed()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/util/SplittableRandom;->mix64(J)J

    move-result-wide v0

    goto :goto_3e

    .line 309
    .end local v2    # "n":J
    .end local v4    # "m":J
    :cond_4f
    :goto_4f
    return-wide v0
.end method

.method public whitelist core-platform-api test-api ints()Ljava/util/stream/IntStream;
    .registers 10

    .line 591
    new-instance v8, Ljava/util/SplittableRandom$RandomIntsSpliterator;

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    const v6, 0x7fffffff

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Ljava/util/SplittableRandom$RandomIntsSpliterator;-><init>(Ljava/util/SplittableRandom;JJII)V

    .line 592
    const/4 v0, 0x0

    invoke-static {v8, v0}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 591
    return-object v0
.end method

.method public whitelist core-platform-api test-api ints(II)Ljava/util/stream/IntStream;
    .registers 12
    .param p1, "randomNumberOrigin"    # I
    .param p2, "randomNumberBound"    # I

    .line 640
    if-ge p1, p2, :cond_18

    .line 642
    new-instance v8, Ljava/util/SplittableRandom$RandomIntsSpliterator;

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, v8

    move-object v1, p0

    move v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Ljava/util/SplittableRandom$RandomIntsSpliterator;-><init>(Ljava/util/SplittableRandom;JJII)V

    const/4 v0, 0x0

    .line 643
    invoke-static {v8, v0}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 642
    return-object v0

    .line 641
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api ints(J)Ljava/util/stream/IntStream;
    .registers 12
    .param p1, "streamSize"    # J

    .line 573
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1a

    .line 575
    new-instance v0, Ljava/util/SplittableRandom$RandomIntsSpliterator;

    const-wide/16 v3, 0x0

    const v7, 0x7fffffff

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p0

    move-wide v5, p1

    invoke-direct/range {v1 .. v8}, Ljava/util/SplittableRandom$RandomIntsSpliterator;-><init>(Ljava/util/SplittableRandom;JJII)V

    const/4 v1, 0x0

    .line 576
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 575
    return-object v0

    .line 574
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api ints(JII)Ljava/util/stream/IntStream;
    .registers 14
    .param p1, "streamSize"    # J
    .param p3, "randomNumberOrigin"    # I
    .param p4, "randomNumberBound"    # I

    .line 614
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_22

    .line 616
    if-ge p3, p4, :cond_1a

    .line 618
    new-instance v0, Ljava/util/SplittableRandom$RandomIntsSpliterator;

    const-wide/16 v3, 0x0

    move-object v1, v0

    move-object v2, p0

    move-wide v5, p1

    move v7, p3

    move v8, p4

    invoke-direct/range {v1 .. v8}, Ljava/util/SplittableRandom$RandomIntsSpliterator;-><init>(Ljava/util/SplittableRandom;JJII)V

    const/4 v1, 0x0

    .line 619
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 618
    return-object v0

    .line 617
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 615
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api longs()Ljava/util/stream/LongStream;
    .registers 12

    .line 677
    new-instance v10, Ljava/util/SplittableRandom$RandomLongsSpliterator;

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    const-wide v6, 0x7fffffffffffffffL

    const-wide/16 v8, 0x0

    move-object v0, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Ljava/util/SplittableRandom$RandomLongsSpliterator;-><init>(Ljava/util/SplittableRandom;JJJJ)V

    .line 678
    const/4 v0, 0x0

    invoke-static {v10, v0}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    move-result-object v0

    .line 677
    return-object v0
.end method

.method public whitelist core-platform-api test-api longs(J)Ljava/util/stream/LongStream;
    .registers 14
    .param p1, "streamSize"    # J

    .line 659
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1d

    .line 661
    new-instance v0, Ljava/util/SplittableRandom$RandomLongsSpliterator;

    const-wide/16 v3, 0x0

    const-wide v7, 0x7fffffffffffffffL

    const-wide/16 v9, 0x0

    move-object v1, v0

    move-object v2, p0

    move-wide v5, p1

    invoke-direct/range {v1 .. v10}, Ljava/util/SplittableRandom$RandomLongsSpliterator;-><init>(Ljava/util/SplittableRandom;JJJJ)V

    const/4 v1, 0x0

    .line 662
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    move-result-object v0

    .line 661
    return-object v0

    .line 660
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api longs(JJ)Ljava/util/stream/LongStream;
    .registers 16
    .param p1, "randomNumberOrigin"    # J
    .param p3, "randomNumberBound"    # J

    .line 726
    cmp-long v0, p1, p3

    if-gez v0, :cond_1a

    .line 728
    new-instance v0, Ljava/util/SplittableRandom$RandomLongsSpliterator;

    const-wide/16 v3, 0x0

    const-wide v5, 0x7fffffffffffffffL

    move-object v1, v0

    move-object v2, p0

    move-wide v7, p1

    move-wide v9, p3

    invoke-direct/range {v1 .. v10}, Ljava/util/SplittableRandom$RandomLongsSpliterator;-><init>(Ljava/util/SplittableRandom;JJJJ)V

    const/4 v1, 0x0

    .line 729
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    move-result-object v0

    .line 728
    return-object v0

    .line 727
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api longs(JJJ)Ljava/util/stream/LongStream;
    .registers 19
    .param p1, "streamSize"    # J
    .param p3, "randomNumberOrigin"    # J
    .param p5, "randomNumberBound"    # J

    .line 700
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_25

    .line 702
    cmp-long v0, p3, p5

    if-gez v0, :cond_1d

    .line 704
    new-instance v0, Ljava/util/SplittableRandom$RandomLongsSpliterator;

    const-wide/16 v4, 0x0

    move-object v2, v0

    move-object v3, p0

    move-wide v6, p1

    move-wide v8, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v2 .. v11}, Ljava/util/SplittableRandom$RandomLongsSpliterator;-><init>(Ljava/util/SplittableRandom;JJJJ)V

    const/4 v1, 0x0

    .line 705
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    move-result-object v0

    .line 704
    return-object v0

    .line 703
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 701
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api nextBoolean()Z
    .registers 3

    .line 556
    invoke-direct {p0}, Ljava/util/SplittableRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/SplittableRandom;->mix32(J)I

    move-result v0

    if-gez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public whitelist core-platform-api test-api nextDouble()D
    .registers 5

    .line 513
    invoke-direct {p0}, Ljava/util/SplittableRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/SplittableRandom;->mix64(J)J

    move-result-wide v0

    const/16 v2, 0xb

    ushr-long/2addr v0, v2

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ca0000000000000L

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public whitelist core-platform-api test-api nextDouble(D)D
    .registers 9
    .param p1, "bound"    # D

    .line 526
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_28

    .line 528
    invoke-direct {p0}, Ljava/util/SplittableRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/SplittableRandom;->mix64(J)J

    move-result-wide v0

    const/16 v2, 0xb

    ushr-long/2addr v0, v2

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ca0000000000000L

    mul-double/2addr v0, v2

    mul-double/2addr v0, p1

    .line 529
    .local v0, "result":D
    cmpg-double v2, v0, p1

    if-gez v2, :cond_1c

    move-wide v2, v0

    goto :goto_27

    .line 530
    :cond_1c
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    .line 529
    :goto_27
    return-wide v2

    .line 527
    .end local v0    # "result":D
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api nextDouble(DD)D
    .registers 7
    .param p1, "origin"    # D
    .param p3, "bound"    # D

    .line 545
    cmpg-double v0, p1, p3

    if-gez v0, :cond_9

    .line 547
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/SplittableRandom;->internalNextDouble(DD)D

    move-result-wide v0

    return-wide v0

    .line 546
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api nextInt()I
    .registers 3

    .line 407
    invoke-direct {p0}, Ljava/util/SplittableRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/SplittableRandom;->mix32(J)I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api nextInt(I)I
    .registers 7
    .param p1, "bound"    # I

    .line 420
    if-lez p1, :cond_28

    .line 423
    invoke-direct {p0}, Ljava/util/SplittableRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/SplittableRandom;->mix32(J)I

    move-result v0

    .line 424
    .local v0, "r":I
    add-int/lit8 v1, p1, -0x1

    .line 425
    .local v1, "m":I
    and-int v2, p1, v1

    if-nez v2, :cond_12

    .line 426
    and-int/2addr v0, v1

    goto :goto_27

    .line 428
    :cond_12
    ushr-int/lit8 v2, v0, 0x1

    .line 429
    .local v2, "u":I
    :goto_14
    add-int v3, v2, v1

    rem-int v4, v2, p1

    move v0, v4

    sub-int/2addr v3, v4

    if-gez v3, :cond_27

    .line 430
    invoke-direct {p0}, Ljava/util/SplittableRandom;->nextSeed()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/util/SplittableRandom;->mix32(J)I

    move-result v3

    ushr-int/lit8 v2, v3, 0x1

    goto :goto_14

    .line 433
    .end local v2    # "u":I
    :cond_27
    :goto_27
    return v0

    .line 421
    .end local v0    # "r":I
    .end local v1    # "m":I
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api nextInt(II)I
    .registers 5
    .param p1, "origin"    # I
    .param p2, "bound"    # I

    .line 448
    if-ge p1, p2, :cond_7

    .line 450
    invoke-virtual {p0, p1, p2}, Ljava/util/SplittableRandom;->internalNextInt(II)I

    move-result v0

    return v0

    .line 449
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api nextLong()J
    .registers 3

    .line 459
    invoke-direct {p0}, Ljava/util/SplittableRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/SplittableRandom;->mix64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist core-platform-api test-api nextLong(J)J
    .registers 16
    .param p1, "bound"    # J

    .line 472
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_35

    .line 475
    invoke-direct {p0}, Ljava/util/SplittableRandom;->nextSeed()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/util/SplittableRandom;->mix64(J)J

    move-result-wide v2

    .line 476
    .local v2, "r":J
    const-wide/16 v4, 0x1

    sub-long v4, p1, v4

    .line 477
    .local v4, "m":J
    and-long v6, p1, v4

    cmp-long v6, v6, v0

    if-nez v6, :cond_1b

    .line 478
    and-long v0, v2, v4

    .end local v2    # "r":J
    .local v0, "r":J
    goto :goto_34

    .line 480
    .end local v0    # "r":J
    .restart local v2    # "r":J
    :cond_1b
    const/4 v6, 0x1

    ushr-long v7, v2, v6

    .line 481
    .local v7, "u":J
    :goto_1e
    add-long v9, v7, v4

    rem-long v11, v7, p1

    move-wide v2, v11

    sub-long/2addr v9, v11

    cmp-long v9, v9, v0

    if-gez v9, :cond_33

    .line 482
    invoke-direct {p0}, Ljava/util/SplittableRandom;->nextSeed()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/util/SplittableRandom;->mix64(J)J

    move-result-wide v9

    ushr-long v7, v9, v6

    goto :goto_1e

    .line 481
    :cond_33
    move-wide v0, v2

    .line 485
    .end local v2    # "r":J
    .end local v7    # "u":J
    .restart local v0    # "r":J
    :goto_34
    return-wide v0

    .line 473
    .end local v0    # "r":J
    .end local v4    # "m":J
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api nextLong(JJ)J
    .registers 7
    .param p1, "origin"    # J
    .param p3, "bound"    # J

    .line 500
    cmp-long v0, p1, p3

    if-gez v0, :cond_9

    .line 502
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/SplittableRandom;->internalNextLong(JJ)J

    move-result-wide v0

    return-wide v0

    .line 501
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api split()Ljava/util/SplittableRandom;
    .registers 6

    .line 398
    new-instance v0, Ljava/util/SplittableRandom;

    invoke-virtual {p0}, Ljava/util/SplittableRandom;->nextLong()J

    move-result-wide v1

    invoke-direct {p0}, Ljava/util/SplittableRandom;->nextSeed()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/util/SplittableRandom;->mixGamma(J)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/SplittableRandom;-><init>(JJ)V

    return-object v0
.end method
