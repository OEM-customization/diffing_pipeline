.class public abstract Lcom/android/org/conscrypt/OpenSSLSocketImpl;
.super Lcom/android/org/conscrypt/AbstractConscryptSocket;
.source "OpenSSLSocketImpl.java"


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;-><init>()V

    .line 37
    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/AbstractConscryptSocket;-><init>(Ljava/lang/String;I)V

    .line 41
    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/net/InetAddress;I)V
    .registers 5
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "clientAddress"    # Ljava/net/InetAddress;
    .param p4, "clientPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/conscrypt/AbstractConscryptSocket;-><init>(Ljava/lang/String;ILjava/net/InetAddress;I)V

    .line 50
    return-void
.end method

.method constructor <init>(Ljava/net/InetAddress;I)V
    .registers 3
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/AbstractConscryptSocket;-><init>(Ljava/net/InetAddress;I)V

    .line 45
    return-void
.end method

.method constructor <init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V
    .registers 5
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "clientAddress"    # Ljava/net/InetAddress;
    .param p4, "clientPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/conscrypt/AbstractConscryptSocket;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    .line 56
    return-void
.end method

.method constructor <init>(Ljava/net/Socket;Ljava/lang/String;IZ)V
    .registers 5
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "autoClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/conscrypt/AbstractConscryptSocket;-><init>(Ljava/net/Socket;Ljava/lang/String;IZ)V

    .line 61
    return-void
.end method


# virtual methods
.method public bridge synthetic addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .registers 2

    .prologue
    invoke-super {p0, p1}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    return-void
.end method

.method public bridge synthetic bind(Ljava/net/SocketAddress;)V
    .registers 2

    .prologue
    invoke-super {p0, p1}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->bind(Ljava/net/SocketAddress;)V

    return-void
.end method

.method public bridge synthetic close()V
    .registers 1

    .prologue
    invoke-super {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->close()V

    return-void
.end method

.method public abstract getAlpnSelectedProtocol()[B
.end method

.method public bridge synthetic getChannel()Ljava/nio/channels/SocketChannel;
    .registers 2

    .prologue
    invoke-super {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public abstract getChannelId()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public getFileDescriptor$()Ljava/io/FileDescriptor;
    .registers 2

    .prologue
    .line 80
    invoke-super {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public abstract getHandshakeSession()Ljavax/net/ssl/SSLSession;
.end method

.method public getHostname()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    invoke-super {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getHostname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHostnameOrIP()Ljava/lang/String;
    .registers 2

    .prologue
    .line 75
    invoke-super {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getHostnameOrIP()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getInetAddress()Ljava/net/InetAddress;
    .registers 2

    .prologue
    invoke-super {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getInputStream()Ljava/io/InputStream;
    .registers 2

    .prologue
    invoke-super {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getKeepAlive()Z
    .registers 2

    .prologue
    invoke-super {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getKeepAlive()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getLocalAddress()Ljava/net/InetAddress;
    .registers 2

    .prologue
    invoke-super {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLocalPort()I
    .registers 2

    .prologue
    invoke-super {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getLocalSocketAddress()Ljava/net/SocketAddress;
    .registers 2

    .prologue
    invoke-super {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public final getNpnSelectedProtocol()[B
    .registers 2

    .prologue
    .line 115
    invoke-super {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getNpnSelectedProtocol()[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOOBInline()Z
    .registers 2

    .prologue
    invoke-super {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getOOBInline()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getOutputStream()Ljava/io/OutputStream;
    .registers 2

    .prologue
    invoke-super {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getReceiveBufferSize()I
    .registers 2

    .prologue
    invoke-super {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getReceiveBufferSize()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getRemoteSocketAddress()Ljava/net/SocketAddress;
    .registers 2

    .prologue
    invoke-super {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getReuseAddress()Z
    .registers 2

    .prologue
    invoke-super {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getReuseAddress()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getSendBufferSize()I
    .registers 2

    .prologue
    invoke-super {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getSendBufferSize()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSoLinger()I
    .registers 2

    .prologue
    invoke-super {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getSoLinger()I

    move-result v0

    return v0
.end method

.method public getSoWriteTimeout()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-super {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getSoWriteTimeout()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTcpNoDelay()Z
    .registers 2

    .prologue
    invoke-super {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getTcpNoDelay()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getTrafficClass()I
    .registers 2

    .prologue
    invoke-super {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getTrafficClass()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isBound()Z
    .registers 2

    .prologue
    invoke-super {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isBound()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isClosed()Z
    .registers 2

    .prologue
    invoke-super {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isClosed()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isConnected()Z
    .registers 2

    .prologue
    invoke-super {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isConnected()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isInputShutdown()Z
    .registers 2

    .prologue
    invoke-super {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isInputShutdown()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isOutputShutdown()Z
    .registers 2

    .prologue
    invoke-super {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isOutputShutdown()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic removeHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .registers 2

    .prologue
    invoke-super {p0, p1}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->removeHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    return-void
.end method

.method public abstract setAlpnProtocols([B)V
.end method

.method public abstract setAlpnProtocols([Ljava/lang/String;)V
.end method

.method public abstract setChannelIdEnabled(Z)V
.end method

.method public abstract setChannelIdPrivateKey(Ljava/security/PrivateKey;)V
.end method

.method public setHandshakeTimeout(I)V
    .registers 2
    .param p1, "handshakeTimeoutMilliseconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->setHandshakeTimeout(I)V

    .line 96
    return-void
.end method

.method public setHostname(Ljava/lang/String;)V
    .registers 2
    .param p1, "hostname"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->setHostname(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public bridge synthetic setKeepAlive(Z)V
    .registers 2

    .prologue
    invoke-super {p0, p1}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->setKeepAlive(Z)V

    return-void
.end method

.method public final setNpnProtocols([B)V
    .registers 2
    .param p1, "npnProtocols"    # [B

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->setNpnProtocols([B)V

    .line 121
    return-void
.end method

.method public bridge synthetic setPerformancePreferences(III)V
    .registers 4

    .prologue
    invoke-super {p0, p1, p2, p3}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->setPerformancePreferences(III)V

    return-void
.end method

.method public bridge synthetic setReceiveBufferSize(I)V
    .registers 2

    .prologue
    invoke-super {p0, p1}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->setReceiveBufferSize(I)V

    return-void
.end method

.method public bridge synthetic setReuseAddress(Z)V
    .registers 2

    .prologue
    invoke-super {p0, p1}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->setReuseAddress(Z)V

    return-void
.end method

.method public bridge synthetic setSendBufferSize(I)V
    .registers 2

    .prologue
    invoke-super {p0, p1}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->setSendBufferSize(I)V

    return-void
.end method

.method public bridge synthetic setSoLinger(ZI)V
    .registers 3

    .prologue
    invoke-super {p0, p1, p2}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->setSoLinger(ZI)V

    return-void
.end method

.method public setSoWriteTimeout(I)V
    .registers 2
    .param p1, "writeTimeoutMilliseconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->setSoWriteTimeout(I)V

    .line 86
    return-void
.end method

.method public bridge synthetic setTcpNoDelay(Z)V
    .registers 2

    .prologue
    invoke-super {p0, p1}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->setTcpNoDelay(Z)V

    return-void
.end method

.method public bridge synthetic setTrafficClass(I)V
    .registers 2

    .prologue
    invoke-super {p0, p1}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->setTrafficClass(I)V

    return-void
.end method

.method public abstract setUseSessionTickets(Z)V
.end method

.method public bridge synthetic shutdownInput()V
    .registers 1

    .prologue
    invoke-super {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->shutdownInput()V

    return-void
.end method

.method public bridge synthetic shutdownOutput()V
    .registers 1

    .prologue
    invoke-super {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->shutdownOutput()V

    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .registers 2

    .prologue
    invoke-super {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
