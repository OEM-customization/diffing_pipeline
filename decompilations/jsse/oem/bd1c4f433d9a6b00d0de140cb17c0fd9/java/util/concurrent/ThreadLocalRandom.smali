.class public Ljava/util/concurrent/ThreadLocalRandom;
.super Ljava/util/Random;
.source "ThreadLocalRandom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ThreadLocalRandom$1;,
        Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;,
        Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;,
        Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;
    }
.end annotation


# static fields
.field static final BAD_BOUND:Ljava/lang/String; = "bound must be positive"

.field static final BAD_RANGE:Ljava/lang/String; = "bound must be greater than origin"

.field static final BAD_SIZE:Ljava/lang/String; = "size must be non-negative"

.field private static final DOUBLE_UNIT:D = 1.1102230246251565E-16

.field private static final FLOAT_UNIT:F = 5.9604645E-8f

.field private static final GAMMA:J = -0x61c8864680b583ebL

.field private static final PROBE:J

.field private static final PROBE_INCREMENT:I = -0x61c88647

.field private static final SECONDARY:J

.field private static final SEED:J

.field private static final SEEDER_INCREMENT:J = -0x4498517a7b3558c5L

.field private static final U:Lsun/misc/Unsafe;

.field static final instance:Ljava/util/concurrent/ThreadLocalRandom;

.field private static final nextLocalGaussian:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static final probeGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final seeder:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = -0x5135b0e98579898dL


# instance fields
.field initialized:Z


# direct methods
.method static constructor <clinit>()V
    .registers 14

    .prologue
    const-wide/16 v12, 0xff

    const/4 v11, 0x0

    const/16 v10, 0x8

    .line 970
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/io/ObjectStreamField;

    .line 971
    new-instance v6, Ljava/io/ObjectStreamField;

    const-string/jumbo v7, "rnd"

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {v6, v7, v8}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v6, v5, v11

    .line 972
    new-instance v6, Ljava/io/ObjectStreamField;

    const-string/jumbo v7, "initialized"

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v6, v7, v8}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 970
    sput-object v5, Ljava/util/concurrent/ThreadLocalRandom;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    .line 1024
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v5

    sput-object v5, Ljava/util/concurrent/ThreadLocalRandom;->U:Lsun/misc/Unsafe;

    .line 1030
    :try_start_29
    sget-object v5, Ljava/util/concurrent/ThreadLocalRandom;->U:Lsun/misc/Unsafe;

    .line 1031
    const-class v6, Ljava/lang/Thread;

    const-string/jumbo v7, "threadLocalRandomSeed"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 1030
    invoke-virtual {v5, v6}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    sput-wide v6, Ljava/util/concurrent/ThreadLocalRandom;->SEED:J

    .line 1032
    sget-object v5, Ljava/util/concurrent/ThreadLocalRandom;->U:Lsun/misc/Unsafe;

    .line 1033
    const-class v6, Ljava/lang/Thread;

    const-string/jumbo v7, "threadLocalRandomProbe"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 1032
    invoke-virtual {v5, v6}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    sput-wide v6, Ljava/util/concurrent/ThreadLocalRandom;->PROBE:J

    .line 1034
    sget-object v5, Ljava/util/concurrent/ThreadLocalRandom;->U:Lsun/misc/Unsafe;

    .line 1035
    const-class v6, Ljava/lang/Thread;

    const-string/jumbo v7, "threadLocalRandomSecondarySeed"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 1034
    invoke-virtual {v5, v6}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    sput-wide v6, Ljava/util/concurrent/ThreadLocalRandom;->SECONDARY:J
    :try_end_5c
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_29 .. :try_end_5c} :catch_b1

    .line 1043
    new-instance v5, Ljava/lang/ThreadLocal;

    invoke-direct {v5}, Ljava/lang/ThreadLocal;-><init>()V

    .line 1042
    sput-object v5, Ljava/util/concurrent/ThreadLocalRandom;->nextLocalGaussian:Ljava/lang/ThreadLocal;

    .line 1046
    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v5, Ljava/util/concurrent/ThreadLocalRandom;->probeGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1049
    new-instance v5, Ljava/util/concurrent/ThreadLocalRandom;

    invoke-direct {v5}, Ljava/util/concurrent/ThreadLocalRandom;-><init>()V

    sput-object v5, Ljava/util/concurrent/ThreadLocalRandom;->instance:Ljava/util/concurrent/ThreadLocalRandom;

    .line 1055
    new-instance v5, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/util/concurrent/ThreadLocalRandom;->mix64(J)J

    move-result-wide v6

    .line 1056
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/util/concurrent/ThreadLocalRandom;->mix64(J)J

    move-result-wide v8

    .line 1055
    xor-long/2addr v6, v8

    invoke-direct {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 1054
    sput-object v5, Ljava/util/concurrent/ThreadLocalRandom;->seeder:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1061
    new-instance v5, Ljava/util/concurrent/ThreadLocalRandom$1;

    invoke-direct {v5}, Ljava/util/concurrent/ThreadLocalRandom$1;-><init>()V

    .line 1060
    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_bd

    .line 1065
    invoke-static {v10}, Ljava/security/SecureRandom;->getSeed(I)[B

    move-result-object v4

    .line 1066
    .local v4, "seedBytes":[B
    aget-byte v5, v4, v11

    int-to-long v6, v5

    and-long v2, v6, v12

    .line 1067
    .local v2, "s":J
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_a4
    if-ge v1, v10, :cond_b8

    .line 1068
    shl-long v6, v2, v10

    aget-byte v5, v4, v1

    int-to-long v8, v5

    and-long/2addr v8, v12

    or-long v2, v6, v8

    .line 1067
    add-int/lit8 v1, v1, 0x1

    goto :goto_a4

    .line 1036
    .end local v1    # "i":I
    .end local v2    # "s":J
    .end local v4    # "seedBytes":[B
    :catch_b1
    move-exception v0

    .line 1037
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v5, Ljava/lang/Error;

    invoke-direct {v5, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 1069
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    .restart local v1    # "i":I
    .restart local v2    # "s":J
    .restart local v4    # "seedBytes":[B
    :cond_b8
    sget-object v5, Ljava/util/concurrent/ThreadLocalRandom;->seeder:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 82
    :cond_bd
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/concurrent/ThreadLocalRandom;->initialized:Z

    .line 148
    return-void
.end method

.method static final advanceProbe(I)I
    .registers 5
    .param p0, "probe"    # I

    .prologue
    .line 936
    shl-int/lit8 v0, p0, 0xd

    xor-int/2addr p0, v0

    .line 937
    ushr-int/lit8 v0, p0, 0x11

    xor-int/2addr p0, v0

    .line 938
    shl-int/lit8 v0, p0, 0x5

    xor-int/2addr p0, v0

    .line 939
    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom;->U:Lsun/misc/Unsafe;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    sget-wide v2, Ljava/util/concurrent/ThreadLocalRandom;->PROBE:J

    invoke-virtual {v0, v1, v2, v3, p0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 940
    return p0
.end method

.method public static current()Ljava/util/concurrent/ThreadLocalRandom;
    .registers 4

    .prologue
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

.method static final getProbe()I
    .registers 4

    .prologue
    .line 928
    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom;->U:Lsun/misc/Unsafe;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    sget-wide v2, Ljava/util/concurrent/ThreadLocalRandom;->PROBE:J

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method

.method static final localInit()V
    .registers 8

    .prologue
    .line 158
    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom;->probeGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    const v2, -0x61c88647

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v6

    .line 159
    .local v6, "p":I
    if-nez v6, :cond_2e

    const/4 v7, 0x1

    .line 160
    .local v7, "probe":I
    :goto_c
    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom;->seeder:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v2, -0x4498517a7b3558c5L    # -1.5671250923562117E-22

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/util/concurrent/ThreadLocalRandom;->mix64(J)J

    move-result-wide v4

    .line 161
    .local v4, "seed":J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 162
    .local v1, "t":Ljava/lang/Thread;
    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ThreadLocalRandom;->SEED:J

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 163
    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ThreadLocalRandom;->PROBE:J

    invoke-virtual {v0, v1, v2, v3, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 164
    return-void

    .line 159
    .end local v1    # "t":Ljava/lang/Thread;
    .end local v4    # "seed":J
    .end local v7    # "probe":I
    :cond_2e
    move v7, v6

    .restart local v7    # "probe":I
    goto :goto_c
.end method

.method private static mix32(J)I
    .registers 8
    .param p0, "z"    # J

    .prologue
    const/16 v4, 0x21

    .line 135
    ushr-long v0, p0, v4

    xor-long/2addr v0, p0

    const-wide v2, -0xae502812aa7333L

    mul-long p0, v0, v2

    .line 136
    ushr-long v0, p0, v4

    xor-long/2addr v0, p0

    const-wide v2, -0x3b314601e57a13adL    # -2.902039044684214E23

    mul-long/2addr v0, v2

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private static mix64(J)J
    .registers 8
    .param p0, "z"    # J

    .prologue
    const/16 v4, 0x21

    .line 129
    ushr-long v0, p0, v4

    xor-long/2addr v0, p0

    const-wide v2, -0xae502812aa7333L

    mul-long p0, v0, v2

    .line 130
    ushr-long v0, p0, v4

    xor-long/2addr v0, p0

    const-wide v2, -0x3b314601e57a13adL    # -2.902039044684214E23

    mul-long p0, v0, v2

    .line 131
    ushr-long v0, p0, v4

    xor-long/2addr v0, p0

    return-wide v0
.end method

.method static final nextSecondarySeed()I
    .registers 6

    .prologue
    .line 948
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 949
    .local v1, "t":Ljava/lang/Thread;
    sget-object v2, Ljava/util/concurrent/ThreadLocalRandom;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ThreadLocalRandom;->SECONDARY:J

    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    .local v0, "r":I
    if-eqz v0, :cond_1f

    .line 950
    shl-int/lit8 v2, v0, 0xd

    xor-int/2addr v0, v2

    .line 951
    ushr-int/lit8 v2, v0, 0x11

    xor-int/2addr v0, v2

    .line 952
    shl-int/lit8 v2, v0, 0x5

    xor-int/2addr v0, v2

    .line 956
    :cond_17
    :goto_17
    sget-object v2, Ljava/util/concurrent/ThreadLocalRandom;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ThreadLocalRandom;->SECONDARY:J

    invoke-virtual {v2, v1, v4, v5, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 957
    return v0

    .line 954
    :cond_1f
    sget-object v2, Ljava/util/concurrent/ThreadLocalRandom;->seeder:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v4, -0x4498517a7b3558c5L    # -1.5671250923562117E-22

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/util/concurrent/ThreadLocalRandom;->mix32(J)I

    move-result v0

    if-nez v0, :cond_17

    .line 955
    const/4 v0, 0x1

    goto :goto_17
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 994
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 8
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 983
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 984
    .local v0, "fields":Ljava/io/ObjectOutputStream$PutField;
    const-string/jumbo v1, "rnd"

    sget-object v2, Ljava/util/concurrent/ThreadLocalRandom;->U:Lsun/misc/Unsafe;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    sget-wide v4, Ljava/util/concurrent/ThreadLocalRandom;->SEED:J

    invoke-virtual {v2, v3, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;J)V

    .line 985
    const-string/jumbo v1, "initialized"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 986
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 987
    return-void
.end method


# virtual methods
.method public doubles()Ljava/util/stream/DoubleStream;
    .registers 11

    .prologue
    .line 673
    new-instance v1, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;

    .line 674
    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide/16 v8, 0x0

    .line 673
    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;-><init>(JJDD)V

    .line 675
    const/4 v0, 0x0

    .line 672
    invoke-static {v1, v0}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public doubles(DD)Ljava/util/stream/DoubleStream;
    .registers 16
    .param p1, "randomNumberOrigin"    # D
    .param p3, "randomNumberBound"    # D

    .prologue
    const/4 v10, 0x0

    .line 723
    cmpg-double v0, p1, p3

    if-gez v0, :cond_11

    const/4 v0, 0x1

    :goto_6
    if-nez v0, :cond_13

    .line 724
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    move v0, v10

    .line 723
    goto :goto_6

    .line 726
    :cond_13
    new-instance v1, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;

    .line 727
    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-wide v6, p1

    move-wide v8, p3

    .line 726
    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;-><init>(JJDD)V

    .line 725
    invoke-static {v1, v10}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public doubles(J)Ljava/util/stream/DoubleStream;
    .registers 14
    .param p1, "streamSize"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 652
    cmp-long v0, p1, v2

    if-gez v0, :cond_f

    .line 653
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 655
    :cond_f
    new-instance v1, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;

    .line 656
    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide/16 v8, 0x0

    move-wide v4, p1

    .line 655
    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;-><init>(JJDD)V

    .line 657
    const/4 v0, 0x0

    .line 654
    invoke-static {v1, v0}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public doubles(JDD)Ljava/util/stream/DoubleStream;
    .registers 18
    .param p1, "streamSize"    # J
    .param p3, "randomNumberOrigin"    # D
    .param p5, "randomNumberBound"    # D

    .prologue
    .line 696
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_f

    .line 697
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 698
    :cond_f
    cmpg-double v0, p3, p5

    if-gez v0, :cond_1f

    const/4 v0, 0x1

    :goto_14
    if-nez v0, :cond_21

    .line 699
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 698
    :cond_1f
    const/4 v0, 0x0

    goto :goto_14

    .line 701
    :cond_21
    new-instance v1, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;

    .line 702
    const-wide/16 v2, 0x0

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    .line 701
    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;-><init>(JJDD)V

    .line 703
    const/4 v0, 0x0

    .line 700
    invoke-static {v1, v0}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method final internalNextDouble(DD)D
    .registers 12
    .param p1, "origin"    # D
    .param p3, "bound"    # D

    .prologue
    .line 268
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextLong()J

    move-result-wide v2

    const/16 v4, 0xb

    ushr-long/2addr v2, v4

    long-to-double v2, v2

    const-wide/high16 v4, 0x3ca0000000000000L

    mul-double v0, v2, v4

    .line 269
    .local v0, "r":D
    cmpg-double v2, p1, p3

    if-gez v2, :cond_24

    .line 270
    sub-double v2, p3, p1

    mul-double/2addr v2, v0

    add-double v0, v2, p1

    .line 271
    cmpl-double v2, v0, p3

    if-ltz v2, :cond_24

    .line 272
    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 274
    :cond_24
    return-wide v0
.end method

.method final internalNextInt(II)I
    .registers 9
    .param p1, "origin"    # I
    .param p2, "bound"    # I

    .prologue
    .line 240
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/util/concurrent/ThreadLocalRandom;->mix32(J)I

    move-result v2

    .line 241
    .local v2, "r":I
    if-ge p1, p2, :cond_16

    .line 242
    sub-int v1, p2, p1

    .local v1, "n":I
    add-int/lit8 v0, v1, -0x1

    .line 243
    .local v0, "m":I
    and-int v4, v1, v0

    if-nez v4, :cond_17

    .line 244
    and-int v4, v2, v0

    add-int v2, v4, p1

    .line 257
    .end local v0    # "m":I
    .end local v1    # "n":I
    :cond_16
    :goto_16
    return v2

    .line 245
    .restart local v0    # "m":I
    .restart local v1    # "n":I
    :cond_17
    if-lez v1, :cond_2f

    .line 246
    ushr-int/lit8 v3, v2, 0x1

    .line 247
    .local v3, "u":I
    :goto_1b
    add-int v4, v3, v0

    rem-int v2, v3, v1

    sub-int/2addr v4, v2

    .line 246
    if-gez v4, :cond_2d

    .line 248
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/util/concurrent/ThreadLocalRandom;->mix32(J)I

    move-result v4

    ushr-int/lit8 v3, v4, 0x1

    goto :goto_1b

    .line 250
    :cond_2d
    add-int/2addr v2, p1

    goto :goto_16

    .line 253
    .end local v3    # "u":I
    :cond_2f
    :goto_2f
    if-lt v2, p1, :cond_33

    if-lt v2, p2, :cond_16

    .line 254
    :cond_33
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/util/concurrent/ThreadLocalRandom;->mix32(J)I

    move-result v2

    goto :goto_2f
.end method

.method final internalNextLong(JJ)J
    .registers 18
    .param p1, "origin"    # J
    .param p3, "bound"    # J

    .prologue
    .line 211
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/util/concurrent/ThreadLocalRandom;->mix64(J)J

    move-result-wide v4

    .line 212
    .local v4, "r":J
    cmp-long v8, p1, p3

    if-gez v8, :cond_1e

    .line 213
    sub-long v2, p3, p1

    .local v2, "n":J
    const-wide/16 v8, 0x1

    sub-long v0, v2, v8

    .line 214
    .local v0, "m":J
    and-long v8, v2, v0

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_1f

    .line 215
    and-long v8, v4, v0

    add-long v4, v8, p1

    .line 228
    .end local v0    # "m":J
    .end local v2    # "n":J
    :cond_1e
    :goto_1e
    return-wide v4

    .line 216
    .restart local v0    # "m":J
    .restart local v2    # "n":J
    :cond_1f
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_41

    .line 217
    const/4 v8, 0x1

    ushr-long v6, v4, v8

    .line 218
    .local v6, "u":J
    :goto_28
    add-long v8, v6, v0

    rem-long v4, v6, v2

    sub-long/2addr v8, v4

    const-wide/16 v10, 0x0

    .line 217
    cmp-long v8, v8, v10

    if-gez v8, :cond_3f

    .line 219
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/util/concurrent/ThreadLocalRandom;->mix64(J)J

    move-result-wide v8

    const/4 v10, 0x1

    ushr-long v6, v8, v10

    goto :goto_28

    .line 221
    :cond_3f
    add-long/2addr v4, p1

    goto :goto_1e

    .line 224
    .end local v6    # "u":J
    :cond_41
    :goto_41
    cmp-long v8, v4, p1

    if-ltz v8, :cond_49

    cmp-long v8, v4, p3

    if-ltz v8, :cond_1e

    .line 225
    :cond_49
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/util/concurrent/ThreadLocalRandom;->mix64(J)J

    move-result-wide v4

    goto :goto_41
.end method

.method public ints()Ljava/util/stream/IntStream;
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 495
    new-instance v1, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    .line 496
    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    const v6, 0x7fffffff

    .line 495
    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;-><init>(JJII)V

    .line 494
    invoke-static {v1, v7}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public ints(II)Ljava/util/stream/IntStream;
    .registers 11
    .param p1, "randomNumberOrigin"    # I
    .param p2, "randomNumberBound"    # I

    .prologue
    .line 544
    if-lt p1, p2, :cond_b

    .line 545
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 547
    :cond_b
    new-instance v1, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    .line 548
    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move v6, p1

    move v7, p2

    .line 547
    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;-><init>(JJII)V

    .line 549
    const/4 v0, 0x0

    .line 546
    invoke-static {v1, v0}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public ints(J)Ljava/util/stream/IntStream;
    .registers 12
    .param p1, "streamSize"    # J

    .prologue
    const-wide/16 v2, 0x0

    const/4 v7, 0x0

    .line 475
    cmp-long v0, p1, v2

    if-gez v0, :cond_10

    .line 476
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_10
    new-instance v1, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    .line 479
    const v6, 0x7fffffff

    move-wide v4, p1

    .line 478
    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;-><init>(JJII)V

    .line 477
    invoke-static {v1, v7}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

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

    .line 517
    cmp-long v0, p1, v2

    if-gez v0, :cond_f

    .line 518
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 519
    :cond_f
    if-lt p3, p4, :cond_1a

    .line 520
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 522
    :cond_1a
    new-instance v1, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    move-wide v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;-><init>(JJII)V

    .line 524
    const/4 v0, 0x0

    .line 521
    invoke-static {v1, v0}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public longs()Ljava/util/stream/LongStream;
    .registers 11

    .prologue
    const-wide v4, 0x7fffffffffffffffL

    const-wide/16 v2, 0x0

    .line 583
    new-instance v1, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;

    move-wide v6, v4

    move-wide v8, v2

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;-><init>(JJJJ)V

    .line 585
    const/4 v0, 0x0

    .line 582
    invoke-static {v1, v0}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public longs(J)Ljava/util/stream/LongStream;
    .registers 14
    .param p1, "streamSize"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 563
    cmp-long v0, p1, v2

    if-gez v0, :cond_f

    .line 564
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 566
    :cond_f
    new-instance v1, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;

    .line 567
    const-wide v6, 0x7fffffffffffffffL

    move-wide v4, p1

    move-wide v8, v2

    .line 566
    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;-><init>(JJJJ)V

    .line 568
    const/4 v0, 0x0

    .line 565
    invoke-static {v1, v0}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public longs(JJ)Ljava/util/stream/LongStream;
    .registers 16
    .param p1, "randomNumberOrigin"    # J
    .param p3, "randomNumberBound"    # J

    .prologue
    .line 632
    cmp-long v0, p1, p3

    if-ltz v0, :cond_d

    .line 633
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 635
    :cond_d
    new-instance v1, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;

    .line 636
    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-wide v6, p1

    move-wide v8, p3

    .line 635
    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;-><init>(JJJJ)V

    .line 637
    const/4 v0, 0x0

    .line 634
    invoke-static {v1, v0}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public longs(JJJ)Ljava/util/stream/LongStream;
    .registers 18
    .param p1, "streamSize"    # J
    .param p3, "randomNumberOrigin"    # J
    .param p5, "randomNumberBound"    # J

    .prologue
    .line 605
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_f

    .line 606
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 607
    :cond_f
    cmp-long v0, p3, p5

    if-ltz v0, :cond_1c

    .line 608
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 610
    :cond_1c
    new-instance v1, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;

    .line 611
    const-wide/16 v2, 0x0

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    .line 610
    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;-><init>(JJJJ)V

    .line 612
    const/4 v0, 0x0

    .line 609
    invoke-static {v1, v0}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method protected next(I)I
    .registers 5
    .param p1, "bits"    # I

    .prologue
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

.method public nextBoolean()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 430
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/util/concurrent/ThreadLocalRandom;->mix32(J)I

    move-result v1

    if-gez v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method public nextDouble()D
    .registers 5

    .prologue
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

.method public nextDouble(D)D
    .registers 10
    .param p1, "bound"    # D

    .prologue
    .line 400
    const-wide/16 v2, 0x0

    cmpl-double v2, p1, v2

    if-lez v2, :cond_12

    const/4 v2, 0x1

    :goto_7
    if-nez v2, :cond_14

    .line 401
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "bound must be positive"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 400
    :cond_12
    const/4 v2, 0x0

    goto :goto_7

    .line 402
    :cond_14
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/util/concurrent/ThreadLocalRandom;->mix64(J)J

    move-result-wide v2

    const/16 v4, 0xb

    ushr-long/2addr v2, v4

    long-to-double v2, v2

    const-wide/high16 v4, 0x3ca0000000000000L

    mul-double/2addr v2, v4

    mul-double v0, v2, p1

    .line 403
    .local v0, "result":D
    cmpg-double v2, v0, p1

    if-gez v2, :cond_2a

    .end local v0    # "result":D
    :goto_29
    return-wide v0

    .line 404
    .restart local v0    # "result":D
    :cond_2a
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    goto :goto_29
.end method

.method public nextDouble(DD)D
    .registers 8
    .param p1, "origin"    # D
    .param p3, "bound"    # D

    .prologue
    .line 419
    cmpg-double v0, p1, p3

    if-gez v0, :cond_10

    const/4 v0, 0x1

    :goto_5
    if-nez v0, :cond_12

    .line 420
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 419
    :cond_10
    const/4 v0, 0x0

    goto :goto_5

    .line 421
    :cond_12
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ThreadLocalRandom;->internalNextDouble(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public nextFloat()F
    .registers 3

    .prologue
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

.method public nextGaussian()D
    .registers 15

    .prologue
    .line 446
    sget-object v1, Ljava/util/concurrent/ThreadLocalRandom;->nextLocalGaussian:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 447
    .local v0, "d":Ljava/lang/Double;
    if-eqz v0, :cond_15

    .line 448
    sget-object v1, Ljava/util/concurrent/ThreadLocalRandom;->nextLocalGaussian:Ljava/lang/ThreadLocal;

    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 449
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    return-wide v10

    .line 453
    :cond_15
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextDouble()D

    move-result-wide v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double v6, v10, v12

    .line 454
    .local v6, "v1":D
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextDouble()D

    move-result-wide v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double v8, v10, v12

    .line 455
    .local v8, "v2":D
    mul-double v10, v6, v6

    mul-double v12, v8, v8

    add-double v4, v10, v12

    .line 456
    .local v4, "s":D
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v4, v10

    if-gez v1, :cond_15

    const-wide/16 v10, 0x0

    cmpl-double v1, v4, v10

    if-eqz v1, :cond_15

    .line 457
    invoke-static {v4, v5}, Ljava/lang/StrictMath;->log(D)D

    move-result-wide v10

    const-wide/high16 v12, -0x4000000000000000L    # -2.0

    mul-double/2addr v10, v12

    div-double/2addr v10, v4

    invoke-static {v10, v11}, Ljava/lang/StrictMath;->sqrt(D)D

    move-result-wide v2

    .line 458
    .local v2, "multiplier":D
    sget-object v1, Ljava/util/concurrent/ThreadLocalRandom;->nextLocalGaussian:Ljava/lang/ThreadLocal;

    new-instance v10, Ljava/lang/Double;

    mul-double v12, v8, v2

    invoke-direct {v10, v12, v13}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v1, v10}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 459
    mul-double v10, v6, v2

    return-wide v10
.end method

.method public nextInt()I
    .registers 3

    .prologue
    .line 283
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/concurrent/ThreadLocalRandom;->mix32(J)I

    move-result v0

    return v0
.end method

.method public nextInt(I)I
    .registers 8
    .param p1, "bound"    # I

    .prologue
    .line 296
    if-gtz p1, :cond_b

    .line 297
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "bound must be positive"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 298
    :cond_b
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/util/concurrent/ThreadLocalRandom;->mix32(J)I

    move-result v1

    .line 299
    .local v1, "r":I
    add-int/lit8 v0, p1, -0x1

    .line 300
    .local v0, "m":I
    and-int v3, p1, v0

    if-nez v3, :cond_1b

    .line 301
    and-int/2addr v1, v0

    .line 308
    :cond_1a
    return v1

    .line 303
    :cond_1b
    ushr-int/lit8 v2, v1, 0x1

    .line 304
    .local v2, "u":I
    :goto_1d
    add-int v3, v2, v0

    rem-int v1, v2, p1

    sub-int/2addr v3, v1

    .line 303
    if-gez v3, :cond_1a

    .line 305
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/util/concurrent/ThreadLocalRandom;->mix32(J)I

    move-result v3

    ushr-int/lit8 v2, v3, 0x1

    goto :goto_1d
.end method

.method public nextInt(II)I
    .registers 5
    .param p1, "origin"    # I
    .param p2, "bound"    # I

    .prologue
    .line 323
    if-lt p1, p2, :cond_b

    .line 324
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_b
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ThreadLocalRandom;->internalNextInt(II)I

    move-result v0

    return v0
.end method

.method public nextLong()J
    .registers 3

    .prologue
    .line 334
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/concurrent/ThreadLocalRandom;->mix64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public nextLong(J)J
    .registers 14
    .param p1, "bound"    # J

    .prologue
    const/4 v10, 0x1

    const-wide/16 v8, 0x0

    .line 347
    cmp-long v6, p1, v8

    if-gtz v6, :cond_10

    .line 348
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "bound must be positive"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 349
    :cond_10
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/util/concurrent/ThreadLocalRandom;->mix64(J)J

    move-result-wide v2

    .line 350
    .local v2, "r":J
    const-wide/16 v6, 0x1

    sub-long v0, p1, v6

    .line 351
    .local v0, "m":J
    and-long v6, p1, v0

    cmp-long v6, v6, v8

    if-nez v6, :cond_24

    .line 352
    and-long/2addr v2, v0

    .line 359
    :cond_23
    return-wide v2

    .line 354
    :cond_24
    ushr-long v4, v2, v10

    .line 355
    .local v4, "u":J
    :goto_26
    add-long v6, v4, v0

    rem-long v2, v4, p1

    sub-long/2addr v6, v2

    .line 354
    cmp-long v6, v6, v8

    if-gez v6, :cond_23

    .line 356
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/util/concurrent/ThreadLocalRandom;->mix64(J)J

    move-result-wide v6

    ushr-long v4, v6, v10

    goto :goto_26
.end method

.method public nextLong(JJ)J
    .registers 8
    .param p1, "origin"    # J
    .param p3, "bound"    # J

    .prologue
    .line 374
    cmp-long v0, p1, p3

    if-ltz v0, :cond_d

    .line 375
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 376
    :cond_d
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ThreadLocalRandom;->internalNextLong(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method final nextSeed()J
    .registers 11

    .prologue
    .line 191
    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom;->U:Lsun/misc/Unsafe;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .local v1, "t":Ljava/lang/Thread;
    sget-wide v2, Ljava/util/concurrent/ThreadLocalRandom;->SEED:J

    .line 192
    sget-object v6, Ljava/util/concurrent/ThreadLocalRandom;->U:Lsun/misc/Unsafe;

    sget-wide v8, Ljava/util/concurrent/ThreadLocalRandom;->SEED:J

    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    const-wide v8, -0x61c8864680b583ebL

    add-long v4, v6, v8

    .line 191
    .local v4, "r":J
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 193
    return-wide v4
.end method

.method public setSeed(J)V
    .registers 4
    .param p1, "seed"    # J

    .prologue
    .line 185
    iget-boolean v0, p0, Ljava/util/concurrent/ThreadLocalRandom;->initialized:Z

    if-eqz v0, :cond_a

    .line 186
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 187
    :cond_a
    return-void
.end method
