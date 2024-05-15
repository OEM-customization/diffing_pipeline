.class public Lsun/nio/ch/LinuxAsynchronousChannelProvider;
.super Ljava/nio/channels/spi/AsynchronousChannelProvider;
.source "LinuxAsynchronousChannelProvider.java"


# static fields
.field private static volatile defaultPort:Lsun/nio/ch/EPollPort;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/nio/channels/spi/AsynchronousChannelProvider;-><init>()V

    .line 51
    return-void
.end method

.method private defaultEventPort()Lsun/nio/ch/EPollPort;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    sget-object v0, Lsun/nio/ch/LinuxAsynchronousChannelProvider;->defaultPort:Lsun/nio/ch/EPollPort;

    if-nez v0, :cond_1b

    .line 41
    const-class v1, Lsun/nio/ch/LinuxAsynchronousChannelProvider;

    monitor-enter v1

    .line 42
    :try_start_7
    sget-object v0, Lsun/nio/ch/LinuxAsynchronousChannelProvider;->defaultPort:Lsun/nio/ch/EPollPort;

    if-nez v0, :cond_1a

    .line 43
    new-instance v0, Lsun/nio/ch/EPollPort;

    invoke-static {}, Lsun/nio/ch/ThreadPool;->getDefault()Lsun/nio/ch/ThreadPool;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lsun/nio/ch/EPollPort;-><init>(Ljava/nio/channels/spi/AsynchronousChannelProvider;Lsun/nio/ch/ThreadPool;)V

    invoke-virtual {v0}, Lsun/nio/ch/EPollPort;->start()Lsun/nio/ch/EPollPort;

    move-result-object v0

    sput-object v0, Lsun/nio/ch/LinuxAsynchronousChannelProvider;->defaultPort:Lsun/nio/ch/EPollPort;
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_1e

    :cond_1a
    monitor-exit v1

    .line 47
    :cond_1b
    sget-object v0, Lsun/nio/ch/LinuxAsynchronousChannelProvider;->defaultPort:Lsun/nio/ch/EPollPort;

    return-object v0

    .line 41
    :catchall_1e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private toPort(Ljava/nio/channels/AsynchronousChannelGroup;)Lsun/nio/ch/Port;
    .registers 3
    .param p1, "group"    # Ljava/nio/channels/AsynchronousChannelGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    if-nez p1, :cond_7

    .line 69
    invoke-direct {p0}, Lsun/nio/ch/LinuxAsynchronousChannelProvider;->defaultEventPort()Lsun/nio/ch/EPollPort;

    move-result-object v0

    return-object v0

    .line 71
    :cond_7
    instance-of v0, p1, Lsun/nio/ch/EPollPort;

    if-nez v0, :cond_11

    .line 72
    new-instance v0, Ljava/nio/channels/IllegalChannelGroupException;

    invoke-direct {v0}, Ljava/nio/channels/IllegalChannelGroupException;-><init>()V

    throw v0

    .line 73
    :cond_11
    check-cast p1, Lsun/nio/ch/Port;

    .end local p1    # "group":Ljava/nio/channels/AsynchronousChannelGroup;
    return-object p1
.end method


# virtual methods
.method public openAsynchronousChannelGroup(ILjava/util/concurrent/ThreadFactory;)Ljava/nio/channels/AsynchronousChannelGroup;
    .registers 5
    .param p1, "nThreads"    # I
    .param p2, "factory"    # Ljava/util/concurrent/ThreadFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Lsun/nio/ch/EPollPort;

    invoke-static {p1, p2}, Lsun/nio/ch/ThreadPool;->create(ILjava/util/concurrent/ThreadFactory;)Lsun/nio/ch/ThreadPool;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lsun/nio/ch/EPollPort;-><init>(Ljava/nio/channels/spi/AsynchronousChannelProvider;Lsun/nio/ch/ThreadPool;)V

    invoke-virtual {v0}, Lsun/nio/ch/EPollPort;->start()Lsun/nio/ch/EPollPort;

    move-result-object v0

    return-object v0
.end method

.method public openAsynchronousChannelGroup(Ljava/util/concurrent/ExecutorService;I)Ljava/nio/channels/AsynchronousChannelGroup;
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/ExecutorService;
    .param p2, "initialSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Lsun/nio/ch/EPollPort;

    invoke-static {p1, p2}, Lsun/nio/ch/ThreadPool;->wrap(Ljava/util/concurrent/ExecutorService;I)Lsun/nio/ch/ThreadPool;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lsun/nio/ch/EPollPort;-><init>(Ljava/nio/channels/spi/AsynchronousChannelProvider;Lsun/nio/ch/ThreadPool;)V

    invoke-virtual {v0}, Lsun/nio/ch/EPollPort;->start()Lsun/nio/ch/EPollPort;

    move-result-object v0

    return-object v0
.end method

.method public openAsynchronousServerSocketChannel(Ljava/nio/channels/AsynchronousChannelGroup;)Ljava/nio/channels/AsynchronousServerSocketChannel;
    .registers 4
    .param p1, "group"    # Ljava/nio/channels/AsynchronousChannelGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;

    invoke-direct {p0, p1}, Lsun/nio/ch/LinuxAsynchronousChannelProvider;->toPort(Ljava/nio/channels/AsynchronousChannelGroup;)Lsun/nio/ch/Port;

    move-result-object v1

    invoke-direct {v0, v1}, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;-><init>(Lsun/nio/ch/Port;)V

    return-object v0
.end method

.method public openAsynchronousSocketChannel(Ljava/nio/channels/AsynchronousChannelGroup;)Ljava/nio/channels/AsynchronousSocketChannel;
    .registers 4
    .param p1, "group"    # Ljava/nio/channels/AsynchronousChannelGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;

    invoke-direct {p0, p1}, Lsun/nio/ch/LinuxAsynchronousChannelProvider;->toPort(Ljava/nio/channels/AsynchronousChannelGroup;)Lsun/nio/ch/Port;

    move-result-object v1

    invoke-direct {v0, v1}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;-><init>(Lsun/nio/ch/Port;)V

    return-object v0
.end method
