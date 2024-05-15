.class public Ljava/net/MulticastSocket;
.super Ljava/net/DatagramSocket;
.source "MulticastSocket.java"


# instance fields
.field private greylist-max-o infAddress:Ljava/net/InetAddress;

.field private greylist-max-o infLock:Ljava/lang/Object;

.field private greylist-max-o interfaceSet:Z

.field private greylist-max-o ttlLock:Ljava/lang/Object;


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    new-instance v0, Ljava/net/InetSocketAddress;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-direct {p0, v0}, Ljava/net/MulticastSocket;-><init>(Ljava/net/SocketAddress;)V

    .line 114
    return-void
.end method

.method public constructor whitelist test-api <init>(I)V
    .registers 3
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-direct {p0, v0}, Ljava/net/MulticastSocket;-><init>(Ljava/net/SocketAddress;)V

    .line 139
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/net/SocketAddress;)V
    .registers 4
    .param p1, "bindaddr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/net/SocketAddress;

    invoke-direct {p0, v1}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    .line 186
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ljava/net/MulticastSocket;->ttlLock:Ljava/lang/Object;

    .line 192
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ljava/net/MulticastSocket;->infLock:Ljava/lang/Object;

    .line 197
    iput-object v0, p0, Ljava/net/MulticastSocket;->infAddress:Ljava/net/InetAddress;

    .line 170
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/MulticastSocket;->setReuseAddress(Z)V

    .line 172
    if-eqz p1, :cond_35

    .line 174
    :try_start_1d
    invoke-virtual {p0, p1}, Ljava/net/MulticastSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_2a

    .line 176
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isBound()Z

    move-result v0

    if-nez v0, :cond_35

    .line 177
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->close()V

    goto :goto_35

    .line 176
    :catchall_2a
    move-exception v0

    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isBound()Z

    move-result v1

    if-nez v1, :cond_34

    .line 177
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->close()V

    .line 178
    :cond_34
    throw v0

    .line 180
    :cond_35
    :goto_35
    return-void
.end method


# virtual methods
.method public whitelist test-api getInterface()Ljava/net/InetAddress;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 493
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_50

    .line 496
    iget-object v0, p0, Ljava/net/MulticastSocket;->infLock:Ljava/lang/Object;

    monitor-enter v0

    .line 497
    nop

    .line 498
    :try_start_a
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 504
    .local v1, "ia":Ljava/net/InetAddress;
    iget-object v2, p0, Ljava/net/MulticastSocket;->infAddress:Ljava/net/InetAddress;

    if-nez v2, :cond_1c

    .line 505
    monitor-exit v0

    return-object v1

    .line 511
    :cond_1c
    invoke-virtual {v1, v2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 512
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_4d

    return-object v1

    .line 521
    :cond_24
    :try_start_24
    invoke-static {v1}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v2

    .line 522
    .local v2, "ni":Ljava/net/NetworkInterface;
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    .line 523
    .local v3, "addrs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :goto_2c
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_45

    .line 524
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 525
    .local v4, "addr":Ljava/net/InetAddress;
    iget-object v5, p0, Ljava/net/MulticastSocket;->infAddress:Ljava/net/InetAddress;

    invoke-virtual {v4, v5}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 526
    iget-object v5, p0, Ljava/net/MulticastSocket;->infAddress:Ljava/net/InetAddress;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_42} :catch_4a
    .catchall {:try_start_24 .. :try_end_42} :catchall_4d

    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_4d

    return-object v5

    .line 528
    .end local v4    # "addr":Ljava/net/InetAddress;
    :cond_44
    goto :goto_2c

    .line 534
    :cond_45
    const/4 v4, 0x0

    :try_start_46
    iput-object v4, p0, Ljava/net/MulticastSocket;->infAddress:Ljava/net/InetAddress;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_48} :catch_4a
    .catchall {:try_start_46 .. :try_end_48} :catchall_4d

    .line 535
    :try_start_48
    monitor-exit v0

    return-object v1

    .line 536
    .end local v2    # "ni":Ljava/net/NetworkInterface;
    .end local v3    # "addrs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :catch_4a
    move-exception v2

    .line 537
    .local v2, "e":Ljava/lang/Exception;
    monitor-exit v0

    return-object v1

    .line 539
    .end local v1    # "ia":Ljava/net/InetAddress;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_4d
    move-exception v1

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_48 .. :try_end_4f} :catchall_4d

    throw v1

    .line 494
    :cond_50
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getLoopbackMode()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 611
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

.method public whitelist test-api getNetworkInterface()Ljava/net/NetworkInterface;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 573
    nop

    .line 574
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 575
    .local v0, "niIndex":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_29

    .line 576
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/net/InetAddress;

    .line 577
    .local v1, "addrs":[Ljava/net/InetAddress;
    invoke-static {}, Ljava/net/InetAddress;->anyLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 578
    new-instance v2, Ljava/net/NetworkInterface;

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v3, v1}, Ljava/net/NetworkInterface;-><init>(Ljava/lang/String;I[Ljava/net/InetAddress;)V

    return-object v2

    .line 580
    .end local v1    # "addrs":[Ljava/net/InetAddress;
    :cond_29
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/net/NetworkInterface;->getByIndex(I)Ljava/net/NetworkInterface;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api getTTL()B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 263
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_f

    .line 265
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocketImpl;->getTTL()B

    move-result v0

    return v0

    .line 264
    :cond_f
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getTimeToLive()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_f

    .line 279
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocketImpl;->getTimeToLive()I

    move-result v0

    return v0

    .line 278
    :cond_f
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api joinGroup(Ljava/net/InetAddress;)V
    .registers 5
    .param p1, "mcastaddr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_37

    .line 305
    const-string v0, "joinGroup"

    invoke-virtual {p0, p1, v0}, Ljava/net/MulticastSocket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 306
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 307
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_14

    .line 308
    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;)V

    .line 311
    :cond_14
    invoke-virtual {p1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 319
    invoke-static {}, Ljava/net/NetworkInterface;->getDefault()Ljava/net/NetworkInterface;

    move-result-object v1

    .line 321
    .local v1, "defaultInterface":Ljava/net/NetworkInterface;
    iget-boolean v2, p0, Ljava/net/MulticastSocket;->interfaceSet:Z

    if-nez v2, :cond_27

    if-eqz v1, :cond_27

    .line 322
    invoke-virtual {p0, v1}, Ljava/net/MulticastSocket;->setNetworkInterface(Ljava/net/NetworkInterface;)V

    .line 325
    :cond_27
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/net/DatagramSocketImpl;->join(Ljava/net/InetAddress;)V

    .line 326
    return-void

    .line 312
    .end local v1    # "defaultInterface":Ljava/net/NetworkInterface;
    :cond_2f
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Not a multicast address"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 302
    .end local v0    # "security":Ljava/lang/SecurityManager;
    :cond_37
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api joinGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .registers 6
    .param p1, "mcastaddr"    # Ljava/net/SocketAddress;
    .param p2, "netIf"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 389
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_57

    .line 392
    if-eqz p1, :cond_4f

    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_4f

    .line 395
    iget-boolean v0, p0, Ljava/net/MulticastSocket;->oldImpl:Z

    if-nez v0, :cond_49

    .line 398
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    const-string v1, "joinGroup"

    invoke-virtual {p0, v0, v1}, Ljava/net/MulticastSocket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 399
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 400
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_2c

    .line 401
    move-object v1, p1

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;)V

    .line 404
    :cond_2c
    move-object v1, p1

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 408
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/net/DatagramSocketImpl;->joinGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V

    .line 409
    return-void

    .line 405
    :cond_41
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Not a multicast address"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 396
    .end local v0    # "security":Ljava/lang/SecurityManager;
    :cond_49
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 393
    :cond_4f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported address type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :cond_57
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api leaveGroup(Ljava/net/InetAddress;)V
    .registers 5
    .param p1, "mcastaddr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 346
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 350
    const-string v0, "leaveGroup"

    invoke-virtual {p0, p1, v0}, Ljava/net/MulticastSocket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 351
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 352
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_14

    .line 353
    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;)V

    .line 356
    :cond_14
    invoke-virtual {p1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 360
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/net/DatagramSocketImpl;->leave(Ljava/net/InetAddress;)V

    .line 361
    return-void

    .line 357
    :cond_22
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Not a multicast address"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 347
    .end local v0    # "security":Ljava/lang/SecurityManager;
    :cond_2a
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api leaveGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .registers 6
    .param p1, "mcastaddr"    # Ljava/net/SocketAddress;
    .param p2, "netIf"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 436
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_57

    .line 439
    if-eqz p1, :cond_4f

    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_4f

    .line 442
    iget-boolean v0, p0, Ljava/net/MulticastSocket;->oldImpl:Z

    if-nez v0, :cond_49

    .line 445
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    const-string v1, "leaveGroup"

    invoke-virtual {p0, v0, v1}, Ljava/net/MulticastSocket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 446
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 447
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_2c

    .line 448
    move-object v1, p1

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;)V

    .line 451
    :cond_2c
    move-object v1, p1

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 455
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/net/DatagramSocketImpl;->leaveGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V

    .line 456
    return-void

    .line 452
    :cond_41
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Not a multicast address"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 443
    .end local v0    # "security":Ljava/lang/SecurityManager;
    :cond_49
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 440
    :cond_4f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported address type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 437
    :cond_57
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api send(Ljava/net/DatagramPacket;B)V
    .registers 7
    .param p1, "p"    # Ljava/net/DatagramPacket;
    .param p2, "ttl"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 664
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_9c

    .line 666
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    const-string v1, "send"

    invoke-virtual {p0, v0, v1}, Ljava/net/MulticastSocket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 667
    iget-object v0, p0, Ljava/net/MulticastSocket;->ttlLock:Ljava/lang/Object;

    monitor-enter v0

    .line 668
    :try_start_12
    monitor-enter p1
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_99

    .line 669
    :try_start_13
    iget v1, p0, Ljava/net/MulticastSocket;->connectState:I

    if-nez v1, :cond_3f

    .line 673
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 674
    .local v1, "security":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_3e

    .line 675
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 676
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;B)V

    goto :goto_3e

    .line 678
    :cond_2f
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 679
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v3

    .line 678
    invoke-virtual {v1, v2, v3}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 682
    .end local v1    # "security":Ljava/lang/SecurityManager;
    :cond_3e
    :goto_3e
    goto :goto_62

    .line 684
    :cond_3f
    const/4 v1, 0x0

    .line 685
    .local v1, "packetAddress":Ljava/net/InetAddress;
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    move-object v1, v2

    .line 686
    if-nez v1, :cond_52

    .line 687
    iget-object v2, p0, Ljava/net/MulticastSocket;->connectedAddress:Ljava/net/InetAddress;

    invoke-virtual {p1, v2}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 688
    iget v2, p0, Ljava/net/MulticastSocket;->connectedPort:I

    invoke-virtual {p1, v2}, Ljava/net/DatagramPacket;->setPort(I)V

    goto :goto_62

    .line 689
    :cond_52
    iget-object v2, p0, Ljava/net/MulticastSocket;->connectedAddress:Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 690
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v2

    iget v3, p0, Ljava/net/MulticastSocket;->connectedPort:I

    if-ne v2, v3, :cond_8e

    .line 695
    .end local v1    # "packetAddress":Ljava/net/InetAddress;
    :goto_62
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getTTL()B

    move-result v1
    :try_end_66
    .catchall {:try_start_13 .. :try_end_66} :catchall_96

    .line 697
    .local v1, "dttl":B
    if-eq p2, v1, :cond_6f

    .line 699
    :try_start_68
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/net/DatagramSocketImpl;->setTTL(B)V

    .line 702
    :cond_6f
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/net/DatagramSocketImpl;->send(Ljava/net/DatagramPacket;)V
    :try_end_76
    .catchall {:try_start_68 .. :try_end_76} :catchall_82

    .line 705
    if-eq p2, v1, :cond_7f

    .line 706
    :try_start_78
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/net/DatagramSocketImpl;->setTTL(B)V

    .line 709
    .end local v1    # "dttl":B
    :cond_7f
    monitor-exit p1
    :try_end_80
    .catchall {:try_start_78 .. :try_end_80} :catchall_96

    .line 710
    :try_start_80
    monitor-exit v0
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_99

    .line 711
    return-void

    .line 705
    .restart local v1    # "dttl":B
    :catchall_82
    move-exception v2

    if-eq p2, v1, :cond_8c

    .line 706
    :try_start_85
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/net/DatagramSocketImpl;->setTTL(B)V

    .line 708
    :cond_8c
    nop

    .end local p0    # "this":Ljava/net/MulticastSocket;
    .end local p1    # "p":Ljava/net/DatagramPacket;
    .end local p2    # "ttl":B
    throw v2

    .line 691
    .local v1, "packetAddress":Ljava/net/InetAddress;
    .restart local p0    # "this":Ljava/net/MulticastSocket;
    .restart local p1    # "p":Ljava/net/DatagramPacket;
    .restart local p2    # "ttl":B
    :cond_8e
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "connected address and packet address differ"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/net/MulticastSocket;
    .end local p1    # "p":Ljava/net/DatagramPacket;
    .end local p2    # "ttl":B
    throw v2

    .line 709
    .end local v1    # "packetAddress":Ljava/net/InetAddress;
    .restart local p0    # "this":Ljava/net/MulticastSocket;
    .restart local p1    # "p":Ljava/net/DatagramPacket;
    .restart local p2    # "ttl":B
    :catchall_96
    move-exception v1

    monitor-exit p1
    :try_end_98
    .catchall {:try_start_85 .. :try_end_98} :catchall_96

    .end local p0    # "this":Ljava/net/MulticastSocket;
    .end local p1    # "p":Ljava/net/DatagramPacket;
    .end local p2    # "ttl":B
    :try_start_98
    throw v1

    .line 710
    .restart local p0    # "this":Ljava/net/MulticastSocket;
    .restart local p1    # "p":Ljava/net/DatagramPacket;
    .restart local p2    # "ttl":B
    :catchall_99
    move-exception v1

    monitor-exit v0
    :try_end_9b
    .catchall {:try_start_98 .. :try_end_9b} :catchall_99

    throw v1

    .line 665
    :cond_9c
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setInterface(Ljava/net/InetAddress;)V
    .registers 5
    .param p1, "inf"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 468
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_21

    .line 471
    const-string v0, "setInterface"

    invoke-virtual {p0, p1, v0}, Ljava/net/MulticastSocket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Ljava/net/MulticastSocket;->infLock:Ljava/lang/Object;

    monitor-enter v0

    .line 473
    :try_start_e
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2, p1}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 474
    iput-object p1, p0, Ljava/net/MulticastSocket;->infAddress:Ljava/net/InetAddress;

    .line 475
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/net/MulticastSocket;->interfaceSet:Z

    .line 476
    monitor-exit v0

    .line 477
    return-void

    .line 476
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_e .. :try_end_20} :catchall_1e

    throw v1

    .line 469
    :cond_21
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setLoopbackMode(Z)V
    .registers 5
    .param p1, "disable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 599
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x12

    invoke-virtual {v0, v2, v1}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 600
    return-void
.end method

.method public whitelist test-api setNetworkInterface(Ljava/net/NetworkInterface;)V
    .registers 5
    .param p1, "netIf"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 555
    iget-object v0, p0, Ljava/net/MulticastSocket;->infLock:Ljava/lang/Object;

    monitor-enter v0

    .line 556
    :try_start_3
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v1

    const/16 v2, 0x1f

    invoke-virtual {v1, v2, p1}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 557
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/net/MulticastSocket;->infAddress:Ljava/net/InetAddress;

    .line 558
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/net/MulticastSocket;->interfaceSet:Z

    .line 559
    monitor-exit v0

    .line 560
    return-void

    .line 559
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public whitelist test-api setTTL(B)V
    .registers 4
    .param p1, "ttl"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 217
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_e

    .line 219
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocketImpl;->setTTL(B)V

    .line 220
    return-void

    .line 218
    :cond_e
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setTimeToLive(I)V
    .registers 4
    .param p1, "ttl"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    if-ltz p1, :cond_1c

    const/16 v0, 0xff

    if-gt p1, v0, :cond_1c

    .line 245
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_14

    .line 247
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocketImpl;->setTimeToLive(I)V

    .line 248
    return-void

    .line 246
    :cond_14
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ttl out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
