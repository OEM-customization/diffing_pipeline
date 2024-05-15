.class final Lsun/nio/ch/EPollPort;
.super Lsun/nio/ch/Port;
.source "EPollPort.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/EPollPort$Event;,
        Lsun/nio/ch/EPollPort$EventHandlerTask;
    }
.end annotation


# static fields
.field private static final ENOENT:I = 0x2

.field private static final MAX_EPOLL_EVENTS:I = 0x200


# instance fields
.field private final EXECUTE_TASK_OR_SHUTDOWN:Lsun/nio/ch/EPollPort$Event;

.field private final NEED_TO_POLL:Lsun/nio/ch/EPollPort$Event;

.field private final address:J

.field private closed:Z

.field private final epfd:I

.field private final queue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Lsun/nio/ch/EPollPort$Event;",
            ">;"
        }
    .end annotation
.end field

.field private final sp:[I

.field private final wakeupCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static synthetic -get0(Lsun/nio/ch/EPollPort;)Lsun/nio/ch/EPollPort$Event;
    .registers 2
    .param p0, "-this"    # Lsun/nio/ch/EPollPort;

    .prologue
    iget-object v0, p0, Lsun/nio/ch/EPollPort;->EXECUTE_TASK_OR_SHUTDOWN:Lsun/nio/ch/EPollPort$Event;

    return-object v0
.end method

.method static synthetic -get1(Lsun/nio/ch/EPollPort;)Lsun/nio/ch/EPollPort$Event;
    .registers 2
    .param p0, "-this"    # Lsun/nio/ch/EPollPort;

    .prologue
    iget-object v0, p0, Lsun/nio/ch/EPollPort;->NEED_TO_POLL:Lsun/nio/ch/EPollPort$Event;

    return-object v0
.end method

.method static synthetic -get2(Lsun/nio/ch/EPollPort;)J
    .registers 3
    .param p0, "-this"    # Lsun/nio/ch/EPollPort;

    .prologue
    iget-wide v0, p0, Lsun/nio/ch/EPollPort;->address:J

    return-wide v0
.end method

.method static synthetic -get3(Lsun/nio/ch/EPollPort;)I
    .registers 2
    .param p0, "-this"    # Lsun/nio/ch/EPollPort;

    .prologue
    iget v0, p0, Lsun/nio/ch/EPollPort;->epfd:I

    return v0
.end method

.method static synthetic -get4(Lsun/nio/ch/EPollPort;)Ljava/util/concurrent/ArrayBlockingQueue;
    .registers 2
    .param p0, "-this"    # Lsun/nio/ch/EPollPort;

    .prologue
    iget-object v0, p0, Lsun/nio/ch/EPollPort;->queue:Ljava/util/concurrent/ArrayBlockingQueue;

    return-object v0
.end method

.method static synthetic -get5(Lsun/nio/ch/EPollPort;)[I
    .registers 2
    .param p0, "-this"    # Lsun/nio/ch/EPollPort;

    .prologue
    iget-object v0, p0, Lsun/nio/ch/EPollPort;->sp:[I

    return-object v0
.end method

.method static synthetic -get6(Lsun/nio/ch/EPollPort;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2
    .param p0, "-this"    # Lsun/nio/ch/EPollPort;

    .prologue
    iget-object v0, p0, Lsun/nio/ch/EPollPort;->wakeupCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic -wrap0(I)V
    .registers 1
    .param p0, "fd"    # I

    .prologue
    invoke-static {p0}, Lsun/nio/ch/EPollPort;->drain1(I)V

    return-void
.end method

.method static synthetic -wrap1(Lsun/nio/ch/EPollPort;)V
    .registers 1
    .param p0, "-this"    # Lsun/nio/ch/EPollPort;

    .prologue
    invoke-direct {p0}, Lsun/nio/ch/EPollPort;->implClose()V

    return-void
.end method

.method constructor <init>(Ljava/nio/channels/spi/AsynchronousChannelProvider;Lsun/nio/ch/ThreadPool;)V
    .registers 10
    .param p1, "provider"    # Ljava/nio/channels/spi/AsynchronousChannelProvider;
    .param p2, "pool"    # Lsun/nio/ch/ThreadPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/16 v6, 0x200

    const/4 v3, 0x0

    .line 86
    invoke-direct {p0, p1, p2}, Lsun/nio/ch/Port;-><init>(Ljava/nio/channels/spi/AsynchronousChannelProvider;Lsun/nio/ch/ThreadPool;)V

    .line 58
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v2, p0, Lsun/nio/ch/EPollPort;->wakeupCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 80
    new-instance v2, Lsun/nio/ch/EPollPort$Event;

    invoke-direct {v2, v4, v3}, Lsun/nio/ch/EPollPort$Event;-><init>(Lsun/nio/ch/Port$PollableChannel;I)V

    iput-object v2, p0, Lsun/nio/ch/EPollPort;->NEED_TO_POLL:Lsun/nio/ch/EPollPort$Event;

    .line 81
    new-instance v2, Lsun/nio/ch/EPollPort$Event;

    invoke-direct {v2, v4, v3}, Lsun/nio/ch/EPollPort$Event;-><init>(Lsun/nio/ch/Port$PollableChannel;I)V

    iput-object v2, p0, Lsun/nio/ch/EPollPort;->EXECUTE_TASK_OR_SHUTDOWN:Lsun/nio/ch/EPollPort$Event;

    .line 89
    invoke-static {}, Lsun/nio/ch/EPoll;->epollCreate()I

    move-result v2

    iput v2, p0, Lsun/nio/ch/EPollPort;->epfd:I

    .line 92
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 94
    .local v0, "sv":[I
    :try_start_25
    invoke-static {v0}, Lsun/nio/ch/EPollPort;->socketpair([I)V

    .line 96
    iget v2, p0, Lsun/nio/ch/EPollPort;->epfd:I

    const/4 v3, 0x0

    aget v3, v0, v3

    sget-short v4, Lsun/nio/ch/Net;->POLLIN:S

    const/4 v5, 0x1

    invoke-static {v2, v5, v3, v4}, Lsun/nio/ch/EPoll;->epollCtl(IIII)I
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_33} :catch_4a

    .line 101
    iput-object v0, p0, Lsun/nio/ch/EPollPort;->sp:[I

    .line 104
    invoke-static {v6}, Lsun/nio/ch/EPoll;->allocatePollArray(I)J

    move-result-wide v2

    iput-wide v2, p0, Lsun/nio/ch/EPollPort;->address:J

    .line 108
    new-instance v2, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v2, v6}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v2, p0, Lsun/nio/ch/EPollPort;->queue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 109
    iget-object v2, p0, Lsun/nio/ch/EPollPort;->queue:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v3, p0, Lsun/nio/ch/EPollPort;->NEED_TO_POLL:Lsun/nio/ch/EPollPort$Event;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 110
    return-void

    .line 97
    :catch_4a
    move-exception v1

    .line 98
    .local v1, "x":Ljava/io/IOException;
    iget v2, p0, Lsun/nio/ch/EPollPort;->epfd:I

    invoke-static {v2}, Lsun/nio/ch/EPollPort;->close0(I)V

    .line 99
    throw v1
.end method

.method private static native close0(I)V
.end method

.method private static native drain1(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private implClose()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 121
    monitor-enter p0

    .line 122
    :try_start_2
    iget-boolean v0, p0, Lsun/nio/ch/EPollPort;->closed:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_26

    if-eqz v0, :cond_8

    monitor-exit p0

    .line 123
    return-void

    .line 124
    :cond_8
    const/4 v0, 0x1

    :try_start_9
    iput-boolean v0, p0, Lsun/nio/ch/EPollPort;->closed:Z
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_26

    monitor-exit p0

    .line 126
    iget-wide v0, p0, Lsun/nio/ch/EPollPort;->address:J

    invoke-static {v0, v1}, Lsun/nio/ch/EPoll;->freePollArray(J)V

    .line 127
    iget-object v0, p0, Lsun/nio/ch/EPollPort;->sp:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Lsun/nio/ch/EPollPort;->close0(I)V

    .line 128
    iget-object v0, p0, Lsun/nio/ch/EPollPort;->sp:[I

    aget v0, v0, v2

    invoke-static {v0}, Lsun/nio/ch/EPollPort;->close0(I)V

    .line 129
    iget v0, p0, Lsun/nio/ch/EPollPort;->epfd:I

    invoke-static {v0}, Lsun/nio/ch/EPollPort;->close0(I)V

    .line 130
    return-void

    .line 121
    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static native interrupt(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native socketpair([I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private wakeup()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 133
    iget-object v1, p0, Lsun/nio/ch/EPollPort;->wakeupCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    if-ne v1, v2, :cond_11

    .line 136
    :try_start_9
    iget-object v1, p0, Lsun/nio/ch/EPollPort;->sp:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-static {v1}, Lsun/nio/ch/EPollPort;->interrupt(I)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_11} :catch_12

    .line 141
    :cond_11
    return-void

    .line 137
    :catch_12
    move-exception v0

    .line 138
    .local v0, "x":Ljava/io/IOException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method executeOnHandlerTask(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 145
    monitor-enter p0

    .line 146
    :try_start_1
    iget-boolean v0, p0, Lsun/nio/ch/EPollPort;->closed:Z

    if-eqz v0, :cond_e

    .line 147
    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    invoke-direct {v0}, Ljava/util/concurrent/RejectedExecutionException;-><init>()V

    throw v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_b

    .line 145
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 148
    :cond_e
    :try_start_e
    invoke-virtual {p0, p1}, Lsun/nio/ch/EPollPort;->offerTask(Ljava/lang/Runnable;)V

    .line 149
    invoke-direct {p0}, Lsun/nio/ch/EPollPort;->wakeup()V
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_b

    monitor-exit p0

    .line 151
    return-void
.end method

.method shutdownHandlerTasks()V
    .registers 3

    .prologue
    .line 159
    invoke-virtual {p0}, Lsun/nio/ch/EPollPort;->threadCount()I

    move-result v0

    .line 160
    .local v0, "nThreads":I
    if-nez v0, :cond_11

    .line 161
    invoke-direct {p0}, Lsun/nio/ch/EPollPort;->implClose()V

    .line 168
    :cond_9
    return-void

    .line 164
    .end local v0    # "nThreads":I
    .local v1, "nThreads":I
    :goto_a
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "nThreads":I
    .restart local v0    # "nThreads":I
    if-lez v1, :cond_9

    .line 165
    invoke-direct {p0}, Lsun/nio/ch/EPollPort;->wakeup()V

    :cond_11
    move v1, v0

    .end local v0    # "nThreads":I
    .restart local v1    # "nThreads":I
    goto :goto_a
.end method

.method start()Lsun/nio/ch/EPollPort;
    .registers 3

    .prologue
    .line 113
    new-instance v0, Lsun/nio/ch/EPollPort$EventHandlerTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lsun/nio/ch/EPollPort$EventHandlerTask;-><init>(Lsun/nio/ch/EPollPort;Lsun/nio/ch/EPollPort$EventHandlerTask;)V

    invoke-virtual {p0, v0}, Lsun/nio/ch/EPollPort;->startThreads(Ljava/lang/Runnable;)V

    .line 114
    return-object p0
.end method

.method startPoll(II)V
    .registers 8
    .param p1, "fd"    # I
    .param p2, "events"    # I

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 174
    iget v1, p0, Lsun/nio/ch/EPollPort;->epfd:I

    or-int v2, p2, v4

    const/4 v3, 0x3

    invoke-static {v1, v3, p1, v2}, Lsun/nio/ch/EPoll;->epollCtl(IIII)I

    move-result v0

    .line 175
    .local v0, "err":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_17

    .line 176
    iget v1, p0, Lsun/nio/ch/EPollPort;->epfd:I

    or-int v2, p2, v4

    const/4 v3, 0x1

    invoke-static {v1, v3, p1, v2}, Lsun/nio/ch/EPoll;->epollCtl(IIII)I

    move-result v0

    .line 177
    :cond_17
    if-eqz v0, :cond_1f

    .line 178
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 179
    :cond_1f
    return-void
.end method
