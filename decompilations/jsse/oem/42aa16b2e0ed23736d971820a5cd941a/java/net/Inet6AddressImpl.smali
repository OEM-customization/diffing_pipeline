.class Ljava/net/Inet6AddressImpl;
.super Ljava/lang/Object;
.source "Inet6AddressImpl.java"

# interfaces
.implements Ljava/net/InetAddressImpl;


# static fields
.field private static final greylist addressCache:Ljava/net/AddressCache;

.field private static blacklist anyLocalAddress:Ljava/net/InetAddress;

.field private static blacklist loopbackAddresses:[Ljava/net/InetAddress;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 79
    new-instance v0, Ljava/net/AddressCache;

    invoke-direct {v0}, Ljava/net/AddressCache;-><init>()V

    sput-object v0, Ljava/net/Inet6AddressImpl;->addressCache:Ljava/net/AddressCache;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist getHostByAddr0([B)Ljava/lang/String;
    .registers 6
    .param p1, "addr"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 342
    invoke-static {p1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    .line 344
    .local v0, "hostaddr":Ljava/net/InetAddress;
    :try_start_4
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Landroid/system/OsConstants;->NI_NAMEREQD:I

    invoke-interface {v1, v0, v2}, Llibcore/io/Os;->getnameinfo(Ljava/net/InetAddress;I)Ljava/lang/String;

    move-result-object v1
    :try_end_c
    .catch Landroid/system/GaiException; {:try_start_4 .. :try_end_c} :catch_d

    return-object v1

    .line 345
    :catch_d
    move-exception v1

    .line 346
    .local v1, "e":Landroid/system/GaiException;
    new-instance v2, Ljava/net/UnknownHostException;

    invoke-virtual {v0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 347
    .local v2, "uhe":Ljava/net/UnknownHostException;
    invoke-virtual {v2, v1}, Ljava/net/UnknownHostException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 348
    throw v2
.end method

.method private static blacklist lookupHostByName(Ljava/lang/String;I)[Ljava/net/InetAddress;
    .registers 9
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 115
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 117
    sget-object v0, Ljava/net/Inet6AddressImpl;->addressCache:Ljava/net/AddressCache;

    invoke-virtual {v0, p0, p1}, Ljava/net/AddressCache;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    .line 118
    .local v0, "cachedResult":Ljava/lang/Object;
    if-eqz v0, :cond_20

    .line 119
    instance-of v1, v0, [Ljava/net/InetAddress;

    if-eqz v1, :cond_17

    .line 121
    move-object v1, v0

    check-cast v1, [Ljava/net/InetAddress;

    return-object v1

    .line 124
    :cond_17
    new-instance v1, Ljava/net/UnknownHostException;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 128
    :cond_20
    :try_start_20
    new-instance v1, Landroid/system/StructAddrinfo;

    invoke-direct {v1}, Landroid/system/StructAddrinfo;-><init>()V

    .line 129
    .local v1, "hints":Landroid/system/StructAddrinfo;
    sget v2, Landroid/system/OsConstants;->AI_ADDRCONFIG:I

    iput v2, v1, Landroid/system/StructAddrinfo;->ai_flags:I

    .line 130
    sget v2, Landroid/system/OsConstants;->AF_UNSPEC:I

    iput v2, v1, Landroid/system/StructAddrinfo;->ai_family:I

    .line 134
    sget v2, Landroid/system/OsConstants;->SOCK_STREAM:I

    iput v2, v1, Landroid/system/StructAddrinfo;->ai_socktype:I

    .line 135
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v2, p0, v1, p1}, Llibcore/io/Os;->android_getaddrinfo(Ljava/lang/String;Landroid/system/StructAddrinfo;I)[Ljava/net/InetAddress;

    move-result-object v2

    .line 137
    .local v2, "addresses":[Ljava/net/InetAddress;
    array-length v3, v2

    const/4 v4, 0x0

    :goto_39
    if-ge v4, v3, :cond_4c

    aget-object v5, v2, v4

    .line 138
    .local v5, "address":Ljava/net/InetAddress;
    invoke-virtual {v5}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v6

    iput-object p0, v6, Ljava/net/InetAddress$InetAddressHolder;->hostName:Ljava/lang/String;

    .line 139
    invoke-virtual {v5}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v6

    iput-object p0, v6, Ljava/net/InetAddress$InetAddressHolder;->originalHostName:Ljava/lang/String;

    .line 137
    .end local v5    # "address":Ljava/net/InetAddress;
    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    .line 141
    :cond_4c
    sget-object v3, Ljava/net/Inet6AddressImpl;->addressCache:Ljava/net/AddressCache;

    invoke-virtual {v3, p0, p1, v2}, Ljava/net/AddressCache;->put(Ljava/lang/String;I[Ljava/net/InetAddress;)V
    :try_end_51
    .catch Landroid/system/GaiException; {:try_start_20 .. :try_end_51} :catch_52

    .line 142
    return-object v2

    .line 143
    .end local v1    # "hints":Landroid/system/StructAddrinfo;
    .end local v2    # "addresses":[Ljava/net/InetAddress;
    :catch_52
    move-exception v1

    .line 147
    .local v1, "gaiException":Landroid/system/GaiException;
    invoke-virtual {v1}, Landroid/system/GaiException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Landroid/system/ErrnoException;

    if-eqz v2, :cond_73

    .line 148
    invoke-virtual {v1}, Landroid/system/GaiException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Landroid/system/ErrnoException;

    iget v2, v2, Landroid/system/ErrnoException;->errno:I

    .line 149
    .local v2, "errno":I
    sget v3, Landroid/system/OsConstants;->EACCES:I

    if-eq v2, v3, :cond_6b

    sget v3, Landroid/system/OsConstants;->EPERM:I

    if-ne v2, v3, :cond_73

    .line 150
    :cond_6b
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Permission denied (missing INTERNET permission?)"

    invoke-direct {v3, v4, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 154
    .end local v2    # "errno":I
    :cond_73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to resolve host \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget v4, v1, Landroid/system/GaiException;->error:I

    invoke-interface {v3, v4}, Llibcore/io/Os;->gai_strerror(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 155
    .local v2, "detailMessage":Ljava/lang/String;
    sget-object v3, Ljava/net/Inet6AddressImpl;->addressCache:Ljava/net/AddressCache;

    invoke-virtual {v3, p0, p1, v2}, Ljava/net/AddressCache;->putUnknownHost(Ljava/lang/String;ILjava/lang/String;)V

    .line 156
    invoke-virtual {v1, v2}, Landroid/system/GaiException;->rethrowAsUnknownHostException(Ljava/lang/String;)Ljava/net/UnknownHostException;

    move-result-object v3

    throw v3
.end method

.method private blacklist tcpEcho(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Z
    .registers 12
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "timeout"    # I
    .param p3, "sourceAddr"    # Ljava/net/InetAddress;
    .param p4, "ttl"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    const/4 v0, 0x0

    .line 221
    .local v0, "fd":Ljava/io/FileDescriptor;
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_3
    sget v3, Landroid/system/OsConstants;->AF_INET6:I

    sget v4, Landroid/system/OsConstants;->SOCK_STREAM:I

    invoke-static {v3, v4, v2}, Llibcore/io/IoBridge;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v3

    move-object v0, v3

    .line 222
    if-lez p4, :cond_17

    .line 223
    const/16 v3, 0x19

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v3, v4}, Llibcore/io/IoBridge;->setSocketOption(Ljava/io/FileDescriptor;ILjava/lang/Object;)V

    .line 225
    :cond_17
    if-eqz p3, :cond_1c

    .line 226
    invoke-static {v0, p3, v2}, Llibcore/io/IoBridge;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 228
    :cond_1c
    const/4 v3, 0x7

    invoke-static {v0, p1, v3, p2}, Llibcore/io/IoBridge;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;II)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_20} :catch_27
    .catchall {:try_start_3 .. :try_end_20} :catchall_25

    .line 229
    nop

    .line 237
    invoke-static {v0}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V

    .line 229
    return v1

    .line 237
    :catchall_25
    move-exception v1

    goto :goto_3f

    .line 230
    :catch_27
    move-exception v3

    .line 233
    .local v3, "e":Ljava/io/IOException;
    :try_start_28
    invoke-virtual {v3}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    .line 234
    .local v4, "cause":Ljava/lang/Throwable;
    instance-of v5, v4, Landroid/system/ErrnoException;

    if-eqz v5, :cond_3a

    move-object v5, v4

    check-cast v5, Landroid/system/ErrnoException;

    iget v5, v5, Landroid/system/ErrnoException;->errno:I

    sget v6, Landroid/system/OsConstants;->ECONNREFUSED:I
    :try_end_37
    .catchall {:try_start_28 .. :try_end_37} :catchall_25

    if-ne v5, v6, :cond_3a

    goto :goto_3b

    :cond_3a
    move v1, v2

    .line 237
    :goto_3b
    invoke-static {v0}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V

    .line 234
    return v1

    .line 237
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "cause":Ljava/lang/Throwable;
    :goto_3f
    invoke-static {v0}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V

    .line 238
    throw v1
.end method


# virtual methods
.method public blacklist anyLocalAddress()Ljava/net/InetAddress;
    .registers 5

    .line 306
    const-class v0, Ljava/net/Inet6AddressImpl;

    monitor-enter v0

    .line 311
    :try_start_3
    sget-object v1, Ljava/net/Inet6AddressImpl;->anyLocalAddress:Ljava/net/InetAddress;

    if-nez v1, :cond_16

    .line 312
    new-instance v1, Ljava/net/Inet6Address;

    invoke-direct {v1}, Ljava/net/Inet6Address;-><init>()V

    .line 313
    .local v1, "anyAddress":Ljava/net/Inet6Address;
    invoke-virtual {v1}, Ljava/net/Inet6Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v2

    const-string v3, "::"

    iput-object v3, v2, Ljava/net/InetAddress$InetAddressHolder;->hostName:Ljava/lang/String;

    .line 314
    sput-object v1, Ljava/net/Inet6AddressImpl;->anyLocalAddress:Ljava/net/InetAddress;

    .line 317
    .end local v1    # "anyAddress":Ljava/net/Inet6Address;
    :cond_16
    sget-object v1, Ljava/net/Inet6AddressImpl;->anyLocalAddress:Ljava/net/InetAddress;

    monitor-exit v0

    return-object v1

    .line 318
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public blacklist clearAddressCache()V
    .registers 2

    .line 169
    sget-object v0, Ljava/net/Inet6AddressImpl;->addressCache:Ljava/net/AddressCache;

    invoke-virtual {v0}, Ljava/net/AddressCache;->clear()V

    .line 170
    return-void
.end method

.method public blacklist getHostByAddr([B)Ljava/lang/String;
    .registers 3
    .param p1, "addr"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 162
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 164
    invoke-direct {p0, p1}, Ljava/net/Inet6AddressImpl;->getHostByAddr0([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist icmpEcho(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Z
    .registers 29
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "timeout"    # I
    .param p3, "sourceAddr"    # Ljava/net/InetAddress;
    .param p4, "ttl"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    move-object/from16 v8, p1

    move-object/from16 v9, p3

    const/4 v1, 0x0

    .line 246
    .local v1, "fd":Ljava/io/FileDescriptor;
    const/4 v10, 0x0

    :try_start_6
    instance-of v0, v8, Ljava/net/Inet4Address;

    move v11, v0

    .line 247
    .local v11, "isIPv4":Z
    if-eqz v11, :cond_e

    sget v0, Landroid/system/OsConstants;->AF_INET:I

    goto :goto_10

    :cond_e
    sget v0, Landroid/system/OsConstants;->AF_INET6:I

    :goto_10
    move v12, v0

    .line 248
    .local v12, "domain":I
    if-eqz v11, :cond_16

    sget v0, Landroid/system/OsConstants;->IPPROTO_ICMP:I

    goto :goto_18

    :cond_16
    sget v0, Landroid/system/OsConstants;->IPPROTO_ICMPV6:I

    :goto_18
    move v13, v0

    .line 249
    .local v13, "icmpProto":I
    sget v0, Landroid/system/OsConstants;->SOCK_DGRAM:I

    invoke-static {v12, v0, v13}, Llibcore/io/IoBridge;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v0
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_1f} :catch_10e
    .catchall {:try_start_6 .. :try_end_1f} :catchall_102

    move-object v15, v0

    .line 251
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    .local v15, "fd":Ljava/io/FileDescriptor;
    if-lez p4, :cond_35

    .line 252
    const/16 v0, 0x19

    :try_start_24
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v15, v0, v1}, Llibcore/io/IoBridge;->setSocketOption(Ljava/io/FileDescriptor;ILjava/lang/Object;)V

    goto :goto_35

    .line 292
    .end local v11    # "isIPv4":Z
    .end local v12    # "domain":I
    .end local v13    # "icmpProto":I
    :catchall_2c
    move-exception v0

    move-object v2, v0

    move-object v1, v15

    goto/16 :goto_104

    .line 289
    :catch_31
    move-exception v0

    move-object v1, v15

    goto/16 :goto_10f

    .line 254
    .restart local v11    # "isIPv4":Z
    .restart local v12    # "domain":I
    .restart local v13    # "icmpProto":I
    :cond_35
    :goto_35
    if-eqz v9, :cond_3a

    .line 255
    invoke-static {v15, v9, v10}, Llibcore/io/IoBridge;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_3a} :catch_31
    .catchall {:try_start_24 .. :try_end_3a} :catchall_2c

    .line 261
    :cond_3a
    move/from16 v0, p2

    .local v0, "to":I
    const/4 v1, 0x1

    move v14, v0

    move v7, v1

    .end local v0    # "to":I
    .local v7, "seq":I
    .local v14, "to":I
    :goto_3f
    if-lez v14, :cond_f4

    .line 262
    const/16 v0, 0x3e8

    if-lt v14, v0, :cond_46

    goto :goto_47

    :cond_46
    move v0, v14

    :goto_47
    move/from16 v22, v0

    .line 264
    .local v22, "sockTo":I
    const/16 v0, 0x1006

    :try_start_4b
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v15, v0, v1}, Llibcore/io/IoBridge;->setSocketOption(Ljava/io/FileDescriptor;ILjava/lang/Object;)V

    .line 266
    invoke-static {v11, v7}, Landroid/system/IcmpHeaders;->createIcmpEchoHdr(ZI)[B

    move-result-object v0

    move-object v6, v0

    .line 267
    .local v6, "packet":[B
    const/4 v3, 0x0

    array-length v4, v6

    const/4 v5, 0x0

    const/4 v0, 0x0

    move-object v1, v15

    move-object v2, v6

    move-object v10, v6

    .end local v6    # "packet":[B
    .local v10, "packet":[B
    move-object/from16 v6, p1

    move/from16 v23, v7

    .end local v7    # "seq":I
    .local v23, "seq":I
    move v7, v0

    invoke-static/range {v1 .. v7}, Llibcore/io/IoBridge;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;I)I

    .line 268
    invoke-static {v15}, Llibcore/io/IoBridge;->getLocalInetSocketAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    move v1, v0

    .line 270
    .local v1, "icmpId":I
    array-length v0, v10

    new-array v0, v0, [B

    move-object v2, v0

    .line 271
    .local v2, "received":[B
    new-instance v0, Ljava/net/DatagramPacket;

    array-length v3, v10

    invoke-direct {v0, v2, v3}, Ljava/net/DatagramPacket;-><init>([BI)V

    move-object/from16 v20, v0

    .line 272
    .local v20, "receivedPacket":Ljava/net/DatagramPacket;
    const/4 v0, 0x1

    const/16 v17, 0x0

    array-length v3, v2
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_7f} :catch_f0
    .catchall {:try_start_4b .. :try_end_7f} :catchall_eb

    const/16 v19, 0x0

    const/16 v21, 0x0

    .line 273
    move v4, v14

    .end local v14    # "to":I
    .local v4, "to":I
    move v14, v0

    move-object v5, v15

    .end local v15    # "fd":Ljava/io/FileDescriptor;
    .local v5, "fd":Ljava/io/FileDescriptor;
    move-object/from16 v16, v2

    move/from16 v18, v3

    :try_start_8a
    invoke-static/range {v14 .. v21}, Llibcore/io/IoBridge;->recvfrom(ZLjava/io/FileDescriptor;[BIIILjava/net/DatagramPacket;Z)I

    move-result v0

    move v3, v0

    .line 274
    .local v3, "size":I
    array-length v0, v10

    if-ne v3, v0, :cond_d9

    .line 275
    if-eqz v11, :cond_98

    sget v0, Landroid/system/OsConstants;->ICMP_ECHOREPLY:I

    int-to-byte v0, v0

    goto :goto_9b

    .line 276
    :cond_98
    sget v0, Landroid/system/OsConstants;->ICMP6_ECHO_REPLY:I

    int-to-byte v0, v0

    :goto_9b
    move v6, v0

    .line 277
    .local v6, "expectedType":B
    invoke-virtual/range {v20 .. v20}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d6

    const/4 v7, 0x0

    aget-byte v0, v2, v7

    if-ne v0, v6, :cond_d6

    const/4 v0, 0x4

    aget-byte v0, v2, v0

    shr-int/lit8 v7, v1, 0x8

    int-to-byte v7, v7

    if-ne v0, v7, :cond_d6

    const/4 v0, 0x5

    aget-byte v0, v2, v0

    int-to-byte v7, v1

    if-ne v0, v7, :cond_d6

    .line 281
    const/4 v0, 0x6

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v7, 0x7

    aget-byte v7, v2, v7
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_c3} :catch_e8
    .catchall {:try_start_8a .. :try_end_c3} :catchall_e4

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v7, v0

    .line 282
    .local v7, "receivedSequence":I
    move/from16 v14, v23

    .end local v23    # "seq":I
    .local v14, "seq":I
    if-gt v7, v14, :cond_db

    .line 283
    nop

    .line 292
    if-eqz v5, :cond_d4

    .line 294
    :try_start_cd
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, v5}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_d2
    .catch Landroid/system/ErrnoException; {:try_start_cd .. :try_end_d2} :catch_d3

    goto :goto_d4

    .line 295
    :catch_d3
    move-exception v0

    .line 283
    :cond_d4
    :goto_d4
    const/4 v0, 0x1

    return v0

    .line 277
    .end local v7    # "receivedSequence":I
    .end local v14    # "seq":I
    .restart local v23    # "seq":I
    :cond_d6
    move/from16 v14, v23

    .end local v23    # "seq":I
    .restart local v14    # "seq":I
    goto :goto_db

    .line 274
    .end local v6    # "expectedType":B
    .end local v14    # "seq":I
    .restart local v23    # "seq":I
    :cond_d9
    move/from16 v14, v23

    .line 287
    .end local v23    # "seq":I
    .restart local v14    # "seq":I
    :cond_db
    :goto_db
    sub-int v0, v4, v22

    .line 261
    .end local v1    # "icmpId":I
    .end local v2    # "received":[B
    .end local v3    # "size":I
    .end local v4    # "to":I
    .end local v20    # "receivedPacket":Ljava/net/DatagramPacket;
    .end local v22    # "sockTo":I
    .restart local v0    # "to":I
    add-int/lit8 v7, v14, 0x1

    move v14, v0

    move-object v15, v5

    const/4 v10, 0x0

    .end local v14    # "seq":I
    .local v7, "seq":I
    goto/16 :goto_3f

    .line 292
    .end local v0    # "to":I
    .end local v7    # "seq":I
    .end local v10    # "packet":[B
    .end local v11    # "isIPv4":Z
    .end local v12    # "domain":I
    .end local v13    # "icmpProto":I
    :catchall_e4
    move-exception v0

    move-object v2, v0

    move-object v1, v5

    goto :goto_104

    .line 289
    :catch_e8
    move-exception v0

    move-object v1, v5

    goto :goto_10f

    .line 292
    .end local v5    # "fd":Ljava/io/FileDescriptor;
    .restart local v15    # "fd":Ljava/io/FileDescriptor;
    :catchall_eb
    move-exception v0

    move-object v5, v15

    move-object v2, v0

    move-object v1, v5

    .end local v15    # "fd":Ljava/io/FileDescriptor;
    .restart local v5    # "fd":Ljava/io/FileDescriptor;
    goto :goto_104

    .line 289
    .end local v5    # "fd":Ljava/io/FileDescriptor;
    .restart local v15    # "fd":Ljava/io/FileDescriptor;
    :catch_f0
    move-exception v0

    move-object v5, v15

    move-object v1, v5

    .end local v15    # "fd":Ljava/io/FileDescriptor;
    .restart local v5    # "fd":Ljava/io/FileDescriptor;
    goto :goto_10f

    .line 261
    .end local v5    # "fd":Ljava/io/FileDescriptor;
    .restart local v7    # "seq":I
    .restart local v11    # "isIPv4":Z
    .restart local v12    # "domain":I
    .restart local v13    # "icmpProto":I
    .local v14, "to":I
    .restart local v15    # "fd":Ljava/io/FileDescriptor;
    :cond_f4
    move v4, v14

    move-object v5, v15

    move v14, v7

    .line 292
    .end local v7    # "seq":I
    .end local v11    # "isIPv4":Z
    .end local v12    # "domain":I
    .end local v13    # "icmpProto":I
    .end local v14    # "to":I
    .end local v15    # "fd":Ljava/io/FileDescriptor;
    .restart local v5    # "fd":Ljava/io/FileDescriptor;
    if-eqz v5, :cond_100

    .line 294
    :try_start_f9
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, v5}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_fe
    .catch Landroid/system/ErrnoException; {:try_start_f9 .. :try_end_fe} :catch_ff

    goto :goto_100

    .line 295
    :catch_ff
    move-exception v0

    .line 299
    :cond_100
    :goto_100
    move-object v15, v5

    goto :goto_119

    .line 292
    .end local v5    # "fd":Ljava/io/FileDescriptor;
    .local v1, "fd":Ljava/io/FileDescriptor;
    :catchall_102
    move-exception v0

    move-object v2, v0

    :goto_104
    if-eqz v1, :cond_10d

    .line 294
    :try_start_106
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, v1}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_10b
    .catch Landroid/system/ErrnoException; {:try_start_106 .. :try_end_10b} :catch_10c

    goto :goto_10d

    .line 295
    :catch_10c
    move-exception v0

    .line 297
    :cond_10d
    :goto_10d
    throw v2

    .line 289
    :catch_10e
    move-exception v0

    .line 292
    :goto_10f
    if-eqz v1, :cond_118

    .line 294
    :try_start_111
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, v1}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_116
    .catch Landroid/system/ErrnoException; {:try_start_111 .. :try_end_116} :catch_117

    goto :goto_118

    .line 295
    :catch_117
    move-exception v0

    .line 299
    :cond_118
    :goto_118
    move-object v15, v1

    .end local v1    # "fd":Ljava/io/FileDescriptor;
    .restart local v15    # "fd":Ljava/io/FileDescriptor;
    :goto_119
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist isReachable(Ljava/net/InetAddress;ILjava/net/NetworkInterface;I)Z
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

    .line 176
    const/4 v0, 0x0

    .line 177
    .local v0, "sourceAddr":Ljava/net/InetAddress;
    if-eqz p3, :cond_24

    .line 184
    invoke-virtual {p3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .line 185
    .local v1, "it":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    const/4 v2, 0x0

    .line 186
    .local v2, "inetaddr":Ljava/net/InetAddress;
    :cond_8
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 187
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Ljava/net/InetAddress;

    .line 188
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 189
    move-object v0, v2

    .line 194
    :cond_20
    if-nez v0, :cond_24

    .line 197
    const/4 v3, 0x0

    return v3

    .line 208
    .end local v1    # "it":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v2    # "inetaddr":Ljava/net/InetAddress;
    :cond_24
    invoke-virtual {p0, p1, p2, v0, p4}, Ljava/net/Inet6AddressImpl;->icmpEcho(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 209
    const/4 v1, 0x1

    return v1

    .line 213
    :cond_2c
    invoke-direct {p0, p1, p2, v0, p4}, Ljava/net/Inet6AddressImpl;->tcpEcho(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Z

    move-result v1

    return v1
.end method

.method public blacklist lookupAllHostAddr(Ljava/lang/String;I)[Ljava/net/InetAddress;
    .registers 6
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 91
    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1b

    .line 98
    :cond_9
    invoke-static {p1}, Llibcore/net/InetAddressUtils;->parseNumericAddressNoThrowStripOptionalBrackets(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 99
    .local v0, "result":Ljava/net/InetAddress;
    if-eqz v0, :cond_16

    .line 100
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/net/InetAddress;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1

    .line 103
    :cond_16
    invoke-static {p1, p2}, Ljava/net/Inet6AddressImpl;->lookupHostByName(Ljava/lang/String;I)[Ljava/net/InetAddress;

    move-result-object v1

    return-object v1

    .line 94
    .end local v0    # "result":Ljava/net/InetAddress;
    :cond_1b
    :goto_1b
    invoke-virtual {p0}, Ljava/net/Inet6AddressImpl;->loopbackAddresses()[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public blacklist loopbackAddresses()[Ljava/net/InetAddress;
    .registers 5

    .line 325
    const-class v0, Ljava/net/Inet6AddressImpl;

    monitor-enter v0

    .line 330
    :try_start_3
    sget-object v1, Ljava/net/Inet6AddressImpl;->loopbackAddresses:[Ljava/net/InetAddress;

    if-nez v1, :cond_16

    .line 331
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/net/InetAddress;

    const/4 v2, 0x0

    sget-object v3, Ljava/net/Inet6Address;->LOOPBACK:Ljava/net/InetAddress;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/net/Inet4Address;->LOOPBACK:Ljava/net/InetAddress;

    aput-object v3, v1, v2

    sput-object v1, Ljava/net/Inet6AddressImpl;->loopbackAddresses:[Ljava/net/InetAddress;

    .line 334
    :cond_16
    sget-object v1, Ljava/net/Inet6AddressImpl;->loopbackAddresses:[Ljava/net/InetAddress;

    monitor-exit v0

    return-object v1

    .line 335
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method
