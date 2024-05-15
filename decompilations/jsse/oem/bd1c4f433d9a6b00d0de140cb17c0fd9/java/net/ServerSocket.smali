.class public Ljava/net/ServerSocket;
.super Ljava/lang/Object;
.source "ServerSocket.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static factory:Ljava/net/SocketImplFactory;


# instance fields
.field private bound:Z

.field private closeLock:Ljava/lang/Object;

.field private closed:Z

.field private created:Z

.field private impl:Ljava/net/SocketImpl;

.field private oldImpl:Z


# direct methods
.method static synthetic -get0(Ljava/net/ServerSocket;)Ljava/net/SocketImpl;
    .registers 2
    .param p0, "-this"    # Ljava/net/ServerSocket;

    .prologue
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 771
    const/4 v0, 0x0

    sput-object v0, Ljava/net/ServerSocket;->factory:Ljava/net/SocketImplFactory;

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-boolean v1, p0, Ljava/net/ServerSocket;->created:Z

    .line 57
    iput-boolean v1, p0, Ljava/net/ServerSocket;->bound:Z

    .line 58
    iput-boolean v1, p0, Ljava/net/ServerSocket;->closed:Z

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/net/ServerSocket;->closeLock:Ljava/lang/Object;

    .line 69
    iput-boolean v1, p0, Ljava/net/ServerSocket;->oldImpl:Z

    .line 87
    invoke-direct {p0}, Ljava/net/ServerSocket;->setImpl()V

    .line 88
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    const/16 v0, 0x32

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    .line 129
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .param p1, "port"    # I
    .param p2, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    .line 182
    return-void
.end method

.method public constructor <init>(IILjava/net/InetAddress;)V
    .registers 9
    .param p1, "port"    # I
    .param p2, "backlog"    # I
    .param p3, "bindAddr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-boolean v3, p0, Ljava/net/ServerSocket;->created:Z

    .line 57
    iput-boolean v3, p0, Ljava/net/ServerSocket;->bound:Z

    .line 58
    iput-boolean v3, p0, Ljava/net/ServerSocket;->closed:Z

    .line 59
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Ljava/net/ServerSocket;->closeLock:Ljava/lang/Object;

    .line 69
    iput-boolean v3, p0, Ljava/net/ServerSocket;->oldImpl:Z

    .line 230
    invoke-direct {p0}, Ljava/net/ServerSocket;->setImpl()V

    .line 231
    if-ltz p1, :cond_1d

    const v2, 0xffff

    if-le p1, v2, :cond_37

    .line 232
    :cond_1d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 233
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Port value out of range: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 232
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 234
    :cond_37
    const/4 v2, 0x1

    if-ge p2, v2, :cond_3c

    .line 235
    const/16 p2, 0x32

    .line 237
    :cond_3c
    :try_start_3c
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p3, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p0, v2, p2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V
    :try_end_44
    .catch Ljava/lang/SecurityException; {:try_start_3c .. :try_end_44} :catch_4a
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_44} :catch_45

    .line 245
    return-void

    .line 241
    :catch_45
    move-exception v0

    .line 242
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V

    .line 243
    throw v0

    .line 238
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4a
    move-exception v1

    .line 239
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V

    .line 240
    throw v1
.end method

.method constructor <init>(Ljava/net/SocketImpl;)V
    .registers 4
    .param p1, "impl"    # Ljava/net/SocketImpl;

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-boolean v1, p0, Ljava/net/ServerSocket;->created:Z

    .line 57
    iput-boolean v1, p0, Ljava/net/ServerSocket;->bound:Z

    .line 58
    iput-boolean v1, p0, Ljava/net/ServerSocket;->closed:Z

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/net/ServerSocket;->closeLock:Ljava/lang/Object;

    .line 69
    iput-boolean v1, p0, Ljava/net/ServerSocket;->oldImpl:Z

    .line 76
    iput-object p1, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    .line 77
    invoke-virtual {p1, p0}, Ljava/net/SocketImpl;->setServerSocket(Ljava/net/ServerSocket;)V

    .line 78
    return-void
.end method

.method private checkOldImpl()V
    .registers 3

    .prologue
    .line 263
    iget-object v1, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    if-nez v1, :cond_5

    .line 264
    return-void

    .line 269
    :cond_5
    :try_start_5
    new-instance v1, Ljava/net/ServerSocket$1;

    invoke-direct {v1, p0}, Ljava/net/ServerSocket$1;-><init>(Ljava/net/ServerSocket;)V

    .line 268
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/security/PrivilegedActionException; {:try_start_5 .. :try_end_d} :catch_e

    .line 280
    :goto_d
    return-void

    .line 277
    :catch_e
    move-exception v0

    .line 278
    .local v0, "e":Ljava/security/PrivilegedActionException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/net/ServerSocket;->oldImpl:Z

    goto :goto_d
.end method

.method private setImpl()V
    .registers 2

    .prologue
    .line 283
    sget-object v0, Ljava/net/ServerSocket;->factory:Ljava/net/SocketImplFactory;

    if-eqz v0, :cond_19

    .line 284
    sget-object v0, Ljava/net/ServerSocket;->factory:Ljava/net/SocketImplFactory;

    invoke-interface {v0}, Ljava/net/SocketImplFactory;->createSocketImpl()Ljava/net/SocketImpl;

    move-result-object v0

    iput-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    .line 285
    invoke-direct {p0}, Ljava/net/ServerSocket;->checkOldImpl()V

    .line 291
    :goto_f
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    if-eqz v0, :cond_18

    .line 292
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0, p0}, Ljava/net/SocketImpl;->setServerSocket(Ljava/net/ServerSocket;)V

    .line 293
    :cond_18
    return-void

    .line 289
    :cond_19
    new-instance v0, Ljava/net/SocksSocketImpl;

    invoke-direct {v0}, Ljava/net/SocksSocketImpl;-><init>()V

    iput-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    goto :goto_f
.end method

.method public static declared-synchronized setSocketFactory(Ljava/net/SocketImplFactory;)V
    .registers 5
    .param p0, "fac"    # Ljava/net/SocketImplFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-class v2, Ljava/net/ServerSocket;

    monitor-enter v2

    .line 799
    :try_start_3
    sget-object v1, Ljava/net/ServerSocket;->factory:Ljava/net/SocketImplFactory;

    if-eqz v1, :cond_13

    .line 800
    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v3, "factory already defined"

    invoke-direct {v1, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_10

    :catchall_10
    move-exception v1

    monitor-exit v2

    throw v1

    .line 802
    :cond_13
    :try_start_13
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 803
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1c

    .line 804
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkSetFactory()V

    .line 806
    :cond_1c
    sput-object p0, Ljava/net/ServerSocket;->factory:Ljava/net/SocketImplFactory;
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_10

    monitor-exit v2

    .line 807
    return-void
.end method


# virtual methods
.method public accept()Ljava/net/Socket;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 510
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 511
    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v2, "Socket is closed"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 512
    :cond_f
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 513
    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v2, "Socket is not bound yet"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 514
    :cond_1e
    new-instance v0, Ljava/net/Socket;

    const/4 v1, 0x0

    check-cast v1, Ljava/net/SocketImpl;

    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/SocketImpl;)V

    .line 515
    .local v0, "s":Ljava/net/Socket;
    invoke-virtual {p0, v0}, Ljava/net/ServerSocket;->implAccept(Ljava/net/Socket;)V

    .line 516
    return-object v0
.end method

.method public bind(Ljava/net/SocketAddress;)V
    .registers 3
    .param p1, "endpoint"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 330
    const/16 v0, 0x32

    invoke-virtual {p0, p1, v0}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V

    .line 331
    return-void
.end method

.method public bind(Ljava/net/SocketAddress;I)V
    .registers 11
    .param p1, "endpoint"    # Ljava/net/SocketAddress;
    .param p2, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 359
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 360
    new-instance v4, Ljava/net/SocketException;

    const-string/jumbo v5, "Socket is closed"

    invoke-direct {v4, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 361
    :cond_11
    iget-boolean v4, p0, Ljava/net/ServerSocket;->oldImpl:Z

    if-nez v4, :cond_24

    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 362
    new-instance v4, Ljava/net/SocketException;

    const-string/jumbo v5, "Already bound"

    invoke-direct {v4, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 363
    :cond_24
    if-nez p1, :cond_2b

    .line 364
    new-instance p1, Ljava/net/InetSocketAddress;

    .end local p1    # "endpoint":Ljava/net/SocketAddress;
    invoke-direct {p1, v7}, Ljava/net/InetSocketAddress;-><init>(I)V

    .line 365
    .restart local p1    # "endpoint":Ljava/net/SocketAddress;
    :cond_2b
    instance-of v4, p1, Ljava/net/InetSocketAddress;

    if-nez v4, :cond_38

    .line 366
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Unsupported address type"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_38
    move-object v2, p1

    .line 367
    check-cast v2, Ljava/net/InetSocketAddress;

    .line 368
    .local v2, "epoint":Ljava/net/InetSocketAddress;
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 369
    new-instance v4, Ljava/net/SocketException;

    const-string/jumbo v5, "Unresolved address"

    invoke-direct {v4, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 370
    :cond_4a
    if-ge p2, v5, :cond_4e

    .line 371
    const/16 p2, 0x32

    .line 373
    :cond_4e
    :try_start_4e
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    .line 374
    .local v3, "security":Ljava/lang/SecurityManager;
    if-eqz v3, :cond_5b

    .line 375
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/SecurityManager;->checkListen(I)V

    .line 376
    :cond_5b
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v4

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/net/SocketImpl;->bind(Ljava/net/InetAddress;I)V

    .line 377
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/net/SocketImpl;->listen(I)V

    .line 378
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/net/ServerSocket;->bound:Z
    :try_end_74
    .catch Ljava/lang/SecurityException; {:try_start_4e .. :try_end_74} :catch_79
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_74} :catch_75

    .line 386
    return-void

    .line 382
    .end local v3    # "security":Ljava/lang/SecurityManager;
    :catch_75
    move-exception v0

    .line 383
    .local v0, "e":Ljava/io/IOException;
    iput-boolean v7, p0, Ljava/net/ServerSocket;->bound:Z

    .line 384
    throw v0

    .line 379
    .end local v0    # "e":Ljava/io/IOException;
    :catch_79
    move-exception v1

    .line 380
    .local v1, "e":Ljava/lang/SecurityException;
    iput-boolean v7, p0, Ljava/net/ServerSocket;->bound:Z

    .line 381
    throw v1
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 583
    iget-object v1, p0, Ljava/net/ServerSocket;->closeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 584
    :try_start_3
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isClosed()Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_19

    move-result v0

    if-eqz v0, :cond_b

    monitor-exit v1

    .line 585
    return-void

    .line 586
    :cond_b
    :try_start_b
    iget-boolean v0, p0, Ljava/net/ServerSocket;->created:Z

    if-eqz v0, :cond_14

    .line 587
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->close()V

    .line 588
    :cond_14
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/ServerSocket;->closed:Z
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_19

    monitor-exit v1

    .line 590
    return-void

    .line 583
    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method createImpl()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 302
    iget-object v1, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    if-nez v1, :cond_7

    .line 303
    invoke-direct {p0}, Ljava/net/ServerSocket;->setImpl()V

    .line 305
    :cond_7
    :try_start_7
    iget-object v1, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/SocketImpl;->create(Z)V

    .line 306
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/net/ServerSocket;->created:Z
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_10} :catch_11

    .line 310
    return-void

    .line 307
    :catch_11
    move-exception v0

    .line 308
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/net/SocketException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getChannel()Ljava/nio/channels/ServerSocketChannel;
    .registers 2

    .prologue
    .line 609
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFileDescriptor$()Ljava/io/FileDescriptor;
    .registers 2

    .prologue
    .line 930
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getImpl()Ljava/net/SocketImpl;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 257
    iget-boolean v0, p0, Ljava/net/ServerSocket;->created:Z

    if-nez v0, :cond_7

    .line 258
    invoke-virtual {p0}, Ljava/net/ServerSocket;->createImpl()V

    .line 259
    :cond_7
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 407
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v4

    if-nez v4, :cond_8

    .line 408
    return-object v6

    .line 410
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/SocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 411
    .local v2, "in":Ljava/net/InetAddress;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    .line 412
    .local v3, "sm":Ljava/lang/SecurityManager;
    if-eqz v3, :cond_1e

    .line 413
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V
    :try_end_1e
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_1e} :catch_1f
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_1e} :catch_25

    .line 414
    :cond_1e
    return-object v2

    .line 415
    .end local v2    # "in":Ljava/net/InetAddress;
    .end local v3    # "sm":Ljava/lang/SecurityManager;
    :catch_1f
    move-exception v0

    .line 416
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-static {}, Ljava/net/InetAddress;->getLoopbackAddress()Ljava/net/InetAddress;

    move-result-object v4

    return-object v4

    .line 417
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_25
    move-exception v1

    .line 422
    .local v1, "e":Ljava/net/SocketException;
    return-object v6
.end method

.method public getLocalPort()I
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 436
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v1

    if-nez v1, :cond_8

    .line 437
    return v2

    .line 439
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/SocketImpl;->getLocalPort()I
    :try_end_f
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_f} :catch_11

    move-result v1

    return v1

    .line 440
    :catch_11
    move-exception v0

    .line 445
    .local v0, "e":Ljava/net/SocketException;
    return v2
.end method

.method public getLocalSocketAddress()Ljava/net/SocketAddress;
    .registers 4

    .prologue
    .line 476
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v0

    if-nez v0, :cond_8

    .line 477
    const/4 v0, 0x0

    return-object v0

    .line 478
    :cond_8
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/ServerSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
.end method

.method public declared-synchronized getReceiveBufferSize()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 870
    :try_start_1
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 871
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v3, "Socket is closed"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_10

    :catchall_10
    move-exception v2

    monitor-exit p0

    throw v2

    .line 872
    :cond_13
    const/4 v1, 0x0

    .line 873
    .local v1, "result":I
    :try_start_14
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v2

    const/16 v3, 0x1002

    invoke-virtual {v2, v3}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    .line 874
    .local v0, "o":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_28

    .line 875
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_27
    .catchall {:try_start_14 .. :try_end_27} :catchall_10

    move-result v1

    :cond_28
    monitor-exit p0

    .line 877
    return v1
.end method

.method public getReuseAddress()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 730
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 731
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 732
    :cond_f
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized getSoTimeout()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 666
    :try_start_1
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 667
    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v2, "Socket is closed"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_10

    :catchall_10
    move-exception v1

    monitor-exit p0

    throw v1

    .line 668
    :cond_13
    :try_start_13
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v1

    const/16 v2, 0x1006

    invoke-virtual {v1, v2}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    .line 670
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_29

    .line 671
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_26
    .catchall {:try_start_13 .. :try_end_26} :catchall_10

    move-result v1

    monitor-exit p0

    return v1

    .line 673
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_29
    const/4 v1, 0x0

    monitor-exit p0

    return v1
.end method

.method protected final implAccept(Ljava/net/Socket;)V
    .registers 8
    .param p1, "s"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 536
    const/4 v3, 0x0

    .line 538
    .local v3, "si":Ljava/net/SocketImpl;
    :try_start_1
    iget-object v4, p1, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    if-nez v4, :cond_3d

    .line 539
    invoke-virtual {p1}, Ljava/net/Socket;->setImpl()V

    .line 543
    :goto_8
    iget-object v3, p1, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 544
    .local v3, "si":Ljava/net/SocketImpl;
    const/4 v4, 0x0

    iput-object v4, p1, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 545
    new-instance v4, Ljava/net/InetAddress;

    invoke-direct {v4}, Ljava/net/InetAddress;-><init>()V

    iput-object v4, v3, Ljava/net/SocketImpl;->address:Ljava/net/InetAddress;

    .line 546
    new-instance v4, Ljava/io/FileDescriptor;

    invoke-direct {v4}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v4, v3, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 547
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/net/SocketImpl;->accept(Ljava/net/SocketImpl;)V

    .line 549
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 550
    .local v2, "security":Ljava/lang/SecurityManager;
    if-eqz v2, :cond_37

    .line 551
    invoke-virtual {v3}, Ljava/net/SocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    .line 552
    invoke-virtual {v3}, Ljava/net/SocketImpl;->getPort()I

    move-result v5

    .line 551
    invoke-virtual {v2, v4, v5}, Ljava/lang/SecurityManager;->checkAccept(Ljava/lang/String;I)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_37} :catch_43
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_37} :catch_4c

    .line 565
    :cond_37
    iput-object v3, p1, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 566
    invoke-virtual {p1}, Ljava/net/Socket;->postAccept()V

    .line 567
    return-void

    .line 541
    .end local v2    # "security":Ljava/lang/SecurityManager;
    .local v3, "si":Ljava/net/SocketImpl;
    :cond_3d
    :try_start_3d
    iget-object v4, p1, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v4}, Ljava/net/SocketImpl;->reset()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_42} :catch_43
    .catch Ljava/lang/SecurityException; {:try_start_3d .. :try_end_42} :catch_4c

    goto :goto_8

    .line 554
    .end local v3    # "si":Ljava/net/SocketImpl;
    :catch_43
    move-exception v0

    .line 555
    .local v0, "e":Ljava/io/IOException;
    if-eqz v3, :cond_49

    .line 556
    invoke-virtual {v3}, Ljava/net/SocketImpl;->reset()V

    .line 557
    :cond_49
    iput-object v3, p1, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 558
    throw v0

    .line 559
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4c
    move-exception v1

    .line 560
    .local v1, "e":Ljava/lang/SecurityException;
    if-eqz v3, :cond_52

    .line 561
    invoke-virtual {v3}, Ljava/net/SocketImpl;->reset()V

    .line 562
    :cond_52
    iput-object v3, p1, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 563
    throw v1
.end method

.method public isBound()Z
    .registers 2

    .prologue
    .line 620
    iget-boolean v0, p0, Ljava/net/ServerSocket;->bound:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Ljava/net/ServerSocket;->oldImpl:Z

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x1

    goto :goto_6
.end method

.method public isClosed()Z
    .registers 3

    .prologue
    .line 630
    iget-object v0, p0, Ljava/net/ServerSocket;->closeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 631
    :try_start_3
    iget-boolean v1, p0, Ljava/net/ServerSocket;->closed:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    .line 630
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method setBound()V
    .registers 2

    .prologue
    .line 761
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/ServerSocket;->bound:Z

    .line 762
    return-void
.end method

.method setCreated()V
    .registers 2

    .prologue
    .line 765
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/ServerSocket;->created:Z

    .line 766
    return-void
.end method

.method public setPerformancePreferences(III)V
    .registers 4
    .param p1, "connectionTime"    # I
    .param p2, "latency"    # I
    .param p3, "bandwidth"    # I

    .prologue
    .line 923
    return-void
.end method

.method public declared-synchronized setReceiveBufferSize(I)V
    .registers 5
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 846
    if-gtz p1, :cond_f

    .line 847
    :try_start_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "negative receive size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_c

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 849
    :cond_f
    :try_start_f
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 850
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 851
    :cond_1e
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x1002

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_c

    monitor-exit p0

    .line 852
    return-void
.end method

.method public setReuseAddress(Z)V
    .registers 5
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 714
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 715
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 716
    :cond_f
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 717
    return-void
.end method

.method public declared-synchronized setSoTimeout(I)V
    .registers 5
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 652
    :try_start_1
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 653
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_10

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0

    .line 654
    :cond_13
    :try_start_13
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x1006

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_21
    .catchall {:try_start_13 .. :try_end_21} :catchall_10

    monitor-exit p0

    .line 655
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 749
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v1

    if-nez v1, :cond_a

    .line 750
    const-string/jumbo v1, "ServerSocket[unbound]"

    return-object v1

    .line 752
    :cond_a
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    if-eqz v1, :cond_41

    .line 753
    invoke-static {}, Ljava/net/InetAddress;->getLoopbackAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 756
    .local v0, "in":Ljava/net/InetAddress;
    :goto_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ServerSocket[addr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 757
    const-string/jumbo v2, ",localport="

    .line 756
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 757
    iget-object v2, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v2}, Ljava/net/SocketImpl;->getLocalPort()I

    move-result v2

    .line 756
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 757
    const-string/jumbo v2, "]"

    .line 756
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 755
    .end local v0    # "in":Ljava/net/InetAddress;
    :cond_41
    iget-object v1, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v1}, Ljava/net/SocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    .restart local v0    # "in":Ljava/net/InetAddress;
    goto :goto_14
.end method
