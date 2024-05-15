.class abstract Ljava/net/AbstractPlainDatagramSocketImpl;
.super Ljava/net/DatagramSocketImpl;
.source "AbstractPlainDatagramSocketImpl.java"


# static fields
.field private static final connectDisabled:Z

.field private static final os:Ljava/lang/String;


# instance fields
.field connected:Z

.field protected connectedAddress:Ljava/net/InetAddress;

.field private connectedPort:I

.field private final guard:Ldalvik/system/CloseGuard;

.field timeout:I

.field private trafficClass:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 60
    new-instance v0, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v1, "os.name"

    invoke-direct {v0, v1}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Ljava/net/AbstractPlainDatagramSocketImpl;->os:Ljava/lang/String;

    .line 66
    sget-object v0, Ljava/net/AbstractPlainDatagramSocketImpl;->os:Ljava/lang/String;

    const-string/jumbo v1, "OS X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Ljava/net/AbstractPlainDatagramSocketImpl;->connectDisabled:Z

    .line 48
    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/net/DatagramSocketImpl;-><init>()V

    .line 51
    iput v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->timeout:I

    .line 52
    iput-boolean v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->connected:Z

    .line 53
    iput v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->trafficClass:I

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->connectedAddress:Ljava/net/InetAddress;

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->connectedPort:I

    .line 57
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->guard:Ldalvik/system/CloseGuard;

    .line 48
    return-void
.end method

.method static getNIFirstAddress(I)Ljava/net/InetAddress;
    .registers 4
    .param p0, "niIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 370
    if-lez p0, :cond_17

    .line 371
    invoke-static {p0}, Ljava/net/NetworkInterface;->getByIndex(I)Ljava/net/NetworkInterface;

    move-result-object v1

    .line 372
    .local v1, "networkInterface":Ljava/net/NetworkInterface;
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v0

    .line 373
    .local v0, "addressesEnum":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 374
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    return-object v2

    .line 377
    .end local v0    # "addressesEnum":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v1    # "networkInterface":Ljava/net/NetworkInterface;
    :cond_17
    invoke-static {}, Ljava/net/InetAddress;->anyLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method protected declared-synchronized bind(ILjava/net/InetAddress;)V
    .registers 4
    .param p1, "lport"    # I
    .param p2, "laddr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 92
    :try_start_1
    invoke-virtual {p0, p1, p2}, Ljava/net/AbstractPlainDatagramSocketImpl;->bind0(ILjava/net/InetAddress;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    .line 93
    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract bind0(ILjava/net/InetAddress;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method protected close()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 230
    iget-object v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 232
    iget-object v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_12

    .line 233
    invoke-virtual {p0}, Ljava/net/AbstractPlainDatagramSocketImpl;->datagramSocketClose()V

    .line 234
    invoke-static {}, Lsun/net/ResourceManager;->afterUdpClose()V

    .line 235
    iput-object v1, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 237
    :cond_12
    return-void
.end method

.method protected connect(Ljava/net/InetAddress;I)V
    .registers 4
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 114
    invoke-virtual {p0, p1, p2}, Ljava/net/AbstractPlainDatagramSocketImpl;->connect0(Ljava/net/InetAddress;I)V

    .line 115
    iput-object p1, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->connectedAddress:Ljava/net/InetAddress;

    .line 116
    iput p2, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->connectedPort:I

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->connected:Z

    .line 118
    return-void
.end method

.method protected abstract connect0(Ljava/net/InetAddress;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method protected declared-synchronized create()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 72
    :try_start_1
    invoke-static {}, Lsun/net/ResourceManager;->beforeUdpCreate()V

    .line 73
    new-instance v1, Ljava/io/FileDescriptor;

    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v1, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_2c

    .line 75
    :try_start_b
    invoke-virtual {p0}, Ljava/net/AbstractPlainDatagramSocketImpl;->datagramSocketCreate()V
    :try_end_e
    .catch Ljava/net/SocketException; {:try_start_b .. :try_end_e} :catch_24
    .catchall {:try_start_b .. :try_end_e} :catchall_2c

    .line 82
    :try_start_e
    iget-object v1, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v1, :cond_22

    iget-object v1, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 83
    iget-object v1, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->guard:Ldalvik/system/CloseGuard;

    const-string/jumbo v2, "close"

    invoke-virtual {v1, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_e .. :try_end_22} :catchall_2c

    :cond_22
    monitor-exit p0

    .line 85
    return-void

    .line 76
    :catch_24
    move-exception v0

    .line 77
    .local v0, "ioe":Ljava/net/SocketException;
    :try_start_25
    invoke-static {}, Lsun/net/ResourceManager;->afterUdpClose()V

    .line 78
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 79
    throw v0
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_2c

    .end local v0    # "ioe":Ljava/net/SocketException;
    :catchall_2c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method dataAvailable()I
    .registers 3

    .prologue
    .line 396
    :try_start_0
    iget-object v1, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v1}, Llibcore/io/IoBridge;->available(Ljava/io/FileDescriptor;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    .line 397
    :catch_7
    move-exception v0

    .line 398
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, -0x1

    return v1
.end method

.method protected abstract datagramSocketClose()V
.end method

.method protected abstract datagramSocketCreate()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method protected disconnect()V
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->connectedAddress:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress$InetAddressHolder;->getFamily()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/net/AbstractPlainDatagramSocketImpl;->disconnect0(I)V

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->connected:Z

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->connectedAddress:Ljava/net/InetAddress;

    .line 128
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->connectedPort:I

    .line 129
    return-void
.end method

.method protected abstract disconnect0(I)V
.end method

.method protected finalize()V
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 245
    iget-object v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 248
    :cond_9
    invoke-virtual {p0}, Ljava/net/AbstractPlainDatagramSocketImpl;->close()V

    .line 249
    return-void
.end method

.method public getOption(I)Ljava/lang/Object;
    .registers 6
    .param p1, "optID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 326
    invoke-virtual {p0}, Ljava/net/AbstractPlainDatagramSocketImpl;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 327
    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v2, "Socket Closed"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 332
    :cond_f
    sparse-switch p1, :sswitch_data_5e

    .line 360
    new-instance v1, Ljava/net/SocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 334
    :sswitch_2c
    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->timeout:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 363
    .local v0, "result":Ljava/lang/Object;
    :cond_33
    :goto_33
    return-object v0

    .line 338
    .end local v0    # "result":Ljava/lang/Object;
    :sswitch_34
    invoke-virtual {p0, p1}, Ljava/net/AbstractPlainDatagramSocketImpl;->socketGetOption(I)Ljava/lang/Object;

    move-result-object v0

    .restart local v0    # "result":Ljava/lang/Object;
    move-object v1, v0

    .line 339
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_33

    .line 340
    new-instance v0, Ljava/lang/Integer;

    .end local v0    # "result":Ljava/lang/Object;
    iget v1, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->trafficClass:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .restart local v0    # "result":Ljava/lang/Object;
    goto :goto_33

    .line 352
    .end local v0    # "result":Ljava/lang/Object;
    :sswitch_4a
    invoke-virtual {p0, p1}, Ljava/net/AbstractPlainDatagramSocketImpl;->socketGetOption(I)Ljava/lang/Object;

    move-result-object v0

    .line 354
    .restart local v0    # "result":Ljava/lang/Object;
    const/16 v1, 0x10

    if-ne p1, v1, :cond_33

    .line 355
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "result":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/net/AbstractPlainDatagramSocketImpl;->getNIFirstAddress(I)Ljava/net/InetAddress;

    move-result-object v1

    return-object v1

    .line 332
    nop

    :sswitch_data_5e
    .sparse-switch
        0x3 -> :sswitch_34
        0x4 -> :sswitch_4a
        0xf -> :sswitch_4a
        0x10 -> :sswitch_4a
        0x12 -> :sswitch_4a
        0x1f -> :sswitch_4a
        0x20 -> :sswitch_4a
        0x1001 -> :sswitch_4a
        0x1002 -> :sswitch_4a
        0x1006 -> :sswitch_2c
    .end sparse-switch
.end method

.method protected abstract getTTL()B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected abstract getTimeToLive()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected isClosed()Z
    .registers 2

    .prologue
    .line 240
    iget-object v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected join(Ljava/net/InetAddress;)V
    .registers 3
    .param p1, "inetaddr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/net/AbstractPlainDatagramSocketImpl;->join(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)V

    .line 179
    return-void
.end method

.method protected abstract join(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected joinGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .registers 5
    .param p1, "mcastaddr"    # Ljava/net/SocketAddress;
    .param p2, "netIf"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    if-eqz p1, :cond_8

    instance-of v0, p1, Ljava/net/InetSocketAddress;

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_11

    .line 201
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unsupported address type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_11
    check-cast p1, Ljava/net/InetSocketAddress;

    .end local p1    # "mcastaddr":Ljava/net/SocketAddress;
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljava/net/AbstractPlainDatagramSocketImpl;->join(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)V

    .line 203
    return-void
.end method

.method protected leave(Ljava/net/InetAddress;)V
    .registers 3
    .param p1, "inetaddr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/net/AbstractPlainDatagramSocketImpl;->leave(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)V

    .line 187
    return-void
.end method

.method protected abstract leave(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected leaveGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .registers 5
    .param p1, "mcastaddr"    # Ljava/net/SocketAddress;
    .param p2, "netIf"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    if-eqz p1, :cond_8

    instance-of v0, p1, Ljava/net/InetSocketAddress;

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_11

    .line 219
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unsupported address type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_11
    check-cast p1, Ljava/net/InetSocketAddress;

    .end local p1    # "mcastaddr":Ljava/net/SocketAddress;
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljava/net/AbstractPlainDatagramSocketImpl;->leave(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)V

    .line 221
    return-void
.end method

.method protected nativeConnectDisabled()Z
    .registers 2

    .prologue
    .line 390
    sget-boolean v0, Ljava/net/AbstractPlainDatagramSocketImpl;->connectDisabled:Z

    return v0
.end method

.method protected abstract peek(Ljava/net/InetAddress;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract peekData(Ljava/net/DatagramPacket;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected declared-synchronized receive(Ljava/net/DatagramPacket;)V
    .registers 3
    .param p1, "p"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 143
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/net/AbstractPlainDatagramSocketImpl;->receive0(Ljava/net/DatagramPacket;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    .line 144
    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract receive0(Ljava/net/DatagramPacket;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract send(Ljava/net/DatagramPacket;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public setOption(ILjava/lang/Object;)V
    .registers 8
    .param p1, "optID"    # I
    .param p2, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 257
    invoke-virtual {p0}, Ljava/net/AbstractPlainDatagramSocketImpl;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 258
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v3, "Socket Closed"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 260
    :cond_f
    sparse-switch p1, :sswitch_data_100

    .line 316
    new-instance v2, Ljava/net/SocketException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "invalid option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 266
    :sswitch_2c
    if-eqz p2, :cond_34

    instance-of v2, p2, Ljava/lang/Integer;

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3d

    .line 267
    :cond_34
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v3, "bad argument for SO_TIMEOUT"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 269
    :cond_3d
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "o":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 270
    .local v1, "tmp":I
    if-gez v1, :cond_4e

    .line 271
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "timeout < 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 272
    :cond_4e
    iput v1, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->timeout:I

    .line 273
    return-void

    .line 275
    .end local v1    # "tmp":I
    .restart local p2    # "o":Ljava/lang/Object;
    :sswitch_51
    if-eqz p2, :cond_59

    instance-of v2, p2, Ljava/lang/Integer;

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_62

    .line 276
    :cond_59
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v3, "bad argument for IP_TOS"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_62
    move-object v2, p2

    .line 278
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->trafficClass:I

    .line 318
    :cond_6b
    :goto_6b
    invoke-virtual {p0, p1, p2}, Ljava/net/AbstractPlainDatagramSocketImpl;->socketSetOption(ILjava/lang/Object;)V

    .line 319
    return-void

    .line 281
    :sswitch_6f
    if-eqz p2, :cond_77

    instance-of v2, p2, Ljava/lang/Boolean;

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_6b

    .line 282
    :cond_77
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v3, "bad argument for SO_REUSEADDR"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 286
    :sswitch_80
    if-eqz p2, :cond_88

    instance-of v2, p2, Ljava/lang/Boolean;

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_6b

    .line 287
    :cond_88
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v3, "bad argument for SO_BROADCAST"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 291
    :sswitch_91
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v3, "Cannot re-bind Socket"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 294
    :sswitch_9a
    if-eqz p2, :cond_ab

    instance-of v2, p2, Ljava/lang/Integer;

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_ab

    move-object v2, p2

    .line 295
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_6b

    .line 296
    :cond_ab
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v3, "bad argument for SO_SNDBUF or SO_RCVBUF"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 301
    :sswitch_b4
    if-eqz p2, :cond_bc

    instance-of v2, p2, Ljava/net/InetAddress;

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_6b

    .line 302
    :cond_bc
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v3, "bad argument for IP_MULTICAST_IF"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 305
    :sswitch_c5
    if-eqz p2, :cond_d1

    instance-of v2, p2, Ljava/lang/Integer;

    if-nez v2, :cond_da

    instance-of v2, p2, Ljava/net/NetworkInterface;

    :goto_cd
    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_dc

    .line 306
    :cond_d1
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v3, "bad argument for IP_MULTICAST_IF2"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 305
    :cond_da
    const/4 v2, 0x1

    goto :goto_cd

    .line 307
    :cond_dc
    instance-of v2, p2, Ljava/net/NetworkInterface;

    if-eqz v2, :cond_6b

    .line 308
    new-instance v0, Ljava/lang/Integer;

    check-cast p2, Ljava/net/NetworkInterface;

    .end local p2    # "o":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    .local v0, "o":Ljava/lang/Object;
    move-object p2, v0

    .end local v0    # "o":Ljava/lang/Object;
    .restart local p2    # "o":Ljava/lang/Object;
    goto/16 :goto_6b

    .line 312
    :sswitch_ee
    if-eqz p2, :cond_f6

    instance-of v2, p2, Ljava/lang/Boolean;

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_6b

    .line 313
    :cond_f6
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v3, "bad argument for IP_MULTICAST_LOOP"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 260
    nop

    :sswitch_data_100
    .sparse-switch
        0x3 -> :sswitch_51
        0x4 -> :sswitch_6f
        0xf -> :sswitch_91
        0x10 -> :sswitch_b4
        0x12 -> :sswitch_ee
        0x1f -> :sswitch_c5
        0x20 -> :sswitch_80
        0x1001 -> :sswitch_9a
        0x1002 -> :sswitch_9a
        0x1006 -> :sswitch_2c
    .end sparse-switch
.end method

.method protected abstract setTTL(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected abstract setTimeToLive(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract socketGetOption(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method protected abstract socketSetOption(ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method
