.class abstract Lsun/nio/ch/AsynchronousChannelGroupImpl;
.super Ljava/nio/channels/AsynchronousChannelGroup;
.source "AsynchronousChannelGroupImpl.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field private static final internalThreadCount:I


# instance fields
.field private final pool:Lsun/nio/ch/ThreadPool;

.field private final shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final shutdownNowLock:Ljava/lang/Object;

.field private final taskQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private volatile terminateInitiated:Z

.field private final threadCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private timeoutExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# direct methods
.method static synthetic -get0(Lsun/nio/ch/AsynchronousChannelGroupImpl;)Lsun/nio/ch/ThreadPool;
    .registers 2
    .param p0, "-this"    # Lsun/nio/ch/AsynchronousChannelGroupImpl;

    .prologue
    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->pool:Lsun/nio/ch/ThreadPool;

    return-object v0
.end method

.method static synthetic -get1(Lsun/nio/ch/AsynchronousChannelGroupImpl;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .registers 2
    .param p0, "-this"    # Lsun/nio/ch/AsynchronousChannelGroupImpl;

    .prologue
    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->timeoutExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 52
    new-instance v0, Lsun/security/action/GetIntegerAction;

    const-string/jumbo v1, "sun.nio.ch.internalThreadPoolSize"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lsun/security/action/GetIntegerAction;-><init>(Ljava/lang/String;I)V

    .line 51
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->internalThreadCount:I

    .line 46
    return-void
.end method

.method constructor <init>(Ljava/nio/channels/spi/AsynchronousChannelProvider;Lsun/nio/ch/ThreadPool;)V
    .registers 5
    .param p1, "provider"    # Ljava/nio/channels/spi/AsynchronousChannelProvider;
    .param p2, "pool"    # Lsun/nio/ch/ThreadPool;

    .prologue
    const/4 v1, 0x1

    .line 75
    invoke-direct {p0, p1}, Ljava/nio/channels/AsynchronousChannelGroup;-><init>(Ljava/nio/channels/spi/AsynchronousChannelProvider;)V

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->threadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->shutdownNowLock:Ljava/lang/Object;

    .line 76
    iput-object p2, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->pool:Lsun/nio/ch/ThreadPool;

    .line 78
    invoke-virtual {p2}, Lsun/nio/ch/ThreadPool;->isFixedThreadPool()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 79
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->taskQueue:Ljava/util/Queue;

    .line 87
    :goto_28
    invoke-static {}, Lsun/nio/ch/ThreadPool;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 86
    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iput-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->timeoutExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 88
    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->timeoutExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setRemoveOnCancelPolicy(Z)V

    .line 89
    return-void

    .line 81
    :cond_3a
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->taskQueue:Ljava/util/Queue;

    goto :goto_28
.end method

.method private bindToGroup(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 4
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 108
    move-object v0, p0

    .line 109
    .local v0, "thisGroup":Lsun/nio/ch/AsynchronousChannelGroupImpl;
    new-instance v1, Lsun/nio/ch/AsynchronousChannelGroupImpl$1;

    invoke-direct {v1, p0, p0, p1}, Lsun/nio/ch/AsynchronousChannelGroupImpl$1;-><init>(Lsun/nio/ch/AsynchronousChannelGroupImpl;Lsun/nio/ch/AsynchronousChannelGroupImpl;Ljava/lang/Runnable;)V

    return-object v1
.end method

.method private shutdownExecutors()V
    .registers 2

    .prologue
    .line 249
    new-instance v0, Lsun/nio/ch/AsynchronousChannelGroupImpl$3;

    invoke-direct {v0, p0}, Lsun/nio/ch/AsynchronousChannelGroupImpl$3;-><init>(Lsun/nio/ch/AsynchronousChannelGroupImpl;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 256
    return-void
.end method

.method private startInternalThread(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 118
    new-instance v0, Lsun/nio/ch/AsynchronousChannelGroupImpl$2;

    invoke-direct {v0, p0, p1}, Lsun/nio/ch/AsynchronousChannelGroupImpl$2;-><init>(Lsun/nio/ch/AsynchronousChannelGroupImpl;Ljava/lang/Runnable;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 127
    return-void
.end method


# virtual methods
.method abstract attachForeignChannel(Ljava/nio/channels/Channel;Ljava/io/FileDescriptor;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .registers 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 309
    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->pool:Lsun/nio/ch/ThreadPool;

    invoke-virtual {v0}, Lsun/nio/ch/ThreadPool;->executor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method abstract closeAllChannels()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract detachForeignChannel(Ljava/lang/Object;)V
.end method

.method final detachFromThreadPool()V
    .registers 3

    .prologue
    .line 298
    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 299
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Already shutdown"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 300
    :cond_12
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    .line 301
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Group not empty"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 302
    :cond_21
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->shutdownHandlerTasks()V

    .line 303
    return-void
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .registers 6
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 317
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 318
    .local v2, "sm":Ljava/lang/SecurityManager;
    if-eqz v2, :cond_11

    .line 321
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    .line 322
    .local v0, "acc":Ljava/security/AccessControlContext;
    move-object v1, p1

    .line 323
    .local v1, "delegate":Ljava/lang/Runnable;
    new-instance v3, Lsun/nio/ch/AsynchronousChannelGroupImpl$4;

    invoke-direct {v3, p0, v0, p1}, Lsun/nio/ch/AsynchronousChannelGroupImpl$4;-><init>(Lsun/nio/ch/AsynchronousChannelGroupImpl;Ljava/security/AccessControlContext;Ljava/lang/Runnable;)V

    .end local p1    # "task":Ljava/lang/Runnable;
    .local v3, "task":Ljava/lang/Runnable;
    move-object p1, v3

    .line 336
    .end local v0    # "acc":Ljava/security/AccessControlContext;
    .end local v1    # "delegate":Ljava/lang/Runnable;
    .end local v3    # "task":Ljava/lang/Runnable;
    .restart local p1    # "task":Ljava/lang/Runnable;
    :cond_11
    invoke-virtual {p0, p1}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->executeOnPooledThread(Ljava/lang/Runnable;)V

    .line 337
    return-void
.end method

.method abstract executeOnHandlerTask(Ljava/lang/Runnable;)V
.end method

.method final executeOnPooledThread(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 185
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->isFixedThreadPool()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 186
    invoke-virtual {p0, p1}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->executeOnHandlerTask(Ljava/lang/Runnable;)V

    .line 190
    :goto_9
    return-void

    .line 188
    :cond_a
    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->pool:Lsun/nio/ch/ThreadPool;

    invoke-virtual {v0}, Lsun/nio/ch/ThreadPool;->executor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, p1}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->bindToGroup(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_9
.end method

.method final executor()Ljava/util/concurrent/ExecutorService;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->pool:Lsun/nio/ch/ThreadPool;

    invoke-virtual {v0}, Lsun/nio/ch/ThreadPool;->executor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method final fixedThreadCount()I
    .registers 3

    .prologue
    .line 100
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->isFixedThreadPool()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 101
    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->pool:Lsun/nio/ch/ThreadPool;

    invoke-virtual {v0}, Lsun/nio/ch/ThreadPool;->poolSize()I

    move-result v0

    return v0

    .line 103
    :cond_d
    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->pool:Lsun/nio/ch/ThreadPool;

    invoke-virtual {v0}, Lsun/nio/ch/ThreadPool;->poolSize()I

    move-result v0

    sget v1, Lsun/nio/ch/AsynchronousChannelGroupImpl;->internalThreadCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method abstract isEmpty()Z
.end method

.method final isFixedThreadPool()Z
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->pool:Lsun/nio/ch/ThreadPool;

    invoke-virtual {v0}, Lsun/nio/ch/ThreadPool;->isFixedThreadPool()Z

    move-result v0

    return v0
.end method

.method public final isShutdown()Z
    .registers 2

    .prologue
    .line 214
    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final isTerminated()Z
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->pool:Lsun/nio/ch/ThreadPool;

    invoke-virtual {v0}, Lsun/nio/ch/ThreadPool;->executor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    return v0
.end method

.method final offerTask(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 193
    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->taskQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 194
    return-void
.end method

.method final pollTask()Ljava/lang/Runnable;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 197
    iget-object v1, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->taskQueue:Ljava/util/Queue;

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->taskQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    goto :goto_5
.end method

.method final schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;
    .registers 7
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 202
    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->timeoutExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v1, p1, p2, p3, p4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_5
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    .line 203
    :catch_7
    move-exception v0

    .line 204
    .local v0, "rej":Ljava/util/concurrent/RejectedExecutionException;
    iget-boolean v1, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->terminateInitiated:Z

    if-eqz v1, :cond_e

    .line 206
    const/4 v1, 0x0

    return-object v1

    .line 208
    :cond_e
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final shutdown()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 260
    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 262
    return-void

    .line 266
    :cond_a
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 267
    return-void

    .line 271
    :cond_11
    iget-object v1, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->shutdownNowLock:Ljava/lang/Object;

    monitor-enter v1

    .line 272
    :try_start_14
    iget-boolean v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->terminateInitiated:Z

    if-nez v0, :cond_21

    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->terminateInitiated:Z

    .line 274
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->shutdownHandlerTasks()V

    .line 275
    invoke-direct {p0}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->shutdownExecutors()V
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_23

    :cond_21
    monitor-exit v1

    .line 278
    return-void

    .line 271
    :catchall_23
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method abstract shutdownHandlerTasks()V
.end method

.method public final shutdownNow()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 282
    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 283
    iget-object v1, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->shutdownNowLock:Ljava/lang/Object;

    monitor-enter v1

    .line 284
    :try_start_9
    iget-boolean v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->terminateInitiated:Z

    if-nez v0, :cond_19

    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->terminateInitiated:Z

    .line 286
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->closeAllChannels()V

    .line 287
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->shutdownHandlerTasks()V

    .line 288
    invoke-direct {p0}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->shutdownExecutors()V
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_1b

    :cond_19
    monitor-exit v1

    .line 291
    return-void

    .line 283
    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected final startThreads(Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 130
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->isFixedThreadPool()Z

    move-result v2

    if-nez v2, :cond_16

    .line 131
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    sget v2, Lsun/nio/ch/AsynchronousChannelGroupImpl;->internalThreadCount:I

    if-ge v0, v2, :cond_16

    .line 132
    invoke-direct {p0, p1}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->startInternalThread(Ljava/lang/Runnable;)V

    .line 133
    iget-object v2, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->threadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 136
    .end local v0    # "i":I
    :cond_16
    iget-object v2, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->pool:Lsun/nio/ch/ThreadPool;

    invoke-virtual {v2}, Lsun/nio/ch/ThreadPool;->poolSize()I

    move-result v2

    if-lez v2, :cond_3d

    .line 137
    invoke-direct {p0, p1}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->bindToGroup(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    .line 139
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_23
    :try_start_23
    iget-object v2, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->pool:Lsun/nio/ch/ThreadPool;

    invoke-virtual {v2}, Lsun/nio/ch/ThreadPool;->poolSize()I

    move-result v2

    if-ge v0, v2, :cond_3d

    .line 140
    iget-object v2, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->pool:Lsun/nio/ch/ThreadPool;

    invoke-virtual {v2}, Lsun/nio/ch/ThreadPool;->executor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 141
    iget-object v2, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->threadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_39
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_23 .. :try_end_39} :catch_3c

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 143
    :catch_3c
    move-exception v1

    .line 147
    .end local v0    # "i":I
    :cond_3d
    return-void
.end method

.method final threadCount()I
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->threadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method final threadExit(Ljava/lang/Runnable;Z)I
    .registers 6
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "replaceMe"    # Z

    .prologue
    .line 157
    if-eqz p2, :cond_21

    .line 159
    :try_start_2
    invoke-static {}, Lsun/nio/ch/Invoker;->isBoundToAnyGroup()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 161
    iget-object v1, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->pool:Lsun/nio/ch/ThreadPool;

    invoke-virtual {v1}, Lsun/nio/ch/ThreadPool;->executor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {p0, p1}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->bindToGroup(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 166
    :goto_15
    iget-object v1, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->threadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    return v1

    .line 164
    :cond_1c
    invoke-direct {p0, p1}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->startInternalThread(Ljava/lang/Runnable;)V
    :try_end_1f
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_2 .. :try_end_1f} :catch_20

    goto :goto_15

    .line 167
    :catch_20
    move-exception v0

    .line 171
    :cond_21
    iget-object v1, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->threadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    return v1
.end method
