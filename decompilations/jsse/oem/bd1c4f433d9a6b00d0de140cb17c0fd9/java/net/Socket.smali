.class public Ljava/net/Socket;
.super Ljava/lang/Object;
.source "Socket.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static factory:Ljava/net/SocketImplFactory;


# instance fields
.field private bound:Z

.field private closeLock:Ljava/lang/Object;

.field private closed:Z

.field private connected:Z

.field private created:Z

.field impl:Ljava/net/SocketImpl;

.field private oldImpl:Z

.field private shutIn:Z

.field private shutOut:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1711
    const/4 v0, 0x0

    sput-object v0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean v1, p0, Ljava/net/Socket;->created:Z

    .line 62
    iput-boolean v1, p0, Ljava/net/Socket;->bound:Z

    .line 63
    iput-boolean v1, p0, Ljava/net/Socket;->connected:Z

    .line 64
    iput-boolean v1, p0, Ljava/net/Socket;->closed:Z

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/net/Socket;->closeLock:Ljava/lang/Object;

    .line 66
    iput-boolean v1, p0, Ljava/net/Socket;->shutIn:Z

    .line 67
    iput-boolean v1, p0, Ljava/net/Socket;->shutOut:Z

    .line 77
    iput-boolean v1, p0, Ljava/net/Socket;->oldImpl:Z

    .line 87
    invoke-virtual {p0}, Ljava/net/Socket;->setImpl()V

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 6
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    const/4 v0, 0x0

    check-cast v0, Ljava/net/SocketAddress;

    const/4 v2, 0x1

    invoke-direct {p0, v1, p2, v0, v2}, Ljava/net/Socket;-><init>([Ljava/net/InetAddress;ILjava/net/SocketAddress;Z)V

    .line 219
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/net/InetAddress;I)V
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

    .prologue
    .line 290
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    .line 291
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p3, p4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    const/4 v2, 0x1

    .line 290
    invoke-direct {p0, v0, p2, v1, v2}, Ljava/net/Socket;-><init>([Ljava/net/InetAddress;ILjava/net/SocketAddress;Z)V

    .line 292
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
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

    .prologue
    .line 378
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    const/4 v0, 0x0

    check-cast v0, Ljava/net/SocketAddress;

    invoke-direct {p0, v1, p2, v0, p3}, Ljava/net/Socket;-><init>([Ljava/net/InetAddress;ILjava/net/SocketAddress;Z)V

    .line 379
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .registers 6
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    invoke-static {p1}, Ljava/net/Socket;->nonNullAddress(Ljava/net/InetAddress;)[Ljava/net/InetAddress;

    move-result-object v1

    const/4 v0, 0x0

    check-cast v0, Ljava/net/SocketAddress;

    const/4 v2, 0x1

    invoke-direct {p0, v1, p2, v0, v2}, Ljava/net/Socket;-><init>([Ljava/net/InetAddress;ILjava/net/SocketAddress;Z)V

    .line 250
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V
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

    .prologue
    .line 331
    invoke-static {p1}, Ljava/net/Socket;->nonNullAddress(Ljava/net/InetAddress;)[Ljava/net/InetAddress;

    move-result-object v0

    .line 332
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p3, p4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    const/4 v2, 0x1

    .line 331
    invoke-direct {p0, v0, p2, v1, v2}, Ljava/net/Socket;-><init>([Ljava/net/InetAddress;ILjava/net/SocketAddress;Z)V

    .line 333
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;IZ)V
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

    .prologue
    .line 419
    invoke-static {p1}, Ljava/net/Socket;->nonNullAddress(Ljava/net/InetAddress;)[Ljava/net/InetAddress;

    move-result-object v0

    new-instance v1, Ljava/net/InetSocketAddress;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-direct {p0, v0, p2, v1, p3}, Ljava/net/Socket;-><init>([Ljava/net/InetAddress;ILjava/net/SocketAddress;Z)V

    .line 420
    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy;)V
    .registers 9
    .param p1, "proxy"    # Ljava/net/Proxy;

    .prologue
    const/4 v6, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean v6, p0, Ljava/net/Socket;->created:Z

    .line 62
    iput-boolean v6, p0, Ljava/net/Socket;->bound:Z

    .line 63
    iput-boolean v6, p0, Ljava/net/Socket;->connected:Z

    .line 64
    iput-boolean v6, p0, Ljava/net/Socket;->closed:Z

    .line 65
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Ljava/net/Socket;->closeLock:Ljava/lang/Object;

    .line 66
    iput-boolean v6, p0, Ljava/net/Socket;->shutIn:Z

    .line 67
    iput-boolean v6, p0, Ljava/net/Socket;->shutOut:Z

    .line 77
    iput-boolean v6, p0, Ljava/net/Socket;->oldImpl:Z

    .line 120
    if-nez p1, :cond_24

    .line 121
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Invalid Proxy"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 123
    :cond_24
    sget-object v5, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    if-ne p1, v5, :cond_80

    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 125
    .local v2, "p":Ljava/net/Proxy;
    :goto_2a
    invoke-virtual {v2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v4

    .line 128
    .local v4, "type":Ljava/net/Proxy$Type;
    sget-object v5, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v4, v5, :cond_95

    .line 129
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    .line 130
    .local v3, "security":Ljava/lang/SecurityManager;
    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 131
    .local v0, "epoint":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    if-eqz v5, :cond_4c

    .line 132
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    const-string/jumbo v6, "Socket"

    invoke-direct {p0, v5, v6}, Ljava/net/Socket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 134
    :cond_4c
    if-eqz v3, :cond_73

    .line 135
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v5

    if-eqz v5, :cond_62

    .line 136
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v6

    invoke-direct {v1, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .end local v0    # "epoint":Ljava/net/InetSocketAddress;
    .local v1, "epoint":Ljava/net/InetSocketAddress;
    move-object v0, v1

    .line 137
    .end local v1    # "epoint":Ljava/net/InetSocketAddress;
    .restart local v0    # "epoint":Ljava/net/InetSocketAddress;
    :cond_62
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v5

    if-eqz v5, :cond_85

    .line 138
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 146
    :cond_73
    :goto_73
    new-instance v5, Ljava/net/SocksSocketImpl;

    invoke-direct {v5, v2}, Ljava/net/SocksSocketImpl;-><init>(Ljava/net/Proxy;)V

    iput-object v5, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 147
    iget-object v5, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v5, p0}, Ljava/net/SocketImpl;->setSocket(Ljava/net/Socket;)V

    .line 158
    .end local v0    # "epoint":Ljava/net/InetSocketAddress;
    .end local v3    # "security":Ljava/lang/SecurityManager;
    :goto_7f
    return-void

    .line 124
    .end local v2    # "p":Ljava/net/Proxy;
    .end local v4    # "type":Ljava/net/Proxy$Type;
    :cond_80
    invoke-static {p1}, Lsun/net/ApplicationProxy;->create(Ljava/net/Proxy;)Lsun/net/ApplicationProxy;

    move-result-object v2

    .restart local v2    # "p":Ljava/net/Proxy;
    goto :goto_2a

    .line 140
    .restart local v0    # "epoint":Ljava/net/InetSocketAddress;
    .restart local v3    # "security":Ljava/lang/SecurityManager;
    .restart local v4    # "type":Ljava/net/Proxy$Type;
    :cond_85
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    .line 141
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v6

    .line 140
    invoke-virtual {v3, v5, v6}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    goto :goto_73

    .line 149
    .end local v0    # "epoint":Ljava/net/InetSocketAddress;
    .end local v3    # "security":Ljava/lang/SecurityManager;
    :cond_95
    sget-object v5, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    if-ne v2, v5, :cond_ae

    .line 150
    sget-object v5, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    if-nez v5, :cond_aa

    .line 151
    new-instance v5, Ljava/net/PlainSocketImpl;

    invoke-direct {v5}, Ljava/net/PlainSocketImpl;-><init>()V

    iput-object v5, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 152
    iget-object v5, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v5, p0}, Ljava/net/SocketImpl;->setSocket(Ljava/net/Socket;)V

    goto :goto_7f

    .line 154
    :cond_aa
    invoke-virtual {p0}, Ljava/net/Socket;->setImpl()V

    goto :goto_7f

    .line 156
    :cond_ae
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Invalid Proxy"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method protected constructor <init>(Ljava/net/SocketImpl;)V
    .registers 4
    .param p1, "impl"    # Ljava/net/SocketImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean v1, p0, Ljava/net/Socket;->created:Z

    .line 62
    iput-boolean v1, p0, Ljava/net/Socket;->bound:Z

    .line 63
    iput-boolean v1, p0, Ljava/net/Socket;->connected:Z

    .line 64
    iput-boolean v1, p0, Ljava/net/Socket;->closed:Z

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/net/Socket;->closeLock:Ljava/lang/Object;

    .line 66
    iput-boolean v1, p0, Ljava/net/Socket;->shutIn:Z

    .line 67
    iput-boolean v1, p0, Ljava/net/Socket;->shutOut:Z

    .line 77
    iput-boolean v1, p0, Ljava/net/Socket;->oldImpl:Z

    .line 172
    iput-object p1, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 173
    if-eqz p1, :cond_25

    .line 174
    invoke-direct {p0}, Ljava/net/Socket;->checkOldImpl()V

    .line 175
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0, p0}, Ljava/net/SocketImpl;->setSocket(Ljava/net/Socket;)V

    .line 177
    :cond_25
    return-void
.end method

.method private constructor <init>([Ljava/net/InetAddress;ILjava/net/SocketAddress;Z)V
    .registers 12
    .param p1, "addresses"    # [Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "localAddr"    # Ljava/net/SocketAddress;
    .param p4, "stream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean v5, p0, Ljava/net/Socket;->created:Z

    .line 62
    iput-boolean v5, p0, Ljava/net/Socket;->bound:Z

    .line 63
    iput-boolean v5, p0, Ljava/net/Socket;->connected:Z

    .line 64
    iput-boolean v5, p0, Ljava/net/Socket;->closed:Z

    .line 65
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Ljava/net/Socket;->closeLock:Ljava/lang/Object;

    .line 66
    iput-boolean v5, p0, Ljava/net/Socket;->shutIn:Z

    .line 67
    iput-boolean v5, p0, Ljava/net/Socket;->shutOut:Z

    .line 77
    iput-boolean v5, p0, Ljava/net/Socket;->oldImpl:Z

    .line 434
    if-eqz p1, :cond_1f

    array-length v4, p1

    if-nez v4, :cond_28

    .line 435
    :cond_1f
    new-instance v4, Ljava/net/SocketException;

    const-string/jumbo v5, "Impossible: empty address list"

    invoke-direct {v4, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 438
    :cond_28
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_29
    array-length v4, p1

    if-ge v3, v4, :cond_41

    .line 439
    invoke-virtual {p0}, Ljava/net/Socket;->setImpl()V

    .line 441
    :try_start_2f
    new-instance v0, Ljava/net/InetSocketAddress;

    aget-object v4, p1, v3

    invoke-direct {v0, v4, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 442
    .local v0, "address":Ljava/net/InetSocketAddress;
    invoke-virtual {p0, p4}, Ljava/net/Socket;->createImpl(Z)V

    .line 443
    if-eqz p3, :cond_3e

    .line 444
    invoke-virtual {p0, p3}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 446
    :cond_3e
    invoke-virtual {p0, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_41} :catch_42
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2f .. :try_end_41} :catch_42
    .catch Ljava/lang/SecurityException; {:try_start_2f .. :try_end_41} :catch_42

    .line 471
    .end local v0    # "address":Ljava/net/InetSocketAddress;
    :cond_41
    return-void

    .line 448
    :catch_42
    move-exception v2

    .line 453
    .local v2, "e":Ljava/lang/Exception;
    :try_start_43
    iget-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v4}, Ljava/net/SocketImpl;->close()V

    .line 454
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/net/Socket;->closed:Z
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_4b} :catch_51

    .line 460
    :goto_4b
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_56

    .line 461
    throw v2

    .line 455
    :catch_51
    move-exception v1

    .line 456
    .local v1, "ce":Ljava/io/IOException;
    invoke-virtual {v2, v1}, Ljava/lang/Exception;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4b

    .line 466
    .end local v1    # "ce":Ljava/io/IOException;
    :cond_56
    iput-object v6, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 467
    iput-boolean v5, p0, Ljava/net/Socket;->created:Z

    .line 468
    iput-boolean v5, p0, Ljava/net/Socket;->bound:Z

    .line 469
    iput-boolean v5, p0, Ljava/net/Socket;->closed:Z

    .line 438
    add-int/lit8 v3, v3, 0x1

    goto :goto_29
.end method

.method private checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V
    .registers 6
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "op"    # Ljava/lang/String;

    .prologue
    .line 693
    if-nez p1, :cond_3

    .line 694
    return-void

    .line 696
    :cond_3
    instance-of v0, p1, Ljava/net/Inet4Address;

    if-nez v0, :cond_25

    instance-of v0, p1, Ljava/net/Inet6Address;

    :goto_9
    if-nez v0, :cond_27

    .line 697
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": invalid address type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 696
    :cond_25
    const/4 v0, 0x1

    goto :goto_9

    .line 699
    :cond_27
    return-void
.end method

.method private checkOldImpl()V
    .registers 2

    .prologue
    .line 493
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    if-nez v0, :cond_5

    .line 494
    return-void

    .line 499
    :cond_5
    new-instance v0, Ljava/net/Socket$1;

    invoke-direct {v0, p0}, Ljava/net/Socket$1;-><init>(Ljava/net/Socket;)V

    .line 498
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Ljava/net/Socket;->oldImpl:Z

    .line 518
    return-void
.end method

.method private static nonNullAddress(Ljava/net/InetAddress;)[Ljava/net/InetAddress;
    .registers 3
    .param p0, "address"    # Ljava/net/InetAddress;

    .prologue
    .line 424
    if-nez p0, :cond_8

    .line 425
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 427
    :cond_8
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/net/InetAddress;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0
.end method

.method public static declared-synchronized setSocketImplFactory(Ljava/net/SocketImplFactory;)V
    .registers 5
    .param p0, "fac"    # Ljava/net/SocketImplFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-class v2, Ljava/net/Socket;

    monitor-enter v2

    .line 1740
    :try_start_3
    sget-object v1, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    if-eqz v1, :cond_13

    .line 1741
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

    .line 1743
    :cond_13
    :try_start_13
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1744
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1c

    .line 1745
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkSetFactory()V

    .line 1747
    :cond_1c
    sput-object p0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_10

    monitor-exit v2

    .line 1748
    return-void
.end method


# virtual methods
.method public bind(Ljava/net/SocketAddress;)V
    .registers 8
    .param p1, "bindpoint"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 668
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 669
    new-instance v4, Ljava/net/SocketException;

    const-string/jumbo v5, "Socket is closed"

    invoke-direct {v4, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 670
    :cond_f
    iget-boolean v4, p0, Ljava/net/Socket;->oldImpl:Z

    if-nez v4, :cond_22

    invoke-virtual {p0}, Ljava/net/Socket;->isBound()Z

    move-result v4

    if-eqz v4, :cond_22

    .line 671
    new-instance v4, Ljava/net/SocketException;

    const-string/jumbo v5, "Already bound"

    invoke-direct {v4, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 673
    :cond_22
    if-eqz p1, :cond_33

    instance-of v4, p1, Ljava/net/InetSocketAddress;

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_33

    .line 674
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Unsupported address type"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_33
    move-object v1, p1

    .line 675
    check-cast v1, Ljava/net/InetSocketAddress;

    .line 676
    .local v1, "epoint":Ljava/net/InetSocketAddress;
    if-eqz v1, :cond_47

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v4

    if-eqz v4, :cond_47

    .line 677
    new-instance v4, Ljava/net/SocketException;

    const-string/jumbo v5, "Unresolved address"

    invoke-direct {v4, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 678
    :cond_47
    if-nez v1, :cond_4f

    .line 679
    new-instance v1, Ljava/net/InetSocketAddress;

    .end local v1    # "epoint":Ljava/net/InetSocketAddress;
    const/4 v4, 0x0

    invoke-direct {v1, v4}, Ljava/net/InetSocketAddress;-><init>(I)V

    .line 681
    .restart local v1    # "epoint":Ljava/net/InetSocketAddress;
    :cond_4f
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 682
    .local v0, "addr":Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    .line 683
    .local v2, "port":I
    const-string/jumbo v4, "bind"

    invoke-direct {p0, v0, v4}, Ljava/net/Socket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 684
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    .line 685
    .local v3, "security":Ljava/lang/SecurityManager;
    if-eqz v3, :cond_66

    .line 686
    invoke-virtual {v3, v2}, Ljava/lang/SecurityManager;->checkListen(I)V

    .line 688
    :cond_66
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Ljava/net/SocketImpl;->bind(Ljava/net/InetAddress;I)V

    .line 689
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/net/Socket;->bound:Z

    .line 690
    return-void
.end method

.method public declared-synchronized close()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 1547
    :try_start_1
    iget-object v2, p0, Ljava/net/Socket;->closeLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_60

    .line 1548
    :try_start_4
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_5d

    move-result v1

    if-eqz v1, :cond_d

    :try_start_a
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_60

    monitor-exit p0

    .line 1549
    return-void

    .line 1550
    :cond_d
    :try_start_d
    iget-boolean v1, p0, Ljava/net/Socket;->created:Z

    if-eqz v1, :cond_57

    .line 1552
    invoke-static {}, Ljava/net/DebugUtils;->isDebugLogOn()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 1553
    iget-object v1, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    iget-object v1, v1, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v1}, Llibcore/io/IoBridge;->getLocalInetSocketAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v0

    .line 1554
    .local v0, "isa":Ljava/net/InetSocketAddress;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 1555
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "close [socket]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/net/Socket;->getLocalPort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1554
    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1557
    .end local v0    # "isa":Ljava/net/InetSocketAddress;
    :cond_52
    iget-object v1, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v1}, Ljava/net/SocketImpl;->close()V

    .line 1559
    :cond_57
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/net/Socket;->closed:Z
    :try_end_5a
    .catchall {:try_start_d .. :try_end_5a} :catchall_5d

    :try_start_5a
    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_60

    monitor-exit p0

    .line 1561
    return-void

    .line 1547
    :catchall_5d
    move-exception v1

    :try_start_5e
    monitor-exit v2

    throw v1
    :try_end_60
    .catchall {:try_start_5e .. :try_end_60} :catchall_60

    :catchall_60
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public connect(Ljava/net/SocketAddress;)V
    .registers 3
    .param p1, "endpoint"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 566
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 567
    return-void
.end method

.method public connect(Ljava/net/SocketAddress;I)V
    .registers 12
    .param p1, "endpoint"    # Ljava/net/SocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 587
    if-nez p1, :cond_c

    .line 588
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "connect: The address can\'t be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 590
    :cond_c
    if-gez p2, :cond_17

    .line 591
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "connect: timeout can\'t be negative"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 593
    :cond_17
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v5

    if-eqz v5, :cond_26

    .line 594
    new-instance v5, Ljava/net/SocketException;

    const-string/jumbo v6, "Socket is closed"

    invoke-direct {v5, v6}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 596
    :cond_26
    iget-boolean v5, p0, Ljava/net/Socket;->oldImpl:Z

    if-nez v5, :cond_39

    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_39

    .line 597
    new-instance v5, Ljava/net/SocketException;

    const-string/jumbo v6, "already connected"

    invoke-direct {v5, v6}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 599
    :cond_39
    instance-of v5, p1, Ljava/net/InetSocketAddress;

    if-nez v5, :cond_46

    .line 600
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Unsupported address type"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_46
    move-object v1, p1

    .line 602
    check-cast v1, Ljava/net/InetSocketAddress;

    .line 603
    .local v1, "epoint":Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 604
    .local v0, "addr":Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    .line 605
    .local v3, "port":I
    const-string/jumbo v5, "connect"

    invoke-direct {p0, v0, v5}, Ljava/net/Socket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 608
    const-class v6, Ljava/net/Socket;

    monitor-enter v6

    .line 609
    :try_start_5a
    invoke-static {v3}, Ljava/net/cta/CtaAdapter;->isSendingPermitted(I)Z

    move-result v5

    if-nez v5, :cond_74

    .line 610
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v7, "Fail to send due to mom user permission"

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 611
    new-instance v5, Ljava/net/UnknownHostException;

    const-string/jumbo v7, "User denied by MoM"

    invoke-direct {v5, v7}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_71
    .catchall {:try_start_5a .. :try_end_71} :catchall_71

    .line 608
    :catchall_71
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_74
    monitor-exit v6

    .line 616
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v4

    .line 617
    .local v4, "security":Ljava/lang/SecurityManager;
    if-eqz v4, :cond_88

    .line 618
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v5

    if-eqz v5, :cond_de

    .line 619
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 623
    :cond_88
    :goto_88
    iget-boolean v5, p0, Ljava/net/Socket;->created:Z

    if-nez v5, :cond_8f

    .line 624
    invoke-virtual {p0, v8}, Ljava/net/Socket;->createImpl(Z)V

    .line 625
    :cond_8f
    iget-boolean v5, p0, Ljava/net/Socket;->oldImpl:Z

    if-nez v5, :cond_e6

    .line 626
    iget-object v5, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v5, v1, p2}, Ljava/net/SocketImpl;->connect(Ljava/net/SocketAddress;I)V

    .line 634
    :goto_98
    iput-boolean v8, p0, Ljava/net/Socket;->connected:Z

    .line 636
    invoke-static {}, Ljava/net/DebugUtils;->isDebugLogOn()Z

    move-result v5

    if-eqz v5, :cond_db

    .line 637
    iget-object v5, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    iget-object v5, v5, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v5}, Llibcore/io/IoBridge;->getLocalInetSocketAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v2

    .line 638
    .local v2, "isa":Ljava/net/InetSocketAddress;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[socket]["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 639
    invoke-virtual {p0}, Ljava/net/Socket;->getLocalPort()I

    move-result v7

    .line 638
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 639
    const-string/jumbo v7, "] connected"

    .line 638
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 646
    .end local v2    # "isa":Ljava/net/InetSocketAddress;
    :cond_db
    iput-boolean v8, p0, Ljava/net/Socket;->bound:Z

    .line 647
    return-void

    .line 621
    :cond_de
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    goto :goto_88

    .line 627
    :cond_e6
    if-nez p2, :cond_fe

    .line 628
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v5

    if-eqz v5, :cond_f8

    .line 629
    iget-object v5, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Ljava/net/SocketImpl;->connect(Ljava/lang/String;I)V

    goto :goto_98

    .line 631
    :cond_f8
    iget-object v5, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v5, v0, v3}, Ljava/net/SocketImpl;->connect(Ljava/net/InetAddress;I)V

    goto :goto_98

    .line 633
    :cond_fe
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v6, "SocketImpl.connect(addr, timeout)"

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method createImpl(Z)V
    .registers 5
    .param p1, "stream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 482
    iget-object v1, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    if-nez v1, :cond_7

    .line 483
    invoke-virtual {p0}, Ljava/net/Socket;->setImpl()V

    .line 485
    :cond_7
    :try_start_7
    iget-object v1, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v1, p1}, Ljava/net/SocketImpl;->create(Z)V

    .line 486
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/net/Socket;->created:Z
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_f} :catch_10

    .line 490
    return-void

    .line 487
    :catch_10
    move-exception v0

    .line 488
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/net/SocketException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getChannel()Ljava/nio/channels/SocketChannel;
    .registers 2

    .prologue
    .line 897
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFileDescriptor$()Ljava/io/FileDescriptor;
    .registers 2

    .prologue
    .line 1800
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method getImpl()Ljava/net/SocketImpl;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 547
    iget-boolean v0, p0, Ljava/net/Socket;->created:Z

    if-nez v0, :cond_8

    .line 548
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/Socket;->createImpl(Z)V

    .line 549
    :cond_8
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 733
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-nez v1, :cond_8

    .line 734
    return-object v2

    .line 736
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/SocketImpl;->getInetAddress()Ljava/net/InetAddress;
    :try_end_f
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_f} :catch_11

    move-result-object v1

    return-object v1

    .line 737
    :catch_11
    move-exception v0

    .line 739
    .local v0, "e":Ljava/net/SocketException;
    return-object v2
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 946
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 947
    new-instance v3, Ljava/net/SocketException;

    const-string/jumbo v4, "Socket is closed"

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 948
    :cond_f
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 949
    new-instance v3, Ljava/net/SocketException;

    const-string/jumbo v4, "Socket is not connected"

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 950
    :cond_1e
    invoke-virtual {p0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 951
    new-instance v3, Ljava/net/SocketException;

    const-string/jumbo v4, "Socket input is shutdown"

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 952
    :cond_2d
    move-object v2, p0

    .line 953
    .local v2, "s":Ljava/net/Socket;
    const/4 v1, 0x0

    .line 956
    .local v1, "is":Ljava/io/InputStream;
    :try_start_2f
    new-instance v3, Ljava/net/Socket$2;

    invoke-direct {v3, p0}, Ljava/net/Socket$2;-><init>(Ljava/net/Socket;)V

    .line 955
    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "is":Ljava/io/InputStream;
    check-cast v1, Ljava/io/InputStream;
    :try_end_3a
    .catch Ljava/security/PrivilegedActionException; {:try_start_2f .. :try_end_3a} :catch_3b

    .line 964
    .local v1, "is":Ljava/io/InputStream;
    return-object v1

    .line 961
    .end local v1    # "is":Ljava/io/InputStream;
    :catch_3b
    move-exception v0

    .line 962
    .local v0, "e":Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v3

    check-cast v3, Ljava/io/IOException;

    throw v3
.end method

.method public getKeepAlive()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1375
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1376
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1377
    :cond_f
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .registers 8

    .prologue
    .line 759
    invoke-virtual {p0}, Ljava/net/Socket;->isBound()Z

    move-result v5

    if-nez v5, :cond_b

    .line 760
    invoke-static {}, Ljava/net/InetAddress;->anyLocalAddress()Ljava/net/InetAddress;

    move-result-object v5

    return-object v5

    .line 761
    :cond_b
    const/4 v3, 0x0

    .line 763
    .local v3, "in":Ljava/net/InetAddress;
    :try_start_c
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v5

    const/16 v6, 0xf

    invoke-virtual {v5, v6}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/net/InetAddress;

    move-object v3, v0

    .line 764
    .local v3, "in":Ljava/net/InetAddress;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v4

    .line 765
    .local v4, "sm":Ljava/lang/SecurityManager;
    if-eqz v4, :cond_28

    .line 766
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 767
    :cond_28
    invoke-virtual {v3}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v5

    if-eqz v5, :cond_32

    .line 768
    invoke-static {}, Ljava/net/InetAddress;->anyLocalAddress()Ljava/net/InetAddress;
    :try_end_31
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_31} :catch_39
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_31} :catch_33

    move-result-object v3

    .line 775
    .end local v4    # "sm":Ljava/lang/SecurityManager;
    :cond_32
    :goto_32
    return-object v3

    .line 772
    .end local v3    # "in":Ljava/net/InetAddress;
    :catch_33
    move-exception v1

    .line 773
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Ljava/net/InetAddress;->anyLocalAddress()Ljava/net/InetAddress;

    move-result-object v3

    .restart local v3    # "in":Ljava/net/InetAddress;
    goto :goto_32

    .line 770
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "in":Ljava/net/InetAddress;
    :catch_39
    move-exception v2

    .line 771
    .local v2, "e":Ljava/lang/SecurityException;
    invoke-static {}, Ljava/net/InetAddress;->getLoopbackAddress()Ljava/net/InetAddress;

    move-result-object v3

    .restart local v3    # "in":Ljava/net/InetAddress;
    goto :goto_32
.end method

.method public getLocalPort()I
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 810
    invoke-virtual {p0}, Ljava/net/Socket;->isBound()Z

    move-result v1

    if-nez v1, :cond_8

    .line 811
    return v2

    .line 813
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/SocketImpl;->getLocalPort()I
    :try_end_f
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_f} :catch_11

    move-result v1

    return v1

    .line 814
    :catch_11
    move-exception v0

    .line 817
    .local v0, "e":Ljava/net/SocketException;
    return v2
.end method

.method public getLocalSocketAddress()Ljava/net/SocketAddress;
    .registers 4

    .prologue
    .line 874
    invoke-virtual {p0}, Ljava/net/Socket;->isBound()Z

    move-result v0

    if-nez v0, :cond_8

    .line 875
    const/4 v0, 0x0

    return-object v0

    .line 876
    :cond_8
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/Socket;->getLocalPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
.end method

.method public getOOBInline()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1164
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1165
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1166
    :cond_f
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 986
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 987
    new-instance v3, Ljava/net/SocketException;

    const-string/jumbo v4, "Socket is closed"

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 988
    :cond_f
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 989
    new-instance v3, Ljava/net/SocketException;

    const-string/jumbo v4, "Socket is not connected"

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 990
    :cond_1e
    invoke-virtual {p0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 991
    new-instance v3, Ljava/net/SocketException;

    const-string/jumbo v4, "Socket output is shutdown"

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 992
    :cond_2d
    move-object v2, p0

    .line 993
    .local v2, "s":Ljava/net/Socket;
    const/4 v1, 0x0

    .line 996
    .local v1, "os":Ljava/io/OutputStream;
    :try_start_2f
    new-instance v3, Ljava/net/Socket$3;

    invoke-direct {v3, p0}, Ljava/net/Socket$3;-><init>(Ljava/net/Socket;)V

    .line 995
    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "os":Ljava/io/OutputStream;
    check-cast v1, Ljava/io/OutputStream;
    :try_end_3a
    .catch Ljava/security/PrivilegedActionException; {:try_start_2f .. :try_end_3a} :catch_3b

    .line 1004
    .local v1, "os":Ljava/io/OutputStream;
    return-object v1

    .line 1001
    .end local v1    # "os":Ljava/io/OutputStream;
    :catch_3b
    move-exception v0

    .line 1002
    .local v0, "e":Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v3

    check-cast v3, Ljava/io/IOException;

    throw v3
.end method

.method public getPort()I
    .registers 3

    .prologue
    .line 789
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-nez v1, :cond_8

    .line 790
    const/4 v1, 0x0

    return v1

    .line 792
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/SocketImpl;->getPort()I
    :try_end_f
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_f} :catch_11

    move-result v1

    return v1

    .line 793
    :catch_11
    move-exception v0

    .line 796
    .local v0, "e":Ljava/net/SocketException;
    const/4 v1, -0x1

    return v1
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

    .line 1339
    :try_start_1
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1340
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

    .line 1341
    :cond_13
    const/4 v1, 0x0

    .line 1342
    .local v1, "result":I
    :try_start_14
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v2

    const/16 v3, 0x1002

    invoke-virtual {v2, v3}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    .line 1343
    .local v0, "o":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_28

    .line 1344
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_27
    .catchall {:try_start_14 .. :try_end_27} :catchall_10

    move-result v1

    :cond_28
    monitor-exit p0

    .line 1346
    return v1
.end method

.method public getRemoteSocketAddress()Ljava/net/SocketAddress;
    .registers 4

    .prologue
    .line 838
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_8

    .line 839
    const/4 v0, 0x0

    return-object v0

    .line 840
    :cond_8
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/Socket;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
.end method

.method public getReuseAddress()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1519
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1520
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1521
    :cond_f
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized getSendBufferSize()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 1265
    :try_start_1
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1266
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

    .line 1267
    :cond_13
    const/4 v1, 0x0

    .line 1268
    .local v1, "result":I
    :try_start_14
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v2

    const/16 v3, 0x1001

    invoke-virtual {v2, v3}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    .line 1269
    .local v0, "o":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_28

    .line 1270
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_27
    .catchall {:try_start_14 .. :try_end_27} :catchall_10

    move-result v1

    :cond_28
    monitor-exit p0

    .line 1272
    return v1
.end method

.method public getSoLinger()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1087
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1088
    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v2, "Socket is closed"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1089
    :cond_f
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    .line 1090
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_24

    .line 1091
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 1093
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_24
    const/4 v1, -0x1

    return v1
.end method

.method public declared-synchronized getSoTimeout()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 1207
    :try_start_1
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1208
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

    .line 1209
    :cond_13
    :try_start_13
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v1

    const/16 v2, 0x1006

    invoke-virtual {v1, v2}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    .line 1211
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_29

    .line 1212
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_26
    .catchall {:try_start_13 .. :try_end_26} :catchall_10

    move-result v1

    monitor-exit p0

    return v1

    .line 1214
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_29
    const/4 v1, 0x0

    monitor-exit p0

    return v1
.end method

.method public getTcpNoDelay()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1038
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1039
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1040
    :cond_f
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getTrafficClass()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1460
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1461
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1464
    :cond_f
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isBound()Z
    .registers 2

    .prologue
    .line 1670
    iget-boolean v0, p0, Ljava/net/Socket;->bound:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Ljava/net/Socket;->oldImpl:Z

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x1

    goto :goto_6
.end method

.method public isClosed()Z
    .registers 3

    .prologue
    .line 1681
    iget-object v0, p0, Ljava/net/Socket;->closeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1682
    :try_start_3
    iget-boolean v1, p0, Ljava/net/Socket;->closed:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    .line 1681
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public isConnected()Z
    .registers 2

    .prologue
    .line 1653
    iget-boolean v0, p0, Ljava/net/Socket;->connected:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Ljava/net/Socket;->oldImpl:Z

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x1

    goto :goto_6
.end method

.method public isInputShutdown()Z
    .registers 2

    .prologue
    .line 1694
    iget-boolean v0, p0, Ljava/net/Socket;->shutIn:Z

    return v0
.end method

.method public isOutputShutdown()Z
    .registers 2

    .prologue
    .line 1705
    iget-boolean v0, p0, Ljava/net/Socket;->shutOut:Z

    return v0
.end method

.method final postAccept()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 705
    iput-boolean v0, p0, Ljava/net/Socket;->connected:Z

    .line 706
    iput-boolean v0, p0, Ljava/net/Socket;->created:Z

    .line 707
    iput-boolean v0, p0, Ljava/net/Socket;->bound:Z

    .line 708
    return-void
.end method

.method public sendUrgentData(I)V
    .registers 4
    .param p1, "data"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1111
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1112
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1115
    :cond_f
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/SocketImpl;->supportsUrgentData()Z

    move-result v0

    if-nez v0, :cond_22

    .line 1116
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Urgent data not supported"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1118
    :cond_22
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/SocketImpl;->sendUrgentData(I)V

    .line 1119
    return-void
.end method

.method setBound()V
    .registers 2

    .prologue
    .line 715
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Socket;->bound:Z

    .line 716
    return-void
.end method

.method setConnected()V
    .registers 2

    .prologue
    .line 719
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Socket;->connected:Z

    .line 720
    return-void
.end method

.method setCreated()V
    .registers 2

    .prologue
    .line 711
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Socket;->created:Z

    .line 712
    return-void
.end method

.method setImpl()V
    .registers 2

    .prologue
    .line 525
    sget-object v0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    if-eqz v0, :cond_19

    .line 526
    sget-object v0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    invoke-interface {v0}, Ljava/net/SocketImplFactory;->createSocketImpl()Ljava/net/SocketImpl;

    move-result-object v0

    iput-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 527
    invoke-direct {p0}, Ljava/net/Socket;->checkOldImpl()V

    .line 533
    :goto_f
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    if-eqz v0, :cond_18

    .line 534
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0, p0}, Ljava/net/SocketImpl;->setSocket(Ljava/net/Socket;)V

    .line 535
    :cond_18
    return-void

    .line 531
    :cond_19
    new-instance v0, Ljava/net/SocksSocketImpl;

    invoke-direct {v0}, Ljava/net/SocksSocketImpl;-><init>()V

    iput-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    goto :goto_f
.end method

.method public setKeepAlive(Z)V
    .registers 5
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1359
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1360
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1361
    :cond_f
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 1362
    return-void
.end method

.method public setOOBInline(Z)V
    .registers 5
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1147
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1148
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1149
    :cond_f
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x1003

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 1150
    return-void
.end method

.method public setPerformancePreferences(III)V
    .registers 4
    .param p1, "connectionTime"    # I
    .param p2, "latency"    # I
    .param p3, "bandwidth"    # I

    .prologue
    .line 1793
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

    .line 1317
    if-gtz p1, :cond_f

    .line 1318
    :try_start_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid receive size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_c

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1320
    :cond_f
    :try_start_f
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1321
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1322
    :cond_1e
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x1002

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_c

    monitor-exit p0

    .line 1323
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
    .line 1503
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1504
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1505
    :cond_f
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 1506
    return-void
.end method

.method public declared-synchronized setSendBufferSize(I)V
    .registers 5
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 1243
    if-gtz p1, :cond_f

    .line 1244
    :try_start_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "negative send size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_c

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1246
    :cond_f
    :try_start_f
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1247
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1248
    :cond_1e
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x1001

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_c

    monitor-exit p0

    .line 1249
    return-void
.end method

.method public setSoLinger(ZI)V
    .registers 6
    .param p1, "on"    # Z
    .param p2, "linger"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x80

    .line 1059
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1060
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1061
    :cond_11
    if-nez p1, :cond_20

    .line 1062
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 1071
    :goto_1f
    return-void

    .line 1064
    :cond_20
    if-gez p2, :cond_2b

    .line 1065
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid value for SO_LINGER"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1067
    :cond_2b
    const v0, 0xffff

    if-le p2, v0, :cond_33

    .line 1068
    const p2, 0xffff

    .line 1069
    :cond_33
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_1f
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

    .line 1187
    :try_start_1
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1188
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

    .line 1189
    :cond_13
    if-gez p1, :cond_1e

    .line 1190
    :try_start_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeout can\'t be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1192
    :cond_1e
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x1006

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_2c
    .catchall {:try_start_15 .. :try_end_2c} :catchall_10

    monitor-exit p0

    .line 1193
    return-void
.end method

.method public setTcpNoDelay(Z)V
    .registers 5
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1022
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1023
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1024
    :cond_f
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 1025
    return-void
.end method

.method public setTrafficClass(I)V
    .registers 6
    .param p1, "tc"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1427
    if-ltz p1, :cond_6

    const/16 v1, 0xff

    if-le p1, v1, :cond_f

    .line 1428
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "tc is not in range 0 -- 255"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1430
    :cond_f
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1431
    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v2, "Socket is closed"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1433
    :cond_1e
    :try_start_1e
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_2a
    .catch Ljava/net/SocketException; {:try_start_1e .. :try_end_2a} :catch_2b

    .line 1440
    :cond_2a
    return-void

    .line 1434
    :catch_2b
    move-exception v0

    .line 1437
    .local v0, "se":Ljava/net/SocketException;
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 1438
    throw v0
.end method

.method public shutdownInput()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1583
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1584
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1585
    :cond_f
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1586
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is not connected"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1587
    :cond_1e
    invoke-virtual {p0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1588
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket input is already shutdown"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1589
    :cond_2d
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/SocketImpl;->shutdownInput()V

    .line 1590
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Socket;->shutIn:Z

    .line 1591
    return-void
.end method

.method public shutdownOutput()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1613
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1614
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1615
    :cond_f
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1616
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is not connected"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1617
    :cond_1e
    invoke-virtual {p0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1618
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket output is already shutdown"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1619
    :cond_2d
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/SocketImpl;->shutdownOutput()V

    .line 1620
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Socket;->shutOut:Z

    .line 1621
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1631
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 1632
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Socket[address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/SocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1633
    const-string/jumbo v2, ",port="

    .line 1632
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1633
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/SocketImpl;->getPort()I

    move-result v2

    .line 1632
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1634
    const-string/jumbo v2, ",localPort="

    .line 1632
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1634
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/SocketImpl;->getLocalPort()I

    move-result v2

    .line 1632
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1634
    const-string/jumbo v2, "]"

    .line 1632
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4e
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_4e} :catch_50

    move-result-object v1

    return-object v1

    .line 1635
    :catch_50
    move-exception v0

    .line 1637
    :cond_51
    const-string/jumbo v1, "Socket[unconnected]"

    return-object v1
.end method
