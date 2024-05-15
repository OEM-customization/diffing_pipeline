.class public Ljava/net/DatagramSocket;
.super Ljava/lang/Object;
.source "DatagramSocket.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field static final greylist-max-o ST_CONNECTED:I = 0x1

.field static final greylist-max-o ST_CONNECTED_NO_IMPL:I = 0x2

.field static final greylist-max-o ST_NOT_CONNECTED:I

.field static greylist-max-o factory:Ljava/net/DatagramSocketImplFactory;

.field static greylist-max-o implClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o bound:Z

.field private greylist-max-o bytesLeftToFilter:I

.field private greylist-max-o closeLock:Ljava/lang/Object;

.field private greylist-max-o closed:Z

.field greylist-max-o connectState:I

.field greylist-max-o connectedAddress:Ljava/net/InetAddress;

.field greylist-max-o connectedPort:I

.field private greylist-max-o created:Z

.field private greylist-max-o explicitFilter:Z

.field greylist impl:Ljava/net/DatagramSocketImpl;

.field greylist-max-o oldImpl:Z

.field private greylist-max-o pendingConnectException:Ljava/net/SocketException;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 342
    const/4 v0, 0x0

    sput-object v0, Ljava/net/DatagramSocket;->implClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 216
    new-instance v0, Ljava/net/InetSocketAddress;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-direct {p0, v0}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    .line 217
    return-void
.end method

.method public constructor whitelist test-api <init>(I)V
    .registers 3
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 291
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/net/DatagramSocket;-><init>(ILjava/net/InetAddress;)V

    .line 292
    return-void
.end method

.method public constructor whitelist test-api <init>(ILjava/net/InetAddress;)V
    .registers 4
    .param p1, "port"    # I
    .param p2, "laddr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 319
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p2, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {p0, v0}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    .line 320
    return-void
.end method

.method protected constructor whitelist test-api <init>(Ljava/net/DatagramSocketImpl;)V
    .registers 4
    .param p1, "impl"    # Ljava/net/DatagramSocketImpl;

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/DatagramSocket;->created:Z

    .line 79
    iput-boolean v0, p0, Ljava/net/DatagramSocket;->bound:Z

    .line 80
    iput-boolean v0, p0, Ljava/net/DatagramSocket;->closed:Z

    .line 81
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ljava/net/DatagramSocket;->closeLock:Ljava/lang/Object;

    .line 91
    iput-boolean v0, p0, Ljava/net/DatagramSocket;->oldImpl:Z

    .line 102
    iput-boolean v0, p0, Ljava/net/DatagramSocket;->explicitFilter:Z

    .line 114
    iput v0, p0, Ljava/net/DatagramSocket;->connectState:I

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/DatagramSocket;->connectedAddress:Ljava/net/InetAddress;

    .line 120
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/DatagramSocket;->connectedPort:I

    .line 228
    if-eqz p1, :cond_25

    .line 230
    iput-object p1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    .line 231
    invoke-direct {p0}, Ljava/net/DatagramSocket;->checkOldImpl()V

    .line 232
    return-void

    .line 229
    :cond_25
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public constructor whitelist test-api <init>(Ljava/net/SocketAddress;)V
    .registers 4
    .param p1, "bindaddr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/DatagramSocket;->created:Z

    .line 79
    iput-boolean v0, p0, Ljava/net/DatagramSocket;->bound:Z

    .line 80
    iput-boolean v0, p0, Ljava/net/DatagramSocket;->closed:Z

    .line 81
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ljava/net/DatagramSocket;->closeLock:Ljava/lang/Object;

    .line 91
    iput-boolean v0, p0, Ljava/net/DatagramSocket;->oldImpl:Z

    .line 102
    iput-boolean v0, p0, Ljava/net/DatagramSocket;->explicitFilter:Z

    .line 114
    iput v0, p0, Ljava/net/DatagramSocket;->connectState:I

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/DatagramSocket;->connectedAddress:Ljava/net/InetAddress;

    .line 120
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/DatagramSocket;->connectedPort:I

    .line 259
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->createImpl()V

    .line 260
    if-eqz p1, :cond_3a

    .line 262
    :try_start_22
    invoke-virtual {p0, p1}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_2f

    .line 264
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isBound()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 265
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->close()V

    goto :goto_3a

    .line 264
    :catchall_2f
    move-exception v0

    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isBound()Z

    move-result v1

    if-nez v1, :cond_39

    .line 265
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->close()V

    .line 266
    :cond_39
    throw v0

    .line 268
    :cond_3a
    :goto_3a
    return-void
.end method

.method private greylist-max-o checkFiltering(Ljava/net/DatagramPacket;)Z
    .registers 4
    .param p1, "p"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 856
    iget v0, p0, Ljava/net/DatagramSocket;->bytesLeftToFilter:I

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/net/DatagramSocket;->bytesLeftToFilter:I

    .line 857
    const/4 v1, 0x0

    if-lez v0, :cond_18

    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocketImpl;->dataAvailable()I

    move-result v0

    if-gtz v0, :cond_17

    goto :goto_18

    .line 861
    :cond_17
    return v1

    .line 858
    :cond_18
    :goto_18
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->explicitFilter:Z

    .line 859
    const/4 v0, 0x1

    return v0
.end method

.method private greylist-max-o checkOldImpl()V
    .registers 3

    .line 323
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    if-nez v0, :cond_5

    .line 324
    return-void

    .line 328
    :cond_5
    :try_start_5
    new-instance v0, Ljava/net/DatagramSocket$1;

    invoke-direct {v0, p0}, Ljava/net/DatagramSocket$1;-><init>(Ljava/net/DatagramSocket;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/security/PrivilegedActionException; {:try_start_5 .. :try_end_d} :catch_e

    .line 339
    goto :goto_12

    .line 337
    :catch_e
    move-exception v0

    .line 338
    .local v0, "e":Ljava/security/PrivilegedActionException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/net/DatagramSocket;->oldImpl:Z

    .line 340
    .end local v0    # "e":Ljava/security/PrivilegedActionException;
    :goto_12
    return-void
.end method

.method private declared-synchronized greylist-max-o connectInternal(Ljava/net/InetAddress;I)V
    .registers 9
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    .line 134
    if-ltz p2, :cond_a1

    const v0, 0xffff

    if-gt p2, v0, :cond_a1

    .line 137
    if-eqz p1, :cond_99

    .line 140
    :try_start_a
    const-string v0, "connect"

    invoke-virtual {p0, p1, v0}, Ljava/net/DatagramSocket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_b8

    if-eqz v0, :cond_17

    .line 142
    monitor-exit p0

    return-void

    .line 143
    :cond_17
    :try_start_17
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 144
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_35

    .line 145
    invoke-virtual {p1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 146
    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;)V

    goto :goto_35

    .line 148
    .end local p0    # "this":Ljava/net/DatagramSocket;
    :cond_27
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 149
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/lang/SecurityManager;->checkAccept(Ljava/lang/String;I)V

    .line 153
    :cond_35
    :goto_35
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isBound()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_44

    .line 154
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {p0, v1}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_44
    .catchall {:try_start_17 .. :try_end_44} :catchall_b8

    .line 164
    :cond_44
    :try_start_44
    iget-boolean v1, p0, Ljava/net/DatagramSocket;->oldImpl:Z
    :try_end_46
    .catchall {:try_start_44 .. :try_end_46} :catchall_93

    const/4 v3, 0x2

    if-nez v1, :cond_8a

    :try_start_49
    iget-object v1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    instance-of v4, v1, Ljava/net/AbstractPlainDatagramSocketImpl;
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_88

    if-eqz v4, :cond_58

    :try_start_4f
    check-cast v1, Ljava/net/AbstractPlainDatagramSocketImpl;

    .line 165
    invoke-virtual {v1}, Ljava/net/AbstractPlainDatagramSocketImpl;->nativeConnectDisabled()Z

    move-result v1
    :try_end_55
    .catchall {:try_start_4f .. :try_end_55} :catchall_93

    if-eqz v1, :cond_58

    goto :goto_8a

    .line 169
    :cond_58
    :try_start_58
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/net/DatagramSocketImpl;->connect(Ljava/net/InetAddress;I)V

    .line 172
    const/4 v1, 0x1

    iput v1, p0, Ljava/net/DatagramSocket;->connectState:I

    .line 175
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/DatagramSocketImpl;->dataAvailable()I

    move-result v4
    :try_end_6a
    .catch Ljava/net/SocketException; {:try_start_58 .. :try_end_6a} :catch_83
    .catchall {:try_start_58 .. :try_end_6a} :catchall_88

    .line 176
    .local v4, "avail":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_7d

    .line 179
    if-lez v4, :cond_70

    move v2, v1

    :cond_70
    :try_start_70
    iput-boolean v2, p0, Ljava/net/DatagramSocket;->explicitFilter:Z

    .line 180
    if-eqz v2, :cond_7a

    .line 181
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getReceiveBufferSize()I

    move-result v1

    iput v1, p0, Ljava/net/DatagramSocket;->bytesLeftToFilter:I
    :try_end_7a
    .catch Ljava/net/SocketException; {:try_start_70 .. :try_end_7a} :catch_7b
    .catchall {:try_start_70 .. :try_end_7a} :catchall_93

    .line 188
    .end local v4    # "avail":I
    :cond_7a
    goto :goto_8c

    .line 183
    :catch_7b
    move-exception v1

    goto :goto_84

    .line 177
    .restart local v4    # "avail":I
    :cond_7d
    :try_start_7d
    new-instance v1, Ljava/net/SocketException;

    invoke-direct {v1}, Ljava/net/SocketException;-><init>()V

    .end local v0    # "security":Ljava/lang/SecurityManager;
    .end local p1    # "address":Ljava/net/InetAddress;
    .end local p2    # "port":I
    throw v1
    :try_end_83
    .catch Ljava/net/SocketException; {:try_start_7d .. :try_end_83} :catch_83
    .catchall {:try_start_7d .. :try_end_83} :catchall_88

    .line 183
    .end local v4    # "avail":I
    .restart local v0    # "security":Ljava/lang/SecurityManager;
    .restart local p0    # "this":Ljava/net/DatagramSocket;
    .restart local p1    # "address":Ljava/net/InetAddress;
    .restart local p2    # "port":I
    :catch_83
    move-exception v1

    .line 185
    .local v1, "se":Ljava/net/SocketException;
    :goto_84
    :try_start_84
    iput v3, p0, Ljava/net/DatagramSocket;->connectState:I

    .line 187
    nop

    .end local v0    # "security":Ljava/lang/SecurityManager;
    .end local p0    # "this":Ljava/net/DatagramSocket;
    .end local p1    # "address":Ljava/net/InetAddress;
    .end local p2    # "port":I
    throw v1
    :try_end_88
    .catchall {:try_start_84 .. :try_end_88} :catchall_88

    .line 191
    .end local v1    # "se":Ljava/net/SocketException;
    .restart local v0    # "security":Ljava/lang/SecurityManager;
    .restart local p0    # "this":Ljava/net/DatagramSocket;
    .restart local p1    # "address":Ljava/net/InetAddress;
    .restart local p2    # "port":I
    :catchall_88
    move-exception v1

    goto :goto_94

    .line 166
    :cond_8a
    :goto_8a
    :try_start_8a
    iput v3, p0, Ljava/net/DatagramSocket;->connectState:I
    :try_end_8c
    .catchall {:try_start_8a .. :try_end_8c} :catchall_93

    .line 191
    :goto_8c
    :try_start_8c
    iput-object p1, p0, Ljava/net/DatagramSocket;->connectedAddress:Ljava/net/InetAddress;

    .line 192
    iput p2, p0, Ljava/net/DatagramSocket;->connectedPort:I
    :try_end_90
    .catchall {:try_start_8c .. :try_end_90} :catchall_b8

    .line 193
    nop

    .line 194
    monitor-exit p0

    return-void

    .line 191
    .end local p0    # "this":Ljava/net/DatagramSocket;
    :catchall_93
    move-exception v1

    :goto_94
    :try_start_94
    iput-object p1, p0, Ljava/net/DatagramSocket;->connectedAddress:Ljava/net/InetAddress;

    .line 192
    iput p2, p0, Ljava/net/DatagramSocket;->connectedPort:I

    .line 193
    throw v1

    .line 138
    .end local v0    # "security":Ljava/lang/SecurityManager;
    :cond_99
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "connect: null address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_a1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b8
    .catchall {:try_start_94 .. :try_end_b8} :catchall_b8

    .line 133
    .end local p1    # "address":Ljava/net/InetAddress;
    .end local p2    # "port":I
    :catchall_b8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static declared-synchronized whitelist test-api setDatagramSocketImplFactory(Ljava/net/DatagramSocketImplFactory;)V
    .registers 4
    .param p0, "fac"    # Ljava/net/DatagramSocketImplFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v0, Ljava/net/DatagramSocket;

    monitor-enter v0

    .line 1340
    :try_start_3
    sget-object v1, Ljava/net/DatagramSocket;->factory:Ljava/net/DatagramSocketImplFactory;

    if-nez v1, :cond_14

    .line 1343
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 1344
    .local v1, "security":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_10

    .line 1345
    invoke-virtual {v1}, Ljava/lang/SecurityManager;->checkSetFactory()V

    .line 1347
    :cond_10
    sput-object p0, Ljava/net/DatagramSocket;->factory:Ljava/net/DatagramSocketImplFactory;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1c

    .line 1348
    monitor-exit v0

    return-void

    .line 1341
    .end local v1    # "security":Ljava/lang/SecurityManager;
    :cond_14
    :try_start_14
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "factory already defined"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_1c

    .line 1339
    .end local p0    # "fac":Ljava/net/DatagramSocketImplFactory;
    :catchall_1c
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public declared-synchronized whitelist test-api bind(Ljava/net/SocketAddress;)V
    .registers 8
    .param p1, "addr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    .line 393
    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_67

    .line 395
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isBound()Z

    move-result v0

    if-nez v0, :cond_5f

    .line 397
    if-nez p1, :cond_16

    .line 398
    new-instance v0, Ljava/net/InetSocketAddress;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/InetSocketAddress;-><init>(I)V

    move-object p1, v0

    .line 399
    .end local p0    # "this":Ljava/net/DatagramSocket;
    :cond_16
    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_57

    .line 401
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 402
    .local v0, "epoint":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v1

    if-nez v1, :cond_4f

    .line 404
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 405
    .local v1, "iaddr":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    .line 406
    .local v2, "port":I
    const-string v3, "bind"

    invoke-virtual {p0, v1, v3}, Ljava/net/DatagramSocket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 407
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    .line 408
    .local v3, "sec":Ljava/lang/SecurityManager;
    if-eqz v3, :cond_39

    .line 409
    invoke-virtual {v3, v2}, Ljava/lang/SecurityManager;->checkListen(I)V
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_6f

    .line 412
    :cond_39
    :try_start_39
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v4

    invoke-virtual {v4, v2, v1}, Ljava/net/DatagramSocketImpl;->bind(ILjava/net/InetAddress;)V
    :try_end_40
    .catch Ljava/net/SocketException; {:try_start_39 .. :try_end_40} :catch_46
    .catchall {:try_start_39 .. :try_end_40} :catchall_6f

    .line 416
    nop

    .line 417
    const/4 v4, 0x1

    :try_start_42
    iput-boolean v4, p0, Ljava/net/DatagramSocket;->bound:Z
    :try_end_44
    .catchall {:try_start_42 .. :try_end_44} :catchall_6f

    .line 418
    monitor-exit p0

    return-void

    .line 413
    :catch_46
    move-exception v4

    .line 414
    .local v4, "e":Ljava/net/SocketException;
    :try_start_47
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/DatagramSocketImpl;->close()V

    .line 415
    throw v4

    .line 403
    .end local v1    # "iaddr":Ljava/net/InetAddress;
    .end local v2    # "port":I
    .end local v3    # "sec":Ljava/lang/SecurityManager;
    .end local v4    # "e":Ljava/net/SocketException;
    :cond_4f
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Unresolved address"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 400
    .end local v0    # "epoint":Ljava/net/InetSocketAddress;
    :cond_57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported address type!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :cond_5f
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "already bound"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :cond_67
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6f
    .catchall {:try_start_47 .. :try_end_6f} :catchall_6f

    .line 392
    .end local p1    # "addr":Ljava/net/SocketAddress;
    :catchall_6f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method greylist-max-o checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V
    .registers 6
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "op"    # Ljava/lang/String;

    .line 421
    if-nez p1, :cond_3

    .line 422
    return-void

    .line 424
    :cond_3
    instance-of v0, p1, Ljava/net/Inet4Address;

    if-nez v0, :cond_23

    instance-of v0, p1, Ljava/net/Inet6Address;

    if-eqz v0, :cond_c

    goto :goto_23

    .line 425
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

    .line 427
    :cond_23
    :goto_23
    return-void
.end method

.method public whitelist test-api close()V
    .registers 3

    .line 1265
    iget-object v0, p0, Ljava/net/DatagramSocket;->closeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1266
    :try_start_3
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1267
    monitor-exit v0

    return-void

    .line 1268
    :cond_b
    iget-object v1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v1}, Ljava/net/DatagramSocketImpl;->close()V

    .line 1269
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/net/DatagramSocket;->closed:Z

    .line 1270
    monitor-exit v0

    .line 1271
    return-void

    .line 1270
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public whitelist test-api connect(Ljava/net/InetAddress;I)V
    .registers 4
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I

    .line 478
    :try_start_0
    invoke-direct {p0, p1, p2}, Ljava/net/DatagramSocket;->connectInternal(Ljava/net/InetAddress;I)V
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_3} :catch_4

    .line 484
    goto :goto_7

    .line 479
    :catch_4
    move-exception v0

    .line 483
    .local v0, "se":Ljava/net/SocketException;
    iput-object v0, p0, Ljava/net/DatagramSocket;->pendingConnectException:Ljava/net/SocketException;

    .line 485
    .end local v0    # "se":Ljava/net/SocketException;
    :goto_7
    return-void
.end method

.method public whitelist test-api connect(Ljava/net/SocketAddress;)V
    .registers 5
    .param p1, "addr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 510
    if-eqz p1, :cond_2b

    .line 512
    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_23

    .line 514
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 515
    .local v0, "epoint":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 517
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-direct {p0, v1, v2}, Ljava/net/DatagramSocket;->connectInternal(Ljava/net/InetAddress;I)V

    .line 518
    return-void

    .line 516
    :cond_1b
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Unresolved address"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 513
    .end local v0    # "epoint":Ljava/net/InetSocketAddress;
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported address type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 511
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Address can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o createImpl()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 345
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    if-nez v0, :cond_1d

    .line 346
    sget-object v0, Ljava/net/DatagramSocket;->factory:Ljava/net/DatagramSocketImplFactory;

    if-eqz v0, :cond_12

    .line 347
    invoke-interface {v0}, Ljava/net/DatagramSocketImplFactory;->createDatagramSocketImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    iput-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    .line 348
    invoke-direct {p0}, Ljava/net/DatagramSocket;->checkOldImpl()V

    goto :goto_1d

    .line 350
    :cond_12
    instance-of v0, p0, Ljava/net/MulticastSocket;

    .line 351
    .local v0, "isMulticast":Z
    invoke-static {v0}, Ljava/net/DefaultDatagramSocketImplFactory;->createDatagramSocketImpl(Z)Ljava/net/DatagramSocketImpl;

    move-result-object v1

    iput-object v1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    .line 353
    invoke-direct {p0}, Ljava/net/DatagramSocket;->checkOldImpl()V

    .line 357
    .end local v0    # "isMulticast":Z
    :cond_1d
    :goto_1d
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v0}, Ljava/net/DatagramSocketImpl;->create()V

    .line 358
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v0, p0}, Ljava/net/DatagramSocketImpl;->setDatagramSocket(Ljava/net/DatagramSocket;)V

    .line 359
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/DatagramSocket;->created:Z

    .line 360
    return-void
.end method

.method public whitelist test-api disconnect()V
    .registers 3

    .line 527
    monitor-enter p0

    .line 528
    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 529
    monitor-exit p0

    return-void

    .line 530
    :cond_9
    iget v0, p0, Ljava/net/DatagramSocket;->connectState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 531
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v0}, Ljava/net/DatagramSocketImpl;->disconnect()V

    .line 533
    :cond_13
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/DatagramSocket;->connectedAddress:Ljava/net/InetAddress;

    .line 534
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/DatagramSocket;->connectedPort:I

    .line 535
    const/4 v0, 0x0

    iput v0, p0, Ljava/net/DatagramSocket;->connectState:I

    .line 536
    iput-boolean v0, p0, Ljava/net/DatagramSocket;->explicitFilter:Z

    .line 537
    monitor-exit p0

    .line 538
    return-void

    .line 537
    :catchall_20
    move-exception v0

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public declared-synchronized whitelist test-api getBroadcast()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    .line 1172
    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_19

    .line 1174
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_21

    monitor-exit p0

    return v0

    .line 1173
    .end local p0    # "this":Ljava/net/DatagramSocket;
    :cond_19
    :try_start_19
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_21

    .line 1171
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public whitelist test-api getChannel()Ljava/nio/channels/DatagramChannel;
    .registers 2

    .line 1300
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist test-api getFileDescriptor$()Ljava/io/FileDescriptor;
    .registers 2

    .line 1359
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    iget-object v0, v0, Ljava/net/DatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method greylist-max-o getImpl()Ljava/net/DatagramSocketImpl;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 372
    iget-boolean v0, p0, Ljava/net/DatagramSocket;->created:Z

    if-nez v0, :cond_7

    .line 373
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->createImpl()V

    .line 374
    :cond_7
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    return-object v0
.end method

.method public whitelist test-api getInetAddress()Ljava/net/InetAddress;
    .registers 2

    .line 579
    iget-object v0, p0, Ljava/net/DatagramSocket;->connectedAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public whitelist test-api getLocalAddress()Ljava/net/InetAddress;
    .registers 5

    .line 883
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 884
    const/4 v0, 0x0

    return-object v0

    .line 885
    :cond_8
    const/4 v0, 0x0

    .line 887
    .local v0, "in":Ljava/net/InetAddress;
    :try_start_9
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    move-object v0, v1

    .line 888
    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 889
    invoke-static {}, Ljava/net/InetAddress;->anyLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    move-object v0, v1

    .line 891
    :cond_21
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 892
    .local v1, "s":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_2f

    .line 893
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2f} :catch_30

    .line 897
    .end local v1    # "s":Ljava/lang/SecurityManager;
    :cond_2f
    goto :goto_35

    .line 895
    :catch_30
    move-exception v1

    .line 896
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Ljava/net/InetAddress;->anyLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 898
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_35
    return-object v0
.end method

.method public whitelist test-api getLocalPort()I
    .registers 3

    .line 910
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 911
    const/4 v0, -0x1

    return v0

    .line 913
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocketImpl;->getLocalPort()I

    move-result v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_10} :catch_11

    return v0

    .line 914
    :catch_11
    move-exception v0

    .line 915
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist test-api getLocalSocketAddress()Ljava/net/SocketAddress;
    .registers 4

    .line 630
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 631
    return-object v1

    .line 632
    :cond_8
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isBound()Z

    move-result v0

    if-nez v0, :cond_f

    .line 633
    return-object v1

    .line 634
    :cond_f
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
.end method

.method public whitelist test-api getPort()I
    .registers 2

    .line 593
    iget v0, p0, Ljava/net/DatagramSocket;->connectedPort:I

    return v0
.end method

.method public declared-synchronized whitelist test-api getReceiveBufferSize()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    .line 1070
    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_20

    .line 1072
    const/4 v0, 0x0

    .line 1073
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v1

    const/16 v2, 0x1002

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v1

    .line 1074
    .local v1, "o":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1e

    .line 1075
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_28

    move v0, v2

    .line 1077
    .end local p0    # "this":Ljava/net/DatagramSocket;
    :cond_1e
    monitor-exit p0

    return v0

    .line 1071
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

    .line 1069
    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public whitelist test-api getRemoteSocketAddress()Ljava/net/SocketAddress;
    .registers 4

    .line 613
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_8

    .line 614
    const/4 v0, 0x0

    return-object v0

    .line 615
    :cond_8
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
.end method

.method public declared-synchronized whitelist test-api getReuseAddress()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    .line 1134
    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_19

    .line 1136
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    .line 1137
    .local v0, "o":Ljava/lang/Object;
    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_21

    monitor-exit p0

    return v1

    .line 1135
    .end local v0    # "o":Ljava/lang/Object;
    .end local p0    # "this":Ljava/net/DatagramSocket;
    :cond_19
    :try_start_19
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_21

    .line 1133
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized whitelist test-api getSendBufferSize()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    .line 1012
    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_20

    .line 1014
    const/4 v0, 0x0

    .line 1015
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v1

    const/16 v2, 0x1001

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v1

    .line 1016
    .local v1, "o":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1e

    .line 1017
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_28

    move v0, v2

    .line 1019
    .end local p0    # "this":Ljava/net/DatagramSocket;
    :cond_1e
    monitor-exit p0

    return v0

    .line 1013
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

    .line 1011
    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized whitelist test-api getSoTimeout()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    .line 950
    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_29

    .line 952
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_31

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 953
    monitor-exit p0

    return v1

    .line 954
    :cond_10
    :try_start_10
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    const/16 v2, 0x1006

    invoke-virtual {v0, v2}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    .line 956
    .local v0, "o":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_27

    .line 957
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_25
    .catchall {:try_start_10 .. :try_end_25} :catchall_31

    monitor-exit p0

    return v1

    .line 959
    .end local p0    # "this":Ljava/net/DatagramSocket;
    :cond_27
    monitor-exit p0

    return v1

    .line 951
    .end local v0    # "o":Ljava/lang/Object;
    :cond_29
    :try_start_29
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_31

    .line 949
    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized whitelist test-api getTrafficClass()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    .line 1247
    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_18

    .line 1249
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_20

    monitor-exit p0

    return v0

    .line 1248
    .end local p0    # "this":Ljava/net/DatagramSocket;
    :cond_18
    :try_start_18
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_20

    .line 1246
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public whitelist test-api isBound()Z
    .registers 2

    .line 551
    iget-boolean v0, p0, Ljava/net/DatagramSocket;->bound:Z

    return v0
.end method

.method public whitelist test-api isClosed()Z
    .registers 3

    .line 1280
    iget-object v0, p0, Ljava/net/DatagramSocket;->closeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1281
    :try_start_3
    iget-boolean v1, p0, Ljava/net/DatagramSocket;->closed:Z

    monitor-exit v0

    return v1

    .line 1282
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public whitelist test-api isConnected()Z
    .registers 2

    .line 565
    iget v0, p0, Ljava/net/DatagramSocket;->connectState:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public declared-synchronized whitelist test-api receive(Ljava/net/DatagramPacket;)V
    .registers 10
    .param p1, "p"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 757
    :try_start_1
    monitor-enter p1
    :try_end_2
    .catchall {:try_start_1 .. :try_end_2} :catchall_eb

    .line 758
    :try_start_2
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isBound()Z

    move-result v0

    if-nez v0, :cond_11

    .line 759
    new-instance v0, Ljava/net/InetSocketAddress;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 762
    :cond_11
    iget-object v0, p0, Ljava/net/DatagramSocket;->pendingConnectException:Ljava/net/SocketException;

    if-nez v0, :cond_de

    .line 767
    iget v0, p0, Ljava/net/DatagramSocket;->connectState:I

    const/4 v1, 0x1

    if-nez v0, :cond_67

    .line 769
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 770
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_67

    .line 772
    :goto_20
    const/4 v2, 0x0

    .line 773
    .local v2, "peekAd":Ljava/lang/String;
    const/4 v3, 0x0

    .line 775
    .local v3, "peekPort":I
    iget-boolean v4, p0, Ljava/net/DatagramSocket;->oldImpl:Z

    if-nez v4, :cond_40

    .line 777
    new-instance v4, Ljava/net/DatagramPacket;

    new-array v5, v1, [B

    invoke-direct {v4, v5, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 778
    .local v4, "peekPacket":Ljava/net/DatagramPacket;
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/net/DatagramSocketImpl;->peekData(Ljava/net/DatagramPacket;)I

    move-result v5

    move v3, v5

    .line 779
    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 780
    .end local v4    # "peekPacket":Ljava/net/DatagramPacket;
    goto :goto_53

    .line 781
    :cond_40
    new-instance v4, Ljava/net/InetAddress;

    invoke-direct {v4}, Ljava/net/InetAddress;-><init>()V

    .line 782
    .local v4, "adr":Ljava/net/InetAddress;
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/net/DatagramSocketImpl;->peek(Ljava/net/InetAddress;)I

    move-result v5

    move v3, v5

    .line 783
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5
    :try_end_52
    .catchall {:try_start_2 .. :try_end_52} :catchall_e6

    move-object v2, v5

    .line 786
    .end local v4    # "adr":Ljava/net/InetAddress;
    :goto_53
    :try_start_53
    invoke-virtual {v0, v2, v3}, Ljava/lang/SecurityManager;->checkAccept(Ljava/lang/String;I)V
    :try_end_56
    .catch Ljava/lang/SecurityException; {:try_start_53 .. :try_end_56} :catch_57
    .catchall {:try_start_53 .. :try_end_56} :catchall_e6

    .line 789
    goto :goto_67

    .line 790
    :catch_57
    move-exception v4

    .line 793
    .local v4, "se":Ljava/lang/SecurityException;
    :try_start_58
    new-instance v5, Ljava/net/DatagramPacket;

    new-array v6, v1, [B

    invoke-direct {v5, v6, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 794
    .local v5, "tmp":Ljava/net/DatagramPacket;
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/net/DatagramSocketImpl;->receive(Ljava/net/DatagramPacket;)V

    .line 802
    goto :goto_20

    .line 807
    .end local v0    # "security":Ljava/lang/SecurityManager;
    .end local v2    # "peekAd":Ljava/lang/String;
    .end local v3    # "peekPort":I
    .end local v4    # "se":Ljava/lang/SecurityException;
    .end local v5    # "tmp":Ljava/net/DatagramPacket;
    :cond_67
    :goto_67
    const/4 v0, 0x0

    .line 808
    .local v0, "tmp":Ljava/net/DatagramPacket;
    iget v2, p0, Ljava/net/DatagramSocket;->connectState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_71

    iget-boolean v2, p0, Ljava/net/DatagramSocket;->explicitFilter:Z

    if-eqz v2, :cond_cb

    .line 814
    :cond_71
    const/4 v2, 0x0

    .line 815
    .local v2, "stop":Z
    :goto_72
    if-nez v2, :cond_cb

    .line 816
    const/4 v3, 0x0

    .line 817
    .local v3, "peekAddress":Ljava/net/InetAddress;
    const/4 v4, -0x1

    .line 819
    .local v4, "peekPort":I
    iget-boolean v5, p0, Ljava/net/DatagramSocket;->oldImpl:Z

    if-nez v5, :cond_90

    .line 821
    new-instance v5, Ljava/net/DatagramPacket;

    new-array v6, v1, [B

    invoke-direct {v5, v6, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 822
    .local v5, "peekPacket":Ljava/net/DatagramPacket;
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/net/DatagramSocketImpl;->peekData(Ljava/net/DatagramPacket;)I

    move-result v6

    move v4, v6

    .line 823
    invoke-virtual {v5}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    move-object v3, v6

    .line 824
    .end local v5    # "peekPacket":Ljava/net/DatagramPacket;
    goto :goto_9f

    .line 826
    :cond_90
    new-instance v5, Ljava/net/InetAddress;

    invoke-direct {v5}, Ljava/net/InetAddress;-><init>()V

    move-object v3, v5

    .line 827
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/net/DatagramSocketImpl;->peek(Ljava/net/InetAddress;)I

    move-result v5

    move v4, v5

    .line 829
    :goto_9f
    iget-object v5, p0, Ljava/net/DatagramSocket;->connectedAddress:Ljava/net/InetAddress;

    invoke-virtual {v5, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ae

    iget v5, p0, Ljava/net/DatagramSocket;->connectedPort:I

    if-eq v5, v4, :cond_ac

    goto :goto_ae

    .line 841
    :cond_ac
    const/4 v2, 0x1

    goto :goto_ca

    .line 832
    :cond_ae
    :goto_ae
    new-instance v5, Ljava/net/DatagramPacket;

    const/16 v6, 0x400

    new-array v7, v6, [B

    invoke-direct {v5, v7, v6}, Ljava/net/DatagramPacket;-><init>([BI)V

    move-object v0, v5

    .line 834
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/net/DatagramSocketImpl;->receive(Ljava/net/DatagramPacket;)V

    .line 835
    iget-boolean v5, p0, Ljava/net/DatagramSocket;->explicitFilter:Z

    if-eqz v5, :cond_ca

    .line 836
    invoke-direct {p0, v0}, Ljava/net/DatagramSocket;->checkFiltering(Ljava/net/DatagramPacket;)Z

    move-result v5

    if-eqz v5, :cond_ca

    .line 837
    const/4 v2, 0x1

    .line 843
    .end local v3    # "peekAddress":Ljava/net/InetAddress;
    .end local v4    # "peekPort":I
    :cond_ca
    :goto_ca
    goto :goto_72

    .line 847
    .end local v2    # "stop":Z
    :cond_cb
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/net/DatagramSocketImpl;->receive(Ljava/net/DatagramPacket;)V

    .line 848
    iget-boolean v1, p0, Ljava/net/DatagramSocket;->explicitFilter:Z

    if-eqz v1, :cond_db

    if-nez v0, :cond_db

    .line 850
    invoke-direct {p0, p1}, Ljava/net/DatagramSocket;->checkFiltering(Ljava/net/DatagramPacket;)Z

    .line 852
    .end local v0    # "tmp":Ljava/net/DatagramPacket;
    :cond_db
    monitor-exit p1
    :try_end_dc
    .catchall {:try_start_58 .. :try_end_dc} :catchall_e6

    .line 853
    monitor-exit p0

    return-void

    .line 763
    :cond_de
    :try_start_de
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Pending connect failure"

    invoke-direct {v1, v2, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Ljava/net/DatagramSocket;
    .end local p1    # "p":Ljava/net/DatagramPacket;
    throw v1
    :try_end_e6
    .catchall {:try_start_de .. :try_end_e6} :catchall_e6

    .line 852
    .restart local p0    # "this":Ljava/net/DatagramSocket;
    .restart local p1    # "p":Ljava/net/DatagramPacket;
    :catchall_e6
    move-exception v0

    :goto_e7
    :try_start_e7
    monitor-exit p1
    :try_end_e8
    .catchall {:try_start_e7 .. :try_end_e8} :catchall_e9

    :try_start_e8
    throw v0
    :try_end_e9
    .catchall {:try_start_e8 .. :try_end_e9} :catchall_eb

    .end local p0    # "this":Ljava/net/DatagramSocket;
    :catchall_e9
    move-exception v0

    goto :goto_e7

    .line 756
    .end local p1    # "p":Ljava/net/DatagramPacket;
    :catchall_eb
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public whitelist test-api send(Ljava/net/DatagramPacket;)V
    .registers 6
    .param p1, "p"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 678
    const/4 v0, 0x0

    .line 679
    .local v0, "packetAddress":Ljava/net/InetAddress;
    monitor-enter p1

    .line 681
    :try_start_2
    iget-object v1, p0, Ljava/net/DatagramSocket;->pendingConnectException:Ljava/net/SocketException;

    if-nez v1, :cond_8b

    .line 685
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_83

    .line 687
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    const-string v2, "send"

    invoke-virtual {p0, v1, v2}, Ljava/net/DatagramSocket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 688
    iget v1, p0, Ljava/net/DatagramSocket;->connectState:I

    if-nez v1, :cond_41

    .line 690
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 696
    .local v1, "security":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_40

    .line 697
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 698
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;)V

    goto :goto_40

    .line 700
    :cond_31
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 701
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v3

    .line 700
    invoke-virtual {v1, v2, v3}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 704
    .end local v1    # "security":Ljava/lang/SecurityManager;
    :cond_40
    :goto_40
    goto :goto_63

    .line 706
    :cond_41
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    move-object v0, v1

    .line 707
    if-nez v0, :cond_53

    .line 708
    iget-object v1, p0, Ljava/net/DatagramSocket;->connectedAddress:Ljava/net/InetAddress;

    invoke-virtual {p1, v1}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 709
    iget v1, p0, Ljava/net/DatagramSocket;->connectedPort:I

    invoke-virtual {p1, v1}, Ljava/net/DatagramPacket;->setPort(I)V

    goto :goto_63

    .line 710
    :cond_53
    iget-object v1, p0, Ljava/net/DatagramSocket;->connectedAddress:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 711
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v1

    iget v2, p0, Ljava/net/DatagramSocket;->connectedPort:I

    if-ne v1, v2, :cond_7b

    .line 718
    :goto_63
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isBound()Z

    move-result v1

    if-nez v1, :cond_72

    .line 719
    new-instance v1, Ljava/net/InetSocketAddress;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {p0, v1}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 721
    :cond_72
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/net/DatagramSocketImpl;->send(Ljava/net/DatagramPacket;)V

    .line 722
    monitor-exit p1

    .line 723
    return-void

    .line 712
    :cond_7b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "connected address and packet address differ"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "packetAddress":Ljava/net/InetAddress;
    .end local p0    # "this":Ljava/net/DatagramSocket;
    .end local p1    # "p":Ljava/net/DatagramPacket;
    throw v1

    .line 686
    .restart local v0    # "packetAddress":Ljava/net/InetAddress;
    .restart local p0    # "this":Ljava/net/DatagramSocket;
    .restart local p1    # "p":Ljava/net/DatagramPacket;
    :cond_83
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Socket is closed"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .end local v0    # "packetAddress":Ljava/net/InetAddress;
    .end local p0    # "this":Ljava/net/DatagramSocket;
    .end local p1    # "p":Ljava/net/DatagramPacket;
    throw v1

    .line 682
    .restart local v0    # "packetAddress":Ljava/net/InetAddress;
    .restart local p0    # "this":Ljava/net/DatagramSocket;
    .restart local p1    # "p":Ljava/net/DatagramPacket;
    :cond_8b
    new-instance v2, Ljava/net/SocketException;

    const-string v3, "Pending connect failure"

    invoke-direct {v2, v3, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "packetAddress":Ljava/net/InetAddress;
    .end local p0    # "this":Ljava/net/DatagramSocket;
    .end local p1    # "p":Ljava/net/DatagramPacket;
    throw v2

    .line 722
    .restart local v0    # "packetAddress":Ljava/net/InetAddress;
    .restart local p0    # "this":Ljava/net/DatagramSocket;
    .restart local p1    # "p":Ljava/net/DatagramPacket;
    :catchall_93
    move-exception v1

    monitor-exit p1
    :try_end_95
    .catchall {:try_start_2 .. :try_end_95} :catchall_93

    throw v1
.end method

.method public declared-synchronized whitelist test-api setBroadcast(Z)V
    .registers 5
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    .line 1158
    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_16

    .line 1160
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    const/16 v1, 0x20

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_1e

    .line 1161
    monitor-exit p0

    return-void

    .line 1159
    .end local p0    # "this":Ljava/net/DatagramSocket;
    :cond_16
    :try_start_16
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_1e

    .line 1157
    .end local p1    # "on":Z
    :catchall_1e
    move-exception p1

    monitor-exit p0

    throw p1
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

    .line 1052
    if-lez p1, :cond_23

    .line 1055
    :try_start_3
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_19

    .line 1057
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    const/16 v1, 0x1002

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_21

    .line 1058
    monitor-exit p0

    return-void

    .line 1056
    .end local p0    # "this":Ljava/net/DatagramSocket;
    :cond_19
    :try_start_19
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1051
    .end local p1    # "size":I
    :catchall_21
    move-exception p1

    goto :goto_2b

    .line 1053
    .restart local p1    # "size":I
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid receive size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2b
    .catchall {:try_start_19 .. :try_end_2b} :catchall_21

    .line 1051
    .end local p1    # "size":I
    :goto_2b
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist test-api setReuseAddress(Z)V
    .registers 6
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    .line 1115
    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 1118
    iget-boolean v0, p0, Ljava/net/DatagramSocket;->oldImpl:Z

    const/4 v1, 0x4

    if-eqz v0, :cond_1e

    .line 1119
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    new-instance v2, Ljava/lang/Integer;

    if-eqz p1, :cond_16

    const/4 v3, -0x1

    goto :goto_17

    :cond_16
    const/4 v3, 0x0

    :goto_17
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_29

    .line 1121
    .end local p0    # "this":Ljava/net/DatagramSocket;
    :cond_1e
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_33

    .line 1122
    :goto_29
    monitor-exit p0

    return-void

    .line 1116
    :cond_2b
    :try_start_2b
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_33

    .line 1114
    .end local p1    # "on":Z
    :catchall_33
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist test-api setSendBufferSize(I)V
    .registers 5
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    .line 994
    if-lez p1, :cond_23

    .line 997
    :try_start_3
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_19

    .line 999
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    const/16 v1, 0x1001

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_21

    .line 1000
    monitor-exit p0

    return-void

    .line 998
    .end local p0    # "this":Ljava/net/DatagramSocket;
    :cond_19
    :try_start_19
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 993
    .end local p1    # "size":I
    :catchall_21
    move-exception p1

    goto :goto_2b

    .line 995
    .restart local p1    # "size":I
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "negative send size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2b
    .catchall {:try_start_19 .. :try_end_2b} :catchall_21

    .line 993
    .end local p1    # "size":I
    :goto_2b
    monitor-exit p0

    throw p1
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

    .line 935
    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_17

    .line 937
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    const/16 v1, 0x1006

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_1f

    .line 938
    monitor-exit p0

    return-void

    .line 936
    .end local p0    # "this":Ljava/net/DatagramSocket;
    :cond_17
    :try_start_17
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_1f

    .line 934
    .end local p1    # "timeout":I
    :catchall_1f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist test-api setTrafficClass(I)V
    .registers 5
    .param p1, "tc"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    .line 1215
    if-ltz p1, :cond_2c

    const/16 v0, 0xff

    if-gt p1, v0, :cond_2c

    .line 1218
    :try_start_7
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_34

    if-nez v0, :cond_24

    .line 1221
    :try_start_d
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_19
    .catch Ljava/net/SocketException; {:try_start_d .. :try_end_19} :catch_1a
    .catchall {:try_start_d .. :try_end_19} :catchall_34

    .line 1227
    goto :goto_21

    .line 1222
    .end local p0    # "this":Ljava/net/DatagramSocket;
    :catch_1a
    move-exception v0

    .line 1225
    .local v0, "se":Ljava/net/SocketException;
    :try_start_1b
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isConnected()Z

    move-result v1
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_34

    if-eqz v1, :cond_23

    .line 1228
    .end local v0    # "se":Ljava/net/SocketException;
    :goto_21
    monitor-exit p0

    return-void

    .line 1226
    .restart local v0    # "se":Ljava/net/SocketException;
    .restart local p0    # "this":Ljava/net/DatagramSocket;
    :cond_23
    :try_start_23
    throw v0

    .line 1219
    .end local v0    # "se":Ljava/net/SocketException;
    .end local p0    # "this":Ljava/net/DatagramSocket;
    :cond_24
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1216
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "tc is not in range 0 -- 255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_34
    .catchall {:try_start_23 .. :try_end_34} :catchall_34

    .line 1214
    .end local p1    # "tc":I
    :catchall_34
    move-exception p1

    monitor-exit p0

    throw p1
.end method
