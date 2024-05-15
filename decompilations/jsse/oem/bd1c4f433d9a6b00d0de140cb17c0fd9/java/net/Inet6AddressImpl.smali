.class Ljava/net/Inet6AddressImpl;
.super Ljava/lang/Object;
.source "Inet6AddressImpl.java"

# interfaces
.implements Ljava/net/InetAddressImpl;


# static fields
.field private static final addressCache:Ljava/net/AddressCache;

.field private static anyLocalAddress:Ljava/net/InetAddress;

.field private static loopbackAddresses:[Ljava/net/InetAddress;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 70
    new-instance v0, Ljava/net/AddressCache;

    invoke-direct {v0}, Ljava/net/AddressCache;-><init>()V

    sput-object v0, Ljava/net/Inet6AddressImpl;->addressCache:Ljava/net/AddressCache;

    .line 63
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getHostByAddr0([B)Ljava/lang/String;
    .registers 7
    .param p1, "addr"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 311
    invoke-static {p1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    .line 313
    .local v1, "hostaddr":Ljava/net/InetAddress;
    :try_start_4
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v4, Landroid/system/OsConstants;->NI_NAMEREQD:I

    invoke-interface {v3, v1, v4}, Llibcore/io/Os;->getnameinfo(Ljava/net/InetAddress;I)Ljava/lang/String;
    :try_end_b
    .catch Landroid/system/GaiException; {:try_start_4 .. :try_end_b} :catch_d

    move-result-object v3

    return-object v3

    .line 314
    :catch_d
    move-exception v0

    .line 315
    .local v0, "e":Landroid/system/GaiException;
    new-instance v2, Ljava/net/UnknownHostException;

    invoke-virtual {v1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 316
    .local v2, "uhe":Ljava/net/UnknownHostException;
    invoke-virtual {v2, v0}, Ljava/net/UnknownHostException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 317
    throw v2
.end method

.method private static lookupHostByName(Ljava/lang/String;I)[Ljava/net/InetAddress;
    .registers 11
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v6

    invoke-interface {v6}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 104
    sget-object v6, Ljava/net/Inet6AddressImpl;->addressCache:Ljava/net/AddressCache;

    invoke-virtual {v6, p0, p1}, Ljava/net/AddressCache;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    .line 105
    .local v2, "cachedResult":Ljava/lang/Object;
    if-eqz v2, :cond_1e

    .line 106
    instance-of v6, v2, [Ljava/net/InetAddress;

    if-eqz v6, :cond_16

    .line 108
    check-cast v2, [Ljava/net/InetAddress;

    .end local v2    # "cachedResult":Ljava/lang/Object;
    return-object v2

    .line 111
    .restart local v2    # "cachedResult":Ljava/lang/Object;
    :cond_16
    new-instance v6, Ljava/net/UnknownHostException;

    check-cast v2, Ljava/lang/String;

    .end local v2    # "cachedResult":Ljava/lang/Object;
    invoke-direct {v6, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 115
    .restart local v2    # "cachedResult":Ljava/lang/Object;
    :cond_1e
    :try_start_1e
    new-instance v5, Landroid/system/StructAddrinfo;

    invoke-direct {v5}, Landroid/system/StructAddrinfo;-><init>()V

    .line 116
    .local v5, "hints":Landroid/system/StructAddrinfo;
    sget v6, Landroid/system/OsConstants;->AI_ADDRCONFIG:I

    iput v6, v5, Landroid/system/StructAddrinfo;->ai_flags:I

    .line 117
    sget v6, Landroid/system/OsConstants;->AF_UNSPEC:I

    iput v6, v5, Landroid/system/StructAddrinfo;->ai_family:I

    .line 121
    sget v6, Landroid/system/OsConstants;->SOCK_STREAM:I

    iput v6, v5, Landroid/system/StructAddrinfo;->ai_socktype:I

    .line 122
    sget-object v6, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v6, p0, v5, p1}, Llibcore/io/Os;->android_getaddrinfo(Ljava/lang/String;Landroid/system/StructAddrinfo;I)[Ljava/net/InetAddress;

    move-result-object v1

    .line 124
    .local v1, "addresses":[Ljava/net/InetAddress;
    const/4 v6, 0x0

    array-length v7, v1

    :goto_37
    if-ge v6, v7, :cond_44

    aget-object v0, v1, v6

    .line 125
    .local v0, "address":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v8

    iput-object p0, v8, Ljava/net/InetAddress$InetAddressHolder;->hostName:Ljava/lang/String;

    .line 124
    add-int/lit8 v6, v6, 0x1

    goto :goto_37

    .line 127
    .end local v0    # "address":Ljava/net/InetAddress;
    :cond_44
    sget-object v6, Ljava/net/Inet6AddressImpl;->addressCache:Ljava/net/AddressCache;

    invoke-virtual {v6, p0, p1, v1}, Ljava/net/AddressCache;->put(Ljava/lang/String;I[Ljava/net/InetAddress;)V
    :try_end_49
    .catch Landroid/system/GaiException; {:try_start_1e .. :try_end_49} :catch_4a

    .line 128
    return-object v1

    .line 129
    .end local v1    # "addresses":[Ljava/net/InetAddress;
    .end local v5    # "hints":Landroid/system/StructAddrinfo;
    :catch_4a
    move-exception v4

    .line 133
    .local v4, "gaiException":Landroid/system/GaiException;
    invoke-virtual {v4}, Landroid/system/GaiException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    instance-of v6, v6, Landroid/system/ErrnoException;

    if-eqz v6, :cond_68

    .line 134
    invoke-virtual {v4}, Landroid/system/GaiException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    check-cast v6, Landroid/system/ErrnoException;

    iget v6, v6, Landroid/system/ErrnoException;->errno:I

    sget v7, Landroid/system/OsConstants;->EACCES:I

    if-ne v6, v7, :cond_68

    .line 135
    new-instance v6, Ljava/lang/SecurityException;

    const-string/jumbo v7, "Permission denied (missing INTERNET permission?)"

    invoke-direct {v6, v7, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 139
    :cond_68
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to resolve host \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget v8, v4, Landroid/system/GaiException;->error:I

    invoke-interface {v7, v8}, Llibcore/io/Os;->gai_strerror(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, "detailMessage":Ljava/lang/String;
    sget-object v6, Ljava/net/Inet6AddressImpl;->addressCache:Ljava/net/AddressCache;

    invoke-virtual {v6, p0, p1, v3}, Ljava/net/AddressCache;->putUnknownHost(Ljava/lang/String;ILjava/lang/String;)V

    .line 141
    invoke-virtual {v4, v3}, Landroid/system/GaiException;->rethrowAsUnknownHostException(Ljava/lang/String;)Ljava/net/UnknownHostException;

    move-result-object v6

    throw v6
.end method

.method private tcpEcho(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Z
    .registers 13
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "timeout"    # I
    .param p3, "sourceAddr"    # Ljava/net/InetAddress;
    .param p4, "ttl"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 196
    const/4 v2, 0x0

    .line 198
    .local v2, "fd":Ljava/io/FileDescriptor;
    :try_start_3
    sget v5, Landroid/system/OsConstants;->AF_INET6:I

    sget v6, Landroid/system/OsConstants;->SOCK_STREAM:I

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Llibcore/io/IoBridge;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v2

    .line 199
    .local v2, "fd":Ljava/io/FileDescriptor;
    if-lez p4, :cond_17

    .line 200
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x19

    invoke-static {v2, v6, v5}, Llibcore/io/IoBridge;->setSocketOption(Ljava/io/FileDescriptor;ILjava/lang/Object;)V

    .line 202
    :cond_17
    if-eqz p3, :cond_1d

    .line 203
    const/4 v5, 0x0

    invoke-static {v2, p3, v5}, Llibcore/io/IoBridge;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 205
    :cond_1d
    const/4 v5, 0x7

    invoke-static {v2, p1, v5, p2}, Llibcore/io/IoBridge;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;II)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_21} :catch_25
    .catchall {:try_start_3 .. :try_end_21} :catchall_3e

    .line 214
    invoke-static {v2}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V

    .line 206
    return v3

    .line 207
    .end local v2    # "fd":Ljava/io/FileDescriptor;
    :catch_25
    move-exception v1

    .line 210
    .local v1, "e":Ljava/io/IOException;
    :try_start_26
    invoke-virtual {v1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 211
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v5, v0, Landroid/system/ErrnoException;

    if-eqz v5, :cond_3c

    .line 212
    check-cast v0, Landroid/system/ErrnoException;

    .end local v0    # "cause":Ljava/lang/Throwable;
    iget v5, v0, Landroid/system/ErrnoException;->errno:I

    sget v6, Landroid/system/OsConstants;->ECONNREFUSED:I
    :try_end_34
    .catchall {:try_start_26 .. :try_end_34} :catchall_3e

    if-ne v5, v6, :cond_3a

    .line 214
    :goto_36
    invoke-static {v2}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V

    .line 211
    return v3

    :cond_3a
    move v3, v4

    .line 212
    goto :goto_36

    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_3c
    move v3, v4

    .line 211
    goto :goto_36

    .line 213
    .end local v0    # "cause":Ljava/lang/Throwable;
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_3e
    move-exception v3

    .line 214
    invoke-static {v2}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V

    .line 213
    throw v3
.end method


# virtual methods
.method public anyLocalAddress()Ljava/net/InetAddress;
    .registers 5

    .prologue
    .line 279
    const-class v2, Ljava/net/Inet6AddressImpl;

    monitor-enter v2

    .line 284
    :try_start_3
    sget-object v1, Ljava/net/Inet6AddressImpl;->anyLocalAddress:Ljava/net/InetAddress;

    if-nez v1, :cond_17

    .line 285
    new-instance v0, Ljava/net/Inet6Address;

    invoke-direct {v0}, Ljava/net/Inet6Address;-><init>()V

    .line 286
    .local v0, "anyAddress":Ljava/net/Inet6Address;
    invoke-virtual {v0}, Ljava/net/Inet6Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v1

    const-string/jumbo v3, "::"

    iput-object v3, v1, Ljava/net/InetAddress$InetAddressHolder;->hostName:Ljava/lang/String;

    .line 287
    sput-object v0, Ljava/net/Inet6AddressImpl;->anyLocalAddress:Ljava/net/InetAddress;

    .line 290
    .end local v0    # "anyAddress":Ljava/net/Inet6Address;
    :cond_17
    sget-object v1, Ljava/net/Inet6AddressImpl;->anyLocalAddress:Ljava/net/InetAddress;
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1b

    monitor-exit v2

    return-object v1

    .line 279
    :catchall_1b
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public clearAddressCache()V
    .registers 2

    .prologue
    .line 154
    sget-object v0, Ljava/net/Inet6AddressImpl;->addressCache:Ljava/net/AddressCache;

    invoke-virtual {v0}, Ljava/net/AddressCache;->clear()V

    .line 155
    return-void
.end method

.method public getHostByAddr([B)Ljava/lang/String;
    .registers 3
    .param p1, "addr"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 147
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 149
    invoke-direct {p0, p1}, Ljava/net/Inet6AddressImpl;->getHostByAddr0([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected icmpEcho(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Z
    .registers 27
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "timeout"    # I
    .param p3, "sourceAddr"    # Ljava/net/InetAddress;
    .param p4, "ttl"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    const/4 v1, 0x0

    .line 223
    .local v1, "fd":Ljava/io/FileDescriptor;
    :try_start_1
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/net/Inet4Address;

    move/from16 v17, v0

    .line 224
    .local v17, "isIPv4":Z
    if-eqz v17, :cond_ad

    sget v11, Landroid/system/OsConstants;->AF_INET:I

    .line 225
    .local v11, "domain":I
    :goto_b
    if-eqz v17, :cond_b1

    sget v16, Landroid/system/OsConstants;->IPPROTO_ICMP:I

    .line 226
    .local v16, "icmpProto":I
    :goto_f
    sget v3, Landroid/system/OsConstants;->SOCK_DGRAM:I

    move/from16 v0, v16

    invoke-static {v11, v3, v0}, Llibcore/io/IoBridge;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v1

    .line 228
    .local v1, "fd":Ljava/io/FileDescriptor;
    if-lez p4, :cond_22

    .line 229
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x19

    invoke-static {v1, v4, v3}, Llibcore/io/IoBridge;->setSocketOption(Ljava/io/FileDescriptor;ILjava/lang/Object;)V

    .line 231
    :cond_22
    if-eqz p3, :cond_2a

    .line 232
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-static {v1, v0, v3}, Llibcore/io/IoBridge;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 238
    :cond_2a
    move/from16 v21, p2

    .local v21, "to":I
    const/16 v18, 0x0

    .local v18, "seq":I
    :goto_2e
    if-lez v21, :cond_c2

    .line 239
    const/16 v3, 0x3e8

    move/from16 v0, v21

    if-lt v0, v3, :cond_b5

    const/16 v20, 0x3e8

    .line 241
    .local v20, "sockTo":I
    :goto_38
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x1006

    invoke-static {v1, v4, v3}, Llibcore/io/IoBridge;->setSocketOption(Ljava/io/FileDescriptor;ILjava/lang/Object;)V

    .line 243
    invoke-static/range {v17 .. v18}, Landroid/system/StructIcmpHdr;->IcmpEchoHdr(ZI)Landroid/system/StructIcmpHdr;

    move-result-object v3

    invoke-virtual {v3}, Landroid/system/StructIcmpHdr;->getBytes()[B

    move-result-object v2

    .line 244
    .local v2, "packet":[B
    array-length v4, v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v6, p1

    invoke-static/range {v1 .. v7}, Llibcore/io/IoBridge;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;I)I

    .line 245
    invoke-static {v1}, Llibcore/io/IoBridge;->getLocalInetSocketAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v15

    .line 247
    .local v15, "icmpId":I
    array-length v3, v2

    new-array v5, v3, [B

    .line 248
    .local v5, "received":[B
    new-instance v9, Ljava/net/DatagramPacket;

    array-length v3, v2

    invoke-direct {v9, v5, v3}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 250
    .local v9, "receivedPacket":Ljava/net/DatagramPacket;
    array-length v7, v5

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v4, v1

    .line 249
    invoke-static/range {v3 .. v10}, Llibcore/io/IoBridge;->recvfrom(ZLjava/io/FileDescriptor;[BIIILjava/net/DatagramPacket;Z)I

    move-result v19

    .line 251
    .local v19, "size":I
    array-length v3, v2

    move/from16 v0, v19

    if-ne v0, v3, :cond_bc

    .line 252
    if-eqz v17, :cond_b8

    sget v3, Landroid/system/OsConstants;->ICMP_ECHOREPLY:I

    int-to-byte v14, v3

    .line 254
    .local v14, "expectedType":B
    :goto_77
    invoke-virtual {v9}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bc

    .line 255
    const/4 v3, 0x0

    aget-byte v3, v5, v3

    if-ne v3, v14, :cond_bc

    .line 256
    const/4 v3, 0x4

    aget-byte v3, v5, v3

    shr-int/lit8 v4, v15, 0x8

    int-to-byte v4, v4

    if-ne v3, v4, :cond_bc

    .line 257
    const/4 v3, 0x5

    aget-byte v3, v5, v3

    int-to-byte v4, v15

    if-ne v3, v4, :cond_bc

    .line 258
    const/4 v3, 0x6

    aget-byte v3, v5, v3

    shr-int/lit8 v4, v18, 0x8

    int-to-byte v4, v4

    if-ne v3, v4, :cond_bc

    .line 259
    const/4 v3, 0x7

    aget-byte v3, v5, v3
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_a1} :catch_c9
    .catchall {:try_start_1 .. :try_end_a1} :catchall_d2

    move/from16 v0, v18

    int-to-byte v4, v0

    if-ne v3, v4, :cond_bc

    .line 261
    const/4 v3, 0x1

    .line 270
    :try_start_a7
    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v4, v1}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_ac
    .catch Landroid/system/ErrnoException; {:try_start_a7 .. :try_end_ac} :catch_dd

    .line 261
    :goto_ac
    return v3

    .line 224
    .end local v2    # "packet":[B
    .end local v5    # "received":[B
    .end local v9    # "receivedPacket":Ljava/net/DatagramPacket;
    .end local v11    # "domain":I
    .end local v14    # "expectedType":B
    .end local v15    # "icmpId":I
    .end local v16    # "icmpProto":I
    .end local v18    # "seq":I
    .end local v19    # "size":I
    .end local v20    # "sockTo":I
    .end local v21    # "to":I
    .local v1, "fd":Ljava/io/FileDescriptor;
    :cond_ad
    :try_start_ad
    sget v11, Landroid/system/OsConstants;->AF_INET6:I

    .restart local v11    # "domain":I
    goto/16 :goto_b

    .line 225
    :cond_b1
    sget v16, Landroid/system/OsConstants;->IPPROTO_ICMPV6:I

    .restart local v16    # "icmpProto":I
    goto/16 :goto_f

    .line 239
    .local v1, "fd":Ljava/io/FileDescriptor;
    .restart local v18    # "seq":I
    .restart local v21    # "to":I
    :cond_b5
    move/from16 v20, v21

    .restart local v20    # "sockTo":I
    goto :goto_38

    .line 253
    .restart local v2    # "packet":[B
    .restart local v5    # "received":[B
    .restart local v9    # "receivedPacket":Ljava/net/DatagramPacket;
    .restart local v15    # "icmpId":I
    .restart local v19    # "size":I
    :cond_b8
    sget v3, Landroid/system/OsConstants;->ICMP6_ECHO_REPLY:I
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_ba} :catch_c9
    .catchall {:try_start_ad .. :try_end_ba} :catchall_d2

    int-to-byte v14, v3

    .restart local v14    # "expectedType":B
    goto :goto_77

    .line 264
    .end local v14    # "expectedType":B
    :cond_bc
    sub-int v21, v21, v20

    .line 238
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_2e

    .line 270
    .end local v2    # "packet":[B
    .end local v5    # "received":[B
    .end local v9    # "receivedPacket":Ljava/net/DatagramPacket;
    .end local v15    # "icmpId":I
    .end local v19    # "size":I
    .end local v20    # "sockTo":I
    :cond_c2
    :try_start_c2
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v3, v1}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_c7
    .catch Landroid/system/ErrnoException; {:try_start_c2 .. :try_end_c7} :catch_db

    .line 274
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    .end local v11    # "domain":I
    .end local v16    # "icmpProto":I
    .end local v17    # "isIPv4":Z
    .end local v18    # "seq":I
    .end local v21    # "to":I
    :goto_c7
    const/4 v3, 0x0

    return v3

    .line 266
    :catch_c9
    move-exception v13

    .line 270
    .local v13, "e":Ljava/io/IOException;
    :try_start_ca
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v3, v1}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_cf
    .catch Landroid/system/ErrnoException; {:try_start_ca .. :try_end_cf} :catch_d0

    goto :goto_c7

    .line 271
    :catch_d0
    move-exception v12

    .local v12, "e":Landroid/system/ErrnoException;
    goto :goto_c7

    .line 268
    .end local v12    # "e":Landroid/system/ErrnoException;
    .end local v13    # "e":Ljava/io/IOException;
    :catchall_d2
    move-exception v3

    .line 270
    :try_start_d3
    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v4, v1}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_d8
    .catch Landroid/system/ErrnoException; {:try_start_d3 .. :try_end_d8} :catch_d9

    .line 268
    :goto_d8
    throw v3

    .line 271
    :catch_d9
    move-exception v12

    .restart local v12    # "e":Landroid/system/ErrnoException;
    goto :goto_d8

    .end local v12    # "e":Landroid/system/ErrnoException;
    .restart local v1    # "fd":Ljava/io/FileDescriptor;
    .restart local v11    # "domain":I
    .restart local v16    # "icmpProto":I
    .restart local v17    # "isIPv4":Z
    .restart local v18    # "seq":I
    .restart local v21    # "to":I
    :catch_db
    move-exception v12

    .restart local v12    # "e":Landroid/system/ErrnoException;
    goto :goto_c7

    .end local v12    # "e":Landroid/system/ErrnoException;
    .restart local v2    # "packet":[B
    .restart local v5    # "received":[B
    .restart local v9    # "receivedPacket":Ljava/net/DatagramPacket;
    .restart local v14    # "expectedType":B
    .restart local v15    # "icmpId":I
    .restart local v19    # "size":I
    .restart local v20    # "sockTo":I
    :catch_dd
    move-exception v12

    .restart local v12    # "e":Landroid/system/ErrnoException;
    goto :goto_ac
.end method

.method public isReachable(Ljava/net/InetAddress;ILjava/net/NetworkInterface;I)Z
    .registers 9
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "timeout"    # I
    .param p3, "netif"    # Ljava/net/NetworkInterface;
    .param p4, "ttl"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    const/4 v2, 0x0

    .line 161
    .local v2, "sourceAddr":Ljava/net/InetAddress;
    if-eqz p3, :cond_23

    .line 168
    invoke-virtual {p3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .line 169
    .local v1, "it":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    const/4 v0, 0x0

    .line 170
    :cond_8
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 171
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 172
    .local v0, "inetaddr":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 173
    move-object v2, v0

    .line 178
    .end local v0    # "inetaddr":Ljava/net/InetAddress;
    .end local v2    # "sourceAddr":Ljava/net/InetAddress;
    :cond_1f
    if-nez v2, :cond_23

    .line 181
    const/4 v3, 0x0

    return v3

    .line 186
    .end local v1    # "it":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_23
    invoke-virtual {p0, p1, p2, v2, p4}, Ljava/net/Inet6AddressImpl;->icmpEcho(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 187
    const/4 v3, 0x1

    return v3

    .line 191
    :cond_2b
    invoke-direct {p0, p1, p2, v2, p4}, Ljava/net/Inet6AddressImpl;->tcpEcho(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Z

    move-result v3

    return v3
.end method

.method public lookupAllHostAddr(Ljava/lang/String;I)[Ljava/net/InetAddress;
    .registers 7
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 74
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 77
    :cond_8
    invoke-virtual {p0}, Ljava/net/Inet6AddressImpl;->loopbackAddresses()[Ljava/net/InetAddress;

    move-result-object v1

    return-object v1

    .line 81
    :cond_d
    invoke-static {p1}, Ljava/net/InetAddress;->parseNumericAddressNoThrow(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 82
    .local v0, "result":Ljava/net/InetAddress;
    if-eqz v0, :cond_3a

    .line 83
    invoke-static {p1, v0}, Ljava/net/InetAddress;->disallowDeprecatedFormats(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v0

    .line 84
    if-nez v0, :cond_33

    .line 85
    new-instance v1, Ljava/net/UnknownHostException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Deprecated IPv4 address format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 87
    :cond_33
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/net/InetAddress;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1

    .line 90
    :cond_3a
    invoke-static {p1, p2}, Ljava/net/Inet6AddressImpl;->lookupHostByName(Ljava/lang/String;I)[Ljava/net/InetAddress;

    move-result-object v1

    return-object v1
.end method

.method public loopbackAddresses()[Ljava/net/InetAddress;
    .registers 5

    .prologue
    .line 296
    const-class v1, Ljava/net/Inet6AddressImpl;

    monitor-enter v1

    .line 301
    :try_start_3
    sget-object v0, Ljava/net/Inet6AddressImpl;->loopbackAddresses:[Ljava/net/InetAddress;

    if-nez v0, :cond_16

    .line 302
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/net/InetAddress;

    sget-object v2, Ljava/net/Inet6Address;->LOOPBACK:Ljava/net/InetAddress;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    sget-object v2, Ljava/net/Inet4Address;->LOOPBACK:Ljava/net/InetAddress;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    sput-object v0, Ljava/net/Inet6AddressImpl;->loopbackAddresses:[Ljava/net/InetAddress;

    .line 305
    :cond_16
    sget-object v0, Ljava/net/Inet6AddressImpl;->loopbackAddresses:[Ljava/net/InetAddress;
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1a

    monitor-exit v1

    return-object v0

    .line 296
    :catchall_1a
    move-exception v0

    monitor-exit v1

    throw v0
.end method
