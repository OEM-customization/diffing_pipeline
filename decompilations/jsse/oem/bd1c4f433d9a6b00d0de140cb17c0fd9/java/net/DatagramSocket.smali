.class public Ljava/net/DatagramSocket;
.super Ljava/lang/Object;
.source "DatagramSocket.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field static final ST_CONNECTED:I = 0x1

.field static final ST_CONNECTED_NO_IMPL:I = 0x2

.field static final ST_NOT_CONNECTED:I

.field static factory:Ljava/net/DatagramSocketImplFactory;

.field static implClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private bound:Z

.field private bytesLeftToFilter:I

.field private closeLock:Ljava/lang/Object;

.field private closed:Z

.field connectState:I

.field connectedAddress:Ljava/net/InetAddress;

.field connectedPort:I

.field private created:Z

.field private explicitFilter:Z

.field impl:Ljava/net/DatagramSocketImpl;

.field oldImpl:Z

.field private pendingConnectException:Ljava/net/SocketException;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 341
    const/4 v0, 0x0

    sput-object v0, Ljava/net/DatagramSocket;->implClass:Ljava/lang/Class;

    .line 72
    return-void
.end method

.method public constructor <init>()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 215
    new-instance v0, Ljava/net/InetSocketAddress;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-direct {p0, v0}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    .line 216
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 290
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/net/DatagramSocket;-><init>(ILjava/net/InetAddress;)V

    .line 291
    return-void
.end method

.method public constructor <init>(ILjava/net/InetAddress;)V
    .registers 4
    .param p1, "port"    # I
    .param p2, "laddr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 318
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p2, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {p0, v0}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    .line 319
    return-void
.end method

.method protected constructor <init>(Ljava/net/DatagramSocketImpl;)V
    .registers 5
    .param p1, "impl"    # Ljava/net/DatagramSocketImpl;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->created:Z

    .line 77
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->bound:Z

    .line 78
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->closed:Z

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/net/DatagramSocket;->closeLock:Ljava/lang/Object;

    .line 89
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->oldImpl:Z

    .line 100
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->explicitFilter:Z

    .line 112
    iput v1, p0, Ljava/net/DatagramSocket;->connectState:I

    .line 117
    iput-object v2, p0, Ljava/net/DatagramSocket;->connectedAddress:Ljava/net/InetAddress;

    .line 118
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/DatagramSocket;->connectedPort:I

    .line 227
    if-nez p1, :cond_25

    .line 228
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 229
    :cond_25
    iput-object p1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    .line 230
    invoke-direct {p0}, Ljava/net/DatagramSocket;->checkOldImpl()V

    .line 231
    return-void
.end method

.method public constructor <init>(Ljava/net/SocketAddress;)V
    .registers 5
    .param p1, "bindaddr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->created:Z

    .line 77
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->bound:Z

    .line 78
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->closed:Z

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/net/DatagramSocket;->closeLock:Ljava/lang/Object;

    .line 89
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->oldImpl:Z

    .line 100
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->explicitFilter:Z

    .line 112
    iput v1, p0, Ljava/net/DatagramSocket;->connectState:I

    .line 117
    iput-object v2, p0, Ljava/net/DatagramSocket;->connectedAddress:Ljava/net/InetAddress;

    .line 118
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/DatagramSocket;->connectedPort:I

    .line 258
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->createImpl()V

    .line 259
    if-eqz p1, :cond_2e

    .line 261
    :try_start_22
    invoke-virtual {p0, p1}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_2f

    .line 263
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isBound()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 264
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->close()V

    .line 267
    :cond_2e
    return-void

    .line 262
    :catchall_2f
    move-exception v0

    .line 263
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isBound()Z

    move-result v1

    if-nez v1, :cond_39

    .line 264
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->close()V

    .line 262
    :cond_39
    throw v0
.end method

.method private checkFiltering(Ljava/net/DatagramPacket;)Z
    .registers 5
    .param p1, "p"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 856
    iget v0, p0, Ljava/net/DatagramSocket;->bytesLeftToFilter:I

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/net/DatagramSocket;->bytesLeftToFilter:I

    .line 857
    iget v0, p0, Ljava/net/DatagramSocket;->bytesLeftToFilter:I

    if-lez v0, :cond_18

    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocketImpl;->dataAvailable()I

    move-result v0

    if-gtz v0, :cond_1c

    .line 858
    :cond_18
    iput-boolean v2, p0, Ljava/net/DatagramSocket;->explicitFilter:Z

    .line 859
    const/4 v0, 0x1

    return v0

    .line 861
    :cond_1c
    return v2
.end method

.method private checkOldImpl()V
    .registers 3

    .prologue
    .line 322
    iget-object v1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    if-nez v1, :cond_5

    .line 323
    return-void

    .line 328
    :cond_5
    :try_start_5
    new-instance v1, Ljava/net/DatagramSocket$1;

    invoke-direct {v1, p0}, Ljava/net/DatagramSocket$1;-><init>(Ljava/net/DatagramSocket;)V

    .line 327
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/security/PrivilegedActionException; {:try_start_5 .. :try_end_d} :catch_e

    .line 339
    :goto_d
    return-void

    .line 336
    :catch_e
    move-exception v0

    .line 337
    .local v0, "e":Ljava/security/PrivilegedActionException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/net/DatagramSocket;->oldImpl:Z

    goto :goto_d
.end method

.method private declared-synchronized connectInternal(Ljava/net/InetAddress;I)V
    .registers 10
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    monitor-enter p0

    .line 133
    if-ltz p2, :cond_a

    const v3, 0xffff

    if-le p2, v3, :cond_27

    .line 134
    :cond_a
    :try_start_a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "connect: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_24
    .catchall {:try_start_a .. :try_end_24} :catchall_24

    :catchall_24
    move-exception v3

    monitor-exit p0

    throw v3

    .line 136
    :cond_27
    if-nez p1, :cond_32

    .line 137
    :try_start_29
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "connect: null address"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 139
    :cond_32
    const-string/jumbo v3, "connect"

    invoke-virtual {p0, p1, v3}, Ljava/net/DatagramSocket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z
    :try_end_3b
    .catchall {:try_start_29 .. :try_end_3b} :catchall_24

    move-result v3

    if-eqz v3, :cond_40

    monitor-exit p0

    .line 141
    return-void

    .line 142
    :cond_40
    :try_start_40
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 143
    .local v2, "security":Ljava/lang/SecurityManager;
    if-eqz v2, :cond_4f

    .line 144
    invoke-virtual {p1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 145
    invoke-virtual {v2, p1}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;)V

    .line 152
    :cond_4f
    :goto_4f
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isBound()Z

    move-result v3

    if-nez v3, :cond_5e

    .line 153
    new-instance v3, Ljava/net/InetSocketAddress;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {p0, v3}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_5e
    .catchall {:try_start_40 .. :try_end_5e} :catchall_24

    .line 163
    :cond_5e
    :try_start_5e
    iget-boolean v3, p0, Ljava/net/DatagramSocket;->oldImpl:Z

    if-nez v3, :cond_72

    iget-object v3, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    instance-of v3, v3, Ljava/net/AbstractPlainDatagramSocketImpl;

    if-eqz v3, :cond_8a

    .line 164
    iget-object v3, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    check-cast v3, Ljava/net/AbstractPlainDatagramSocketImpl;

    invoke-virtual {v3}, Ljava/net/AbstractPlainDatagramSocketImpl;->nativeConnectDisabled()Z

    move-result v3

    .line 163
    if-eqz v3, :cond_8a

    .line 165
    :cond_72
    const/4 v3, 0x2

    iput v3, p0, Ljava/net/DatagramSocket;->connectState:I
    :try_end_75
    .catchall {:try_start_5e .. :try_end_75} :catchall_aa

    .line 190
    :cond_75
    :goto_75
    :try_start_75
    iput-object p1, p0, Ljava/net/DatagramSocket;->connectedAddress:Ljava/net/InetAddress;

    .line 191
    iput p2, p0, Ljava/net/DatagramSocket;->connectedPort:I
    :try_end_79
    .catchall {:try_start_75 .. :try_end_79} :catchall_24

    monitor-exit p0

    .line 193
    return-void

    .line 147
    :cond_7b
    :try_start_7b
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 148
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Ljava/lang/SecurityManager;->checkAccept(Ljava/lang/String;I)V
    :try_end_89
    .catchall {:try_start_7b .. :try_end_89} :catchall_24

    goto :goto_4f

    .line 168
    :cond_8a
    :try_start_8a
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/net/DatagramSocketImpl;->connect(Ljava/net/InetAddress;I)V

    .line 171
    const/4 v3, 0x1

    iput v3, p0, Ljava/net/DatagramSocket;->connectState:I

    .line 174
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/DatagramSocketImpl;->dataAvailable()I

    move-result v0

    .line 175
    .local v0, "avail":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_b0

    .line 176
    new-instance v3, Ljava/net/SocketException;

    invoke-direct {v3}, Ljava/net/SocketException;-><init>()V

    throw v3
    :try_end_a5
    .catch Ljava/net/SocketException; {:try_start_8a .. :try_end_a5} :catch_a5
    .catchall {:try_start_8a .. :try_end_a5} :catchall_aa

    .line 182
    .end local v0    # "avail":I
    :catch_a5
    move-exception v1

    .line 184
    .local v1, "se":Ljava/net/SocketException;
    const/4 v3, 0x2

    :try_start_a7
    iput v3, p0, Ljava/net/DatagramSocket;->connectState:I

    .line 186
    throw v1
    :try_end_aa
    .catchall {:try_start_a7 .. :try_end_aa} :catchall_aa

    .line 189
    .end local v1    # "se":Ljava/net/SocketException;
    :catchall_aa
    move-exception v3

    .line 190
    :try_start_ab
    iput-object p1, p0, Ljava/net/DatagramSocket;->connectedAddress:Ljava/net/InetAddress;

    .line 191
    iput p2, p0, Ljava/net/DatagramSocket;->connectedPort:I

    .line 189
    throw v3
    :try_end_b0
    .catchall {:try_start_ab .. :try_end_b0} :catchall_24

    .line 178
    .restart local v0    # "avail":I
    :cond_b0
    if-lez v0, :cond_c0

    move v3, v4

    :goto_b3
    :try_start_b3
    iput-boolean v3, p0, Ljava/net/DatagramSocket;->explicitFilter:Z

    .line 179
    iget-boolean v3, p0, Ljava/net/DatagramSocket;->explicitFilter:Z

    if-eqz v3, :cond_75

    .line 180
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getReceiveBufferSize()I

    move-result v3

    iput v3, p0, Ljava/net/DatagramSocket;->bytesLeftToFilter:I
    :try_end_bf
    .catch Ljava/net/SocketException; {:try_start_b3 .. :try_end_bf} :catch_a5
    .catchall {:try_start_b3 .. :try_end_bf} :catchall_aa

    goto :goto_75

    :cond_c0
    move v3, v5

    .line 178
    goto :goto_b3
.end method

.method public static declared-synchronized setDatagramSocketImplFactory(Ljava/net/DatagramSocketImplFactory;)V
    .registers 5
    .param p0, "fac"    # Ljava/net/DatagramSocketImplFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-class v2, Ljava/net/DatagramSocket;

    monitor-enter v2

    .line 1340
    :try_start_3
    sget-object v1, Ljava/net/DatagramSocket;->factory:Ljava/net/DatagramSocketImplFactory;

    if-eqz v1, :cond_13

    .line 1341
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

    .line 1343
    :cond_13
    :try_start_13
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1344
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1c

    .line 1345
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkSetFactory()V

    .line 1347
    :cond_1c
    sput-object p0, Ljava/net/DatagramSocket;->factory:Ljava/net/DatagramSocketImplFactory;
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_10

    monitor-exit v2

    .line 1348
    return-void
.end method


# virtual methods
.method public declared-synchronized bind(Ljava/net/SocketAddress;)V
    .registers 11
    .param p1, "addr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 392
    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v7

    if-eqz v7, :cond_13

    .line 393
    new-instance v7, Ljava/net/SocketException;

    const-string/jumbo v8, "Socket is closed"

    invoke-direct {v7, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_10

    :catchall_10
    move-exception v7

    monitor-exit p0

    throw v7

    .line 394
    :cond_13
    :try_start_13
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isBound()Z

    move-result v7

    if-eqz v7, :cond_22

    .line 395
    new-instance v7, Ljava/net/SocketException;

    const-string/jumbo v8, "already bound"

    invoke-direct {v7, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 396
    :cond_22
    if-nez p1, :cond_2b

    .line 397
    new-instance v1, Ljava/net/InetSocketAddress;

    const/4 v7, 0x0

    invoke-direct {v1, v7}, Ljava/net/InetSocketAddress;-><init>(I)V

    .end local p1    # "addr":Ljava/net/SocketAddress;
    .local v1, "addr":Ljava/net/SocketAddress;
    move-object p1, v1

    .line 398
    .end local v1    # "addr":Ljava/net/SocketAddress;
    .restart local p1    # "addr":Ljava/net/SocketAddress;
    :cond_2b
    instance-of v7, p1, Ljava/net/InetSocketAddress;

    if-nez v7, :cond_38

    .line 399
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "Unsupported address type!"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 400
    :cond_38
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    move-object v3, v0

    .line 401
    .local v3, "epoint":Ljava/net/InetSocketAddress;
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v7

    if-eqz v7, :cond_4b

    .line 402
    new-instance v7, Ljava/net/SocketException;

    const-string/jumbo v8, "Unresolved address"

    invoke-direct {v7, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 403
    :cond_4b
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    .line 404
    .local v4, "iaddr":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    .line 405
    .local v5, "port":I
    const-string/jumbo v7, "bind"

    invoke-virtual {p0, v4, v7}, Ljava/net/DatagramSocket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 406
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v6

    .line 407
    .local v6, "sec":Ljava/lang/SecurityManager;
    if-eqz v6, :cond_62

    .line 408
    invoke-virtual {v6, v5}, Ljava/lang/SecurityManager;->checkListen(I)V
    :try_end_62
    .catchall {:try_start_13 .. :try_end_62} :catchall_10

    .line 411
    :cond_62
    :try_start_62
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v7

    invoke-virtual {v7, v5, v4}, Ljava/net/DatagramSocketImpl;->bind(ILjava/net/InetAddress;)V
    :try_end_69
    .catch Ljava/net/SocketException; {:try_start_62 .. :try_end_69} :catch_6e
    .catchall {:try_start_62 .. :try_end_69} :catchall_10

    .line 416
    const/4 v7, 0x1

    :try_start_6a
    iput-boolean v7, p0, Ljava/net/DatagramSocket;->bound:Z
    :try_end_6c
    .catchall {:try_start_6a .. :try_end_6c} :catchall_10

    monitor-exit p0

    .line 417
    return-void

    .line 412
    :catch_6e
    move-exception v2

    .line 413
    .local v2, "e":Ljava/net/SocketException;
    :try_start_6f
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/DatagramSocketImpl;->close()V

    .line 414
    throw v2
    :try_end_77
    .catchall {:try_start_6f .. :try_end_77} :catchall_10
.end method

.method checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V
    .registers 6
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "op"    # Ljava/lang/String;

    .prologue
    .line 420
    if-nez p1, :cond_3

    .line 421
    return-void

    .line 423
    :cond_3
    instance-of v0, p1, Ljava/net/Inet4Address;

    if-nez v0, :cond_25

    instance-of v0, p1, Ljava/net/Inet6Address;

    :goto_9
    if-nez v0, :cond_27

    .line 424
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

    .line 423
    :cond_25
    const/4 v0, 0x1

    goto :goto_9

    .line 426
    :cond_27
    return-void
.end method

.method public close()V
    .registers 3

    .prologue
    .line 1265
    iget-object v1, p0, Ljava/net/DatagramSocket;->closeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1266
    :try_start_3
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_15

    move-result v0

    if-eqz v0, :cond_b

    monitor-exit v1

    .line 1267
    return-void

    .line 1268
    :cond_b
    :try_start_b
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v0}, Ljava/net/DatagramSocketImpl;->close()V

    .line 1269
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/DatagramSocket;->closed:Z
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_15

    monitor-exit v1

    .line 1271
    return-void

    .line 1265
    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public connect(Ljava/net/InetAddress;I)V
    .registers 4
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I

    .prologue
    .line 477
    :try_start_0
    invoke-direct {p0, p1, p2}, Ljava/net/DatagramSocket;->connectInternal(Ljava/net/InetAddress;I)V
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_3} :catch_4

    .line 485
    :goto_3
    return-void

    .line 478
    :catch_4
    move-exception v0

    .line 482
    .local v0, "se":Ljava/net/SocketException;
    iput-object v0, p0, Ljava/net/DatagramSocket;->pendingConnectException:Ljava/net/SocketException;

    goto :goto_3
.end method

.method public connect(Ljava/net/SocketAddress;)V
    .registers 5
    .param p1, "addr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 510
    if-nez p1, :cond_b

    .line 511
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Address can\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 512
    :cond_b
    instance-of v1, p1, Ljava/net/InetSocketAddress;

    if-nez v1, :cond_18

    .line 513
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Unsupported address type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_18
    move-object v0, p1

    .line 514
    check-cast v0, Ljava/net/InetSocketAddress;

    .line 515
    .local v0, "epoint":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 516
    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v2, "Unresolved address"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 517
    :cond_2a
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-direct {p0, v1, v2}, Ljava/net/DatagramSocket;->connectInternal(Ljava/net/InetAddress;I)V

    .line 518
    return-void
.end method

.method createImpl()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 344
    iget-object v1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    if-nez v1, :cond_13

    .line 345
    sget-object v1, Ljava/net/DatagramSocket;->factory:Ljava/net/DatagramSocketImplFactory;

    if-eqz v1, :cond_21

    .line 346
    sget-object v1, Ljava/net/DatagramSocket;->factory:Ljava/net/DatagramSocketImplFactory;

    invoke-interface {v1}, Ljava/net/DatagramSocketImplFactory;->createDatagramSocketImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v1

    iput-object v1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    .line 347
    invoke-direct {p0}, Ljava/net/DatagramSocket;->checkOldImpl()V

    .line 356
    :cond_13
    :goto_13
    iget-object v1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v1}, Ljava/net/DatagramSocketImpl;->create()V

    .line 357
    iget-object v1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v1, p0}, Ljava/net/DatagramSocketImpl;->setDatagramSocket(Ljava/net/DatagramSocket;)V

    .line 358
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/net/DatagramSocket;->created:Z

    .line 359
    return-void

    .line 349
    :cond_21
    instance-of v1, p0, Ljava/net/MulticastSocket;

    if-eqz v1, :cond_30

    const/4 v0, 0x1

    .line 350
    .local v0, "isMulticast":Z
    :goto_26
    invoke-static {v0}, Ljava/net/DefaultDatagramSocketImplFactory;->createDatagramSocketImpl(Z)Ljava/net/DatagramSocketImpl;

    move-result-object v1

    iput-object v1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    .line 352
    invoke-direct {p0}, Ljava/net/DatagramSocket;->checkOldImpl()V

    goto :goto_13

    .line 349
    .end local v0    # "isMulticast":Z
    :cond_30
    const/4 v0, 0x0

    .restart local v0    # "isMulticast":Z
    goto :goto_26
.end method

.method public disconnect()V
    .registers 3

    .prologue
    .line 527
    monitor-enter p0

    .line 528
    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_21

    move-result v0

    if-eqz v0, :cond_9

    monitor-exit p0

    .line 529
    return-void

    .line 530
    :cond_9
    :try_start_9
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
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/DatagramSocket;->explicitFilter:Z
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_21

    monitor-exit p0

    .line 538
    return-void

    .line 527
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBroadcast()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 1172
    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1173
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

    .line 1174
    :cond_13
    :try_start_13
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_22
    .catchall {:try_start_13 .. :try_end_22} :catchall_10

    move-result v0

    monitor-exit p0

    return v0
.end method

.method public getChannel()Ljava/nio/channels/DatagramChannel;
    .registers 2

    .prologue
    .line 1300
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFileDescriptor$()Ljava/io/FileDescriptor;
    .registers 2

    .prologue
    .line 1355
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    iget-object v0, v0, Ljava/net/DatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method getImpl()Ljava/net/DatagramSocketImpl;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 371
    iget-boolean v0, p0, Ljava/net/DatagramSocket;->created:Z

    if-nez v0, :cond_7

    .line 372
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->createImpl()V

    .line 373
    :cond_7
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 579
    iget-object v0, p0, Ljava/net/DatagramSocket;->connectedAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 883
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 884
    return-object v5

    .line 885
    :cond_8
    const/4 v2, 0x0

    .line 887
    .local v2, "in":Ljava/net/InetAddress;
    :try_start_9
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v4

    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/net/InetAddress;

    move-object v2, v0

    .line 888
    .local v2, "in":Ljava/net/InetAddress;
    invoke-virtual {v2}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 889
    invoke-static {}, Ljava/net/InetAddress;->anyLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 891
    :cond_21
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    .line 892
    .local v3, "s":Ljava/lang/SecurityManager;
    if-eqz v3, :cond_2f

    .line 893
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2f} :catch_30

    .line 898
    .end local v3    # "s":Ljava/lang/SecurityManager;
    :cond_2f
    :goto_2f
    return-object v2

    .line 895
    .end local v2    # "in":Ljava/net/InetAddress;
    :catch_30
    move-exception v1

    .line 896
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Ljava/net/InetAddress;->anyLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    .restart local v2    # "in":Ljava/net/InetAddress;
    goto :goto_2f
.end method

.method public getLocalPort()I
    .registers 3

    .prologue
    .line 910
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 911
    const/4 v1, -0x1

    return v1

    .line 913
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/DatagramSocketImpl;->getLocalPort()I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_f} :catch_11

    move-result v1

    return v1

    .line 914
    :catch_11
    move-exception v0

    .line 915
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method public getLocalSocketAddress()Ljava/net/SocketAddress;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 630
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

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

.method public getPort()I
    .registers 2

    .prologue
    .line 593
    iget v0, p0, Ljava/net/DatagramSocket;->connectedPort:I

    return v0
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

    .line 1070
    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1071
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

    .line 1072
    :cond_13
    const/4 v1, 0x0

    .line 1073
    .local v1, "result":I
    :try_start_14
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v2

    const/16 v3, 0x1002

    invoke-virtual {v2, v3}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    .line 1074
    .local v0, "o":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_28

    .line 1075
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_27
    .catchall {:try_start_14 .. :try_end_27} :catchall_10

    move-result v1

    :cond_28
    monitor-exit p0

    .line 1077
    return v1
.end method

.method public getRemoteSocketAddress()Ljava/net/SocketAddress;
    .registers 4

    .prologue
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

.method public declared-synchronized getReuseAddress()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 1134
    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1135
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

    .line 1136
    :cond_13
    :try_start_13
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    .line 1137
    .local v0, "o":Ljava/lang/Object;
    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_21
    .catchall {:try_start_13 .. :try_end_21} :catchall_10

    move-result v1

    monitor-exit p0

    return v1
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

    .line 1012
    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1013
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

    .line 1014
    :cond_13
    const/4 v1, 0x0

    .line 1015
    .local v1, "result":I
    :try_start_14
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v2

    const/16 v3, 0x1001

    invoke-virtual {v2, v3}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    .line 1016
    .local v0, "o":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_28

    .line 1017
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_27
    .catchall {:try_start_14 .. :try_end_27} :catchall_10

    move-result v1

    :cond_28
    monitor-exit p0

    .line 1019
    return v1
.end method

.method public declared-synchronized getSoTimeout()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    monitor-enter p0

    .line 950
    :try_start_2
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 951
    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v2, "Socket is closed"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_11

    :catchall_11
    move-exception v1

    monitor-exit p0

    throw v1

    .line 952
    :cond_14
    :try_start_14
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_11

    move-result-object v1

    if-nez v1, :cond_1c

    monitor-exit p0

    .line 953
    return v3

    .line 954
    :cond_1c
    :try_start_1c
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v1

    const/16 v2, 0x1006

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    .line 956
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_32

    .line 957
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_2f
    .catchall {:try_start_1c .. :try_end_2f} :catchall_11

    move-result v1

    monitor-exit p0

    return v1

    .restart local v0    # "o":Ljava/lang/Object;
    :cond_32
    monitor-exit p0

    .line 959
    return v3
.end method

.method public declared-synchronized getTrafficClass()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 1247
    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1248
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

    .line 1249
    :cond_13
    :try_start_13
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_21
    .catchall {:try_start_13 .. :try_end_21} :catchall_10

    move-result v0

    monitor-exit p0

    return v0
.end method

.method public isBound()Z
    .registers 2

    .prologue
    .line 551
    iget-boolean v0, p0, Ljava/net/DatagramSocket;->bound:Z

    return v0
.end method

.method public isClosed()Z
    .registers 3

    .prologue
    .line 1280
    iget-object v0, p0, Ljava/net/DatagramSocket;->closeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1281
    :try_start_3
    iget-boolean v1, p0, Ljava/net/DatagramSocket;->closed:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    .line 1280
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public isConnected()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 565
    iget v1, p0, Ljava/net/DatagramSocket;->connectState:I

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public declared-synchronized receive(Ljava/net/DatagramPacket;)V
    .registers 14
    .param p1, "p"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 757
    :try_start_1
    monitor-enter p1
    :try_end_2
    .catchall {:try_start_1 .. :try_end_2} :catchall_23

    .line 758
    :try_start_2
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isBound()Z

    move-result v9

    if-nez v9, :cond_11

    .line 759
    new-instance v9, Ljava/net/InetSocketAddress;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {p0, v9}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 762
    :cond_11
    iget-object v9, p0, Ljava/net/DatagramSocket;->pendingConnectException:Ljava/net/SocketException;

    if-eqz v9, :cond_26

    .line 763
    new-instance v9, Ljava/net/SocketException;

    const-string/jumbo v10, "Pending connect failure"

    iget-object v11, p0, Ljava/net/DatagramSocket;->pendingConnectException:Ljava/net/SocketException;

    invoke-direct {v9, v10, v11}, Ljava/net/SocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
    :try_end_20
    .catchall {:try_start_2 .. :try_end_20} :catchall_20

    .line 757
    :catchall_20
    move-exception v9

    :try_start_21
    monitor-exit p1

    throw v9
    :try_end_23
    .catchall {:try_start_21 .. :try_end_23} :catchall_23

    :catchall_23
    move-exception v9

    monitor-exit p0

    throw v9

    .line 767
    :cond_26
    :try_start_26
    iget v9, p0, Ljava/net/DatagramSocket;->connectState:I

    if-nez v9, :cond_52

    .line 769
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v6

    .line 770
    .local v6, "security":Ljava/lang/SecurityManager;
    if-eqz v6, :cond_52

    .line 772
    :goto_30
    const/4 v1, 0x0

    .line 773
    .local v1, "peekAd":Ljava/lang/String;
    const/4 v4, 0x0

    .line 775
    .local v4, "peekPort":I
    iget-boolean v9, p0, Ljava/net/DatagramSocket;->oldImpl:Z

    if-nez v9, :cond_a4

    .line 777
    new-instance v3, Ljava/net/DatagramPacket;

    const/4 v9, 0x1

    new-array v9, v9, [B

    const/4 v10, 0x1

    invoke-direct {v3, v9, v10}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 778
    .local v3, "peekPacket":Ljava/net/DatagramPacket;
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/net/DatagramSocketImpl;->peekData(Ljava/net/DatagramPacket;)I

    move-result v4

    .line 779
    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_4e
    .catchall {:try_start_26 .. :try_end_4e} :catchall_20

    move-result-object v1

    .line 786
    .end local v3    # "peekPacket":Ljava/net/DatagramPacket;
    .local v1, "peekAd":Ljava/lang/String;
    :goto_4f
    :try_start_4f
    invoke-virtual {v6, v1, v4}, Ljava/lang/SecurityManager;->checkAccept(Ljava/lang/String;I)V
    :try_end_52
    .catch Ljava/lang/SecurityException; {:try_start_4f .. :try_end_52} :catch_b6
    .catchall {:try_start_4f .. :try_end_52} :catchall_20

    .line 807
    .end local v1    # "peekAd":Ljava/lang/String;
    .end local v4    # "peekPort":I
    .end local v6    # "security":Ljava/lang/SecurityManager;
    :cond_52
    const/4 v8, 0x0

    .line 808
    .local v8, "tmp":Ljava/net/DatagramPacket;
    :try_start_53
    iget v9, p0, Ljava/net/DatagramSocket;->connectState:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_5c

    iget-boolean v9, p0, Ljava/net/DatagramSocket;->explicitFilter:Z

    if-eqz v9, :cond_d9

    .line 814
    :cond_5c
    const/4 v7, 0x0

    .line 815
    .end local v8    # "tmp":Ljava/net/DatagramPacket;
    .local v7, "stop":Z
    :cond_5d
    :goto_5d
    if-nez v7, :cond_d9

    .line 816
    const/4 v2, 0x0

    .line 817
    .local v2, "peekAddress":Ljava/net/InetAddress;
    const/4 v4, -0x1

    .line 819
    .restart local v4    # "peekPort":I
    iget-boolean v9, p0, Ljava/net/DatagramSocket;->oldImpl:Z

    if-nez v9, :cond_c9

    .line 821
    new-instance v3, Ljava/net/DatagramPacket;

    const/4 v9, 0x1

    new-array v9, v9, [B

    const/4 v10, 0x1

    invoke-direct {v3, v9, v10}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 822
    .restart local v3    # "peekPacket":Ljava/net/DatagramPacket;
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/net/DatagramSocketImpl;->peekData(Ljava/net/DatagramPacket;)I

    move-result v4

    .line 823
    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 829
    .end local v3    # "peekPacket":Ljava/net/DatagramPacket;
    .local v2, "peekAddress":Ljava/net/InetAddress;
    :goto_7a
    iget-object v9, p0, Ljava/net/DatagramSocket;->connectedAddress:Ljava/net/InetAddress;

    invoke-virtual {v9, v2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_86

    .line 830
    iget v9, p0, Ljava/net/DatagramSocket;->connectedPort:I

    if-eq v9, v4, :cond_d7

    .line 832
    :cond_86
    new-instance v8, Ljava/net/DatagramPacket;

    .line 833
    const/16 v9, 0x400

    new-array v9, v9, [B

    const/16 v10, 0x400

    .line 832
    invoke-direct {v8, v9, v10}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 834
    .local v8, "tmp":Ljava/net/DatagramPacket;
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/net/DatagramSocketImpl;->receive(Ljava/net/DatagramPacket;)V

    .line 835
    iget-boolean v9, p0, Ljava/net/DatagramSocket;->explicitFilter:Z

    if-eqz v9, :cond_5d

    .line 836
    invoke-direct {p0, v8}, Ljava/net/DatagramSocket;->checkFiltering(Ljava/net/DatagramPacket;)Z

    move-result v9

    if-eqz v9, :cond_5d

    .line 837
    const/4 v7, 0x1

    goto :goto_5d

    .line 781
    .end local v2    # "peekAddress":Ljava/net/InetAddress;
    .end local v7    # "stop":Z
    .end local v8    # "tmp":Ljava/net/DatagramPacket;
    .local v1, "peekAd":Ljava/lang/String;
    .restart local v6    # "security":Ljava/lang/SecurityManager;
    :cond_a4
    new-instance v0, Ljava/net/InetAddress;

    invoke-direct {v0}, Ljava/net/InetAddress;-><init>()V

    .line 782
    .local v0, "adr":Ljava/net/InetAddress;
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/net/DatagramSocketImpl;->peek(Ljava/net/InetAddress;)I

    move-result v4

    .line 783
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .local v1, "peekAd":Ljava/lang/String;
    goto :goto_4f

    .line 790
    .end local v0    # "adr":Ljava/net/InetAddress;
    :catch_b6
    move-exception v5

    .line 793
    .local v5, "se":Ljava/lang/SecurityException;
    new-instance v8, Ljava/net/DatagramPacket;

    const/4 v9, 0x1

    new-array v9, v9, [B

    const/4 v10, 0x1

    invoke-direct {v8, v9, v10}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 794
    .restart local v8    # "tmp":Ljava/net/DatagramPacket;
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/net/DatagramSocketImpl;->receive(Ljava/net/DatagramPacket;)V

    goto/16 :goto_30

    .line 826
    .end local v1    # "peekAd":Ljava/lang/String;
    .end local v5    # "se":Ljava/lang/SecurityException;
    .end local v6    # "security":Ljava/lang/SecurityManager;
    .end local v8    # "tmp":Ljava/net/DatagramPacket;
    .local v2, "peekAddress":Ljava/net/InetAddress;
    .restart local v7    # "stop":Z
    :cond_c9
    new-instance v2, Ljava/net/InetAddress;

    .end local v2    # "peekAddress":Ljava/net/InetAddress;
    invoke-direct {v2}, Ljava/net/InetAddress;-><init>()V

    .line 827
    .local v2, "peekAddress":Ljava/net/InetAddress;
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/net/DatagramSocketImpl;->peek(Ljava/net/InetAddress;)I

    move-result v4

    goto :goto_7a

    .line 841
    :cond_d7
    const/4 v7, 0x1

    goto :goto_5d

    .line 847
    .end local v2    # "peekAddress":Ljava/net/InetAddress;
    .end local v4    # "peekPort":I
    .end local v7    # "stop":Z
    :cond_d9
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/net/DatagramSocketImpl;->receive(Ljava/net/DatagramPacket;)V

    .line 848
    iget-boolean v9, p0, Ljava/net/DatagramSocket;->explicitFilter:Z

    if-eqz v9, :cond_e9

    if-nez v8, :cond_e9

    .line 850
    invoke-direct {p0, p1}, Ljava/net/DatagramSocket;->checkFiltering(Ljava/net/DatagramPacket;)Z
    :try_end_e9
    .catchall {:try_start_53 .. :try_end_e9} :catchall_20

    :cond_e9
    :try_start_e9
    monitor-exit p1
    :try_end_ea
    .catchall {:try_start_e9 .. :try_end_ea} :catchall_23

    monitor-exit p0

    .line 853
    return-void
.end method

.method public send(Ljava/net/DatagramPacket;)V
    .registers 7
    .param p1, "p"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 678
    const/4 v0, 0x0

    .line 679
    .local v0, "packetAddress":Ljava/net/InetAddress;
    monitor-enter p1

    .line 681
    :try_start_2
    iget-object v2, p0, Ljava/net/DatagramSocket;->pendingConnectException:Ljava/net/SocketException;

    if-eqz v2, :cond_14

    .line 682
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v3, "Pending connect failure"

    iget-object v4, p0, Ljava/net/DatagramSocket;->pendingConnectException:Ljava/net/SocketException;

    invoke-direct {v2, v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_11

    .line 679
    .end local v0    # "packetAddress":Ljava/net/InetAddress;
    :catchall_11
    move-exception v2

    monitor-exit p1

    throw v2

    .line 685
    .restart local v0    # "packetAddress":Ljava/net/InetAddress;
    :cond_14
    :try_start_14
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 686
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v3, "Socket is closed"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 687
    :cond_23
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    const-string/jumbo v3, "send"

    invoke-virtual {p0, v2, v3}, Ljava/net/DatagramSocket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 688
    iget v2, p0, Ljava/net/DatagramSocket;->connectState:I

    if-nez v2, :cond_70

    .line 690
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 696
    .local v1, "security":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_48

    .line 697
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v2

    if-eqz v2, :cond_60

    .line 698
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;)V

    .line 718
    .end local v0    # "packetAddress":Ljava/net/InetAddress;
    .end local v1    # "security":Ljava/lang/SecurityManager;
    :cond_48
    :goto_48
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isBound()Z

    move-result v2

    if-nez v2, :cond_57

    .line 719
    new-instance v2, Ljava/net/InetSocketAddress;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {p0, v2}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 721
    :cond_57
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/net/DatagramSocketImpl;->send(Ljava/net/DatagramPacket;)V
    :try_end_5e
    .catchall {:try_start_14 .. :try_end_5e} :catchall_11

    monitor-exit p1

    .line 723
    return-void

    .line 700
    .restart local v0    # "packetAddress":Ljava/net/InetAddress;
    .restart local v1    # "security":Ljava/lang/SecurityManager;
    :cond_60
    :try_start_60
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 701
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v3

    .line 700
    invoke-virtual {v1, v2, v3}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    goto :goto_48

    .line 706
    .end local v1    # "security":Ljava/lang/SecurityManager;
    :cond_70
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 707
    .local v0, "packetAddress":Ljava/net/InetAddress;
    if-nez v0, :cond_81

    .line 708
    iget-object v2, p0, Ljava/net/DatagramSocket;->connectedAddress:Ljava/net/InetAddress;

    invoke-virtual {p1, v2}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 709
    iget v2, p0, Ljava/net/DatagramSocket;->connectedPort:I

    invoke-virtual {p1, v2}, Ljava/net/DatagramPacket;->setPort(I)V

    goto :goto_48

    .line 710
    :cond_81
    iget-object v2, p0, Ljava/net/DatagramSocket;->connectedAddress:Ljava/net/InetAddress;

    invoke-virtual {v0, v2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_91

    .line 711
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v2

    iget v3, p0, Ljava/net/DatagramSocket;->connectedPort:I

    if-eq v2, v3, :cond_48

    .line 712
    :cond_91
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "connected address and packet address differ"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_9a
    .catchall {:try_start_60 .. :try_end_9a} :catchall_11
.end method

.method public declared-synchronized setBroadcast(Z)V
    .registers 5
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 1158
    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1159
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

    .line 1160
    :cond_13
    :try_start_13
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v0, v2, v1}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_10

    monitor-exit p0

    .line 1161
    return-void
.end method

.method public setNetworkInterface(Ljava/net/NetworkInterface;)V
    .registers 8
    .param p1, "netInterface"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1369
    if-nez p1, :cond_b

    .line 1370
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "netInterface == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1373
    :cond_b
    :try_start_b
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    iget-object v2, v2, Ljava/net/DatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    sget v3, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v4, Landroid/system/OsConstants;->SO_BINDTODEVICE:I

    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Llibcore/io/Os;->setsockoptIfreq(Ljava/io/FileDescriptor;IILjava/lang/String;)V
    :try_end_1c
    .catch Landroid/system/ErrnoException; {:try_start_b .. :try_end_1c} :catch_1d

    .line 1377
    return-void

    .line 1374
    :catch_1d
    move-exception v0

    .line 1375
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v1

    throw v1
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

    .line 1052
    if-gtz p1, :cond_f

    .line 1053
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

    .line 1055
    :cond_f
    :try_start_f
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1056
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1057
    :cond_1e
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x1002

    invoke-virtual {v0, v2, v1}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_c

    monitor-exit p0

    .line 1058
    return-void
.end method

.method public declared-synchronized setReuseAddress(Z)V
    .registers 5
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 1115
    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1116
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

    .line 1118
    :cond_13
    :try_start_13
    iget-boolean v0, p0, Ljava/net/DatagramSocket;->oldImpl:Z

    if-eqz v0, :cond_2b

    .line 1119
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    if-eqz p1, :cond_29

    const/4 v0, -0x1

    :goto_20
    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    const/4 v0, 0x4

    invoke-virtual {v1, v0, v2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_27
    .catchall {:try_start_13 .. :try_end_27} :catchall_10

    :goto_27
    monitor-exit p0

    .line 1122
    return-void

    .line 1119
    :cond_29
    const/4 v0, 0x0

    goto :goto_20

    .line 1121
    :cond_2b
    :try_start_2b
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_10

    goto :goto_27
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

    .line 994
    if-gtz p1, :cond_f

    .line 995
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

    .line 997
    :cond_f
    :try_start_f
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 998
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 999
    :cond_1e
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x1001

    invoke-virtual {v0, v2, v1}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_c

    monitor-exit p0

    .line 1000
    return-void
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

    .line 935
    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 936
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

    .line 937
    :cond_13
    :try_start_13
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x1006

    invoke-virtual {v0, v2, v1}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_21
    .catchall {:try_start_13 .. :try_end_21} :catchall_10

    monitor-exit p0

    .line 938
    return-void
.end method

.method public declared-synchronized setTrafficClass(I)V
    .registers 6
    .param p1, "tc"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 1215
    if-ltz p1, :cond_7

    const/16 v1, 0xff

    if-le p1, v1, :cond_13

    .line 1216
    :cond_7
    :try_start_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "tc is not in range 0 -- 255"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_10

    :catchall_10
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1218
    :cond_13
    :try_start_13
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1219
    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v2, "Socket is closed"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_22
    .catchall {:try_start_13 .. :try_end_22} :catchall_10

    .line 1221
    :cond_22
    :try_start_22
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_2e
    .catch Ljava/net/SocketException; {:try_start_22 .. :try_end_2e} :catch_30
    .catchall {:try_start_22 .. :try_end_2e} :catchall_10

    :cond_2e
    monitor-exit p0

    .line 1228
    return-void

    .line 1222
    :catch_30
    move-exception v0

    .line 1225
    .local v0, "se":Ljava/net/SocketException;
    :try_start_31
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 1226
    throw v0
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_10
.end method
