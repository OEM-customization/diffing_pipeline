.class public Ljava/util/Random;
.super Ljava/lang/Object;
.source "Random.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Random$RandomDoublesSpliterator;,
        Ljava/util/Random$RandomLongsSpliterator;,
        Ljava/util/Random$RandomIntsSpliterator;
    }
.end annotation


# static fields
.field static final greylist-max-o BadBound:Ljava/lang/String; = "bound must be positive"

.field static final greylist-max-o BadRange:Ljava/lang/String; = "bound must be greater than origin"

.field static final greylist-max-o BadSize:Ljava/lang/String; = "size must be non-negative"

.field private static final greylist-max-o DOUBLE_UNIT:D = 1.1102230246251565E-16

.field private static final greylist-max-o addend:J = 0xbL

.field private static final greylist-max-o mask:J = 0xffffffffffffL

.field private static final greylist-max-o multiplier:J = 0x5deece66dL

.field private static final greylist-max-o seedOffset:J

.field private static final greylist-max-o seedUniquifier:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final whitelist serialPersistentFields:[Ljava/io/ObjectStreamField;

.field static final whitelist serialVersionUID:J = 0x363296344bf00a53L

.field private static final greylist-max-o unsafe:Lsun/misc/Unsafe;


# instance fields
.field private greylist-max-o haveNextNextGaussian:Z

.field private greylist-max-o nextNextGaussian:D

.field private final greylist-max-o seed:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 119
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, 0x1ed8b55fac9decL

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Ljava/util/Random;->seedUniquifier:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1171
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    new-instance v1, Ljava/io/ObjectStreamField;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-string v3, "seed"

    invoke-direct {v1, v3, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-string v4, "nextNextGaussian"

    invoke-direct {v1, v4, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v4, "haveNextNextGaussian"

    invoke-direct {v1, v4, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Ljava/util/Random;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    .line 1216
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/util/Random;->unsafe:Lsun/misc/Unsafe;

    .line 1220
    :try_start_3b
    const-class v1, Ljava/util/Random;

    .line 1221
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/Random;->seedOffset:J
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_47} :catch_49

    .line 1222
    nop

    .line 1223
    return-void

    .line 1222
    :catch_49
    move-exception v0

    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor whitelist test-api <init>()V
    .registers 5

    .line 105
    invoke-static {}, Ljava/util/Random;->seedUniquifier()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    xor-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 106
    return-void
.end method

.method public constructor whitelist test-api <init>(J)V
    .registers 6
    .param p1, "seed"    # J

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 536
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Random;->haveNextNextGaussian:Z

    .line 136
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/Random;

    if-ne v0, v1, :cond_1a

    .line 137
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {p1, p2}, Ljava/util/Random;->initialScramble(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Ljava/util/Random;->seed:Ljava/util/concurrent/atomic/AtomicLong;

    goto :goto_24

    .line 140
    :cond_1a
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Ljava/util/Random;->seed:Ljava/util/concurrent/atomic/AtomicLong;

    .line 141
    invoke-virtual {p0, p1, p2}, Ljava/util/Random;->setSeed(J)V

    .line 143
    :goto_24
    return-void
.end method

.method private static greylist-max-o initialScramble(J)J
    .registers 6
    .param p0, "seed"    # J

    .line 146
    const-wide v0, 0x5deece66dL

    xor-long/2addr v0, p0

    const-wide v2, 0xffffffffffffL

    and-long/2addr v0, v2

    return-wide v0
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

    .line 1184
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 1188
    .local v0, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string v1, "seed"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;J)J

    move-result-wide v1

    .line 1189
    .local v1, "seedVal":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_29

    .line 1192
    invoke-direct {p0, v1, v2}, Ljava/util/Random;->resetSeed(J)V

    .line 1193
    const-wide/16 v3, 0x0

    const-string v5, "nextNextGaussian"

    invoke-virtual {v0, v5, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;D)D

    move-result-wide v3

    iput-wide v3, p0, Ljava/util/Random;->nextNextGaussian:D

    .line 1194
    const/4 v3, 0x0

    const-string v4, "haveNextNextGaussian"

    invoke-virtual {v0, v4, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Ljava/util/Random;->haveNextNextGaussian:Z

    .line 1195
    return-void

    .line 1190
    :cond_29
    new-instance v3, Ljava/io/StreamCorruptedException;

    const-string v4, "Random: invalid seed"

    invoke-direct {v3, v4}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private greylist-max-o resetSeed(J)V
    .registers 7
    .param p1, "seedVal"    # J

    .line 1225
    sget-object v0, Ljava/util/Random;->unsafe:Lsun/misc/Unsafe;

    sget-wide v1, Ljava/util/Random;->seedOffset:J

    new-instance v3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v3, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-virtual {v0, p0, v1, v2, v3}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1226
    return-void
.end method

.method private static greylist seedUniquifier()J
    .registers 5

    .line 112
    :goto_0
    sget-object v0, Ljava/util/Random;->seedUniquifier:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    .line 113
    .local v1, "current":J
    const-wide v3, 0x285d320ad33fdb5L

    mul-long/2addr v3, v1

    .line 114
    .local v3, "next":J
    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 115
    return-wide v3

    .line 116
    .end local v1    # "current":J
    .end local v3    # "next":J
    :cond_13
    goto :goto_0
.end method

.method private declared-synchronized whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 6
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1204
    :try_start_1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 1207
    .local v0, "fields":Ljava/io/ObjectOutputStream$PutField;
    const-string v1, "seed"

    iget-object v2, p0, Ljava/util/Random;->seed:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;J)V

    .line 1208
    const-string v1, "nextNextGaussian"

    iget-wide v2, p0, Ljava/util/Random;->nextNextGaussian:D

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;D)V

    .line 1209
    const-string v1, "haveNextNextGaussian"

    iget-boolean v2, p0, Ljava/util/Random;->haveNextNextGaussian:Z

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 1212
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 1213
    monitor-exit p0

    return-void

    .line 1203
    .end local v0    # "fields":Ljava/io/ObjectOutputStream$PutField;
    .end local p0    # "this":Ljava/util/Random;
    .end local p1    # "s":Ljava/io/ObjectOutputStream;
    :catchall_23
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public whitelist test-api doubles()Ljava/util/stream/DoubleStream;
    .registers 12

    .line 909
    new-instance v10, Ljava/util/Random$RandomDoublesSpliterator;

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide/16 v8, 0x0

    move-object v0, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Ljava/util/Random$RandomDoublesSpliterator;-><init>(Ljava/util/Random;JJDD)V

    .line 910
    const/4 v0, 0x0

    invoke-static {v10, v0}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    move-result-object v0

    .line 909
    return-object v0
.end method

.method public whitelist test-api doubles(DD)Ljava/util/stream/DoubleStream;
    .registers 16
    .param p1, "randomNumberOrigin"    # D
    .param p3, "randomNumberBound"    # D

    .line 982
    cmpg-double v0, p1, p3

    if-gez v0, :cond_1a

    .line 984
    new-instance v0, Ljava/util/Random$RandomDoublesSpliterator;

    const-wide/16 v3, 0x0

    const-wide v5, 0x7fffffffffffffffL

    move-object v1, v0

    move-object v2, p0

    move-wide v7, p1

    move-wide v9, p3

    invoke-direct/range {v1 .. v10}, Ljava/util/Random$RandomDoublesSpliterator;-><init>(Ljava/util/Random;JJDD)V

    const/4 v1, 0x0

    .line 985
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    move-result-object v0

    .line 984
    return-object v0

    .line 983
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api doubles(J)Ljava/util/stream/DoubleStream;
    .registers 14
    .param p1, "streamSize"    # J

    .line 886
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1d

    .line 888
    new-instance v0, Ljava/util/Random$RandomDoublesSpliterator;

    const-wide/16 v3, 0x0

    const-wide v7, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide/16 v9, 0x0

    move-object v1, v0

    move-object v2, p0

    move-wide v5, p1

    invoke-direct/range {v1 .. v10}, Ljava/util/Random$RandomDoublesSpliterator;-><init>(Ljava/util/Random;JJDD)V

    const/4 v1, 0x0

    .line 889
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    move-result-object v0

    .line 888
    return-object v0

    .line 887
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api doubles(JDD)Ljava/util/stream/DoubleStream;
    .registers 19
    .param p1, "streamSize"    # J
    .param p3, "randomNumberOrigin"    # D
    .param p5, "randomNumberBound"    # D

    .line 944
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_25

    .line 946
    cmpg-double v0, p3, p5

    if-gez v0, :cond_1d

    .line 948
    new-instance v0, Ljava/util/Random$RandomDoublesSpliterator;

    const-wide/16 v4, 0x0

    move-object v2, v0

    move-object v3, p0

    move-wide v6, p1

    move-wide v8, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v2 .. v11}, Ljava/util/Random$RandomDoublesSpliterator;-><init>(Ljava/util/Random;JJDD)V

    const/4 v1, 0x0

    .line 949
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    move-result-object v0

    .line 948
    return-object v0

    .line 947
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 945
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

    .line 302
    invoke-virtual {p0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    .line 303
    .local v0, "r":D
    cmpg-double v2, p1, p3

    if-gez v2, :cond_1c

    .line 304
    sub-double v2, p3, p1

    mul-double/2addr v2, v0

    add-double v0, v2, p1

    .line 305
    cmpl-double v2, v0, p3

    if-ltz v2, :cond_1c

    .line 306
    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 308
    :cond_1c
    return-wide v0
.end method

.method final greylist-max-o internalNextInt(II)I
    .registers 5
    .param p1, "origin"    # I
    .param p2, "bound"    # I

    .line 276
    if-ge p1, p2, :cond_15

    .line 277
    sub-int v0, p2, p1

    .line 278
    .local v0, "n":I
    if-lez v0, :cond_c

    .line 279
    invoke-virtual {p0, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, p1

    return v1

    .line 284
    :cond_c
    invoke-virtual {p0}, Ljava/util/Random;->nextInt()I

    move-result v1

    .line 285
    .local v1, "r":I
    if-lt v1, p1, :cond_c

    if-ge v1, p2, :cond_c

    .line 286
    return v1

    .line 290
    .end local v0    # "n":I
    .end local v1    # "r":I
    :cond_15
    invoke-virtual {p0}, Ljava/util/Random;->nextInt()I

    move-result v0

    return v0
.end method

.method final greylist-max-o internalNextLong(JJ)J
    .registers 21
    .param p1, "origin"    # J
    .param p3, "bound"    # J

    .line 245
    invoke-virtual/range {p0 .. p0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    .line 246
    .local v0, "r":J
    cmp-long v2, p1, p3

    if-gez v2, :cond_43

    .line 247
    sub-long v2, p3, p1

    .local v2, "n":J
    const-wide/16 v4, 0x1

    sub-long v4, v2, v4

    .line 248
    .local v4, "m":J
    and-long v6, v2, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_1b

    .line 249
    and-long v6, v0, v4

    add-long v0, v6, p1

    goto :goto_43

    .line 250
    :cond_1b
    cmp-long v6, v2, v8

    if-lez v6, :cond_36

    .line 251
    const/4 v6, 0x1

    ushr-long v10, v0, v6

    .line 252
    .local v10, "u":J
    :goto_22
    add-long v12, v10, v4

    rem-long v14, v10, v2

    move-wide v0, v14

    sub-long/2addr v12, v14

    cmp-long v7, v12, v8

    if-gez v7, :cond_33

    .line 253
    invoke-virtual/range {p0 .. p0}, Ljava/util/Random;->nextLong()J

    move-result-wide v12

    ushr-long v10, v12, v6

    goto :goto_22

    .line 255
    .end local v10    # "u":J
    :cond_33
    add-long v0, v0, p1

    goto :goto_43

    .line 258
    :cond_36
    :goto_36
    cmp-long v6, v0, p1

    if-ltz v6, :cond_3e

    cmp-long v6, v0, p3

    if-ltz v6, :cond_43

    .line 259
    :cond_3e
    invoke-virtual/range {p0 .. p0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    goto :goto_36

    .line 262
    .end local v2    # "n":J
    .end local v4    # "m":J
    :cond_43
    :goto_43
    return-wide v0
.end method

.method public whitelist test-api ints()Ljava/util/stream/IntStream;
    .registers 10

    .line 641
    new-instance v8, Ljava/util/Random$RandomIntsSpliterator;

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    const v6, 0x7fffffff

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Ljava/util/Random$RandomIntsSpliterator;-><init>(Ljava/util/Random;JJII)V

    .line 642
    const/4 v0, 0x0

    invoke-static {v8, v0}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 641
    return-object v0
.end method

.method public whitelist test-api ints(II)Ljava/util/stream/IntStream;
    .registers 12
    .param p1, "randomNumberOrigin"    # I
    .param p2, "randomNumberBound"    # I

    .line 725
    if-ge p1, p2, :cond_18

    .line 727
    new-instance v8, Ljava/util/Random$RandomIntsSpliterator;

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, v8

    move-object v1, p0

    move v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Ljava/util/Random$RandomIntsSpliterator;-><init>(Ljava/util/Random;JJII)V

    const/4 v0, 0x0

    .line 728
    invoke-static {v8, v0}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 727
    return-object v0

    .line 726
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api ints(J)Ljava/util/stream/IntStream;
    .registers 12
    .param p1, "streamSize"    # J

    .line 619
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1a

    .line 621
    new-instance v0, Ljava/util/Random$RandomIntsSpliterator;

    const-wide/16 v3, 0x0

    const v7, 0x7fffffff

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p0

    move-wide v5, p1

    invoke-direct/range {v1 .. v8}, Ljava/util/Random$RandomIntsSpliterator;-><init>(Ljava/util/Random;JJII)V

    const/4 v1, 0x0

    .line 622
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 621
    return-object v0

    .line 620
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api ints(JII)Ljava/util/stream/IntStream;
    .registers 14
    .param p1, "streamSize"    # J
    .param p3, "randomNumberOrigin"    # I
    .param p4, "randomNumberBound"    # I

    .line 681
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_22

    .line 683
    if-ge p3, p4, :cond_1a

    .line 685
    new-instance v0, Ljava/util/Random$RandomIntsSpliterator;

    const-wide/16 v3, 0x0

    move-object v1, v0

    move-object v2, p0

    move-wide v5, p1

    move v7, p3

    move v8, p4

    invoke-direct/range {v1 .. v8}, Ljava/util/Random$RandomIntsSpliterator;-><init>(Ljava/util/Random;JJII)V

    const/4 v1, 0x0

    .line 686
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 685
    return-object v0

    .line 684
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 682
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api longs()Ljava/util/stream/LongStream;
    .registers 12

    .line 769
    new-instance v10, Ljava/util/Random$RandomLongsSpliterator;

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    const-wide v6, 0x7fffffffffffffffL

    const-wide/16 v8, 0x0

    move-object v0, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Ljava/util/Random$RandomLongsSpliterator;-><init>(Ljava/util/Random;JJJJ)V

    .line 770
    const/4 v0, 0x0

    invoke-static {v10, v0}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    move-result-object v0

    .line 769
    return-object v0
.end method

.method public whitelist test-api longs(J)Ljava/util/stream/LongStream;
    .registers 14
    .param p1, "streamSize"    # J

    .line 747
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1d

    .line 749
    new-instance v0, Ljava/util/Random$RandomLongsSpliterator;

    const-wide/16 v3, 0x0

    const-wide v7, 0x7fffffffffffffffL

    const-wide/16 v9, 0x0

    move-object v1, v0

    move-object v2, p0

    move-wide v5, p1

    invoke-direct/range {v1 .. v10}, Ljava/util/Random$RandomLongsSpliterator;-><init>(Ljava/util/Random;JJJJ)V

    const/4 v1, 0x0

    .line 750
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    move-result-object v0

    .line 749
    return-object v0

    .line 748
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api longs(JJ)Ljava/util/stream/LongStream;
    .registers 16
    .param p1, "randomNumberOrigin"    # J
    .param p3, "randomNumberBound"    # J

    .line 863
    cmp-long v0, p1, p3

    if-gez v0, :cond_1a

    .line 865
    new-instance v0, Ljava/util/Random$RandomLongsSpliterator;

    const-wide/16 v3, 0x0

    const-wide v5, 0x7fffffffffffffffL

    move-object v1, v0

    move-object v2, p0

    move-wide v7, p1

    move-wide v9, p3

    invoke-direct/range {v1 .. v10}, Ljava/util/Random$RandomLongsSpliterator;-><init>(Ljava/util/Random;JJJJ)V

    const/4 v1, 0x0

    .line 866
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    move-result-object v0

    .line 865
    return-object v0

    .line 864
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api longs(JJJ)Ljava/util/stream/LongStream;
    .registers 19
    .param p1, "streamSize"    # J
    .param p3, "randomNumberOrigin"    # J
    .param p5, "randomNumberBound"    # J

    .line 814
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_25

    .line 816
    cmp-long v0, p3, p5

    if-gez v0, :cond_1d

    .line 818
    new-instance v0, Ljava/util/Random$RandomLongsSpliterator;

    const-wide/16 v4, 0x0

    move-object v2, v0

    move-object v3, p0

    move-wide v6, p1

    move-wide v8, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v2 .. v11}, Ljava/util/Random$RandomLongsSpliterator;-><init>(Ljava/util/Random;JJJJ)V

    const/4 v1, 0x0

    .line 819
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    move-result-object v0

    .line 818
    return-object v0

    .line 817
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 815
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api next(I)I
    .registers 9
    .param p1, "bits"    # I

    .line 200
    iget-object v0, p0, Ljava/util/Random;->seed:Ljava/util/concurrent/atomic/AtomicLong;

    .line 202
    .local v0, "seed":Ljava/util/concurrent/atomic/AtomicLong;
    :goto_2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    .line 203
    .local v1, "oldseed":J
    const-wide v3, 0x5deece66dL

    mul-long/2addr v3, v1

    const-wide/16 v5, 0xb

    add-long/2addr v3, v5

    const-wide v5, 0xffffffffffffL

    and-long/2addr v3, v5

    .line 204
    .local v3, "nextseed":J
    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 205
    rsub-int/lit8 v5, p1, 0x30

    ushr-long v5, v3, v5

    long-to-int v5, v5

    return v5

    .line 204
    :cond_21
    goto :goto_2
.end method

.method public whitelist test-api nextBoolean()Z
    .registers 3

    .line 448
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Random;->next(I)I

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api nextBytes([B)V
    .registers 8
    .param p1, "bytes"    # [B

    .line 228
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p1

    .local v1, "len":I
    :goto_2
    if-ge v0, v1, :cond_1e

    .line 229
    invoke-virtual {p0}, Ljava/util/Random;->nextInt()I

    move-result v2

    .line 230
    .local v2, "rnd":I
    sub-int v3, v1, v0

    const/4 v4, 0x4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 231
    .local v3, "n":I
    :goto_f
    add-int/lit8 v4, v3, -0x1

    .end local v3    # "n":I
    .local v4, "n":I
    if-lez v3, :cond_1d

    .line 232
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "i":I
    .local v3, "i":I
    int-to-byte v5, v2

    aput-byte v5, p1, v0

    .line 231
    shr-int/lit8 v2, v2, 0x8

    move v0, v3

    move v3, v4

    goto :goto_f

    .end local v2    # "rnd":I
    .end local v3    # "i":I
    .end local v4    # "n":I
    .restart local v0    # "i":I
    :cond_1d
    goto :goto_2

    .line 233
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_1e
    return-void
.end method

.method public whitelist test-api nextDouble()D
    .registers 5

    .line 532
    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Ljava/util/Random;->next(I)I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x1b

    shl-long/2addr v0, v2

    invoke-virtual {p0, v2}, Ljava/util/Random;->next(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ca0000000000000L

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public whitelist test-api nextFloat()F
    .registers 3

    .line 489
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Ljava/util/Random;->next(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4b800000    # 1.6777216E7f

    div-float/2addr v0, v1

    return v0
.end method

.method public declared-synchronized whitelist test-api nextGaussian()D
    .registers 11

    monitor-enter p0

    .line 585
    :try_start_1
    iget-boolean v0, p0, Ljava/util/Random;->haveNextNextGaussian:Z

    if-eqz v0, :cond_c

    .line 586
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Random;->haveNextNextGaussian:Z

    .line 587
    iget-wide v0, p0, Ljava/util/Random;->nextNextGaussian:D
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_42

    monitor-exit p0

    return-wide v0

    .line 591
    .end local p0    # "this":Ljava/util/Random;
    :cond_c
    :try_start_c
    invoke-virtual {p0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v4

    .line 592
    .local v0, "v1":D
    invoke-virtual {p0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v6

    mul-double/2addr v6, v2

    sub-double/2addr v6, v4

    .line 593
    .local v6, "v2":D
    mul-double v2, v0, v0

    mul-double v8, v6, v6

    add-double/2addr v2, v8

    .line 594
    .local v2, "s":D
    cmpl-double v4, v2, v4

    if-gez v4, :cond_c

    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-eqz v4, :cond_c

    .line 595
    const-wide/high16 v4, -0x4000000000000000L    # -2.0

    invoke-static {v2, v3}, Ljava/lang/StrictMath;->log(D)D

    move-result-wide v8

    mul-double/2addr v8, v4

    div-double/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/StrictMath;->sqrt(D)D

    move-result-wide v4

    .line 596
    .local v4, "multiplier":D
    mul-double v8, v6, v4

    iput-wide v8, p0, Ljava/util/Random;->nextNextGaussian:D

    .line 597
    const/4 v8, 0x1

    iput-boolean v8, p0, Ljava/util/Random;->haveNextNextGaussian:Z
    :try_end_3e
    .catchall {:try_start_c .. :try_end_3e} :catchall_42

    .line 598
    mul-double v8, v0, v4

    monitor-exit p0

    return-wide v8

    .line 584
    .end local v0    # "v1":D
    .end local v2    # "s":D
    .end local v4    # "multiplier":D
    .end local v6    # "v2":D
    :catchall_42
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public whitelist test-api nextInt()I
    .registers 2

    .line 329
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/util/Random;->next(I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api nextInt(I)I
    .registers 9
    .param p1, "bound"    # I

    .line 387
    if-lez p1, :cond_24

    .line 390
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Ljava/util/Random;->next(I)I

    move-result v1

    .line 391
    .local v1, "r":I
    add-int/lit8 v2, p1, -0x1

    .line 392
    .local v2, "m":I
    and-int v3, p1, v2

    if-nez v3, :cond_14

    .line 393
    int-to-long v3, p1

    int-to-long v5, v1

    mul-long/2addr v3, v5

    shr-long/2addr v3, v0

    long-to-int v0, v3

    .end local v1    # "r":I
    .local v0, "r":I
    goto :goto_23

    .line 395
    .end local v0    # "r":I
    .restart local v1    # "r":I
    :cond_14
    move v3, v1

    .line 396
    .local v3, "u":I
    :goto_15
    rem-int v4, v3, p1

    move v1, v4

    sub-int v4, v3, v4

    add-int/2addr v4, v2

    if-gez v4, :cond_22

    .line 397
    invoke-virtual {p0, v0}, Ljava/util/Random;->next(I)I

    move-result v3

    goto :goto_15

    .line 396
    :cond_22
    move v0, v1

    .line 400
    .end local v1    # "r":I
    .end local v3    # "u":I
    .restart local v0    # "r":I
    :goto_23
    return v0

    .line 388
    .end local v0    # "r":I
    .end local v2    # "m":I
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api nextLong()J
    .registers 6

    .line 424
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/util/Random;->next(I)I

    move-result v1

    int-to-long v1, v1

    shl-long/2addr v1, v0

    invoke-virtual {p0, v0}, Ljava/util/Random;->next(I)I

    move-result v0

    int-to-long v3, v0

    add-long/2addr v1, v3

    return-wide v1
.end method

.method public declared-synchronized whitelist test-api setSeed(J)V
    .registers 6
    .param p1, "seed"    # J

    monitor-enter p0

    .line 169
    :try_start_1
    iget-object v0, p0, Ljava/util/Random;->seed:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {p1, p2}, Ljava/util/Random;->initialScramble(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Random;->haveNextNextGaussian:Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 171
    monitor-exit p0

    return-void

    .line 168
    .end local p0    # "this":Ljava/util/Random;
    .end local p1    # "seed":J
    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method
