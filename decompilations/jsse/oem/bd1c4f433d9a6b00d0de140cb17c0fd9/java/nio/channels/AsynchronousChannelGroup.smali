.class public abstract Ljava/nio/channels/AsynchronousChannelGroup;
.super Ljava/lang/Object;
.source "AsynchronousChannelGroup.java"


# instance fields
.field private final provider:Ljava/nio/channels/spi/AsynchronousChannelProvider;


# direct methods
.method protected constructor <init>(Ljava/nio/channels/spi/AsynchronousChannelProvider;)V
    .registers 2
    .param p1, "provider"    # Ljava/nio/channels/spi/AsynchronousChannelProvider;

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Ljava/nio/channels/AsynchronousChannelGroup;->provider:Ljava/nio/channels/spi/AsynchronousChannelProvider;

    .line 144
    return-void
.end method

.method public static withCachedThreadPool(Ljava/util/concurrent/ExecutorService;I)Ljava/nio/channels/AsynchronousChannelGroup;
    .registers 3
    .param p0, "executor"    # Ljava/util/concurrent/ExecutorService;
    .param p1, "initialSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    invoke-static {}, Ljava/nio/channels/spi/AsynchronousChannelProvider;->provider()Ljava/nio/channels/spi/AsynchronousChannelProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/nio/channels/spi/AsynchronousChannelProvider;->openAsynchronousChannelGroup(Ljava/util/concurrent/ExecutorService;I)Ljava/nio/channels/AsynchronousChannelGroup;

    move-result-object v0

    return-object v0
.end method

.method public static withFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/nio/channels/AsynchronousChannelGroup;
    .registers 3
    .param p0, "nThreads"    # I
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    invoke-static {}, Ljava/nio/channels/spi/AsynchronousChannelProvider;->provider()Ljava/nio/channels/spi/AsynchronousChannelProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/nio/channels/spi/AsynchronousChannelProvider;->openAsynchronousChannelGroup(ILjava/util/concurrent/ThreadFactory;)Ljava/nio/channels/AsynchronousChannelGroup;

    move-result-object v0

    return-object v0
.end method

.method public static withThreadPool(Ljava/util/concurrent/ExecutorService;)Ljava/nio/channels/AsynchronousChannelGroup;
    .registers 3
    .param p0, "executor"    # Ljava/util/concurrent/ExecutorService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 272
    invoke-static {}, Ljava/nio/channels/spi/AsynchronousChannelProvider;->provider()Ljava/nio/channels/spi/AsynchronousChannelProvider;

    move-result-object v0

    .line 273
    const/4 v1, 0x0

    .line 272
    invoke-virtual {v0, p0, v1}, Ljava/nio/channels/spi/AsynchronousChannelProvider;->openAsynchronousChannelGroup(Ljava/util/concurrent/ExecutorService;I)Ljava/nio/channels/AsynchronousChannelGroup;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract isShutdown()Z
.end method

.method public abstract isTerminated()Z
.end method

.method public final provider()Ljava/nio/channels/spi/AsynchronousChannelProvider;
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Ljava/nio/channels/AsynchronousChannelGroup;->provider:Ljava/nio/channels/spi/AsynchronousChannelProvider;

    return-object v0
.end method

.method public abstract shutdown()V
.end method

.method public abstract shutdownNow()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
