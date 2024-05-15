.class public Lsun/nio/ch/FileLockImpl;
.super Ljava/nio/channels/FileLock;
.source "FileLockImpl.java"


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private volatile valid:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Lsun/nio/ch/FileLockImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lsun/nio/ch/FileLockImpl;->-assertionsDisabled:Z

    .line 31
    return-void
.end method

.method constructor <init>(Ljava/nio/channels/AsynchronousFileChannel;JJZ)V
    .registers 9
    .param p1, "channel"    # Ljava/nio/channels/AsynchronousFileChannel;
    .param p2, "position"    # J
    .param p4, "size"    # J
    .param p6, "shared"    # Z

    .prologue
    .line 43
    invoke-direct/range {p0 .. p6}, Ljava/nio/channels/FileLock;-><init>(Ljava/nio/channels/AsynchronousFileChannel;JJZ)V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/nio/ch/FileLockImpl;->valid:Z

    .line 44
    return-void
.end method

.method constructor <init>(Ljava/nio/channels/FileChannel;JJZ)V
    .registers 9
    .param p1, "channel"    # Ljava/nio/channels/FileChannel;
    .param p2, "position"    # J
    .param p4, "size"    # J
    .param p6, "shared"    # Z

    .prologue
    .line 38
    invoke-direct/range {p0 .. p6}, Ljava/nio/channels/FileLock;-><init>(Ljava/nio/channels/FileChannel;JJZ)V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/nio/ch/FileLockImpl;->valid:Z

    .line 39
    return-void
.end method


# virtual methods
.method invalidate()V
    .registers 2

    .prologue
    .line 51
    sget-boolean v0, Lsun/nio/ch/FileLockImpl;->-assertionsDisabled:Z

    if-nez v0, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 52
    :cond_10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/nio/ch/FileLockImpl;->valid:Z

    .line 53
    return-void
.end method

.method public isValid()Z
    .registers 2

    .prologue
    .line 47
    iget-boolean v0, p0, Lsun/nio/ch/FileLockImpl;->valid:Z

    return v0
.end method

.method public declared-synchronized release()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 56
    :try_start_1
    invoke-virtual {p0}, Lsun/nio/ch/FileLockImpl;->acquiredBy()Ljava/nio/channels/Channel;

    move-result-object v0

    .line 57
    .local v0, "ch":Ljava/nio/channels/Channel;
    invoke-interface {v0}, Ljava/nio/channels/Channel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_14

    .line 58
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v1
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_11

    .end local v0    # "ch":Ljava/nio/channels/Channel;
    :catchall_11
    move-exception v1

    monitor-exit p0

    throw v1

    .line 59
    .restart local v0    # "ch":Ljava/nio/channels/Channel;
    :cond_14
    :try_start_14
    iget-boolean v1, p0, Lsun/nio/ch/FileLockImpl;->valid:Z

    if-eqz v1, :cond_24

    .line 60
    instance-of v1, v0, Lsun/nio/ch/FileChannelImpl;

    if-eqz v1, :cond_26

    .line 61
    check-cast v0, Lsun/nio/ch/FileChannelImpl;

    .end local v0    # "ch":Ljava/nio/channels/Channel;
    invoke-virtual {v0, p0}, Lsun/nio/ch/FileChannelImpl;->release(Lsun/nio/ch/FileLockImpl;)V

    .line 65
    :goto_21
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/nio/ch/FileLockImpl;->valid:Z
    :try_end_24
    .catchall {:try_start_14 .. :try_end_24} :catchall_11

    :cond_24
    monitor-exit p0

    .line 67
    return-void

    .line 62
    .restart local v0    # "ch":Ljava/nio/channels/Channel;
    :cond_26
    :try_start_26
    instance-of v1, v0, Lsun/nio/ch/AsynchronousFileChannelImpl;

    if-eqz v1, :cond_30

    .line 63
    check-cast v0, Lsun/nio/ch/AsynchronousFileChannelImpl;

    .end local v0    # "ch":Ljava/nio/channels/Channel;
    invoke-virtual {v0, p0}, Lsun/nio/ch/AsynchronousFileChannelImpl;->release(Lsun/nio/ch/FileLockImpl;)V

    goto :goto_21

    .line 64
    .restart local v0    # "ch":Ljava/nio/channels/Channel;
    :cond_30
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_36
    .catchall {:try_start_26 .. :try_end_36} :catchall_11
.end method
