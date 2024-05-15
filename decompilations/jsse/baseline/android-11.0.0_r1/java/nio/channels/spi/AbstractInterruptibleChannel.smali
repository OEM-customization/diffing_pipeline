.class public abstract Ljava/nio/channels/spi/AbstractInterruptibleChannel;
.super Ljava/lang/Object;
.source "AbstractInterruptibleChannel.java"

# interfaces
.implements Ljava/nio/channels/Channel;
.implements Ljava/nio/channels/InterruptibleChannel;


# instance fields
.field private final greylist-max-o closeLock:Ljava/lang/Object;

.field private volatile greylist-max-o interrupted:Ljava/lang/Thread;

.field private greylist-max-o interruptor:Lsun/nio/ch/Interruptible;

.field private volatile greylist-max-o open:Z


# direct methods
.method protected constructor whitelist core-platform-api test-api <init>()V
    .registers 2

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->closeLock:Ljava/lang/Object;

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->open:Z

    .line 98
    return-void
.end method

.method static synthetic blacklist access$000(Ljava/nio/channels/spi/AbstractInterruptibleChannel;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Ljava/nio/channels/spi/AbstractInterruptibleChannel;

    .line 88
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->closeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic blacklist access$100(Ljava/nio/channels/spi/AbstractInterruptibleChannel;)Z
    .registers 2
    .param p0, "x0"    # Ljava/nio/channels/spi/AbstractInterruptibleChannel;

    .line 88
    iget-boolean v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->open:Z

    return v0
.end method

.method static synthetic blacklist access$102(Ljava/nio/channels/spi/AbstractInterruptibleChannel;Z)Z
    .registers 2
    .param p0, "x0"    # Ljava/nio/channels/spi/AbstractInterruptibleChannel;
    .param p1, "x1"    # Z

    .line 88
    iput-boolean p1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->open:Z

    return p1
.end method

.method static synthetic blacklist access$202(Ljava/nio/channels/spi/AbstractInterruptibleChannel;Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 2
    .param p0, "x0"    # Ljava/nio/channels/spi/AbstractInterruptibleChannel;
    .param p1, "x1"    # Ljava/lang/Thread;

    .line 88
    iput-object p1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->interrupted:Ljava/lang/Thread;

    return-object p1
.end method

.method static greylist-max-o blockedOn(Lsun/nio/ch/Interruptible;)V
    .registers 2
    .param p0, "intr"    # Lsun/nio/ch/Interruptible;

    .line 213
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->blockedOn(Lsun/nio/ch/Interruptible;)V

    .line 214
    return-void
.end method


# virtual methods
.method protected final whitelist core-platform-api test-api begin()V
    .registers 3

    .line 157
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->interruptor:Lsun/nio/ch/Interruptible;

    if-nez v0, :cond_b

    .line 158
    new-instance v0, Ljava/nio/channels/spi/AbstractInterruptibleChannel$1;

    invoke-direct {v0, p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel$1;-><init>(Ljava/nio/channels/spi/AbstractInterruptibleChannel;)V

    iput-object v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->interruptor:Lsun/nio/ch/Interruptible;

    .line 171
    :cond_b
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->interruptor:Lsun/nio/ch/Interruptible;

    invoke-static {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->blockedOn(Lsun/nio/ch/Interruptible;)V

    .line 172
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 173
    .local v0, "me":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 174
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->interruptor:Lsun/nio/ch/Interruptible;

    invoke-interface {v1, v0}, Lsun/nio/ch/Interruptible;->interrupt(Ljava/lang/Thread;)V

    .line 175
    :cond_1f
    return-void
.end method

.method public final whitelist core-platform-api test-api close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->closeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 113
    :try_start_3
    iget-boolean v1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->open:Z

    if-nez v1, :cond_9

    .line 114
    monitor-exit v0

    return-void

    .line 115
    :cond_9
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->open:Z

    .line 116
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->implCloseChannel()V

    .line 117
    monitor-exit v0

    .line 118
    return-void

    .line 117
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method protected final whitelist core-platform-api test-api end(Z)V
    .registers 4
    .param p1, "completed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/AsynchronousCloseException;
        }
    .end annotation

    .line 199
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->blockedOn(Lsun/nio/ch/Interruptible;)V

    .line 200
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->interrupted:Ljava/lang/Thread;

    .line 201
    .local v0, "interrupted":Ljava/lang/Thread;
    if-eqz v0, :cond_16

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_f

    goto :goto_16

    .line 202
    :cond_f
    const/4 v0, 0x0

    .line 203
    new-instance v1, Ljava/nio/channels/ClosedByInterruptException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedByInterruptException;-><init>()V

    throw v1

    .line 205
    :cond_16
    :goto_16
    if-nez p1, :cond_23

    iget-boolean v1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->open:Z

    if-eqz v1, :cond_1d

    goto :goto_23

    .line 206
    :cond_1d
    new-instance v1, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v1}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    throw v1

    .line 207
    :cond_23
    :goto_23
    return-void
.end method

.method protected abstract whitelist core-platform-api test-api implCloseChannel()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final whitelist core-platform-api test-api isOpen()Z
    .registers 2

    .line 139
    iget-boolean v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->open:Z

    return v0
.end method
