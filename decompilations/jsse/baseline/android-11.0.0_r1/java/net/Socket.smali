.class public Ljava/net/Socket;
.super Ljava/lang/Object;
.source "Socket.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static greylist factory:Ljava/net/SocketImplFactory;


# instance fields
.field private greylist-max-o bound:Z

.field private greylist-max-o closeLock:Ljava/lang/Object;

.field private greylist-max-o closed:Z

.field private greylist-max-o connected:Z

.field private greylist-max-o created:Z

.field greylist impl:Ljava/net/SocketImpl;

.field private greylist-max-o oldImpl:Z

.field private greylist-max-o shutIn:Z

.field private greylist-max-o shutOut:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1692
    const/4 v0, 0x0

    sput-object v0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>()V
    .registers 3

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/Socket;->created:Z

    .line 61
    iput-boolean v0, p0, Ljava/net/Socket;->bound:Z

    .line 62
    iput-boolean v0, p0, Ljava/net/Socket;->connected:Z

    .line 63
    iput-boolean v0, p0, Ljava/net/Socket;->closed:Z

    .line 64
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ljava/net/Socket;->closeLock:Ljava/lang/Object;

    .line 65
    iput-boolean v0, p0, Ljava/net/Socket;->shutIn:Z

    .line 66
    iput-boolean v0, p0, Ljava/net/Socket;->shutOut:Z

    .line 76
    iput-boolean v0, p0, Ljava/net/Socket;->oldImpl:Z

    .line 86
    invoke-virtual {p0}, Ljava/net/Socket;->setImpl()V

    .line 87
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/String;I)V
    .registers 6
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    const/4 v1, 0x0

    check-cast v1, Ljava/net/SocketAddress;

    const/4 v2, 0x1

    invoke-direct {p0, v0, p2, v1, v2}, Ljava/net/Socket;-><init>([Ljava/net/InetAddress;ILjava/net/SocketAddress;Z)V

    .line 219
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/String;ILjava/net/InetAddress;I)V
    .registers 8
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "localAddr"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p3, p4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    const/4 v2, 0x1

    invoke-direct {p0, v0, p2, v1, v2}, Ljava/net/Socket;-><init>([Ljava/net/InetAddress;ILjava/net/SocketAddress;Z)V

    .line 294
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/String;IZ)V
    .registers 6
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "stream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 382
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    const/4 v1, 0x0

    check-cast v1, Ljava/net/SocketAddress;

    invoke-direct {p0, v0, p2, v1, p3}, Ljava/net/Socket;-><init>([Ljava/net/InetAddress;ILjava/net/SocketAddress;Z)V

    .line 383
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/net/InetAddress;I)V
    .registers 6
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    invoke-static {p1}, Ljava/net/Socket;->nonNullAddress(Ljava/net/InetAddress;)[Ljava/net/InetAddress;

    move-result-object v0

    const/4 v1, 0x0

    check-cast v1, Ljava/net/SocketAddress;

    const/4 v2, 0x1

    invoke-direct {p0, v0, p2, v1, v2}, Ljava/net/Socket;-><init>([Ljava/net/InetAddress;ILjava/net/SocketAddress;Z)V

    .line 251
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V
    .registers 8
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "localAddr"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 334
    invoke-static {p1}, Ljava/net/Socket;->nonNullAddress(Ljava/net/InetAddress;)[Ljava/net/InetAddress;

    move-result-object v0

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p3, p4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    const/4 v2, 0x1

    invoke-direct {p0, v0, p2, v1, v2}, Ljava/net/Socket;-><init>([Ljava/net/InetAddress;ILjava/net/SocketAddress;Z)V

    .line 336
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/net/InetAddress;IZ)V
    .registers 7
    .param p1, "host"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "stream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 424
    invoke-static {p1}, Ljava/net/Socket;->nonNullAddress(Ljava/net/InetAddress;)[Ljava/net/InetAddress;

    move-result-object v0

    new-instance v1, Ljava/net/InetSocketAddress;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-direct {p0, v0, p2, v1, p3}, Ljava/net/Socket;-><init>([Ljava/net/InetAddress;ILjava/net/SocketAddress;Z)V

    .line 425
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/net/Proxy;)V
    .registers 9
    .param p1, "proxy"    # Ljava/net/Proxy;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/Socket;->created:Z

    .line 61
    iput-boolean v0, p0, Ljava/net/Socket;->bound:Z

    .line 62
    iput-boolean v0, p0, Ljava/net/Socket;->connected:Z

    .line 63
    iput-boolean v0, p0, Ljava/net/Socket;->closed:Z

    .line 64
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ljava/net/Socket;->closeLock:Ljava/lang/Object;

    .line 65
    iput-boolean v0, p0, Ljava/net/Socket;->shutIn:Z

    .line 66
    iput-boolean v0, p0, Ljava/net/Socket;->shutOut:Z

    .line 76
    iput-boolean v0, p0, Ljava/net/Socket;->oldImpl:Z

    .line 119
    const-string v0, "Invalid Proxy"

    if-eqz p1, :cond_a9

    .line 122
    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    if-ne p1, v1, :cond_24

    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    goto :goto_28

    .line 123
    :cond_24
    invoke-static {p1}, Lsun/net/ApplicationProxy;->create(Ljava/net/Proxy;)Lsun/net/ApplicationProxy;

    move-result-object v1

    :goto_28
    nop

    .line 124
    .local v1, "p":Ljava/net/Proxy;
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    .line 127
    .local v2, "type":Ljava/net/Proxy$Type;
    sget-object v3, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v2, v3, :cond_8c

    .line 128
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 129
    .local v0, "security":Ljava/lang/SecurityManager;
    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v3

    check-cast v3, Ljava/net/InetSocketAddress;

    .line 130
    .local v3, "epoint":Ljava/net/InetSocketAddress;
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    if-eqz v4, :cond_4a

    .line 131
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    const-string v5, "Socket"

    invoke-direct {p0, v4, v5}, Ljava/net/Socket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 133
    :cond_4a
    if-eqz v0, :cond_81

    .line 134
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v4

    if-eqz v4, :cond_60

    .line 135
    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v6

    invoke-direct {v4, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    move-object v3, v4

    .line 136
    :cond_60
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v4

    if-eqz v4, :cond_72

    .line 137
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    goto :goto_81

    .line 139
    :cond_72
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    .line 140
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    .line 139
    invoke-virtual {v0, v4, v5}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 145
    :cond_81
    :goto_81
    new-instance v4, Ljava/net/SocksSocketImpl;

    invoke-direct {v4, v1}, Ljava/net/SocksSocketImpl;-><init>(Ljava/net/Proxy;)V

    iput-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 146
    invoke-virtual {v4, p0}, Ljava/net/SocketImpl;->setSocket(Ljava/net/Socket;)V

    .line 147
    .end local v0    # "security":Ljava/lang/SecurityManager;
    .end local v3    # "epoint":Ljava/net/InetSocketAddress;
    goto :goto_a2

    .line 148
    :cond_8c
    sget-object v3, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    if-ne v1, v3, :cond_a3

    .line 149
    sget-object v0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    if-nez v0, :cond_9f

    .line 150
    new-instance v0, Ljava/net/PlainSocketImpl;

    invoke-direct {v0}, Ljava/net/PlainSocketImpl;-><init>()V

    iput-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 151
    invoke-virtual {v0, p0}, Ljava/net/SocketImpl;->setSocket(Ljava/net/Socket;)V

    goto :goto_a2

    .line 153
    :cond_9f
    invoke-virtual {p0}, Ljava/net/Socket;->setImpl()V

    .line 157
    :goto_a2
    return-void

    .line 155
    :cond_a3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 120
    .end local v1    # "p":Ljava/net/Proxy;
    .end local v2    # "type":Ljava/net/Proxy$Type;
    :cond_a9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected constructor whitelist core-platform-api test-api <init>(Ljava/net/SocketImpl;)V
    .registers 4
    .param p1, "impl"    # Ljava/net/SocketImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/Socket;->created:Z

    .line 61
    iput-boolean v0, p0, Ljava/net/Socket;->bound:Z

    .line 62
    iput-boolean v0, p0, Ljava/net/Socket;->connected:Z

    .line 63
    iput-boolean v0, p0, Ljava/net/Socket;->closed:Z

    .line 64
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ljava/net/Socket;->closeLock:Ljava/lang/Object;

    .line 65
    iput-boolean v0, p0, Ljava/net/Socket;->shutIn:Z

    .line 66
    iput-boolean v0, p0, Ljava/net/Socket;->shutOut:Z

    .line 76
    iput-boolean v0, p0, Ljava/net/Socket;->oldImpl:Z

    .line 171
    iput-object p1, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 172
    if-eqz p1, :cond_25

    .line 173
    invoke-direct {p0}, Ljava/net/Socket;->checkOldImpl()V

    .line 174
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0, p0}, Ljava/net/SocketImpl;->setSocket(Ljava/net/Socket;)V

    .line 176
    :cond_25
    return-void
.end method

.method private constructor greylist-max-o <init>([Ljava/net/InetAddress;ILjava/net/SocketAddress;Z)V
    .registers 10
    .param p1, "addresses"    # [Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "localAddr"    # Ljava/net/SocketAddress;
    .param p4, "stream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/Socket;->created:Z

    .line 61
    iput-boolean v0, p0, Ljava/net/Socket;->bound:Z

    .line 62
    iput-boolean v0, p0, Ljava/net/Socket;->connected:Z

    .line 63
    iput-boolean v0, p0, Ljava/net/Socket;->closed:Z

    .line 64
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ljava/net/Socket;->closeLock:Ljava/lang/Object;

    .line 65
    iput-boolean v0, p0, Ljava/net/Socket;->shutIn:Z

    .line 66
    iput-boolean v0, p0, Ljava/net/Socket;->shutOut:Z

    .line 76
    iput-boolean v0, p0, Ljava/net/Socket;->oldImpl:Z

    .line 438
    if-eqz p1, :cond_58

    array-length v1, p1

    if-eqz v1, :cond_58

    .line 442
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1f
    array-length v2, p1

    if-ge v1, v2, :cond_57

    .line 443
    invoke-virtual {p0}, Ljava/net/Socket;->setImpl()V

    .line 445
    :try_start_25
    new-instance v2, Ljava/net/InetSocketAddress;

    aget-object v3, p1, v1

    invoke-direct {v2, v3, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 446
    .local v2, "address":Ljava/net/InetSocketAddress;
    invoke-virtual {p0, p4}, Ljava/net/Socket;->createImpl(Z)V

    .line 447
    if-eqz p3, :cond_34

    .line 448
    invoke-virtual {p0, p3}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 450
    :cond_34
    invoke-virtual {p0, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_37} :catch_38
    .catch Ljava/lang/IllegalArgumentException; {:try_start_25 .. :try_end_37} :catch_38
    .catch Ljava/lang/SecurityException; {:try_start_25 .. :try_end_37} :catch_38

    .line 451
    goto :goto_57

    .line 452
    .end local v2    # "address":Ljava/net/InetSocketAddress;
    :catch_38
    move-exception v2

    .line 456
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    :try_start_3a
    iget-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v4}, Ljava/net/SocketImpl;->close()V

    .line 457
    iput-boolean v3, p0, Ljava/net/Socket;->closed:Z
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_41} :catch_42

    .line 460
    goto :goto_46

    .line 458
    :catch_42
    move-exception v4

    .line 459
    .local v4, "ce":Ljava/io/IOException;
    invoke-virtual {v2, v4}, Ljava/lang/Exception;->addSuppressed(Ljava/lang/Throwable;)V

    .line 463
    .end local v4    # "ce":Ljava/io/IOException;
    :goto_46
    array-length v4, p1

    sub-int/2addr v4, v3

    if-eq v1, v4, :cond_56

    .line 469
    .end local v2    # "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 470
    iput-boolean v0, p0, Ljava/net/Socket;->created:Z

    .line 471
    iput-boolean v0, p0, Ljava/net/Socket;->bound:Z

    .line 472
    iput-boolean v0, p0, Ljava/net/Socket;->closed:Z

    .line 442
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 464
    .restart local v2    # "e":Ljava/lang/Exception;
    :cond_56
    throw v2

    .line 474
    .end local v1    # "i":I
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_57
    :goto_57
    return-void

    .line 439
    :cond_58
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Impossible: empty address list"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V
    .registers 6
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "op"    # Ljava/lang/String;

    .line 681
    if-nez p1, :cond_3

    .line 682
    return-void

    .line 684
    :cond_3
    instance-of v0, p1, Ljava/net/Inet4Address;

    if-nez v0, :cond_23

    instance-of v0, p1, Ljava/net/Inet6Address;

    if-eqz v0, :cond_c

    goto :goto_23

    .line 685
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": invalid address type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 687
    :cond_23
    :goto_23
    return-void
.end method

.method private greylist-max-o checkOldImpl()V
    .registers 2

    .line 497
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    if-nez v0, :cond_5

    .line 498
    return-void

    .line 502
    :cond_5
    new-instance v0, Ljava/net/Socket$1;

    invoke-direct {v0, p0}, Ljava/net/Socket$1;-><init>(Ljava/net/Socket;)V

    .line 503
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Ljava/net/Socket;->oldImpl:Z

    .line 522
    return-void
.end method

.method private static greylist-max-o nonNullAddress(Ljava/net/InetAddress;)[Ljava/net/InetAddress;
    .registers 3
    .param p0, "address"    # Ljava/net/InetAddress;

    .line 430
    if-eqz p0, :cond_9

    .line 433
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/net/InetAddress;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0

    .line 431
    :cond_9
    const/4 v0, 0x0

    throw v0
.end method

.method public static declared-synchronized whitelist core-platform-api test-api setSocketImplFactory(Ljava/net/SocketImplFactory;)V
    .registers 4
    .param p0, "fac"    # Ljava/net/SocketImplFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v0, Ljava/net/Socket;

    monitor-enter v0

    .line 1721
    :try_start_3
    sget-object v1, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    if-nez v1, :cond_14

    .line 1724
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 1725
    .local v1, "security":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_10

    .line 1726
    invoke-virtual {v1}, Ljava/lang/SecurityManager;->checkSetFactory()V

    .line 1728
    :cond_10
    sput-object p0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1c

    .line 1729
    monitor-exit v0

    return-void

    .line 1722
    .end local v1    # "security":Ljava/lang/SecurityManager;
    :cond_14
    :try_start_14
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "factory already defined"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_1c

    .line 1720
    .end local p0    # "fac":Ljava/net/SocketImplFactory;
    :catchall_1c
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public whitelist core-platform-api test-api bind(Ljava/net/SocketAddress;)V
    .registers 7
    .param p1, "bindpoint"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 656
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_66

    .line 658
    iget-boolean v0, p0, Ljava/net/Socket;->oldImpl:Z

    if-nez v0, :cond_19

    invoke-virtual {p0}, Ljava/net/Socket;->isBound()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_19

    .line 659
    :cond_11
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Already bound"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 661
    :cond_19
    :goto_19
    if-eqz p1, :cond_28

    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_20

    goto :goto_28

    .line 662
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported address type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 663
    :cond_28
    :goto_28
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 664
    .local v0, "epoint":Ljava/net/InetSocketAddress;
    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v1

    if-nez v1, :cond_34

    goto :goto_3c

    .line 665
    :cond_34
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Unresolved address"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 666
    :cond_3c
    :goto_3c
    if-nez v0, :cond_45

    .line 667
    new-instance v1, Ljava/net/InetSocketAddress;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    move-object v0, v1

    .line 669
    :cond_45
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 670
    .local v1, "addr":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    .line 671
    .local v2, "port":I
    const-string v3, "bind"

    invoke-direct {p0, v1, v3}, Ljava/net/Socket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 672
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    .line 673
    .local v3, "security":Ljava/lang/SecurityManager;
    if-eqz v3, :cond_5b

    .line 674
    invoke-virtual {v3, v2}, Ljava/lang/SecurityManager;->checkListen(I)V

    .line 676
    :cond_5b
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/net/SocketImpl;->bind(Ljava/net/InetAddress;I)V

    .line 677
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/net/Socket;->bound:Z

    .line 678
    return-void

    .line 657
    .end local v0    # "epoint":Ljava/net/InetSocketAddress;
    .end local v1    # "addr":Ljava/net/InetAddress;
    .end local v2    # "port":I
    .end local v3    # "security":Ljava/lang/SecurityManager;
    :cond_66
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized whitelist core-platform-api test-api close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1535
    :try_start_1
    iget-object v0, p0, Ljava/net/Socket;->closeLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_21

    .line 1536
    :try_start_4
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1537
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_1c

    monitor-exit p0

    return-void

    .line 1538
    :cond_d
    :try_start_d
    iget-boolean v1, p0, Ljava/net/Socket;->created:Z

    if-eqz v1, :cond_16

    .line 1539
    iget-object v1, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v1}, Ljava/net/SocketImpl;->close()V

    .line 1540
    :cond_16
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/net/Socket;->closed:Z

    .line 1541
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_1c

    .line 1542
    monitor-exit p0

    return-void

    .line 1541
    :catchall_1c
    move-exception v1

    :goto_1d
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1f

    :try_start_1e
    throw v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_21

    .end local p0    # "this":Ljava/net/Socket;
    :catchall_1f
    move-exception v1

    goto :goto_1d

    .line 1534
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public whitelist core-platform-api test-api connect(Ljava/net/SocketAddress;)V
    .registers 3
    .param p1, "endpoint"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 570
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 571
    return-void
.end method

.method public whitelist core-platform-api test-api connect(Ljava/net/SocketAddress;I)V
    .registers 10
    .param p1, "endpoint"    # Ljava/net/SocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 591
    if-eqz p1, :cond_9a

    .line 594
    if-ltz p2, :cond_92

    .line 597
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_8a

    .line 600
    iget-boolean v0, p0, Ljava/net/Socket;->oldImpl:Z

    if-nez v0, :cond_1d

    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_1d

    .line 601
    :cond_15
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "already connected"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 603
    :cond_1d
    :goto_1d
    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_82

    .line 606
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 607
    .local v0, "epoint":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 608
    .local v1, "addr":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    .line 609
    .local v2, "port":I
    const-string v3, "connect"

    invoke-direct {p0, v1, v3}, Ljava/net/Socket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 611
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    .line 612
    .local v3, "security":Ljava/lang/SecurityManager;
    if-eqz v3, :cond_4c

    .line 613
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v4

    if-eqz v4, :cond_45

    .line 614
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    goto :goto_4c

    .line 616
    :cond_45
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 618
    :cond_4c
    :goto_4c
    iget-boolean v4, p0, Ljava/net/Socket;->created:Z

    const/4 v5, 0x1

    if-nez v4, :cond_54

    .line 619
    invoke-virtual {p0, v5}, Ljava/net/Socket;->createImpl(Z)V

    .line 620
    :cond_54
    iget-boolean v4, p0, Ljava/net/Socket;->oldImpl:Z

    if-nez v4, :cond_5e

    .line 621
    iget-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v4, v0, p2}, Ljava/net/SocketImpl;->connect(Ljava/net/SocketAddress;I)V

    goto :goto_75

    .line 622
    :cond_5e
    if-nez p2, :cond_7a

    .line 623
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v4

    if-eqz v4, :cond_70

    .line 624
    iget-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v2}, Ljava/net/SocketImpl;->connect(Ljava/lang/String;I)V

    goto :goto_75

    .line 626
    :cond_70
    iget-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v4, v1, v2}, Ljava/net/SocketImpl;->connect(Ljava/net/InetAddress;I)V

    .line 629
    :goto_75
    iput-boolean v5, p0, Ljava/net/Socket;->connected:Z

    .line 634
    iput-boolean v5, p0, Ljava/net/Socket;->bound:Z

    .line 635
    return-void

    .line 628
    :cond_7a
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v5, "SocketImpl.connect(addr, timeout)"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 604
    .end local v0    # "epoint":Ljava/net/InetSocketAddress;
    .end local v1    # "addr":Ljava/net/InetAddress;
    .end local v2    # "port":I
    .end local v3    # "security":Ljava/lang/SecurityManager;
    :cond_82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported address type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 598
    :cond_8a
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 595
    :cond_92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "connect: timeout can\'t be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 592
    :cond_9a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "connect: The address can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o createImpl(Z)V
    .registers 5
    .param p1, "stream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 486
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    if-nez v0, :cond_7

    .line 487
    invoke-virtual {p0}, Ljava/net/Socket;->setImpl()V

    .line 489
    :cond_7
    :try_start_7
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0, p1}, Ljava/net/SocketImpl;->create(Z)V

    .line 490
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Socket;->created:Z
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_f} :catch_11

    .line 493
    nop

    .line 494
    return-void

    .line 491
    :catch_11
    move-exception v0

    .line 492
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/net/SocketException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist core-platform-api test-api getChannel()Ljava/nio/channels/SocketChannel;
    .registers 2

    .line 885
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist core-platform-api getFileDescriptor$()Ljava/io/FileDescriptor;
    .registers 2

    .line 1781
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getImpl()Ljava/net/SocketImpl;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 551
    iget-boolean v0, p0, Ljava/net/Socket;->created:Z

    if-nez v0, :cond_8

    .line 552
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/Socket;->createImpl(Z)V

    .line 553
    :cond_8
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getInetAddress()Ljava/net/InetAddress;
    .registers 3

    .line 721
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 722
    return-object v1

    .line 724
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0
    :try_end_10
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_10} :catch_11

    return-object v0

    .line 725
    :catch_11
    move-exception v0

    .line 727
    return-object v1
.end method

.method public whitelist core-platform-api test-api getInputStream()Ljava/io/InputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 934
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 936
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 938
    invoke-virtual {p0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 940
    move-object v0, p0

    .line 941
    .local v0, "s":Ljava/net/Socket;
    const/4 v1, 0x0

    .line 943
    .local v1, "is":Ljava/io/InputStream;
    :try_start_14
    new-instance v2, Ljava/net/Socket$2;

    invoke-direct {v2, p0}, Ljava/net/Socket$2;-><init>(Ljava/net/Socket;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;
    :try_end_1f
    .catch Ljava/security/PrivilegedActionException; {:try_start_14 .. :try_end_1f} :catch_22

    move-object v1, v2

    .line 951
    nop

    .line 952
    return-object v1

    .line 949
    :catch_22
    move-exception v2

    .line 950
    .local v2, "e":Ljava/security/PrivilegedActionException;
    invoke-virtual {v2}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v3

    check-cast v3, Ljava/io/IOException;

    throw v3

    .line 939
    .end local v0    # "s":Ljava/net/Socket;
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "e":Ljava/security/PrivilegedActionException;
    :cond_2a
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket input is shutdown"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 937
    :cond_32
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is not connected"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 935
    :cond_3a
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api getKeepAlive()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1363
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_17

    .line 1365
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 1364
    :cond_17
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api getLocalAddress()Ljava/net/InetAddress;
    .registers 5

    .line 747
    invoke-virtual {p0}, Ljava/net/Socket;->isBound()Z

    move-result v0

    if-nez v0, :cond_b

    .line 748
    invoke-static {}, Ljava/net/InetAddress;->anyLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0

    .line 749
    :cond_b
    const/4 v0, 0x0

    .line 751
    .local v0, "in":Ljava/net/InetAddress;
    :try_start_c
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    move-object v0, v1

    .line 752
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 753
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_27

    .line 754
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 755
    :cond_27
    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 756
    invoke-static {}, Ljava/net/InetAddress;->anyLocalAddress()Ljava/net/InetAddress;

    move-result-object v2
    :try_end_31
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_31} :catch_39
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_31} :catch_33

    move-object v0, v2

    goto :goto_3e

    .line 760
    .end local v1    # "sm":Ljava/lang/SecurityManager;
    :catch_33
    move-exception v1

    .line 761
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Ljava/net/InetAddress;->anyLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_3f

    .line 758
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_39
    move-exception v1

    .line 759
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-static {}, Ljava/net/InetAddress;->getLoopbackAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 762
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_3e
    :goto_3e
    nop

    .line 763
    :goto_3f
    return-object v0
.end method

.method public whitelist core-platform-api test-api getLocalPort()I
    .registers 3

    .line 798
    invoke-virtual {p0}, Ljava/net/Socket;->isBound()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_8

    .line 799
    return v1

    .line 801
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getLocalPort()I

    move-result v0
    :try_end_10
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_10} :catch_11

    return v0

    .line 802
    :catch_11
    move-exception v0

    .line 805
    return v1
.end method

.method public whitelist core-platform-api test-api getLocalSocketAddress()Ljava/net/SocketAddress;
    .registers 4

    .line 862
    invoke-virtual {p0}, Ljava/net/Socket;->isBound()Z

    move-result v0

    if-nez v0, :cond_8

    .line 863
    const/4 v0, 0x0

    return-object v0

    .line 864
    :cond_8
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/Socket;->getLocalPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
.end method

.method public whitelist core-platform-api test-api getOOBInline()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1152
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_17

    .line 1154
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 1153
    :cond_17
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api getOutputStream()Ljava/io/OutputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 974
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 976
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 978
    invoke-virtual {p0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 980
    move-object v0, p0

    .line 981
    .local v0, "s":Ljava/net/Socket;
    const/4 v1, 0x0

    .line 983
    .local v1, "os":Ljava/io/OutputStream;
    :try_start_14
    new-instance v2, Ljava/net/Socket$3;

    invoke-direct {v2, p0}, Ljava/net/Socket$3;-><init>(Ljava/net/Socket;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/OutputStream;
    :try_end_1f
    .catch Ljava/security/PrivilegedActionException; {:try_start_14 .. :try_end_1f} :catch_22

    move-object v1, v2

    .line 991
    nop

    .line 992
    return-object v1

    .line 989
    :catch_22
    move-exception v2

    .line 990
    .local v2, "e":Ljava/security/PrivilegedActionException;
    invoke-virtual {v2}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v3

    check-cast v3, Ljava/io/IOException;

    throw v3

    .line 979
    .end local v0    # "s":Ljava/net/Socket;
    .end local v1    # "os":Ljava/io/OutputStream;
    .end local v2    # "e":Ljava/security/PrivilegedActionException;
    :cond_2a
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket output is shutdown"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 977
    :cond_32
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is not connected"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 975
    :cond_3a
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api getPort()I
    .registers 2

    .line 777
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_8

    .line 778
    const/4 v0, 0x0

    return v0

    .line 780
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getPort()I

    move-result v0
    :try_end_10
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_10} :catch_11

    return v0

    .line 781
    :catch_11
    move-exception v0

    .line 784
    const/4 v0, -0x1

    return v0
.end method

.method public declared-synchronized whitelist core-platform-api test-api getReceiveBufferSize()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    .line 1327
    :try_start_1
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_20

    .line 1329
    const/4 v0, 0x0

    .line 1330
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v1

    const/16 v2, 0x1002

    invoke-virtual {v1, v2}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v1

    .line 1331
    .local v1, "o":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1e

    .line 1332
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_28

    move v0, v2

    .line 1334
    .end local p0    # "this":Ljava/net/Socket;
    :cond_1e
    monitor-exit p0

    return v0

    .line 1328
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

    .line 1326
    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public whitelist core-platform-api test-api getRemoteSocketAddress()Ljava/net/SocketAddress;
    .registers 4

    .line 826
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_8

    .line 827
    const/4 v0, 0x0

    return-object v0

    .line 828
    :cond_8
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/Socket;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
.end method

.method public whitelist core-platform-api test-api getReuseAddress()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1507
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_16

    .line 1509
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 1508
    :cond_16
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized whitelist core-platform-api test-api getSendBufferSize()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    .line 1253
    :try_start_1
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_20

    .line 1255
    const/4 v0, 0x0

    .line 1256
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v1

    const/16 v2, 0x1001

    invoke-virtual {v1, v2}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v1

    .line 1257
    .local v1, "o":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1e

    .line 1258
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_28

    move v0, v2

    .line 1260
    .end local p0    # "this":Ljava/net/Socket;
    :cond_1e
    monitor-exit p0

    return v0

    .line 1254
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

    .line 1252
    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public whitelist core-platform-api test-api getSoLinger()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1075
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1077
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    .line 1078
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1c

    .line 1079
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 1081
    :cond_1c
    const/4 v1, -0x1

    return v1

    .line 1076
    .end local v0    # "o":Ljava/lang/Object;
    :cond_1e
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized whitelist core-platform-api test-api getSoTimeout()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    .line 1195
    :try_start_1
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_21

    .line 1197
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    const/16 v1, 0x1006

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    .line 1199
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1e

    .line 1200
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_29

    monitor-exit p0

    return v1

    .line 1202
    .end local p0    # "this":Ljava/net/Socket;
    :cond_1e
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 1196
    .end local v0    # "o":Ljava/lang/Object;
    :cond_21
    :try_start_21
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    .line 1194
    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public whitelist core-platform-api test-api getTcpNoDelay()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1026
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_16

    .line 1028
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 1027
    :cond_16
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api getTrafficClass()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1448
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_16

    .line 1452
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 1449
    :cond_16
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api isBound()Z
    .registers 2

    .line 1651
    iget-boolean v0, p0, Ljava/net/Socket;->bound:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Ljava/net/Socket;->oldImpl:Z

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

.method public whitelist core-platform-api test-api isClosed()Z
    .registers 3

    .line 1662
    iget-object v0, p0, Ljava/net/Socket;->closeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1663
    :try_start_3
    iget-boolean v1, p0, Ljava/net/Socket;->closed:Z

    monitor-exit v0

    return v1

    .line 1664
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public whitelist core-platform-api test-api isConnected()Z
    .registers 2

    .line 1634
    iget-boolean v0, p0, Ljava/net/Socket;->connected:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Ljava/net/Socket;->oldImpl:Z

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

.method public whitelist core-platform-api test-api isInputShutdown()Z
    .registers 2

    .line 1675
    iget-boolean v0, p0, Ljava/net/Socket;->shutIn:Z

    return v0
.end method

.method public whitelist core-platform-api test-api isOutputShutdown()Z
    .registers 2

    .line 1686
    iget-boolean v0, p0, Ljava/net/Socket;->shutOut:Z

    return v0
.end method

.method final greylist-max-o postAccept()V
    .registers 2

    .line 693
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Socket;->connected:Z

    .line 694
    iput-boolean v0, p0, Ljava/net/Socket;->created:Z

    .line 695
    iput-boolean v0, p0, Ljava/net/Socket;->bound:Z

    .line 696
    return-void
.end method

.method public whitelist core-platform-api test-api sendUrgentData(I)V
    .registers 4
    .param p1, "data"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1099
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_20

    .line 1103
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/SocketImpl;->supportsUrgentData()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1106
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/SocketImpl;->sendUrgentData(I)V

    .line 1107
    return-void

    .line 1104
    :cond_18
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Urgent data not supported"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1100
    :cond_20
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o setBound()V
    .registers 2

    .line 703
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Socket;->bound:Z

    .line 704
    return-void
.end method

.method greylist-max-o setConnected()V
    .registers 2

    .line 707
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Socket;->connected:Z

    .line 708
    return-void
.end method

.method greylist-max-o setCreated()V
    .registers 2

    .line 699
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Socket;->created:Z

    .line 700
    return-void
.end method

.method greylist-max-o setImpl()V
    .registers 2

    .line 529
    sget-object v0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    if-eqz v0, :cond_e

    .line 530
    invoke-interface {v0}, Ljava/net/SocketImplFactory;->createSocketImpl()Ljava/net/SocketImpl;

    move-result-object v0

    iput-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 531
    invoke-direct {p0}, Ljava/net/Socket;->checkOldImpl()V

    goto :goto_15

    .line 535
    :cond_e
    new-instance v0, Ljava/net/SocksSocketImpl;

    invoke-direct {v0}, Ljava/net/SocksSocketImpl;-><init>()V

    iput-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 537
    :goto_15
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    if-eqz v0, :cond_1c

    .line 538
    invoke-virtual {v0, p0}, Ljava/net/SocketImpl;->setSocket(Ljava/net/Socket;)V

    .line 539
    :cond_1c
    return-void
.end method

.method public whitelist core-platform-api test-api setKeepAlive(Z)V
    .registers 5
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1347
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1349
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 1350
    return-void

    .line 1348
    :cond_14
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api setOOBInline(Z)V
    .registers 5
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1135
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1137
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    const/16 v1, 0x1003

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 1138
    return-void

    .line 1136
    :cond_14
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api setPerformancePreferences(III)V
    .registers 4
    .param p1, "connectionTime"    # I
    .param p2, "latency"    # I
    .param p3, "bandwidth"    # I

    .line 1774
    return-void
.end method

.method public declared-synchronized whitelist core-platform-api test-api setReceiveBufferSize(I)V
    .registers 5
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    .line 1305
    if-lez p1, :cond_23

    .line 1308
    :try_start_3
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_19

    .line 1310
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    const/16 v1, 0x1002

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_21

    .line 1311
    monitor-exit p0

    return-void

    .line 1309
    .end local p0    # "this":Ljava/net/Socket;
    :cond_19
    :try_start_19
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1304
    .end local p1    # "size":I
    :catchall_21
    move-exception p1

    goto :goto_2b

    .line 1306
    .restart local p1    # "size":I
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid receive size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2b
    .catchall {:try_start_19 .. :try_end_2b} :catchall_21

    .line 1304
    .end local p1    # "size":I
    :goto_2b
    monitor-exit p0

    throw p1
.end method

.method public whitelist core-platform-api test-api setReuseAddress(Z)V
    .registers 5
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1491
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_13

    .line 1493
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 1494
    return-void

    .line 1492
    :cond_13
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized whitelist core-platform-api test-api setSendBufferSize(I)V
    .registers 5
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    .line 1231
    if-lez p1, :cond_23

    .line 1234
    :try_start_3
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_19

    .line 1236
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    const/16 v1, 0x1001

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_21

    .line 1237
    monitor-exit p0

    return-void

    .line 1235
    .end local p0    # "this":Ljava/net/Socket;
    :cond_19
    :try_start_19
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1230
    .end local p1    # "size":I
    :catchall_21
    move-exception p1

    goto :goto_2b

    .line 1232
    .restart local p1    # "size":I
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "negative send size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2b
    .catchall {:try_start_19 .. :try_end_2b} :catchall_21

    .line 1230
    .end local p1    # "size":I
    :goto_2b
    monitor-exit p0

    throw p1
.end method

.method public whitelist core-platform-api test-api setSoLinger(ZI)V
    .registers 6
    .param p1, "on"    # Z
    .param p2, "linger"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1047
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_36

    .line 1049
    const/16 v0, 0x80

    if-nez p1, :cond_17

    .line 1050
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v1

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v1, v0, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_2d

    .line 1052
    :cond_17
    if-ltz p2, :cond_2e

    .line 1055
    const v1, 0xffff

    if-le p2, v1, :cond_21

    .line 1056
    const p2, 0xffff

    .line 1057
    :cond_21
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 1059
    :goto_2d
    return-void

    .line 1053
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid value for SO_LINGER"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1048
    :cond_36
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized whitelist core-platform-api test-api setSoTimeout(I)V
    .registers 5
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    .line 1175
    :try_start_1
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_21

    .line 1177
    if-ltz p1, :cond_19

    .line 1180
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    const/16 v1, 0x1006

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_29

    .line 1181
    monitor-exit p0

    return-void

    .line 1178
    .end local p0    # "this":Ljava/net/Socket;
    :cond_19
    :try_start_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout can\'t be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1176
    :cond_21
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_29
    .catchall {:try_start_19 .. :try_end_29} :catchall_29

    .line 1174
    .end local p1    # "timeout":I
    :catchall_29
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public whitelist core-platform-api test-api setTcpNoDelay(Z)V
    .registers 5
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1010
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_13

    .line 1012
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 1013
    return-void

    .line 1011
    :cond_13
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api setTrafficClass(I)V
    .registers 5
    .param p1, "tc"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1415
    if-ltz p1, :cond_2a

    const/16 v0, 0xff

    if-gt p1, v0, :cond_2a

    .line 1418
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_22

    .line 1421
    :try_start_c
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_18
    .catch Ljava/net/SocketException; {:try_start_c .. :try_end_18} :catch_19

    .line 1427
    goto :goto_20

    .line 1422
    :catch_19
    move-exception v0

    .line 1425
    .local v0, "se":Ljava/net/SocketException;
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1428
    .end local v0    # "se":Ljava/net/SocketException;
    :goto_20
    return-void

    .line 1426
    .restart local v0    # "se":Ljava/net/SocketException;
    :cond_21
    throw v0

    .line 1419
    .end local v0    # "se":Ljava/net/SocketException;
    :cond_22
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1416
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "tc is not in range 0 -- 255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api shutdownInput()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1564
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 1566
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1568
    invoke-virtual {p0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 1570
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/SocketImpl;->shutdownInput()V

    .line 1571
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Socket;->shutIn:Z

    .line 1572
    return-void

    .line 1569
    :cond_1d
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket input is already shutdown"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1567
    :cond_25
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is not connected"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1565
    :cond_2d
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api shutdownOutput()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1594
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 1596
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1598
    invoke-virtual {p0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 1600
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/SocketImpl;->shutdownOutput()V

    .line 1601
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Socket;->shutOut:Z

    .line 1602
    return-void

    .line 1599
    :cond_1d
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket output is already shutdown"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1597
    :cond_25
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is not connected"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1595
    :cond_2d
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 3

    .line 1612
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 1613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Socket[address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/SocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1614
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/SocketImpl;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",localPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1615
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/SocketImpl;->getLocalPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_44
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_44} :catch_46

    .line 1613
    return-object v0

    .line 1617
    :cond_45
    goto :goto_47

    .line 1616
    :catch_46
    move-exception v0

    .line 1618
    :goto_47
    const-string v0, "Socket[unconnected]"

    return-object v0
.end method
