.class Lsun/nio/ch/PollSelectorImpl;
.super Lsun/nio/ch/AbstractPollSelectorImpl;
.source "PollSelectorImpl.java"


# instance fields
.field private fd0:I

.field private fd1:I

.field private interruptLock:Ljava/lang/Object;

.field private interruptTriggered:Z


# direct methods
.method constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .registers 8
    .param p1, "sp"    # Ljava/nio/channels/spi/SelectorProvider;

    .prologue
    const/16 v5, 0xa

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 56
    invoke-direct {p0, p1, v2, v2}, Lsun/nio/ch/AbstractPollSelectorImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;II)V

    .line 48
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lsun/nio/ch/PollSelectorImpl;->interruptLock:Ljava/lang/Object;

    .line 49
    iput-boolean v3, p0, Lsun/nio/ch/PollSelectorImpl;->interruptTriggered:Z

    .line 57
    invoke-static {v3}, Lsun/nio/ch/IOUtil;->makePipe(Z)J

    move-result-wide v0

    .line 58
    .local v0, "pipeFds":J
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    long-to-int v2, v2

    iput v2, p0, Lsun/nio/ch/PollSelectorImpl;->fd0:I

    .line 59
    long-to-int v2, v0

    iput v2, p0, Lsun/nio/ch/PollSelectorImpl;->fd1:I

    .line 60
    new-instance v2, Lsun/nio/ch/PollArrayWrapper;

    invoke-direct {v2, v5}, Lsun/nio/ch/PollArrayWrapper;-><init>(I)V

    iput-object v2, p0, Lsun/nio/ch/PollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    .line 61
    iget-object v2, p0, Lsun/nio/ch/PollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    iget v3, p0, Lsun/nio/ch/PollSelectorImpl;->fd0:I

    iget v4, p0, Lsun/nio/ch/PollSelectorImpl;->fd1:I

    invoke-virtual {v2, v3, v4}, Lsun/nio/ch/PollArrayWrapper;->initInterrupt(II)V

    .line 62
    new-array v2, v5, [Lsun/nio/ch/SelectionKeyImpl;

    iput-object v2, p0, Lsun/nio/ch/PollSelectorImpl;->channelArray:[Lsun/nio/ch/SelectionKeyImpl;

    .line 63
    return-void
.end method


# virtual methods
.method protected doSelect(J)I
    .registers 8
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 68
    iget-object v1, p0, Lsun/nio/ch/PollSelectorImpl;->channelArray:[Lsun/nio/ch/SelectionKeyImpl;

    if-nez v1, :cond_b

    .line 69
    new-instance v1, Ljava/nio/channels/ClosedSelectorException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedSelectorException;-><init>()V

    throw v1

    .line 70
    :cond_b
    invoke-virtual {p0}, Lsun/nio/ch/PollSelectorImpl;->processDeregisterQueue()V

    .line 72
    :try_start_e
    invoke-virtual {p0}, Lsun/nio/ch/PollSelectorImpl;->begin()V

    .line 73
    iget-object v1, p0, Lsun/nio/ch/PollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    iget v2, p0, Lsun/nio/ch/PollSelectorImpl;->totalChannels:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1, p2}, Lsun/nio/ch/PollArrayWrapper;->poll(IIJ)I
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_3d

    .line 75
    invoke-virtual {p0}, Lsun/nio/ch/PollSelectorImpl;->end()V

    .line 77
    invoke-virtual {p0}, Lsun/nio/ch/PollSelectorImpl;->processDeregisterQueue()V

    .line 78
    invoke-virtual {p0}, Lsun/nio/ch/PollSelectorImpl;->updateSelectedKeys()I

    move-result v0

    .line 79
    .local v0, "numKeysUpdated":I
    iget-object v1, p0, Lsun/nio/ch/PollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    invoke-virtual {v1, v4}, Lsun/nio/ch/PollArrayWrapper;->getReventOps(I)I

    move-result v1

    if-eqz v1, :cond_3c

    .line 81
    iget-object v1, p0, Lsun/nio/ch/PollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    invoke-virtual {v1, v4, v4}, Lsun/nio/ch/PollArrayWrapper;->putReventOps(II)V

    .line 82
    iget-object v2, p0, Lsun/nio/ch/PollSelectorImpl;->interruptLock:Ljava/lang/Object;

    monitor-enter v2

    .line 83
    :try_start_33
    iget v1, p0, Lsun/nio/ch/PollSelectorImpl;->fd0:I

    invoke-static {v1}, Lsun/nio/ch/IOUtil;->drain(I)Z

    .line 84
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/nio/ch/PollSelectorImpl;->interruptTriggered:Z
    :try_end_3b
    .catchall {:try_start_33 .. :try_end_3b} :catchall_42

    monitor-exit v2

    .line 87
    :cond_3c
    return v0

    .line 74
    .end local v0    # "numKeysUpdated":I
    :catchall_3d
    move-exception v1

    .line 75
    invoke-virtual {p0}, Lsun/nio/ch/PollSelectorImpl;->end()V

    .line 74
    throw v1

    .line 82
    .restart local v0    # "numKeysUpdated":I
    :catchall_42
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method protected implCloseInterrupt()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 92
    iget-object v0, p0, Lsun/nio/ch/PollSelectorImpl;->interruptLock:Ljava/lang/Object;

    monitor-enter v0

    .line 93
    const/4 v1, 0x1

    :try_start_5
    iput-boolean v1, p0, Lsun/nio/ch/PollSelectorImpl;->interruptTriggered:Z
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_1d

    monitor-exit v0

    .line 95
    iget v0, p0, Lsun/nio/ch/PollSelectorImpl;->fd0:I

    invoke-static {v0}, Lsun/nio/ch/FileDispatcherImpl;->closeIntFD(I)V

    .line 96
    iget v0, p0, Lsun/nio/ch/PollSelectorImpl;->fd1:I

    invoke-static {v0}, Lsun/nio/ch/FileDispatcherImpl;->closeIntFD(I)V

    .line 97
    iput v2, p0, Lsun/nio/ch/PollSelectorImpl;->fd0:I

    .line 98
    iput v2, p0, Lsun/nio/ch/PollSelectorImpl;->fd1:I

    .line 99
    iget-object v0, p0, Lsun/nio/ch/PollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsun/nio/ch/PollArrayWrapper;->release(I)V

    .line 100
    return-void

    .line 92
    :catchall_1d
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public wakeup()Ljava/nio/channels/Selector;
    .registers 3

    .prologue
    .line 103
    iget-object v1, p0, Lsun/nio/ch/PollSelectorImpl;->interruptLock:Ljava/lang/Object;

    monitor-enter v1

    .line 104
    :try_start_3
    iget-boolean v0, p0, Lsun/nio/ch/PollSelectorImpl;->interruptTriggered:Z

    if-nez v0, :cond_f

    .line 105
    iget-object v0, p0, Lsun/nio/ch/PollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    invoke-virtual {v0}, Lsun/nio/ch/PollArrayWrapper;->interrupt()V

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/nio/ch/PollSelectorImpl;->interruptTriggered:Z
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    :cond_f
    monitor-exit v1

    .line 109
    return-object p0

    .line 103
    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method
