.class public Ljava/net/ServerSocket;
.super Ljava/lang/Object;
.source "ServerSocket.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static greylist-max-r factory:Ljava/net/SocketImplFactory;


# instance fields
.field private greylist-max-o bound:Z

.field private greylist-max-o closeLock:Ljava/lang/Object;

.field private greylist-max-o closed:Z

.field private greylist-max-o created:Z

.field private greylist-max-o impl:Ljava/net/SocketImpl;

.field private greylist-max-o oldImpl:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 771
    const/4 v0, 0x0

    sput-object v0, Ljava/net/ServerSocket;->factory:Ljava/net/SocketImplFactory;

    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/ServerSocket;->created:Z

    .line 57
    iput-boolean v0, p0, Ljava/net/ServerSocket;->bound:Z

    .line 58
    iput-boolean v0, p0, Ljava/net/ServerSocket;->closed:Z

    .line 59
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ljava/net/ServerSocket;->closeLock:Ljava/lang/Object;

    .line 69
    iput-boolean v0, p0, Ljava/net/ServerSocket;->oldImpl:Z

    .line 87
    invoke-direct {p0}, Ljava/net/ServerSocket;->setImpl()V

    .line 88
    return-void
.end method

.method public constructor whitelist test-api <init>(I)V
    .registers 4
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    const/16 v0, 0x32

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    .line 129
    return-void
.end method

.method public constructor whitelist test-api <init>(II)V
    .registers 4
    .param p1, "port"    # I
    .param p2, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    .line 182
    return-void
.end method

.method public constructor whitelist test-api <init>(IILjava/net/InetAddress;)V
    .registers 7
    .param p1, "port"    # I
    .param p2, "backlog"    # I
    .param p3, "bindAddr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/ServerSocket;->created:Z

    .line 57
    iput-boolean v0, p0, Ljava/net/ServerSocket;->bound:Z

    .line 58
    iput-boolean v0, p0, Ljava/net/ServerSocket;->closed:Z

    .line 59
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ljava/net/ServerSocket;->closeLock:Ljava/lang/Object;

    .line 69
    iput-boolean v0, p0, Ljava/net/ServerSocket;->oldImpl:Z

    .line 230
    invoke-direct {p0}, Ljava/net/ServerSocket;->setImpl()V

    .line 231
    if-ltz p1, :cond_36

    const v0, 0xffff

    if-gt p1, v0, :cond_36

    .line 234
    const/4 v0, 0x1

    if-ge p2, v0, :cond_22

    .line 235
    const/16 p2, 0x32

    .line 237
    :cond_22
    :try_start_22
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p3, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p0, v0, p2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V
    :try_end_2a
    .catch Ljava/lang/SecurityException; {:try_start_22 .. :try_end_2a} :catch_31
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2a} :catch_2c

    .line 244
    nop

    .line 245
    return-void

    .line 241
    :catch_2c
    move-exception v0

    .line 242
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V

    .line 243
    throw v0

    .line 238
    .end local v0    # "e":Ljava/io/IOException;
    :catch_31
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V

    .line 240
    throw v0

    .line 232
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Port value out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor greylist-max-o <init>(Ljava/net/SocketImpl;)V
    .registers 4
    .param p1, "impl"    # Ljava/net/SocketImpl;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/ServerSocket;->created:Z

    .line 57
    iput-boolean v0, p0, Ljava/net/ServerSocket;->bound:Z

    .line 58
    iput-boolean v0, p0, Ljava/net/ServerSocket;->closed:Z

    .line 59
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ljava/net/ServerSocket;->closeLock:Ljava/lang/Object;

    .line 69
    iput-boolean v0, p0, Ljava/net/ServerSocket;->oldImpl:Z

    .line 76
    iput-object p1, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    .line 77
    invoke-virtual {p1, p0}, Ljava/net/SocketImpl;->setServerSocket(Ljava/net/ServerSocket;)V

    .line 78
    return-void
.end method

.method static synthetic blacklist access$000(Ljava/net/ServerSocket;)Ljava/net/SocketImpl;
    .registers 2
    .param p0, "x0"    # Ljava/net/ServerSocket;

    .line 52
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    return-object v0
.end method

.method private greylist-max-o checkOldImpl()V
    .registers 3

    .line 264
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    if-nez v0, :cond_5

    .line 265
    return-void

    .line 269
    :cond_5
    :try_start_5
    new-instance v0, Ljava/net/ServerSocket$1;

    invoke-direct {v0, p0}, Ljava/net/ServerSocket$1;-><init>(Ljava/net/ServerSocket;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/security/PrivilegedActionException; {:try_start_5 .. :try_end_d} :catch_e

    .line 280
    goto :goto_12

    .line 278
    :catch_e
    move-exception v0

    .line 279
    .local v0, "e":Ljava/security/PrivilegedActionException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/net/ServerSocket;->oldImpl:Z

    .line 281
    .end local v0    # "e":Ljava/security/PrivilegedActionException;
    :goto_12
    return-void
.end method

.method private greylist-max-o setImpl()V
    .registers 2

    .line 284
    sget-object v0, Ljava/net/ServerSocket;->factory:Ljava/net/SocketImplFactory;

    if-eqz v0, :cond_e

    .line 285
    invoke-interface {v0}, Ljava/net/SocketImplFactory;->createSocketImpl()Ljava/net/SocketImpl;

    move-result-object v0

    iput-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    .line 286
    invoke-direct {p0}, Ljava/net/ServerSocket;->checkOldImpl()V

    goto :goto_15

    .line 290
    :cond_e
    new-instance v0, Ljava/net/SocksSocketImpl;

    invoke-direct {v0}, Ljava/net/SocksSocketImpl;-><init>()V

    iput-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    .line 292
    :goto_15
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    if-eqz v0, :cond_1c

    .line 293
    invoke-virtual {v0, p0}, Ljava/net/SocketImpl;->setServerSocket(Ljava/net/ServerSocket;)V

    .line 294
    :cond_1c
    return-void
.end method

.method public static declared-synchronized whitelist test-api setSocketFactory(Ljava/net/SocketImplFactory;)V
    .registers 4
    .param p0, "fac"    # Ljava/net/SocketImplFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v0, Ljava/net/ServerSocket;

    monitor-enter v0

    .line 799
    :try_start_3
    sget-object v1, Ljava/net/ServerSocket;->factory:Ljava/net/SocketImplFactory;

    if-nez v1, :cond_14

    .line 802
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 803
    .local v1, "security":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_10

    .line 804
    invoke-virtual {v1}, Ljava/lang/SecurityManager;->checkSetFactory()V

    .line 806
    :cond_10
    sput-object p0, Ljava/net/ServerSocket;->factory:Ljava/net/SocketImplFactory;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1c

    .line 807
    monitor-exit v0

    return-void

    .line 800
    .end local v1    # "security":Ljava/lang/SecurityManager;
    :cond_14
    :try_start_14
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "factory already defined"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_1c

    .line 798
    .end local p0    # "fac":Ljava/net/SocketImplFactory;
    :catchall_1c
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public whitelist test-api accept()Ljava/net/Socket;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 510
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_20

    .line 512
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 514
    new-instance v0, Ljava/net/Socket;

    const/4 v1, 0x0

    check-cast v1, Ljava/net/SocketImpl;

    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/SocketImpl;)V

    .line 515
    .local v0, "s":Ljava/net/Socket;
    invoke-virtual {p0, v0}, Ljava/net/ServerSocket;->implAccept(Ljava/net/Socket;)V

    .line 516
    return-object v0

    .line 513
    .end local v0    # "s":Ljava/net/Socket;
    :cond_18
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is not bound yet"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 511
    :cond_20
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api bind(Ljava/net/SocketAddress;)V
    .registers 3
    .param p1, "endpoint"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    const/16 v0, 0x32

    invoke-virtual {p0, p1, v0}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V

    .line 332
    return-void
.end method

.method public whitelist test-api bind(Ljava/net/SocketAddress;I)V
    .registers 10
    .param p1, "endpoint"    # Ljava/net/SocketAddress;
    .param p2, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 360
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_73

    .line 362
    iget-boolean v0, p0, Ljava/net/ServerSocket;->oldImpl:Z

    if-nez v0, :cond_19

    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_19

    .line 363
    :cond_11
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Already bound"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_19
    :goto_19
    const/4 v0, 0x0

    if-nez p1, :cond_22

    .line 365
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, v0}, Ljava/net/InetSocketAddress;-><init>(I)V

    move-object p1, v1

    .line 366
    :cond_22
    instance-of v1, p1, Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_6b

    .line 368
    move-object v1, p1

    check-cast v1, Ljava/net/InetSocketAddress;

    .line 369
    .local v1, "epoint":Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v2

    if-nez v2, :cond_63

    .line 371
    const/4 v2, 0x1

    if-ge p2, v2, :cond_34

    .line 372
    const/16 p2, 0x32

    .line 374
    :cond_34
    :try_start_34
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    .line 375
    .local v3, "security":Ljava/lang/SecurityManager;
    if-eqz v3, :cond_41

    .line 376
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/SecurityManager;->checkListen(I)V

    .line 377
    :cond_41
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/net/SocketImpl;->bind(Ljava/net/InetAddress;I)V

    .line 378
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/net/SocketImpl;->listen(I)V

    .line 379
    iput-boolean v2, p0, Ljava/net/ServerSocket;->bound:Z
    :try_end_59
    .catch Ljava/lang/SecurityException; {:try_start_34 .. :try_end_59} :catch_5f
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_59} :catch_5b

    .line 386
    .end local v3    # "security":Ljava/lang/SecurityManager;
    nop

    .line 387
    return-void

    .line 383
    :catch_5b
    move-exception v2

    .line 384
    .local v2, "e":Ljava/io/IOException;
    iput-boolean v0, p0, Ljava/net/ServerSocket;->bound:Z

    .line 385
    throw v2

    .line 380
    .end local v2    # "e":Ljava/io/IOException;
    :catch_5f
    move-exception v2

    .line 381
    .local v2, "e":Ljava/lang/SecurityException;
    iput-boolean v0, p0, Ljava/net/ServerSocket;->bound:Z

    .line 382
    throw v2

    .line 370
    .end local v2    # "e":Ljava/lang/SecurityException;
    :cond_63
    new-instance v0, Ljava/net/SocketException;

    const-string v2, "Unresolved address"

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    .end local v1    # "epoint":Ljava/net/InetSocketAddress;
    :cond_6b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported address type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_73
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 583
    iget-object v0, p0, Ljava/net/ServerSocket;->closeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 584
    :try_start_3
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 585
    monitor-exit v0

    return-void

    .line 586
    :cond_b
    iget-boolean v1, p0, Ljava/net/ServerSocket;->created:Z

    if-eqz v1, :cond_14

    .line 587
    iget-object v1, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v1}, Ljava/net/SocketImpl;->close()V

    .line 588
    :cond_14
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/net/ServerSocket;->closed:Z

    .line 589
    monitor-exit v0

    .line 590
    return-void

    .line 589
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method greylist-max-o createImpl()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 303
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    if-nez v0, :cond_7

    .line 304
    invoke-direct {p0}, Ljava/net/ServerSocket;->setImpl()V

    .line 306
    :cond_7
    :try_start_7
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->create(Z)V

    .line 307
    iput-boolean v1, p0, Ljava/net/ServerSocket;->created:Z
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_f} :catch_11

    .line 310
    nop

    .line 311
    return-void

    .line 308
    :catch_11
    move-exception v0

    .line 309
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/net/SocketException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api getChannel()Ljava/nio/channels/ServerSocketChannel;
    .registers 2

    .line 609
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getFileDescriptor$()Ljava/io/FileDescriptor;
    .registers 2

    .line 930
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o test-api getImpl()Ljava/net/SocketImpl;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 258
    iget-boolean v0, p0, Ljava/net/ServerSocket;->created:Z

    if-nez v0, :cond_7

    .line 259
    invoke-virtual {p0}, Ljava/net/ServerSocket;->createImpl()V

    .line 260
    :cond_7
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    return-object v0
.end method

.method public whitelist test-api getInetAddress()Ljava/net/InetAddress;
    .registers 6

    .line 408
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 409
    return-object v1

    .line 411
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 412
    .local v0, "in":Ljava/net/InetAddress;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 413
    .local v2, "sm":Ljava/lang/SecurityManager;
    if-eqz v2, :cond_1e

    .line 414
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V
    :try_end_1e
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_1e} :catch_21
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_1e} :catch_1f

    .line 415
    :cond_1e
    return-object v0

    .line 418
    .end local v0    # "in":Ljava/net/InetAddress;
    .end local v2    # "sm":Ljava/lang/SecurityManager;
    :catch_1f
    move-exception v0

    .line 423
    return-object v1

    .line 416
    :catch_21
    move-exception v0

    .line 417
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-static {}, Ljava/net/InetAddress;->getLoopbackAddress()Ljava/net/InetAddress;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api getLocalPort()I
    .registers 3

    .line 437
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_8

    .line 438
    return v1

    .line 440
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getLocalPort()I

    move-result v0
    :try_end_10
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_10} :catch_11

    return v0

    .line 441
    :catch_11
    move-exception v0

    .line 446
    return v1
.end method

.method public whitelist test-api getLocalSocketAddress()Ljava/net/SocketAddress;
    .registers 4

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

.method public declared-synchronized whitelist test-api getReceiveBufferSize()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    .line 870
    :try_start_1
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_20

    .line 872
    const/4 v0, 0x0

    .line 873
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v1

    const/16 v2, 0x1002

    invoke-virtual {v1, v2}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v1

    .line 874
    .local v1, "o":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1e

    .line 875
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_28

    move v0, v2

    .line 877
    .end local p0    # "this":Ljava/net/ServerSocket;
    :cond_1e
    monitor-exit p0

    return v0

    .line 871
    .end local v0    # "result":I
    .end local v1    # "o":Ljava/lang/Object;
    :cond_20
    :try_start_20
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_28

    .line 869
    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public whitelist test-api getReuseAddress()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 730
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_16

    .line 732
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 731
    :cond_16
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized whitelist test-api getSoTimeout()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 666
    :try_start_1
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_21

    .line 668
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    const/16 v1, 0x1006

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    .line 670
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1e

    .line 671
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_29

    monitor-exit p0

    return v1

    .line 673
    .end local p0    # "this":Ljava/net/ServerSocket;
    :cond_1e
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 667
    .end local v0    # "o":Ljava/lang/Object;
    :cond_21
    :try_start_21
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    .line 665
    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final whitelist test-api implAccept(Ljava/net/Socket;)V
    .registers 6
    .param p1, "s"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 536
    const/4 v0, 0x0

    .line 538
    .local v0, "si":Ljava/net/SocketImpl;
    :try_start_1
    iget-object v1, p1, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    if-nez v1, :cond_9

    .line 539
    invoke-virtual {p1}, Ljava/net/Socket;->setImpl()V

    goto :goto_e

    .line 541
    :cond_9
    iget-object v1, p1, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v1}, Ljava/net/SocketImpl;->reset()V

    .line 543
    :goto_e
    iget-object v1, p1, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    move-object v0, v1

    .line 544
    const/4 v1, 0x0

    iput-object v1, p1, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 545
    new-instance v1, Ljava/net/InetAddress;

    invoke-direct {v1}, Ljava/net/InetAddress;-><init>()V

    iput-object v1, v0, Ljava/net/SocketImpl;->address:Ljava/net/InetAddress;

    .line 546
    new-instance v1, Ljava/io/FileDescriptor;

    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v1, v0, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 547
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/net/SocketImpl;->accept(Ljava/net/SocketImpl;)V

    .line 549
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 550
    .local v1, "security":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_3e

    .line 551
    invoke-virtual {v0}, Ljava/net/SocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 552
    invoke-virtual {v0}, Ljava/net/SocketImpl;->getPort()I

    move-result v3

    .line 551
    invoke-virtual {v1, v2, v3}, Ljava/lang/SecurityManager;->checkAccept(Ljava/lang/String;I)V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_3e} :catch_4e
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_3e} :catch_45

    .line 564
    .end local v1    # "security":Ljava/lang/SecurityManager;
    :cond_3e
    nop

    .line 565
    iput-object v0, p1, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 566
    invoke-virtual {p1}, Ljava/net/Socket;->postAccept()V

    .line 567
    return-void

    .line 559
    :catch_45
    move-exception v1

    .line 560
    .local v1, "e":Ljava/lang/SecurityException;
    if-eqz v0, :cond_4b

    .line 561
    invoke-virtual {v0}, Ljava/net/SocketImpl;->reset()V

    .line 562
    :cond_4b
    iput-object v0, p1, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 563
    throw v1

    .line 554
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_4e
    move-exception v1

    .line 555
    .local v1, "e":Ljava/io/IOException;
    if-eqz v0, :cond_54

    .line 556
    invoke-virtual {v0}, Ljava/net/SocketImpl;->reset()V

    .line 557
    :cond_54
    iput-object v0, p1, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 558
    throw v1
.end method

.method public whitelist test-api isBound()Z
    .registers 2

    .line 620
    iget-boolean v0, p0, Ljava/net/ServerSocket;->bound:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Ljava/net/ServerSocket;->oldImpl:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public whitelist test-api isClosed()Z
    .registers 3

    .line 630
    iget-object v0, p0, Ljava/net/ServerSocket;->closeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 631
    :try_start_3
    iget-boolean v1, p0, Ljava/net/ServerSocket;->closed:Z

    monitor-exit v0

    return v1

    .line 632
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method greylist-max-o setBound()V
    .registers 2

    .line 761
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/ServerSocket;->bound:Z

    .line 762
    return-void
.end method

.method greylist-max-o setCreated()V
    .registers 2

    .line 765
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/ServerSocket;->created:Z

    .line 766
    return-void
.end method

.method public whitelist test-api setPerformancePreferences(III)V
    .registers 4
    .param p1, "connectionTime"    # I
    .param p2, "latency"    # I
    .param p3, "bandwidth"    # I

    .line 923
    return-void
.end method

.method public declared-synchronized whitelist test-api setReceiveBufferSize(I)V
    .registers 5
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    .line 846
    if-lez p1, :cond_23

    .line 849
    :try_start_3
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_19

    .line 851
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    const/16 v1, 0x1002

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_21

    .line 852
    monitor-exit p0

    return-void

    .line 850
    .end local p0    # "this":Ljava/net/ServerSocket;
    :cond_19
    :try_start_19
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 845
    .end local p1    # "size":I
    :catchall_21
    move-exception p1

    goto :goto_2b

    .line 847
    .restart local p1    # "size":I
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "negative receive size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2b
    .catchall {:try_start_19 .. :try_end_2b} :catchall_21

    .line 845
    .end local p1    # "size":I
    :goto_2b
    monitor-exit p0

    throw p1
.end method

.method public whitelist test-api setReuseAddress(Z)V
    .registers 5
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 714
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_13

    .line 716
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 717
    return-void

    .line 715
    :cond_13
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized whitelist test-api setSoTimeout(I)V
    .registers 5
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    .line 652
    :try_start_1
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_17

    .line 654
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    const/16 v1, 0x1006

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_1f

    .line 655
    monitor-exit p0

    return-void

    .line 653
    .end local p0    # "this":Ljava/net/ServerSocket;
    :cond_17
    :try_start_17
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_1f

    .line 651
    .end local p1    # "timeout":I
    :catchall_1f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 749
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v0

    if-nez v0, :cond_9

    .line 750
    const-string v0, "ServerSocket[unbound]"

    return-object v0

    .line 752
    :cond_9
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 753
    invoke-static {}, Ljava/net/InetAddress;->getLoopbackAddress()Ljava/net/InetAddress;

    move-result-object v0

    .local v0, "in":Ljava/net/InetAddress;
    goto :goto_1a

    .line 755
    .end local v0    # "in":Ljava/net/InetAddress;
    :cond_14
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 756
    .restart local v0    # "in":Ljava/net/InetAddress;
    :goto_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServerSocket[addr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",localport="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    .line 757
    invoke-virtual {v2}, Ljava/net/SocketImpl;->getLocalPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 756
    return-object v1
.end method
