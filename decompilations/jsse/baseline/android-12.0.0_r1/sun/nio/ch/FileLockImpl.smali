.class public Lsun/nio/ch/FileLockImpl;
.super Ljava/nio/channels/FileLock;
.source "FileLockImpl.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private volatile blacklist valid:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 31
    return-void
.end method

.method constructor blacklist <init>(Ljava/nio/channels/AsynchronousFileChannel;JJZ)V
    .registers 8
    .param p1, "channel"    # Ljava/nio/channels/AsynchronousFileChannel;
    .param p2, "position"    # J
    .param p4, "size"    # J
    .param p6, "shared"    # Z

    .line 43
    invoke-direct/range {p0 .. p6}, Ljava/nio/channels/FileLock;-><init>(Ljava/nio/channels/AsynchronousFileChannel;JJZ)V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/nio/ch/FileLockImpl;->valid:Z

    .line 44
    return-void
.end method

.method constructor blacklist <init>(Ljava/nio/channels/FileChannel;JJZ)V
    .registers 8
    .param p1, "channel"    # Ljava/nio/channels/FileChannel;
    .param p2, "position"    # J
    .param p4, "size"    # J
    .param p6, "shared"    # Z

    .line 38
    invoke-direct/range {p0 .. p6}, Ljava/nio/channels/FileLock;-><init>(Ljava/nio/channels/FileChannel;JJZ)V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/nio/ch/FileLockImpl;->valid:Z

    .line 39
    return-void
.end method


# virtual methods
.method blacklist invalidate()V
    .registers 2

    .line 51
    nop

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/nio/ch/FileLockImpl;->valid:Z

    .line 53
    return-void
.end method

.method public whitelist test-api isValid()Z
    .registers 2

    .line 47
    iget-boolean v0, p0, Lsun/nio/ch/FileLockImpl;->valid:Z

    return v0
.end method

.method public declared-synchronized whitelist test-api release()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 56
    :try_start_1
    invoke-virtual {p0}, Lsun/nio/ch/FileLockImpl;->acquiredBy()Ljava/nio/channels/Channel;

    move-result-object v0

    .line 57
    .local v0, "ch":Ljava/nio/channels/Channel;
    invoke-interface {v0}, Ljava/nio/channels/Channel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 59
    iget-boolean v1, p0, Lsun/nio/ch/FileLockImpl;->valid:Z

    if-eqz v1, :cond_2e

    .line 60
    instance-of v1, v0, Lsun/nio/ch/FileChannelImpl;

    if-eqz v1, :cond_1a

    .line 61
    move-object v1, v0

    check-cast v1, Lsun/nio/ch/FileChannelImpl;

    invoke-virtual {v1, p0}, Lsun/nio/ch/FileChannelImpl;->release(Lsun/nio/ch/FileLockImpl;)V

    goto :goto_24

    .line 62
    .end local p0    # "this":Lsun/nio/ch/FileLockImpl;
    :cond_1a
    instance-of v1, v0, Lsun/nio/ch/AsynchronousFileChannelImpl;

    if-eqz v1, :cond_28

    .line 63
    move-object v1, v0

    check-cast v1, Lsun/nio/ch/AsynchronousFileChannelImpl;

    invoke-virtual {v1, p0}, Lsun/nio/ch/AsynchronousFileChannelImpl;->release(Lsun/nio/ch/FileLockImpl;)V

    .line 65
    :goto_24
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/nio/ch/FileLockImpl;->valid:Z

    goto :goto_2e

    .line 64
    :cond_28
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_36

    .line 67
    :cond_2e
    :goto_2e
    monitor-exit p0

    return-void

    .line 58
    :cond_30
    :try_start_30
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v1
    :try_end_36
    .catchall {:try_start_30 .. :try_end_36} :catchall_36

    .line 55
    .end local v0    # "ch":Ljava/nio/channels/Channel;
    :catchall_36
    move-exception v0

    monitor-exit p0

    throw v0
.end method
