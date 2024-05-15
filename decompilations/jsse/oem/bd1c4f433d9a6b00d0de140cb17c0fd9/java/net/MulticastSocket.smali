.class public Ljava/net/MulticastSocket;
.super Ljava/net/DatagramSocket;
.source "MulticastSocket.java"


# instance fields
.field private infAddress:Ljava/net/InetAddress;

.field private infLock:Ljava/lang/Object;

.field private interfaceSet:Z

.field private ttlLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    new-instance v0, Ljava/net/InetSocketAddress;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-direct {p0, v0}, Ljava/net/MulticastSocket;-><init>(Ljava/net/SocketAddress;)V

    .line 112
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-direct {p0, v0}, Ljava/net/MulticastSocket;-><init>(Ljava/net/SocketAddress;)V

    .line 137
    return-void
.end method

.method public constructor <init>(Ljava/net/SocketAddress;)V
    .registers 4
    .param p1, "bindaddr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    move-object v0, v1

    .line 165
    check-cast v0, Ljava/net/SocketAddress;

    invoke-direct {p0, v0}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    .line 184
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/net/MulticastSocket;->ttlLock:Ljava/lang/Object;

    .line 190
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/net/MulticastSocket;->infLock:Ljava/lang/Object;

    .line 195
    iput-object v1, p0, Ljava/net/MulticastSocket;->infAddress:Ljava/net/InetAddress;

    .line 168
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/MulticastSocket;->setReuseAddress(Z)V

    .line 170
    if-eqz p1, :cond_29

    .line 172
    :try_start_1d
    invoke-virtual {p0, p1}, Ljava/net/MulticastSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_2a

    .line 174
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isBound()Z

    move-result v0

    if-nez v0, :cond_29

    .line 175
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->close()V

    .line 178
    :cond_29
    return-void

    .line 173
    :catchall_2a
    move-exception v0

    .line 174
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isBound()Z

    move-result v1

    if-nez v1, :cond_34

    .line 175
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->close()V

    .line 173
    :cond_34
    throw v0
.end method


# virtual methods
.method public getInterface()Ljava/net/InetAddress;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 491
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 492
    new-instance v5, Ljava/net/SocketException;

    const-string/jumbo v6, "Socket is closed"

    invoke-direct {v5, v6}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 494
    :cond_f
    iget-object v6, p0, Ljava/net/MulticastSocket;->infLock:Ljava/lang/Object;

    monitor-enter v6

    .line 496
    :try_start_12
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v5

    const/16 v7, 0x10

    invoke-virtual {v5, v7}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 502
    .local v3, "ia":Ljava/net/InetAddress;
    iget-object v5, p0, Ljava/net/MulticastSocket;->infAddress:Ljava/net/InetAddress;
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_56

    if-nez v5, :cond_24

    monitor-exit v6

    .line 503
    return-object v3

    .line 509
    :cond_24
    :try_start_24
    iget-object v5, p0, Ljava/net/MulticastSocket;->infAddress:Ljava/net/InetAddress;

    invoke-virtual {v3, v5}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_56

    move-result v5

    if-eqz v5, :cond_2e

    monitor-exit v6

    .line 510
    return-object v3

    .line 519
    :cond_2e
    :try_start_2e
    invoke-static {v3}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v4

    .line 520
    .local v4, "ni":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .line 521
    .local v1, "addrs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_36
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 522
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 523
    .local v0, "addr":Ljava/net/InetAddress;
    iget-object v5, p0, Ljava/net/MulticastSocket;->infAddress:Ljava/net/InetAddress;

    invoke-virtual {v0, v5}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 524
    iget-object v5, p0, Ljava/net/MulticastSocket;->infAddress:Ljava/net/InetAddress;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_4c} :catch_53
    .catchall {:try_start_2e .. :try_end_4c} :catchall_56

    monitor-exit v6

    return-object v5

    .line 532
    .end local v0    # "addr":Ljava/net/InetAddress;
    :cond_4e
    const/4 v5, 0x0

    :try_start_4f
    iput-object v5, p0, Ljava/net/MulticastSocket;->infAddress:Ljava/net/InetAddress;
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_51} :catch_53
    .catchall {:try_start_4f .. :try_end_51} :catchall_56

    monitor-exit v6

    .line 533
    return-object v3

    .line 534
    .end local v1    # "addrs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v4    # "ni":Ljava/net/NetworkInterface;
    :catch_53
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    monitor-exit v6

    .line 535
    return-object v3

    .line 494
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "ia":Ljava/net/InetAddress;
    :catchall_56
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public getLoopbackMode()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 608
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getNetworkInterface()Ljava/net/NetworkInterface;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 571
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v2

    const/16 v3, 0x1f

    invoke-virtual {v2, v3}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 572
    .local v1, "niIndex":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_28

    .line 573
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/net/InetAddress;

    .line 574
    .local v0, "addrs":[Ljava/net/InetAddress;
    invoke-static {}, Ljava/net/InetAddress;->anyLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    aput-object v2, v0, v4

    .line 575
    new-instance v2, Ljava/net/NetworkInterface;

    aget-object v3, v0, v4

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v4, v0}, Ljava/net/NetworkInterface;-><init>(Ljava/lang/String;I[Ljava/net/InetAddress;)V

    return-object v2

    .line 577
    .end local v0    # "addrs":[Ljava/net/InetAddress;
    :cond_28
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/net/NetworkInterface;->getByIndex(I)Ljava/net/NetworkInterface;

    move-result-object v2

    return-object v2
.end method

.method public getTTL()B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 261
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 262
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_f
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocketImpl;->getTTL()B

    move-result v0

    return v0
.end method

.method public getTimeToLive()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 275
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 276
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_f
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocketImpl;->getTimeToLive()I

    move-result v0

    return v0
.end method

.method public joinGroup(Ljava/net/InetAddress;)V
    .registers 6
    .param p1, "mcastaddr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 300
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v3, "Socket is closed"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 303
    :cond_f
    const-string/jumbo v2, "joinGroup"

    invoke-virtual {p0, p1, v2}, Ljava/net/MulticastSocket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 304
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 305
    .local v1, "security":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_1e

    .line 306
    invoke-virtual {v1, p1}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;)V

    .line 309
    :cond_1e
    invoke-virtual {p1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v2

    if-nez v2, :cond_2d

    .line 310
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v3, "Not a multicast address"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 317
    :cond_2d
    invoke-static {}, Ljava/net/NetworkInterface;->getDefault()Ljava/net/NetworkInterface;

    move-result-object v0

    .line 319
    .local v0, "defaultInterface":Ljava/net/NetworkInterface;
    iget-boolean v2, p0, Ljava/net/MulticastSocket;->interfaceSet:Z

    if-nez v2, :cond_3a

    if-eqz v0, :cond_3a

    .line 320
    invoke-virtual {p0, v0}, Ljava/net/MulticastSocket;->setNetworkInterface(Ljava/net/NetworkInterface;)V

    .line 323
    :cond_3a
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/net/DatagramSocketImpl;->join(Ljava/net/InetAddress;)V

    .line 324
    return-void
.end method

.method public joinGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .registers 6
    .param p1, "mcastaddr"    # Ljava/net/SocketAddress;
    .param p2, "netIf"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 387
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 388
    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v2, "Socket is closed"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 390
    :cond_f
    if-eqz p1, :cond_17

    instance-of v1, p1, Ljava/net/InetSocketAddress;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_20

    .line 391
    :cond_17
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Unsupported address type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 393
    :cond_20
    iget-boolean v1, p0, Ljava/net/MulticastSocket;->oldImpl:Z

    if-eqz v1, :cond_2a

    .line 394
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    :cond_2a
    move-object v1, p1

    .line 396
    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    const-string/jumbo v2, "joinGroup"

    invoke-virtual {p0, v1, v2}, Ljava/net/MulticastSocket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 397
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 398
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_47

    move-object v1, p1

    .line 399
    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;)V

    :cond_47
    move-object v1, p1

    .line 402
    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v1

    if-nez v1, :cond_5d

    .line 403
    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v2, "Not a multicast address"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 406
    :cond_5d
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/net/DatagramSocketImpl;->joinGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V

    .line 407
    return-void
.end method

.method public leaveGroup(Ljava/net/InetAddress;)V
    .registers 5
    .param p1, "mcastaddr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 344
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 345
    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v2, "Socket is closed"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 348
    :cond_f
    const-string/jumbo v1, "leaveGroup"

    invoke-virtual {p0, p1, v1}, Ljava/net/MulticastSocket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 349
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 350
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1e

    .line 351
    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;)V

    .line 354
    :cond_1e
    invoke-virtual {p1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v1

    if-nez v1, :cond_2d

    .line 355
    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v2, "Not a multicast address"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 358
    :cond_2d
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/net/DatagramSocketImpl;->leave(Ljava/net/InetAddress;)V

    .line 359
    return-void
.end method

.method public leaveGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .registers 6
    .param p1, "mcastaddr"    # Ljava/net/SocketAddress;
    .param p2, "netIf"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 434
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 435
    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v2, "Socket is closed"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 437
    :cond_f
    if-eqz p1, :cond_17

    instance-of v1, p1, Ljava/net/InetSocketAddress;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_20

    .line 438
    :cond_17
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Unsupported address type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 440
    :cond_20
    iget-boolean v1, p0, Ljava/net/MulticastSocket;->oldImpl:Z

    if-eqz v1, :cond_2a

    .line 441
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    :cond_2a
    move-object v1, p1

    .line 443
    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    const-string/jumbo v2, "leaveGroup"

    invoke-virtual {p0, v1, v2}, Ljava/net/MulticastSocket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 444
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 445
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_47

    move-object v1, p1

    .line 446
    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;)V

    :cond_47
    move-object v1, p1

    .line 449
    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v1

    if-nez v1, :cond_5d

    .line 450
    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v2, "Not a multicast address"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 453
    :cond_5d
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/net/DatagramSocketImpl;->leaveGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V

    .line 454
    return-void
.end method

.method public send(Ljava/net/DatagramPacket;B)V
    .registers 9
    .param p1, "p"    # Ljava/net/DatagramPacket;
    .param p2, "ttl"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 661
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 662
    new-instance v3, Ljava/net/SocketException;

    const-string/jumbo v4, "Socket is closed"

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 663
    :cond_f
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    const-string/jumbo v4, "send"

    invoke-virtual {p0, v3, v4}, Ljava/net/MulticastSocket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 664
    iget-object v4, p0, Ljava/net/MulticastSocket;->ttlLock:Ljava/lang/Object;

    monitor-enter v4

    .line 665
    :try_start_1c
    monitor-enter p1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_6b

    .line 666
    :try_start_1d
    iget v3, p0, Ljava/net/MulticastSocket;->connectState:I

    if-nez v3, :cond_6e

    .line 670
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 671
    .local v2, "security":Ljava/lang/SecurityManager;
    if-eqz v2, :cond_38

    .line 672
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v3

    if-eqz v3, :cond_58

    .line 673
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;B)V

    .line 692
    .end local v2    # "security":Ljava/lang/SecurityManager;
    :cond_38
    :goto_38
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getTTL()B
    :try_end_3b
    .catchall {:try_start_1d .. :try_end_3b} :catchall_68

    move-result v0

    .line 694
    .local v0, "dttl":B
    if-eq p2, v0, :cond_45

    .line 696
    :try_start_3e
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/net/DatagramSocketImpl;->setTTL(B)V

    .line 699
    :cond_45
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/net/DatagramSocketImpl;->send(Ljava/net/DatagramPacket;)V
    :try_end_4c
    .catchall {:try_start_3e .. :try_end_4c} :catchall_99

    .line 702
    if-eq p2, v0, :cond_55

    .line 703
    :try_start_4e
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/net/DatagramSocketImpl;->setTTL(B)V
    :try_end_55
    .catchall {:try_start_4e .. :try_end_55} :catchall_68

    :cond_55
    :try_start_55
    monitor-exit p1
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_6b

    monitor-exit v4

    .line 708
    return-void

    .line 675
    .end local v0    # "dttl":B
    .restart local v2    # "security":Ljava/lang/SecurityManager;
    :cond_58
    :try_start_58
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 676
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v5

    .line 675
    invoke-virtual {v2, v3, v5}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V
    :try_end_67
    .catchall {:try_start_58 .. :try_end_67} :catchall_68

    goto :goto_38

    .line 665
    .end local v2    # "security":Ljava/lang/SecurityManager;
    :catchall_68
    move-exception v3

    :try_start_69
    monitor-exit p1

    throw v3
    :try_end_6b
    .catchall {:try_start_69 .. :try_end_6b} :catchall_6b

    .line 664
    :catchall_6b
    move-exception v3

    monitor-exit v4

    throw v3

    .line 681
    :cond_6e
    const/4 v1, 0x0

    .line 682
    .local v1, "packetAddress":Ljava/net/InetAddress;
    :try_start_6f
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 683
    .local v1, "packetAddress":Ljava/net/InetAddress;
    if-nez v1, :cond_80

    .line 684
    iget-object v3, p0, Ljava/net/MulticastSocket;->connectedAddress:Ljava/net/InetAddress;

    invoke-virtual {p1, v3}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 685
    iget v3, p0, Ljava/net/MulticastSocket;->connectedPort:I

    invoke-virtual {p1, v3}, Ljava/net/DatagramPacket;->setPort(I)V

    goto :goto_38

    .line 686
    :cond_80
    iget-object v3, p0, Ljava/net/MulticastSocket;->connectedAddress:Ljava/net/InetAddress;

    invoke-virtual {v1, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_90

    .line 687
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v3

    iget v5, p0, Ljava/net/MulticastSocket;->connectedPort:I

    if-eq v3, v5, :cond_38

    .line 688
    :cond_90
    new-instance v3, Ljava/lang/SecurityException;

    const-string/jumbo v5, "connected address and packet address differ"

    invoke-direct {v3, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 700
    .end local v1    # "packetAddress":Ljava/net/InetAddress;
    .restart local v0    # "dttl":B
    :catchall_99
    move-exception v3

    .line 702
    if-eq p2, v0, :cond_a3

    .line 703
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/net/DatagramSocketImpl;->setTTL(B)V

    .line 700
    :cond_a3
    throw v3
    :try_end_a4
    .catchall {:try_start_6f .. :try_end_a4} :catchall_68
.end method

.method public setInterface(Ljava/net/InetAddress;)V
    .registers 5
    .param p1, "inf"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 466
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 467
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 469
    :cond_f
    const-string/jumbo v0, "setInterface"

    invoke-virtual {p0, p1, v0}, Ljava/net/MulticastSocket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 470
    iget-object v1, p0, Ljava/net/MulticastSocket;->infLock:Ljava/lang/Object;

    monitor-enter v1

    .line 471
    :try_start_18
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    const/16 v2, 0x10

    invoke-virtual {v0, v2, p1}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 472
    iput-object p1, p0, Ljava/net/MulticastSocket;->infAddress:Ljava/net/InetAddress;

    .line 473
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/MulticastSocket;->interfaceSet:Z
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_28

    monitor-exit v1

    .line 475
    return-void

    .line 470
    :catchall_28
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setLoopbackMode(Z)V
    .registers 5
    .param p1, "disable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 596
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x12

    invoke-virtual {v0, v2, v1}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 597
    return-void
.end method

.method public setNetworkInterface(Ljava/net/NetworkInterface;)V
    .registers 5
    .param p1, "netIf"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 553
    iget-object v1, p0, Ljava/net/MulticastSocket;->infLock:Ljava/lang/Object;

    monitor-enter v1

    .line 554
    :try_start_3
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    const/16 v2, 0x1f

    invoke-virtual {v0, v2, p1}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 555
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/MulticastSocket;->infAddress:Ljava/net/InetAddress;

    .line 556
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/MulticastSocket;->interfaceSet:Z
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    monitor-exit v1

    .line 558
    return-void

    .line 553
    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setTTL(B)V
    .registers 4
    .param p1, "ttl"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 215
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 216
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_f
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocketImpl;->setTTL(B)V

    .line 218
    return-void
.end method

.method public setTimeToLive(I)V
    .registers 4
    .param p1, "ttl"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    if-ltz p1, :cond_6

    const/16 v0, 0xff

    if-le p1, v0, :cond_f

    .line 241
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ttl out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_f
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 244
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_1e
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocketImpl;->setTimeToLive(I)V

    .line 246
    return-void
.end method
