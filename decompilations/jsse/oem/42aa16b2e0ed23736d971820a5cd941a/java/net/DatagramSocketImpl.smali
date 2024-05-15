.class public abstract Ljava/net/DatagramSocketImpl;
.super Ljava/lang/Object;
.source "DatagramSocketImpl.java"

# interfaces
.implements Ljava/net/SocketOptions;


# instance fields
.field protected whitelist core-platform-api test-api fd:Ljava/io/FileDescriptor;

.field protected whitelist core-platform-api test-api localPort:I

.field greylist-max-o socket:Ljava/net/DatagramSocket;


# direct methods
.method public constructor whitelist core-platform-api test-api <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract whitelist core-platform-api test-api bind(ILjava/net/InetAddress;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method protected abstract whitelist core-platform-api test-api close()V
.end method

.method protected whitelist core-platform-api test-api connect(Ljava/net/InetAddress;I)V
    .registers 3
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 115
    return-void
.end method

.method protected abstract whitelist core-platform-api test-api create()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method greylist-max-o dataAvailable()I
    .registers 2

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist core-platform-api test-api disconnect()V
    .registers 1

    .line 121
    return-void
.end method

.method greylist-max-o getDatagramSocket()Ljava/net/DatagramSocket;
    .registers 2

    .line 67
    iget-object v0, p0, Ljava/net/DatagramSocketImpl;->socket:Ljava/net/DatagramSocket;

    return-object v0
.end method

.method protected whitelist core-platform-api test-api getFileDescriptor()Ljava/io/FileDescriptor;
    .registers 2

    .line 312
    iget-object v0, p0, Ljava/net/DatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method protected whitelist core-platform-api test-api getLocalPort()I
    .registers 2

    .line 253
    iget v0, p0, Ljava/net/DatagramSocketImpl;->localPort:I

    return v0
.end method

.method greylist-max-o getOption(Ljava/net/SocketOption;)Ljava/lang/Object;
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

    .line 283
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_SNDBUF:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_b

    .line 284
    const/16 v0, 0x1001

    invoke-virtual {p0, v0}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 285
    :cond_b
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_16

    .line 286
    const/16 v0, 0x1002

    invoke-virtual {p0, v0}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 287
    :cond_16
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_20

    .line 288
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 289
    :cond_20
    sget-object v0, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_2a

    .line 290
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 291
    :cond_2a
    sget-object v0, Ljava/net/StandardSocketOptions;->IP_MULTICAST_IF:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_3d

    .line 292
    invoke-virtual {p0}, Ljava/net/DatagramSocketImpl;->getDatagramSocket()Ljava/net/DatagramSocket;

    move-result-object v0

    instance-of v0, v0, Ljava/net/MulticastSocket;

    if-eqz v0, :cond_3d

    .line 293
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 294
    :cond_3d
    sget-object v0, Ljava/net/StandardSocketOptions;->IP_MULTICAST_TTL:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_52

    .line 295
    invoke-virtual {p0}, Ljava/net/DatagramSocketImpl;->getDatagramSocket()Ljava/net/DatagramSocket;

    move-result-object v0

    instance-of v0, v0, Ljava/net/MulticastSocket;

    if-eqz v0, :cond_52

    .line 296
    invoke-virtual {p0}, Ljava/net/DatagramSocketImpl;->getTimeToLive()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 297
    .local v0, "ttl":Ljava/lang/Integer;
    return-object v0

    .line 298
    .end local v0    # "ttl":Ljava/lang/Integer;
    :cond_52
    sget-object v0, Ljava/net/StandardSocketOptions;->IP_MULTICAST_LOOP:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_65

    .line 299
    invoke-virtual {p0}, Ljava/net/DatagramSocketImpl;->getDatagramSocket()Ljava/net/DatagramSocket;

    move-result-object v0

    instance-of v0, v0, Ljava/net/MulticastSocket;

    if-eqz v0, :cond_65

    .line 300
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 302
    :cond_65
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported option"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract whitelist core-platform-api test-api getTTL()B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected abstract whitelist core-platform-api test-api getTimeToLive()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract whitelist core-platform-api test-api join(Ljava/net/InetAddress;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract whitelist core-platform-api test-api joinGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract whitelist core-platform-api test-api leave(Ljava/net/InetAddress;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract whitelist core-platform-api test-api leaveGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract whitelist core-platform-api test-api peek(Ljava/net/InetAddress;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract whitelist core-platform-api test-api peekData(Ljava/net/DatagramPacket;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract whitelist core-platform-api test-api receive(Ljava/net/DatagramPacket;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract whitelist core-platform-api test-api send(Ljava/net/DatagramPacket;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method greylist-max-o setDatagramSocket(Ljava/net/DatagramSocket;)V
    .registers 2
    .param p1, "socket"    # Ljava/net/DatagramSocket;

    .line 63
    iput-object p1, p0, Ljava/net/DatagramSocketImpl;->socket:Ljava/net/DatagramSocket;

    .line 64
    return-void
.end method

.method greylist-max-o setOption(Ljava/net/SocketOption;Ljava/lang/Object;)V
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

    .line 257
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_SNDBUF:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_a

    .line 258
    const/16 v0, 0x1001

    invoke-virtual {p0, v0, p2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_6c

    .line 259
    :cond_a
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_14

    .line 260
    const/16 v0, 0x1002

    invoke-virtual {p0, v0, p2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_6c

    .line 261
    :cond_14
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_1d

    .line 262
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_6c

    .line 263
    :cond_1d
    sget-object v0, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_26

    .line 264
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_6c

    .line 265
    :cond_26
    sget-object v0, Ljava/net/StandardSocketOptions;->IP_MULTICAST_IF:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_38

    .line 266
    invoke-virtual {p0}, Ljava/net/DatagramSocketImpl;->getDatagramSocket()Ljava/net/DatagramSocket;

    move-result-object v0

    instance-of v0, v0, Ljava/net/MulticastSocket;

    if-eqz v0, :cond_38

    .line 267
    const/16 v0, 0x1f

    invoke-virtual {p0, v0, p2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_6c

    .line 268
    :cond_38
    sget-object v0, Ljava/net/StandardSocketOptions;->IP_MULTICAST_TTL:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_5b

    .line 269
    invoke-virtual {p0}, Ljava/net/DatagramSocketImpl;->getDatagramSocket()Ljava/net/DatagramSocket;

    move-result-object v0

    instance-of v0, v0, Ljava/net/MulticastSocket;

    if-eqz v0, :cond_5b

    .line 270
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_53

    .line 273
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/net/DatagramSocketImpl;->setTimeToLive(I)V

    goto :goto_6c

    .line 271
    :cond_53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not an integer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_5b
    sget-object v0, Ljava/net/StandardSocketOptions;->IP_MULTICAST_LOOP:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_6d

    .line 275
    invoke-virtual {p0}, Ljava/net/DatagramSocketImpl;->getDatagramSocket()Ljava/net/DatagramSocket;

    move-result-object v0

    instance-of v0, v0, Ljava/net/MulticastSocket;

    if-eqz v0, :cond_6d

    .line 276
    const/16 v0, 0x12

    invoke-virtual {p0, v0, p2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 280
    :goto_6c
    return-void

    .line 278
    :cond_6d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported option"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract whitelist core-platform-api test-api setTTL(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected abstract whitelist core-platform-api test-api setTimeToLive(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
