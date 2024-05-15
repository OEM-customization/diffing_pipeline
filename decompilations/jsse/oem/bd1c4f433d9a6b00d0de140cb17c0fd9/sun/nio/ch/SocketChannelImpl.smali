.class Lsun/nio/ch/SocketChannelImpl;
.super Ljava/nio/channels/SocketChannel;
.source "SocketChannelImpl.java"

# interfaces
.implements Lsun/nio/ch/SelChImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/SocketChannelImpl$DefaultOptionsHolder;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final ST_CONNECTED:I = 0x2

.field private static final ST_KILLED:I = 0x4

.field private static final ST_KILLPENDING:I = 0x3

.field private static final ST_PENDING:I = 0x1

.field private static final ST_UNCONNECTED:I = 0x0

.field private static final ST_UNINITIALIZED:I = -0x1

.field private static nd:Lsun/nio/ch/NativeDispatcher;


# instance fields
.field private final fd:Ljava/io/FileDescriptor;

.field private final fdVal:I

.field private final guard:Ldalvik/system/CloseGuard;

.field private isInputOpen:Z

.field private isOutputOpen:Z

.field private isReuseAddress:Z

.field private localAddress:Ljava/net/InetSocketAddress;

.field private final readLock:Ljava/lang/Object;

.field private volatile readerThread:J

.field private readyToConnect:Z

.field private remoteAddress:Ljava/net/InetSocketAddress;

.field private socket:Ljava/net/Socket;

.field private state:I

.field private final stateLock:Ljava/lang/Object;

.field private final writeLock:Ljava/lang/Object;

.field private volatile writerThread:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    .line 1088
    new-instance v0, Lsun/nio/ch/SocketDispatcher;

    invoke-direct {v0}, Lsun/nio/ch/SocketDispatcher;-><init>()V

    sput-object v0, Lsun/nio/ch/SocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    .line 64
    return-void
.end method

.method constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .registers 8
    .param p1, "sp"    # Ljava/nio/channels/spi/SelectorProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 127
    invoke-direct {p0, p1}, Ljava/nio/channels/SocketChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 80
    iput-wide v4, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    .line 81
    iput-wide v4, p0, Lsun/nio/ch/SocketChannelImpl;->writerThread:J

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->readLock:Ljava/lang/Object;

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    .line 112
    iput-boolean v1, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z

    .line 113
    iput-boolean v1, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    .line 114
    iput-boolean v2, p0, Lsun/nio/ch/SocketChannelImpl;->readyToConnect:Z

    .line 122
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->guard:Ldalvik/system/CloseGuard;

    .line 128
    invoke-static {v1}, Lsun/nio/ch/Net;->socket(Z)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 129
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    move-result v0

    iput v0, p0, Lsun/nio/ch/SocketChannelImpl;->fdVal:I

    .line 130
    iput v2, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    .line 134
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_53

    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 135
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->guard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 137
    :cond_53
    return-void
.end method

.method constructor <init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)V
    .registers 8
    .param p1, "sp"    # Ljava/nio/channels/spi/SelectorProvider;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "remote"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    .line 164
    invoke-direct {p0, p1}, Ljava/nio/channels/SocketChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 80
    iput-wide v2, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    .line 81
    iput-wide v2, p0, Lsun/nio/ch/SocketChannelImpl;->writerThread:J

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->readLock:Ljava/lang/Object;

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    .line 112
    iput-boolean v1, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z

    .line 113
    iput-boolean v1, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/nio/ch/SocketChannelImpl;->readyToConnect:Z

    .line 122
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->guard:Ldalvik/system/CloseGuard;

    .line 165
    iput-object p2, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 166
    invoke-static {p2}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    move-result v0

    iput v0, p0, Lsun/nio/ch/SocketChannelImpl;->fdVal:I

    .line 167
    const/4 v0, 0x2

    iput v0, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    .line 168
    invoke-static {p2}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    .line 169
    iput-object p3, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    .line 171
    if-eqz p2, :cond_52

    invoke-virtual {p2}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 172
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->guard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 174
    :cond_52
    return-void
.end method

.method constructor <init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;Z)V
    .registers 10
    .param p1, "sp"    # Ljava/nio/channels/spi/SelectorProvider;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "bound"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 144
    invoke-direct {p0, p1}, Ljava/nio/channels/SocketChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 80
    iput-wide v4, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    .line 81
    iput-wide v4, p0, Lsun/nio/ch/SocketChannelImpl;->writerThread:J

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->readLock:Ljava/lang/Object;

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    .line 112
    iput-boolean v2, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z

    .line 113
    iput-boolean v2, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    .line 114
    iput-boolean v1, p0, Lsun/nio/ch/SocketChannelImpl;->readyToConnect:Z

    .line 122
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->guard:Ldalvik/system/CloseGuard;

    .line 145
    iput-object p2, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 146
    invoke-static {p2}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    move-result v0

    iput v0, p0, Lsun/nio/ch/SocketChannelImpl;->fdVal:I

    .line 147
    iput v1, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    .line 150
    if-eqz p2, :cond_49

    invoke-virtual {p2}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 151
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->guard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 154
    :cond_49
    if-eqz p3, :cond_51

    .line 155
    invoke-static {p2}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    .line 156
    :cond_51
    return-void
.end method

.method private static native checkConnect(Ljava/io/FileDescriptor;ZZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private ensureReadOpen()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    .prologue
    .line 294
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 295
    :try_start_3
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_12

    .line 296
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 294
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 297
    :cond_12
    :try_start_12
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 298
    new-instance v0, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    throw v0

    .line 299
    :cond_1e
    iget-boolean v0, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_f

    if-nez v0, :cond_25

    .line 300
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 302
    :cond_25
    const/4 v0, 0x1

    monitor-exit v1

    return v0
.end method

.method private ensureWriteOpen()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    .prologue
    .line 307
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 308
    :try_start_3
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_12

    .line 309
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 307
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 310
    :cond_12
    :try_start_12
    iget-boolean v0, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    if-nez v0, :cond_1c

    .line 311
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    .line 312
    :cond_1c
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_28

    .line 313
    new-instance v0, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    throw v0
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_f

    :cond_28
    monitor-exit v1

    .line 315
    return-void
.end method

.method private readerCleanup()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 318
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 319
    const-wide/16 v2, 0x0

    :try_start_5
    iput-wide v2, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    .line 320
    iget v0, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_f

    .line 321
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->kill()V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_11

    :cond_f
    monitor-exit v1

    .line 323
    return-void

    .line 318
    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native sendOutOfBandData(Ljava/io/FileDescriptor;B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private writerCleanup()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 326
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 327
    const-wide/16 v2, 0x0

    :try_start_5
    iput-wide v2, p0, Lsun/nio/ch/SocketChannelImpl;->writerThread:J

    .line 328
    iget v0, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_f

    .line 329
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->kill()V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_11

    :cond_f
    monitor-exit v1

    .line 331
    return-void

    .line 326
    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public bridge synthetic bind(Ljava/net/SocketAddress;)Ljava/nio/channels/NetworkChannel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 606
    invoke-virtual {p0, p1}, Lsun/nio/ch/SocketChannelImpl;->bind(Ljava/net/SocketAddress;)Ljava/nio/channels/SocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public bind(Ljava/net/SocketAddress;)Ljava/nio/channels/SocketChannel;
    .registers 10
    .param p1, "local"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 608
    iget-object v3, p0, Lsun/nio/ch/SocketChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v3

    .line 609
    :try_start_3
    iget-object v4, p0, Lsun/nio/ch/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1b

    .line 610
    :try_start_6
    iget-object v5, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_18

    .line 611
    :try_start_9
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 612
    new-instance v2, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v2}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v2
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_15

    .line 610
    :catchall_15
    move-exception v2

    :try_start_16
    monitor-exit v5

    throw v2
    :try_end_18
    .catchall {:try_start_16 .. :try_end_18} :catchall_18

    .line 609
    :catchall_18
    move-exception v2

    :try_start_19
    monitor-exit v4

    throw v2
    :try_end_1b
    .catchall {:try_start_19 .. :try_end_1b} :catchall_1b

    .line 608
    :catchall_1b
    move-exception v2

    monitor-exit v3

    throw v2

    .line 613
    :cond_1e
    :try_start_1e
    iget v2, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    const/4 v6, 0x1

    if-ne v2, v6, :cond_29

    .line 614
    new-instance v2, Ljava/nio/channels/ConnectionPendingException;

    invoke-direct {v2}, Ljava/nio/channels/ConnectionPendingException;-><init>()V

    throw v2

    .line 615
    :cond_29
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    if-eqz v2, :cond_33

    .line 616
    new-instance v2, Ljava/nio/channels/AlreadyBoundException;

    invoke-direct {v2}, Ljava/nio/channels/AlreadyBoundException;-><init>()V

    throw v2

    .line 617
    :cond_33
    if-nez p1, :cond_6e

    .line 618
    new-instance v0, Ljava/net/InetSocketAddress;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    .line 619
    .local v0, "isa":Ljava/net/InetSocketAddress;
    :goto_3b
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 620
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_48

    .line 621
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkListen(I)V

    .line 623
    :cond_48
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v7

    invoke-static {v2, v6, v7}, Lsun/net/NetHooks;->beforeTcpBind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 624
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v7

    invoke-static {v2, v6, v7}, Lsun/nio/ch/Net;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 625
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v2}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v2

    iput-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;
    :try_end_6a
    .catchall {:try_start_1e .. :try_end_6a} :catchall_15

    :try_start_6a
    monitor-exit v5
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_18

    :try_start_6b
    monitor-exit v4
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_1b

    monitor-exit v3

    .line 629
    return-object p0

    .line 618
    .end local v0    # "isa":Ljava/net/InetSocketAddress;
    .end local v1    # "sm":Ljava/lang/SecurityManager;
    :cond_6e
    :try_start_6e
    invoke-static {p1}, Lsun/nio/ch/Net;->checkAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_15

    move-result-object v0

    .restart local v0    # "isa":Ljava/net/InetSocketAddress;
    goto :goto_3b
.end method

.method public connect(Ljava/net/SocketAddress;)Z
    .registers 16
    .param p1, "sa"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 656
    const/4 v2, 0x0

    .line 658
    .local v2, "localPort":I
    iget-object v8, p0, Lsun/nio/ch/SocketChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v8

    .line 659
    :try_start_4
    iget-object v9, p0, Lsun/nio/ch/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_58

    .line 660
    :try_start_7
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->ensureOpenAndUnconnected()V

    .line 661
    invoke-static {p1}, Lsun/nio/ch/Net;->checkAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v1

    .line 662
    .local v1, "isa":Ljava/net/InetSocketAddress;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v4

    .line 663
    .local v4, "sm":Ljava/lang/SecurityManager;
    if-eqz v4, :cond_23

    .line 664
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    .line 665
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v7

    .line 664
    invoke-virtual {v4, v6, v7}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 666
    :cond_23
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->blockingLock()Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_55

    .line 667
    const/4 v3, 0x0

    .line 670
    .local v3, "n":I
    :try_start_29
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->begin()V

    .line 671
    iget-object v7, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_2f
    .catchall {:try_start_29 .. :try_end_2f} :catchall_b8

    .line 672
    :try_start_2f
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_b5

    move-result v6

    if-nez v6, :cond_60

    :try_start_35
    monitor-exit v7
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_b8

    .line 697
    :try_start_36
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->readerCleanup()V

    .line 698
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    .line 699
    sget-boolean v6, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v6, :cond_5b

    invoke-static {v3}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v6

    if-nez v6, :cond_5b

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_4d} :catch_4d
    .catchall {:try_start_36 .. :try_end_4d} :catchall_52

    .line 701
    :catch_4d
    move-exception v5

    .line 705
    .local v5, "x":Ljava/io/IOException;
    :try_start_4e
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->close()V

    .line 706
    throw v5
    :try_end_52
    .catchall {:try_start_4e .. :try_end_52} :catchall_52

    .line 666
    .end local v5    # "x":Ljava/io/IOException;
    :catchall_52
    move-exception v6

    :try_start_53
    monitor-exit v10

    throw v6
    :try_end_55
    .catchall {:try_start_53 .. :try_end_55} :catchall_55

    .line 659
    .end local v1    # "isa":Ljava/net/InetSocketAddress;
    .end local v3    # "n":I
    .end local v4    # "sm":Ljava/lang/SecurityManager;
    :catchall_55
    move-exception v6

    :try_start_56
    monitor-exit v9

    throw v6
    :try_end_58
    .catchall {:try_start_56 .. :try_end_58} :catchall_58

    .line 658
    :catchall_58
    move-exception v6

    monitor-exit v8

    throw v6

    .restart local v1    # "isa":Ljava/net/InetSocketAddress;
    .restart local v3    # "n":I
    .restart local v4    # "sm":Ljava/lang/SecurityManager;
    :cond_5b
    :try_start_5b
    monitor-exit v10
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_55

    :try_start_5c
    monitor-exit v9
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_58

    .line 673
    const/4 v6, 0x0

    monitor-exit v8

    return v6

    .line 676
    :cond_60
    :try_start_60
    iget-object v6, p0, Lsun/nio/ch/SocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    if-nez v6, :cond_71

    .line 677
    iget-object v6, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 678
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v11

    .line 679
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v12

    .line 677
    invoke-static {v6, v11, v12}, Lsun/net/NetHooks;->beforeTcpConnect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 681
    :cond_71
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v12

    iput-wide v12, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J
    :try_end_77
    .catchall {:try_start_60 .. :try_end_77} :catchall_b5

    :try_start_77
    monitor-exit v7

    .line 684
    :cond_78
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 685
    .local v0, "ia":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v6

    if-eqz v6, :cond_86

    .line 686
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    .line 687
    :cond_86
    iget-object v6, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 689
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v7

    .line 687
    invoke-static {v6, v0, v7}, Lsun/nio/ch/Net;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)I

    move-result v3

    .line 690
    const/4 v6, -0x3

    if-ne v3, v6, :cond_99

    .line 691
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z
    :try_end_96
    .catchall {:try_start_77 .. :try_end_96} :catchall_b8

    move-result v6

    .line 690
    if-nez v6, :cond_78

    .line 697
    :cond_99
    :try_start_99
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->readerCleanup()V

    .line 698
    if-gtz v3, :cond_a1

    const/4 v6, -0x2

    if-ne v3, v6, :cond_d5

    :cond_a1
    const/4 v6, 0x1

    :goto_a2
    invoke-virtual {p0, v6}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    .line 699
    sget-boolean v6, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v6, :cond_da

    invoke-static {v3}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v6

    if-nez v6, :cond_da

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_b5} :catch_4d
    .catchall {:try_start_99 .. :try_end_b5} :catchall_52

    .line 671
    .end local v0    # "ia":Ljava/net/InetAddress;
    :catchall_b5
    move-exception v6

    :try_start_b6
    monitor-exit v7

    throw v6
    :try_end_b8
    .catchall {:try_start_b6 .. :try_end_b8} :catchall_b8

    .line 696
    :catchall_b8
    move-exception v6

    .line 697
    :try_start_b9
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->readerCleanup()V

    .line 698
    if-gtz v3, :cond_c1

    const/4 v7, -0x2

    if-ne v3, v7, :cond_d7

    :cond_c1
    const/4 v7, 0x1

    :goto_c2
    invoke-virtual {p0, v7}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    .line 699
    sget-boolean v7, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v7, :cond_d9

    invoke-static {v3}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v7

    if-nez v7, :cond_d9

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 698
    .restart local v0    # "ia":Ljava/net/InetAddress;
    :cond_d5
    const/4 v6, 0x0

    goto :goto_a2

    .end local v0    # "ia":Ljava/net/InetAddress;
    :cond_d7
    const/4 v7, 0x0

    goto :goto_c2

    .line 696
    :cond_d9
    throw v6
    :try_end_da
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_da} :catch_4d
    .catchall {:try_start_b9 .. :try_end_da} :catchall_52

    .line 708
    .restart local v0    # "ia":Ljava/net/InetAddress;
    :cond_da
    :try_start_da
    iget-object v7, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_dd
    .catchall {:try_start_da .. :try_end_dd} :catchall_52

    .line 709
    :try_start_dd
    iput-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    .line 710
    if-lez v3, :cond_f8

    .line 714
    const/4 v6, 0x2

    iput v6, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    .line 715
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_f2

    .line 716
    iget-object v6, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v6}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v6

    iput-object v6, p0, Lsun/nio/ch/SocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;
    :try_end_f2
    .catchall {:try_start_dd .. :try_end_f2} :catchall_115

    :cond_f2
    :try_start_f2
    monitor-exit v7
    :try_end_f3
    .catchall {:try_start_f2 .. :try_end_f3} :catchall_52

    :try_start_f3
    monitor-exit v10
    :try_end_f4
    .catchall {:try_start_f3 .. :try_end_f4} :catchall_55

    :try_start_f4
    monitor-exit v9
    :try_end_f5
    .catchall {:try_start_f4 .. :try_end_f5} :catchall_58

    .line 717
    const/4 v6, 0x1

    monitor-exit v8

    return v6

    .line 721
    :cond_f8
    :try_start_f8
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isBlocking()Z

    move-result v6

    if-nez v6, :cond_10f

    .line 722
    const/4 v6, 0x1

    iput v6, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    .line 723
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_10f

    .line 724
    iget-object v6, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v6}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v6

    iput-object v6, p0, Lsun/nio/ch/SocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;
    :try_end_10f
    .catchall {:try_start_f8 .. :try_end_10f} :catchall_115

    :cond_10f
    :try_start_10f
    monitor-exit v7
    :try_end_110
    .catchall {:try_start_10f .. :try_end_110} :catchall_52

    :try_start_110
    monitor-exit v10
    :try_end_111
    .catchall {:try_start_110 .. :try_end_111} :catchall_55

    :try_start_111
    monitor-exit v9
    :try_end_112
    .catchall {:try_start_111 .. :try_end_112} :catchall_58

    .line 729
    const/4 v6, 0x0

    monitor-exit v8

    return v6

    .line 708
    :catchall_115
    move-exception v6

    :try_start_116
    monitor-exit v7

    throw v6
    :try_end_118
    .catchall {:try_start_116 .. :try_end_118} :catchall_52
.end method

.method ensureOpenAndUnconnected()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 645
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 646
    :try_start_3
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_12

    .line 647
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 645
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 648
    :cond_12
    :try_start_12
    iget v0, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1d

    .line 649
    new-instance v0, Ljava/nio/channels/AlreadyConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/AlreadyConnectedException;-><init>()V

    throw v0

    .line 650
    :cond_1d
    iget v0, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_28

    .line 651
    new-instance v0, Ljava/nio/channels/ConnectionPendingException;

    invoke-direct {v0}, Ljava/nio/channels/ConnectionPendingException;-><init>()V

    throw v0
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_f

    :cond_28
    monitor-exit v1

    .line 653
    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 934
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 935
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 937
    :cond_9
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->close()V

    .line 938
    return-void
.end method

.method public finishConnect()Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x3

    const/4 v12, -0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 735
    iget-object v5, p0, Lsun/nio/ch/SocketChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v5

    .line 736
    :try_start_7
    iget-object v6, p0, Lsun/nio/ch/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_1f

    .line 737
    :try_start_a
    iget-object v7, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_1c

    .line 738
    :try_start_d
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v2

    if-nez v2, :cond_22

    .line 739
    new-instance v2, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v2}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v2
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_19

    .line 737
    :catchall_19
    move-exception v2

    :try_start_1a
    monitor-exit v7

    throw v2
    :try_end_1c
    .catchall {:try_start_1a .. :try_end_1c} :catchall_1c

    .line 736
    :catchall_1c
    move-exception v2

    :try_start_1d
    monitor-exit v6

    throw v2
    :try_end_1f
    .catchall {:try_start_1d .. :try_end_1f} :catchall_1f

    .line 735
    :catchall_1f
    move-exception v2

    monitor-exit v5

    throw v2

    .line 740
    :cond_22
    :try_start_22
    iget v2, p0, Lsun/nio/ch/SocketChannelImpl;->state:I
    :try_end_24
    .catchall {:try_start_22 .. :try_end_24} :catchall_19

    const/4 v8, 0x2

    if-ne v2, v8, :cond_2b

    :try_start_27
    monitor-exit v7
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_1c

    :try_start_28
    monitor-exit v6
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_1f

    monitor-exit v5

    .line 741
    return v3

    .line 742
    :cond_2b
    :try_start_2b
    iget v2, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    if-eq v2, v3, :cond_35

    .line 743
    new-instance v2, Ljava/nio/channels/NoConnectionPendingException;

    invoke-direct {v2}, Ljava/nio/channels/NoConnectionPendingException;-><init>()V

    throw v2
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_19

    :cond_35
    :try_start_35
    monitor-exit v7
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_1c

    .line 745
    const/4 v0, 0x0

    .line 748
    .local v0, "n":I
    :try_start_37
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->begin()V

    .line 749
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->blockingLock()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_3f
    .catchall {:try_start_37 .. :try_end_3f} :catchall_d3

    .line 750
    :try_start_3f
    iget-object v8, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_d0

    .line 751
    :try_start_42
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_cd

    move-result v2

    if-nez v2, :cond_7e

    :try_start_48
    monitor-exit v8
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_d0

    :try_start_49
    monitor-exit v7
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_d3

    .line 784
    :try_start_4a
    iget-object v9, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_71
    .catchall {:try_start_4a .. :try_end_4d} :catchall_1c

    .line 785
    const-wide/16 v10, 0x0

    :try_start_4f
    iput-wide v10, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    .line 786
    iget v2, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    if-ne v2, v13, :cond_59

    .line 787
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->kill()V
    :try_end_58
    .catchall {:try_start_4f .. :try_end_58} :catchall_76

    .line 793
    const/4 v0, 0x0

    :cond_59
    :try_start_59
    monitor-exit v9
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5a} :catch_71
    .catchall {:try_start_59 .. :try_end_5a} :catchall_cd

    .line 796
    if-ltz v4, :cond_5e

    if-nez v12, :cond_79

    :cond_5e
    :goto_5e
    :try_start_5e
    invoke-virtual {p0, v3}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    .line 797
    sget-boolean v2, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_7b

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v2

    if-nez v2, :cond_7b

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_71} :catch_71
    .catchall {:try_start_5e .. :try_end_71} :catchall_1c

    .line 799
    :catch_71
    move-exception v1

    .line 803
    .local v1, "x":Ljava/io/IOException;
    :try_start_72
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->close()V

    .line 804
    throw v1
    :try_end_76
    .catchall {:try_start_72 .. :try_end_76} :catchall_1c

    .line 784
    .end local v1    # "x":Ljava/io/IOException;
    :catchall_76
    move-exception v2

    :try_start_77
    monitor-exit v9
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_78} :catch_71
    .catchall {:try_start_77 .. :try_end_78} :catchall_cd

    :try_start_78
    throw v2
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_79} :catch_71
    .catchall {:try_start_78 .. :try_end_79} :catchall_1c

    :cond_79
    move v3, v4

    .line 796
    goto :goto_5e

    :cond_7b
    :try_start_7b
    monitor-exit v6
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_1f

    monitor-exit v5

    .line 752
    return v4

    .line 754
    :cond_7e
    :try_start_7e
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v10

    iput-wide v10, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J
    :try_end_84
    .catchall {:try_start_7e .. :try_end_84} :catchall_cd

    :try_start_84
    monitor-exit v8

    .line 757
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v2

    invoke-interface {v2}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 758
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isBlocking()Z

    move-result v2

    if-nez v2, :cond_fb

    .line 760
    :cond_92
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 761
    iget-boolean v8, p0, Lsun/nio/ch/SocketChannelImpl;->readyToConnect:Z

    .line 760
    const/4 v9, 0x0

    invoke-static {v2, v9, v8}, Lsun/nio/ch/SocketChannelImpl;->checkConnect(Ljava/io/FileDescriptor;ZZ)I

    move-result v0

    .line 762
    const/4 v2, -0x3

    if-ne v0, v2, :cond_a4

    .line 763
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z
    :try_end_a1
    .catchall {:try_start_84 .. :try_end_a1} :catchall_d0

    move-result v2

    .line 762
    if-nez v2, :cond_92

    :cond_a4
    :try_start_a4
    monitor-exit v7
    :try_end_a5
    .catchall {:try_start_a4 .. :try_end_a5} :catchall_d3

    .line 784
    :try_start_a5
    iget-object v7, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_a8} :catch_71
    .catchall {:try_start_a5 .. :try_end_a8} :catchall_1c

    .line 785
    const-wide/16 v8, 0x0

    :try_start_aa
    iput-wide v8, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    .line 786
    iget v2, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    if-ne v2, v13, :cond_b4

    .line 787
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->kill()V
    :try_end_b3
    .catchall {:try_start_aa .. :try_end_b3} :catchall_110

    .line 793
    const/4 v0, 0x0

    :cond_b4
    :try_start_b4
    monitor-exit v7
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_b5} :catch_71
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_d3

    .line 796
    if-gtz v0, :cond_b9

    if-ne v0, v12, :cond_113

    :cond_b9
    move v2, v3

    :goto_ba
    :try_start_ba
    invoke-virtual {p0, v2}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    .line 797
    sget-boolean v2, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_11b

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v2

    if-nez v2, :cond_11b

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_cd
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_cd} :catch_71
    .catchall {:try_start_ba .. :try_end_cd} :catchall_1c

    .line 750
    :catchall_cd
    move-exception v2

    :try_start_ce
    monitor-exit v8

    throw v2
    :try_end_d0
    .catchall {:try_start_ce .. :try_end_d0} :catchall_d0

    .line 749
    :catchall_d0
    move-exception v2

    :try_start_d1
    monitor-exit v7

    throw v2
    :try_end_d3
    .catchall {:try_start_d1 .. :try_end_d3} :catchall_d3

    .line 783
    :catchall_d3
    move-exception v2

    .line 784
    :try_start_d4
    iget-object v7, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_d7
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_d7} :catch_71
    .catchall {:try_start_d4 .. :try_end_d7} :catchall_1c

    .line 785
    const-wide/16 v8, 0x0

    :try_start_d9
    iput-wide v8, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    .line 786
    iget v8, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    if-ne v8, v13, :cond_e3

    .line 787
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->kill()V
    :try_end_e2
    .catchall {:try_start_d9 .. :try_end_e2} :catchall_115

    .line 793
    const/4 v0, 0x0

    :cond_e3
    :try_start_e3
    monitor-exit v7

    .line 796
    if-gtz v0, :cond_e8

    if-ne v0, v12, :cond_118

    :cond_e8
    :goto_e8
    invoke-virtual {p0, v3}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    .line 797
    sget-boolean v3, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v3, :cond_11a

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v3

    if-nez v3, :cond_11a

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_fb
    .catch Ljava/io/IOException; {:try_start_e3 .. :try_end_fb} :catch_71
    .catchall {:try_start_e3 .. :try_end_fb} :catchall_1c

    .line 769
    :cond_fb
    :goto_fb
    :try_start_fb
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 770
    iget-boolean v8, p0, Lsun/nio/ch/SocketChannelImpl;->readyToConnect:Z

    .line 769
    const/4 v9, 0x1

    invoke-static {v2, v9, v8}, Lsun/nio/ch/SocketChannelImpl;->checkConnect(Ljava/io/FileDescriptor;ZZ)I

    move-result v0

    .line 771
    if-eqz v0, :cond_fb

    .line 776
    const/4 v2, -0x3

    if-ne v0, v2, :cond_a4

    .line 777
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z
    :try_end_10c
    .catchall {:try_start_fb .. :try_end_10c} :catchall_d0

    move-result v2

    .line 776
    if-eqz v2, :cond_a4

    goto :goto_fb

    .line 784
    :catchall_110
    move-exception v2

    :try_start_111
    monitor-exit v7
    :try_end_112
    .catch Ljava/io/IOException; {:try_start_111 .. :try_end_112} :catch_71
    .catchall {:try_start_111 .. :try_end_112} :catchall_d3

    :try_start_112
    throw v2

    :cond_113
    move v2, v4

    .line 796
    goto :goto_ba

    .line 784
    :catchall_115
    move-exception v2

    monitor-exit v7

    throw v2

    :cond_118
    move v3, v4

    .line 796
    goto :goto_e8

    .line 783
    :cond_11a
    throw v2
    :try_end_11b
    .catch Ljava/io/IOException; {:try_start_112 .. :try_end_11b} :catch_71
    .catchall {:try_start_112 .. :try_end_11b} :catchall_1c

    .line 806
    :cond_11b
    if-lez v0, :cond_138

    .line 807
    :try_start_11d
    iget-object v4, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_120
    .catchall {:try_start_11d .. :try_end_120} :catchall_1c

    .line 808
    const/4 v2, 0x2

    :try_start_121
    iput v2, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    .line 809
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_131

    .line 810
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v2}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v2

    iput-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;
    :try_end_131
    .catchall {:try_start_121 .. :try_end_131} :catchall_135

    :cond_131
    :try_start_131
    monitor-exit v4
    :try_end_132
    .catchall {:try_start_131 .. :try_end_132} :catchall_1c

    :try_start_132
    monitor-exit v6
    :try_end_133
    .catchall {:try_start_132 .. :try_end_133} :catchall_1f

    monitor-exit v5

    .line 812
    return v3

    .line 807
    :catchall_135
    move-exception v2

    :try_start_136
    monitor-exit v4

    throw v2
    :try_end_138
    .catchall {:try_start_136 .. :try_end_138} :catchall_1c

    :cond_138
    :try_start_138
    monitor-exit v6
    :try_end_139
    .catchall {:try_start_138 .. :try_end_139} :catchall_1f

    monitor-exit v5

    .line 814
    return v4
.end method

.method public getFD()Ljava/io/FileDescriptor;
    .registers 2

    .prologue
    .line 1031
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getFDVal()I
    .registers 2

    .prologue
    .line 1035
    iget v0, p0, Lsun/nio/ch/SocketChannelImpl;->fdVal:I

    return v0
.end method

.method public getLocalAddress()Ljava/net/SocketAddress;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 187
    :try_start_3
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_12

    .line 188
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 186
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 189
    :cond_12
    :try_start_12
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    invoke-static {v0}, Lsun/nio/ch/Net;->getRevealedLocalAddress(Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_f

    move-result-object v0

    monitor-exit v1

    return-object v0
.end method

.method public getOption(Ljava/net/SocketOption;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    if-nez p1, :cond_8

    .line 240
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 241
    :cond_8
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->supportedOptions()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 242
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' not supported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 244
    :cond_33
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 245
    :try_start_36
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v1

    if-nez v1, :cond_45

    .line 246
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v1
    :try_end_42
    .catchall {:try_start_36 .. :try_end_42} :catchall_42

    .line 244
    :catchall_42
    move-exception v1

    monitor-exit v2

    throw v1

    .line 248
    :cond_45
    :try_start_45
    sget-object v1, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    if-ne p1, v1, :cond_57

    .line 249
    invoke-static {}, Lsun/nio/ch/Net;->useExclusiveBind()Z

    move-result v1

    .line 248
    if-eqz v1, :cond_57

    .line 252
    iget-boolean v1, p0, Lsun/nio/ch/SocketChannelImpl;->isReuseAddress:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_54
    .catchall {:try_start_45 .. :try_end_54} :catchall_42

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 256
    :cond_57
    :try_start_57
    sget-object v1, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    if-ne p1, v1, :cond_6e

    .line 257
    invoke-static {}, Lsun/nio/ch/Net;->isIPv6Available()Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 258
    sget-object v0, Ljava/net/StandardProtocolFamily;->INET6:Ljava/net/StandardProtocolFamily;

    .line 259
    .local v0, "family":Ljava/net/ProtocolFamily;
    :goto_63
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v1, v0, p1}, Lsun/nio/ch/Net;->getSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;)Ljava/lang/Object;
    :try_end_68
    .catchall {:try_start_57 .. :try_end_68} :catchall_42

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 258
    .end local v0    # "family":Ljava/net/ProtocolFamily;
    :cond_6b
    :try_start_6b
    sget-object v0, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    .restart local v0    # "family":Ljava/net/ProtocolFamily;
    goto :goto_63

    .line 263
    .end local v0    # "family":Ljava/net/ProtocolFamily;
    :cond_6e
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v3, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    invoke-static {v1, v3, p1}, Lsun/nio/ch/Net;->getSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;)Ljava/lang/Object;
    :try_end_75
    .catchall {:try_start_6b .. :try_end_75} :catchall_42

    move-result-object v1

    monitor-exit v2

    return-object v1
.end method

.method public getRemoteAddress()Ljava/net/SocketAddress;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 196
    :try_start_3
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_12

    .line 197
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 195
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 198
    :cond_12
    :try_start_12
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_f

    monitor-exit v1

    return-object v0
.end method

.method protected implCloseSelectableChannel()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 871
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 872
    const/4 v0, 0x0

    :try_start_6
    iput-boolean v0, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z

    .line 873
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    .line 880
    iget v0, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1c

    .line 882
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 883
    sget-object v0, Lsun/nio/ch/SocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v2}, Lsun/nio/ch/NativeDispatcher;->preClose(Ljava/io/FileDescriptor;)V

    .line 890
    :cond_1c
    iget-wide v2, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_27

    .line 891
    iget-wide v2, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    invoke-static {v2, v3}, Lsun/nio/ch/NativeThread;->signal(J)V

    .line 893
    :cond_27
    iget-wide v2, p0, Lsun/nio/ch/SocketChannelImpl;->writerThread:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_32

    .line 894
    iget-wide v2, p0, Lsun/nio/ch/SocketChannelImpl;->writerThread:J

    invoke-static {v2, v3}, Lsun/nio/ch/NativeThread;->signal(J)V

    .line 906
    :cond_32
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 907
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->kill()V
    :try_end_3b
    .catchall {:try_start_6 .. :try_end_3b} :catchall_3d

    :cond_3b
    monitor-exit v1

    .line 909
    return-void

    .line 871
    :catchall_3d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected implConfigureBlocking(Z)V
    .registers 3
    .param p1, "block"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 591
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1}, Lsun/nio/ch/IOUtil;->configureBlocking(Ljava/io/FileDescriptor;Z)V

    .line 592
    return-void
.end method

.method public isConnected()Z
    .registers 4

    .prologue
    .line 633
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 634
    :try_start_3
    iget v0, p0, Lsun/nio/ch/SocketChannelImpl;->state:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_d

    const/4 v2, 0x2

    if-ne v0, v2, :cond_b

    const/4 v0, 0x1

    :goto_9
    monitor-exit v1

    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_9

    .line 633
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isConnectionPending()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 639
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 640
    :try_start_4
    iget v2, p0, Lsun/nio/ch/SocketChannelImpl;->state:I
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_c

    if-ne v2, v0, :cond_a

    :goto_8
    monitor-exit v1

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    .line 639
    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isInputOpen()Z
    .registers 3

    .prologue
    .line 854
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 855
    :try_start_3
    iget-boolean v1, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    .line 854
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public isOutputOpen()Z
    .registers 3

    .prologue
    .line 860
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 861
    :try_start_3
    iget-boolean v1, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    .line 860
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public kill()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x4

    .line 912
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 913
    :try_start_6
    iget v0, p0, Lsun/nio/ch/SocketChannelImpl;->state:I
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_2c

    if-ne v0, v2, :cond_c

    monitor-exit v1

    .line 914
    return-void

    .line 915
    :cond_c
    :try_start_c
    iget v0, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_16

    .line 916
    const/4 v0, 0x4

    iput v0, p0, Lsun/nio/ch/SocketChannelImpl;->state:I
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_2c

    monitor-exit v1

    .line 917
    return-void

    .line 919
    :cond_16
    :try_start_16
    sget-boolean v0, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v0, :cond_2f

    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_2f

    :cond_26
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_2c
    .catchall {:try_start_16 .. :try_end_2c} :catchall_2c

    .line 912
    :catchall_2c
    move-exception v0

    monitor-exit v1

    throw v0

    .line 924
    :cond_2f
    :try_start_2f
    iget-wide v2, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_47

    iget-wide v2, p0, Lsun/nio/ch/SocketChannelImpl;->writerThread:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_47

    .line 925
    sget-object v0, Lsun/nio/ch/SocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v2}, Lsun/nio/ch/NativeDispatcher;->close(Ljava/io/FileDescriptor;)V

    .line 926
    const/4 v0, 0x4

    iput v0, p0, Lsun/nio/ch/SocketChannelImpl;->state:I
    :try_end_45
    .catchall {:try_start_2f .. :try_end_45} :catchall_2c

    :goto_45
    monitor-exit v1

    .line 931
    return-void

    .line 928
    :cond_47
    const/4 v0, 0x3

    :try_start_48
    iput v0, p0, Lsun/nio/ch/SocketChannelImpl;->state:I
    :try_end_4a
    .catchall {:try_start_48 .. :try_end_4a} :catchall_2c

    goto :goto_45
.end method

.method public localAddress()Ljava/net/InetSocketAddress;
    .registers 3

    .prologue
    .line 595
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 596
    :try_start_3
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    .line 595
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method poll(IJ)I
    .registers 10
    .param p1, "events"    # I
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 996
    sget-boolean v2, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_1b

    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->blockingLock()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isBlocking()Z

    move-result v2

    if-eqz v2, :cond_1b

    :cond_15
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 998
    :cond_1b
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v2

    .line 999
    const/4 v0, 0x0

    .line 1001
    .local v0, "n":I
    :try_start_1f
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->begin()V

    .line 1002
    iget-object v3, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_50

    .line 1003
    :try_start_25
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_4d

    move-result v4

    if-nez v4, :cond_35

    :try_start_2b
    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_50

    .line 1009
    :try_start_2c
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->readerCleanup()V

    .line 1010
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_59

    monitor-exit v2

    .line 1004
    return v1

    .line 1005
    :cond_35
    :try_start_35
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v4

    iput-wide v4, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J
    :try_end_3b
    .catchall {:try_start_35 .. :try_end_3b} :catchall_4d

    :try_start_3b
    monitor-exit v3

    .line 1007
    iget-object v3, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v3, p1, p2, p3}, Lsun/nio/ch/Net;->poll(Ljava/io/FileDescriptor;IJ)I
    :try_end_41
    .catchall {:try_start_3b .. :try_end_41} :catchall_50

    move-result v0

    .line 1009
    :try_start_42
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->readerCleanup()V

    .line 1010
    if-lez v0, :cond_48

    const/4 v1, 0x1

    :cond_48
    invoke-virtual {p0, v1}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V
    :try_end_4b
    .catchall {:try_start_42 .. :try_end_4b} :catchall_59

    monitor-exit v2

    .line 1012
    return v0

    .line 1002
    :catchall_4d
    move-exception v1

    :try_start_4e
    monitor-exit v3

    throw v1
    :try_end_50
    .catchall {:try_start_4e .. :try_end_50} :catchall_50

    .line 1008
    :catchall_50
    move-exception v1

    .line 1009
    :try_start_51
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->readerCleanup()V

    .line 1010
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    .line 1008
    throw v1
    :try_end_59
    .catchall {:try_start_51 .. :try_end_59} :catchall_59

    .line 998
    :catchall_59
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .registers 12
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, -0x2

    const/4 v2, 0x1

    const/4 v8, -0x1

    const/4 v3, 0x0

    .line 335
    if-nez p1, :cond_c

    .line 336
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 338
    :cond_c
    iget-object v4, p0, Lsun/nio/ch/SocketChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v4

    .line 339
    :try_start_f
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->ensureReadOpen()Z
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_49

    move-result v1

    if-nez v1, :cond_17

    monitor-exit v4

    .line 340
    return v8

    .line 341
    :cond_17
    const/4 v0, 0x0

    .line 347
    .local v0, "n":I
    :try_start_18
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->begin()V

    .line 349
    iget-object v5, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_8a

    .line 350
    :try_start_1e
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_87

    move-result v1

    if-nez v1, :cond_51

    :try_start_24
    monitor-exit v5
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_8a

    .line 429
    :try_start_25
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->readerCleanup()V

    .line 446
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    .line 450
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_49

    .line 451
    :try_start_2f
    iget-boolean v2, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z
    :try_end_31
    .catchall {:try_start_2f .. :try_end_31} :catchall_4c

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_38

    :try_start_35
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_49

    monitor-exit v4

    .line 452
    return v8

    :cond_38
    :try_start_38
    monitor-exit v1

    .line 455
    sget-boolean v1, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v1, :cond_4f

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v1

    if-nez v1, :cond_4f

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_49
    .catchall {:try_start_38 .. :try_end_49} :catchall_49

    .line 338
    .end local v0    # "n":I
    :catchall_49
    move-exception v1

    monitor-exit v4

    throw v1

    .line 450
    .restart local v0    # "n":I
    :catchall_4c
    move-exception v2

    :try_start_4d
    monitor-exit v1

    throw v2
    :try_end_4f
    .catchall {:try_start_4d .. :try_end_4f} :catchall_49

    :cond_4f
    monitor-exit v4

    .line 358
    return v3

    .line 365
    :cond_51
    :try_start_51
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v6

    iput-wide v6, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J
    :try_end_57
    .catchall {:try_start_51 .. :try_end_57} :catchall_87

    :try_start_57
    monitor-exit v5

    .line 419
    :cond_58
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    const-wide/16 v6, -0x1

    sget-object v5, Lsun/nio/ch/SocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    invoke-static {v1, p1, v6, v7, v5}, Lsun/nio/ch/IOUtil;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v0

    .line 420
    const/4 v1, -0x3

    if-ne v0, v1, :cond_6b

    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v1

    if-nez v1, :cond_58

    .line 425
    :cond_6b
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->normalize(I)I
    :try_end_6e
    .catchall {:try_start_57 .. :try_end_6e} :catchall_8a

    move-result v1

    .line 429
    :try_start_6f
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->readerCleanup()V

    .line 446
    if-gtz v0, :cond_76

    if-ne v0, v9, :cond_a3

    :cond_76
    :goto_76
    invoke-virtual {p0, v2}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    .line 450
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_7c
    .catchall {:try_start_6f .. :try_end_7c} :catchall_49

    .line 451
    if-gtz v0, :cond_a5

    :try_start_7e
    iget-boolean v3, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z
    :try_end_80
    .catchall {:try_start_7e .. :try_end_80} :catchall_b6

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_a5

    :try_start_84
    monitor-exit v2
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_49

    monitor-exit v4

    .line 452
    return v8

    .line 349
    :catchall_87
    move-exception v1

    :try_start_88
    monitor-exit v5

    throw v1
    :try_end_8a
    .catchall {:try_start_88 .. :try_end_8a} :catchall_8a

    .line 428
    :catchall_8a
    move-exception v1

    .line 429
    :try_start_8b
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->readerCleanup()V

    .line 446
    if-gtz v0, :cond_92

    if-ne v0, v9, :cond_bb

    :cond_92
    :goto_92
    invoke-virtual {p0, v2}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    .line 450
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_98
    .catchall {:try_start_8b .. :try_end_98} :catchall_49

    .line 451
    if-gtz v0, :cond_bd

    :try_start_9a
    iget-boolean v3, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z
    :try_end_9c
    .catchall {:try_start_9a .. :try_end_9c} :catchall_ce

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_bd

    :try_start_a0
    monitor-exit v2
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_49

    monitor-exit v4

    .line 452
    return v8

    :cond_a3
    move v2, v3

    .line 446
    goto :goto_76

    :cond_a5
    :try_start_a5
    monitor-exit v2

    .line 455
    sget-boolean v2, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_b9

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v2

    if-nez v2, :cond_b9

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 450
    :catchall_b6
    move-exception v1

    monitor-exit v2

    throw v1
    :try_end_b9
    .catchall {:try_start_a5 .. :try_end_b9} :catchall_49

    :cond_b9
    monitor-exit v4

    .line 425
    return v1

    :cond_bb
    move v2, v3

    .line 446
    goto :goto_92

    :cond_bd
    :try_start_bd
    monitor-exit v2

    .line 455
    sget-boolean v2, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_d1

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v2

    if-nez v2, :cond_d1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 450
    :catchall_ce
    move-exception v1

    monitor-exit v2

    throw v1

    .line 428
    :cond_d1
    throw v1
    :try_end_d2
    .catchall {:try_start_bd .. :try_end_d2} :catchall_49
.end method

.method public read([Ljava/nio/ByteBuffer;II)J
    .registers 14
    .param p1, "dsts"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 464
    if-ltz p2, :cond_4

    if-gez p3, :cond_a

    .line 465
    :cond_4
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 464
    :cond_a
    array-length v2, p1

    sub-int/2addr v2, p3

    if-gt p2, v2, :cond_4

    .line 466
    iget-object v4, p0, Lsun/nio/ch/SocketChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v4

    .line 467
    :try_start_11
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->ensureReadOpen()Z
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_50

    move-result v2

    if-nez v2, :cond_1b

    .line 468
    const-wide/16 v2, -0x1

    monitor-exit v4

    return-wide v2

    .line 469
    :cond_1b
    const-wide/16 v0, 0x0

    .line 471
    .local v0, "n":J
    :try_start_1d
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->begin()V

    .line 472
    iget-object v3, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_a3

    .line 473
    :try_start_23
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_a0

    move-result v2

    if-nez v2, :cond_5a

    :try_start_29
    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_a3

    .line 485
    :try_start_2a
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->readerCleanup()V

    .line 486
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    .line 487
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_50

    .line 488
    :try_start_34
    iget-boolean v3, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z
    :try_end_36
    .catchall {:try_start_34 .. :try_end_36} :catchall_53

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3f

    :try_start_3a
    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_50

    .line 489
    const-wide/16 v2, -0x1

    monitor-exit v4

    return-wide v2

    :cond_3f
    :try_start_3f
    monitor-exit v2

    .line 491
    sget-boolean v2, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_56

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v2

    if-nez v2, :cond_56

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_50
    .catchall {:try_start_3f .. :try_end_50} :catchall_50

    .line 466
    .end local v0    # "n":J
    :catchall_50
    move-exception v2

    monitor-exit v4

    throw v2

    .line 487
    .restart local v0    # "n":J
    :catchall_53
    move-exception v3

    :try_start_54
    monitor-exit v2

    throw v3
    :try_end_56
    .catchall {:try_start_54 .. :try_end_56} :catchall_50

    .line 474
    :cond_56
    const-wide/16 v2, 0x0

    monitor-exit v4

    return-wide v2

    .line 475
    :cond_5a
    :try_start_5a
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v6

    iput-wide v6, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J
    :try_end_60
    .catchall {:try_start_5a .. :try_end_60} :catchall_a0

    :try_start_60
    monitor-exit v3

    .line 479
    :cond_61
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v3, Lsun/nio/ch/SocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    invoke-static {v2, p1, p2, p3, v3}, Lsun/nio/ch/IOUtil;->read(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;IILsun/nio/ch/NativeDispatcher;)J

    move-result-wide v0

    .line 480
    const-wide/16 v2, -0x3

    cmp-long v2, v0, v2

    if-nez v2, :cond_75

    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v2

    if-nez v2, :cond_61

    .line 482
    :cond_75
    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->normalize(J)J
    :try_end_78
    .catchall {:try_start_60 .. :try_end_78} :catchall_a3

    move-result-wide v6

    .line 485
    :try_start_79
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->readerCleanup()V

    .line 486
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_88

    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    if-nez v2, :cond_cb

    :cond_88
    const/4 v2, 0x1

    :goto_89
    invoke-virtual {p0, v2}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    .line 487
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_8f
    .catchall {:try_start_79 .. :try_end_8f} :catchall_50

    .line 488
    const-wide/16 v8, 0x0

    cmp-long v3, v0, v8

    if-gtz v3, :cond_cd

    :try_start_95
    iget-boolean v3, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z
    :try_end_97
    .catchall {:try_start_95 .. :try_end_97} :catchall_de

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_cd

    :try_start_9b
    monitor-exit v2
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_50

    .line 489
    const-wide/16 v2, -0x1

    monitor-exit v4

    return-wide v2

    .line 472
    :catchall_a0
    move-exception v2

    :try_start_a1
    monitor-exit v3

    throw v2
    :try_end_a3
    .catchall {:try_start_a1 .. :try_end_a3} :catchall_a3

    .line 484
    :catchall_a3
    move-exception v2

    .line 485
    :try_start_a4
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->readerCleanup()V

    .line 486
    const-wide/16 v6, 0x0

    cmp-long v3, v0, v6

    if-gtz v3, :cond_b3

    const-wide/16 v6, -0x2

    cmp-long v3, v0, v6

    if-nez v3, :cond_e3

    :cond_b3
    const/4 v3, 0x1

    :goto_b4
    invoke-virtual {p0, v3}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    .line 487
    iget-object v3, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_ba
    .catchall {:try_start_a4 .. :try_end_ba} :catchall_50

    .line 488
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-gtz v5, :cond_e5

    :try_start_c0
    iget-boolean v5, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z
    :try_end_c2
    .catchall {:try_start_c0 .. :try_end_c2} :catchall_f6

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_e5

    :try_start_c6
    monitor-exit v3
    :try_end_c7
    .catchall {:try_start_c6 .. :try_end_c7} :catchall_50

    .line 489
    const-wide/16 v2, -0x1

    monitor-exit v4

    return-wide v2

    .line 486
    :cond_cb
    const/4 v2, 0x0

    goto :goto_89

    :cond_cd
    :try_start_cd
    monitor-exit v2

    .line 491
    sget-boolean v2, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_e1

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v2

    if-nez v2, :cond_e1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 487
    :catchall_de
    move-exception v3

    monitor-exit v2

    throw v3
    :try_end_e1
    .catchall {:try_start_cd .. :try_end_e1} :catchall_50

    :cond_e1
    monitor-exit v4

    .line 482
    return-wide v6

    .line 486
    :cond_e3
    const/4 v3, 0x0

    goto :goto_b4

    :cond_e5
    :try_start_e5
    monitor-exit v3

    .line 491
    sget-boolean v3, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v3, :cond_f9

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v3

    if-nez v3, :cond_f9

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 487
    :catchall_f6
    move-exception v2

    monitor-exit v3

    throw v2

    .line 484
    :cond_f9
    throw v2
    :try_end_fa
    .catchall {:try_start_e5 .. :try_end_fa} :catchall_50
.end method

.method public remoteAddress()Ljava/net/SocketAddress;
    .registers 3

    .prologue
    .line 601
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 602
    :try_start_3
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    .line 601
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method sendOutOfBandData(B)I
    .registers 11
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 562
    iget-object v4, p0, Lsun/nio/ch/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v4

    .line 563
    :try_start_6
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->ensureWriteOpen()V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_30

    .line 564
    const/4 v0, 0x0

    .line 566
    .local v0, "n":I
    :try_start_a
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->begin()V

    .line 567
    iget-object v5, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_81

    .line 568
    :try_start_10
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_7e

    move-result v1

    if-nez v1, :cond_46

    :try_start_16
    monitor-exit v5
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_81

    .line 579
    :try_start_17
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->writerCleanup()V

    .line 580
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    .line 581
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_30

    .line 582
    :try_start_21
    iget-boolean v1, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_33

    .line 583
    new-instance v1, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v1}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    throw v1
    :try_end_2d
    .catchall {:try_start_21 .. :try_end_2d} :catchall_2d

    .line 581
    :catchall_2d
    move-exception v1

    :try_start_2e
    monitor-exit v2

    throw v1
    :try_end_30
    .catchall {:try_start_2e .. :try_end_30} :catchall_30

    .line 562
    .end local v0    # "n":I
    :catchall_30
    move-exception v1

    monitor-exit v4

    throw v1

    .restart local v0    # "n":I
    :cond_33
    :try_start_33
    monitor-exit v2

    .line 585
    sget-boolean v1, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v1, :cond_44

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v1

    if-nez v1, :cond_44

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_44
    .catchall {:try_start_33 .. :try_end_44} :catchall_30

    :cond_44
    monitor-exit v4

    .line 569
    return v3

    .line 570
    :cond_46
    :try_start_46
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v6

    iput-wide v6, p0, Lsun/nio/ch/SocketChannelImpl;->writerThread:J
    :try_end_4c
    .catchall {:try_start_46 .. :try_end_4c} :catchall_7e

    :try_start_4c
    monitor-exit v5

    .line 573
    :cond_4d
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v1, p1}, Lsun/nio/ch/SocketChannelImpl;->sendOutOfBandData(Ljava/io/FileDescriptor;B)I

    move-result v0

    .line 574
    const/4 v1, -0x3

    if-ne v0, v1, :cond_5c

    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v1

    if-nez v1, :cond_4d

    .line 576
    :cond_5c
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->normalize(I)I
    :try_end_5f
    .catchall {:try_start_4c .. :try_end_5f} :catchall_81

    move-result v1

    .line 579
    :try_start_60
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->writerCleanup()V

    .line 580
    if-gtz v0, :cond_67

    if-ne v0, v8, :cond_a0

    :cond_67
    :goto_67
    invoke-virtual {p0, v2}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    .line 581
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_6d
    .catchall {:try_start_60 .. :try_end_6d} :catchall_30

    .line 582
    if-gtz v0, :cond_a2

    :try_start_6f
    iget-boolean v3, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_a2

    .line 583
    new-instance v1, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v1}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    throw v1
    :try_end_7b
    .catchall {:try_start_6f .. :try_end_7b} :catchall_7b

    .line 581
    :catchall_7b
    move-exception v1

    :try_start_7c
    monitor-exit v2

    throw v1
    :try_end_7e
    .catchall {:try_start_7c .. :try_end_7e} :catchall_30

    .line 567
    :catchall_7e
    move-exception v1

    :try_start_7f
    monitor-exit v5

    throw v1
    :try_end_81
    .catchall {:try_start_7f .. :try_end_81} :catchall_81

    .line 578
    :catchall_81
    move-exception v1

    .line 579
    :try_start_82
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->writerCleanup()V

    .line 580
    if-gtz v0, :cond_89

    if-ne v0, v8, :cond_b5

    :cond_89
    :goto_89
    invoke-virtual {p0, v2}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    .line 581
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_8f
    .catchall {:try_start_82 .. :try_end_8f} :catchall_30

    .line 582
    if-gtz v0, :cond_b7

    :try_start_91
    iget-boolean v3, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_b7

    .line 583
    new-instance v1, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v1}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    throw v1
    :try_end_9d
    .catchall {:try_start_91 .. :try_end_9d} :catchall_9d

    .line 581
    :catchall_9d
    move-exception v1

    :try_start_9e
    monitor-exit v2

    throw v1

    :cond_a0
    move v2, v3

    .line 580
    goto :goto_67

    :cond_a2
    monitor-exit v2

    .line 585
    sget-boolean v2, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_b3

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v2

    if-nez v2, :cond_b3

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_b3
    .catchall {:try_start_9e .. :try_end_b3} :catchall_30

    :cond_b3
    monitor-exit v4

    .line 576
    return v1

    :cond_b5
    move v2, v3

    .line 580
    goto :goto_89

    :cond_b7
    :try_start_b7
    monitor-exit v2

    .line 585
    sget-boolean v2, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_c8

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v2

    if-nez v2, :cond_c8

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 578
    :cond_c8
    throw v1
    :try_end_c9
    .catchall {:try_start_b7 .. :try_end_c9} :catchall_30
.end method

.method public bridge synthetic setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/NetworkChannel;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    invoke-virtual {p0, p1, p2}, Lsun/nio/ch/SocketChannelImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/SocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/SocketChannel;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption",
            "<TT;>;TT;)",
            "Ljava/nio/channels/SocketChannel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_8

    .line 207
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 208
    :cond_8
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->supportedOptions()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 209
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' not supported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 211
    :cond_33
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 212
    :try_start_36
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v1

    if-nez v1, :cond_45

    .line 213
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v1
    :try_end_42
    .catchall {:try_start_36 .. :try_end_42} :catchall_42

    .line 211
    .end local p2    # "value":Ljava/lang/Object;, "TT;"
    :catchall_42
    move-exception v1

    monitor-exit v2

    throw v1

    .line 215
    .restart local p2    # "value":Ljava/lang/Object;, "TT;"
    :cond_45
    :try_start_45
    sget-object v1, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    if-ne p1, v1, :cond_5b

    .line 216
    invoke-static {}, Lsun/nio/ch/Net;->isIPv6Available()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 217
    sget-object v0, Ljava/net/StandardProtocolFamily;->INET6:Ljava/net/StandardProtocolFamily;

    .line 218
    .local v0, "family":Ljava/net/ProtocolFamily;
    :goto_51
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v1, v0, p1, p2}, Lsun/nio/ch/Net;->setSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;Ljava/lang/Object;)V
    :try_end_56
    .catchall {:try_start_45 .. :try_end_56} :catchall_42

    monitor-exit v2

    .line 219
    return-object p0

    .line 217
    .end local v0    # "family":Ljava/net/ProtocolFamily;
    :cond_58
    :try_start_58
    sget-object v0, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    .restart local v0    # "family":Ljava/net/ProtocolFamily;
    goto :goto_51

    .line 222
    .end local v0    # "family":Ljava/net/ProtocolFamily;
    :cond_5b
    sget-object v1, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    if-ne p1, v1, :cond_6f

    invoke-static {}, Lsun/nio/ch/Net;->useExclusiveBind()Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 224
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lsun/nio/ch/SocketChannelImpl;->isReuseAddress:Z
    :try_end_6d
    .catchall {:try_start_58 .. :try_end_6d} :catchall_42

    monitor-exit v2

    .line 225
    return-object p0

    .line 229
    .restart local p2    # "value":Ljava/lang/Object;, "TT;"
    :cond_6f
    :try_start_6f
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v3, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    invoke-static {v1, v3, p1, p2}, Lsun/nio/ch/Net;->setSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;Ljava/lang/Object;)V
    :try_end_76
    .catchall {:try_start_6f .. :try_end_76} :catchall_42

    monitor-exit v2

    .line 230
    return-object p0
.end method

.method public shutdownInput()Ljava/nio/channels/SocketChannel;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 821
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 822
    :try_start_3
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_12

    .line 823
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 821
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 824
    :cond_12
    :try_start_12
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 825
    new-instance v0, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    throw v0

    .line 826
    :cond_1e
    iget-boolean v0, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z

    if-eqz v0, :cond_38

    .line 827
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lsun/nio/ch/Net;->shutdown(Ljava/io/FileDescriptor;I)V

    .line 828
    iget-wide v2, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_35

    .line 829
    iget-wide v2, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    invoke-static {v2, v3}, Lsun/nio/ch/NativeThread;->signal(J)V

    .line 830
    :cond_35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z
    :try_end_38
    .catchall {:try_start_12 .. :try_end_38} :catchall_f

    :cond_38
    monitor-exit v1

    .line 832
    return-object p0
.end method

.method public shutdownOutput()Ljava/nio/channels/SocketChannel;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 838
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 839
    :try_start_3
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_12

    .line 840
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 838
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 841
    :cond_12
    :try_start_12
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 842
    new-instance v0, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    throw v0

    .line 843
    :cond_1e
    iget-boolean v0, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    if-eqz v0, :cond_38

    .line 844
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lsun/nio/ch/Net;->shutdown(Ljava/io/FileDescriptor;I)V

    .line 845
    iget-wide v2, p0, Lsun/nio/ch/SocketChannelImpl;->writerThread:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_35

    .line 846
    iget-wide v2, p0, Lsun/nio/ch/SocketChannelImpl;->writerThread:J

    invoke-static {v2, v3}, Lsun/nio/ch/NativeThread;->signal(J)V

    .line 847
    :cond_35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z
    :try_end_38
    .catchall {:try_start_12 .. :try_end_38} :catchall_f

    :cond_38
    monitor-exit v1

    .line 849
    return-object p0
.end method

.method public socket()Ljava/net/Socket;
    .registers 3

    .prologue
    .line 177
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 178
    :try_start_3
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->socket:Ljava/net/Socket;

    if-nez v0, :cond_d

    .line 179
    invoke-static {p0}, Lsun/nio/ch/SocketAdaptor;->create(Lsun/nio/ch/SocketChannelImpl;)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->socket:Ljava/net/Socket;

    .line 180
    :cond_d
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->socket:Ljava/net/Socket;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    monitor-exit v1

    return-object v0

    .line 177
    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final supportedOptions()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/net/SocketOption",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 290
    sget-object v0, Lsun/nio/ch/SocketChannelImpl$DefaultOptionsHolder;->defaultOptions:Ljava/util/Set;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1040
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1041
    .local v1, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1042
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1043
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 1044
    const-string/jumbo v2, "closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1073
    :goto_25
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1074
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1046
    :cond_2f
    iget-object v3, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1047
    :try_start_32
    iget v2, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    packed-switch v2, :pswitch_data_90

    .line 1062
    :cond_37
    :goto_37
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    .line 1063
    .local v0, "addr":Ljava/net/InetSocketAddress;
    if-eqz v0, :cond_4a

    .line 1064
    const-string/jumbo v2, " local="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1065
    invoke-static {v0}, Lsun/nio/ch/Net;->getRevealedLocalAddressAsString(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1067
    :cond_4a
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v2

    if-eqz v2, :cond_61

    .line 1068
    const-string/jumbo v2, " remote="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1069
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/SocketAddress;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_61
    .catchall {:try_start_32 .. :try_end_61} :catchall_6a

    :cond_61
    monitor-exit v3

    goto :goto_25

    .line 1049
    .end local v0    # "addr":Ljava/net/InetSocketAddress;
    :pswitch_63
    :try_start_63
    const-string/jumbo v2, "unconnected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_69
    .catchall {:try_start_63 .. :try_end_69} :catchall_6a

    goto :goto_37

    .line 1046
    :catchall_6a
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1052
    :pswitch_6d
    :try_start_6d
    const-string/jumbo v2, "connection-pending"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_37

    .line 1055
    :pswitch_74
    const-string/jumbo v2, "connected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1056
    iget-boolean v2, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z

    if-nez v2, :cond_84

    .line 1057
    const-string/jumbo v2, " ishut"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1058
    :cond_84
    iget-boolean v2, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    if-nez v2, :cond_37

    .line 1059
    const-string/jumbo v2, " oshut"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_8e
    .catchall {:try_start_6d .. :try_end_8e} :catchall_6a

    goto :goto_37

    .line 1047
    nop

    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_63
        :pswitch_6d
        :pswitch_74
    .end packed-switch
.end method

.method public translateAndSetInterestOps(ILsun/nio/ch/SelectionKeyImpl;)V
    .registers 5
    .param p1, "ops"    # I
    .param p2, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    .prologue
    .line 1020
    const/4 v0, 0x0

    .line 1021
    .local v0, "newOps":I
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_9

    .line 1022
    sget-short v1, Lsun/nio/ch/Net;->POLLIN:S

    or-int/lit8 v0, v1, 0x0

    .line 1023
    :cond_9
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_10

    .line 1024
    sget-short v1, Lsun/nio/ch/Net;->POLLOUT:S

    or-int/2addr v0, v1

    .line 1025
    :cond_10
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_17

    .line 1026
    sget-short v1, Lsun/nio/ch/Net;->POLLCONN:S

    or-int/2addr v0, v1

    .line 1027
    :cond_17
    iget-object v1, p2, Lsun/nio/ch/SelectionKeyImpl;->selector:Lsun/nio/ch/SelectorImpl;

    invoke-virtual {v1, p2, v0}, Lsun/nio/ch/SelectorImpl;->putEventOps(Lsun/nio/ch/SelectionKeyImpl;I)V

    .line 1028
    return-void
.end method

.method public translateAndSetReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z
    .registers 4
    .param p1, "ops"    # I
    .param p2, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    .prologue
    .line 991
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lsun/nio/ch/SocketChannelImpl;->translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z

    move-result v0

    return v0
.end method

.method public translateAndUpdateReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z
    .registers 4
    .param p1, "ops"    # I
    .param p2, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    .prologue
    .line 987
    invoke-virtual {p2}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lsun/nio/ch/SocketChannelImpl;->translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z

    move-result v0

    return v0
.end method

.method public translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z
    .registers 12
    .param p1, "ops"    # I
    .param p2, "initialOps"    # I
    .param p3, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 945
    invoke-virtual {p3}, Lsun/nio/ch/SelectionKeyImpl;->nioInterestOps()I

    move-result v0

    .line 946
    .local v0, "intOps":I
    invoke-virtual {p3}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps()I

    move-result v2

    .line 947
    .local v2, "oldOps":I
    move v1, p2

    .line 949
    .local v1, "newOps":I
    sget-short v5, Lsun/nio/ch/Net;->POLLNVAL:S

    and-int/2addr v5, p1

    if-eqz v5, :cond_12

    .line 953
    return v4

    .line 956
    :cond_12
    sget-short v5, Lsun/nio/ch/Net;->POLLERR:S

    sget-short v6, Lsun/nio/ch/Net;->POLLHUP:S

    or-int/2addr v5, v6

    and-int/2addr v5, p1

    if-eqz v5, :cond_27

    .line 957
    move v1, v0

    .line 958
    invoke-virtual {p3, v0}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps(I)V

    .line 961
    iput-boolean v3, p0, Lsun/nio/ch/SocketChannelImpl;->readyToConnect:Z

    .line 962
    not-int v5, v2

    and-int/2addr v5, v0

    if-eqz v5, :cond_25

    :goto_24
    return v3

    :cond_25
    move v3, v4

    goto :goto_24

    .line 965
    :cond_27
    sget-short v5, Lsun/nio/ch/Net;->POLLIN:S

    and-int/2addr v5, p1

    if-eqz v5, :cond_36

    .line 966
    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_36

    .line 967
    iget v5, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    if-ne v5, v7, :cond_36

    .line 968
    or-int/lit8 v1, p2, 0x1

    .line 970
    :cond_36
    sget-short v5, Lsun/nio/ch/Net;->POLLCONN:S

    and-int/2addr v5, p1

    if-eqz v5, :cond_4b

    .line 971
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_4b

    .line 972
    iget v5, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    if-eqz v5, :cond_47

    iget v5, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    if-ne v5, v3, :cond_4b

    .line 973
    :cond_47
    or-int/lit8 v1, v1, 0x8

    .line 974
    iput-boolean v3, p0, Lsun/nio/ch/SocketChannelImpl;->readyToConnect:Z

    .line 977
    :cond_4b
    sget-short v5, Lsun/nio/ch/Net;->POLLOUT:S

    and-int/2addr v5, p1

    if-eqz v5, :cond_5a

    .line 978
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_5a

    .line 979
    iget v5, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    if-ne v5, v7, :cond_5a

    .line 980
    or-int/lit8 v1, v1, 0x4

    .line 982
    :cond_5a
    invoke-virtual {p3, v1}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps(I)V

    .line 983
    not-int v5, v2

    and-int/2addr v5, v1

    if-eqz v5, :cond_62

    :goto_61
    return v3

    :cond_62
    move v3, v4

    goto :goto_61
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .registers 11
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 497
    if-nez p1, :cond_b

    .line 498
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 499
    :cond_b
    iget-object v4, p0, Lsun/nio/ch/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v4

    .line 500
    :try_start_e
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->ensureWriteOpen()V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_38

    .line 501
    const/4 v0, 0x0

    .line 503
    .local v0, "n":I
    :try_start_12
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->begin()V

    .line 504
    iget-object v5, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_8d

    .line 505
    :try_start_18
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_8a

    move-result v1

    if-nez v1, :cond_4e

    :try_start_1e
    monitor-exit v5
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_8d

    .line 516
    :try_start_1f
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->writerCleanup()V

    .line 517
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    .line 518
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_38

    .line 519
    :try_start_29
    iget-boolean v1, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3b

    .line 520
    new-instance v1, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v1}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    throw v1
    :try_end_35
    .catchall {:try_start_29 .. :try_end_35} :catchall_35

    .line 518
    :catchall_35
    move-exception v1

    :try_start_36
    monitor-exit v2

    throw v1
    :try_end_38
    .catchall {:try_start_36 .. :try_end_38} :catchall_38

    .line 499
    .end local v0    # "n":I
    :catchall_38
    move-exception v1

    monitor-exit v4

    throw v1

    .restart local v0    # "n":I
    :cond_3b
    :try_start_3b
    monitor-exit v2

    .line 522
    sget-boolean v1, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v1, :cond_4c

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v1

    if-nez v1, :cond_4c

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_4c
    .catchall {:try_start_3b .. :try_end_4c} :catchall_38

    :cond_4c
    monitor-exit v4

    .line 506
    return v3

    .line 507
    :cond_4e
    :try_start_4e
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v6

    iput-wide v6, p0, Lsun/nio/ch/SocketChannelImpl;->writerThread:J
    :try_end_54
    .catchall {:try_start_4e .. :try_end_54} :catchall_8a

    :try_start_54
    monitor-exit v5

    .line 510
    :cond_55
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    const-wide/16 v6, -0x1

    sget-object v5, Lsun/nio/ch/SocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    invoke-static {v1, p1, v6, v7, v5}, Lsun/nio/ch/IOUtil;->write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v0

    .line 511
    const/4 v1, -0x3

    if-ne v0, v1, :cond_68

    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v1

    if-nez v1, :cond_55

    .line 513
    :cond_68
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->normalize(I)I
    :try_end_6b
    .catchall {:try_start_54 .. :try_end_6b} :catchall_8d

    move-result v1

    .line 516
    :try_start_6c
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->writerCleanup()V

    .line 517
    if-gtz v0, :cond_73

    if-ne v0, v8, :cond_ac

    :cond_73
    :goto_73
    invoke-virtual {p0, v2}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    .line 518
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_79
    .catchall {:try_start_6c .. :try_end_79} :catchall_38

    .line 519
    if-gtz v0, :cond_ae

    :try_start_7b
    iget-boolean v3, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_ae

    .line 520
    new-instance v1, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v1}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    throw v1
    :try_end_87
    .catchall {:try_start_7b .. :try_end_87} :catchall_87

    .line 518
    :catchall_87
    move-exception v1

    :try_start_88
    monitor-exit v2

    throw v1
    :try_end_8a
    .catchall {:try_start_88 .. :try_end_8a} :catchall_38

    .line 504
    :catchall_8a
    move-exception v1

    :try_start_8b
    monitor-exit v5

    throw v1
    :try_end_8d
    .catchall {:try_start_8b .. :try_end_8d} :catchall_8d

    .line 515
    :catchall_8d
    move-exception v1

    .line 516
    :try_start_8e
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->writerCleanup()V

    .line 517
    if-gtz v0, :cond_95

    if-ne v0, v8, :cond_c1

    :cond_95
    :goto_95
    invoke-virtual {p0, v2}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    .line 518
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9b
    .catchall {:try_start_8e .. :try_end_9b} :catchall_38

    .line 519
    if-gtz v0, :cond_c3

    :try_start_9d
    iget-boolean v3, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_c3

    .line 520
    new-instance v1, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v1}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    throw v1
    :try_end_a9
    .catchall {:try_start_9d .. :try_end_a9} :catchall_a9

    .line 518
    :catchall_a9
    move-exception v1

    :try_start_aa
    monitor-exit v2

    throw v1

    :cond_ac
    move v2, v3

    .line 517
    goto :goto_73

    :cond_ae
    monitor-exit v2

    .line 522
    sget-boolean v2, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_bf

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v2

    if-nez v2, :cond_bf

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_bf
    .catchall {:try_start_aa .. :try_end_bf} :catchall_38

    :cond_bf
    monitor-exit v4

    .line 513
    return v1

    :cond_c1
    move v2, v3

    .line 517
    goto :goto_95

    :cond_c3
    :try_start_c3
    monitor-exit v2

    .line 522
    sget-boolean v2, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_d4

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v2

    if-nez v2, :cond_d4

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 515
    :cond_d4
    throw v1
    :try_end_d5
    .catchall {:try_start_c3 .. :try_end_d5} :catchall_38
.end method

.method public write([Ljava/nio/ByteBuffer;II)J
    .registers 14
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 530
    if-ltz p2, :cond_4

    if-gez p3, :cond_a

    .line 531
    :cond_4
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 530
    :cond_a
    array-length v2, p1

    sub-int/2addr v2, p3

    if-gt p2, v2, :cond_4

    .line 532
    iget-object v4, p0, Lsun/nio/ch/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v4

    .line 533
    :try_start_11
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->ensureWriteOpen()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_3c

    .line 534
    const-wide/16 v0, 0x0

    .line 536
    .local v0, "n":J
    :try_start_16
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->begin()V

    .line 537
    iget-object v3, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_a1

    .line 538
    :try_start_1c
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_9e

    move-result v2

    if-nez v2, :cond_54

    :try_start_22
    monitor-exit v3
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_a1

    .line 549
    :try_start_23
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->writerCleanup()V

    .line 550
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    .line 551
    iget-object v3, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_3c

    .line 552
    :try_start_2d
    iget-boolean v2, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3f

    .line 553
    new-instance v2, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v2}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    throw v2
    :try_end_39
    .catchall {:try_start_2d .. :try_end_39} :catchall_39

    .line 551
    :catchall_39
    move-exception v2

    :try_start_3a
    monitor-exit v3

    throw v2
    :try_end_3c
    .catchall {:try_start_3a .. :try_end_3c} :catchall_3c

    .line 532
    .end local v0    # "n":J
    :catchall_3c
    move-exception v2

    monitor-exit v4

    throw v2

    .restart local v0    # "n":J
    :cond_3f
    :try_start_3f
    monitor-exit v3

    .line 555
    sget-boolean v2, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_50

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v2

    if-nez v2, :cond_50

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_50
    .catchall {:try_start_3f .. :try_end_50} :catchall_3c

    .line 539
    :cond_50
    const-wide/16 v2, 0x0

    monitor-exit v4

    return-wide v2

    .line 540
    :cond_54
    :try_start_54
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v6

    iput-wide v6, p0, Lsun/nio/ch/SocketChannelImpl;->writerThread:J
    :try_end_5a
    .catchall {:try_start_54 .. :try_end_5a} :catchall_9e

    :try_start_5a
    monitor-exit v3

    .line 543
    :cond_5b
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v3, Lsun/nio/ch/SocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    invoke-static {v2, p1, p2, p3, v3}, Lsun/nio/ch/IOUtil;->write(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;IILsun/nio/ch/NativeDispatcher;)J

    move-result-wide v0

    .line 544
    const-wide/16 v2, -0x3

    cmp-long v2, v0, v2

    if-nez v2, :cond_6f

    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v2

    if-nez v2, :cond_5b

    .line 546
    :cond_6f
    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->normalize(J)J
    :try_end_72
    .catchall {:try_start_5a .. :try_end_72} :catchall_a1

    move-result-wide v6

    .line 549
    :try_start_73
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->writerCleanup()V

    .line 550
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_82

    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    if-nez v2, :cond_cd

    :cond_82
    const/4 v2, 0x1

    :goto_83
    invoke-virtual {p0, v2}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    .line 551
    iget-object v3, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_89
    .catchall {:try_start_73 .. :try_end_89} :catchall_3c

    .line 552
    const-wide/16 v8, 0x0

    cmp-long v2, v0, v8

    if-gtz v2, :cond_cf

    :try_start_8f
    iget-boolean v2, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_cf

    .line 553
    new-instance v2, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v2}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    throw v2
    :try_end_9b
    .catchall {:try_start_8f .. :try_end_9b} :catchall_9b

    .line 551
    :catchall_9b
    move-exception v2

    :try_start_9c
    monitor-exit v3

    throw v2
    :try_end_9e
    .catchall {:try_start_9c .. :try_end_9e} :catchall_3c

    .line 537
    :catchall_9e
    move-exception v2

    :try_start_9f
    monitor-exit v3

    throw v2
    :try_end_a1
    .catchall {:try_start_9f .. :try_end_a1} :catchall_a1

    .line 548
    :catchall_a1
    move-exception v2

    .line 549
    :try_start_a2
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->writerCleanup()V

    .line 550
    const-wide/16 v6, 0x0

    cmp-long v3, v0, v6

    if-gtz v3, :cond_b1

    const-wide/16 v6, -0x2

    cmp-long v3, v0, v6

    if-nez v3, :cond_e2

    :cond_b1
    const/4 v3, 0x1

    :goto_b2
    invoke-virtual {p0, v3}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    .line 551
    iget-object v3, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_b8
    .catchall {:try_start_a2 .. :try_end_b8} :catchall_3c

    .line 552
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-gtz v5, :cond_e4

    :try_start_be
    iget-boolean v5, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_e4

    .line 553
    new-instance v2, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v2}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    throw v2
    :try_end_ca
    .catchall {:try_start_be .. :try_end_ca} :catchall_ca

    .line 551
    :catchall_ca
    move-exception v2

    :try_start_cb
    monitor-exit v3

    throw v2

    .line 550
    :cond_cd
    const/4 v2, 0x0

    goto :goto_83

    :cond_cf
    monitor-exit v3

    .line 555
    sget-boolean v2, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_e0

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v2

    if-nez v2, :cond_e0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_e0
    .catchall {:try_start_cb .. :try_end_e0} :catchall_3c

    :cond_e0
    monitor-exit v4

    .line 546
    return-wide v6

    .line 550
    :cond_e2
    const/4 v3, 0x0

    goto :goto_b2

    :cond_e4
    :try_start_e4
    monitor-exit v3

    .line 555
    sget-boolean v3, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v3, :cond_f5

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v3

    if-nez v3, :cond_f5

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 548
    :cond_f5
    throw v2
    :try_end_f6
    .catchall {:try_start_e4 .. :try_end_f6} :catchall_3c
.end method
