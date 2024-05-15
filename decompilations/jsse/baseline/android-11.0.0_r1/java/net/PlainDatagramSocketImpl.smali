.class Ljava/net/PlainDatagramSocketImpl;
.super Ljava/net/AbstractPlainDatagramSocketImpl;
.source "PlainDatagramSocketImpl.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/net/AbstractPlainDatagramSocketImpl;-><init>()V

    return-void
.end method

.method private blacklist doRecv(Ljava/net/DatagramPacket;I)V
    .registers 14
    .param p1, "p"    # Ljava/net/DatagramPacket;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    invoke-virtual {p0}, Ljava/net/PlainDatagramSocketImpl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 149
    iget v0, p0, Ljava/net/PlainDatagramSocketImpl;->timeout:I

    if-eqz v0, :cond_16

    .line 150
    iget-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    sget v1, Landroid/system/OsConstants;->POLLIN:I

    sget v2, Landroid/system/OsConstants;->POLLERR:I

    or-int/2addr v1, v2

    iget v2, p0, Ljava/net/PlainDatagramSocketImpl;->timeout:I

    invoke-static {v0, v1, v2}, Llibcore/io/IoBridge;->poll(Ljava/io/FileDescriptor;II)V

    .line 153
    :cond_16
    const/4 v3, 0x0

    iget-object v4, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v5

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v6

    iget v7, p1, Ljava/net/DatagramPacket;->bufLength:I

    iget-boolean v10, p0, Ljava/net/PlainDatagramSocketImpl;->connected:Z

    move v8, p2

    move-object v9, p1

    invoke-static/range {v3 .. v10}, Llibcore/io/IoBridge;->recvfrom(ZLjava/io/FileDescriptor;[BIIILjava/net/DatagramPacket;Z)I

    .line 155
    return-void

    .line 146
    :cond_2b
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist makeGroupReq(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)Landroid/system/StructGroupReq;
    .registers 4
    .param p0, "gr_group"    # Ljava/net/InetAddress;
    .param p1, "networkInterface"    # Ljava/net/NetworkInterface;

    .line 175
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 176
    .local v0, "gr_interface":I
    :goto_8
    new-instance v1, Landroid/system/StructGroupReq;

    invoke-direct {v1, v0, p0}, Landroid/system/StructGroupReq;-><init>(ILjava/net/InetAddress;)V

    return-object v1
.end method


# virtual methods
.method protected declared-synchronized blacklist bind0(ILjava/net/InetAddress;)V
    .registers 5
    .param p1, "lport"    # I
    .param p2, "laddr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    .line 100
    :try_start_1
    invoke-virtual {p0}, Ljava/net/PlainDatagramSocketImpl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 104
    iget-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p2, p1}, Llibcore/io/IoBridge;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 106
    if-nez p1, :cond_1b

    .line 109
    iget-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoBridge;->getLocalInetSocketAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    iput v0, p0, Ljava/net/PlainDatagramSocketImpl;->localPort:I

    goto :goto_1d

    .line 111
    .end local p0    # "this":Ljava/net/PlainDatagramSocketImpl;
    :cond_1b
    iput p1, p0, Ljava/net/PlainDatagramSocketImpl;->localPort:I
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_27

    .line 113
    :goto_1d
    monitor-exit p0

    return-void

    .line 101
    :cond_1f
    :try_start_1f
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_27

    .line 99
    .end local p1    # "lport":I
    .end local p2    # "laddr":Ljava/net/InetAddress;
    :catchall_27
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected blacklist connect0(Ljava/net/InetAddress;I)V
    .registers 5
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 230
    invoke-virtual {p0}, Ljava/net/PlainDatagramSocketImpl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_c

    .line 234
    iget-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1, p2}, Llibcore/io/IoBridge;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 235
    return-void

    .line 231
    :cond_c
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist datagramSocketClose()V
    .registers 2

    .line 209
    :try_start_0
    iget-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_7

    .line 210
    :catch_6
    move-exception v0

    :goto_7
    nop

    .line 211
    return-void
.end method

.method protected blacklist datagramSocketCreate()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 197
    sget v0, Landroid/system/OsConstants;->AF_INET6:I

    sget v1, Landroid/system/OsConstants;->SOCK_DGRAM:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Llibcore/io/IoBridge;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 198
    iget-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v3, 0x20

    invoke-static {v0, v3, v1}, Llibcore/io/IoBridge;->setSocketOption(Ljava/io/FileDescriptor;ILjava/lang/Object;)V

    .line 201
    :try_start_17
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v1, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    sget v3, Landroid/system/OsConstants;->IPPROTO_IP:I

    sget v4, Landroid/system/OsConstants;->IP_MULTICAST_ALL:I

    invoke-interface {v0, v1, v3, v4, v2}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V
    :try_end_22
    .catch Landroid/system/ErrnoException; {:try_start_17 .. :try_end_22} :catch_24

    .line 204
    nop

    .line 205
    return-void

    .line 202
    :catch_24
    move-exception v0

    .line 203
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v1

    throw v1
.end method

.method protected blacklist disconnect0(I)V
    .registers 5
    .param p1, "family"    # I

    .line 238
    invoke-virtual {p0}, Ljava/net/PlainDatagramSocketImpl;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 239
    return-void

    .line 242
    :cond_7
    new-instance v0, Ljava/net/InetAddress;

    invoke-direct {v0}, Ljava/net/InetAddress;-><init>()V

    .line 243
    .local v0, "inetAddressUnspec":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v1

    sget v2, Landroid/system/OsConstants;->AF_UNSPEC:I

    iput v2, v1, Ljava/net/InetAddress$InetAddressHolder;->family:I

    .line 246
    :try_start_14
    iget-object v1, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Llibcore/io/IoBridge;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    :try_end_1a
    .catch Ljava/net/SocketException; {:try_start_14 .. :try_end_1a} :catch_1b

    goto :goto_1c

    .line 247
    :catch_1b
    move-exception v1

    :goto_1c
    nop

    .line 248
    return-void
.end method

.method protected blacklist getOption(Ljava/net/SocketOption;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    sget-object v0, Ljdk/net/ExtendedSocketOptions;->SO_FLOW_SLA:Ljava/net/SocketOption;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 78
    invoke-super {p0, p1}, Ljava/net/AbstractPlainDatagramSocketImpl;->getOption(Ljava/net/SocketOption;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 80
    :cond_d
    invoke-virtual {p0}, Ljava/net/PlainDatagramSocketImpl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_22

    .line 83
    invoke-static {p1}, Lsun/net/ExtendedOptionsImpl;->checkGetOptionPermission(Ljava/net/SocketOption;)V

    .line 84
    invoke-static {}, Ljdk/net/SocketFlow;->create()Ljdk/net/SocketFlow;

    move-result-object v0

    .line 85
    .local v0, "flow":Ljdk/net/SocketFlow;
    invoke-virtual {p0}, Ljava/net/PlainDatagramSocketImpl;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1, v0}, Lsun/net/ExtendedOptionsImpl;->getFlowOption(Ljava/io/FileDescriptor;Ljdk/net/SocketFlow;)V

    .line 86
    return-object v0

    .line 81
    .end local v0    # "flow":Ljdk/net/SocketFlow;
    :cond_22
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist core-platform-api test-api getTTL()B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    invoke-virtual {p0}, Ljava/net/PlainDatagramSocketImpl;->getTimeToLive()I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method protected whitelist core-platform-api test-api getTimeToLive()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    iget-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    const/16 v1, 0x11

    invoke-static {v0, v1}, Llibcore/io/IoBridge;->getSocketOption(Ljava/io/FileDescriptor;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected blacklist join(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)V
    .registers 6
    .param p1, "inetaddr"    # Ljava/net/InetAddress;
    .param p2, "netIf"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    invoke-virtual {p0}, Ljava/net/PlainDatagramSocketImpl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_12

    .line 184
    iget-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    const/16 v1, 0x13

    invoke-static {p1, p2}, Ljava/net/PlainDatagramSocketImpl;->makeGroupReq(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)Landroid/system/StructGroupReq;

    move-result-object v2

    invoke-static {v0, v1, v2}, Llibcore/io/IoBridge;->setSocketOption(Ljava/io/FileDescriptor;ILjava/lang/Object;)V

    .line 185
    return-void

    .line 181
    :cond_12
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist leave(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)V
    .registers 6
    .param p1, "inetaddr"    # Ljava/net/InetAddress;
    .param p2, "netIf"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    invoke-virtual {p0}, Ljava/net/PlainDatagramSocketImpl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_12

    .line 193
    iget-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    const/16 v1, 0x14

    invoke-static {p1, p2}, Ljava/net/PlainDatagramSocketImpl;->makeGroupReq(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)Landroid/system/StructGroupReq;

    move-result-object v2

    invoke-static {v0, v1, v2}, Llibcore/io/IoBridge;->setSocketOption(Ljava/io/FileDescriptor;ILjava/lang/Object;)V

    .line 194
    return-void

    .line 190
    :cond_12
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected declared-synchronized whitelist core-platform-api test-api peek(Ljava/net/InetAddress;)I
    .registers 5
    .param p1, "i"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 129
    :try_start_1
    new-instance v0, Ljava/net/DatagramPacket;

    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 130
    .local v0, "p":Ljava/net/DatagramPacket;
    sget v1, Landroid/system/OsConstants;->MSG_PEEK:I

    invoke-direct {p0, v0, v1}, Ljava/net/PlainDatagramSocketImpl;->doRecv(Ljava/net/DatagramPacket;I)V

    .line 131
    invoke-virtual {p1}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v2

    iget v2, v2, Ljava/net/InetAddress$InetAddressHolder;->address:I

    iput v2, v1, Ljava/net/InetAddress$InetAddressHolder;->address:I

    .line 132
    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getPort()I

    move-result v1
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    monitor-exit p0

    return v1

    .line 128
    .end local v0    # "p":Ljava/net/DatagramPacket;
    .end local p0    # "this":Ljava/net/PlainDatagramSocketImpl;
    .end local p1    # "i":Ljava/net/InetAddress;
    :catchall_24
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized whitelist core-platform-api test-api peekData(Ljava/net/DatagramPacket;)I
    .registers 3
    .param p1, "p"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 136
    :try_start_1
    sget v0, Landroid/system/OsConstants;->MSG_PEEK:I

    invoke-direct {p0, p1, v0}, Ljava/net/PlainDatagramSocketImpl;->doRecv(Ljava/net/DatagramPacket;I)V

    .line 137
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return v0

    .line 135
    .end local p0    # "this":Ljava/net/PlainDatagramSocketImpl;
    .end local p1    # "p":Ljava/net/DatagramPacket;
    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized blacklist receive0(Ljava/net/DatagramPacket;)V
    .registers 3
    .param p1, "p"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 141
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, p1, v0}, Ljava/net/PlainDatagramSocketImpl;->doRecv(Ljava/net/DatagramPacket;I)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 142
    monitor-exit p0

    return-void

    .line 140
    .end local p0    # "this":Ljava/net/PlainDatagramSocketImpl;
    .end local p1    # "p":Ljava/net/DatagramPacket;
    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected whitelist core-platform-api test-api send(Ljava/net/DatagramPacket;)V
    .registers 10
    .param p1, "p"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    invoke-virtual {p0}, Ljava/net/PlainDatagramSocketImpl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_43

    .line 119
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v0

    if-eqz v0, :cond_3b

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 123
    iget-boolean v0, p0, Ljava/net/PlainDatagramSocketImpl;->connected:Z

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    goto :goto_1c

    :cond_18
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v0

    :goto_1c
    move v7, v0

    .line 124
    .local v7, "port":I
    iget-boolean v0, p0, Ljava/net/PlainDatagramSocketImpl;->connected:Z

    if-eqz v0, :cond_23

    const/4 v0, 0x0

    goto :goto_27

    :cond_23
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    :goto_27
    move-object v6, v0

    .line 125
    .local v6, "address":Ljava/net/InetAddress;
    iget-object v1, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v4

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Llibcore/io/IoBridge;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;I)I

    .line 126
    return-void

    .line 120
    .end local v6    # "address":Ljava/net/InetAddress;
    .end local v7    # "port":I
    :cond_3b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null buffer || null address"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_43
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist setOption(Ljava/net/SocketOption;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption<",
            "TT;>;TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    sget-object v0, Ljdk/net/ExtendedSocketOptions;->SO_FLOW_SLA:Ljava/net/SocketOption;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 65
    invoke-super {p0, p1, p2}, Ljava/net/AbstractPlainDatagramSocketImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)V

    goto :goto_24

    .line 67
    :cond_c
    invoke-virtual {p0}, Ljava/net/PlainDatagramSocketImpl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_25

    .line 70
    invoke-static {p1}, Lsun/net/ExtendedOptionsImpl;->checkSetOptionPermission(Ljava/net/SocketOption;)V

    .line 71
    const-class v0, Ljdk/net/SocketFlow;

    invoke-static {p2, v0}, Lsun/net/ExtendedOptionsImpl;->checkValueType(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 72
    invoke-virtual {p0}, Ljava/net/PlainDatagramSocketImpl;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Ljdk/net/SocketFlow;

    invoke-static {v0, v1}, Lsun/net/ExtendedOptionsImpl;->setFlowOption(Ljava/io/FileDescriptor;Ljdk/net/SocketFlow;)V

    .line 74
    :goto_24
    return-void

    .line 68
    :cond_25
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist core-platform-api test-api setTTL(B)V
    .registers 3
    .param p1, "ttl"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Ljava/net/PlainDatagramSocketImpl;->setTimeToLive(I)V

    .line 167
    return-void
.end method

.method protected whitelist core-platform-api test-api setTimeToLive(I)V
    .registers 5
    .param p1, "ttl"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    iget-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    invoke-static {v0, v2, v1}, Llibcore/io/IoBridge;->setSocketOption(Ljava/io/FileDescriptor;ILjava/lang/Object;)V

    .line 159
    return-void
.end method

.method protected blacklist socketGetOption(I)Ljava/lang/Object;
    .registers 4
    .param p1, "opt"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 222
    invoke-virtual {p0}, Ljava/net/PlainDatagramSocketImpl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_d

    .line 226
    iget-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1}, Llibcore/io/IoBridge;->getSocketOption(Ljava/io/FileDescriptor;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 223
    :cond_d
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist socketSetOption(ILjava/lang/Object;)V
    .registers 5
    .param p1, "opt"    # I
    .param p2, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 91
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/net/PlainDatagramSocketImpl;->socketSetOption0(ILjava/lang/Object;)V
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_3} :catch_4

    .line 95
    goto :goto_9

    .line 92
    :catch_4
    move-exception v0

    .line 93
    .local v0, "se":Ljava/net/SocketException;
    iget-boolean v1, p0, Ljava/net/PlainDatagramSocketImpl;->connected:Z

    if-eqz v1, :cond_a

    .line 96
    .end local v0    # "se":Ljava/net/SocketException;
    :goto_9
    return-void

    .line 94
    .restart local v0    # "se":Ljava/net/SocketException;
    :cond_a
    throw v0
.end method

.method protected blacklist socketSetOption0(ILjava/lang/Object;)V
    .registers 5
    .param p1, "opt"    # I
    .param p2, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 214
    invoke-virtual {p0}, Ljava/net/PlainDatagramSocketImpl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_c

    .line 218
    iget-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1, p2}, Llibcore/io/IoBridge;->setSocketOption(Ljava/io/FileDescriptor;ILjava/lang/Object;)V

    .line 219
    return-void

    .line 215
    :cond_c
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
