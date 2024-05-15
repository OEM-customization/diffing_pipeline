.class public Ljava/util/concurrent/ForkJoinPool;
.super Ljava/util/concurrent/AbstractExecutorService;
.source "ForkJoinPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory;,
        Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;,
        Ljava/util/concurrent/ForkJoinPool$WorkQueue;,
        Ljava/util/concurrent/ForkJoinPool$AuxState;,
        Ljava/util/concurrent/ForkJoinPool$EmptyTask;,
        Ljava/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;,
        Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    }
.end annotation


# static fields
.field private static final greylist-max-o ABASE:I

.field private static final greylist-max-o AC_MASK:J = -0x1000000000000L

.field private static final greylist-max-o AC_SHIFT:I = 0x30

.field private static final greylist-max-o AC_UNIT:J = 0x1000000000000L

.field private static final greylist-max-o ADD_WORKER:J = 0x800000000000L

.field private static final greylist-max-o ASHIFT:I

.field private static final greylist-max-o COMMON_MAX_SPARES:I

.field static final greylist-max-o COMMON_PARALLELISM:I

.field private static final greylist-max-o CTL:J

.field private static final greylist-max-o DEFAULT_COMMON_MAX_SPARES:I = 0x100

.field static final greylist-max-o EVENMASK:I = 0xfffe

.field static final greylist-max-o FIFO_QUEUE:I = -0x80000000

.field private static final greylist-max-o IDLE_TIMEOUT_MS:J = 0x7d0L

.field static final greylist-max-o IS_OWNED:I = 0x1

.field static final greylist-max-o LIFO_QUEUE:I = 0x0

.field static final greylist-max-o MAX_CAP:I = 0x7fff

.field static final greylist-max-o MODE_MASK:I = -0x10000

.field static final greylist-max-o POLL_LIMIT:I = 0x3ff

.field private static final greylist-max-o RUNSTATE:J

.field private static final greylist-max-o SEED_INCREMENT:I = -0x61c88647

.field private static final greylist-max-o SHUTDOWN:I = -0x80000000

.field static final greylist-max-o SMASK:I = 0xffff

.field static final greylist-max-o SPARE_WORKER:I = 0x20000

.field private static final greylist-max-o SP_MASK:J = 0xffffffffL

.field static final greylist-max-o SQMASK:I = 0x7e

.field static final greylist-max-o SS_SEQ:I = 0x10000

.field private static final greylist-max-o STARTED:I = 0x1

.field private static final greylist-max-o STOP:I = 0x2

.field private static final greylist-max-o TC_MASK:J = 0xffff00000000L

.field private static final greylist-max-o TC_SHIFT:I = 0x20

.field private static final greylist-max-o TC_UNIT:J = 0x100000000L

.field private static final greylist-max-o TERMINATED:I = 0x4

.field private static final greylist-max-o TIMEOUT_SLOP_MS:J = 0x14L

.field private static final greylist-max-o U:Lsun/misc/Unsafe;

.field private static final greylist-max-o UC_MASK:J = -0x100000000L

.field static final greylist-max-o UNREGISTERED:I = 0x40000

.field static final greylist-max-o UNSIGNALLED:I = -0x80000000

.field static final greylist-max-o common:Ljava/util/concurrent/ForkJoinPool;

.field public static final whitelist test-api defaultForkJoinWorkerThreadFactory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

.field static final greylist-max-o modifyThreadPermission:Ljava/lang/RuntimePermission;

.field private static greylist-max-o poolNumberSequence:I


# instance fields
.field greylist-max-o auxState:Ljava/util/concurrent/ForkJoinPool$AuxState;

.field final greylist-max-o config:I

.field volatile greylist-max-o ctl:J

.field final greylist-max-o factory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

.field volatile greylist-max-o runState:I

.field final greylist-max-o ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

.field volatile greylist-max-o workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

.field final greylist-max-o workerNamePrefix:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 3463
    const-class v0, Ljava/util/concurrent/ForkJoinPool;

    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    .line 3471
    :try_start_8
    const-string v2, "ctl"

    .line 3472
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    .line 3473
    const-string v2, "runState"

    .line 3474
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/ForkJoinPool;->RUNSTATE:J

    .line 3475
    const-class v0, [Ljava/util/concurrent/ForkJoinTask;

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    sput v0, Ljava/util/concurrent/ForkJoinPool;->ABASE:I

    .line 3476
    const-class v0, [Ljava/util/concurrent/ForkJoinTask;

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    .line 3477
    .local v0, "scale":I
    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, v0

    if-nez v1, :cond_7e

    .line 3479
    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1f

    sput v1, Ljava/util/concurrent/ForkJoinPool;->ASHIFT:I
    :try_end_3b
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_8 .. :try_end_3b} :catch_86

    .line 3482
    .end local v0    # "scale":I
    nop

    .line 3486
    const-class v0, Ljava/util/concurrent/locks/LockSupport;

    .line 3488
    .local v0, "ensureLoaded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v1, 0x100

    .line 3490
    .local v1, "commonMaxSpares":I
    :try_start_40
    const-string v2, "java.util.concurrent.ForkJoinPool.common.maximumSpares"

    .line 3491
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3492
    .local v2, "p":Ljava/lang/String;
    if-eqz v2, :cond_4f

    .line 3493
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_4c} :catch_4e

    move v1, v3

    goto :goto_4f

    .line 3494
    .end local v2    # "p":Ljava/lang/String;
    :catch_4e
    move-exception v2

    :cond_4f
    :goto_4f
    nop

    .line 3495
    sput v1, Ljava/util/concurrent/ForkJoinPool;->COMMON_MAX_SPARES:I

    .line 3497
    new-instance v2, Ljava/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;-><init>(Ljava/util/concurrent/ForkJoinPool$1;)V

    sput-object v2, Ljava/util/concurrent/ForkJoinPool;->defaultForkJoinWorkerThreadFactory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    .line 3499
    new-instance v2, Ljava/lang/RuntimePermission;

    const-string v3, "modifyThread"

    invoke-direct {v2, v3}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v2, Ljava/util/concurrent/ForkJoinPool;->modifyThreadPermission:Ljava/lang/RuntimePermission;

    .line 3501
    new-instance v2, Ljava/util/concurrent/ForkJoinPool$1;

    invoke-direct {v2}, Ljava/util/concurrent/ForkJoinPool$1;-><init>()V

    .line 3502
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ForkJoinPool;

    sput-object v2, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    .line 3506
    iget v2, v2, Ljava/util/concurrent/ForkJoinPool;->config:I

    const v3, 0xffff

    and-int/2addr v2, v3

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    sput v2, Ljava/util/concurrent/ForkJoinPool;->COMMON_PARALLELISM:I

    .line 3507
    .end local v0    # "ensureLoaded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "commonMaxSpares":I
    return-void

    .line 3478
    .local v0, "scale":I
    :cond_7e
    :try_start_7e
    new-instance v1, Ljava/lang/Error;

    const-string v2, "array index scale not a power of two"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_86
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_7e .. :try_end_86} :catch_86

    .line 3480
    .end local v0    # "scale":I
    :catch_86
    move-exception v0

    .line 3481
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor whitelist test-api <init>()V
    .registers 5

    .line 2620
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/16 v1, 0x7fff

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->defaultForkJoinWorkerThreadFactory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/util/concurrent/ForkJoinPool;-><init>(ILjava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;Z)V

    .line 2622
    return-void
.end method

.method public constructor whitelist test-api <init>(I)V
    .registers 5
    .param p1, "parallelism"    # I

    .line 2639
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->defaultForkJoinWorkerThreadFactory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Ljava/util/concurrent/ForkJoinPool;-><init>(ILjava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;Z)V

    .line 2640
    return-void
.end method

.method private constructor greylist-max-o <init>(ILjava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;ILjava/lang/String;)V
    .registers 14
    .param p1, "parallelism"    # I
    .param p2, "factory"    # Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    .param p3, "handler"    # Ljava/lang/Thread$UncaughtExceptionHandler;
    .param p4, "mode"    # I
    .param p5, "workerNamePrefix"    # Ljava/lang/String;

    .line 2700
    invoke-direct {p0}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    .line 2701
    iput-object p5, p0, Ljava/util/concurrent/ForkJoinPool;->workerNamePrefix:Ljava/lang/String;

    .line 2702
    iput-object p2, p0, Ljava/util/concurrent/ForkJoinPool;->factory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    .line 2703
    iput-object p3, p0, Ljava/util/concurrent/ForkJoinPool;->ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 2704
    const v0, 0xffff

    and-int/2addr v0, p1

    or-int/2addr v0, p4

    iput v0, p0, Ljava/util/concurrent/ForkJoinPool;->config:I

    .line 2705
    neg-int v0, p1

    int-to-long v0, v0

    .line 2706
    .local v0, "np":J
    const/16 v2, 0x30

    shl-long v2, v0, v2

    const-wide/high16 v4, -0x1000000000000L

    and-long/2addr v2, v4

    const/16 v4, 0x20

    shl-long v4, v0, v4

    const-wide v6, 0xffff00000000L

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    iput-wide v2, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .line 2707
    return-void
.end method

.method public constructor whitelist test-api <init>(ILjava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;Z)V
    .registers 11
    .param p1, "parallelism"    # I
    .param p2, "factory"    # Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    .param p3, "handler"    # Ljava/lang/Thread$UncaughtExceptionHandler;
    .param p4, "asyncMode"    # Z

    .line 2670
    invoke-static {p1}, Ljava/util/concurrent/ForkJoinPool;->checkParallelism(I)I

    move-result v1

    .line 2671
    invoke-static {p2}, Ljava/util/concurrent/ForkJoinPool;->checkFactory(Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;)Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    move-result-object v2

    .line 2673
    if-eqz p4, :cond_d

    const/high16 v0, -0x80000000

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    move v4, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ForkJoinPool-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2674
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->nextPoolId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "-worker-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2670
    move-object v0, p0

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/ForkJoinPool;-><init>(ILjava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;ILjava/lang/String;)V

    .line 2675
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->checkPermission()V

    .line 2676
    return-void
.end method

.method private greylist-max-o awaitWork(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)I
    .registers 8
    .param p1, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .line 1801
    const/4 v0, 0x0

    .line 1802
    .local v0, "stat":I
    if-eqz p1, :cond_4c

    iget v1, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    if-gez v1, :cond_4c

    .line 1803
    iget-wide v1, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .line 1804
    .local v1, "c":J
    const/16 v3, 0x30

    shr-long v3, v1, v3

    long-to-int v3, v3

    iget v4, p0, Ljava/util/concurrent/ForkJoinPool;->config:I

    const v5, 0xffff

    and-int/2addr v4, v5

    add-int/2addr v3, v4

    if-gtz v3, :cond_1c

    .line 1805
    invoke-direct {p0, p1, v1, v2}, Ljava/util/concurrent/ForkJoinPool;->timedAwaitWork(Ljava/util/concurrent/ForkJoinPool$WorkQueue;J)I

    move-result v0

    goto :goto_4c

    .line 1806
    :cond_1c
    iget v3, p0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, -0x1

    if-eqz v3, :cond_27

    .line 1807
    iput v4, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    move v0, v4

    goto :goto_4c

    .line 1808
    :cond_27
    iget v3, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    if-gez v3, :cond_4c

    .line 1809
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    .line 1810
    iget v3, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    if-gez v3, :cond_38

    .line 1811
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 1812
    :cond_38
    const/4 v3, 0x0

    iput-object v3, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    .line 1813
    iget v3, p0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_45

    .line 1814
    iput v4, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    move v0, v4

    goto :goto_4c

    .line 1815
    :cond_45
    iget v3, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    if-gez v3, :cond_4c

    .line 1816
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1819
    .end local v1    # "c":J
    :cond_4c
    :goto_4c
    return v0
.end method

.method private static greylist-max-o checkFactory(Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;)Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    .registers 2
    .param p0, "factory"    # Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    .line 2686
    if-eqz p0, :cond_3

    .line 2688
    return-object p0

    .line 2687
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private static greylist-max-o checkParallelism(I)I
    .registers 2
    .param p0, "parallelism"    # I

    .line 2679
    if-lez p0, :cond_7

    const/16 v0, 0x7fff

    if-gt p0, v0, :cond_7

    .line 2681
    return p0

    .line 2680
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private static greylist-max-o checkPermission()V
    .registers 2

    .line 689
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 690
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 691
    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->modifyThreadPermission:Ljava/lang/RuntimePermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 692
    :cond_b
    return-void
.end method

.method public static whitelist test-api commonPool()Ljava/util/concurrent/ForkJoinPool;
    .registers 1

    .line 2724
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    return-object v0
.end method

.method static greylist-max-o commonSubmitterQueue()Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .registers 5

    .line 2574
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    .line 2575
    .local v0, "p":Ljava/util/concurrent/ForkJoinPool;
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->getProbe()I

    move-result v1

    .line 2577
    .local v1, "r":I
    if-eqz v0, :cond_19

    iget-object v2, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v3, v2

    .local v3, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v2, :cond_19

    array-length v2, v3

    move v4, v2

    .local v4, "wl":I
    if-lez v2, :cond_19

    .line 2579
    add-int/lit8 v2, v4, -0x1

    and-int/2addr v2, v1

    and-int/lit8 v2, v2, 0x7e

    aget-object v2, v3, v2

    goto :goto_1a

    .end local v3    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v4    # "wl":I
    :cond_19
    const/4 v2, 0x0

    .line 2577
    :goto_1a
    return-object v2
.end method

.method private greylist-max-o createWorker(Z)Z
    .registers 8
    .param p1, "isSpare"    # Z

    .line 1544
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool;->factory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    .line 1545
    .local v0, "fac":Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    const/4 v1, 0x0

    .line 1546
    .local v1, "ex":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 1549
    .local v2, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    if-eqz v0, :cond_23

    :try_start_6
    invoke-interface {v0, p0}, Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;->newThread(Ljava/util/concurrent/ForkJoinPool;)Ljava/util/concurrent/ForkJoinWorkerThread;

    move-result-object v3

    move-object v2, v3

    if-eqz v3, :cond_23

    .line 1550
    if-eqz p1, :cond_1b

    iget-object v3, v2, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v4, v3

    .local v4, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_1b

    .line 1551
    iget v3, v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    const/high16 v5, 0x20000

    or-int/2addr v3, v5

    iput v3, v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    .line 1552
    .end local v4    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_1b
    invoke-virtual {v2}, Ljava/util/concurrent/ForkJoinWorkerThread;->start()V
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_20

    .line 1553
    const/4 v3, 0x1

    return v3

    .line 1555
    :catchall_20
    move-exception v3

    .line 1556
    .local v3, "rex":Ljava/lang/Throwable;
    move-object v1, v3

    goto :goto_24

    .line 1557
    .end local v3    # "rex":Ljava/lang/Throwable;
    :cond_23
    nop

    .line 1558
    :goto_24
    invoke-virtual {p0, v2, v1}, Ljava/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    .line 1559
    const/4 v3, 0x0

    return v3
.end method

.method private greylist-max-o externalSubmit(Ljava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ForkJoinTask<",
            "TT;>;)",
            "Ljava/util/concurrent/ForkJoinTask<",
            "TT;>;"
        }
    .end annotation

    .line 2559
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TT;>;"
    if-eqz p1, :cond_20

    .line 2561
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    move-object v1, v0

    .local v1, "t":Ljava/lang/Thread;
    instance-of v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v0, :cond_1c

    move-object v0, v1

    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    move-object v2, v0

    .local v2, "w":Ljava/util/concurrent/ForkJoinWorkerThread;
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    if-ne v0, p0, :cond_1c

    iget-object v0, v2, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v3, v0

    .local v3, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v0, :cond_1c

    .line 2564
    invoke-virtual {v3, p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->push(Ljava/util/concurrent/ForkJoinTask;)V

    goto :goto_1f

    .line 2566
    .end local v2    # "w":Ljava/util/concurrent/ForkJoinWorkerThread;
    .end local v3    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_1c
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ForkJoinPool;->externalPush(Ljava/util/concurrent/ForkJoinTask;)V

    .line 2567
    :goto_1f
    return-object p1

    .line 2560
    .end local v1    # "t":Ljava/lang/Thread;
    :cond_20
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private greylist-max-o findNonEmptyStealQueue()Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .registers 13

    .line 2270
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->nextSecondarySeed()I

    move-result v0

    .line 2271
    .local v0, "r":I
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v2, v1

    .local v2, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v1, :cond_31

    array-length v1, v2

    move v3, v1

    .local v3, "wl":I
    if-lez v1, :cond_31

    .line 2272
    add-int/lit8 v1, v3, -0x1

    .local v1, "m":I
    and-int v4, v0, v1

    .line 2273
    .local v4, "origin":I
    move v5, v4

    .local v5, "k":I
    const/4 v6, 0x0

    .local v6, "oldSum":I
    const/4 v7, 0x0

    .line 2275
    .local v7, "checkSum":I
    :goto_14
    aget-object v8, v2, v5

    move-object v9, v8

    .local v9, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v8, :cond_23

    .line 2276
    iget v8, v9, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    move v10, v8

    .local v10, "b":I
    iget v11, v9, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    sub-int/2addr v8, v11

    if-gez v8, :cond_22

    .line 2277
    return-object v9

    .line 2278
    :cond_22
    add-int/2addr v7, v10

    .line 2280
    .end local v10    # "b":I
    :cond_23
    add-int/lit8 v8, v5, 0x1

    and-int/2addr v8, v1

    move v5, v8

    if-ne v8, v4, :cond_30

    .line 2281
    move v8, v7

    .end local v6    # "oldSum":I
    .local v8, "oldSum":I
    if-ne v6, v7, :cond_2d

    .line 2282
    goto :goto_31

    .line 2283
    :cond_2d
    const/4 v6, 0x0

    move v7, v6

    move v6, v8

    .line 2285
    .end local v8    # "oldSum":I
    .end local v9    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v6    # "oldSum":I
    :cond_30
    goto :goto_14

    .line 2287
    .end local v1    # "m":I
    .end local v3    # "wl":I
    .end local v4    # "origin":I
    .end local v5    # "k":I
    .end local v6    # "oldSum":I
    .end local v7    # "checkSum":I
    :cond_31
    :goto_31
    const/4 v1, 0x0

    return-object v1
.end method

.method public static whitelist test-api getCommonPoolParallelism()I
    .registers 1

    .line 2893
    sget v0, Ljava/util/concurrent/ForkJoinPool;->COMMON_PARALLELISM:I

    return v0
.end method

.method static greylist-max-o getSurplusQueuedTaskCount()I
    .registers 10

    .line 2389
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    move-object v1, v0

    .local v1, "t":Ljava/lang/Thread;
    instance-of v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    const/4 v2, 0x0

    if-eqz v0, :cond_46

    .line 2390
    move-object v0, v1

    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    move-object v3, v0

    .local v3, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    move-object v4, v0

    .local v4, "pool":Ljava/util/concurrent/ForkJoinPool;
    iget v0, v0, Ljava/util/concurrent/ForkJoinPool;->config:I

    const v5, 0xffff

    and-int/2addr v0, v5

    .line 2391
    .local v0, "p":I
    iget-object v5, v3, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v6, v5

    .local v6, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    iget v5, v5, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    iget v7, v6, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    sub-int/2addr v5, v7

    .line 2392
    .local v5, "n":I
    iget-wide v7, v4, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    const/16 v9, 0x30

    shr-long/2addr v7, v9

    long-to-int v7, v7

    add-int/2addr v7, v0

    .line 2393
    .local v7, "a":I
    ushr-int/lit8 v8, v0, 0x1

    move v0, v8

    if-le v7, v8, :cond_2c

    goto :goto_43

    .line 2394
    :cond_2c
    ushr-int/lit8 v2, v0, 0x1

    move v0, v2

    if-le v7, v2, :cond_33

    const/4 v2, 0x1

    goto :goto_43

    .line 2395
    :cond_33
    ushr-int/lit8 v2, v0, 0x1

    move v0, v2

    if-le v7, v2, :cond_3a

    const/4 v2, 0x2

    goto :goto_43

    .line 2396
    :cond_3a
    ushr-int/lit8 v2, v0, 0x1

    move v0, v2

    if-le v7, v2, :cond_41

    const/4 v2, 0x4

    goto :goto_43

    .line 2397
    :cond_41
    const/16 v2, 0x8

    :goto_43
    sub-int v2, v5, v2

    .line 2393
    return v2

    .line 2399
    .end local v0    # "p":I
    .end local v3    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    .end local v4    # "pool":Ljava/util/concurrent/ForkJoinPool;
    .end local v5    # "n":I
    .end local v6    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v7    # "a":I
    :cond_46
    return v2
.end method

.method private greylist-max-o helpStealer(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinTask;)V
    .registers 31
    .param p1, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinPool$WorkQueue;",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;)V"
        }
    .end annotation

    .line 2095
    .local p2, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    if-eqz v1, :cond_157

    if-eqz v0, :cond_157

    .line 2096
    iget-object v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    .line 2097
    .local v2, "ps":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    const/4 v3, 0x0

    .line 2098
    .local v3, "oldSum":I
    :goto_b
    invoke-virtual/range {p1 .. p2}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->tryRemoveAndExec(Ljava/util/concurrent/ForkJoinTask;)Z

    move-result v4

    if-eqz v4, :cond_156

    iget v4, v1, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v4, :cond_156

    move-object/from16 v4, p0

    iget-object v5, v4, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v6, v5

    .local v6, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v5, :cond_152

    array-length v5, v6

    move v7, v5

    .local v7, "wl":I
    if-lez v5, :cond_14c

    .line 2101
    add-int/lit8 v5, v7, -0x1

    .local v5, "m":I
    const/4 v8, 0x0

    .line 2102
    .local v8, "checkSum":I
    move-object/from16 v9, p1

    .line 2103
    .local v9, "j":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    move-object/from16 v10, p2

    .local v10, "subtask":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :goto_27
    iget v11, v10, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v11, :cond_143

    .line 2104
    iget v11, v9, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->hint:I

    or-int/lit8 v11, v11, 0x1

    .local v11, "h":I
    const/4 v12, 0x0

    .line 2105
    .local v12, "k":I
    :goto_30
    shl-int/lit8 v13, v12, 0x1

    add-int/2addr v13, v11

    and-int/2addr v13, v5

    move v14, v13

    .local v14, "i":I
    aget-object v13, v6, v13

    move-object v15, v13

    .local v15, "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v13, :cond_12b

    .line 2106
    iget-object v13, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    if-ne v13, v10, :cond_120

    .line 2107
    iput v14, v9, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->hint:I

    .line 2108
    nop

    .line 2118
    .end local v11    # "h":I
    .end local v12    # "k":I
    .end local v14    # "i":I
    :goto_41
    iget v11, v10, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-gez v11, :cond_4c

    .line 2119
    move v4, v3

    move-object/from16 v23, v6

    move/from16 v24, v7

    goto/16 :goto_149

    .line 2120
    :cond_4c
    iget v11, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    move v12, v11

    .local v12, "b":I
    add-int/2addr v8, v11

    .line 2121
    iget-object v11, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    .line 2122
    .local v11, "next":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    const/4 v13, 0x0

    .line 2123
    .local v13, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    iget-object v14, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    move-object/from16 v22, v14

    .local v22, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v14, :cond_de

    move-object/from16 v14, v22

    .end local v22    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .local v14, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    array-length v4, v14

    move/from16 v22, v4

    .local v22, "al":I
    if-lez v4, :cond_d5

    .line 2124
    add-int/lit8 v4, v22, -0x1

    and-int/2addr v4, v12

    .line 2125
    .local v4, "index":I
    move-object/from16 v23, v6

    move/from16 v24, v7

    .end local v6    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v7    # "wl":I
    .local v23, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .local v24, "wl":I
    int-to-long v6, v4

    sget v16, Ljava/util/concurrent/ForkJoinPool;->ASHIFT:I

    shl-long v6, v6, v16

    move/from16 v25, v4

    .end local v4    # "index":I
    .local v25, "index":I
    sget v4, Ljava/util/concurrent/ForkJoinPool;->ABASE:I

    move/from16 v26, v5

    .end local v5    # "m":I
    .local v26, "m":I
    int-to-long v4, v4

    add-long/2addr v6, v4

    .line 2126
    .local v6, "offset":J
    sget-object v4, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    .line 2127
    invoke-virtual {v4, v14, v6, v7}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Ljava/util/concurrent/ForkJoinTask;

    .line 2128
    if-eqz v13, :cond_d2

    add-int/lit8 v5, v12, 0x1

    move/from16 v27, v3

    .end local v3    # "oldSum":I
    .end local v12    # "b":I
    .local v5, "b":I
    .local v27, "oldSum":I
    iget v3, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-ne v12, v3, :cond_d0

    .line 2129
    iget-object v3, v9, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    if-ne v3, v10, :cond_cc

    iget-object v3, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    if-ne v3, v10, :cond_cc

    iget v3, v10, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-gez v3, :cond_97

    .line 2132
    move/from16 v4, v27

    goto/16 :goto_149

    .line 2133
    :cond_97
    const/16 v21, 0x0

    move-object/from16 v16, v4

    move-object/from16 v17, v14

    move-wide/from16 v18, v6

    move-object/from16 v20, v13

    invoke-virtual/range {v16 .. v21}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d0

    .line 2134
    iput v5, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .line 2135
    iput-object v13, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    .line 2136
    iget v3, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 2137
    .local v3, "top":I
    :goto_ad
    invoke-virtual {v13}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    .line 2138
    iput-object v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    .line 2139
    iget v4, v1, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-gez v4, :cond_b8

    .line 2140
    goto/16 :goto_157

    .line 2141
    :cond_b8
    iget v4, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    if-ne v4, v3, :cond_be

    .line 2142
    move v12, v5

    goto :goto_e8

    .line 2143
    :cond_be
    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pop()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v4

    move-object v13, v4

    if-nez v4, :cond_c9

    .line 2144
    move/from16 v4, v27

    goto/16 :goto_149

    .line 2145
    :cond_c9
    iput-object v13, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    goto :goto_ad

    .line 2129
    .end local v3    # "top":I
    :cond_cc
    move/from16 v4, v27

    goto/16 :goto_149

    .line 2150
    .end local v6    # "offset":J
    .end local v22    # "al":I
    .end local v25    # "index":I
    :cond_d0
    move v12, v5

    goto :goto_e8

    .line 2128
    .end local v5    # "b":I
    .end local v27    # "oldSum":I
    .local v3, "oldSum":I
    .restart local v6    # "offset":J
    .restart local v12    # "b":I
    .restart local v22    # "al":I
    .restart local v25    # "index":I
    :cond_d2
    move/from16 v27, v3

    .end local v3    # "oldSum":I
    .restart local v27    # "oldSum":I
    goto :goto_e8

    .line 2123
    .end local v23    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v24    # "wl":I
    .end local v25    # "index":I
    .end local v26    # "m":I
    .end local v27    # "oldSum":I
    .restart local v3    # "oldSum":I
    .local v5, "m":I
    .local v6, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v7    # "wl":I
    :cond_d5
    move/from16 v27, v3

    move/from16 v26, v5

    move-object/from16 v23, v6

    move/from16 v24, v7

    .end local v3    # "oldSum":I
    .end local v5    # "m":I
    .end local v6    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v7    # "wl":I
    .restart local v23    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v24    # "wl":I
    .restart local v26    # "m":I
    .restart local v27    # "oldSum":I
    goto :goto_e8

    .end local v14    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v23    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v24    # "wl":I
    .end local v26    # "m":I
    .end local v27    # "oldSum":I
    .restart local v3    # "oldSum":I
    .restart local v5    # "m":I
    .restart local v6    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v7    # "wl":I
    .local v22, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_de
    move/from16 v27, v3

    move/from16 v26, v5

    move-object/from16 v23, v6

    move/from16 v24, v7

    move-object/from16 v14, v22

    .line 2150
    .end local v3    # "oldSum":I
    .end local v5    # "m":I
    .end local v6    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v7    # "wl":I
    .end local v22    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v14    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v23    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v24    # "wl":I
    .restart local v26    # "m":I
    .restart local v27    # "oldSum":I
    :goto_e8
    if-nez v13, :cond_113

    iget v3, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-ne v12, v3, :cond_113

    iget v3, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    sub-int v3, v12, v3

    if-ltz v3, :cond_113

    .line 2151
    move-object v10, v11

    if-nez v11, :cond_105

    .line 2152
    iget-object v3, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    if-ne v11, v3, :cond_102

    move v3, v8

    move/from16 v4, v27

    .end local v27    # "oldSum":I
    .restart local v3    # "oldSum":I
    .local v4, "oldSum":I
    if-ne v4, v8, :cond_14a

    .line 2154
    .end local v4    # "oldSum":I
    goto/16 :goto_157

    .line 2152
    .end local v3    # "oldSum":I
    .restart local v27    # "oldSum":I
    :cond_102
    move/from16 v4, v27

    .end local v27    # "oldSum":I
    .restart local v4    # "oldSum":I
    goto :goto_149

    .line 2157
    .end local v4    # "oldSum":I
    .restart local v27    # "oldSum":I
    :cond_105
    move/from16 v4, v27

    .end local v27    # "oldSum":I
    .restart local v4    # "oldSum":I
    move-object v9, v15

    .line 2158
    move v3, v4

    move-object/from16 v6, v23

    move/from16 v7, v24

    move/from16 v5, v26

    move-object/from16 v4, p0

    goto/16 :goto_27

    .line 2150
    .end local v4    # "oldSum":I
    .restart local v27    # "oldSum":I
    :cond_113
    move/from16 v4, v27

    .line 2160
    .end local v11    # "next":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v12    # "b":I
    .end local v13    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v14    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v27    # "oldSum":I
    .restart local v4    # "oldSum":I
    move v3, v4

    move-object/from16 v6, v23

    move/from16 v7, v24

    move/from16 v5, v26

    move-object/from16 v4, p0

    goto/16 :goto_41

    .line 2110
    .end local v4    # "oldSum":I
    .end local v23    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v24    # "wl":I
    .end local v26    # "m":I
    .restart local v3    # "oldSum":I
    .restart local v5    # "m":I
    .restart local v6    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v7    # "wl":I
    .local v11, "h":I
    .local v12, "k":I
    .local v14, "i":I
    :cond_120
    move v4, v3

    move/from16 v26, v5

    move-object/from16 v23, v6

    move/from16 v24, v7

    .end local v3    # "oldSum":I
    .end local v5    # "m":I
    .end local v6    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v7    # "wl":I
    .restart local v4    # "oldSum":I
    .restart local v23    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v24    # "wl":I
    .restart local v26    # "m":I
    iget v3, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    add-int/2addr v8, v3

    goto :goto_132

    .line 2105
    .end local v4    # "oldSum":I
    .end local v23    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v24    # "wl":I
    .end local v26    # "m":I
    .restart local v3    # "oldSum":I
    .restart local v5    # "m":I
    .restart local v6    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v7    # "wl":I
    :cond_12b
    move v4, v3

    move/from16 v26, v5

    move-object/from16 v23, v6

    move/from16 v24, v7

    .line 2112
    .end local v3    # "oldSum":I
    .end local v5    # "m":I
    .end local v6    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v7    # "wl":I
    .restart local v4    # "oldSum":I
    .restart local v23    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v24    # "wl":I
    .restart local v26    # "m":I
    :goto_132
    add-int/lit8 v12, v12, 0x1

    move/from16 v7, v26

    .end local v26    # "m":I
    .local v7, "m":I
    if-le v12, v7, :cond_139

    .line 2113
    goto :goto_157

    .line 2112
    :cond_139
    move v3, v4

    move v5, v7

    move-object/from16 v6, v23

    move/from16 v7, v24

    move-object/from16 v4, p0

    goto/16 :goto_30

    .line 2103
    .end local v4    # "oldSum":I
    .end local v11    # "h":I
    .end local v12    # "k":I
    .end local v14    # "i":I
    .end local v15    # "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v23    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v24    # "wl":I
    .restart local v3    # "oldSum":I
    .restart local v5    # "m":I
    .restart local v6    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .local v7, "wl":I
    :cond_143
    move v4, v3

    move-object/from16 v23, v6

    move/from16 v24, v7

    move v7, v5

    .line 2162
    .end local v3    # "oldSum":I
    .end local v5    # "m":I
    .end local v6    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v7    # "wl":I
    .end local v8    # "checkSum":I
    .end local v9    # "j":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v10    # "subtask":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v4    # "oldSum":I
    .restart local v23    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v24    # "wl":I
    :goto_149
    move v3, v4

    .end local v4    # "oldSum":I
    .restart local v3    # "oldSum":I
    :cond_14a
    goto/16 :goto_b

    .line 2098
    .end local v23    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v24    # "wl":I
    .restart local v6    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v7    # "wl":I
    :cond_14c
    move v4, v3

    move-object/from16 v23, v6

    move/from16 v24, v7

    .end local v3    # "oldSum":I
    .end local v6    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v7    # "wl":I
    .restart local v4    # "oldSum":I
    .restart local v23    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v24    # "wl":I
    goto :goto_157

    .end local v4    # "oldSum":I
    .end local v23    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v24    # "wl":I
    .restart local v3    # "oldSum":I
    .restart local v6    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_152
    move v4, v3

    move-object/from16 v23, v6

    .end local v3    # "oldSum":I
    .end local v6    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v4    # "oldSum":I
    .restart local v23    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    goto :goto_157

    .end local v4    # "oldSum":I
    .end local v23    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v3    # "oldSum":I
    :cond_156
    move v4, v3

    .line 2164
    .end local v2    # "ps":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v3    # "oldSum":I
    :cond_157
    :goto_157
    return-void
.end method

.method private greylist-max-o inactivate(Ljava/util/concurrent/ForkJoinPool$WorkQueue;I)V
    .registers 20
    .param p1, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .param p2, "ss"    # I

    .line 1780
    move-object/from16 v0, p1

    const/high16 v1, 0x10000

    add-int v1, p2, v1

    const/high16 v2, -0x80000000

    or-int/2addr v1, v2

    .line 1781
    .local v1, "ns":I
    int-to-long v2, v1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 1782
    .local v2, "lc":J
    if-eqz v0, :cond_36

    .line 1783
    iput v1, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    .line 1785
    :cond_14
    const-wide v4, -0x100000000L

    move-object/from16 v14, p0

    iget-wide v6, v14, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    move-wide v12, v6

    .local v12, "c":J
    const-wide/high16 v8, 0x1000000000000L

    sub-long/2addr v6, v8

    and-long/2addr v4, v6

    or-long/2addr v4, v2

    .line 1786
    .local v4, "nc":J
    long-to-int v6, v12

    iput v6, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->stackPred:I

    .line 1787
    sget-object v6, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v8, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object/from16 v7, p0

    move-wide v10, v12

    move-wide v15, v12

    .end local v12    # "c":J
    .local v15, "c":J
    move-wide v12, v4

    invoke-virtual/range {v6 .. v13}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v6

    if-eqz v6, :cond_14

    goto :goto_38

    .line 1782
    .end local v4    # "nc":J
    .end local v15    # "c":J
    :cond_36
    move-object/from16 v14, p0

    .line 1789
    :goto_38
    return-void
.end method

.method static greylist-max-o makeCommonPool()Ljava/util/concurrent/ForkJoinPool;
    .registers 10

    .line 3514
    const/4 v0, -0x1

    .line 3515
    .local v0, "parallelism":I
    const/4 v1, 0x0

    .line 3516
    .local v1, "factory":Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    const/4 v2, 0x0

    .line 3518
    .local v2, "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    :try_start_3
    const-string v3, "java.util.concurrent.ForkJoinPool.common.parallelism"

    .line 3519
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3520
    .local v3, "pp":Ljava/lang/String;
    const-string v4, "java.util.concurrent.ForkJoinPool.common.threadFactory"

    .line 3521
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3522
    .local v4, "fp":Ljava/lang/String;
    const-string v5, "java.util.concurrent.ForkJoinPool.common.exceptionHandler"

    .line 3523
    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3524
    .local v5, "hp":Ljava/lang/String;
    if-eqz v3, :cond_1c

    .line 3525
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v0, v6

    .line 3526
    :cond_1c
    if-eqz v4, :cond_2d

    .line 3528
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    move-object v1, v6

    .line 3529
    :cond_2d
    if-eqz v5, :cond_3e

    .line 3531
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Thread$UncaughtExceptionHandler;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3d} :catch_40

    move-object v2, v6

    .line 3533
    .end local v3    # "pp":Ljava/lang/String;
    .end local v4    # "fp":Ljava/lang/String;
    .end local v5    # "hp":Ljava/lang/String;
    :cond_3e
    move-object v8, v2

    goto :goto_42

    .line 3532
    :catch_40
    move-exception v3

    move-object v8, v2

    .line 3534
    .end local v2    # "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    .local v8, "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    :goto_42
    if-nez v1, :cond_54

    .line 3535
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    if-nez v2, :cond_4d

    .line 3536
    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->defaultForkJoinWorkerThreadFactory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    goto :goto_54

    .line 3538
    :cond_4d
    new-instance v2, Ljava/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory;-><init>(Ljava/util/concurrent/ForkJoinPool$1;)V

    move-object v1, v2

    .line 3540
    :cond_54
    :goto_54
    if-gez v0, :cond_64

    .line 3541
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v0, v2

    if-gtz v2, :cond_64

    .line 3542
    const/4 v0, 0x1

    .line 3543
    :cond_64
    const/16 v2, 0x7fff

    if-le v0, v2, :cond_6a

    .line 3544
    const/16 v0, 0x7fff

    .line 3545
    :cond_6a
    new-instance v9, Ljava/util/concurrent/ForkJoinPool;

    const/4 v6, 0x0

    const-string v7, "ForkJoinPool.commonPool-worker-"

    move-object v2, v9

    move v3, v0

    move-object v4, v1

    move-object v5, v8

    invoke-direct/range {v2 .. v7}, Ljava/util/concurrent/ForkJoinPool;-><init>(ILjava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;ILjava/lang/String;)V

    return-object v9
.end method

.method public static whitelist test-api managedBlock(Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;)V
    .registers 12
    .param p0, "blocker"    # Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 3428
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 3429
    .local v0, "t":Ljava/lang/Thread;
    instance-of v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v1, :cond_45

    move-object v1, v0

    check-cast v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    move-object v2, v1

    .local v2, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    iget-object v1, v1, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    move-object v9, v1

    .local v9, "p":Ljava/util/concurrent/ForkJoinPool;
    if-eqz v1, :cond_45

    .line 3431
    iget-object v1, v2, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .line 3432
    .local v1, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_13
    invoke-interface {p0}, Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;->isReleasable()Z

    move-result v3

    if-nez v3, :cond_44

    .line 3433
    invoke-direct {v9, v1}, Ljava/util/concurrent/ForkJoinPool;->tryCompensate(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 3435
    :cond_1f
    :try_start_1f
    invoke-interface {p0}, Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;->isReleasable()Z

    move-result v3

    if-nez v3, :cond_2b

    .line 3436
    invoke-interface {p0}, Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;->block()Z

    move-result v3
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_37

    if-eqz v3, :cond_1f

    .line 3438
    :cond_2b
    sget-object v3, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v5, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    const-wide/high16 v7, 0x1000000000000L

    move-object v4, v9

    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->getAndAddLong(Ljava/lang/Object;JJ)J

    .line 3439
    nop

    .line 3440
    goto :goto_44

    .line 3438
    :catchall_37
    move-exception v3

    move-object v10, v3

    sget-object v3, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v5, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    const-wide/high16 v7, 0x1000000000000L

    move-object v4, v9

    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->getAndAddLong(Ljava/lang/Object;JJ)J

    .line 3439
    throw v10

    .line 3443
    .end local v1    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_44
    :goto_44
    goto :goto_51

    .line 3445
    .end local v2    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    .end local v9    # "p":Ljava/util/concurrent/ForkJoinPool;
    :cond_45
    invoke-interface {p0}, Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;->isReleasable()Z

    move-result v1

    if-nez v1, :cond_51

    .line 3446
    invoke-interface {p0}, Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;->block()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 3448
    :cond_51
    :goto_51
    return-void
.end method

.method private static final declared-synchronized greylist-max-o nextPoolId()I
    .registers 2

    const-class v0, Ljava/util/concurrent/ForkJoinPool;

    monitor-enter v0

    .line 1413
    :try_start_3
    sget v1, Ljava/util/concurrent/ForkJoinPool;->poolNumberSequence:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Ljava/util/concurrent/ForkJoinPool;->poolNumberSequence:I
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v0

    return v1

    .line 1413
    :catchall_b
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static greylist-max-o quiesceCommonPool()V
    .registers 4

    .line 3321
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide v2, 0x7fffffffffffffffL

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/ForkJoinPool;->awaitQuiescence(JLjava/util/concurrent/TimeUnit;)Z

    .line 3322
    return-void
.end method

.method private greylist-max-o scan(Ljava/util/concurrent/ForkJoinPool$WorkQueue;III)I
    .registers 30
    .param p1, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .param p2, "bound"    # I
    .param p3, "step"    # I
    .param p4, "r"    # I

    .line 1965
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 1966
    .local v2, "stat":I
    iget-object v3, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v4, v3

    .local v4, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_ef

    if-eqz v1, :cond_ef

    array-length v3, v4

    move v5, v3

    .local v5, "wl":I
    if-lez v3, :cond_e8

    .line 1967
    add-int/lit8 v3, v5, -0x1

    .line 1968
    .local v3, "m":I
    and-int v6, v3, p4

    .local v6, "origin":I
    move v7, v6

    .line 1969
    .local v7, "idx":I
    const/4 v8, 0x0

    .line 1970
    .local v8, "npolls":I
    iget v9, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    move v10, v8

    move v8, v7

    move/from16 v7, p4

    .line 1972
    .end local p4    # "r":I
    .local v7, "r":I
    .local v8, "idx":I
    .local v9, "ss":I
    .local v10, "npolls":I
    :goto_1c
    aget-object v11, v4, v8

    move-object v12, v11

    .local v12, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v11, :cond_b6

    iget v11, v12, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    move v13, v11

    .local v13, "b":I
    iget v14, v12, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    sub-int/2addr v11, v14

    if-gez v11, :cond_ab

    iget-object v11, v12, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    move-object v15, v11

    .local v15, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v11, :cond_9f

    array-length v11, v15

    move/from16 v20, v11

    .local v20, "al":I
    if-lez v11, :cond_93

    .line 1974
    add-int/lit8 v11, v20, -0x1

    and-int/2addr v11, v13

    .line 1975
    .local v11, "index":I
    move/from16 v21, v5

    move/from16 v22, v6

    .end local v5    # "wl":I
    .end local v6    # "origin":I
    .local v21, "wl":I
    .local v22, "origin":I
    int-to-long v5, v11

    sget v14, Ljava/util/concurrent/ForkJoinPool;->ASHIFT:I

    shl-long/2addr v5, v14

    sget v14, Ljava/util/concurrent/ForkJoinPool;->ABASE:I

    move/from16 v23, v2

    move/from16 v24, v3

    .end local v2    # "stat":I
    .end local v3    # "m":I
    .local v23, "stat":I
    .local v24, "m":I
    int-to-long v2, v14

    add-long/2addr v5, v2

    .line 1976
    .local v5, "offset":J
    sget-object v14, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    .line 1977
    invoke-virtual {v14, v15, v5, v6}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ForkJoinTask;

    .line 1978
    .local v2, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-nez v2, :cond_54

    .line 1979
    move/from16 v14, p2

    goto/16 :goto_d6

    .line 1980
    :cond_54
    add-int/lit8 v3, v13, 0x1

    move/from16 p4, v11

    .end local v11    # "index":I
    .end local v13    # "b":I
    .local v3, "b":I
    .local p4, "index":I
    iget v11, v12, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-eq v13, v11, :cond_60

    .line 1981
    move/from16 v14, p2

    goto/16 :goto_d6

    .line 1982
    :cond_60
    if-gez v9, :cond_69

    .line 1983
    invoke-direct {v0, v1, v4, v7}, Ljava/util/concurrent/ForkJoinPool;->tryReactivate(Ljava/util/concurrent/ForkJoinPool$WorkQueue;[Ljava/util/concurrent/ForkJoinPool$WorkQueue;I)V

    .line 1984
    move/from16 v14, p2

    goto/16 :goto_d6

    .line 1986
    :cond_69
    const/16 v19, 0x0

    move-object v11, v15

    .end local v15    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .local v11, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    move-wide/from16 v16, v5

    move-object/from16 v18, v2

    invoke-virtual/range {v14 .. v19}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7a

    .line 1987
    move/from16 v14, p2

    goto/16 :goto_d6

    .line 1989
    :cond_7a
    iput v3, v12, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .line 1990
    iput-object v2, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    .line 1991
    iget v13, v12, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    if-eq v3, v13, :cond_85

    .line 1992
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->signalWork()V

    .line 1993
    :cond_85
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->runTask(Ljava/util/concurrent/ForkJoinTask;)V

    .line 1994
    add-int/lit8 v10, v10, 0x1

    move/from16 v14, p2

    if-le v10, v14, :cond_8f

    .line 1995
    goto :goto_d6

    .line 1997
    .end local v2    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v5    # "offset":J
    .end local p4    # "index":I
    :cond_8f
    move/from16 v5, v22

    goto/16 :goto_df

    .line 1972
    .end local v11    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v21    # "wl":I
    .end local v22    # "origin":I
    .end local v23    # "stat":I
    .end local v24    # "m":I
    .local v2, "stat":I
    .local v3, "m":I
    .local v5, "wl":I
    .restart local v6    # "origin":I
    .restart local v13    # "b":I
    .restart local v15    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_93
    move/from16 v14, p2

    move/from16 v23, v2

    move/from16 v24, v3

    move/from16 v21, v5

    move/from16 v22, v6

    move-object v11, v15

    .end local v2    # "stat":I
    .end local v3    # "m":I
    .end local v5    # "wl":I
    .end local v6    # "origin":I
    .end local v15    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v11    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v21    # "wl":I
    .restart local v22    # "origin":I
    .restart local v23    # "stat":I
    .restart local v24    # "m":I
    goto :goto_c0

    .end local v11    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v20    # "al":I
    .end local v21    # "wl":I
    .end local v22    # "origin":I
    .end local v23    # "stat":I
    .end local v24    # "m":I
    .restart local v2    # "stat":I
    .restart local v3    # "m":I
    .restart local v5    # "wl":I
    .restart local v6    # "origin":I
    .restart local v15    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_9f
    move/from16 v14, p2

    move/from16 v23, v2

    move/from16 v24, v3

    move/from16 v21, v5

    move/from16 v22, v6

    move-object v11, v15

    .end local v2    # "stat":I
    .end local v3    # "m":I
    .end local v5    # "wl":I
    .end local v6    # "origin":I
    .end local v15    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v11    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v21    # "wl":I
    .restart local v22    # "origin":I
    .restart local v23    # "stat":I
    .restart local v24    # "m":I
    goto :goto_c0

    .end local v11    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v21    # "wl":I
    .end local v22    # "origin":I
    .end local v23    # "stat":I
    .end local v24    # "m":I
    .restart local v2    # "stat":I
    .restart local v3    # "m":I
    .restart local v5    # "wl":I
    .restart local v6    # "origin":I
    :cond_ab
    move/from16 v14, p2

    move/from16 v23, v2

    move/from16 v24, v3

    move/from16 v21, v5

    move/from16 v22, v6

    .end local v2    # "stat":I
    .end local v3    # "m":I
    .end local v5    # "wl":I
    .end local v6    # "origin":I
    .restart local v21    # "wl":I
    .restart local v22    # "origin":I
    .restart local v23    # "stat":I
    .restart local v24    # "m":I
    goto :goto_c0

    .end local v13    # "b":I
    .end local v21    # "wl":I
    .end local v22    # "origin":I
    .end local v23    # "stat":I
    .end local v24    # "m":I
    .restart local v2    # "stat":I
    .restart local v3    # "m":I
    .restart local v5    # "wl":I
    .restart local v6    # "origin":I
    :cond_b6
    move/from16 v14, p2

    move/from16 v23, v2

    move/from16 v24, v3

    move/from16 v21, v5

    move/from16 v22, v6

    .line 1998
    .end local v2    # "stat":I
    .end local v3    # "m":I
    .end local v5    # "wl":I
    .end local v6    # "origin":I
    .restart local v21    # "wl":I
    .restart local v22    # "origin":I
    .restart local v23    # "stat":I
    .restart local v24    # "m":I
    :goto_c0
    if-eqz v10, :cond_c3

    .line 1999
    goto :goto_d6

    .line 2000
    :cond_c3
    add-int v2, v8, p3

    and-int v2, v2, v24

    move v3, v2

    move/from16 v5, v22

    .end local v8    # "idx":I
    .end local v22    # "origin":I
    .local v3, "idx":I
    .local v5, "origin":I
    if-ne v2, v5, :cond_de

    .line 2001
    if-gez v9, :cond_d0

    .line 2002
    move v2, v9

    .line 2003
    .end local v23    # "stat":I
    .restart local v2    # "stat":I
    goto :goto_f7

    .line 2005
    .end local v2    # "stat":I
    .restart local v23    # "stat":I
    :cond_d0
    if-ltz v7, :cond_d9

    .line 2006
    invoke-direct {v0, v1, v9}, Ljava/util/concurrent/ForkJoinPool;->inactivate(Ljava/util/concurrent/ForkJoinPool$WorkQueue;I)V

    .line 2007
    nop

    .line 2014
    .end local v3    # "idx":I
    .end local v5    # "origin":I
    .end local v9    # "ss":I
    .end local v10    # "npolls":I
    .end local v12    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v21    # "wl":I
    .end local v24    # "m":I
    :goto_d6
    move/from16 v2, v23

    goto :goto_f7

    .line 2010
    .restart local v3    # "idx":I
    .restart local v5    # "origin":I
    .restart local v9    # "ss":I
    .restart local v10    # "npolls":I
    .restart local v12    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v21    # "wl":I
    .restart local v24    # "m":I
    :cond_d9
    shl-int/lit8 v2, v7, 0x1

    move v7, v2

    move v8, v3

    .end local v7    # "r":I
    .local v2, "r":I
    goto :goto_df

    .line 2000
    .end local v2    # "r":I
    .restart local v7    # "r":I
    :cond_de
    move v8, v3

    .line 2012
    .end local v3    # "idx":I
    .end local v12    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v8    # "idx":I
    :goto_df
    move v6, v5

    move/from16 v5, v21

    move/from16 v2, v23

    move/from16 v3, v24

    goto/16 :goto_1c

    .line 1966
    .end local v7    # "r":I
    .end local v8    # "idx":I
    .end local v9    # "ss":I
    .end local v10    # "npolls":I
    .end local v21    # "wl":I
    .end local v23    # "stat":I
    .end local v24    # "m":I
    .local v2, "stat":I
    .local v5, "wl":I
    .local p4, "r":I
    :cond_e8
    move/from16 v14, p2

    move/from16 v23, v2

    move/from16 v21, v5

    .end local v2    # "stat":I
    .end local v5    # "wl":I
    .restart local v21    # "wl":I
    .restart local v23    # "stat":I
    goto :goto_f3

    .end local v21    # "wl":I
    .end local v23    # "stat":I
    .restart local v2    # "stat":I
    :cond_ef
    move/from16 v14, p2

    move/from16 v23, v2

    .line 2014
    .end local v2    # "stat":I
    .restart local v23    # "stat":I
    :goto_f3
    move/from16 v7, p4

    move/from16 v2, v23

    .end local v23    # "stat":I
    .end local p4    # "r":I
    .restart local v2    # "stat":I
    .restart local v7    # "r":I
    :goto_f7
    return v2
.end method

.method private greylist-max-o timedAwaitWork(Ljava/util/concurrent/ForkJoinPool$WorkQueue;J)I
    .registers 28
    .param p1, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .param p2, "c"    # J

    .line 1833
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-wide/from16 v11, p2

    const/4 v0, 0x0

    .line 1834
    .local v0, "stat":I
    const/16 v1, 0x20

    ushr-long v1, v11, v1

    long-to-int v1, v1

    int-to-short v1, v1

    const/4 v2, 0x1

    rsub-int/lit8 v13, v1, 0x1

    .line 1835
    .local v13, "scale":I
    if-gtz v13, :cond_13

    goto :goto_14

    :cond_13
    move v2, v13

    :goto_14
    int-to-long v1, v2

    const-wide/16 v3, 0x7d0

    mul-long/2addr v1, v3

    .line 1836
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long v14, v1, v3

    .line 1837
    .local v14, "deadline":J
    iget v1, v9, Ljava/util/concurrent/ForkJoinPool;->runState:I

    if-gez v1, :cond_2a

    const/4 v1, 0x0

    invoke-direct {v9, v1, v1}, Ljava/util/concurrent/ForkJoinPool;->tryTerminate(ZZ)I

    move-result v1

    move v0, v1

    if-lez v1, :cond_f8

    :cond_2a
    move/from16 v16, v0

    .end local v0    # "stat":I
    .local v16, "stat":I
    if-eqz v10, :cond_f6

    iget v0, v10, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    if-gez v0, :cond_f6

    .line 1840
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, v10, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    .line 1841
    iget v0, v10, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    if-gez v0, :cond_3f

    .line 1842
    invoke-static {v9, v14, v15}, Ljava/util/concurrent/locks/LockSupport;->parkUntil(Ljava/lang/Object;J)V

    .line 1843
    :cond_3f
    const/4 v0, 0x0

    iput-object v0, v10, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    .line 1844
    iget v1, v9, Ljava/util/concurrent/ForkJoinPool;->runState:I

    and-int/lit8 v1, v1, 0x2

    const/4 v7, -0x1

    if-eqz v1, :cond_4e

    .line 1845
    iput v7, v10, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    move v0, v7

    .end local v16    # "stat":I
    .restart local v0    # "stat":I
    goto/16 :goto_f8

    .line 1846
    .end local v0    # "stat":I
    .restart local v16    # "stat":I
    :cond_4e
    iget v1, v10, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    move v8, v1

    .local v8, "ss":I
    if-gez v1, :cond_f4

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_f4

    long-to-int v1, v11

    if-ne v1, v8, :cond_f4

    iget-object v1, v9, Ljava/util/concurrent/ForkJoinPool;->auxState:Ljava/util/concurrent/ForkJoinPool$AuxState;

    move-object/from16 v17, v1

    .local v17, "aux":Ljava/util/concurrent/ForkJoinPool$AuxState;
    if-eqz v1, :cond_f1

    iget-wide v1, v9, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    cmp-long v1, v1, v11

    if-nez v1, :cond_f1

    .line 1848
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v1, v14, v1

    const-wide/16 v3, 0x14

    cmp-long v1, v1, v3

    if-gtz v1, :cond_ee

    .line 1849
    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/ForkJoinPool$AuxState;->lock()V

    .line 1852
    :try_start_77
    iget v1, v10, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    move/from16 v18, v1

    .local v18, "cfg":I
    const v1, 0xffff

    and-int v5, v18, v1

    .line 1853
    .local v5, "idx":I
    const-wide v1, -0x100000000L

    const-wide v3, 0x100000000L

    sub-long v3, v11, v3

    and-long/2addr v1, v3

    const-wide v3, 0xffffffffL

    iget v6, v10, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->stackPred:I
    :try_end_94
    .catchall {:try_start_77 .. :try_end_94} :catchall_e7

    move/from16 v20, v8

    .end local v8    # "ss":I
    .local v20, "ss":I
    int-to-long v7, v6

    and-long/2addr v3, v7

    or-long v21, v1, v3

    .line 1855
    .local v21, "nc":J
    :try_start_9a
    iget v1, v9, Ljava/util/concurrent/ForkJoinPool;->runState:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_d9

    iget-object v1, v9, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v7, v1

    .local v7, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v1, :cond_d2

    array-length v1, v7

    if-ge v5, v1, :cond_d2

    if-ltz v5, :cond_d2

    aget-object v1, v7, v5

    if-ne v1, v10, :cond_d2

    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v3, Ljava/util/concurrent/ForkJoinPool;->CTL:J
    :try_end_b2
    .catchall {:try_start_9a .. :try_end_b2} :catchall_e3

    .line 1858
    move-object/from16 v2, p0

    move/from16 v23, v5

    .end local v5    # "idx":I
    .local v23, "idx":I
    move-wide/from16 v5, p2

    move/from16 v19, v20

    move-object/from16 v20, v7

    .end local v7    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .local v19, "ss":I
    .local v20, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    move-wide/from16 v7, v21

    :try_start_be
    invoke-virtual/range {v1 .. v8}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v1

    if-eqz v1, :cond_dd

    .line 1859
    aput-object v0, v20, v23

    .line 1860
    const/high16 v0, 0x40000

    or-int v0, v18, v0

    iput v0, v10, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    .line 1861
    const/4 v0, -0x1

    iput v0, v10, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I
    :try_end_cf
    .catchall {:try_start_be .. :try_end_cf} :catchall_d0

    .end local v16    # "stat":I
    .restart local v0    # "stat":I
    goto :goto_df

    .line 1864
    .end local v0    # "stat":I
    .end local v18    # "cfg":I
    .end local v20    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v21    # "nc":J
    .end local v23    # "idx":I
    .restart local v16    # "stat":I
    :catchall_d0
    move-exception v0

    goto :goto_ea

    .line 1855
    .end local v19    # "ss":I
    .restart local v5    # "idx":I
    .restart local v7    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v18    # "cfg":I
    .local v20, "ss":I
    .restart local v21    # "nc":J
    :cond_d2
    move/from16 v23, v5

    move/from16 v19, v20

    move-object/from16 v20, v7

    .end local v5    # "idx":I
    .end local v7    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v19    # "ss":I
    .local v20, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v23    # "idx":I
    goto :goto_dd

    .end local v19    # "ss":I
    .end local v23    # "idx":I
    .restart local v5    # "idx":I
    .local v20, "ss":I
    :cond_d9
    move/from16 v23, v5

    move/from16 v19, v20

    .line 1864
    .end local v5    # "idx":I
    .end local v18    # "cfg":I
    .end local v20    # "ss":I
    .end local v21    # "nc":J
    .restart local v19    # "ss":I
    :cond_dd
    :goto_dd
    move/from16 v0, v16

    .end local v16    # "stat":I
    .restart local v0    # "stat":I
    :goto_df
    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/ForkJoinPool$AuxState;->unlock()V

    .line 1865
    goto :goto_f8

    .line 1864
    .end local v0    # "stat":I
    .end local v19    # "ss":I
    .restart local v16    # "stat":I
    .restart local v20    # "ss":I
    :catchall_e3
    move-exception v0

    move/from16 v19, v20

    .end local v20    # "ss":I
    .restart local v19    # "ss":I
    goto :goto_ea

    .end local v19    # "ss":I
    .restart local v8    # "ss":I
    :catchall_e7
    move-exception v0

    move/from16 v19, v8

    .end local v8    # "ss":I
    .restart local v19    # "ss":I
    :goto_ea
    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/ForkJoinPool$AuxState;->unlock()V

    .line 1865
    throw v0

    .line 1848
    .end local v19    # "ss":I
    .restart local v8    # "ss":I
    :cond_ee
    move/from16 v19, v8

    .end local v8    # "ss":I
    .restart local v19    # "ss":I
    goto :goto_f6

    .line 1846
    .end local v19    # "ss":I
    .restart local v8    # "ss":I
    :cond_f1
    move/from16 v19, v8

    .end local v8    # "ss":I
    .restart local v19    # "ss":I
    goto :goto_f6

    .end local v17    # "aux":Ljava/util/concurrent/ForkJoinPool$AuxState;
    .end local v19    # "ss":I
    .restart local v8    # "ss":I
    :cond_f4
    move/from16 v19, v8

    .line 1868
    .end local v8    # "ss":I
    :cond_f6
    :goto_f6
    move/from16 v0, v16

    .end local v16    # "stat":I
    .restart local v0    # "stat":I
    :cond_f8
    :goto_f8
    return v0
.end method

.method private greylist-max-o tryAddWorker(J)V
    .registers 13
    .param p1, "c"    # J

    .line 1572
    :cond_0
    const-wide/high16 v0, -0x1000000000000L

    const-wide/high16 v2, 0x1000000000000L

    add-long/2addr v2, p1

    and-long/2addr v0, v2

    const-wide v2, 0xffff00000000L

    const-wide v4, 0x100000000L

    add-long/2addr v4, p1

    and-long/2addr v2, v4

    or-long v8, v0, v2

    .line 1574
    .local v8, "nc":J
    iget-wide v0, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_2c

    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, v8

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1575
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinPool;->createWorker(Z)Z

    .line 1576
    goto :goto_3e

    .line 1578
    .end local v8    # "nc":J
    :cond_2c
    iget-wide v0, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    move-wide p1, v0

    const-wide v2, 0x800000000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3e

    long-to-int v0, p1

    if-eqz v0, :cond_0

    .line 1579
    :cond_3e
    :goto_3e
    return-void
.end method

.method private greylist-max-o tryCompensate(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)Z
    .registers 26
    .param p1, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .line 2176
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    iget-wide v10, v8, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .line 2177
    .local v10, "c":J
    iget-object v12, v8, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .line 2178
    .local v12, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    iget v0, v8, Ljava/util/concurrent/ForkJoinPool;->config:I

    const v1, 0xffff

    and-int v13, v0, v1

    .line 2179
    .local v13, "pc":I
    const/16 v0, 0x30

    shr-long v0, v10, v0

    long-to-int v0, v0

    add-int v14, v13, v0

    .line 2180
    .local v14, "ac":I
    const/16 v0, 0x20

    shr-long v0, v10, v0

    long-to-int v0, v0

    int-to-short v0, v0

    add-int v15, v13, v0

    .line 2181
    .local v15, "tc":I
    if-eqz v9, :cond_ef

    iget v0, v9, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    if-ltz v0, :cond_ef

    if-eqz v13, :cond_ef

    if-eqz v12, :cond_ef

    array-length v0, v12

    move/from16 v16, v0

    .local v16, "wl":I
    if-gtz v0, :cond_2f

    goto/16 :goto_ef

    .line 2185
    :cond_2f
    add-int/lit8 v6, v16, -0x1

    .line 2186
    .local v6, "m":I
    const/4 v0, 0x1

    .line 2187
    .local v0, "busy":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_33
    const/4 v7, 0x1

    if-gt v1, v6, :cond_52

    .line 2189
    shl-int/lit8 v2, v1, 0x1

    or-int/2addr v2, v7

    move v3, v2

    .local v3, "k":I
    if-gt v2, v6, :cond_4f

    if-ltz v3, :cond_4f

    aget-object v2, v12, v3

    move-object v4, v2

    .local v4, "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v2, :cond_4f

    iget v2, v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    if-ltz v2, :cond_4f

    iget-object v2, v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    if-nez v2, :cond_4f

    .line 2191
    const/4 v0, 0x0

    .line 2192
    move/from16 v17, v0

    goto :goto_54

    .line 2187
    .end local v3    # "k":I
    .end local v4    # "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    :cond_52
    move/from16 v17, v0

    .line 2195
    .end local v0    # "busy":Z
    .end local v1    # "i":I
    .local v17, "busy":Z
    :goto_54
    if-eqz v17, :cond_eb

    iget-wide v0, v8, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    cmp-long v0, v0, v10

    if-eqz v0, :cond_60

    move/from16 v21, v6

    goto/16 :goto_ed

    .line 2197
    :cond_60
    long-to-int v0, v10

    move/from16 v18, v0

    .local v18, "sp":I
    if-eqz v0, :cond_74

    .line 2198
    and-int v0, v6, v18

    aget-object v3, v12, v0

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    move-wide v1, v10

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/ForkJoinPool;->tryRelease(JLjava/util/concurrent/ForkJoinPool$WorkQueue;J)Z

    move-result v0

    .local v0, "canBlock":Z
    goto/16 :goto_f0

    .line 2199
    .end local v0    # "canBlock":Z
    :cond_74
    const-wide/high16 v0, -0x1000000000000L

    if-lt v15, v13, :cond_9d

    if-le v14, v7, :cond_9d

    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 2200
    const-wide/high16 v2, 0x1000000000000L

    sub-long v2, v10, v2

    and-long/2addr v0, v2

    const-wide v2, 0xffffffffffffL

    and-long/2addr v2, v10

    or-long v19, v0, v2

    .line 2202
    .local v19, "nc":J
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object/from16 v1, p0

    move-wide v4, v10

    move/from16 v21, v6

    .end local v6    # "m":I
    .local v21, "m":I
    move-wide/from16 v6, v19

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    .line 2203
    .end local v19    # "nc":J
    .restart local v0    # "canBlock":Z
    goto :goto_f0

    .line 2199
    .end local v0    # "canBlock":Z
    .end local v21    # "m":I
    .restart local v6    # "m":I
    :cond_9d
    move/from16 v21, v6

    .line 2204
    .end local v6    # "m":I
    .restart local v21    # "m":I
    const/16 v2, 0x7fff

    if-ge v15, v2, :cond_e3

    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    if-ne v8, v2, :cond_ac

    sget v2, Ljava/util/concurrent/ForkJoinPool;->COMMON_MAX_SPARES:I

    add-int/2addr v2, v13

    if-ge v15, v2, :cond_e3

    .line 2209
    :cond_ac
    const/16 v19, 0x0

    if-lt v15, v13, :cond_b2

    move v2, v7

    goto :goto_b4

    :cond_b2
    move/from16 v2, v19

    :goto_b4
    move v6, v2

    .line 2210
    .local v6, "isSpare":Z
    and-long/2addr v0, v10

    const-wide v2, 0xffff00000000L

    const-wide v4, 0x100000000L

    add-long/2addr v4, v10

    and-long/2addr v2, v4

    or-long v22, v0, v2

    .line 2211
    .local v22, "nc":J
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object/from16 v1, p0

    move-wide v4, v10

    move v9, v6

    move/from16 v20, v7

    .end local v6    # "isSpare":Z
    .local v9, "isSpare":Z
    move-wide/from16 v6, v22

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_df

    .line 2212
    invoke-direct {v8, v9}, Ljava/util/concurrent/ForkJoinPool;->createWorker(Z)Z

    move-result v0

    if-eqz v0, :cond_df

    move/from16 v7, v20

    goto :goto_e1

    :cond_df
    move/from16 v7, v19

    :goto_e1
    move v0, v7

    .restart local v0    # "canBlock":Z
    goto :goto_f0

    .line 2206
    .end local v0    # "canBlock":Z
    .end local v9    # "isSpare":Z
    .end local v22    # "nc":J
    :cond_e3
    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    const-string v1, "Thread limit exceeded replacing blocked worker"

    invoke-direct {v0, v1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2195
    .end local v18    # "sp":I
    .end local v21    # "m":I
    .local v6, "m":I
    :cond_eb
    move/from16 v21, v6

    .line 2196
    .end local v6    # "m":I
    .restart local v21    # "m":I
    :goto_ed
    const/4 v0, 0x0

    .restart local v0    # "canBlock":Z
    goto :goto_f0

    .line 2183
    .end local v0    # "canBlock":Z
    .end local v16    # "wl":I
    .end local v17    # "busy":Z
    .end local v21    # "m":I
    :cond_ef
    :goto_ef
    const/4 v0, 0x0

    .line 2215
    .restart local v0    # "canBlock":Z
    :goto_f0
    return v0
.end method

.method private greylist-max-o tryCreateExternalQueue(I)V
    .registers 7
    .param p1, "index"    # I

    .line 2493
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool;->auxState:Ljava/util/concurrent/ForkJoinPool$AuxState;

    move-object v1, v0

    .local v1, "aux":Ljava/util/concurrent/ForkJoinPool$AuxState;
    if-eqz v0, :cond_40

    if-ltz p1, :cond_40

    .line 2494
    new-instance v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;-><init>(Ljava/util/concurrent/ForkJoinPool;Ljava/util/concurrent/ForkJoinWorkerThread;)V

    .line 2495
    .local v0, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    iput p1, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    .line 2496
    const v2, 0x7fffffff

    iput v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    .line 2497
    const/4 v2, 0x1

    iput v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    .line 2498
    const/4 v2, 0x0

    .line 2499
    .local v2, "installed":Z
    invoke-virtual {v1}, Ljava/util/concurrent/ForkJoinPool$AuxState;->lock()V

    .line 2502
    :try_start_1b
    iget-object v3, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v4, v3

    .local v4, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_2a

    array-length v3, v4

    if-ge p1, v3, :cond_2a

    aget-object v3, v4, p1

    if-nez v3, :cond_2a

    .line 2504
    aput-object v0, v4, p1
    :try_end_29
    .catchall {:try_start_1b .. :try_end_29} :catchall_3b

    .line 2505
    const/4 v2, 0x1

    .line 2508
    .end local v4    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_2a
    invoke-virtual {v1}, Ljava/util/concurrent/ForkJoinPool$AuxState;->unlock()V

    .line 2509
    nop

    .line 2510
    if-eqz v2, :cond_40

    .line 2512
    const/4 v3, 0x0

    :try_start_31
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->growArray()[Ljava/util/concurrent/ForkJoinTask;
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_37

    .line 2514
    iput v3, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    .line 2515
    goto :goto_40

    .line 2514
    :catchall_37
    move-exception v4

    iput v3, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    .line 2515
    throw v4

    .line 2508
    :catchall_3b
    move-exception v3

    invoke-virtual {v1}, Ljava/util/concurrent/ForkJoinPool$AuxState;->unlock()V

    .line 2509
    throw v3

    .line 2518
    .end local v0    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v2    # "installed":Z
    :cond_40
    :goto_40
    return-void
.end method

.method private greylist-max-o tryDropSpare(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)Z
    .registers 21
    .param p1, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .line 1880
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    if-eqz v9, :cond_e3

    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e3

    .line 1882
    :goto_c
    iget-wide v0, v8, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    move-wide v10, v0

    .local v10, "c":J
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    int-to-short v0, v0

    if-lez v0, :cond_e3

    long-to-int v0, v10

    move v12, v0

    .local v12, "sp":I
    if-nez v0, :cond_21

    const/16 v0, 0x30

    shr-long v0, v10, v0

    long-to-int v0, v0

    if-lez v0, :cond_e3

    :cond_21
    iget-object v0, v8, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v13, v0

    .local v13, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v0, :cond_e3

    array-length v0, v13

    move v14, v0

    .local v14, "wl":I
    if-lez v0, :cond_e3

    .line 1886
    const-wide v0, 0xffffffffL

    const-wide v2, 0x100000000L

    const-wide/high16 v4, 0x1000000000000L

    const-wide v6, 0xffff00000000L

    const-wide/high16 v15, -0x1000000000000L

    if-nez v12, :cond_57

    .line 1887
    sub-long v4, v10, v4

    and-long/2addr v4, v15

    sub-long v2, v10, v2

    and-long/2addr v2, v6

    or-long/2addr v2, v4

    and-long/2addr v0, v10

    or-long v15, v2, v0

    .line 1889
    .local v15, "nc":J
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object/from16 v1, p0

    move-wide v4, v10

    move-wide v6, v15

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    .line 1890
    .end local v15    # "nc":J
    .local v0, "dropped":Z
    goto/16 :goto_c1

    .line 1891
    .end local v0    # "dropped":Z
    :cond_57
    add-int/lit8 v17, v14, -0x1

    and-int v17, v17, v12

    aget-object v17, v13, v17

    move-object/from16 v18, v17

    .local v18, "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v17, :cond_be

    move-object/from16 v2, v18

    .end local v18    # "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .local v2, "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    iget v3, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    if-eq v3, v12, :cond_69

    move-object v8, v2

    goto :goto_c0

    .line 1895
    :cond_69
    iget v3, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->stackPred:I

    int-to-long v6, v3

    and-long/2addr v0, v6

    .line 1896
    .local v0, "nc":J
    if-eq v9, v2, :cond_88

    iget v3, v9, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    if-ltz v3, :cond_79

    const-wide v6, 0xffff00000000L

    goto :goto_8d

    .line 1902
    :cond_79
    const/4 v3, 0x0

    .line 1903
    .local v3, "canDrop":Z
    add-long/2addr v4, v10

    and-long/2addr v4, v15

    const-wide v6, 0xffff00000000L

    and-long/2addr v6, v10

    or-long/2addr v4, v6

    or-long/2addr v0, v4

    move-wide v15, v0

    move/from16 v17, v3

    goto :goto_9d

    .line 1896
    .end local v3    # "canDrop":Z
    :cond_88
    const-wide v6, 0xffff00000000L

    .line 1897
    :goto_8d
    const/4 v3, 0x1

    .line 1898
    .restart local v3    # "canDrop":Z
    and-long v4, v10, v15

    const-wide v15, 0x100000000L

    sub-long v15, v10, v15

    and-long/2addr v6, v15

    or-long/2addr v4, v6

    or-long/2addr v0, v4

    move-wide v15, v0

    move/from16 v17, v3

    .line 1906
    .end local v0    # "nc":J
    .end local v3    # "canDrop":Z
    .restart local v15    # "nc":J
    .local v17, "canDrop":Z
    :goto_9d
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v3, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object/from16 v1, p0

    move-object v6, v2

    .end local v2    # "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .local v6, "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    move-wide v2, v3

    move-wide v4, v10

    move-object v8, v6

    .end local v6    # "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .local v8, "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    move-wide v6, v15

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 1907
    const v0, 0x7fffffff

    and-int/2addr v0, v12

    iput v0, v8, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    .line 1908
    iget-object v0, v8, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 1909
    move/from16 v0, v17

    .local v0, "dropped":Z
    goto :goto_c1

    .line 1912
    .end local v0    # "dropped":Z
    :cond_bc
    const/4 v0, 0x0

    .restart local v0    # "dropped":Z
    goto :goto_c1

    .line 1891
    .end local v0    # "dropped":Z
    .end local v8    # "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v15    # "nc":J
    .end local v17    # "canDrop":Z
    .restart local v18    # "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_be
    move-object/from16 v8, v18

    .line 1893
    .end local v18    # "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v8    # "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :goto_c0
    const/4 v0, 0x0

    .line 1914
    .end local v8    # "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v0    # "dropped":Z
    :goto_c1
    if-eqz v0, :cond_df

    .line 1915
    iget v1, v9, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    .local v1, "cfg":I
    const v2, 0xffff

    and-int/2addr v2, v1

    .line 1916
    .local v2, "idx":I
    if-ltz v2, :cond_d5

    array-length v3, v13

    if-ge v2, v3, :cond_d5

    aget-object v3, v13, v2

    if-ne v3, v9, :cond_d5

    .line 1917
    const/4 v3, 0x0

    aput-object v3, v13, v2

    .line 1918
    :cond_d5
    const/high16 v3, 0x40000

    or-int/2addr v3, v1

    iput v3, v9, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    .line 1919
    const/4 v3, -0x1

    iput v3, v9, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    .line 1920
    const/4 v3, 0x1

    return v3

    .line 1922
    .end local v0    # "dropped":Z
    .end local v1    # "cfg":I
    .end local v2    # "idx":I
    :cond_df
    move-object/from16 v8, p0

    goto/16 :goto_c

    .line 1924
    .end local v10    # "c":J
    .end local v12    # "sp":I
    .end local v13    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v14    # "wl":I
    :cond_e3
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o tryInitialize(Z)V
    .registers 9
    .param p1, "checkTermination"    # Z

    .line 1508
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    if-nez v0, :cond_3d

    .line 1509
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool;->config:I

    const v1, 0xffff

    and-int/2addr v0, v1

    .line 1510
    .local v0, "p":I
    const/4 v2, 0x1

    if-le v0, v2, :cond_10

    add-int/lit8 v3, v0, -0x1

    goto :goto_11

    :cond_10
    move v3, v2

    .line 1511
    .local v3, "n":I
    :goto_11
    ushr-int/lit8 v4, v3, 0x1

    or-int/2addr v3, v4

    .line 1512
    ushr-int/lit8 v4, v3, 0x2

    or-int/2addr v3, v4

    .line 1513
    ushr-int/lit8 v4, v3, 0x4

    or-int/2addr v3, v4

    .line 1514
    ushr-int/lit8 v4, v3, 0x8

    or-int/2addr v3, v4

    .line 1515
    ushr-int/lit8 v4, v3, 0x10

    or-int/2addr v3, v4

    .line 1516
    add-int/lit8 v4, v3, 0x1

    shl-int/2addr v4, v2

    and-int/2addr v1, v4

    .line 1517
    .end local v3    # "n":I
    .local v1, "n":I
    new-instance v3, Ljava/util/concurrent/ForkJoinPool$AuxState;

    invoke-direct {v3}, Ljava/util/concurrent/ForkJoinPool$AuxState;-><init>()V

    .line 1518
    .local v3, "aux":Ljava/util/concurrent/ForkJoinPool$AuxState;
    new-array v4, v1, [Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .line 1519
    .local v4, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    sget-object v5, Ljava/util/concurrent/ForkJoinPool;->modifyThreadPermission:Ljava/lang/RuntimePermission;

    monitor-enter v5

    .line 1520
    :try_start_2e
    iget v6, p0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    if-nez v6, :cond_38

    .line 1521
    iput-object v4, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .line 1522
    iput-object v3, p0, Ljava/util/concurrent/ForkJoinPool;->auxState:Ljava/util/concurrent/ForkJoinPool$AuxState;

    .line 1523
    iput v2, p0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    .line 1525
    :cond_38
    monitor-exit v5

    goto :goto_3d

    :catchall_3a
    move-exception v2

    monitor-exit v5
    :try_end_3c
    .catchall {:try_start_2e .. :try_end_3c} :catchall_3a

    throw v2

    .line 1527
    .end local v0    # "p":I
    .end local v1    # "n":I
    .end local v3    # "aux":Ljava/util/concurrent/ForkJoinPool$AuxState;
    .end local v4    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_3d
    :goto_3d
    if-eqz p1, :cond_4e

    iget v0, p0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    if-ltz v0, :cond_44

    goto :goto_4e

    .line 1528
    :cond_44
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Ljava/util/concurrent/ForkJoinPool;->tryTerminate(ZZ)I

    .line 1529
    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    invoke-direct {v0}, Ljava/util/concurrent/RejectedExecutionException;-><init>()V

    throw v0

    .line 1531
    :cond_4e
    :goto_4e
    return-void
.end method

.method private greylist-max-o tryReactivate(Ljava/util/concurrent/ForkJoinPool$WorkQueue;[Ljava/util/concurrent/ForkJoinPool$WorkQueue;I)V
    .registers 22
    .param p1, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .param p2, "ws"    # [Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .param p3, "r"    # I

    .line 1758
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v10, p0

    iget-wide v2, v10, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    move-wide v11, v2

    .local v11, "c":J
    long-to-int v2, v2

    move v13, v2

    .local v13, "sp":I
    if-eqz v2, :cond_5e

    if-eqz v0, :cond_5e

    if-eqz v1, :cond_5e

    array-length v2, v1

    move v14, v2

    .local v14, "wl":I
    if-lez v2, :cond_5e

    xor-int v2, v13, p3

    const/high16 v3, 0x10000

    and-int/2addr v2, v3

    if-nez v2, :cond_5e

    add-int/lit8 v2, v14, -0x1

    and-int/2addr v2, v13

    aget-object v2, v1, v2

    move-object v15, v2

    .local v15, "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v2, :cond_5e

    .line 1762
    iget v2, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->stackPred:I

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const-wide v4, -0x100000000L

    const-wide/high16 v6, 0x1000000000000L

    add-long/2addr v6, v11

    and-long/2addr v4, v6

    or-long v16, v2, v4

    .line 1763
    .local v16, "nc":J
    const v2, 0x7fffffff

    and-int v8, v13, v2

    .line 1764
    .local v8, "ns":I
    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    if-gez v2, :cond_5d

    iget v2, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    if-ne v2, v13, :cond_5d

    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    .line 1766
    move-object/from16 v3, p0

    move-wide v6, v11

    move v0, v8

    .end local v8    # "ns":I
    .local v0, "ns":I
    move-wide/from16 v8, v16

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 1767
    iput v0, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    .line 1768
    iget-object v2, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    invoke-static {v2}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    goto :goto_5e

    .line 1764
    .end local v0    # "ns":I
    .restart local v8    # "ns":I
    :cond_5d
    move v0, v8

    .line 1771
    .end local v8    # "ns":I
    .end local v14    # "wl":I
    .end local v15    # "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v16    # "nc":J
    :cond_5e
    :goto_5e
    return-void
.end method

.method private greylist-max-o tryRelease(JLjava/util/concurrent/ForkJoinPool$WorkQueue;J)Z
    .registers 22
    .param p1, "c"    # J
    .param p3, "v"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .param p4, "inc"    # J

    .line 1734
    move-wide/from16 v8, p1

    move-object/from16 v10, p3

    long-to-int v11, v8

    .local v11, "sp":I
    const v0, 0x7fffffff

    and-int v12, v11, v0

    .line 1735
    .local v12, "ns":I
    if-eqz v10, :cond_3b

    .line 1736
    iget v13, v10, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    .line 1737
    .local v13, "vs":I
    iget v0, v10, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->stackPred:I

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide v2, -0x100000000L

    add-long v4, v8, p4

    and-long/2addr v2, v4

    or-long v14, v0, v2

    .line 1738
    .local v14, "nc":J
    if-ne v11, v13, :cond_3b

    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object/from16 v1, p0

    move-wide/from16 v4, p1

    move-wide v6, v14

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1739
    iput v12, v10, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    .line 1740
    iget-object v0, v10, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 1741
    const/4 v0, 0x1

    return v0

    .line 1744
    .end local v13    # "vs":I
    .end local v14    # "nc":J
    :cond_3b
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o tryTerminate(ZZ)I
    .registers 18
    .param p1, "now"    # Z
    .param p2, "enable"    # Z

    move-object v7, p0

    .line 2415
    :goto_1
    iget v0, v7, Ljava/util/concurrent/ForkJoinPool;->runState:I

    move v8, v0

    .local v8, "rs":I
    const/4 v1, 0x0

    if-ltz v0, :cond_24

    .line 2416
    if-eqz p2, :cond_22

    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    if-ne v7, v0, :cond_e

    goto :goto_22

    .line 2418
    :cond_e
    if-nez v8, :cond_14

    .line 2419
    invoke-direct {p0, v1}, Ljava/util/concurrent/ForkJoinPool;->tryInitialize(Z)V

    goto :goto_1

    .line 2421
    :cond_14
    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v3, Ljava/util/concurrent/ForkJoinPool;->RUNSTATE:J

    const/high16 v0, -0x80000000

    or-int v6, v8, v0

    move-object v2, p0

    move v5, v8

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    goto :goto_1

    .line 2417
    :cond_22
    :goto_22
    const/4 v0, 0x1

    return v0

    .line 2424
    :cond_24
    and-int/lit8 v0, v8, 0x2

    const v9, 0xffff

    if-nez v0, :cond_74

    .line 2425
    if-nez p1, :cond_64

    .line 2426
    const-wide/16 v2, 0x0

    .line 2428
    .local v2, "oldSum":J
    :goto_2f
    iget-wide v4, v7, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .line 2429
    .local v4, "checkSum":J
    const/16 v0, 0x30

    shr-long v10, v4, v0

    long-to-int v0, v10

    iget v6, v7, Ljava/util/concurrent/ForkJoinPool;->config:I

    and-int/2addr v6, v9

    add-int/2addr v0, v6

    if-lez v0, :cond_3d

    .line 2430
    return v1

    .line 2431
    :cond_3d
    iget-object v0, v7, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v6, v0

    .local v6, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v0, :cond_5c

    .line 2432
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_43
    array-length v10, v6

    if-ge v0, v10, :cond_5c

    .line 2433
    aget-object v10, v6, v0

    move-object v11, v10

    .local v11, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v10, :cond_59

    .line 2434
    iget v10, v11, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    move v12, v10

    .local v12, "b":I
    int-to-long v13, v10

    add-long/2addr v4, v13

    .line 2435
    iget-object v10, v11, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    if-nez v10, :cond_58

    iget v10, v11, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    if-eq v12, v10, :cond_59

    .line 2436
    :cond_58
    return v1

    .line 2432
    .end local v12    # "b":I
    :cond_59
    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    .line 2440
    .end local v0    # "i":I
    .end local v11    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_5c
    move-wide v10, v4

    .end local v2    # "oldSum":J
    .local v10, "oldSum":J
    cmp-long v0, v2, v4

    if-nez v0, :cond_62

    .line 2441
    goto :goto_64

    .line 2442
    .end local v4    # "checkSum":J
    .end local v6    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_62
    move-wide v2, v10

    goto :goto_2f

    .line 2444
    .end local v10    # "oldSum":J
    :cond_64
    :goto_64
    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v3, Ljava/util/concurrent/ForkJoinPool;->RUNSTATE:J

    iget v5, v7, Ljava/util/concurrent/ForkJoinPool;->runState:I

    move v8, v5

    or-int/lit8 v6, v8, 0x2

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 2448
    :cond_74
    const-wide/16 v0, 0x0

    move-wide v1, v0

    .line 2450
    .local v1, "oldSum":J
    :goto_77
    iget-wide v3, v7, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .line 2451
    .local v3, "checkSum":J
    iget-object v0, v7, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v5, v0

    .local v5, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    const/4 v6, -0x1

    if-eqz v0, :cond_a5

    .line 2452
    const/4 v0, 0x0

    move-wide v10, v3

    move v3, v0

    .local v3, "i":I
    .local v10, "checkSum":J
    :goto_82
    array-length v0, v5

    if-ge v3, v0, :cond_a4

    .line 2453
    aget-object v0, v5, v3

    move-object v4, v0

    .local v4, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v0, :cond_a1

    .line 2454
    invoke-virtual {v4}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->cancelAll()V

    .line 2455
    iget v0, v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    int-to-long v12, v0

    add-long/2addr v10, v12

    .line 2456
    iget v0, v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    if-ltz v0, :cond_a1

    .line 2457
    iput v6, v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    .line 2458
    iget-object v0, v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->owner:Ljava/util/concurrent/ForkJoinWorkerThread;

    move-object v12, v0

    .local v12, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    if-eqz v0, :cond_a1

    .line 2460
    :try_start_9c
    invoke-virtual {v12}, Ljava/util/concurrent/ForkJoinWorkerThread;->interrupt()V
    :try_end_9f
    .catchall {:try_start_9c .. :try_end_9f} :catchall_a0

    .line 2462
    goto :goto_a1

    .line 2461
    :catchall_a0
    move-exception v0

    .line 2452
    .end local v12    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_a1
    :goto_a1
    add-int/lit8 v3, v3, 0x1

    goto :goto_82

    .end local v4    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_a4
    move-wide v3, v10

    .line 2468
    .end local v10    # "checkSum":J
    .local v3, "checkSum":J
    :cond_a5
    move-wide v10, v3

    .end local v1    # "oldSum":J
    .local v10, "oldSum":J
    cmp-long v0, v1, v3

    if-nez v0, :cond_c7

    .line 2469
    nop

    .line 2472
    .end local v3    # "checkSum":J
    .end local v5    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v10    # "oldSum":J
    iget-wide v0, v7, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    int-to-short v0, v0

    iget v1, v7, Ljava/util/concurrent/ForkJoinPool;->config:I

    and-int/2addr v1, v9

    add-int/2addr v0, v1

    if-gtz v0, :cond_c6

    .line 2473
    const v0, -0x7ffffff9

    iput v0, v7, Ljava/util/concurrent/ForkJoinPool;->runState:I

    .line 2474
    monitor-enter p0

    .line 2475
    :try_start_be
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 2476
    monitor-exit p0

    goto :goto_c6

    :catchall_c3
    move-exception v0

    monitor-exit p0
    :try_end_c5
    .catchall {:try_start_be .. :try_end_c5} :catchall_c3

    throw v0

    .line 2479
    :cond_c6
    :goto_c6
    return v6

    .line 2470
    .restart local v10    # "oldSum":J
    :cond_c7
    move-wide v1, v10

    goto :goto_77
.end method


# virtual methods
.method final greylist-max-o awaitJoin(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinTask;J)I
    .registers 20
    .param p1, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .param p3, "deadline"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinPool$WorkQueue;",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;J)I"
        }
    .end annotation

    .line 2227
    .local p2, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    .line 2228
    .local v2, "s":I
    if-eqz v0, :cond_70

    .line 2229
    iget-object v3, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    .line 2230
    .local v3, "prevJoin":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v1, :cond_6e

    iget v4, v1, Ljava/util/concurrent/ForkJoinTask;->status:I

    move v2, v4

    if-ltz v4, :cond_6e

    .line 2231
    iput-object v1, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    .line 2232
    instance-of v4, v1, Ljava/util/concurrent/CountedCompleter;

    if-eqz v4, :cond_1a

    .line 2233
    move-object v4, v1

    check-cast v4, Ljava/util/concurrent/CountedCompleter;

    goto :goto_1b

    :cond_1a
    const/4 v4, 0x0

    .line 2235
    .local v4, "cc":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_1b
    if-eqz v4, :cond_23

    .line 2236
    const/4 v5, 0x0

    move-object v12, p0

    invoke-virtual {p0, v0, v4, v5}, Ljava/util/concurrent/ForkJoinPool;->helpComplete(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/CountedCompleter;I)I

    goto :goto_27

    .line 2238
    :cond_23
    move-object v12, p0

    invoke-direct/range {p0 .. p2}, Ljava/util/concurrent/ForkJoinPool;->helpStealer(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinTask;)V

    .line 2239
    :goto_27
    iget v5, v1, Ljava/util/concurrent/ForkJoinTask;->status:I

    move v2, v5

    if-gez v5, :cond_2d

    .line 2240
    goto :goto_6a

    .line 2242
    :cond_2d
    const-wide/16 v5, 0x0

    cmp-long v7, p3, v5

    if-nez v7, :cond_37

    .line 2243
    const-wide/16 v5, 0x0

    move-wide v13, v5

    .local v5, "ms":J
    goto :goto_51

    .line 2244
    .end local v5    # "ms":J
    :cond_37
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long v7, p3, v7

    move-wide v9, v7

    .local v9, "ns":J
    cmp-long v7, v7, v5

    if-gtz v7, :cond_43

    .line 2245
    goto :goto_6a

    .line 2246
    :cond_43
    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    move-wide v13, v7

    .local v13, "ms":J
    cmp-long v5, v7, v5

    if-gtz v5, :cond_51

    .line 2247
    const-wide/16 v5, 0x1

    move-wide v13, v5

    .line 2248
    .end local v9    # "ns":J
    :cond_51
    :goto_51
    invoke-direct/range {p0 .. p1}, Ljava/util/concurrent/ForkJoinPool;->tryCompensate(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)Z

    move-result v5

    if-eqz v5, :cond_64

    .line 2249
    invoke-virtual {v1, v13, v14}, Ljava/util/concurrent/ForkJoinTask;->internalWait(J)V

    .line 2250
    sget-object v6, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v8, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    const-wide/high16 v10, 0x1000000000000L

    move-object v7, p0

    invoke-virtual/range {v6 .. v11}, Lsun/misc/Unsafe;->getAndAddLong(Ljava/lang/Object;JJ)J

    .line 2252
    :cond_64
    iget v5, v1, Ljava/util/concurrent/ForkJoinTask;->status:I

    move v2, v5

    if-gez v5, :cond_6d

    .line 2253
    nop

    .line 2255
    .end local v13    # "ms":J
    :goto_6a
    iput-object v3, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    goto :goto_71

    .line 2254
    :cond_6d
    goto :goto_1b

    .line 2230
    .end local v4    # "cc":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :cond_6e
    move-object v12, p0

    goto :goto_71

    .line 2228
    .end local v3    # "prevJoin":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_70
    move-object v12, p0

    .line 2258
    :goto_71
    return v2
.end method

.method public whitelist test-api awaitQuiescence(JLjava/util/concurrent/TimeUnit;)Z
    .registers 24
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 3282
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 3284
    .local v4, "nanos":J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    .line 3285
    .local v6, "thread":Ljava/lang/Thread;
    instance-of v7, v6, Ljava/util/concurrent/ForkJoinWorkerThread;

    const/4 v8, 0x1

    if-eqz v7, :cond_21

    move-object v7, v6

    check-cast v7, Ljava/util/concurrent/ForkJoinWorkerThread;

    move-object v9, v7

    .local v9, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    iget-object v7, v7, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    if-ne v7, v0, :cond_21

    .line 3287
    iget-object v7, v9, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ForkJoinPool;->helpQuiescePool(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)V

    .line 3288
    return v8

    .line 3290
    .end local v9    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_21
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    .line 3292
    .local v9, "startTime":J
    const/4 v7, 0x0

    .line 3293
    .local v7, "r":I
    const/4 v11, 0x1

    .line 3294
    .local v11, "found":Z
    :goto_27
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->isQuiescent()Z

    move-result v12

    if-nez v12, :cond_8c

    iget-object v12, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v13, v12

    .local v13, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v12, :cond_8c

    array-length v12, v13

    move v14, v12

    .local v14, "wl":I
    if-lez v12, :cond_8c

    .line 3296
    if-nez v11, :cond_46

    .line 3297
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v15

    sub-long/2addr v15, v9

    cmp-long v12, v15, v4

    if-lez v12, :cond_43

    .line 3298
    const/4 v8, 0x0

    return v8

    .line 3299
    :cond_43
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 3301
    :cond_46
    const/4 v11, 0x0

    .line 3302
    add-int/lit8 v12, v14, -0x1

    .local v12, "m":I
    add-int/lit8 v15, v12, 0x1

    shl-int/lit8 v15, v15, 0x2

    .local v15, "j":I
    :goto_4d
    if-ltz v15, :cond_88

    .line 3304
    add-int/lit8 v16, v7, 0x1

    .end local v7    # "r":I
    .local v16, "r":I
    and-int/2addr v7, v12

    move/from16 v17, v7

    .local v17, "k":I
    if-gt v7, v12, :cond_80

    if-ltz v17, :cond_80

    aget-object v7, v13, v17

    move-object/from16 v18, v7

    .local v18, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v7, :cond_7e

    move-object/from16 v7, v18

    .end local v18    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .local v7, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    iget v8, v7, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    move/from16 v19, v8

    .local v19, "b":I
    iget v0, v7, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    sub-int/2addr v8, v0

    if-gez v8, :cond_7b

    .line 3306
    const/4 v0, 0x1

    .line 3307
    .end local v11    # "found":Z
    .local v0, "found":Z
    move/from16 v8, v19

    .end local v19    # "b":I
    .local v8, "b":I
    invoke-virtual {v7, v8}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pollAt(I)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v11

    move-object/from16 v19, v11

    .local v19, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v11, :cond_77

    .line 3308
    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    .line 3302
    .end local v7    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v8    # "b":I
    .end local v12    # "m":I
    .end local v15    # "j":I
    .end local v17    # "k":I
    .end local v19    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_77
    move v11, v0

    move/from16 v7, v16

    goto :goto_88

    .line 3304
    .end local v0    # "found":Z
    .restart local v7    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v11    # "found":Z
    .restart local v12    # "m":I
    .restart local v15    # "j":I
    .restart local v17    # "k":I
    .local v19, "b":I
    :cond_7b
    move/from16 v8, v19

    .end local v19    # "b":I
    .restart local v8    # "b":I
    goto :goto_80

    .end local v7    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v8    # "b":I
    .restart local v18    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_7e
    move-object/from16 v7, v18

    .line 3302
    .end local v17    # "k":I
    .end local v18    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_80
    :goto_80
    add-int/lit8 v15, v15, -0x1

    move-object/from16 v0, p0

    move/from16 v7, v16

    const/4 v8, 0x1

    goto :goto_4d

    .end local v12    # "m":I
    .end local v15    # "j":I
    .end local v16    # "r":I
    .local v7, "r":I
    :cond_88
    :goto_88
    move-object/from16 v0, p0

    const/4 v8, 0x1

    goto :goto_27

    .line 3313
    .end local v13    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v14    # "wl":I
    :cond_8c
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .registers 21
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 3245
    move-object/from16 v1, p0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_5b

    .line 3247
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    const/4 v2, 0x0

    if-ne v1, v0, :cond_11

    .line 3248
    invoke-virtual/range {p0 .. p3}, Ljava/util/concurrent/ForkJoinPool;->awaitQuiescence(JLjava/util/concurrent/TimeUnit;)Z

    .line 3249
    return v2

    .line 3251
    :cond_11
    move-wide/from16 v3, p1

    move-object/from16 v5, p3

    invoke-virtual {v5, v3, v4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    .line 3252
    .local v6, "nanos":J
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->isTerminated()Z

    move-result v0

    const/4 v8, 0x1

    if-eqz v0, :cond_21

    .line 3253
    return v8

    .line 3254
    :cond_21
    const-wide/16 v9, 0x0

    cmp-long v0, v6, v9

    if-gtz v0, :cond_28

    .line 3255
    return v2

    .line 3256
    :cond_28
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    add-long/2addr v11, v6

    .line 3257
    .local v11, "deadline":J
    monitor-enter p0

    .line 3259
    :goto_2e
    :try_start_2e
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 3260
    monitor-exit p0

    return v8

    .line 3261
    :cond_36
    cmp-long v0, v6, v9

    if-gtz v0, :cond_3c

    .line 3262
    monitor-exit p0

    return v2

    .line 3263
    :cond_3c
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v13

    .line 3264
    .local v13, "millis":J
    cmp-long v0, v13, v9

    if-lez v0, :cond_48

    move-wide v2, v13

    goto :goto_4b

    :cond_48
    const-wide/16 v15, 0x1

    move-wide v2, v15

    :goto_4b
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 3265
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long v6, v11, v2

    .line 3266
    .end local v13    # "millis":J
    move-wide/from16 v3, p1

    const/4 v2, 0x0

    goto :goto_2e

    .line 3267
    :catchall_58
    move-exception v0

    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_2e .. :try_end_5a} :catchall_58

    throw v0

    .line 3246
    .end local v6    # "nanos":J
    .end local v11    # "deadline":J
    :cond_5b
    move-object/from16 v5, p3

    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method final greylist-max-o deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V
    .registers 21
    .param p1, "wt"    # Ljava/util/concurrent/ForkJoinWorkerThread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .line 1638
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    const/4 v0, 0x0

    .line 1639
    .local v0, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    const/4 v11, 0x0

    if-eqz v10, :cond_3b

    iget-object v1, v10, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v2, v1

    .end local v0    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .local v2, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v1, :cond_3a

    .line 1641
    iget v0, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    const v1, 0xffff

    and-int/2addr v1, v0

    .line 1642
    .local v1, "idx":I
    iget v3, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    .line 1643
    .local v3, "ns":I
    iget-object v0, v9, Ljava/util/concurrent/ForkJoinPool;->auxState:Ljava/util/concurrent/ForkJoinPool$AuxState;

    move-object v4, v0

    .local v4, "aux":Ljava/util/concurrent/ForkJoinPool$AuxState;
    if-eqz v0, :cond_3a

    .line 1644
    invoke-virtual {v4}, Ljava/util/concurrent/ForkJoinPool$AuxState;->lock()V

    .line 1646
    :try_start_1d
    iget-object v0, v9, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v5, v0

    .local v5, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v0, :cond_2b

    array-length v0, v5

    if-le v0, v1, :cond_2b

    aget-object v0, v5, v1

    if-ne v0, v2, :cond_2b

    .line 1648
    aput-object v11, v5, v1

    .line 1649
    :cond_2b
    iget-wide v6, v4, Ljava/util/concurrent/ForkJoinPool$AuxState;->stealCount:J

    int-to-long v12, v3

    add-long/2addr v6, v12

    iput-wide v6, v4, Ljava/util/concurrent/ForkJoinPool$AuxState;->stealCount:J
    :try_end_31
    .catchall {:try_start_1d .. :try_end_31} :catchall_35

    .line 1651
    invoke-virtual {v4}, Ljava/util/concurrent/ForkJoinPool$AuxState;->unlock()V

    .line 1652
    goto :goto_3a

    .line 1651
    .end local v5    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :catchall_35
    move-exception v0

    invoke-virtual {v4}, Ljava/util/concurrent/ForkJoinPool$AuxState;->unlock()V

    .line 1652
    throw v0

    .line 1655
    .end local v1    # "idx":I
    .end local v3    # "ns":I
    .end local v4    # "aux":Ljava/util/concurrent/ForkJoinPool$AuxState;
    :cond_3a
    :goto_3a
    move-object v0, v2

    .end local v2    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v0    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_3b
    if-eqz v0, :cond_44

    iget v1, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-nez v1, :cond_70

    .line 1657
    :cond_44
    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v3, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    iget-wide v5, v9, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    move-wide v12, v5

    .local v12, "c":J
    const-wide/high16 v7, -0x1000000000000L

    const-wide/high16 v14, 0x1000000000000L

    sub-long v14, v12, v14

    and-long/2addr v7, v14

    const-wide v14, 0xffff00000000L

    const-wide v16, 0x100000000L

    sub-long v16, v12, v16

    and-long v14, v16, v14

    or-long/2addr v7, v14

    const-wide v14, 0xffffffffL

    and-long/2addr v14, v12

    or-long/2addr v7, v14

    .line 1658
    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v8}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 1662
    .end local v12    # "c":J
    :cond_70
    if-eqz v0, :cond_7a

    .line 1663
    iput-object v11, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    .line 1664
    const/4 v1, -0x1

    iput v1, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    .line 1665
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->cancelAll()V

    .line 1667
    :cond_7a
    :goto_7a
    const/4 v1, 0x0

    invoke-direct {v9, v1, v1}, Ljava/util/concurrent/ForkJoinPool;->tryTerminate(ZZ)I

    move-result v1

    if-ltz v1, :cond_bb

    .line 1669
    if-eqz v0, :cond_bb

    iget-object v1, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    if-eqz v1, :cond_bb

    iget-object v1, v9, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v7, v1

    .local v7, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v1, :cond_bb

    array-length v1, v7

    move v8, v1

    .local v8, "wl":I
    if-gtz v1, :cond_91

    .line 1671
    goto :goto_bb

    .line 1672
    :cond_91
    iget-wide v1, v9, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    move-wide v11, v1

    .local v11, "c":J
    long-to-int v1, v1

    move v13, v1

    .local v13, "sp":I
    if-eqz v1, :cond_aa

    .line 1673
    add-int/lit8 v1, v8, -0x1

    and-int/2addr v1, v13

    aget-object v4, v7, v1

    const-wide/high16 v5, 0x1000000000000L

    move-object/from16 v1, p0

    move-wide v2, v11

    invoke-direct/range {v1 .. v6}, Ljava/util/concurrent/ForkJoinPool;->tryRelease(JLjava/util/concurrent/ForkJoinPool$WorkQueue;J)Z

    move-result v1

    if-eqz v1, :cond_a9

    .line 1674
    goto :goto_bb

    .line 1682
    .end local v7    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v8    # "wl":I
    .end local v11    # "c":J
    .end local v13    # "sp":I
    :cond_a9
    goto :goto_7a

    .line 1676
    .restart local v7    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v8    # "wl":I
    .restart local v11    # "c":J
    .restart local v13    # "sp":I
    :cond_aa
    if-eqz p2, :cond_bb

    const-wide v1, 0x800000000000L

    and-long/2addr v1, v11

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_bb

    .line 1677
    invoke-direct {v9, v11, v12}, Ljava/util/concurrent/ForkJoinPool;->tryAddWorker(J)V

    .line 1683
    .end local v7    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v8    # "wl":I
    .end local v11    # "c":J
    .end local v13    # "sp":I
    :cond_bb
    :goto_bb
    if-nez p2, :cond_c1

    .line 1684
    invoke-static {}, Ljava/util/concurrent/ForkJoinTask;->helpExpungeStaleExceptions()V

    goto :goto_c4

    .line 1686
    :cond_c1
    invoke-static/range {p2 .. p2}, Ljava/util/concurrent/ForkJoinTask;->rethrow(Ljava/lang/Throwable;)V

    .line 1687
    :goto_c4
    return-void
.end method

.method protected whitelist test-api drainTasksTo(Ljava/util/Collection;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;>;)I"
        }
    .end annotation

    .line 3084
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-Ljava/util/concurrent/ForkJoinTask<*>;>;"
    const/4 v0, 0x0

    .line 3086
    .local v0, "count":I
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v2, v1

    .local v2, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v1, :cond_1f

    .line 3087
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v3, v2

    if-ge v1, v3, :cond_1f

    .line 3088
    aget-object v3, v2, v1

    move-object v4, v3

    .local v4, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_1c

    .line 3089
    :goto_f
    invoke-virtual {v4}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->poll()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v3

    move-object v5, v3

    .local v5, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v3, :cond_1c

    .line 3090
    invoke-interface {p1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 3091
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 3087
    .end local v5    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3096
    .end local v1    # "i":I
    .end local v4    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_1f
    return v0
.end method

.method public whitelist test-api execute(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 2773
    if-eqz p1, :cond_13

    .line 2776
    instance-of v0, p1, Ljava/util/concurrent/ForkJoinTask;

    if-eqz v0, :cond_a

    .line 2777
    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/ForkJoinTask;

    .local v0, "job":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    goto :goto_f

    .line 2779
    .end local v0    # "job":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_a
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$RunnableExecuteAction;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ForkJoinTask$RunnableExecuteAction;-><init>(Ljava/lang/Runnable;)V

    .line 2780
    .restart local v0    # "job":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :goto_f
    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinPool;->externalSubmit(Ljava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;

    .line 2781
    return-void

    .line 2774
    .end local v0    # "job":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_13
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api execute(Ljava/util/concurrent/ForkJoinTask;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;)V"
        }
    .end annotation

    .line 2762
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ForkJoinPool;->externalSubmit(Ljava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;

    .line 2763
    return-void
.end method

.method final greylist-max-o externalHelpComplete(Ljava/util/concurrent/CountedCompleter;I)I
    .registers 7
    .param p2, "maxTasks"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter<",
            "*>;I)I"
        }
    .end annotation

    .line 2599
    .local p1, "task":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->getProbe()I

    move-result v0

    .line 2600
    .local v0, "r":I
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v2, v1

    .local v2, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v1, :cond_19

    array-length v1, v2

    move v3, v1

    .local v3, "wl":I
    if-lez v1, :cond_19

    .line 2601
    add-int/lit8 v1, v3, -0x1

    and-int/2addr v1, v0

    and-int/lit8 v1, v1, 0x7e

    aget-object v1, v2, v1

    invoke-virtual {p0, v1, p1, p2}, Ljava/util/concurrent/ForkJoinPool;->helpComplete(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/CountedCompleter;I)I

    move-result v1

    goto :goto_1a

    .end local v3    # "wl":I
    :cond_19
    const/4 v1, 0x0

    .line 2600
    :goto_1a
    return v1
.end method

.method final greylist-max-o externalPush(Ljava/util/concurrent/ForkJoinTask;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;)V"
        }
    .end annotation

    .line 2531
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->getProbe()I

    move-result v0

    move v1, v0

    .local v1, "r":I
    if-nez v0, :cond_e

    .line 2532
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->localInit()V

    .line 2533
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->getProbe()I

    move-result v1

    .line 2537
    :cond_e
    :goto_e
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    .line 2538
    .local v0, "rs":I
    iget-object v2, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .line 2539
    .local v2, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-lez v0, :cond_3e

    if-eqz v2, :cond_3e

    array-length v3, v2

    move v4, v3

    .local v4, "wl":I
    if-gtz v3, :cond_1b

    goto :goto_3e

    .line 2541
    :cond_1b
    add-int/lit8 v3, v4, -0x1

    and-int/2addr v3, v1

    and-int/lit8 v3, v3, 0x7e

    move v5, v3

    .local v5, "k":I
    aget-object v3, v2, v3

    move-object v6, v3

    .local v6, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-nez v3, :cond_2a

    .line 2542
    invoke-direct {p0, v5}, Ljava/util/concurrent/ForkJoinPool;->tryCreateExternalQueue(I)V

    goto :goto_42

    .line 2543
    :cond_2a
    invoke-virtual {v6, p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->sharedPush(Ljava/util/concurrent/ForkJoinTask;)I

    move-result v3

    move v7, v3

    .local v7, "stat":I
    if-gez v3, :cond_32

    .line 2544
    goto :goto_38

    .line 2545
    :cond_32
    if-nez v7, :cond_39

    .line 2546
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool;->signalWork()V

    .line 2547
    nop

    .line 2552
    .end local v0    # "rs":I
    .end local v2    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v4    # "wl":I
    .end local v5    # "k":I
    .end local v6    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v7    # "stat":I
    :goto_38
    return-void

    .line 2550
    .restart local v0    # "rs":I
    .restart local v2    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v4    # "wl":I
    .restart local v5    # "k":I
    .restart local v6    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v7    # "stat":I
    :cond_39
    invoke-static {v1}, Ljava/util/concurrent/ThreadLocalRandom;->advanceProbe(I)I

    move-result v1

    goto :goto_42

    .line 2540
    .end local v4    # "wl":I
    .end local v5    # "k":I
    .end local v6    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v7    # "stat":I
    :cond_3e
    :goto_3e
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Ljava/util/concurrent/ForkJoinPool;->tryInitialize(Z)V

    .line 2551
    .end local v0    # "rs":I
    .end local v2    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :goto_42
    goto :goto_e
.end method

.method public whitelist test-api getActiveThreadCount()I
    .registers 5

    .line 2946
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool;->config:I

    const v1, 0xffff

    and-int/2addr v0, v1

    iget-wide v1, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    const/16 v3, 0x30

    shr-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    .line 2947
    .local v0, "r":I
    if-gtz v0, :cond_11

    const/4 v1, 0x0

    goto :goto_12

    :cond_11
    move v1, v0

    :goto_12
    return v1
.end method

.method public whitelist test-api getAsyncMode()Z
    .registers 3

    .line 2915
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool;->config:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist test-api getFactory()Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    .registers 2

    .line 2863
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool;->factory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    return-object v0
.end method

.method public whitelist test-api getParallelism()I
    .registers 3

    .line 2883
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool;->config:I

    const v1, 0xffff

    and-int/2addr v0, v1

    move v1, v0

    .local v1, "par":I
    if-lez v0, :cond_b

    move v0, v1

    goto :goto_c

    :cond_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public whitelist test-api getPoolSize()I
    .registers 5

    .line 2905
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool;->config:I

    const v1, 0xffff

    and-int/2addr v0, v1

    iget-wide v1, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    const/16 v3, 0x20

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    int-to-short v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api getQueuedSubmissionCount()I
    .registers 6

    .line 3019
    const/4 v0, 0x0

    .line 3021
    .local v0, "count":I
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v2, v1

    .local v2, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v1, :cond_17

    .line 3022
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v3, v2

    if-ge v1, v3, :cond_17

    .line 3023
    aget-object v3, v2, v1

    move-object v4, v3

    .local v4, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_14

    .line 3024
    invoke-virtual {v4}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->queueSize()I

    move-result v3

    add-int/2addr v0, v3

    .line 3022
    :cond_14
    add-int/lit8 v1, v1, 0x2

    goto :goto_7

    .line 3027
    .end local v1    # "i":I
    .end local v4    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_17
    return v0
.end method

.method public whitelist test-api getQueuedTaskCount()J
    .registers 9

    .line 3000
    const-wide/16 v0, 0x0

    .line 3002
    .local v0, "count":J
    iget-object v2, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v3, v2

    .local v3, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v2, :cond_19

    .line 3003
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_8
    array-length v4, v3

    if-ge v2, v4, :cond_19

    .line 3004
    aget-object v4, v3, v2

    move-object v5, v4

    .local v5, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v4, :cond_16

    .line 3005
    invoke-virtual {v5}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->queueSize()I

    move-result v4

    int-to-long v6, v4

    add-long/2addr v0, v6

    .line 3003
    :cond_16
    add-int/lit8 v2, v2, 0x2

    goto :goto_8

    .line 3008
    .end local v2    # "i":I
    .end local v5    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_19
    return-wide v0
.end method

.method public whitelist test-api getRunningThreadCount()I
    .registers 6

    .line 2927
    const/4 v0, 0x0

    .line 2929
    .local v0, "rc":I
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v2, v1

    .local v2, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v1, :cond_1a

    .line 2930
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_7
    array-length v3, v2

    if-ge v1, v3, :cond_1a

    .line 2931
    aget-object v3, v2, v1

    move-object v4, v3

    .local v4, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_17

    invoke-virtual {v4}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->isApparentlyUnblocked()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 2932
    add-int/lit8 v0, v0, 0x1

    .line 2930
    :cond_17
    add-int/lit8 v1, v1, 0x2

    goto :goto_7

    .line 2935
    .end local v1    # "i":I
    .end local v4    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_1a
    return v0
.end method

.method public whitelist test-api getStealCount()J
    .registers 10

    .line 2977
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool;->auxState:Ljava/util/concurrent/ForkJoinPool$AuxState;

    .line 2978
    .local v0, "sc":Ljava/util/concurrent/ForkJoinPool$AuxState;
    if-nez v0, :cond_7

    const-wide/16 v1, 0x0

    goto :goto_9

    :cond_7
    iget-wide v1, v0, Ljava/util/concurrent/ForkJoinPool$AuxState;->stealCount:J

    .line 2980
    .local v1, "count":J
    :goto_9
    iget-object v3, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v4, v3

    .local v4, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_1e

    .line 2981
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_f
    array-length v5, v4

    if-ge v3, v5, :cond_1e

    .line 2982
    aget-object v5, v4, v3

    move-object v6, v5

    .local v6, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v5, :cond_1b

    .line 2983
    iget v5, v6, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    int-to-long v7, v5

    add-long/2addr v1, v7

    .line 2981
    :cond_1b
    add-int/lit8 v3, v3, 0x2

    goto :goto_f

    .line 2986
    .end local v3    # "i":I
    .end local v6    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_1e
    return-wide v1
.end method

.method public whitelist test-api getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .registers 2

    .line 2873
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool;->ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method public whitelist test-api hasQueuedSubmissions()Z
    .registers 5

    .line 3038
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v1, v0

    .local v1, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v0, :cond_19

    .line 3039
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    array-length v2, v1

    if-ge v0, v2, :cond_19

    .line 3040
    aget-object v2, v1, v0

    move-object v3, v2

    .local v3, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v2, :cond_16

    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_16

    .line 3041
    const/4 v2, 0x1

    return v2

    .line 3039
    :cond_16
    add-int/lit8 v0, v0, 0x2

    goto :goto_6

    .line 3044
    .end local v0    # "i":I
    .end local v3    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method final greylist-max-o helpComplete(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/CountedCompleter;I)I
    .registers 23
    .param p1, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .param p3, "maxTasks"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinPool$WorkQueue;",
            "Ljava/util/concurrent/CountedCompleter<",
            "*>;I)I"
        }
    .end annotation

    .line 2037
    .local p2, "task":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    .line 2038
    .local v2, "s":I
    move-object/from16 v3, p0

    iget-object v4, v3, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v5, v4

    .local v5, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v4, :cond_bb

    array-length v4, v5

    move v6, v4

    .local v6, "wl":I
    const/4 v7, 0x1

    if-le v4, v7, :cond_bb

    if-eqz v1, :cond_bb

    if-eqz v0, :cond_bb

    .line 2040
    add-int/lit8 v4, v6, -0x1

    .line 2041
    .local v4, "m":I
    iget v8, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    .line 2042
    .local v8, "mode":I
    not-int v9, v8

    .line 2043
    .local v9, "r":I
    and-int v10, v9, v4

    .local v10, "origin":I
    move v11, v10

    .line 2044
    .local v11, "k":I
    const/4 v12, 0x3

    .line 2045
    .local v12, "step":I
    const/4 v13, 0x1

    .line 2046
    .local v13, "h":I
    const/4 v14, 0x0

    .local v14, "oldSum":I
    const/4 v15, 0x0

    move/from16 v16, v15

    move v15, v14

    move v14, v13

    move v13, v12

    move v12, v11

    move v10, v9

    move v9, v2

    move/from16 v2, p3

    .line 2048
    .end local p3    # "maxTasks":I
    .local v2, "maxTasks":I
    .local v9, "s":I
    .local v10, "r":I
    .local v11, "origin":I
    .local v12, "k":I
    .local v13, "step":I
    .local v14, "h":I
    .local v15, "oldSum":I
    .local v16, "checkSum":I
    :goto_2b
    iget v7, v1, Ljava/util/concurrent/CountedCompleter;->status:I

    move v9, v7

    if-gez v7, :cond_32

    .line 2049
    goto/16 :goto_be

    .line 2050
    :cond_32
    const/4 v7, 0x1

    if-ne v14, v7, :cond_50

    invoke-virtual {v0, v1, v8}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->popCC(Ljava/util/concurrent/CountedCompleter;I)Ljava/util/concurrent/CountedCompleter;

    move-result-object v7

    move-object/from16 v17, v7

    .local v17, "p":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    if-eqz v7, :cond_50

    .line 2051
    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/CountedCompleter;->doExec()I

    .line 2052
    if-eqz v2, :cond_48

    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_48

    .line 2053
    goto/16 :goto_be

    .line 2054
    :cond_48
    move v7, v12

    .line 2055
    .end local v11    # "origin":I
    .local v7, "origin":I
    const/4 v11, 0x0

    move/from16 v16, v11

    move v15, v11

    move v11, v7

    .end local v15    # "oldSum":I
    .local v11, "oldSum":I
    goto/16 :goto_b4

    .line 2058
    .end local v7    # "origin":I
    .end local v17    # "p":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .local v11, "origin":I
    .restart local v15    # "oldSum":I
    :cond_50
    or-int/lit8 v7, v12, 0x1

    move/from16 v17, v7

    .local v17, "i":I
    if-ltz v7, :cond_73

    move/from16 v7, v17

    .end local v17    # "i":I
    .local v7, "i":I
    if-gt v7, v4, :cond_75

    aget-object v17, v5, v7

    move-object/from16 v18, v17

    .local v18, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-nez v17, :cond_61

    goto :goto_75

    .line 2060
    :cond_61
    move-object/from16 v0, v18

    .end local v18    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .local v0, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pollAndExecCC(Ljava/util/concurrent/CountedCompleter;)I

    move-result v17

    move/from16 v14, v17

    if-gez v17, :cond_70

    .line 2061
    add-int v16, v16, v14

    move/from16 v0, v16

    goto :goto_78

    .line 2060
    :cond_70
    move/from16 v0, v16

    goto :goto_78

    .line 2058
    .end local v0    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v7    # "i":I
    .restart local v17    # "i":I
    :cond_73
    move/from16 v7, v17

    .line 2059
    .end local v17    # "i":I
    .restart local v7    # "i":I
    :cond_75
    :goto_75
    const/4 v14, 0x0

    move/from16 v0, v16

    .line 2062
    .end local v16    # "checkSum":I
    .local v0, "checkSum":I
    :goto_78
    if-lez v14, :cond_a1

    .line 2063
    const/4 v1, 0x1

    if-ne v14, v1, :cond_84

    if-eqz v2, :cond_84

    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_84

    .line 2064
    goto :goto_be

    .line 2065
    :cond_84
    ushr-int/lit8 v16, v10, 0x10

    or-int/lit8 v13, v16, 0x3

    .line 2066
    shl-int/lit8 v16, v10, 0xd

    xor-int v10, v10, v16

    ushr-int/lit8 v16, v10, 0x11

    xor-int v10, v10, v16

    shl-int/lit8 v16, v10, 0x5

    xor-int v10, v10, v16

    .line 2067
    and-int v16, v10, v4

    move/from16 v11, v16

    move/from16 v12, v16

    .line 2068
    const/16 v16, 0x0

    move/from16 v0, v16

    move/from16 v15, v16

    goto :goto_b4

    .line 2070
    :cond_a1
    const/4 v1, 0x1

    add-int v16, v12, v13

    and-int v1, v16, v4

    move v12, v1

    if-ne v1, v11, :cond_b2

    .line 2071
    move v1, v0

    .end local v15    # "oldSum":I
    .local v1, "oldSum":I
    if-ne v15, v0, :cond_ad

    .line 2072
    goto :goto_be

    .line 2073
    :cond_ad
    const/4 v0, 0x0

    move/from16 v16, v0

    move v15, v1

    goto :goto_b4

    .line 2070
    .end local v1    # "oldSum":I
    .restart local v15    # "oldSum":I
    :cond_b2
    move/from16 v16, v0

    .line 2076
    .end local v0    # "checkSum":I
    .end local v7    # "i":I
    .restart local v16    # "checkSum":I
    :goto_b4
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v7, 0x1

    goto/16 :goto_2b

    .line 2078
    .end local v4    # "m":I
    .end local v6    # "wl":I
    .end local v8    # "mode":I
    .end local v9    # "s":I
    .end local v10    # "r":I
    .end local v11    # "origin":I
    .end local v12    # "k":I
    .end local v13    # "step":I
    .end local v14    # "h":I
    .end local v15    # "oldSum":I
    .end local v16    # "checkSum":I
    .local v2, "s":I
    .restart local p3    # "maxTasks":I
    :cond_bb
    move v9, v2

    move/from16 v2, p3

    .end local p3    # "maxTasks":I
    .local v2, "maxTasks":I
    .restart local v9    # "s":I
    :goto_be
    return v9
.end method

.method final greylist-max-o helpQuiescePool(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)V
    .registers 20
    .param p1, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .line 2297
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    iget-object v10, v9, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    .line 2298
    .local v10, "ps":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    iget v11, v9, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    .line 2299
    .local v11, "wc":I
    const/4 v0, 0x1

    move v12, v0

    .line 2301
    .local v12, "active":Z
    :goto_a
    if-ltz v11, :cond_1c

    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pop()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    move-object v1, v0

    .local v1, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v0, :cond_1c

    .line 2302
    iput-object v1, v9, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    invoke-virtual {v1}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    .line 2303
    iput-object v10, v9, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    goto/16 :goto_95

    .line 2305
    .end local v1    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_1c
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->findNonEmptyStealQueue()Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-result-object v0

    move-object v13, v0

    .local v13, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v0, :cond_4d

    .line 2306
    if-nez v12, :cond_31

    .line 2307
    const/4 v12, 0x1

    .line 2308
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    const-wide/high16 v4, 0x1000000000000L

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->getAndAddLong(Ljava/lang/Object;JJ)J

    .line 2310
    :cond_31
    iget v0, v13, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    invoke-virtual {v13, v0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pollAt(I)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    move-object v1, v0

    .restart local v1    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v0, :cond_95

    .line 2311
    iput-object v1, v9, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    invoke-virtual {v1}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    .line 2312
    iput-object v10, v9, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    .line 2313
    iget v0, v9, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v9, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    if-gez v0, :cond_95

    .line 2314
    invoke-virtual {v9, v8}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->transferStealCount(Ljava/util/concurrent/ForkJoinPool;)V

    goto :goto_95

    .line 2317
    .end local v1    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_4d
    const-wide/high16 v0, 0x1000000000000L

    if-eqz v12, :cond_72

    .line 2318
    const-wide/high16 v2, -0x1000000000000L

    iget-wide v4, v8, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    move-wide v14, v4

    .local v14, "c":J
    sub-long/2addr v4, v0

    and-long v0, v4, v2

    const-wide v2, 0xffffffffffffL

    and-long/2addr v2, v14

    or-long v16, v0, v2

    .line 2319
    .local v16, "nc":J
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object/from16 v1, p0

    move-wide v4, v14

    move-wide/from16 v6, v16

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 2320
    const/4 v12, 0x0

    .line 2321
    .end local v16    # "nc":J
    :cond_71
    goto :goto_95

    .line 2322
    .end local v14    # "c":J
    :cond_72
    iget-wide v2, v8, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    move-wide v14, v2

    .restart local v14    # "c":J
    const/16 v4, 0x30

    shr-long/2addr v2, v4

    long-to-int v2, v2

    iget v3, v8, Ljava/util/concurrent/ForkJoinPool;->config:I

    const v4, 0xffff

    and-int/2addr v3, v4

    add-int/2addr v2, v3

    if-gtz v2, :cond_95

    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v3, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    add-long v6, v14, v0

    .line 2323
    move-object v0, v2

    move-object/from16 v1, p0

    move-wide v2, v3

    move-wide v4, v14

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 2324
    nop

    .line 2326
    .end local v12    # "active":Z
    .end local v13    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v14    # "c":J
    return-void

    .line 2325
    .restart local v12    # "active":Z
    :cond_95
    :goto_95
    goto/16 :goto_a
.end method

.method public whitelist test-api invoke(Ljava/util/concurrent/ForkJoinTask;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ForkJoinTask<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 2747
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TT;>;"
    if-eqz p1, :cond_a

    .line 2749
    invoke-direct {p0, p1}, Ljava/util/concurrent/ForkJoinPool;->externalSubmit(Ljava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;

    .line 2750
    invoke-virtual {p1}, Ljava/util/concurrent/ForkJoinTask;->join()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 2748
    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;)",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "TT;>;>;"
        }
    .end annotation

    .line 2839
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2842
    .local v0, "futures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/Future<TT;>;>;"
    :try_start_9
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Callable;

    .line 2843
    .local v2, "t":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    new-instance v3, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;

    invoke-direct {v3, v2}, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;-><init>(Ljava/util/concurrent/Callable;)V

    .line 2844
    .local v3, "f":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TT;>;"
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2845
    invoke-direct {p0, v3}, Ljava/util/concurrent/ForkJoinPool;->externalSubmit(Ljava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;

    .line 2846
    nop

    .end local v2    # "t":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    .end local v3    # "f":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TT;>;"
    goto :goto_d

    .line 2847
    :cond_26
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "size":I
    :goto_2b
    if-ge v1, v2, :cond_39

    .line 2848
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ForkJoinTask;

    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinTask;->quietlyJoin()V
    :try_end_36
    .catchall {:try_start_9 .. :try_end_36} :catchall_3a

    .line 2847
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 2849
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_39
    return-object v0

    .line 2850
    :catchall_3a
    move-exception v1

    .line 2851
    .local v1, "t":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "size":I
    :goto_40
    if-ge v2, v3, :cond_4f

    .line 2852
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Future;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 2851
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    .line 2853
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_4f
    throw v1
.end method

.method public whitelist test-api isQuiescent()Z
    .registers 5

    .line 2962
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool;->config:I

    const v1, 0xffff

    and-int/2addr v0, v1

    iget-wide v1, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    const/16 v3, 0x30

    shr-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    if-gtz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public whitelist test-api isShutdown()Z
    .registers 3

    .line 3226
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist test-api isTerminated()Z
    .registers 2

    .line 3199
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api isTerminating()Z
    .registers 3

    .line 3216
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    .line 3217
    .local v0, "rs":I
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_c

    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method protected whitelist test-api newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;
    .registers 4
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/RunnableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 3455
    .local p2, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;

    invoke-direct {v0, p1, p2}, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected whitelist test-api newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/RunnableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 3459
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method final greylist-max-o nextTaskFor(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)Ljava/util/concurrent/ForkJoinTask;
    .registers 5
    .param p1, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinPool$WorkQueue;",
            ")",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 2336
    :goto_0
    invoke-virtual {p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nextLocalTask()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    move-object v1, v0

    .local v1, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v0, :cond_8

    .line 2337
    return-object v1

    .line 2338
    :cond_8
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinPool;->findNonEmptyStealQueue()Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-result-object v0

    move-object v2, v0

    .local v2, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-nez v0, :cond_11

    .line 2339
    const/4 v0, 0x0

    return-object v0

    .line 2340
    :cond_11
    iget v0, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pollAt(I)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_1b

    .line 2341
    return-object v1

    .line 2342
    .end local v2    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_1b
    goto :goto_0
.end method

.method protected whitelist test-api pollSubmission()Ljava/util/concurrent/ForkJoinTask;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 3056
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->nextSecondarySeed()I

    move-result v0

    .line 3057
    .local v0, "r":I
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v2, v1

    .local v2, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v1, :cond_25

    array-length v1, v2

    move v3, v1

    .local v3, "wl":I
    if-lez v1, :cond_25

    .line 3058
    add-int/lit8 v1, v3, -0x1

    .local v1, "m":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_10
    if-ge v4, v3, :cond_25

    .line 3059
    shl-int/lit8 v5, v4, 0x1

    and-int/2addr v5, v1

    aget-object v5, v2, v5

    move-object v6, v5

    .local v6, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v5, :cond_22

    invoke-virtual {v6}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->poll()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v5

    move-object v7, v5

    .local v7, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v5, :cond_22

    .line 3060
    return-object v7

    .line 3058
    .end local v7    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_22
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 3063
    .end local v1    # "m":I
    .end local v3    # "wl":I
    .end local v4    # "i":I
    .end local v6    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_25
    const/4 v1, 0x0

    return-object v1
.end method

.method final greylist-max-o registerWorker(Ljava/util/concurrent/ForkJoinWorkerThread;)Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .registers 15
    .param p1, "wt"    # Ljava/util/concurrent/ForkJoinWorkerThread;

    .line 1591
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ForkJoinWorkerThread;->setDaemon(Z)V

    .line 1592
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool;->ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

    move-object v2, v1

    .local v2, "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    if-eqz v1, :cond_c

    .line 1593
    invoke-virtual {p1, v2}, Ljava/util/concurrent/ForkJoinWorkerThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 1594
    :cond_c
    new-instance v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-direct {v1, p0, p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;-><init>(Ljava/util/concurrent/ForkJoinPool;Ljava/util/concurrent/ForkJoinWorkerThread;)V

    .line 1595
    .local v1, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    const/4 v3, 0x0

    .line 1596
    .local v3, "i":I
    iget v4, p0, Ljava/util/concurrent/ForkJoinPool;->config:I

    const/high16 v5, -0x10000

    and-int/2addr v4, v5

    .line 1597
    .local v4, "mode":I
    iget-object v5, p0, Ljava/util/concurrent/ForkJoinPool;->auxState:Ljava/util/concurrent/ForkJoinPool$AuxState;

    move-object v6, v5

    .local v6, "aux":Ljava/util/concurrent/ForkJoinPool$AuxState;
    if-eqz v5, :cond_7d

    .line 1598
    invoke-virtual {v6}, Ljava/util/concurrent/ForkJoinPool$AuxState;->lock()V

    .line 1600
    :try_start_1f
    iget-wide v7, v6, Ljava/util/concurrent/ForkJoinPool$AuxState;->indexSeed:J

    const-wide/32 v9, -0x61c88647

    add-long/2addr v7, v9

    iput-wide v7, v6, Ljava/util/concurrent/ForkJoinPool$AuxState;->indexSeed:J

    long-to-int v5, v7

    .line 1601
    .local v5, "s":I
    iget-object v7, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .line 1602
    .local v7, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v7, :cond_74

    array-length v8, v7

    move v9, v8

    .local v9, "n":I
    if-lez v8, :cond_74

    .line 1603
    add-int/lit8 v8, v9, -0x1

    move v10, v8

    .local v10, "m":I
    shl-int/lit8 v11, v5, 0x1

    or-int/2addr v0, v11

    and-int v3, v8, v0

    .line 1604
    aget-object v0, v7, v3

    if-eqz v0, :cond_66

    .line 1605
    const/4 v0, 0x0

    .line 1606
    .local v0, "probes":I
    const/4 v8, 0x4

    const/4 v11, 0x2

    if-gt v9, v8, :cond_42

    goto :goto_49

    :cond_42
    ushr-int/lit8 v8, v9, 0x1

    const v12, 0xfffe

    and-int/2addr v8, v12

    add-int/2addr v11, v8

    :goto_49
    move v8, v11

    .line 1607
    .local v8, "step":I
    :cond_4a
    :goto_4a
    add-int v11, v3, v8

    and-int/2addr v11, v10

    move v3, v11

    aget-object v11, v7, v11

    if-eqz v11, :cond_66

    .line 1608
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v9, :cond_4a

    .line 1609
    shl-int/lit8 v11, v9, 0x1

    move v9, v11

    invoke-static {v7, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v7, v11

    iput-object v11, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .line 1610
    add-int/lit8 v10, v9, -0x1

    .line 1611
    const/4 v0, 0x0

    goto :goto_4a

    .line 1615
    .end local v0    # "probes":I
    .end local v8    # "step":I
    :cond_66
    iput v5, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->hint:I

    .line 1616
    or-int v0, v3, v4

    iput v0, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    .line 1617
    const/high16 v0, 0x7fff0000

    and-int/2addr v0, v5

    or-int/2addr v0, v3

    iput v0, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    .line 1618
    aput-object v1, v7, v3
    :try_end_74
    .catchall {:try_start_1f .. :try_end_74} :catchall_78

    .line 1621
    .end local v5    # "s":I
    .end local v7    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v9    # "n":I
    .end local v10    # "m":I
    :cond_74
    invoke-virtual {v6}, Ljava/util/concurrent/ForkJoinPool$AuxState;->unlock()V

    .line 1622
    goto :goto_7d

    .line 1621
    :catchall_78
    move-exception v0

    invoke-virtual {v6}, Ljava/util/concurrent/ForkJoinPool$AuxState;->unlock()V

    .line 1622
    throw v0

    .line 1624
    :cond_7d
    :goto_7d
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool;->workerNamePrefix:Ljava/lang/String;

    ushr-int/lit8 v5, v3, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ForkJoinWorkerThread;->setName(Ljava/lang/String;)V

    .line 1625
    return-object v1
.end method

.method final greylist-max-o runWorker(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)V
    .registers 10
    .param p1, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .line 1931
    invoke-virtual {p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->growArray()[Ljava/util/concurrent/ForkJoinTask;

    .line 1932
    iget v0, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    goto :goto_e

    :cond_c
    const/16 v0, 0x3ff

    .line 1933
    .local v0, "bound":I
    :goto_e
    iget v1, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->hint:I

    int-to-long v1, v1

    const-wide v3, -0x2545f4914f6cdd1dL    # -1.1283317689613908E129

    mul-long/2addr v1, v3

    .line 1934
    .local v1, "seed":J
    iget v3, p0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_55

    .line 1935
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_26

    const-wide/16 v3, 0x1

    goto :goto_27

    :cond_26
    move-wide v3, v1

    .line 1936
    .local v3, "r":J
    :goto_27
    if-nez v0, :cond_30

    invoke-direct {p0, p1}, Ljava/util/concurrent/ForkJoinPool;->tryDropSpare(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 1937
    goto :goto_55

    .line 1939
    :cond_30
    const/16 v5, 0x30

    ushr-long v5, v3, v5

    long-to-int v5, v5

    or-int/lit8 v5, v5, 0x1

    .line 1940
    .local v5, "step":I
    const/16 v6, 0xc

    ushr-long v6, v3, v6

    xor-long/2addr v3, v6

    const/16 v6, 0x19

    shl-long v6, v3, v6

    xor-long/2addr v3, v6

    const/16 v6, 0x1b

    ushr-long v6, v3, v6

    xor-long/2addr v3, v6

    .line 1941
    long-to-int v6, v3

    invoke-direct {p0, p1, v0, v5, v6}, Ljava/util/concurrent/ForkJoinPool;->scan(Ljava/util/concurrent/ForkJoinPool$WorkQueue;III)I

    move-result v6

    if-gez v6, :cond_54

    invoke-direct {p0, p1}, Ljava/util/concurrent/ForkJoinPool;->awaitWork(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)I

    move-result v6

    if-gez v6, :cond_54

    .line 1942
    goto :goto_55

    .line 1943
    .end local v5    # "step":I
    :cond_54
    goto :goto_27

    .line 1945
    .end local v3    # "r":J
    :cond_55
    :goto_55
    return-void
.end method

.method public whitelist test-api shutdown()V
    .registers 3

    .line 3165
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->checkPermission()V

    .line 3166
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/ForkJoinPool;->tryTerminate(ZZ)I

    .line 3167
    return-void
.end method

.method public whitelist test-api shutdownNow()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 3188
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->checkPermission()V

    .line 3189
    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Ljava/util/concurrent/ForkJoinPool;->tryTerminate(ZZ)I

    .line 3190
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method final greylist-max-o signalWork()V
    .registers 20

    move-object/from16 v8, p0

    .line 1697
    :goto_2
    iget-wide v0, v8, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    move-wide v9, v0

    .local v9, "c":J
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_c

    .line 1698
    goto :goto_69

    .line 1699
    :cond_c
    long-to-int v0, v9

    move v11, v0

    .local v11, "sp":I
    if-nez v0, :cond_1e

    .line 1700
    const-wide v0, 0x800000000000L

    and-long/2addr v0, v9

    cmp-long v0, v0, v2

    if-eqz v0, :cond_69

    .line 1701
    invoke-direct {v8, v9, v10}, Ljava/util/concurrent/ForkJoinPool;->tryAddWorker(J)V

    goto :goto_69

    .line 1704
    :cond_1e
    iget-object v0, v8, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v12, v0

    .local v12, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-nez v0, :cond_24

    .line 1705
    goto :goto_69

    .line 1706
    :cond_24
    array-length v0, v12

    const v1, 0xffff

    and-int/2addr v1, v11

    move v13, v1

    .local v13, "i":I
    if-gt v0, v1, :cond_2d

    .line 1707
    goto :goto_69

    .line 1708
    :cond_2d
    aget-object v0, v12, v13

    move-object v14, v0

    .local v14, "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-nez v0, :cond_33

    .line 1709
    goto :goto_69

    .line 1711
    :cond_33
    const v0, 0x7fffffff

    and-int v15, v11, v0

    .line 1712
    .local v15, "ns":I
    iget v6, v14, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    .line 1713
    .local v6, "vs":I
    iget v0, v14, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->stackPred:I

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide v2, -0x100000000L

    const-wide/high16 v4, 0x1000000000000L

    add-long/2addr v4, v9

    and-long/2addr v2, v4

    or-long v16, v0, v2

    .line 1714
    .local v16, "nc":J
    if-ne v11, v6, :cond_6a

    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object/from16 v1, p0

    move-wide v4, v9

    move/from16 v18, v6

    .end local v6    # "vs":I
    .local v18, "vs":I
    move-wide/from16 v6, v16

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 1715
    iput v15, v14, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    .line 1716
    iget-object v0, v14, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 1717
    nop

    .line 1721
    .end local v9    # "c":J
    .end local v11    # "sp":I
    .end local v12    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v13    # "i":I
    .end local v14    # "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v15    # "ns":I
    .end local v16    # "nc":J
    .end local v18    # "vs":I
    :cond_69
    :goto_69
    return-void

    .line 1714
    .restart local v6    # "vs":I
    .restart local v9    # "c":J
    .restart local v11    # "sp":I
    .restart local v12    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v13    # "i":I
    .restart local v14    # "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v15    # "ns":I
    .restart local v16    # "nc":J
    :cond_6a
    move/from16 v18, v6

    .line 1720
    .end local v6    # "vs":I
    .end local v9    # "c":J
    .end local v11    # "sp":I
    .end local v12    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v13    # "i":I
    .end local v14    # "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v15    # "ns":I
    .end local v16    # "nc":J
    :cond_6c
    goto :goto_2
.end method

.method public whitelist test-api submit(Ljava/lang/Runnable;)Ljava/util/concurrent/ForkJoinTask;
    .registers 4
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 2821
    if-eqz p1, :cond_14

    .line 2824
    instance-of v0, p1, Ljava/util/concurrent/ForkJoinTask;

    if-eqz v0, :cond_a

    .line 2825
    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/ForkJoinTask;

    .local v0, "job":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    goto :goto_f

    .line 2827
    .end local v0    # "job":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_a
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnableAction;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnableAction;-><init>(Ljava/lang/Runnable;)V

    .line 2828
    .restart local v0    # "job":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :goto_f
    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinPool;->externalSubmit(Ljava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v1

    return-object v1

    .line 2822
    .end local v0    # "job":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_14
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/ForkJoinTask;
    .registers 4
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/ForkJoinTask<",
            "TT;>;"
        }
    .end annotation

    .line 2812
    .local p2, "result":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;

    invoke-direct {v0, p1, p2}, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinPool;->externalSubmit(Ljava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/ForkJoinTask;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/ForkJoinTask<",
            "TT;>;"
        }
    .end annotation

    .line 2803
    .local p1, "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinPool;->externalSubmit(Ljava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api submit(Ljava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ForkJoinTask<",
            "TT;>;)",
            "Ljava/util/concurrent/ForkJoinTask<",
            "TT;>;"
        }
    .end annotation

    .line 2794
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TT;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ForkJoinPool;->externalSubmit(Ljava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .registers 2

    .line 167
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ForkJoinPool;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .registers 3

    .line 167
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ForkJoinPool;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .registers 2

    .line 167
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ForkJoinPool;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 19

    .line 3108
    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    .local v1, "qt":J
    const-wide/16 v3, 0x0

    .local v3, "qs":J
    const/4 v5, 0x0

    .line 3109
    .local v5, "rc":I
    iget-object v6, v0, Ljava/util/concurrent/ForkJoinPool;->auxState:Ljava/util/concurrent/ForkJoinPool$AuxState;

    .line 3110
    .local v6, "sc":Ljava/util/concurrent/ForkJoinPool$AuxState;
    if-nez v6, :cond_e

    const-wide/16 v7, 0x0

    goto :goto_10

    :cond_e
    iget-wide v7, v6, Ljava/util/concurrent/ForkJoinPool$AuxState;->stealCount:J

    .line 3111
    .local v7, "st":J
    :goto_10
    iget-wide v9, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .line 3113
    .local v9, "c":J
    iget-object v11, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v12, v11

    .local v12, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v11, :cond_43

    .line 3114
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_18
    array-length v13, v12

    if-ge v11, v13, :cond_41

    .line 3115
    aget-object v13, v12, v11

    move-object v14, v13

    .local v14, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v13, :cond_3c

    .line 3116
    invoke-virtual {v14}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->queueSize()I

    move-result v13

    .line 3117
    .local v13, "size":I
    and-int/lit8 v15, v11, 0x1

    if-nez v15, :cond_2c

    .line 3118
    move-wide v15, v9

    .end local v9    # "c":J
    .local v15, "c":J
    int-to-long v9, v13

    add-long/2addr v3, v9

    goto :goto_3d

    .line 3120
    .end local v15    # "c":J
    .restart local v9    # "c":J
    :cond_2c
    move-wide v15, v9

    .end local v9    # "c":J
    .restart local v15    # "c":J
    int-to-long v9, v13

    add-long/2addr v1, v9

    .line 3121
    iget v9, v14, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    int-to-long v9, v9

    add-long/2addr v7, v9

    .line 3122
    invoke-virtual {v14}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->isApparentlyUnblocked()Z

    move-result v9

    if-eqz v9, :cond_3d

    .line 3123
    add-int/lit8 v5, v5, 0x1

    goto :goto_3d

    .line 3115
    .end local v13    # "size":I
    .end local v15    # "c":J
    .restart local v9    # "c":J
    :cond_3c
    move-wide v15, v9

    .line 3114
    .end local v9    # "c":J
    .restart local v15    # "c":J
    :cond_3d
    :goto_3d
    add-int/lit8 v11, v11, 0x1

    move-wide v9, v15

    goto :goto_18

    .end local v14    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v15    # "c":J
    .restart local v9    # "c":J
    :cond_41
    move-wide v15, v9

    .end local v9    # "c":J
    .restart local v15    # "c":J
    goto :goto_44

    .line 3113
    .end local v11    # "i":I
    .end local v15    # "c":J
    .restart local v9    # "c":J
    :cond_43
    move-wide v15, v9

    .line 3128
    .end local v9    # "c":J
    .restart local v15    # "c":J
    :goto_44
    iget v9, v0, Ljava/util/concurrent/ForkJoinPool;->config:I

    const v10, 0xffff

    and-int/2addr v9, v10

    .line 3129
    .local v9, "pc":I
    const/16 v10, 0x20

    ushr-long v10, v15, v10

    long-to-int v10, v10

    int-to-short v10, v10

    add-int/2addr v10, v9

    .line 3130
    .local v10, "tc":I
    const/16 v11, 0x30

    shr-long v13, v15, v11

    long-to-int v11, v13

    add-int/2addr v11, v9

    .line 3131
    .local v11, "ac":I
    if-gez v11, :cond_5a

    .line 3132
    const/4 v11, 0x0

    .line 3133
    :cond_5a
    iget v13, v0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    .line 3134
    .local v13, "rs":I
    and-int/lit8 v14, v13, 0x4

    if-eqz v14, :cond_63

    const-string v14, "Terminated"

    goto :goto_74

    .line 3135
    :cond_63
    and-int/lit8 v14, v13, 0x2

    if-eqz v14, :cond_6a

    const-string v14, "Terminating"

    goto :goto_74

    .line 3136
    :cond_6a
    const/high16 v14, -0x80000000

    and-int/2addr v14, v13

    if-eqz v14, :cond_72

    const-string v14, "Shutting down"

    goto :goto_74

    .line 3137
    :cond_72
    const-string v14, "Running"

    :goto_74
    nop

    .line 3138
    .local v14, "level":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v6

    .end local v6    # "sc":Ljava/util/concurrent/ForkJoinPool$AuxState;
    .local v17, "sc":Ljava/util/concurrent/ForkJoinPool$AuxState;
    invoke-super/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", parallelism = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", size = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", active = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", running = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", steals = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", tasks = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", submissions = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final greylist-max-o tryExternalUnpush(Ljava/util/concurrent/ForkJoinTask;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;)Z"
        }
    .end annotation

    .line 2586
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->getProbe()I

    move-result v0

    .line 2588
    .local v0, "r":I
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v2, v1

    .local v2, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v1, :cond_1f

    array-length v1, v2

    move v3, v1

    .local v3, "wl":I
    if-lez v1, :cond_1f

    add-int/lit8 v1, v3, -0x1

    and-int/2addr v1, v0

    and-int/lit8 v1, v1, 0x7e

    aget-object v1, v2, v1

    move-object v4, v1

    .local v4, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v1, :cond_1f

    .line 2591
    invoke-virtual {v4, p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->trySharedUnpush(Ljava/util/concurrent/ForkJoinTask;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v1, 0x1

    goto :goto_20

    .end local v3    # "wl":I
    .end local v4    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_1f
    const/4 v1, 0x0

    .line 2588
    :goto_20
    return v1
.end method
