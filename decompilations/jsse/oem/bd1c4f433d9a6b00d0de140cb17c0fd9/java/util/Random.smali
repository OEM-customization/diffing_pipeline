.class public Ljava/util/Random;
.super Ljava/lang/Object;
.source "Random.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Random$RandomDoublesSpliterator;,
        Ljava/util/Random$RandomIntsSpliterator;,
        Ljava/util/Random$RandomLongsSpliterator;
    }
.end annotation


# static fields
.field static final BadBound:Ljava/lang/String; = "bound must be positive"

.field static final BadRange:Ljava/lang/String; = "bound must be greater than origin"

.field static final BadSize:Ljava/lang/String; = "size must be non-negative"

.field private static final DOUBLE_UNIT:D = 1.1102230246251565E-16

.field private static final addend:J = 0xbL

.field private static final mask:J = 0xffffffffffffL

.field private static final multiplier:J = 0x5deece66dL

.field private static final seedOffset:J

.field private static final seedUniquifier:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field static final serialVersionUID:J = 0x363296344bf00a53L

.field private static final unsafe:Lsun/misc/Unsafe;


# instance fields
.field private haveNextNextGaussian:Z

.field private nextNextGaussian:D

.field private final seed:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 120
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v2, 0x1ed8b55fac9decL

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 119
    sput-object v1, Ljava/util/Random;->seedUniquifier:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1171
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/io/ObjectStreamField;

    .line 1172
    new-instance v2, Ljava/io/ObjectStreamField;

    const-string/jumbo v3, "seed"

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1173
    new-instance v2, Ljava/io/ObjectStreamField;

    const-string/jumbo v3, "nextNextGaussian"

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 1174
    new-instance v2, Ljava/io/ObjectStreamField;

    const-string/jumbo v3, "haveNextNextGaussian"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 1171
    sput-object v1, Ljava/util/Random;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    .line 1216
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Ljava/util/Random;->unsafe:Lsun/misc/Unsafe;

    .line 1220
    :try_start_3e
    sget-object v1, Ljava/util/Random;->unsafe:Lsun/misc/Unsafe;

    .line 1221
    const-class v2, Ljava/util/Random;

    const-string/jumbo v3, "seed"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1220
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/Random;->seedOffset:J
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_4f} :catch_50

    .line 77
    return-void

    .line 1222
    :catch_50
    move-exception v0

    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
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

.method public constructor <init>(J)V
    .registers 8
    .param p1, "seed"    # J

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 536
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Random;->haveNextNextGaussian:Z

    .line 136
    invoke-virtual {p0}, Ljava/util/Random;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/Random;

    if-ne v0, v1, :cond_1a

    .line 137
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {p1, p2}, Ljava/util/Random;->initialScramble(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Ljava/util/Random;->seed:Ljava/util/concurrent/atomic/AtomicLong;

    .line 143
    :goto_19
    return-void

    .line 140
    :cond_1a
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Ljava/util/Random;->seed:Ljava/util/concurrent/atomic/AtomicLong;

    .line 141
    invoke-virtual {p0, p1, p2}, Ljava/util/Random;->setSeed(J)V

    goto :goto_19
.end method

.method private static initialScramble(J)J
    .registers 6
    .param p0, "seed"    # J

    .prologue
    .line 146
    const-wide v0, 0x5deece66dL

    xor-long/2addr v0, p0

    const-wide v2, 0xffffffffffffL

    and-long/2addr v0, v2

    return-wide v0
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
    .line 1184
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 1188
    .local v0, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string/jumbo v1, "seed"

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v1, v4, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1189
    .local v2, "seedVal":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_1c

    .line 1190
    new-instance v1, Ljava/io/StreamCorruptedException;

    .line 1191
    const-string/jumbo v4, "Random: invalid seed"

    .line 1190
    invoke-direct {v1, v4}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1192
    :cond_1c
    invoke-direct {p0, v2, v3}, Ljava/util/Random;->resetSeed(J)V

    .line 1193
    const-string/jumbo v1, "nextNextGaussian"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v4, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, p0, Ljava/util/Random;->nextNextGaussian:D

    .line 1194
    const-string/jumbo v1, "haveNextNextGaussian"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Ljava/util/Random;->haveNextNextGaussian:Z

    .line 1195
    return-void
.end method

.method private resetSeed(J)V
    .registers 8
    .param p1, "seedVal"    # J

    .prologue
    .line 1225
    sget-object v0, Ljava/util/Random;->unsafe:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/Random;->seedOffset:J

    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-virtual {v0, p0, v2, v3, v1}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1226
    return-void
.end method

.method private static seedUniquifier()J
    .registers 6

    .prologue
    .line 112
    .local v0, "current":J
    .local v2, "next":J
    :cond_0
    sget-object v4, Ljava/util/Random;->seedUniquifier:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 113
    .end local v2    # "next":J
    const-wide v4, 0x285d320ad33fdb5L

    mul-long v2, v0, v4

    .line 114
    .restart local v2    # "next":J
    sget-object v4, Ljava/util/Random;->seedUniquifier:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 115
    return-wide v2
.end method

.method private declared-synchronized writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 6
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 1204
    :try_start_1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 1207
    .local v0, "fields":Ljava/io/ObjectOutputStream$PutField;
    const-string/jumbo v1, "seed"

    iget-object v2, p0, Ljava/util/Random;->seed:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;J)V

    .line 1208
    const-string/jumbo v1, "nextNextGaussian"

    iget-wide v2, p0, Ljava/util/Random;->nextNextGaussian:D

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;D)V

    .line 1209
    const-string/jumbo v1, "haveNextNextGaussian"

    iget-boolean v2, p0, Ljava/util/Random;->haveNextNextGaussian:Z

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 1212
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    monitor-exit p0

    .line 1213
    return-void

    .end local v0    # "fields":Ljava/io/ObjectOutputStream$PutField;
    :catchall_26
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public doubles()Ljava/util/stream/DoubleStream;
    .registers 11

    .prologue
    .line 910
    new-instance v0, Ljava/util/Random$RandomDoublesSpliterator;

    .line 911
    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide/16 v8, 0x0

    move-object v1, p0

    .line 910
    invoke-direct/range {v0 .. v9}, Ljava/util/Random$RandomDoublesSpliterator;-><init>(Ljava/util/Random;JJDD)V

    .line 912
    const/4 v1, 0x0

    .line 909
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public doubles(DD)Ljava/util/stream/DoubleStream;
    .registers 16
    .param p1, "randomNumberOrigin"    # D
    .param p3, "randomNumberBound"    # D

    .prologue
    const/4 v10, 0x0

    .line 982
    cmpg-double v0, p1, p3

    if-gez v0, :cond_11

    const/4 v0, 0x1

    :goto_6
    if-nez v0, :cond_13

    .line 983
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    move v0, v10

    .line 982
    goto :goto_6

    .line 985
    :cond_13
    new-instance v0, Ljava/util/Random$RandomDoublesSpliterator;

    .line 986
    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v1, p0

    move-wide v6, p1

    move-wide v8, p3

    .line 985
    invoke-direct/range {v0 .. v9}, Ljava/util/Random$RandomDoublesSpliterator;-><init>(Ljava/util/Random;JJDD)V

    .line 984
    invoke-static {v0, v10}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public doubles(J)Ljava/util/stream/DoubleStream;
    .registers 14
    .param p1, "streamSize"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 886
    cmp-long v0, p1, v2

    if-gez v0, :cond_f

    .line 887
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 889
    :cond_f
    new-instance v0, Ljava/util/Random$RandomDoublesSpliterator;

    .line 890
    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide/16 v8, 0x0

    move-object v1, p0

    move-wide v4, p1

    .line 889
    invoke-direct/range {v0 .. v9}, Ljava/util/Random$RandomDoublesSpliterator;-><init>(Ljava/util/Random;JJDD)V

    .line 891
    const/4 v1, 0x0

    .line 888
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public doubles(JDD)Ljava/util/stream/DoubleStream;
    .registers 18
    .param p1, "streamSize"    # J
    .param p3, "randomNumberOrigin"    # D
    .param p5, "randomNumberBound"    # D

    .prologue
    .line 944
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_f

    .line 945
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 946
    :cond_f
    cmpg-double v0, p3, p5

    if-gez v0, :cond_1f

    const/4 v0, 0x1

    :goto_14
    if-nez v0, :cond_21

    .line 947
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 946
    :cond_1f
    const/4 v0, 0x0

    goto :goto_14

    .line 949
    :cond_21
    new-instance v0, Ljava/util/Random$RandomDoublesSpliterator;

    .line 950
    const-wide/16 v2, 0x0

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    .line 949
    invoke-direct/range {v0 .. v9}, Ljava/util/Random$RandomDoublesSpliterator;-><init>(Ljava/util/Random;JJDD)V

    .line 951
    const/4 v1, 0x0

    .line 948
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method final internalNextDouble(DD)D
    .registers 12
    .param p1, "origin"    # D
    .param p3, "bound"    # D

    .prologue
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

.method final internalNextInt(II)I
    .registers 6
    .param p1, "origin"    # I
    .param p2, "bound"    # I

    .prologue
    .line 276
    if-ge p1, p2, :cond_15

    .line 277
    sub-int v0, p2, p1

    .line 278
    .local v0, "n":I
    if-lez v0, :cond_c

    .line 279
    invoke-virtual {p0, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v2, p1

    return v2

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

    move-result v2

    return v2
.end method

.method final internalNextLong(JJ)J
    .registers 18
    .param p1, "origin"    # J
    .param p3, "bound"    # J

    .prologue
    .line 245
    invoke-virtual {p0}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    .line 246
    .local v4, "r":J
    cmp-long v8, p1, p3

    if-gez v8, :cond_1a

    .line 247
    sub-long v2, p3, p1

    .local v2, "n":J
    const-wide/16 v8, 0x1

    sub-long v0, v2, v8

    .line 248
    .local v0, "m":J
    and-long v8, v2, v0

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_1b

    .line 249
    and-long v8, v4, v0

    add-long v4, v8, p1

    .line 262
    .end local v0    # "m":J
    .end local v2    # "n":J
    :cond_1a
    :goto_1a
    return-wide v4

    .line 250
    .restart local v0    # "m":J
    .restart local v2    # "n":J
    :cond_1b
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_39

    .line 251
    const/4 v8, 0x1

    ushr-long v6, v4, v8

    .line 252
    .local v6, "u":J
    :goto_24
    add-long v8, v6, v0

    rem-long v4, v6, v2

    sub-long/2addr v8, v4

    const-wide/16 v10, 0x0

    .line 251
    cmp-long v8, v8, v10

    if-gez v8, :cond_37

    .line 253
    invoke-virtual {p0}, Ljava/util/Random;->nextLong()J

    move-result-wide v8

    const/4 v10, 0x1

    ushr-long v6, v8, v10

    goto :goto_24

    .line 255
    :cond_37
    add-long/2addr v4, p1

    goto :goto_1a

    .line 258
    .end local v6    # "u":J
    :cond_39
    :goto_39
    cmp-long v8, v4, p1

    if-ltz v8, :cond_41

    cmp-long v8, v4, p3

    if-ltz v8, :cond_1a

    .line 259
    :cond_41
    invoke-virtual {p0}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    goto :goto_39
.end method

.method public ints()Ljava/util/stream/IntStream;
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 642
    new-instance v0, Ljava/util/Random$RandomIntsSpliterator;

    .line 643
    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    const v6, 0x7fffffff

    move-object v1, p0

    .line 642
    invoke-direct/range {v0 .. v7}, Ljava/util/Random$RandomIntsSpliterator;-><init>(Ljava/util/Random;JJII)V

    .line 641
    invoke-static {v0, v7}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public ints(II)Ljava/util/stream/IntStream;
    .registers 11
    .param p1, "randomNumberOrigin"    # I
    .param p2, "randomNumberBound"    # I

    .prologue
    .line 725
    if-lt p1, p2, :cond_b

    .line 726
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 728
    :cond_b
    new-instance v0, Ljava/util/Random$RandomIntsSpliterator;

    .line 729
    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v1, p0

    move v6, p1

    move v7, p2

    .line 728
    invoke-direct/range {v0 .. v7}, Ljava/util/Random$RandomIntsSpliterator;-><init>(Ljava/util/Random;JJII)V

    .line 730
    const/4 v1, 0x0

    .line 727
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public ints(J)Ljava/util/stream/IntStream;
    .registers 12
    .param p1, "streamSize"    # J

    .prologue
    const-wide/16 v2, 0x0

    const/4 v7, 0x0

    .line 619
    cmp-long v0, p1, v2

    if-gez v0, :cond_10

    .line 620
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 622
    :cond_10
    new-instance v0, Ljava/util/Random$RandomIntsSpliterator;

    .line 623
    const v6, 0x7fffffff

    move-object v1, p0

    move-wide v4, p1

    .line 622
    invoke-direct/range {v0 .. v7}, Ljava/util/Random$RandomIntsSpliterator;-><init>(Ljava/util/Random;JJII)V

    .line 621
    invoke-static {v0, v7}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public ints(JII)Ljava/util/stream/IntStream;
    .registers 14
    .param p1, "streamSize"    # J
    .param p3, "randomNumberOrigin"    # I
    .param p4, "randomNumberBound"    # I

    .prologue
    const-wide/16 v2, 0x0

    .line 681
    cmp-long v0, p1, v2

    if-gez v0, :cond_f

    .line 682
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 683
    :cond_f
    if-lt p3, p4, :cond_1a

    .line 684
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 686
    :cond_1a
    new-instance v0, Ljava/util/Random$RandomIntsSpliterator;

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Ljava/util/Random$RandomIntsSpliterator;-><init>(Ljava/util/Random;JJII)V

    .line 688
    const/4 v1, 0x0

    .line 685
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public longs()Ljava/util/stream/LongStream;
    .registers 11

    .prologue
    const-wide v4, 0x7fffffffffffffffL

    const-wide/16 v2, 0x0

    .line 770
    new-instance v0, Ljava/util/Random$RandomLongsSpliterator;

    move-object v1, p0

    move-wide v6, v4

    move-wide v8, v2

    invoke-direct/range {v0 .. v9}, Ljava/util/Random$RandomLongsSpliterator;-><init>(Ljava/util/Random;JJJJ)V

    .line 772
    const/4 v1, 0x0

    .line 769
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public longs(J)Ljava/util/stream/LongStream;
    .registers 14
    .param p1, "streamSize"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 747
    cmp-long v0, p1, v2

    if-gez v0, :cond_f

    .line 748
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 750
    :cond_f
    new-instance v0, Ljava/util/Random$RandomLongsSpliterator;

    .line 751
    const-wide v6, 0x7fffffffffffffffL

    move-object v1, p0

    move-wide v4, p1

    move-wide v8, v2

    .line 750
    invoke-direct/range {v0 .. v9}, Ljava/util/Random$RandomLongsSpliterator;-><init>(Ljava/util/Random;JJJJ)V

    .line 752
    const/4 v1, 0x0

    .line 749
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public longs(JJ)Ljava/util/stream/LongStream;
    .registers 16
    .param p1, "randomNumberOrigin"    # J
    .param p3, "randomNumberBound"    # J

    .prologue
    .line 863
    cmp-long v0, p1, p3

    if-ltz v0, :cond_d

    .line 864
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 866
    :cond_d
    new-instance v0, Ljava/util/Random$RandomLongsSpliterator;

    .line 867
    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v1, p0

    move-wide v6, p1

    move-wide v8, p3

    .line 866
    invoke-direct/range {v0 .. v9}, Ljava/util/Random$RandomLongsSpliterator;-><init>(Ljava/util/Random;JJJJ)V

    .line 868
    const/4 v1, 0x0

    .line 865
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public longs(JJJ)Ljava/util/stream/LongStream;
    .registers 18
    .param p1, "streamSize"    # J
    .param p3, "randomNumberOrigin"    # J
    .param p5, "randomNumberBound"    # J

    .prologue
    .line 814
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_f

    .line 815
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 816
    :cond_f
    cmp-long v0, p3, p5

    if-ltz v0, :cond_1c

    .line 817
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 819
    :cond_1c
    new-instance v0, Ljava/util/Random$RandomLongsSpliterator;

    .line 820
    const-wide/16 v2, 0x0

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    .line 819
    invoke-direct/range {v0 .. v9}, Ljava/util/Random$RandomLongsSpliterator;-><init>(Ljava/util/Random;JJJJ)V

    .line 821
    const/4 v1, 0x0

    .line 818
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method protected next(I)I
    .registers 12
    .param p1, "bits"    # I

    .prologue
    .line 200
    iget-object v4, p0, Ljava/util/Random;->seed:Ljava/util/concurrent/atomic/AtomicLong;

    .line 202
    .local v4, "seed":Ljava/util/concurrent/atomic/AtomicLong;
    :cond_2
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 203
    .local v2, "oldseed":J
    const-wide v6, 0x5deece66dL

    mul-long/2addr v6, v2

    const-wide/16 v8, 0xb

    add-long/2addr v6, v8

    const-wide v8, 0xffffffffffffL

    and-long v0, v6, v8

    .line 204
    .local v0, "nextseed":J
    invoke-virtual {v4, v2, v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 205
    rsub-int/lit8 v5, p1, 0x30

    ushr-long v6, v0, v5

    long-to-int v5, v6

    return v5
.end method

.method public nextBoolean()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 448
    invoke-virtual {p0, v0}, Ljava/util/Random;->next(I)I

    move-result v2

    if-eqz v2, :cond_9

    :goto_8
    return v0

    :cond_9
    move v0, v1

    goto :goto_8
.end method

.method public nextBytes([B)V
    .registers 10
    .param p1, "bytes"    # [B

    .prologue
    .line 228
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v2, p1

    .local v2, "len":I
    :goto_2
    if-ge v0, v2, :cond_21

    .line 229
    invoke-virtual {p0}, Ljava/util/Random;->nextInt()I

    move-result v5

    .line 230
    .local v5, "rnd":I
    sub-int v6, v2, v0

    const/4 v7, 0x4

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .local v3, "n":I
    move v4, v3

    .end local v3    # "n":I
    .local v4, "n":I
    move v1, v0

    .line 231
    .end local v0    # "i":I
    .local v1, "i":I
    :goto_11
    add-int/lit8 v3, v4, -0x1

    .line 229
    .end local v4    # "n":I
    .restart local v3    # "n":I
    if-lez v4, :cond_1f

    .line 232
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    int-to-byte v6, v5

    aput-byte v6, p1, v1

    .line 231
    shr-int/lit8 v5, v5, 0x8

    move v4, v3

    .end local v3    # "n":I
    .restart local v4    # "n":I
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_11

    .end local v4    # "n":I
    .restart local v3    # "n":I
    :cond_1f
    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_2

    .line 233
    .end local v3    # "n":I
    .end local v5    # "rnd":I
    :cond_21
    return-void
.end method

.method public nextDouble()D
    .registers 5

    .prologue
    const/16 v2, 0x1b

    .line 532
    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Ljava/util/Random;->next(I)I

    move-result v0

    int-to-long v0, v0

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

.method public nextFloat()F
    .registers 3

    .prologue
    .line 489
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Ljava/util/Random;->next(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4b800000    # 1.6777216E7f

    div-float/2addr v0, v1

    return v0
.end method

.method public declared-synchronized nextGaussian()D
    .registers 13

    .prologue
    monitor-enter p0

    .line 585
    :try_start_1
    iget-boolean v8, p0, Ljava/util/Random;->haveNextNextGaussian:Z

    if-eqz v8, :cond_c

    .line 586
    const/4 v8, 0x0

    iput-boolean v8, p0, Ljava/util/Random;->haveNextNextGaussian:Z

    .line 587
    iget-wide v8, p0, Ljava/util/Random;->nextNextGaussian:D
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_4b

    monitor-exit p0

    return-wide v8

    .line 591
    :cond_c
    :try_start_c
    invoke-virtual {p0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double v4, v8, v10

    .line 592
    .local v4, "v1":D
    invoke-virtual {p0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double v6, v8, v10

    .line 593
    .local v6, "v2":D
    mul-double v8, v4, v4

    mul-double v10, v6, v6

    add-double v2, v8, v10

    .line 594
    .local v2, "s":D
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v8, v2, v8

    if-gez v8, :cond_c

    const-wide/16 v8, 0x0

    cmpl-double v8, v2, v8

    if-eqz v8, :cond_c

    .line 595
    invoke-static {v2, v3}, Ljava/lang/StrictMath;->log(D)D

    move-result-wide v8

    const-wide/high16 v10, -0x4000000000000000L    # -2.0

    mul-double/2addr v8, v10

    div-double/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/StrictMath;->sqrt(D)D

    move-result-wide v0

    .line 596
    .local v0, "multiplier":D
    mul-double v8, v6, v0

    iput-wide v8, p0, Ljava/util/Random;->nextNextGaussian:D

    .line 597
    const/4 v8, 0x1

    iput-boolean v8, p0, Ljava/util/Random;->haveNextNextGaussian:Z
    :try_end_47
    .catchall {:try_start_c .. :try_end_47} :catchall_4b

    .line 598
    mul-double v8, v4, v0

    monitor-exit p0

    return-wide v8

    .end local v0    # "multiplier":D
    .end local v2    # "s":D
    .end local v4    # "v1":D
    .end local v6    # "v2":D
    :catchall_4b
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public nextInt()I
    .registers 2

    .prologue
    .line 329
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/util/Random;->next(I)I

    move-result v0

    return v0
.end method

.method public nextInt(I)I
    .registers 11
    .param p1, "bound"    # I

    .prologue
    const/16 v8, 0x1f

    .line 387
    if-gtz p1, :cond_d

    .line 388
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "bound must be positive"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 390
    :cond_d
    invoke-virtual {p0, v8}, Ljava/util/Random;->next(I)I

    move-result v1

    .line 391
    .local v1, "r":I
    add-int/lit8 v0, p1, -0x1

    .line 392
    .local v0, "m":I
    and-int v3, p1, v0

    if-nez v3, :cond_1d

    .line 393
    int-to-long v4, p1

    int-to-long v6, v1

    mul-long/2addr v4, v6

    shr-long/2addr v4, v8

    long-to-int v1, v4

    .line 400
    :cond_1c
    return v1

    .line 395
    :cond_1d
    move v2, v1

    .line 396
    .local v2, "u":I
    :goto_1e
    rem-int v1, v2, p1

    sub-int v3, v2, v1

    add-int/2addr v3, v0

    .line 395
    if-gez v3, :cond_1c

    .line 397
    invoke-virtual {p0, v8}, Ljava/util/Random;->next(I)I

    move-result v2

    goto :goto_1e
.end method

.method public nextLong()J
    .registers 5

    .prologue
    const/16 v2, 0x20

    .line 424
    invoke-virtual {p0, v2}, Ljava/util/Random;->next(I)I

    move-result v0

    int-to-long v0, v0

    shl-long/2addr v0, v2

    invoke-virtual {p0, v2}, Ljava/util/Random;->next(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public declared-synchronized setSeed(J)V
    .registers 8
    .param p1, "seed"    # J

    .prologue
    monitor-enter p0

    .line 169
    :try_start_1
    iget-object v0, p0, Ljava/util/Random;->seed:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {p1, p2}, Ljava/util/Random;->initialScramble(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Random;->haveNextNextGaussian:Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    .line 171
    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
