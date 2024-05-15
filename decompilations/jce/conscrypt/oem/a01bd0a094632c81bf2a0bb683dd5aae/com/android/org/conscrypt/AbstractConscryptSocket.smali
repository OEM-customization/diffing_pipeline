.class abstract Lcom/android/org/conscrypt/AbstractConscryptSocket;
.super Ljavax/net/ssl/SSLSocket;
.source "AbstractConscryptSocket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/AbstractConscryptSocket$1;
    }
.end annotation


# instance fields
.field private final autoClose:Z

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavax/net/ssl/HandshakeCompletedListener;",
            ">;"
        }
    .end annotation
.end field

.field private peerHostname:Ljava/lang/String;

.field private final peerInfoProvider:Lcom/android/org/conscrypt/PeerInfoProvider;

.field private final peerPort:I

.field private readTimeoutMilliseconds:I

.field final socket:Ljava/net/Socket;


# direct methods
.method constructor <init>()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocket;-><init>()V

    .line 61
    new-instance v0, Lcom/android/org/conscrypt/AbstractConscryptSocket$1;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket$1;-><init>(Lcom/android/org/conscrypt/AbstractConscryptSocket;)V

    iput-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->peerInfoProvider:Lcom/android/org/conscrypt/PeerInfoProvider;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 78
    iput-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->listeners:Ljava/util/List;

    .line 89
    iput-object p0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->peerHostname:Ljava/lang/String;

    .line 91
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->peerPort:I

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->autoClose:Z

    .line 93
    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .registers 5
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/lang/String;I)V

    .line 61
    new-instance v0, Lcom/android/org/conscrypt/AbstractConscryptSocket$1;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket$1;-><init>(Lcom/android/org/conscrypt/AbstractConscryptSocket;)V

    iput-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->peerInfoProvider:Lcom/android/org/conscrypt/PeerInfoProvider;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 78
    iput-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->listeners:Ljava/util/List;

    .line 97
    iput-object p0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    .line 98
    iput-object p1, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->peerHostname:Ljava/lang/String;

    .line 99
    iput p2, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->peerPort:I

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->autoClose:Z

    .line 101
    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/net/InetAddress;I)V
    .registers 7
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
    .line 113
    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/lang/String;ILjava/net/InetAddress;I)V

    .line 61
    new-instance v0, Lcom/android/org/conscrypt/AbstractConscryptSocket$1;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket$1;-><init>(Lcom/android/org/conscrypt/AbstractConscryptSocket;)V

    iput-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->peerInfoProvider:Lcom/android/org/conscrypt/PeerInfoProvider;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 78
    iput-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->listeners:Ljava/util/List;

    .line 114
    iput-object p0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    .line 115
    iput-object p1, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->peerHostname:Ljava/lang/String;

    .line 116
    iput p2, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->peerPort:I

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->autoClose:Z

    .line 118
    return-void
.end method

.method constructor <init>(Ljava/net/InetAddress;I)V
    .registers 5
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/net/InetAddress;I)V

    .line 61
    new-instance v0, Lcom/android/org/conscrypt/AbstractConscryptSocket$1;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket$1;-><init>(Lcom/android/org/conscrypt/AbstractConscryptSocket;)V

    iput-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->peerInfoProvider:Lcom/android/org/conscrypt/PeerInfoProvider;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 78
    iput-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->listeners:Ljava/util/List;

    .line 105
    iput-object p0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->peerHostname:Ljava/lang/String;

    .line 107
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->peerPort:I

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->autoClose:Z

    .line 109
    return-void
.end method

.method constructor <init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V
    .registers 7
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
    .line 122
    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    .line 61
    new-instance v0, Lcom/android/org/conscrypt/AbstractConscryptSocket$1;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket$1;-><init>(Lcom/android/org/conscrypt/AbstractConscryptSocket;)V

    iput-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->peerInfoProvider:Lcom/android/org/conscrypt/PeerInfoProvider;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 78
    iput-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->listeners:Ljava/util/List;

    .line 123
    iput-object p0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->peerHostname:Ljava/lang/String;

    .line 125
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->peerPort:I

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->autoClose:Z

    .line 127
    return-void
.end method

.method constructor <init>(Ljava/net/Socket;Ljava/lang/String;IZ)V
    .registers 7
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
    .line 129
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocket;-><init>()V

    .line 61
    new-instance v0, Lcom/android/org/conscrypt/AbstractConscryptSocket$1;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket$1;-><init>(Lcom/android/org/conscrypt/AbstractConscryptSocket;)V

    iput-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->peerInfoProvider:Lcom/android/org/conscrypt/PeerInfoProvider;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 78
    iput-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->listeners:Ljava/util/List;

    .line 131
    const-string/jumbo v0, "socket"

    invoke-static {p1, v0}, Lcom/android/org/conscrypt/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    iput-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    .line 132
    iput-object p2, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->peerHostname:Ljava/lang/String;

    .line 133
    iput p3, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->peerPort:I

    .line 134
    iput-boolean p4, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->autoClose:Z

    .line 135
    return-void
.end method

.method private isDelegating()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 695
    iget-object v1, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    if-eq v1, p0, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method


# virtual methods
.method public addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .registers 4
    .param p1, "listener"    # Ljavax/net/ssl/HandshakeCompletedListener;

    .prologue
    .line 237
    if-eqz p1, :cond_f

    const/4 v0, 0x1

    :goto_3
    const-string/jumbo v1, "Provided listener is null"

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    return-void

    .line 237
    :cond_f
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public bind(Ljava/net/SocketAddress;)V
    .registers 3
    .param p1, "bindpoint"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 162
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 166
    :goto_b
    return-void

    .line 164
    :cond_c
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLSocket;->bind(Ljava/net/SocketAddress;)V

    goto :goto_b
.end method

.method final checkOpen()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 667
    invoke-virtual {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 668
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 670
    :cond_f
    return-void
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 172
    iget-boolean v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->autoClose:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_19

    .line 173
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 180
    :cond_19
    :goto_19
    return-void

    .line 176
    :cond_1a
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_19

    .line 177
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->close()V

    goto :goto_19
.end method

.method public final connect(Ljava/net/SocketAddress;)V
    .registers 3
    .param p1, "endpoint"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->connect(Ljava/net/SocketAddress;I)V

    .line 140
    return-void
.end method

.method public final connect(Ljava/net/SocketAddress;I)V
    .registers 4
    .param p1, "endpoint"    # Ljava/net/SocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->peerHostname:Ljava/lang/String;

    if-nez v0, :cond_11

    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_11

    move-object v0, p1

    .line 149
    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-static {v0}, Lcom/android/org/conscrypt/Platform;->getHostStringFromInetSocketAddress(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v0

    .line 148
    iput-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->peerHostname:Ljava/lang/String;

    .line 152
    :cond_11
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 153
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1, p2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 157
    :goto_1c
    return-void

    .line 155
    :cond_1d
    invoke-super {p0, p1, p2}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;I)V

    goto :goto_1c
.end method

.method abstract getActiveSession()Ljavax/net/ssl/SSLSession;
.end method

.method abstract getAlpnSelectedProtocol()[B
.end method

.method public getChannel()Ljava/nio/channels/SocketChannel;
    .registers 2

    .prologue
    .line 299
    const/4 v0, 0x0

    return-object v0
.end method

.method abstract getChannelId()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public getFileDescriptor$()Ljava/io/FileDescriptor;
    .registers 2

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 256
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-static {v0}, Lcom/android/org/conscrypt/Platform;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0

    .line 258
    :cond_d
    invoke-static {p0}, Lcom/android/org/conscrypt/Platform;->getFileDescriptorFromSSLSocket(Lcom/android/org/conscrypt/AbstractConscryptSocket;)Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public abstract getHandshakeSession()Ljavax/net/ssl/SSLSession;
.end method

.method getHostname()Ljava/lang/String;
    .registers 2

    .prologue
    .line 524
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->peerHostname:Ljava/lang/String;

    return-object v0
.end method

.method getHostnameOrIP()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 542
    iget-object v1, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->peerHostname:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 543
    iget-object v1, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->peerHostname:Ljava/lang/String;

    return-object v1

    .line 546
    :cond_8
    invoke-virtual {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 547
    .local v0, "peerAddress":Ljava/net/InetAddress;
    if-eqz v0, :cond_13

    .line 548
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 551
    :cond_13
    return-object v2
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 185
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0

    .line 187
    :cond_d
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 305
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 307
    :cond_d
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getKeepAlive()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 401
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 402
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getKeepAlive()Z

    move-result v0

    return v0

    .line 404
    :cond_d
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getKeepAlive()Z

    move-result v0

    return v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 193
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0

    .line 195
    :cond_d
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPort()I
    .registers 2

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 201
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalPort()I

    move-result v0

    return v0

    .line 203
    :cond_d
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getLocalSocketAddress()Ljava/net/SocketAddress;
    .registers 2

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 217
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0

    .line 219
    :cond_d
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method getNpnSelectedProtocol()[B
    .registers 2

    .prologue
    .line 623
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOOBInline()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 293
    const/4 v0, 0x0

    return v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 312
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 313
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0

    .line 315
    :cond_d
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public final getPort()I
    .registers 3

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 225
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v0

    return v0

    .line 228
    :cond_d
    iget v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->peerPort:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_15

    .line 230
    iget v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->peerPort:I

    return v0

    .line 232
    :cond_15
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getPort()I

    move-result v0

    return v0
.end method

.method public getReceiveBufferSize()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 384
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 385
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getReceiveBufferSize()I

    move-result v0

    return v0

    .line 387
    :cond_d
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getReceiveBufferSize()I

    move-result v0

    return v0
.end method

.method public getRemoteSocketAddress()Ljava/net/SocketAddress;
    .registers 2

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 209
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0

    .line 211
    :cond_d
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getReuseAddress()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 435
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 436
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getReuseAddress()Z

    move-result v0

    return v0

    .line 438
    :cond_d
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getReuseAddress()Z

    move-result v0

    return v0
.end method

.method public getSendBufferSize()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 365
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 366
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSendBufferSize()I

    move-result v0

    return v0

    .line 368
    :cond_d
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getSendBufferSize()I

    move-result v0

    return v0
.end method

.method public getSoLinger()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 346
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 347
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoLinger()I

    move-result v0

    return v0

    .line 349
    :cond_d
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getSoLinger()I

    move-result v0

    return v0
.end method

.method public final getSoTimeout()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 276
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v0

    return v0

    .line 278
    :cond_d
    iget v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->readTimeoutMilliseconds:I

    return v0
.end method

.method getSoWriteTimeout()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 565
    const/4 v0, 0x0

    return v0
.end method

.method public getTcpNoDelay()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 330
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getTcpNoDelay()Z

    move-result v0

    return v0

    .line 332
    :cond_d
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getTcpNoDelay()Z

    move-result v0

    return v0
.end method

.method public getTrafficClass()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 418
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 419
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getTrafficClass()I

    move-result v0

    return v0

    .line 421
    :cond_d
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getTrafficClass()I

    move-result v0

    return v0
.end method

.method public isBound()Z
    .registers 2

    .prologue
    .line 469
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 470
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isBound()Z

    move-result v0

    return v0

    .line 472
    :cond_d
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->isBound()Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .registers 2

    .prologue
    .line 477
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 478
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    return v0

    .line 480
    :cond_d
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .registers 2

    .prologue
    .line 461
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 462
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    return v0

    .line 464
    :cond_d
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isInputShutdown()Z
    .registers 2

    .prologue
    .line 485
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 486
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    return v0

    .line 488
    :cond_d
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->isInputShutdown()Z

    move-result v0

    return v0
.end method

.method public isOutputShutdown()Z
    .registers 2

    .prologue
    .line 493
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 494
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    return v0

    .line 496
    :cond_d
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->isOutputShutdown()Z

    move-result v0

    return v0
.end method

.method final notifyHandshakeCompletedListeners()V
    .registers 7

    .prologue
    .line 673
    iget-object v5, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->listeners:Ljava/util/List;

    if-eqz v5, :cond_3a

    iget-object v5, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->listeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3a

    .line 675
    new-instance v1, Ljavax/net/ssl/HandshakeCompletedEvent;

    invoke-virtual {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getActiveSession()Ljavax/net/ssl/SSLSession;

    move-result-object v5

    invoke-direct {v1, p0, v5}, Ljavax/net/ssl/HandshakeCompletedEvent;-><init>(Ljavax/net/ssl/SSLSocket;Ljavax/net/ssl/SSLSession;)V

    .line 676
    .local v1, "event":Ljavax/net/ssl/HandshakeCompletedEvent;
    iget-object v5, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->listeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "listener$iterator":Ljava/util/Iterator;
    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/HandshakeCompletedListener;

    .line 678
    .local v2, "listener":Ljavax/net/ssl/HandshakeCompletedListener;
    :try_start_29
    invoke-interface {v2, v1}, Ljavax/net/ssl/HandshakeCompletedListener;->handshakeCompleted(Ljavax/net/ssl/HandshakeCompletedEvent;)V
    :try_end_2c
    .catch Ljava/lang/RuntimeException; {:try_start_29 .. :try_end_2c} :catch_2d

    goto :goto_1d

    .line 679
    :catch_2d
    move-exception v0

    .line 685
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    .line 686
    .local v4, "thread":Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v5

    invoke-interface {v5, v4, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_1d

    .line 690
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "event":Ljavax/net/ssl/HandshakeCompletedEvent;
    .end local v2    # "listener":Ljavax/net/ssl/HandshakeCompletedListener;
    .end local v3    # "listener$iterator":Ljava/util/Iterator;
    .end local v4    # "thread":Ljava/lang/Thread;
    :cond_3a
    return-void
.end method

.method final peerInfoProvider()Lcom/android/org/conscrypt/PeerInfoProvider;
    .registers 2

    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->peerInfoProvider:Lcom/android/org/conscrypt/PeerInfoProvider;

    return-object v0
.end method

.method public removeHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .registers 4
    .param p1, "listener"    # Ljavax/net/ssl/HandshakeCompletedListener;

    .prologue
    .line 243
    if-eqz p1, :cond_1a

    const/4 v0, 0x1

    :goto_3
    const-string/jumbo v1, "Provided listener is null"

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 245
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Provided listener is not registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_1a
    const/4 v0, 0x0

    goto :goto_3

    .line 247
    :cond_1c
    return-void
.end method

.method public final sendUrgentData(I)V
    .registers 4
    .param p1, "data"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 283
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Method sendUrgentData() is not supported."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method abstract setAlpnProtocols([B)V
.end method

.method abstract setAlpnProtocols([Ljava/lang/String;)V
.end method

.method abstract setChannelIdEnabled(Z)V
.end method

.method abstract setChannelIdPrivateKey(Ljava/security/PrivateKey;)V
.end method

.method setHandshakeTimeout(I)V
    .registers 4
    .param p1, "handshakeTimeoutMilliseconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 573
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Method setHandshakeTimeout() is not supported."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setHostname(Ljava/lang/String;)V
    .registers 2
    .param p1, "hostname"    # Ljava/lang/String;

    .prologue
    .line 533
    iput-object p1, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->peerHostname:Ljava/lang/String;

    .line 534
    return-void
.end method

.method public setKeepAlive(Z)V
    .registers 3
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 392
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 393
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 397
    :goto_b
    return-void

    .line 395
    :cond_c
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLSocket;->setKeepAlive(Z)V

    goto :goto_b
.end method

.method setNpnProtocols([B)V
    .registers 2
    .param p1, "npnProtocols"    # [B

    .prologue
    .line 629
    return-void
.end method

.method public final setOOBInline(Z)V
    .registers 4
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 288
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Method setOOBInline() is not supported."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPerformancePreferences(III)V
    .registers 5
    .param p1, "connectionTime"    # I
    .param p2, "latency"    # I
    .param p3, "bandwidth"    # I

    .prologue
    .line 501
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 502
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/Socket;->setPerformancePreferences(III)V

    .line 506
    :goto_b
    return-void

    .line 504
    :cond_c
    invoke-super {p0, p1, p2, p3}, Ljavax/net/ssl/SSLSocket;->setPerformancePreferences(III)V

    goto :goto_b
.end method

.method public setReceiveBufferSize(I)V
    .registers 3
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 374
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 375
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 379
    :goto_b
    return-void

    .line 377
    :cond_c
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLSocket;->setReceiveBufferSize(I)V

    goto :goto_b
.end method

.method public setReuseAddress(Z)V
    .registers 3
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 426
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 427
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setReuseAddress(Z)V

    .line 431
    :goto_b
    return-void

    .line 429
    :cond_c
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLSocket;->setReuseAddress(Z)V

    goto :goto_b
.end method

.method public setSendBufferSize(I)V
    .registers 3
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 355
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 356
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSendBufferSize(I)V

    .line 360
    :goto_b
    return-void

    .line 358
    :cond_c
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLSocket;->setSendBufferSize(I)V

    goto :goto_b
.end method

.method public setSoLinger(ZI)V
    .registers 4
    .param p1, "on"    # Z
    .param p2, "linger"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 337
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 338
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1, p2}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 342
    :goto_b
    return-void

    .line 340
    :cond_c
    invoke-super {p0, p1, p2}, Ljavax/net/ssl/SSLSocket;->setSoLinger(ZI)V

    goto :goto_b
.end method

.method public final setSoTimeout(I)V
    .registers 3
    .param p1, "readTimeoutMilliseconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 265
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 270
    :goto_b
    return-void

    .line 267
    :cond_c
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    .line 268
    iput p1, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->readTimeoutMilliseconds:I

    goto :goto_b
.end method

.method setSoWriteTimeout(I)V
    .registers 4
    .param p1, "writeTimeoutMilliseconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 558
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Method setSoWriteTimeout() is not supported."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTcpNoDelay(Z)V
    .registers 3
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 320
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 321
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 325
    :goto_b
    return-void

    .line 323
    :cond_c
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLSocket;->setTcpNoDelay(Z)V

    goto :goto_b
.end method

.method public setTrafficClass(I)V
    .registers 3
    .param p1, "tc"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 409
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 410
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setTrafficClass(I)V

    .line 414
    :goto_b
    return-void

    .line 412
    :cond_c
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLSocket;->setTrafficClass(I)V

    goto :goto_b
.end method

.method abstract setUseSessionTickets(Z)V
.end method

.method public shutdownInput()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 443
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 444
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownInput()V

    .line 448
    :goto_b
    return-void

    .line 446
    :cond_c
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->shutdownInput()V

    goto :goto_b
.end method

.method public shutdownOutput()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 452
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 453
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V

    .line 457
    :goto_b
    return-void

    .line 455
    :cond_c
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->shutdownOutput()V

    goto :goto_b
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "SSL socket over "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 511
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 512
    iget-object v1, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    :goto_17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 514
    :cond_1c
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17
.end method
