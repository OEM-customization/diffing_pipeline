.class public abstract Ljava/nio/channels/DatagramChannel;
.super Ljava/nio/channels/spi/AbstractSelectableChannel;
.source "DatagramChannel.java"

# interfaces
.implements Ljava/nio/channels/ByteChannel;
.implements Ljava/nio/channels/ScatteringByteChannel;
.implements Ljava/nio/channels/GatheringByteChannel;
.implements Ljava/nio/channels/MulticastChannel;


# direct methods
.method protected constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .registers 2
    .param p1, "provider"    # Ljava/nio/channels/spi/SelectorProvider;

    .prologue
    .line 125
    invoke-direct {p0, p1}, Ljava/nio/channels/spi/AbstractSelectableChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 126
    return-void
.end method

.method public static open()Ljava/nio/channels/DatagramChannel;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/spi/SelectorProvider;->openDatagramChannel()Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    return-object v0
.end method

.method public static open(Ljava/net/ProtocolFamily;)Ljava/nio/channels/DatagramChannel;
    .registers 2
    .param p0, "family"    # Ljava/net/ProtocolFamily;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/channels/spi/SelectorProvider;->openDatagramChannel(Ljava/net/ProtocolFamily;)Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract bind(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public bridge synthetic bind(Ljava/net/SocketAddress;)Ljava/nio/channels/NetworkChannel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-virtual {p0, p1}, Ljava/nio/channels/DatagramChannel;->bind(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    return-object v0
.end method

.method public abstract connect(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract disconnect()Ljava/nio/channels/DatagramChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getLocalAddress()Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getRemoteAddress()Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract isConnected()Z
.end method

.method public abstract read(Ljava/nio/ByteBuffer;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final read([Ljava/nio/ByteBuffer;)J
    .registers 4
    .param p1, "dsts"    # [Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 514
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/channels/DatagramChannel;->read([Ljava/nio/ByteBuffer;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract read([Ljava/nio/ByteBuffer;II)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract receive(Ljava/nio/ByteBuffer;)Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract send(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/DatagramChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption",
            "<TT;>;TT;)",
            "Ljava/nio/channels/DatagramChannel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public bridge synthetic setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/NetworkChannel;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    invoke-virtual {p0, p1, p2}, Ljava/nio/channels/DatagramChannel;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    return-object v0
.end method

.method public abstract socket()Ljava/net/DatagramSocket;
.end method

.method public final validOps()I
    .registers 2

    .prologue
    .line 196
    const/4 v0, 0x5

    return v0
.end method

.method public abstract write(Ljava/nio/ByteBuffer;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final write([Ljava/nio/ByteBuffer;)J
    .registers 4
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 568
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/channels/DatagramChannel;->write([Ljava/nio/ByteBuffer;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract write([Ljava/nio/ByteBuffer;II)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
