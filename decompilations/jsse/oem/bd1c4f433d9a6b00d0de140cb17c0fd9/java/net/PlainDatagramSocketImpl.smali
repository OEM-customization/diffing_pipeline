.class Ljava/net/PlainDatagramSocketImpl;
.super Ljava/net/AbstractPlainDatagramSocketImpl;
.source "PlainDatagramSocketImpl.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/net/AbstractPlainDatagramSocketImpl;-><init>()V

    return-void
.end method

.method private doRecv(Ljava/net/DatagramPacket;I)V
    .registers 11
    .param p1, "p"    # Ljava/net/DatagramPacket;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 144
    invoke-virtual {p0}, Ljava/net/PlainDatagramSocketImpl;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 145
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_10
    iget v1, p0, Ljava/net/PlainDatagramSocketImpl;->timeout:I

    if-eqz v1, :cond_20

    .line 149
    iget-object v1, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    sget v2, Landroid/system/OsConstants;->POLLIN:I

    sget v3, Landroid/system/OsConstants;->POLLERR:I

    or-int/2addr v2, v3

    iget v3, p0, Ljava/net/PlainDatagramSocketImpl;->timeout:I

    invoke-static {v1, v2, v3}, Llibcore/io/IoBridge;->poll(Ljava/io/FileDescriptor;II)V

    .line 152
    :cond_20
    iget-object v1, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v3

    iget v4, p1, Ljava/net/DatagramPacket;->bufLength:I

    .line 153
    iget-boolean v7, p0, Ljava/net/PlainDatagramSocketImpl;->connected:Z

    move v5, p2

    move-object v6, p1

    .line 152
    invoke-static/range {v0 .. v7}, Llibcore/io/IoBridge;->recvfrom(ZLjava/io/FileDescriptor;[BIIILjava/net/DatagramPacket;Z)I

    .line 154
    return-void
.end method

.method private static makeGroupReq(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)Landroid/system/StructGroupReq;
    .registers 4
    .param p0, "gr_group"    # Ljava/net/InetAddress;
    .param p1, "networkInterface"    # Ljava/net/NetworkInterface;

    .prologue
    .line 174
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v0

    .line 175
    .local v0, "gr_interface":I
    :goto_6
    new-instance v1, Landroid/system/StructGroupReq;

    invoke-direct {v1, v0, p0}, Landroid/system/StructGroupReq;-><init>(ILjava/net/InetAddress;)V

    return-object v1

    .line 174
    .end local v0    # "gr_interface":I
    :cond_c
    const/4 v0, 0x0

    .restart local v0    # "gr_interface":I
    goto :goto_6
.end method


# virtual methods
.method protected declared-synchronized bind0(ILjava/net/InetAddress;)V
    .registers 5
    .param p1, "lport"    # I
    .param p2, "laddr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 99
    :try_start_1
    invoke-virtual {p0}, Ljava/net/PlainDatagramSocketImpl;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 100
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_10

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0

    .line 103
    :cond_13
    :try_start_13
    iget-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p2, p1}, Llibcore/io/IoBridge;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 105
    if-nez p1, :cond_28

    .line 108
    iget-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoBridge;->getLocalInetSocketAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    iput v0, p0, Ljava/net/PlainDatagramSocketImpl;->localPort:I
    :try_end_26
    .catchall {:try_start_13 .. :try_end_26} :catchall_10

    :goto_26
    monitor-exit p0

    .line 112
    return-void

    .line 110
    :cond_28
    :try_start_28
    iput p1, p0, Ljava/net/PlainDatagramSocketImpl;->localPort:I
    :try_end_2a
    .catchall {:try_start_28 .. :try_end_2a} :catchall_10

    goto :goto_26
.end method

.method protected connect0(Ljava/net/InetAddress;I)V
    .registers 5
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 229
    invoke-virtual {p0}, Ljava/net/PlainDatagramSocketImpl;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 230
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_f
    iget-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1, p2}, Llibcore/io/IoBridge;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 234
    return-void
.end method

.method protected datagramSocketClose()V
    .registers 3

    .prologue
    .line 208
    :try_start_0
    iget-object v1, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v1}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 210
    :goto_5
    return-void

    .line 209
    :catch_6
    move-exception v0

    .local v0, "ignored":Ljava/io/IOException;
    goto :goto_5
.end method

.method protected datagramSocketCreate()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 196
    sget v1, Landroid/system/OsConstants;->AF_INET6:I

    sget v2, Landroid/system/OsConstants;->SOCK_DGRAM:I

    invoke-static {v1, v2, v3}, Llibcore/io/IoBridge;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v1

    iput-object v1, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 197
    iget-object v1, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v3, 0x20

    invoke-static {v1, v3, v2}, Llibcore/io/IoBridge;->setSocketOption(Ljava/io/FileDescriptor;ILjava/lang/Object;)V

    .line 200
    :try_start_17
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    sget v3, Landroid/system/OsConstants;->IPPROTO_IP:I

    sget v4, Landroid/system/OsConstants;->IP_MULTICAST_ALL:I

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V
    :try_end_23
    .catch Landroid/system/ErrnoException; {:try_start_17 .. :try_end_23} :catch_24

    .line 204
    return-void

    .line 201
    :catch_24
    move-exception v0

    .line 202
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v1

    throw v1
.end method

.method protected disconnect0(I)V
    .registers 6
    .param p1, "family"    # I

    .prologue
    .line 237
    invoke-virtual {p0}, Ljava/net/PlainDatagramSocketImpl;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 238
    return-void

    .line 241
    :cond_7
    new-instance v1, Ljava/net/InetAddress;

    invoke-direct {v1}, Ljava/net/InetAddress;-><init>()V

    .line 242
    .local v1, "inetAddressUnspec":Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v2

    sget v3, Landroid/system/OsConstants;->AF_UNSPEC:I

    iput v3, v2, Ljava/net/InetAddress$InetAddressHolder;->family:I

    .line 245
    :try_start_14
    iget-object v2, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Llibcore/io/IoBridge;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    :try_end_1a
    .catch Ljava/net/SocketException; {:try_start_14 .. :try_end_1a} :catch_1b

    .line 247
    :goto_1a
    return-void

    .line 246
    :catch_1b
    move-exception v0

    .local v0, "ignored":Ljava/net/SocketException;
    goto :goto_1a
.end method

.method protected getOption(Ljava/net/SocketOption;)Ljava/lang/Object;
    .registers 5
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
    .line 77
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    sget-object v1, Ljdk/net/ExtendedSocketOptions;->SO_FLOW_SLA:Ljava/net/SocketOption;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 78
    invoke-super {p0, p1}, Ljava/net/AbstractPlainDatagramSocketImpl;->getOption(Ljava/net/SocketOption;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 80
    :cond_d
    invoke-virtual {p0}, Ljava/net/PlainDatagramSocketImpl;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 81
    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v2, "Socket closed"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_1c
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
.end method

.method protected getTTL()B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-virtual {p0}, Ljava/net/PlainDatagramSocketImpl;->getTimeToLive()I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method protected getTimeToLive()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    const/16 v1, 0x11

    invoke-static {v0, v1}, Llibcore/io/IoBridge;->getSocketOption(Ljava/io/FileDescriptor;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected join(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)V
    .registers 6
    .param p1, "inetaddr"    # Ljava/net/InetAddress;
    .param p2, "netIf"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    invoke-virtual {p0}, Ljava/net/PlainDatagramSocketImpl;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 180
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_f
    iget-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {p1, p2}, Ljava/net/PlainDatagramSocketImpl;->makeGroupReq(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)Landroid/system/StructGroupReq;

    move-result-object v1

    const/16 v2, 0x13

    invoke-static {v0, v2, v1}, Llibcore/io/IoBridge;->setSocketOption(Ljava/io/FileDescriptor;ILjava/lang/Object;)V

    .line 184
    return-void
.end method

.method protected leave(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)V
    .registers 6
    .param p1, "inetaddr"    # Ljava/net/InetAddress;
    .param p2, "netIf"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-virtual {p0}, Ljava/net/PlainDatagramSocketImpl;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 189
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_f
    iget-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {p1, p2}, Ljava/net/PlainDatagramSocketImpl;->makeGroupReq(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)Landroid/system/StructGroupReq;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v0, v2, v1}, Llibcore/io/IoBridge;->setSocketOption(Ljava/io/FileDescriptor;ILjava/lang/Object;)V

    .line 193
    return-void
.end method

.method protected declared-synchronized peek(Ljava/net/InetAddress;)I
    .registers 5
    .param p1, "i"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 128
    :try_start_1
    new-instance v0, Ljava/net/DatagramPacket;

    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 129
    .local v0, "p":Ljava/net/DatagramPacket;
    sget v1, Landroid/system/OsConstants;->MSG_PEEK:I

    invoke-direct {p0, v0, v1}, Ljava/net/PlainDatagramSocketImpl;->doRecv(Ljava/net/DatagramPacket;I)V

    .line 130
    invoke-virtual {p1}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v2

    iget v2, v2, Ljava/net/InetAddress$InetAddressHolder;->address:I

    iput v2, v1, Ljava/net/InetAddress$InetAddressHolder;->address:I

    .line 131
    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getPort()I
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_24

    move-result v1

    monitor-exit p0

    return v1

    .end local v0    # "p":Ljava/net/DatagramPacket;
    :catchall_24
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected declared-synchronized peekData(Ljava/net/DatagramPacket;)I
    .registers 3
    .param p1, "p"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 135
    :try_start_1
    sget v0, Landroid/system/OsConstants;->MSG_PEEK:I

    invoke-direct {p0, p1, v0}, Ljava/net/PlainDatagramSocketImpl;->doRecv(Ljava/net/DatagramPacket;I)V

    .line 136
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized receive0(Ljava/net/DatagramPacket;)V
    .registers 3
    .param p1, "p"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 140
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, p1, v0}, Ljava/net/PlainDatagramSocketImpl;->doRecv(Ljava/net/DatagramPacket;I)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    monitor-exit p0

    .line 141
    return-void

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected send(Ljava/net/DatagramPacket;)V
    .registers 9
    .param p1, "p"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-virtual {p0}, Ljava/net/PlainDatagramSocketImpl;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 116
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_f
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_24

    .line 119
    :cond_1b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null buffer || null address"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_24
    iget-boolean v0, p0, Ljava/net/PlainDatagramSocketImpl;->connected:Z

    if-eqz v0, :cond_41

    const/4 v6, 0x0

    .line 123
    .local v6, "port":I
    :goto_29
    iget-boolean v0, p0, Ljava/net/PlainDatagramSocketImpl;->connected:Z

    if-eqz v0, :cond_46

    const/4 v5, 0x0

    .line 124
    :goto_2e
    iget-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v3

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Llibcore/io/IoBridge;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;I)I

    .line 125
    return-void

    .line 122
    .end local v6    # "port":I
    :cond_41
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v6

    .restart local v6    # "port":I
    goto :goto_29

    .line 123
    :cond_46
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    .local v5, "address":Ljava/net/InetAddress;
    goto :goto_2e
.end method

.method protected setOption(Ljava/net/SocketOption;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption",
            "<TT;>;TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    sget-object v0, Ljdk/net/ExtendedSocketOptions;->SO_FLOW_SLA:Ljava/net/SocketOption;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 65
    invoke-super {p0, p1, p2}, Ljava/net/AbstractPlainDatagramSocketImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)V

    .line 74
    .end local p2    # "value":Ljava/lang/Object;, "TT;"
    :goto_b
    return-void

    .line 67
    .restart local p2    # "value":Ljava/lang/Object;, "TT;"
    :cond_c
    invoke-virtual {p0}, Ljava/net/PlainDatagramSocketImpl;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 68
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_1b
    invoke-static {p1}, Lsun/net/ExtendedOptionsImpl;->checkSetOptionPermission(Ljava/net/SocketOption;)V

    .line 71
    const-class v0, Ljdk/net/SocketFlow;

    invoke-static {p2, v0}, Lsun/net/ExtendedOptionsImpl;->checkValueType(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 72
    invoke-virtual {p0}, Ljava/net/PlainDatagramSocketImpl;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    check-cast p2, Ljdk/net/SocketFlow;

    .end local p2    # "value":Ljava/lang/Object;, "TT;"
    invoke-static {v0, p2}, Lsun/net/ExtendedOptionsImpl;->setFlowOption(Ljava/io/FileDescriptor;Ljdk/net/SocketFlow;)V

    goto :goto_b
.end method

.method protected setTTL(B)V
    .registers 3
    .param p1, "ttl"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Ljava/net/PlainDatagramSocketImpl;->setTimeToLive(I)V

    .line 166
    return-void
.end method

.method protected setTimeToLive(I)V
    .registers 5
    .param p1, "ttl"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    invoke-static {v0, v2, v1}, Llibcore/io/IoBridge;->setSocketOption(Ljava/io/FileDescriptor;ILjava/lang/Object;)V

    .line 158
    return-void
.end method

.method protected socketGetOption(I)Ljava/lang/Object;
    .registers 4
    .param p1, "opt"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 221
    invoke-virtual {p0}, Ljava/net/PlainDatagramSocketImpl;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 222
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_f
    iget-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1}, Llibcore/io/IoBridge;->getSocketOption(Ljava/io/FileDescriptor;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected socketSetOption(ILjava/lang/Object;)V
    .registers 5
    .param p1, "opt"    # I
    .param p2, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 91
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/net/PlainDatagramSocketImpl;->socketSetOption0(ILjava/lang/Object;)V
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_3} :catch_4

    .line 96
    :cond_3
    return-void

    .line 92
    :catch_4
    move-exception v0

    .line 93
    .local v0, "se":Ljava/net/SocketException;
    iget-boolean v1, p0, Ljava/net/PlainDatagramSocketImpl;->connected:Z

    if-nez v1, :cond_3

    .line 94
    throw v0
.end method

.method protected socketSetOption0(ILjava/lang/Object;)V
    .registers 5
    .param p1, "opt"    # I
    .param p2, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 213
    invoke-virtual {p0}, Ljava/net/PlainDatagramSocketImpl;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 214
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_f
    iget-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1, p2}, Llibcore/io/IoBridge;->setSocketOption(Ljava/io/FileDescriptor;ILjava/lang/Object;)V

    .line 218
    return-void
.end method
