.class public Ljava/util/concurrent/ThreadLocalRandom;
.super Ljava/util/Random;
.source "ThreadLocalRandom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;,
        Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;,
        Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;
    }
.end annotation


# static fields
.field static final greylist-max-o BAD_BOUND:Ljava/lang/String; = "bound must be positive"

.field static final greylist-max-o BAD_RANGE:Ljava/lang/String; = "bound must be greater than origin"

.field static final greylist-max-o BAD_SIZE:Ljava/lang/String; = "size must be non-negative"

.field private static final greylist-max-o DOUBLE_UNIT:D = 1.1102230246251565E-16

.field private static final greylist-max-o FLOAT_UNIT:F = 5.9604645E-8f

.field private static final greylist-max-o GAMMA:J = -0x61c8864680b583ebL

.field private static final greylist-max-o PROBE:J

.field private static final greylist-max-o PROBE_INCREMENT:I = -0x61c88647

.field private static final greylist-max-o SECONDARY:J

.field private static final greylist-max-o SEED:J

.field private static final greylist-max-o SEEDER_INCREMENT:J = -0x4498517a7b3558c5L

.field private static final greylist-max-o U:Lsun/misc/Unsafe;

.field static final greylist-max-o instance:Ljava/util/concurrent/ThreadLocalRandom;

.field private static final greylist-max-o nextLocalGaussian:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o probeGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final greylist-max-o seeder:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final whitelist serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final whitelist serialVersionUID:J = -0x5135b0e98579898dL


# instance fields
.field greylist-max-o initialized:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 11

    .line 971
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    new-instance v1, Ljava/io/ObjectStreamField;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-string v3, "rnd"

    invoke-direct {v1, v3, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v4, "initialized"

    invoke-direct {v1, v4, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sput-object v0, Ljava/util/concurrent/ThreadLocalRandom;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    .line 1025
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/ThreadLocalRandom;->U:Lsun/misc/Unsafe;

    .line 1031
    :try_start_23
    const-class v1, Ljava/lang/Thread;

    const-string v3, "threadLocalRandomSeed"

    .line 1032
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/ThreadLocalRandom;->SEED:J

    .line 1033
    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom;->U:Lsun/misc/Unsafe;

    const-class v1, Ljava/lang/Thread;

    const-string v3, "threadLocalRandomProbe"

    .line 1034
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/ThreadLocalRandom;->PROBE:J

    .line 1035
    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom;->U:Lsun/misc/Unsafe;

    const-class v1, Ljava/lang/Thread;

    const-string v3, "threadLocalRandomSecondarySeed"

    .line 1036
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/ThreadLocalRandom;->SECONDARY:J
    :try_end_51
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_23 .. :try_end_51} :catch_b0

    .line 1039
    nop

    .line 1043
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Ljava/util/concurrent/ThreadLocalRandom;->nextLocalGaussian:Ljava/lang/ThreadLocal;

    .line 1047
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Ljava/util/concurrent/ThreadLocalRandom;->probeGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1050
    new-instance v0, Ljava/util/concurrent/ThreadLocalRandom;

    invoke-direct {v0}, Ljava/util/concurrent/ThreadLocalRandom;-><init>()V

    sput-object v0, Ljava/util/concurrent/ThreadLocalRandom;->instance:Ljava/util/concurrent/ThreadLocalRandom;

    .line 1055
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 1056
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/util/concurrent/ThreadLocalRandom;->mix64(J)J

    move-result-wide v3

    .line 1057
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/util/concurrent/ThreadLocalRandom;->mix64(J)J

    move-result-wide v5

    xor-long/2addr v3, v5

    invoke-direct {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Ljava/util/concurrent/ThreadLocalRandom;->seeder:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1061
    new-instance v0, Ljava/util/concurrent/ThreadLocalRandom$1;

    invoke-direct {v0}, Ljava/util/concurrent/ThreadLocalRandom$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_af

    .line 1066
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/security/SecureRandom;->getSeed(I)[B

    move-result-object v1

    .line 1067
    .local v1, "seedBytes":[B
    aget-byte v2, v1, v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    .line 1068
    .local v2, "s":J
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_9d
    if-ge v6, v0, :cond_aa

    .line 1069
    shl-long v7, v2, v0

    aget-byte v9, v1, v6

    int-to-long v9, v9

    and-long/2addr v9, v4

    or-long v2, v7, v9

    .line 1068
    add-int/lit8 v6, v6, 0x1

    goto :goto_9d

    .line 1070
    .end local v6    # "i":I
    :cond_aa
    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom;->seeder:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 1072
    .end local v1    # "seedBytes":[B
    .end local v2    # "s":J
    :cond_af
    return-void

    .line 1037
    :catch_b0
    move-exception v0

    .line 1038
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 146
    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/concurrent/ThreadLocalRandom;->initialized:Z

    .line 148
    return-void
.end method

.method static final greylist-max-o advanceProbe(I)I
    .registers 5
    .param p0, "probe"    # I

    .line 937
    shl-int/lit8 v0, p0, 0xd

    xor-int/2addr p0, v0

    .line 938
    ushr-int/lit8 v0, p0, 0x11

    xor-int/2addr p0, v0

    .line 939
    shl-int/lit8 v0, p0, 0x5

    xor-int/2addr p0, v0

    .line 940
    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom;->U:Lsun/misc/Unsafe;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    sget-wide v2, Ljava/util/concurrent/ThreadLocalRandom;->PROBE:J

    invoke-virtual {v0, v1, v2, v3, p0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 941
    return p0
.end method

.method public static whitelist core-platform-api test-api current()Ljava/util/concurrent/ThreadLocalRandom;
    .registers 4

    .line 172
    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom;->U:Lsun/misc/Unsafe;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    sget-wide v2, Ljava/util/concurrent/ThreadLocalRandom;->PROBE:J

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    if-nez v0, :cond_11

    .line 173
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->localInit()V

    .line 174
    :cond_11
    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom;->instance:Ljava/util/concurrent/ThreadLocalRandom;

    return-object v0
.end method

.method static final greylist-max-o getProbe()I
    .registers 4

    .line 929
    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom;->U:Lsun/misc/Unsafe;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    sget-wide v2, Ljava/util/concurrent/ThreadLocalRandom;->PROBE:J

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method

.method static final greylist-max-o localInit()V
    .registers 11

    .line 158
    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom;->probeGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    const v1, -0x61c88647

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    .line 159
    .local v0, "p":I
    if-nez v0, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    move v1, v0

    .line 160
    .local v1, "probe":I
    :goto_e
    sget-object v2, Ljava/util/concurrent/ThreadLocalRandom;->seeder:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v3, -0x4498517a7b3558c5L    # -1.5671250923562117E-22

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/util/concurrent/ThreadLocalRandom;->mix64(J)J

    move-result-wide v2

    .line 161
    .local v2, "seed":J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    .line 162
    .local v10, "t":Ljava/lang/Thread;
    sget-object v4, Ljava/util/concurrent/ThreadLocalRandom;->U:Lsun/misc/Unsafe;

    sget-wide v6, Ljava/util/concurrent/ThreadLocalRandom;->SEED:J

    move-object v5, v10

    move-wide v8, v2

    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 163
    sget-object v4, Ljava/util/concurrent/ThreadLocalRandom;->U:Lsun/misc/Unsafe;

    sget-wide v5, Ljava/util/concurrent/ThreadLocalRandom;->PROBE:J

    invoke-virtual {v4, v10, v5, v6, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 164
    return-void
.end method

.method private static greylist-max-o mix32(J)I
    .registers 7
    .param p0, "z"    # J

    .line 135
    const/16 v0, 0x21

    ushr-long v1, p0, v0

    xor-long/2addr v1, p0

    const-wide v3, -0xae502812aa7333L

    mul-long/2addr v1, v3

    .line 136
    .end local p0    # "z":J
    .local v1, "z":J
    ushr-long p0, v1, v0

    xor-long/2addr p0, v1

    const-wide v3, -0x3b314601e57a13adL    # -2.902039044684214E23

    mul-long/2addr p0, v3

    const/16 v0, 0x20

    ushr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method private static greylist-max-o mix64(J)J
    .registers 7
    .param p0, "z"    # J

    .line 129
    const/16 v0, 0x21

    ushr-long v1, p0, v0

    xor-long/2addr v1, p0

    const-wide v3, -0xae502812aa7333L

    mul-long/2addr v1, v3

    .line 130
    .end local p0    # "z":J
    .local v1, "z":J
    ushr-long p0, v1, v0

    xor-long/2addr p0, v1

    const-wide v3, -0x3b314601e57a13adL    # -2.902039044684214E23

    mul-long/2addr p0, v3

    .line 131
    .end local v1    # "z":J
    .restart local p0    # "z":J
    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    return-wide v0
.end method

.method static final greylist-max-o nextSecondarySeed()I
    .registers 5

    .line 949
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 950
    .local v0, "t":Ljava/lang/Thread;
    sget-object v1, Ljava/util/concurrent/ThreadLocalRandom;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ThreadLocalRandom;->SECONDARY:J

    invoke-virtual {v1, v0, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    move v2, v1

    .local v2, "r":I
    if-eqz v1, :cond_19

    .line 951
    shl-int/lit8 v1, v2, 0xd

    xor-int/2addr v1, v2

    .line 952
    .end local v2    # "r":I
    .local v1, "r":I
    ushr-int/lit8 v2, v1, 0x11

    xor-int/2addr v1, v2

    .line 953
    shl-int/lit8 v2, v1, 0x5

    xor-int/2addr v1, v2

    goto :goto_2e

    .line 955
    .end local v1    # "r":I
    .restart local v2    # "r":I
    :cond_19
    sget-object v1, Ljava/util/concurrent/ThreadLocalRandom;->seeder:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v3, -0x4498517a7b3558c5L    # -1.5671250923562117E-22

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/util/concurrent/ThreadLocalRandom;->mix32(J)I

    move-result v1

    move v2, v1

    if-nez v1, :cond_2d

    .line 956
    const/4 v1, 0x1

    .end local v2    # "r":I
    .restart local v1    # "r":I
    goto :goto_2e

    .line 955
    .end local v1    # "r":I
    .restart local v2    # "r":I
    :cond_2d
    move v1, v2

    .line 957
    .end local v2    # "r":I
    .restart local v1    # "r":I
    :goto_2e
    sget-object v2, Ljava/util/concurrent/ThreadLocalRandom;->U:Lsun/misc/Unsafe;

    sget-wide v3, Ljava/util/concurrent/ThreadLocalRandom;->SECONDARY:J

    invoke-virtual {v2, v0, v3, v4, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 958
    return v1
.end method

.method private whitelist readResolve()Ljava/lang/Object;
    .registers 2

    .line 995
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    return-object v0
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 7
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 984
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 985
    .local v0, "fields":Ljava/io/ObjectOutputStream$PutField;
    sget-object v1, Ljava/util/concurrent/ThreadLocalRandom;->U:Lsun/misc/Unsafe;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    sget-wide v3, Ljava/util/concurrent/ThreadLocalRandom;->SEED:J

    invoke-virtual {v1, v2, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    const-string v3, "rnd"

    invoke-virtual {v0, v3, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;J)V

    .line 986
    const-string v1, "initialized"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 987
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 988
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api doubles()Ljava/util/stream/DoubleStream;
    .registers 11

    .line 673
    new-instance v9, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;

    const-wide/16 v1, 0x0

    const-wide v3, 0x7fffffffffffffffL

    const-wide v5, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide/16 v7, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;-><init>(JJDD)V

    .line 674
    const/4 v0, 0x0

    invoke-static {v9, v0}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    move-result-object v0

    .line 673
    return-object v0
.end method

.method public whitelist core-platform-api test-api doubles(DD)Ljava/util/stream/DoubleStream;
    .registers 15
    .param p1, "randomNumberOrigin"    # D
    .param p3, "randomNumberBound"    # D

    .line 724
    cmpg-double v0, p1, p3

    if-gez v0, :cond_19

    .line 726
    new-instance v0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v1, v0

    move-wide v6, p1

    move-wide v8, p3

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;-><init>(JJDD)V

    const/4 v1, 0x0

    .line 727
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    move-result-object v0

    .line 726
    return-object v0

    .line 725
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api doubles(J)Ljava/util/stream/DoubleStream;
    .registers 13
    .param p1, "streamSize"    # J

    .line 653
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1c

    .line 655
    new-instance v0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;

    const-wide/16 v2, 0x0

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide/16 v8, 0x0

    move-object v1, v0

    move-wide v4, p1

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;-><init>(JJDD)V

    const/4 v1, 0x0

    .line 656
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    move-result-object v0

    .line 655
    return-object v0

    .line 654
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api doubles(JDD)Ljava/util/stream/DoubleStream;
    .registers 18
    .param p1, "streamSize"    # J
    .param p3, "randomNumberOrigin"    # D
    .param p5, "randomNumberBound"    # D

    .line 697
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_24

    .line 699
    cmpg-double v0, p3, p5

    if-gez v0, :cond_1c

    .line 701
    new-instance v0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;

    const-wide/16 v3, 0x0

    move-object v2, v0

    move-wide v5, p1

    move-wide v7, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v2 .. v10}, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;-><init>(JJDD)V

    const/4 v1, 0x0

    .line 702
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    move-result-object v0

    .line 701
    return-object v0

    .line 700
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 698
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final greylist-max-o internalNextDouble(DD)D
    .registers 11
    .param p1, "origin"    # D
    .param p3, "bound"    # D

    .line 268
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextLong()J

    move-result-wide v0

    const/16 v2, 0xb

    ushr-long/2addr v0, v2

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ca0000000000000L

    mul-double/2addr v0, v2

    .line 269
    .local v0, "r":D
    cmpg-double v2, p1, p3

    if-gez v2, :cond_23

    .line 270
    sub-double v2, p3, p1

    mul-double/2addr v2, v0

    add-double v0, v2, p1

    .line 271
    cmpl-double v2, v0, p3

    if-ltz v2, :cond_23

    .line 272
    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 274
    :cond_23
    return-wide v0
.end method

.method final greylist-max-o internalNextInt(II)I
    .registers 9
    .param p1, "origin"    # I
    .param p2, "bound"    # I

    .line 240
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/concurrent/ThreadLocalRandom;->mix32(J)I

    move-result v0

    .line 241
    .local v0, "r":I
    if-ge p1, p2, :cond_3d

    .line 242
    sub-int v1, p2, p1

    .local v1, "n":I
    add-int/lit8 v2, v1, -0x1

    .line 243
    .local v2, "m":I
    and-int v3, v1, v2

    if-nez v3, :cond_17

    .line 244
    and-int v3, v0, v2

    add-int v0, v3, p1

    goto :goto_3d

    .line 245
    :cond_17
    if-lez v1, :cond_30

    .line 246
    ushr-int/lit8 v3, v0, 0x1

    .line 247
    .local v3, "u":I
    :goto_1b
    add-int v4, v3, v2

    rem-int v5, v3, v1

    move v0, v5

    sub-int/2addr v4, v5

    if-gez v4, :cond_2e

    .line 248
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/util/concurrent/ThreadLocalRandom;->mix32(J)I

    move-result v4

    ushr-int/lit8 v3, v4, 0x1

    goto :goto_1b

    .line 250
    .end local v3    # "u":I
    :cond_2e
    add-int/2addr v0, p1

    goto :goto_3d

    .line 253
    :cond_30
    :goto_30
    if-lt v0, p1, :cond_34

    if-lt v0, p2, :cond_3d

    .line 254
    :cond_34
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/util/concurrent/ThreadLocalRandom;->mix32(J)I

    move-result v0

    goto :goto_30

    .line 257
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

    .line 211
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/concurrent/ThreadLocalRandom;->mix64(J)J

    move-result-wide v0

    .line 212
    .local v0, "r":J
    cmp-long v2, p1, p3

    if-gez v2, :cond_4f

    .line 213
    sub-long v2, p3, p1

    .local v2, "n":J
    const-wide/16 v4, 0x1

    sub-long v4, v2, v4

    .line 214
    .local v4, "m":J
    and-long v6, v2, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_1f

    .line 215
    and-long v6, v0, v4

    add-long v0, v6, p1

    goto :goto_4f

    .line 216
    :cond_1f
    cmp-long v6, v2, v8

    if-lez v6, :cond_3e

    .line 217
    const/4 v6, 0x1

    ushr-long v10, v0, v6

    .line 218
    .local v10, "u":J
    :goto_26
    add-long v12, v10, v4

    rem-long v14, v10, v2

    move-wide v0, v14

    sub-long/2addr v12, v14

    cmp-long v7, v12, v8

    if-gez v7, :cond_3b

    .line 219
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/util/concurrent/ThreadLocalRandom;->mix64(J)J

    move-result-wide v12

    ushr-long v10, v12, v6

    goto :goto_26

    .line 221
    .end local v10    # "u":J
    :cond_3b
    add-long v0, v0, p1

    goto :goto_4f

    .line 224
    :cond_3e
    :goto_3e
    cmp-long v6, v0, p1

    if-ltz v6, :cond_46

    cmp-long v6, v0, p3

    if-ltz v6, :cond_4f

    .line 225
    :cond_46
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/util/concurrent/ThreadLocalRandom;->mix64(J)J

    move-result-wide v0

    goto :goto_3e

    .line 228
    .end local v2    # "n":J
    .end local v4    # "m":J
    :cond_4f
    :goto_4f
    return-wide v0
.end method

.method public whitelist core-platform-api test-api ints()Ljava/util/stream/IntStream;
    .registers 9

    .line 495
    new-instance v7, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    const-wide/16 v1, 0x0

    const-wide v3, 0x7fffffffffffffffL

    const v5, 0x7fffffff

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;-><init>(JJII)V

    .line 496
    const/4 v0, 0x0

    invoke-static {v7, v0}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 495
    return-object v0
.end method

.method public whitelist core-platform-api test-api ints(II)Ljava/util/stream/IntStream;
    .registers 11
    .param p1, "randomNumberOrigin"    # I
    .param p2, "randomNumberBound"    # I

    .line 545
    if-ge p1, p2, :cond_17

    .line 547
    new-instance v7, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    const-wide/16 v1, 0x0

    const-wide v3, 0x7fffffffffffffffL

    move-object v0, v7

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;-><init>(JJII)V

    const/4 v0, 0x0

    .line 548
    invoke-static {v7, v0}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 547
    return-object v0

    .line 546
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api ints(J)Ljava/util/stream/IntStream;
    .registers 11
    .param p1, "streamSize"    # J

    .line 476
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_19

    .line 478
    new-instance v0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    const-wide/16 v2, 0x0

    const v6, 0x7fffffff

    const/4 v7, 0x0

    move-object v1, v0

    move-wide v4, p1

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;-><init>(JJII)V

    const/4 v1, 0x0

    .line 479
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 478
    return-object v0

    .line 477
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api ints(JII)Ljava/util/stream/IntStream;
    .registers 13
    .param p1, "streamSize"    # J
    .param p3, "randomNumberOrigin"    # I
    .param p4, "randomNumberBound"    # I

    .line 518
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_21

    .line 520
    if-ge p3, p4, :cond_19

    .line 522
    new-instance v0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    const-wide/16 v2, 0x0

    move-object v1, v0

    move-wide v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;-><init>(JJII)V

    const/4 v1, 0x0

    .line 523
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 522
    return-object v0

    .line 521
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 519
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api longs()Ljava/util/stream/LongStream;
    .registers 11

    .line 583
    new-instance v9, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;

    const-wide/16 v1, 0x0

    const-wide v3, 0x7fffffffffffffffL

    const-wide v5, 0x7fffffffffffffffL

    const-wide/16 v7, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;-><init>(JJJJ)V

    .line 584
    const/4 v0, 0x0

    invoke-static {v9, v0}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    move-result-object v0

    .line 583
    return-object v0
.end method

.method public whitelist core-platform-api test-api longs(J)Ljava/util/stream/LongStream;
    .registers 13
    .param p1, "streamSize"    # J

    .line 564
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1c

    .line 566
    new-instance v0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;

    const-wide/16 v2, 0x0

    const-wide v6, 0x7fffffffffffffffL

    const-wide/16 v8, 0x0

    move-object v1, v0

    move-wide v4, p1

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;-><init>(JJJJ)V

    const/4 v1, 0x0

    .line 567
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    move-result-object v0

    .line 566
    return-object v0

    .line 565
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api longs(JJ)Ljava/util/stream/LongStream;
    .registers 15
    .param p1, "randomNumberOrigin"    # J
    .param p3, "randomNumberBound"    # J

    .line 633
    cmp-long v0, p1, p3

    if-gez v0, :cond_19

    .line 635
    new-instance v0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v1, v0

    move-wide v6, p1

    move-wide v8, p3

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;-><init>(JJJJ)V

    const/4 v1, 0x0

    .line 636
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    move-result-object v0

    .line 635
    return-object v0

    .line 634
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api longs(JJJ)Ljava/util/stream/LongStream;
    .registers 18
    .param p1, "streamSize"    # J
    .param p3, "randomNumberOrigin"    # J
    .param p5, "randomNumberBound"    # J

    .line 606
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_24

    .line 608
    cmp-long v0, p3, p5

    if-gez v0, :cond_1c

    .line 610
    new-instance v0, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;

    const-wide/16 v3, 0x0

    move-object v2, v0

    move-wide v5, p1

    move-wide v7, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v2 .. v10}, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;-><init>(JJJJ)V

    const/4 v1, 0x0

    .line 611
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    move-result-object v0

    .line 610
    return-object v0

    .line 609
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 607
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist core-platform-api test-api next(I)I
    .registers 5
    .param p1, "bits"    # I

    .line 198
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/concurrent/ThreadLocalRandom;->mix64(J)J

    move-result-wide v0

    rsub-int/lit8 v2, p1, 0x40

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public whitelist core-platform-api test-api nextBoolean()Z
    .registers 3

    .line 430
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/concurrent/ThreadLocalRandom;->mix32(J)I

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

    .line 387
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/concurrent/ThreadLocalRandom;->mix64(J)J

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

    .line 400
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_28

    .line 402
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/concurrent/ThreadLocalRandom;->mix64(J)J

    move-result-wide v0

    const/16 v2, 0xb

    ushr-long/2addr v0, v2

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ca0000000000000L

    mul-double/2addr v0, v2

    mul-double/2addr v0, p1

    .line 403
    .local v0, "result":D
    cmpg-double v2, v0, p1

    if-gez v2, :cond_1c

    move-wide v2, v0

    goto :goto_27

    .line 404
    :cond_1c
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    .line 403
    :goto_27
    return-wide v2

    .line 401
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

    .line 419
    cmpg-double v0, p1, p3

    if-gez v0, :cond_9

    .line 421
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ThreadLocalRandom;->internalNextDouble(DD)D

    move-result-wide v0

    return-wide v0

    .line 420
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api nextFloat()F
    .registers 3

    .line 441
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/concurrent/ThreadLocalRandom;->mix32(J)I

    move-result v0

    ushr-int/lit8 v0, v0, 0x8

    int-to-float v0, v0

    const/high16 v1, 0x33800000

    mul-float/2addr v0, v1

    return v0
.end method

.method public whitelist core-platform-api test-api nextGaussian()D
    .registers 14

    .line 446
    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom;->nextLocalGaussian:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 447
    .local v0, "d":Ljava/lang/Double;
    if-eqz v0, :cond_15

    .line 448
    sget-object v1, Ljava/util/concurrent/ThreadLocalRandom;->nextLocalGaussian:Ljava/lang/ThreadLocal;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 449
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    return-wide v1

    .line 453
    :cond_15
    :goto_15
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextDouble()D

    move-result-wide v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    mul-double/2addr v1, v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v1, v5

    .line 454
    .local v1, "v1":D
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextDouble()D

    move-result-wide v7

    mul-double/2addr v7, v3

    sub-double/2addr v7, v5

    .line 455
    .local v7, "v2":D
    mul-double v3, v1, v1

    mul-double v9, v7, v7

    add-double/2addr v3, v9

    .line 456
    .local v3, "s":D
    cmpl-double v5, v3, v5

    if-gez v5, :cond_4f

    const-wide/16 v5, 0x0

    cmpl-double v5, v3, v5

    if-eqz v5, :cond_4f

    .line 457
    const-wide/high16 v5, -0x4000000000000000L    # -2.0

    invoke-static {v3, v4}, Ljava/lang/StrictMath;->log(D)D

    move-result-wide v9

    mul-double/2addr v9, v5

    div-double/2addr v9, v3

    invoke-static {v9, v10}, Ljava/lang/StrictMath;->sqrt(D)D

    move-result-wide v5

    .line 458
    .local v5, "multiplier":D
    sget-object v9, Ljava/util/concurrent/ThreadLocalRandom;->nextLocalGaussian:Ljava/lang/ThreadLocal;

    new-instance v10, Ljava/lang/Double;

    mul-double v11, v7, v5

    invoke-direct {v10, v11, v12}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v9, v10}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 459
    mul-double v9, v1, v5

    return-wide v9

    .line 456
    .end local v5    # "multiplier":D
    :cond_4f
    goto :goto_15
.end method

.method public whitelist core-platform-api test-api nextInt()I
    .registers 3

    .line 283
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/concurrent/ThreadLocalRandom;->mix32(J)I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api nextInt(I)I
    .registers 7
    .param p1, "bound"    # I

    .line 296
    if-lez p1, :cond_28

    .line 298
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/concurrent/ThreadLocalRandom;->mix32(J)I

    move-result v0

    .line 299
    .local v0, "r":I
    add-int/lit8 v1, p1, -0x1

    .line 300
    .local v1, "m":I
    and-int v2, p1, v1

    if-nez v2, :cond_12

    .line 301
    and-int/2addr v0, v1

    goto :goto_27

    .line 303
    :cond_12
    ushr-int/lit8 v2, v0, 0x1

    .line 304
    .local v2, "u":I
    :goto_14
    add-int v3, v2, v1

    rem-int v4, v2, p1

    move v0, v4

    sub-int/2addr v3, v4

    if-gez v3, :cond_27

    .line 305
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/util/concurrent/ThreadLocalRandom;->mix32(J)I

    move-result v3

    ushr-int/lit8 v2, v3, 0x1

    goto :goto_14

    .line 308
    .end local v2    # "u":I
    :cond_27
    :goto_27
    return v0

    .line 297
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

    .line 323
    if-ge p1, p2, :cond_7

    .line 325
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ThreadLocalRandom;->internalNextInt(II)I

    move-result v0

    return v0

    .line 324
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api nextLong()J
    .registers 3

    .line 334
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/concurrent/ThreadLocalRandom;->mix64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist core-platform-api test-api nextLong(J)J
    .registers 16
    .param p1, "bound"    # J

    .line 347
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_35

    .line 349
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/util/concurrent/ThreadLocalRandom;->mix64(J)J

    move-result-wide v2

    .line 350
    .local v2, "r":J
    const-wide/16 v4, 0x1

    sub-long v4, p1, v4

    .line 351
    .local v4, "m":J
    and-long v6, p1, v4

    cmp-long v6, v6, v0

    if-nez v6, :cond_1b

    .line 352
    and-long v0, v2, v4

    .end local v2    # "r":J
    .local v0, "r":J
    goto :goto_34

    .line 354
    .end local v0    # "r":J
    .restart local v2    # "r":J
    :cond_1b
    const/4 v6, 0x1

    ushr-long v7, v2, v6

    .line 355
    .local v7, "u":J
    :goto_1e
    add-long v9, v7, v4

    rem-long v11, v7, p1

    move-wide v2, v11

    sub-long/2addr v9, v11

    cmp-long v9, v9, v0

    if-gez v9, :cond_33

    .line 356
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/util/concurrent/ThreadLocalRandom;->mix64(J)J

    move-result-wide v9

    ushr-long v7, v9, v6

    goto :goto_1e

    .line 355
    :cond_33
    move-wide v0, v2

    .line 359
    .end local v2    # "r":J
    .end local v7    # "u":J
    .restart local v0    # "r":J
    :goto_34
    return-wide v0

    .line 348
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

    .line 374
    cmp-long v0, p1, p3

    if-gez v0, :cond_9

    .line 376
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ThreadLocalRandom;->internalNextLong(JJ)J

    move-result-wide v0

    return-wide v0

    .line 375
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final greylist-max-o nextSeed()J
    .registers 10

    .line 191
    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom;->U:Lsun/misc/Unsafe;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    move-object v6, v1

    .local v6, "t":Ljava/lang/Thread;
    sget-wide v2, Ljava/util/concurrent/ThreadLocalRandom;->SEED:J

    sget-object v4, Ljava/util/concurrent/ThreadLocalRandom;->U:Lsun/misc/Unsafe;

    .line 192
    invoke-virtual {v4, v6, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    const-wide v7, -0x61c8864680b583ebL

    add-long/2addr v4, v7

    move-wide v7, v4

    .line 191
    .local v7, "r":J
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 193
    return-wide v7
.end method

.method public whitelist core-platform-api test-api setSeed(J)V
    .registers 4
    .param p1, "seed"    # J

    .line 185
    iget-boolean v0, p0, Ljava/util/concurrent/ThreadLocalRandom;->initialized:Z

    if-nez v0, :cond_5

    .line 187
    return-void

    .line 186
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
