.class Lsun/nio/ch/FileDispatcherImpl;
.super Lsun/nio/ch/FileDispatcher;
.source "FileDispatcherImpl.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Lsun/nio/ch/FileDispatcher;-><init>()V

    .line 41
    return-void
.end method

.method constructor <init>(Z)V
    .registers 2
    .param p1, "append"    # Z

    .prologue
    .line 36
    invoke-direct {p0}, Lsun/nio/ch/FileDispatcher;-><init>()V

    .line 38
    return-void
.end method

.method static native close0(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native closeIntFD(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native force0(Ljava/io/FileDescriptor;Z)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native lock0(Ljava/io/FileDescriptor;ZJJZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native preClose0(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static preCloseImpl(Ljava/io/FileDescriptor;)V
    .registers 3
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-virtual {p0}, Ljava/io/FileDescriptor;->isSocket$()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 119
    :try_start_6
    invoke-static {}, Ldalvik/system/SocketTagger;->get()Ldalvik/system/SocketTagger;

    move-result-object v1

    invoke-virtual {v1, p0}, Ldalvik/system/SocketTagger;->untag(Ljava/io/FileDescriptor;)V
    :try_end_d
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_d} :catch_11

    .line 124
    :cond_d
    :goto_d
    invoke-static {p0}, Lsun/nio/ch/FileDispatcherImpl;->preClose0(Ljava/io/FileDescriptor;)V

    .line 125
    return-void

    .line 120
    :catch_11
    move-exception v0

    .local v0, "ignored":Ljava/net/SocketException;
    goto :goto_d
.end method

.method static native pread0(Ljava/io/FileDescriptor;JIJ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native pwrite0(Ljava/io/FileDescriptor;JIJ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native read0(Ljava/io/FileDescriptor;JI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native readv0(Ljava/io/FileDescriptor;JI)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native release0(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native size0(Ljava/io/FileDescriptor;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native truncate0(Ljava/io/FileDescriptor;J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native write0(Ljava/io/FileDescriptor;JI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native writev0(Ljava/io/FileDescriptor;JI)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method canTransferToDirectly(Ljava/nio/channels/SelectableChannel;)Z
    .registers 3
    .param p1, "sc"    # Ljava/nio/channels/SelectableChannel;

    .prologue
    .line 134
    const/4 v0, 0x1

    return v0
.end method

.method close(Ljava/io/FileDescriptor;)V
    .registers 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-static {p1}, Lsun/nio/ch/FileDispatcherImpl;->close0(Ljava/io/FileDescriptor;)V

    .line 108
    return-void
.end method

.method duplicateForMapping(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;
    .registers 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 130
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    return-object v0
.end method

.method force(Ljava/io/FileDescriptor;Z)I
    .registers 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "metaData"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 81
    invoke-static {p1, p2}, Lsun/nio/ch/FileDispatcherImpl;->force0(Ljava/io/FileDescriptor;Z)I

    move-result v0

    return v0
.end method

.method lock(Ljava/io/FileDescriptor;ZJJZ)I
    .registers 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "blocking"    # Z
    .param p3, "pos"    # J
    .param p5, "size"    # J
    .param p7, "shared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 98
    invoke-static/range {p1 .. p7}, Lsun/nio/ch/FileDispatcherImpl;->lock0(Ljava/io/FileDescriptor;ZJJZ)I

    move-result v0

    return v0
.end method

.method preClose(Ljava/io/FileDescriptor;)V
    .registers 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-static {p1}, Lsun/nio/ch/FileDispatcherImpl;->preCloseImpl(Ljava/io/FileDescriptor;)V

    .line 112
    return-void
.end method

.method pread(Ljava/io/FileDescriptor;JIJ)I
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "address"    # J
    .param p4, "len"    # I
    .param p5, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 52
    invoke-static/range {p1 .. p6}, Lsun/nio/ch/FileDispatcherImpl;->pread0(Ljava/io/FileDescriptor;JIJ)I

    move-result v0

    return v0
.end method

.method pwrite(Ljava/io/FileDescriptor;JIJ)I
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "address"    # J
    .param p4, "len"    # I
    .param p5, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 69
    invoke-static/range {p1 .. p6}, Lsun/nio/ch/FileDispatcherImpl;->pwrite0(Ljava/io/FileDescriptor;JIJ)I

    move-result v0

    return v0
.end method

.method read(Ljava/io/FileDescriptor;JI)I
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "address"    # J
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 45
    invoke-static {p1, p2, p3, p4}, Lsun/nio/ch/FileDispatcherImpl;->read0(Ljava/io/FileDescriptor;JI)I

    move-result v0

    return v0
.end method

.method readv(Ljava/io/FileDescriptor;JI)J
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "address"    # J
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 57
    invoke-static {p1, p2, p3, p4}, Lsun/nio/ch/FileDispatcherImpl;->readv0(Ljava/io/FileDescriptor;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method release(Ljava/io/FileDescriptor;JJ)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pos"    # J
    .param p4, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 103
    invoke-static {p1, p2, p3, p4, p5}, Lsun/nio/ch/FileDispatcherImpl;->release0(Ljava/io/FileDescriptor;JJ)V

    .line 104
    return-void
.end method

.method size(Ljava/io/FileDescriptor;)J
    .registers 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 91
    invoke-static {p1}, Lsun/nio/ch/FileDispatcherImpl;->size0(Ljava/io/FileDescriptor;)J

    move-result-wide v0

    return-wide v0
.end method

.method transferToDirectlyNeedsPositionLock()Z
    .registers 2

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method truncate(Ljava/io/FileDescriptor;J)I
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 86
    invoke-static {p1, p2, p3}, Lsun/nio/ch/FileDispatcherImpl;->truncate0(Ljava/io/FileDescriptor;J)I

    move-result v0

    return v0
.end method

.method write(Ljava/io/FileDescriptor;JI)I
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "address"    # J
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 62
    invoke-static {p1, p2, p3, p4}, Lsun/nio/ch/FileDispatcherImpl;->write0(Ljava/io/FileDescriptor;JI)I

    move-result v0

    return v0
.end method

.method writev(Ljava/io/FileDescriptor;JI)J
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "address"    # J
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 76
    invoke-static {p1, p2, p3, p4}, Lsun/nio/ch/FileDispatcherImpl;->writev0(Ljava/io/FileDescriptor;JI)J

    move-result-wide v0

    return-wide v0
.end method
