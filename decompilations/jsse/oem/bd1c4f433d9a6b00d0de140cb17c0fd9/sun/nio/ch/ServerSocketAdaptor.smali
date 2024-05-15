.class public Lsun/nio/ch/ServerSocketAdaptor;
.super Ljava/net/ServerSocket;
.source "ServerSocketAdaptor.java"


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private final ssc:Lsun/nio/ch/ServerSocketChannelImpl;

.field private volatile timeout:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Lsun/nio/ch/ServerSocketAdaptor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lsun/nio/ch/ServerSocketAdaptor;->-assertionsDisabled:Z

    .line 40
    return-void
.end method

.method private constructor <init>(Lsun/nio/ch/ServerSocketChannelImpl;)V
    .registers 3
    .param p1, "ssc"    # Lsun/nio/ch/ServerSocketChannelImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/net/ServerSocket;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lsun/nio/ch/ServerSocketAdaptor;->timeout:I

    .line 62
    iput-object p1, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    .line 63
    return-void
.end method

.method public static create(Lsun/nio/ch/ServerSocketChannelImpl;)Ljava/net/ServerSocket;
    .registers 3
    .param p0, "ssc"    # Lsun/nio/ch/ServerSocketChannelImpl;

    .prologue
    .line 52
    :try_start_0
    new-instance v1, Lsun/nio/ch/ServerSocketAdaptor;

    invoke-direct {v1, p0}, Lsun/nio/ch/ServerSocketAdaptor;-><init>(Lsun/nio/ch/ServerSocketChannelImpl;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v1

    .line 53
    :catch_6
    move-exception v0

    .line 54
    .local v0, "x":Ljava/io/IOException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public accept()Ljava/net/Socket;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 95
    iget-object v7, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v7}, Lsun/nio/ch/ServerSocketChannelImpl;->blockingLock()Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 96
    :try_start_8
    iget-object v7, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v7}, Lsun/nio/ch/ServerSocketChannelImpl;->isBound()Z

    move-result v7

    if-nez v7, :cond_19

    .line 97
    new-instance v7, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v7}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v7
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_16

    .line 95
    :catchall_16
    move-exception v7

    monitor-exit v8

    throw v7

    .line 99
    :cond_19
    :try_start_19
    iget v7, p0, Lsun/nio/ch/ServerSocketAdaptor;->timeout:I

    if-nez v7, :cond_49

    .line 100
    iget-object v7, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v7}, Lsun/nio/ch/ServerSocketChannelImpl;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v1

    .line 101
    .local v1, "sc":Ljava/nio/channels/SocketChannel;
    if-nez v1, :cond_43

    iget-object v7, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v7}, Lsun/nio/ch/ServerSocketChannelImpl;->isBlocking()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_43

    .line 102
    new-instance v7, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v7}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v7
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_35} :catch_35
    .catchall {:try_start_19 .. :try_end_35} :catchall_16

    .line 128
    .end local v1    # "sc":Ljava/nio/channels/SocketChannel;
    :catch_35
    move-exception v6

    .line 129
    .local v6, "x":Ljava/lang/Exception;
    :try_start_36
    invoke-static {v6}, Lsun/nio/ch/Net;->translateException(Ljava/lang/Exception;)V

    .line 130
    sget-boolean v7, Lsun/nio/ch/ServerSocketAdaptor;->-assertionsDisabled:Z

    if-nez v7, :cond_c8

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7
    :try_end_43
    .catchall {:try_start_36 .. :try_end_43} :catchall_16

    .line 103
    .end local v6    # "x":Ljava/lang/Exception;
    .restart local v1    # "sc":Ljava/nio/channels/SocketChannel;
    :cond_43
    :try_start_43
    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_35
    .catchall {:try_start_43 .. :try_end_46} :catchall_16

    move-result-object v7

    monitor-exit v8

    return-object v7

    .line 106
    .end local v1    # "sc":Ljava/nio/channels/SocketChannel;
    :cond_49
    :try_start_49
    iget-object v7, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lsun/nio/ch/ServerSocketChannelImpl;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4f} :catch_35
    .catchall {:try_start_49 .. :try_end_4f} :catchall_16

    .line 109
    :try_start_4f
    iget-object v7, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v7}, Lsun/nio/ch/ServerSocketChannelImpl;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v1

    .restart local v1    # "sc":Ljava/nio/channels/SocketChannel;
    if-eqz v1, :cond_6b

    .line 110
    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;
    :try_end_5a
    .catchall {:try_start_4f .. :try_end_5a} :catchall_7c

    move-result-object v7

    .line 124
    :try_start_5b
    iget-object v9, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v9}, Lsun/nio/ch/ServerSocketChannelImpl;->isOpen()Z

    move-result v9

    if-eqz v9, :cond_69

    .line 125
    iget-object v9, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lsun/nio/ch/ServerSocketChannelImpl;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_69} :catch_35
    .catchall {:try_start_5b .. :try_end_69} :catchall_16

    :cond_69
    monitor-exit v8

    .line 110
    return-object v7

    .line 111
    :cond_6b
    :try_start_6b
    iget v7, p0, Lsun/nio/ch/ServerSocketAdaptor;->timeout:I

    int-to-long v4, v7

    .line 113
    .local v4, "to":J
    :cond_6e
    iget-object v7, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v7}, Lsun/nio/ch/ServerSocketChannelImpl;->isOpen()Z

    move-result v7

    if-nez v7, :cond_8c

    .line 114
    new-instance v7, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v7}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v7
    :try_end_7c
    .catchall {:try_start_6b .. :try_end_7c} :catchall_7c

    .line 123
    .end local v1    # "sc":Ljava/nio/channels/SocketChannel;
    .end local v4    # "to":J
    :catchall_7c
    move-exception v7

    .line 124
    :try_start_7d
    iget-object v9, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v9}, Lsun/nio/ch/ServerSocketChannelImpl;->isOpen()Z

    move-result v9

    if-eqz v9, :cond_8b

    .line 125
    iget-object v9, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lsun/nio/ch/ServerSocketChannelImpl;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 123
    :cond_8b
    throw v7
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_8c} :catch_35
    .catchall {:try_start_7d .. :try_end_8c} :catchall_16

    .line 115
    .restart local v1    # "sc":Ljava/nio/channels/SocketChannel;
    .restart local v4    # "to":J
    :cond_8c
    :try_start_8c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 116
    .local v2, "st":J
    iget-object v7, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    sget-short v9, Lsun/nio/ch/Net;->POLLIN:S

    invoke-virtual {v7, v9, v4, v5}, Lsun/nio/ch/ServerSocketChannelImpl;->poll(IJ)I

    move-result v0

    .line 117
    .local v0, "result":I
    if-lez v0, :cond_b6

    iget-object v7, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v7}, Lsun/nio/ch/ServerSocketChannelImpl;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v1

    if-eqz v1, :cond_b6

    .line 118
    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;
    :try_end_a5
    .catchall {:try_start_8c .. :try_end_a5} :catchall_7c

    move-result-object v7

    .line 124
    :try_start_a6
    iget-object v9, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v9}, Lsun/nio/ch/ServerSocketChannelImpl;->isOpen()Z

    move-result v9

    if-eqz v9, :cond_b4

    .line 125
    iget-object v9, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lsun/nio/ch/ServerSocketChannelImpl;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_b4} :catch_35
    .catchall {:try_start_a6 .. :try_end_b4} :catchall_16

    :cond_b4
    monitor-exit v8

    .line 118
    return-object v7

    .line 119
    :cond_b6
    :try_start_b6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v2

    sub-long/2addr v4, v10

    .line 120
    const-wide/16 v10, 0x0

    cmp-long v7, v4, v10

    if-gtz v7, :cond_6e

    .line 121
    new-instance v7, Ljava/net/SocketTimeoutException;

    invoke-direct {v7}, Ljava/net/SocketTimeoutException;-><init>()V

    throw v7
    :try_end_c8
    .catchall {:try_start_b6 .. :try_end_c8} :catchall_7c

    .end local v0    # "result":I
    .end local v1    # "sc":Ljava/nio/channels/SocketChannel;
    .end local v2    # "st":J
    .end local v4    # "to":J
    .restart local v6    # "x":Ljava/lang/Exception;
    :cond_c8
    monitor-exit v8

    .line 131
    return-object v12
.end method

.method public bind(Ljava/net/SocketAddress;)V
    .registers 3
    .param p1, "local"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    const/16 v0, 0x32

    invoke-virtual {p0, p1, v0}, Lsun/nio/ch/ServerSocketAdaptor;->bind(Ljava/net/SocketAddress;I)V

    .line 68
    return-void
.end method

.method public bind(Ljava/net/SocketAddress;I)V
    .registers 5
    .param p1, "local"    # Ljava/net/SocketAddress;
    .param p2, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    if-nez p1, :cond_8

    .line 72
    new-instance p1, Ljava/net/InetSocketAddress;

    .end local p1    # "local":Ljava/net/SocketAddress;
    const/4 v1, 0x0

    invoke-direct {p1, v1}, Ljava/net/InetSocketAddress;-><init>(I)V

    .line 74
    .restart local p1    # "local":Ljava/net/SocketAddress;
    :cond_8
    :try_start_8
    iget-object v1, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v1, p1, p2}, Lsun/nio/ch/ServerSocketChannelImpl;->bind(Ljava/net/SocketAddress;I)Ljava/nio/channels/ServerSocketChannel;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_e

    .line 78
    :goto_d
    return-void

    .line 75
    :catch_e
    move-exception v0

    .line 76
    .local v0, "x":Ljava/lang/Exception;
    invoke-static {v0}, Lsun/nio/ch/Net;->translateException(Ljava/lang/Exception;)V

    goto :goto_d
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/ServerSocketChannelImpl;->close()V

    .line 138
    return-void
.end method

.method public getChannel()Ljava/nio/channels/ServerSocketChannel;
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/ServerSocketChannelImpl;->isBound()Z

    move-result v0

    if-nez v0, :cond_a

    .line 82
    const/4 v0, 0x0

    return-object v0

    .line 83
    :cond_a
    iget-object v0, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/ServerSocketChannelImpl;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-static {v0}, Lsun/nio/ch/Net;->getRevealedLocalAddress(Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPort()I
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/ServerSocketChannelImpl;->isBound()Z

    move-result v0

    if-nez v0, :cond_a

    .line 89
    const/4 v0, -0x1

    return v0

    .line 90
    :cond_a
    iget-object v0, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/ServerSocketChannelImpl;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-static {v0}, Lsun/nio/ch/Net;->asInetSocketAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    return v0
.end method

.method public getReceiveBufferSize()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 198
    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    sget-object v2, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    invoke-virtual {v1, v2}, Lsun/nio/ch/ServerSocketChannelImpl;->getOption(Ljava/net/SocketOption;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_f

    move-result v1

    return v1

    .line 199
    :catch_f
    move-exception v0

    .line 200
    .local v0, "x":Ljava/io/IOException;
    invoke-static {v0}, Lsun/nio/ch/Net;->translateToSocketException(Ljava/lang/Exception;)V

    .line 201
    const/4 v1, -0x1

    return v1
.end method

.method public getReuseAddress()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 170
    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    sget-object v2, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    invoke-virtual {v1, v2}, Lsun/nio/ch/ServerSocketChannelImpl;->getOption(Ljava/net/SocketOption;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_f

    move-result v1

    return v1

    .line 171
    :catch_f
    move-exception v0

    .line 172
    .local v0, "x":Ljava/io/IOException;
    invoke-static {v0}, Lsun/nio/ch/Net;->translateToSocketException(Ljava/lang/Exception;)V

    .line 173
    const/4 v1, 0x0

    return v1
.end method

.method public getSoTimeout()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 157
    iget v0, p0, Lsun/nio/ch/ServerSocketAdaptor;->timeout:I

    return v0
.end method

.method public isBound()Z
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/ServerSocketChannelImpl;->isBound()Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/ServerSocketChannelImpl;->isOpen()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setReceiveBufferSize(I)V
    .registers 6
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 187
    if-gtz p1, :cond_b

    .line 188
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "size cannot be 0 or negative"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 190
    :cond_b
    :try_start_b
    iget-object v1, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    sget-object v2, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lsun/nio/ch/ServerSocketChannelImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/ServerSocketChannel;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_16} :catch_17

    .line 194
    :goto_16
    return-void

    .line 191
    :catch_17
    move-exception v0

    .line 192
    .local v0, "x":Ljava/io/IOException;
    invoke-static {v0}, Lsun/nio/ch/Net;->translateToSocketException(Ljava/lang/Exception;)V

    goto :goto_16
.end method

.method public setReuseAddress(Z)V
    .registers 6
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 162
    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    sget-object v2, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lsun/nio/ch/ServerSocketChannelImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/ServerSocketChannel;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    .line 166
    :goto_b
    return-void

    .line 163
    :catch_c
    move-exception v0

    .line 164
    .local v0, "x":Ljava/io/IOException;
    invoke-static {v0}, Lsun/nio/ch/Net;->translateToSocketException(Ljava/lang/Exception;)V

    goto :goto_b
.end method

.method public setSoTimeout(I)V
    .registers 2
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 153
    iput p1, p0, Lsun/nio/ch/ServerSocketAdaptor;->timeout:I

    .line 154
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 178
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketAdaptor;->isBound()Z

    move-result v0

    if-nez v0, :cond_a

    .line 179
    const-string/jumbo v0, "ServerSocket[unbound]"

    return-object v0

    .line 180
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ServerSocket[addr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketAdaptor;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 182
    const-string/jumbo v1, ",localport="

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 182
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketAdaptor;->getLocalPort()I

    move-result v1

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 182
    const-string/jumbo v1, "]"

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
