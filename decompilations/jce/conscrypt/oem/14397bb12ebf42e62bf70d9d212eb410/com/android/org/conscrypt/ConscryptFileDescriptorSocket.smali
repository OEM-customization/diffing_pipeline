.class final Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
.super Lcom/android/org/conscrypt/OpenSSLSocketImpl;
.source "ConscryptFileDescriptorSocket.java"

# interfaces
.implements Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;
.implements Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;
.implements Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;,
        Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;
    }
.end annotation


# static fields
.field private static final DBG_STATE:Z


# instance fields
.field private channelIdPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;

.field private final guard:Ljava/lang/Object;

.field private handshakeTimeoutMilliseconds:I

.field private is:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;

.field private os:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;

.field private final ssl:Lcom/android/org/conscrypt/SslWrapper;

.field private final sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

.field private final sslSession:Lcom/android/org/conscrypt/ActiveSession;

.field private state:I

.field private final stateLock:Ljava/lang/Object;

.field private writeTimeoutMilliseconds:I


# direct methods
.method static synthetic -get0(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)Lcom/android/org/conscrypt/SslWrapper;
    .registers 2
    .param p0, "-this"    # Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    .prologue
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)I
    .registers 2
    .param p0, "-this"    # Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    .prologue
    iget v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)Ljava/lang/Object;
    .registers 2
    .param p0, "-this"    # Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    .prologue
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->stateLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)I
    .registers 2
    .param p0, "-this"    # Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    .prologue
    iget v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->writeTimeoutMilliseconds:I

    return v0
.end method

.method constructor <init>(Lcom/android/org/conscrypt/SSLParametersImpl;)V
    .registers 5
    .param p1, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;-><init>()V

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->stateLock:Ljava/lang/Object;

    .line 69
    iput v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 97
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->closeGuardGet()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->guard:Ljava/lang/Object;

    .line 107
    iput v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->writeTimeoutMilliseconds:I

    .line 108
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->handshakeTimeoutMilliseconds:I

    .line 111
    iput-object p1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 112
    invoke-static {p1, p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->newSsl(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)Lcom/android/org/conscrypt/SslWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    .line 113
    new-instance v0, Lcom/android/org/conscrypt/ActiveSession;

    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    invoke-virtual {p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/ActiveSession;-><init>(Lcom/android/org/conscrypt/SslWrapper;Lcom/android/org/conscrypt/AbstractSessionContext;)V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslSession:Lcom/android/org/conscrypt/ActiveSession;

    .line 114
    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILcom/android/org/conscrypt/SSLParametersImpl;)V
    .registers 7
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/lang/String;I)V

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->stateLock:Ljava/lang/Object;

    .line 69
    iput v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 97
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->closeGuardGet()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->guard:Ljava/lang/Object;

    .line 107
    iput v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->writeTimeoutMilliseconds:I

    .line 108
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->handshakeTimeoutMilliseconds:I

    .line 119
    iput-object p3, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 120
    invoke-static {p3, p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->newSsl(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)Lcom/android/org/conscrypt/SslWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    .line 121
    new-instance v0, Lcom/android/org/conscrypt/ActiveSession;

    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    invoke-virtual {p3}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/ActiveSession;-><init>(Lcom/android/org/conscrypt/SslWrapper;Lcom/android/org/conscrypt/AbstractSessionContext;)V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslSession:Lcom/android/org/conscrypt/ActiveSession;

    .line 122
    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)V
    .registers 9
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "clientAddress"    # Ljava/net/InetAddress;
    .param p4, "clientPort"    # I
    .param p5, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/lang/String;ILjava/net/InetAddress;I)V

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->stateLock:Ljava/lang/Object;

    .line 69
    iput v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 97
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->closeGuardGet()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->guard:Ljava/lang/Object;

    .line 107
    iput v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->writeTimeoutMilliseconds:I

    .line 108
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->handshakeTimeoutMilliseconds:I

    .line 135
    iput-object p5, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 136
    invoke-static {p5, p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->newSsl(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)Lcom/android/org/conscrypt/SslWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    .line 137
    new-instance v0, Lcom/android/org/conscrypt/ActiveSession;

    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    invoke-virtual {p5}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/ActiveSession;-><init>(Lcom/android/org/conscrypt/SslWrapper;Lcom/android/org/conscrypt/AbstractSessionContext;)V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslSession:Lcom/android/org/conscrypt/ActiveSession;

    .line 138
    return-void
.end method

.method constructor <init>(Ljava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)V
    .registers 7
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 126
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/net/InetAddress;I)V

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->stateLock:Ljava/lang/Object;

    .line 69
    iput v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 97
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->closeGuardGet()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->guard:Ljava/lang/Object;

    .line 107
    iput v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->writeTimeoutMilliseconds:I

    .line 108
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->handshakeTimeoutMilliseconds:I

    .line 127
    iput-object p3, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 128
    invoke-static {p3, p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->newSsl(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)Lcom/android/org/conscrypt/SslWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    .line 129
    new-instance v0, Lcom/android/org/conscrypt/ActiveSession;

    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    invoke-virtual {p3}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/ActiveSession;-><init>(Lcom/android/org/conscrypt/SslWrapper;Lcom/android/org/conscrypt/AbstractSessionContext;)V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslSession:Lcom/android/org/conscrypt/ActiveSession;

    .line 130
    return-void
.end method

.method constructor <init>(Ljava/net/InetAddress;ILjava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)V
    .registers 9
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "clientAddress"    # Ljava/net/InetAddress;
    .param p4, "clientPort"    # I
    .param p5, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->stateLock:Ljava/lang/Object;

    .line 69
    iput v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 97
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->closeGuardGet()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->guard:Ljava/lang/Object;

    .line 107
    iput v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->writeTimeoutMilliseconds:I

    .line 108
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->handshakeTimeoutMilliseconds:I

    .line 143
    iput-object p5, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 144
    invoke-static {p5, p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->newSsl(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)Lcom/android/org/conscrypt/SslWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    .line 145
    new-instance v0, Lcom/android/org/conscrypt/ActiveSession;

    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    invoke-virtual {p5}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/ActiveSession;-><init>(Lcom/android/org/conscrypt/SslWrapper;Lcom/android/org/conscrypt/AbstractSessionContext;)V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslSession:Lcom/android/org/conscrypt/ActiveSession;

    .line 146
    return-void
.end method

.method constructor <init>(Ljava/net/Socket;Ljava/lang/String;IZLcom/android/org/conscrypt/SSLParametersImpl;)V
    .registers 9
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "autoClose"    # Z
    .param p5, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 150
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/net/Socket;Ljava/lang/String;IZ)V

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->stateLock:Ljava/lang/Object;

    .line 69
    iput v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 97
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->closeGuardGet()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->guard:Ljava/lang/Object;

    .line 107
    iput v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->writeTimeoutMilliseconds:I

    .line 108
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->handshakeTimeoutMilliseconds:I

    .line 151
    iput-object p5, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 152
    invoke-static {p5, p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->newSsl(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)Lcom/android/org/conscrypt/SslWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    .line 153
    new-instance v0, Lcom/android/org/conscrypt/ActiveSession;

    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    invoke-virtual {p5}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/ActiveSession;-><init>(Lcom/android/org/conscrypt/SslWrapper;Lcom/android/org/conscrypt/AbstractSessionContext;)V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslSession:Lcom/android/org/conscrypt/ActiveSession;

    .line 154
    return-void
.end method

.method private assertReadableOrWriteableState()V
    .registers 4

    .prologue
    .line 460
    iget v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_a

    iget v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    .line 461
    :cond_a
    return-void

    .line 464
    :cond_b
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private clientSessionContext()Lcom/android/org/conscrypt/ClientSessionContext;
    .registers 2

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getClientSessionContext()Lcom/android/org/conscrypt/ClientSessionContext;

    move-result-object v0

    return-object v0
.end method

.method private closeUnderlyingSocket()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 990
    invoke-super {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->close()V

    .line 991
    return-void
.end method

.method private free()V
    .registers 2

    .prologue
    .line 994
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SslWrapper;->isClosed()Z

    move-result v0

    if-nez v0, :cond_12

    .line 995
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SslWrapper;->close()V

    .line 996
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->guard:Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/org/conscrypt/Platform;->closeGuardClose(Ljava/lang/Object;)V

    .line 998
    :cond_12
    return-void
.end method

.method private static newSsl(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)Lcom/android/org/conscrypt/SslWrapper;
    .registers 4
    .param p0, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .param p1, "engine"    # Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    .prologue
    .line 159
    :try_start_0
    invoke-static {p0, p1, p1, p1}, Lcom/android/org/conscrypt/SslWrapper;->newInstance(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;)Lcom/android/org/conscrypt/SslWrapper;
    :try_end_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 160
    :catch_5
    move-exception v0

    .line 161
    .local v0, "e":Ljavax/net/ssl/SSLException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private sessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;
    .registers 2

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;

    move-result-object v0

    return-object v0
.end method

.method private shutdownAndFreeSslNative()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 974
    :try_start_0
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->blockGuardOnNetwork()V

    .line 975
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->socket:Ljava/net/Socket;

    invoke-static {v2}, Lcom/android/org/conscrypt/Platform;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/org/conscrypt/SslWrapper;->shutdown(Ljava/io/FileDescriptor;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_15
    .catchall {:try_start_0 .. :try_end_e} :catchall_1d

    .line 984
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->free()V

    .line 985
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->closeUnderlyingSocket()V

    .line 987
    :goto_14
    return-void

    .line 976
    :catch_15
    move-exception v0

    .line 984
    .local v0, "ignored":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->free()V

    .line 985
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->closeUnderlyingSocket()V

    goto :goto_14

    .line 983
    .end local v0    # "ignored":Ljava/io/IOException;
    :catchall_1d
    move-exception v1

    .line 984
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->free()V

    .line 985
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->closeUnderlyingSocket()V

    .line 983
    throw v1
.end method

.method private waitForHandshake()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 468
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->startHandshake()V

    .line 470
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->stateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 471
    :goto_8
    :try_start_8
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/4 v3, 0x5

    if-eq v1, v3, :cond_30

    .line 472
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/4 v3, 0x4

    if-eq v1, v3, :cond_30

    .line 473
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_2d

    if-eq v1, v4, :cond_30

    .line 475
    :try_start_16
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->stateLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_1b} :catch_1c
    .catchall {:try_start_16 .. :try_end_1b} :catchall_2d

    goto :goto_8

    .line 476
    :catch_1c
    move-exception v0

    .line 477
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 478
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v3, "Interrupted waiting for handshake"

    invoke-direct {v1, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2d
    .catchall {:try_start_1d .. :try_end_2d} :catchall_2d

    .line 470
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_2d
    move-exception v1

    monitor-exit v2

    throw v1

    .line 482
    :cond_30
    :try_start_30
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    if-ne v1, v4, :cond_3d

    .line 483
    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v3, "Socket is closed"

    invoke-direct {v1, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3d
    .catchall {:try_start_30 .. :try_end_3d} :catchall_2d

    :cond_3d
    monitor-exit v2

    .line 486
    return-void
.end method


# virtual methods
.method public chooseClientAlias(Ljavax/net/ssl/X509KeyManager;[Ljavax/security/auth/x500/X500Principal;[Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "keyManager"    # Ljavax/net/ssl/X509KeyManager;
    .param p2, "issuers"    # [Ljavax/security/auth/x500/X500Principal;
    .param p3, "keyTypes"    # [Ljava/lang/String;

    .prologue
    .line 1083
    const/4 v0, 0x0

    invoke-interface {p1, p3, v0, p0}, Ljavax/net/ssl/X509KeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public chooseClientPSKIdentity(Lcom/android/org/conscrypt/PSKKeyManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "keyManager"    # Lcom/android/org/conscrypt/PSKKeyManager;
    .param p2, "identityHint"    # Ljava/lang/String;

    .prologue
    .line 1095
    invoke-interface {p1, p2, p0}, Lcom/android/org/conscrypt/PSKKeyManager;->chooseClientKeyIdentity(Ljava/lang/String;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public chooseServerAlias(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "keyManager"    # Ljavax/net/ssl/X509KeyManager;
    .param p2, "keyType"    # Ljava/lang/String;

    .prologue
    .line 1077
    const/4 v0, 0x0

    invoke-interface {p1, p2, v0, p0}, Ljavax/net/ssl/X509KeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public chooseServerPSKIdentityHint(Lcom/android/org/conscrypt/PSKKeyManager;)Ljava/lang/String;
    .registers 3
    .param p1, "keyManager"    # Lcom/android/org/conscrypt/PSKKeyManager;

    .prologue
    .line 1089
    invoke-interface {p1, p0}, Lcom/android/org/conscrypt/PSKKeyManager;->chooseServerKeyIdentityHint(Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public clientCertificateRequested([B[[B)V
    .registers 4
    .param p1, "keyTypeBytes"    # [B
    .param p2, "asn1DerEncodedPrincipals"    # [[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/android/org/conscrypt/SslWrapper;->chooseClientCertificate([B[[B)V

    .line 304
    return-void
.end method

.method public clientPSKKeyRequested(Ljava/lang/String;[B[B)I
    .registers 5
    .param p1, "identityHint"    # Ljava/lang/String;
    .param p2, "identity"    # [B
    .param p3, "key"    # [B

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/conscrypt/SslWrapper;->clientPSKKeyRequested(Ljava/lang/String;[B[B)I

    move-result v0

    return v0
.end method

.method public close()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    .line 916
    iget-object v4, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->stateLock:Ljava/lang/Object;

    monitor-enter v4

    .line 917
    :try_start_5
    iget v3, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_53

    if-ne v3, v5, :cond_b

    monitor-exit v4

    .line 919
    return-void

    .line 922
    :cond_b
    :try_start_b
    iget v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 923
    .local v0, "oldState":I
    const/16 v3, 0x8

    iput v3, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 925
    if-nez v0, :cond_20

    .line 929
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->free()V

    .line 930
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->closeUnderlyingSocket()V

    .line 932
    iget-object v3, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->stateLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_53

    monitor-exit v4

    .line 933
    return-void

    .line 936
    :cond_20
    const/4 v3, 0x5

    if-eq v0, v3, :cond_32

    const/4 v3, 0x4

    if-eq v0, v3, :cond_32

    .line 941
    :try_start_26
    iget-object v3, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    invoke-virtual {v3}, Lcom/android/org/conscrypt/SslWrapper;->interrupt()V

    .line 943
    iget-object v3, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->stateLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_53

    monitor-exit v4

    .line 944
    return-void

    .line 947
    :cond_32
    :try_start_32
    iget-object v3, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->stateLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 950
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->is:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;

    .line 951
    .local v1, "sslInputStream":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->os:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;
    :try_end_3b
    .catchall {:try_start_32 .. :try_end_3b} :catchall_53

    .local v2, "sslOutputStream":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;
    monitor-exit v4

    .line 955
    if-nez v1, :cond_40

    if-eqz v2, :cond_45

    .line 956
    :cond_40
    iget-object v3, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    invoke-virtual {v3}, Lcom/android/org/conscrypt/SslWrapper;->interrupt()V

    .line 962
    :cond_45
    if-eqz v1, :cond_4a

    .line 963
    invoke-virtual {v1}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->awaitPendingOps()V

    .line 965
    :cond_4a
    if-eqz v2, :cond_4f

    .line 966
    invoke-virtual {v2}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->awaitPendingOps()V

    .line 969
    :cond_4f
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->shutdownAndFreeSslNative()V

    .line 970
    return-void

    .line 916
    .end local v0    # "oldState":I
    .end local v1    # "sslInputStream":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;
    .end local v2    # "sslOutputStream":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;
    :catchall_53
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1019
    :try_start_0
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->guard:Ljava/lang/Object;

    if-eqz v0, :cond_9

    .line 1020
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->guard:Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/org/conscrypt/Platform;->closeGuardWarnIfOpen(Ljava/lang/Object;)V

    .line 1022
    :cond_9
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->free()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_10

    .line 1024
    invoke-super {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->finalize()V

    .line 1026
    return-void

    .line 1023
    :catchall_10
    move-exception v0

    .line 1024
    invoke-super {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->finalize()V

    .line 1023
    throw v0
.end method

.method getActiveSession()Ljavax/net/ssl/SSLSession;
    .registers 2

    .prologue
    .line 676
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslSession:Lcom/android/org/conscrypt/ActiveSession;

    return-object v0
.end method

.method public getAlpnSelectedProtocol()[B
    .registers 2

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SslWrapper;->getAlpnSelectedProtocol()[B

    move-result-object v0

    return-object v0
.end method

.method public getChannelId()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 783
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getUseClientMode()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 784
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Client mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 787
    :cond_f
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 788
    :try_start_12
    iget v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_23

    .line 789
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 790
    const-string/jumbo v2, "Channel ID is only available after handshake completes"

    .line 789
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_20

    .line 787
    :catchall_20
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_23
    monitor-exit v1

    .line 793
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SslWrapper;->getTlsChannelId()[B

    move-result-object v0

    return-object v0
.end method

.method public getEnableSessionCreation()Z
    .registers 2

    .prologue
    .line 688
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v0

    return v0
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 703
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 718
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHandshakeSession()Ljavax/net/ssl/SSLSession;
    .registers 4

    .prologue
    .line 681
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 682
    :try_start_3
    iget v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/4 v2, 0x2

    if-lt v0, v2, :cond_11

    iget v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/4 v2, 0x5

    if-ge v0, v2, :cond_11

    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslSession:Lcom/android/org/conscrypt/ActiveSession;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_13

    :goto_f
    monitor-exit v1

    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_f

    .line 681
    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->checkOpen()V

    .line 416
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->stateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 417
    :try_start_6
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/16 v3, 0x8

    if-ne v1, v3, :cond_18

    .line 418
    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v3, "Socket is closed."

    invoke-direct {v1, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_15

    .line 416
    :catchall_15
    move-exception v1

    monitor-exit v2

    throw v1

    .line 421
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->is:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;

    if-nez v1, :cond_23

    .line 422
    new-instance v1, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;

    invoke-direct {v1, p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;-><init>(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)V

    iput-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->is:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;

    .line 425
    :cond_23
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->is:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_15

    .local v0, "returnVal":Ljava/io/InputStream;
    monitor-exit v2

    .line 431
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->waitForHandshake()V

    .line 432
    return-object v0
.end method

.method public getNeedClientAuth()Z
    .registers 2

    .prologue
    .line 868
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v0

    return v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->checkOpen()V

    .line 440
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->stateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 441
    :try_start_6
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/16 v3, 0x8

    if-ne v1, v3, :cond_18

    .line 442
    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v3, "Socket is closed."

    invoke-direct {v1, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_15

    .line 440
    :catchall_15
    move-exception v1

    monitor-exit v2

    throw v1

    .line 445
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->os:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;

    if-nez v1, :cond_23

    .line 446
    new-instance v1, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;

    invoke-direct {v1, p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;-><init>(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)V

    iput-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->os:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;

    .line 449
    :cond_23
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->os:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_15

    .local v0, "returnVal":Ljava/io/OutputStream;
    monitor-exit v2

    .line 455
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->waitForHandshake()V

    .line 456
    return-object v0
.end method

.method public getPSKKey(Lcom/android/org/conscrypt/PSKKeyManager;Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .registers 5
    .param p1, "keyManager"    # Lcom/android/org/conscrypt/PSKKeyManager;
    .param p2, "identityHint"    # Ljava/lang/String;
    .param p3, "identity"    # Ljava/lang/String;

    .prologue
    .line 1101
    invoke-interface {p1, p2, p3, p0}, Lcom/android/org/conscrypt/PSKKeyManager;->getKey(Ljava/lang/String;Ljava/lang/String;Ljava/net/Socket;)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method public getSSLParameters()Ljavax/net/ssl/SSLParameters;
    .registers 3

    .prologue
    .line 1064
    invoke-super {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    .line 1065
    .local v0, "params":Ljavax/net/ssl/SSLParameters;
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/Platform;->getSSLParameters(Ljavax/net/ssl/SSLParameters;Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/AbstractConscryptSocket;)V

    .line 1066
    return-object v0
.end method

.method public getSession()Ljavax/net/ssl/SSLSession;
    .registers 6

    .prologue
    .line 644
    const/4 v1, 0x0

    .line 645
    .local v1, "handshakeCompleted":Z
    iget-object v3, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->stateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 647
    :try_start_4
    iget v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/4 v4, 0x5

    if-lt v2, v4, :cond_1e

    const/4 v1, 0x1

    .line 648
    :goto_a
    if-nez v1, :cond_16

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 649
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->waitForHandshake()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_15} :catch_45
    .catchall {:try_start_4 .. :try_end_15} :catchall_20

    .line 650
    const/4 v1, 0x1

    :cond_16
    :goto_16
    monitor-exit v3

    .line 657
    if-nez v1, :cond_23

    .line 660
    invoke-static {}, Lcom/android/org/conscrypt/SSLNullSession;->getNullSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    return-object v2

    .line 647
    :cond_1e
    const/4 v1, 0x0

    goto :goto_a

    .line 645
    :catchall_20
    move-exception v2

    monitor-exit v3

    throw v2

    .line 664
    :cond_23
    iget-object v3, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->stateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 665
    :try_start_26
    iget v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3a

    .line 666
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "M:Return NullSession for closed state"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 667
    invoke-static {}, Lcom/android/org/conscrypt/SSLNullSession;->getNullSession()Ljavax/net/ssl/SSLSession;
    :try_end_37
    .catchall {:try_start_26 .. :try_end_37} :catchall_42

    move-result-object v2

    monitor-exit v3

    return-object v2

    :cond_3a
    monitor-exit v3

    .line 671
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslSession:Lcom/android/org/conscrypt/ActiveSession;

    invoke-static {v2}, Lcom/android/org/conscrypt/Platform;->wrapSSLSession(Lcom/android/org/conscrypt/ActiveSession;)Ljavax/net/ssl/SSLSession;

    move-result-object v2

    return-object v2

    .line 664
    :catchall_42
    move-exception v2

    monitor-exit v3

    throw v2

    .line 652
    :catch_45
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_16
.end method

.method public getSoWriteTimeout()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 896
    iget v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->writeTimeoutMilliseconds:I

    return v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 698
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedProtocols()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 713
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUseClientMode()Z
    .registers 2

    .prologue
    .line 847
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseClientMode()Z

    move-result v0

    return v0
.end method

.method public getWantClientAuth()Z
    .registers 2

    .prologue
    .line 863
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getWantClientAuth()Z

    move-result v0

    return v0
.end method

.method public onNewSessionEstablished(J)V
    .registers 8
    .param p1, "sslSessionNativePtr"    # J

    .prologue
    .line 357
    :try_start_0
    invoke-static {p1, p2}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_SESSION_up_ref(J)V

    .line 362
    new-instance v2, Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;

    invoke-direct {v2, p1, p2}, Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;-><init>(J)V

    .line 364
    .local v2, "ref":Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;
    iget-object v4, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslSession:Lcom/android/org/conscrypt/ActiveSession;

    invoke-static {v2, v4}, Lcom/android/org/conscrypt/SslSessionWrapper;->newInstance(Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;Lcom/android/org/conscrypt/ActiveSession;)Lcom/android/org/conscrypt/SslSessionWrapper;

    move-result-object v3

    .line 367
    .local v3, "sessionWrapper":Lcom/android/org/conscrypt/SslSessionWrapper;
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;

    move-result-object v0

    .line 368
    .local v0, "ctx":Lcom/android/org/conscrypt/AbstractSessionContext;
    invoke-virtual {v0, v3}, Lcom/android/org/conscrypt/AbstractSessionContext;->cacheSession(Lcom/android/org/conscrypt/SslSessionWrapper;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    .line 372
    .end local v0    # "ctx":Lcom/android/org/conscrypt/AbstractSessionContext;
    .end local v2    # "ref":Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;
    .end local v3    # "sessionWrapper":Lcom/android/org/conscrypt/SslSessionWrapper;
    :goto_15
    return-void

    .line 369
    :catch_16
    move-exception v1

    .local v1, "ignored":Ljava/lang/Exception;
    goto :goto_15
.end method

.method public onSSLStateChange(II)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "val"    # I

    .prologue
    .line 321
    const/16 v0, 0x20

    if-eq p1, v0, :cond_5

    .line 323
    return-void

    .line 329
    :cond_5
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslSession:Lcom/android/org/conscrypt/ActiveSession;

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getHostnameOrIP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getPort()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/org/conscrypt/ActiveSession;->onSessionEstablished(Ljava/lang/String;I)V

    .line 332
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 333
    :try_start_15
    iget v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_2e

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1d

    monitor-exit v1

    .line 335
    return-void

    .line 340
    :cond_1d
    const/4 v0, 0x5

    :try_start_1e
    iput v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I
    :try_end_20
    .catchall {:try_start_1e .. :try_end_20} :catchall_2e

    monitor-exit v1

    .line 344
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->notifyHandshakeCompletedListeners()V

    .line 346
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 348
    :try_start_27
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->stateLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_31

    monitor-exit v1

    .line 350
    return-void

    .line 332
    :catchall_2e
    move-exception v0

    monitor-exit v1

    throw v0

    .line 346
    :catchall_31
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public serverPSKKeyRequested(Ljava/lang/String;Ljava/lang/String;[B)I
    .registers 5
    .param p1, "identityHint"    # Ljava/lang/String;
    .param p2, "identity"    # Ljava/lang/String;
    .param p3, "key"    # [B

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/conscrypt/SslWrapper;->serverPSKKeyRequested(Ljava/lang/String;Ljava/lang/String;[B)I

    move-result v0

    return v0
.end method

.method public serverSessionRequested([B)J
    .registers 4
    .param p1, "id"    # [B

    .prologue
    .line 377
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public setAlpnProtocols([B)V
    .registers 3
    .param p1, "alpnProtocols"    # [B

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setAlpnProtocols([B)V

    .line 1060
    return-void
.end method

.method public setAlpnProtocols([Ljava/lang/String;)V
    .registers 3
    .param p1, "alpnProtocols"    # [Ljava/lang/String;

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setAlpnProtocols([Ljava/lang/String;)V

    .line 1047
    return-void
.end method

.method public setChannelIdEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .prologue
    .line 757
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getUseClientMode()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 758
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Client mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 761
    :cond_f
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 762
    :try_start_12
    iget v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    if-eqz v0, :cond_22

    .line 763
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 764
    const-string/jumbo v2, "Could not enable/disable Channel ID after the initial handshake has begun."

    .line 763
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_1f

    .line 761
    :catchall_1f
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_22
    monitor-exit v1

    .line 768
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iput-boolean p1, v0, Lcom/android/org/conscrypt/SSLParametersImpl;->channelIdEnabled:Z

    .line 769
    return-void
.end method

.method public setChannelIdPrivateKey(Ljava/security/PrivateKey;)V
    .registers 9
    .param p1, "privateKey"    # Ljava/security/PrivateKey;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 810
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getUseClientMode()Z

    move-result v3

    if-nez v3, :cond_11

    .line 811
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Server mode"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 814
    :cond_11
    iget-object v4, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->stateLock:Ljava/lang/Object;

    monitor-enter v4

    .line 815
    :try_start_14
    iget v3, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    if-eqz v3, :cond_24

    .line 816
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 817
    const-string/jumbo v5, "Could not change Channel ID private key after the initial handshake has begun."

    .line 816
    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_21

    .line 814
    :catchall_21
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_24
    monitor-exit v4

    .line 822
    if-nez p1, :cond_2e

    .line 823
    iget-object v3, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iput-boolean v6, v3, Lcom/android/org/conscrypt/SSLParametersImpl;->channelIdEnabled:Z

    .line 824
    iput-object v5, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->channelIdPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 843
    :goto_2d
    return-void

    .line 826
    :cond_2e
    iget-object v3, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/org/conscrypt/SSLParametersImpl;->channelIdEnabled:Z

    .line 828
    const/4 v2, 0x0

    .line 829
    .local v2, "ecParams":Ljava/security/spec/ECParameterSpec;
    :try_start_34
    instance-of v3, p1, Ljava/security/interfaces/ECKey;

    if-eqz v3, :cond_40

    .line 830
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/ECKey;

    move-object v3, v0

    invoke-interface {v3}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    .line 832
    .end local v2    # "ecParams":Ljava/security/spec/ECParameterSpec;
    :cond_40
    if-nez v2, :cond_4d

    .line 835
    const-string/jumbo v3, "prime256v1"

    invoke-static {v3}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getCurveByName(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getECParameterSpec()Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    .line 838
    :cond_4d
    invoke-static {p1, v2}, Lcom/android/org/conscrypt/OpenSSLKey;->fromECPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/spec/ECParameterSpec;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v3

    .line 837
    iput-object v3, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->channelIdPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;
    :try_end_53
    .catch Ljava/security/InvalidKeyException; {:try_start_34 .. :try_end_53} :catch_54

    goto :goto_2d

    .line 839
    :catch_54
    move-exception v1

    .local v1, "e":Ljava/security/InvalidKeyException;
    goto :goto_2d
.end method

.method public setEnableSessionCreation(Z)V
    .registers 3
    .param p1, "flag"    # Z

    .prologue
    .line 693
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEnableSessionCreation(Z)V

    .line 694
    return-void
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .registers 3
    .param p1, "suites"    # [Ljava/lang/String;

    .prologue
    .line 708
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 709
    return-void
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .registers 3
    .param p1, "protocols"    # [Ljava/lang/String;

    .prologue
    .line 723
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEnabledProtocols([Ljava/lang/String;)V

    .line 724
    return-void
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
    .line 905
    iput p1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->handshakeTimeoutMilliseconds:I

    .line 906
    return-void
.end method

.method public setHostname(Ljava/lang/String;)V
    .registers 4
    .param p1, "hostname"    # Ljava/lang/String;

    .prologue
    .line 743
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    if-eqz p1, :cond_c

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {v1, v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->setUseSni(Z)V

    .line 744
    invoke-super {p0, p1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setHostname(Ljava/lang/String;)V

    .line 745
    return-void

    .line 743
    :cond_c
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setNeedClientAuth(Z)V
    .registers 3
    .param p1, "need"    # Z

    .prologue
    .line 873
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setNeedClientAuth(Z)V

    .line 874
    return-void
.end method

.method public setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    .registers 3
    .param p1, "p"    # Ljavax/net/ssl/SSLParameters;

    .prologue
    .line 1071
    invoke-super {p0, p1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    .line 1072
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-static {p1, v0, p0}, Lcom/android/org/conscrypt/Platform;->setSSLParameters(Ljavax/net/ssl/SSLParameters;Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/AbstractConscryptSocket;)V

    .line 1073
    return-void
.end method

.method public setSoWriteTimeout(I)V
    .registers 4
    .param p1, "writeTimeoutMilliseconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 886
    iput p1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->writeTimeoutMilliseconds:I

    .line 888
    int-to-long v0, p1

    invoke-static {p0, v0, v1}, Lcom/android/org/conscrypt/Platform;->setSocketWriteTimeout(Ljava/net/Socket;J)V

    .line 889
    return-void
.end method

.method public setUseClientMode(Z)V
    .registers 5
    .param p1, "mode"    # Z

    .prologue
    .line 852
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 853
    :try_start_3
    iget v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    if-eqz v0, :cond_13

    .line 854
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 855
    const-string/jumbo v2, "Could not change the mode after the initial handshake has begun."

    .line 854
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_10

    .line 852
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_13
    monitor-exit v1

    .line 858
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setUseClientMode(Z)V

    .line 859
    return-void
.end method

.method public setUseSessionTickets(Z)V
    .registers 3
    .param p1, "useSessionTickets"    # Z

    .prologue
    .line 733
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setUseSessionTickets(Z)V

    .line 734
    return-void
.end method

.method public setWantClientAuth(Z)V
    .registers 3
    .param p1, "want"    # Z

    .prologue
    .line 878
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setWantClientAuth(Z)V

    .line 879
    return-void
.end method

.method public startHandshake()V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->checkOpen()V

    .line 175
    iget-object v12, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->stateLock:Ljava/lang/Object;

    monitor-enter v12

    .line 176
    :try_start_6
    iget v11, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    if-nez v11, :cond_74

    .line 177
    const/4 v11, 0x2

    iput v11, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_76

    monitor-exit v12

    .line 185
    const/4 v7, 0x1

    .line 187
    .local v7, "releaseResources":Z
    :try_start_f
    iget-object v11, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->guard:Ljava/lang/Object;

    const-string/jumbo v12, "close"

    invoke-static {v11, v12}, Lcom/android/org/conscrypt/Platform;->closeGuardOpen(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    iget-object v11, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getHostname()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->channelIdPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v11, v12, v13}, Lcom/android/org/conscrypt/SslWrapper;->initialize(Ljava/lang/String;Lcom/android/org/conscrypt/OpenSSLKey;)V

    .line 194
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getUseClientMode()Z

    move-result v11

    if-eqz v11, :cond_41

    .line 195
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->clientSessionContext()Lcom/android/org/conscrypt/ClientSessionContext;

    move-result-object v11

    .line 196
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getHostnameOrIP()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getPort()I

    move-result v13

    iget-object v14, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 195
    invoke-virtual {v11, v12, v13, v14}, Lcom/android/org/conscrypt/ClientSessionContext;->getCachedSession(Ljava/lang/String;ILcom/android/org/conscrypt/SSLParametersImpl;)Lcom/android/org/conscrypt/SslSessionWrapper;

    move-result-object v0

    .line 197
    .local v0, "cachedSession":Lcom/android/org/conscrypt/SslSessionWrapper;
    if-eqz v0, :cond_41

    .line 198
    iget-object v11, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    invoke-virtual {v0, v11}, Lcom/android/org/conscrypt/SslSessionWrapper;->offerToResume(Lcom/android/org/conscrypt/SslWrapper;)V

    .line 203
    .end local v0    # "cachedSession":Lcom/android/org/conscrypt/SslSessionWrapper;
    :cond_41
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getSoTimeout()I

    move-result v8

    .line 204
    .local v8, "savedReadTimeoutMilliseconds":I
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getSoWriteTimeout()I

    move-result v9

    .line 205
    .local v9, "savedWriteTimeoutMilliseconds":I
    iget v11, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->handshakeTimeoutMilliseconds:I

    if-ltz v11, :cond_57

    .line 206
    iget v11, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->handshakeTimeoutMilliseconds:I

    invoke-virtual {p0, v11}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->setSoTimeout(I)V

    .line 207
    iget v11, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->handshakeTimeoutMilliseconds:I

    invoke-virtual {p0, v11}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->setSoWriteTimeout(I)V

    .line 210
    :cond_57
    iget-object v11, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->stateLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_5a
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_f .. :try_end_5a} :catch_ae
    .catchall {:try_start_f .. :try_end_5a} :catchall_be

    .line 211
    :try_start_5a
    iget v12, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I
    :try_end_5c
    .catchall {:try_start_5a .. :try_end_5c} :catchall_ab

    const/16 v13, 0x8

    if-ne v12, v13, :cond_7e

    :try_start_60
    monitor-exit v11
    :try_end_61
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_60 .. :try_end_61} :catch_ae
    .catchall {:try_start_60 .. :try_end_61} :catchall_be

    .line 279
    if-eqz v7, :cond_73

    .line 280
    iget-object v12, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->stateLock:Ljava/lang/Object;

    monitor-enter v12

    .line 286
    const/16 v11, 0x8

    :try_start_68
    iput v11, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 287
    iget-object v11, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->stateLock:Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->notifyAll()V
    :try_end_6f
    .catchall {:try_start_68 .. :try_end_6f} :catchall_79

    monitor-exit v12

    .line 291
    :try_start_70
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->shutdownAndFreeSslNative()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_7c

    .line 212
    :cond_73
    :goto_73
    return-void

    .end local v7    # "releaseResources":Z
    .end local v8    # "savedReadTimeoutMilliseconds":I
    .end local v9    # "savedWriteTimeoutMilliseconds":I
    :cond_74
    monitor-exit v12

    .line 181
    return-void

    .line 175
    :catchall_76
    move-exception v11

    monitor-exit v12

    throw v11

    .line 280
    .restart local v7    # "releaseResources":Z
    .restart local v8    # "savedReadTimeoutMilliseconds":I
    .restart local v9    # "savedWriteTimeoutMilliseconds":I
    :catchall_79
    move-exception v11

    monitor-exit v12

    throw v11

    .line 292
    :catch_7c
    move-exception v4

    .local v4, "ignored":Ljava/io/IOException;
    goto :goto_73

    .end local v4    # "ignored":Ljava/io/IOException;
    :cond_7e
    :try_start_7e
    monitor-exit v11
    :try_end_7f
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_7e .. :try_end_7f} :catch_ae
    .catchall {:try_start_7e .. :try_end_7f} :catchall_be

    .line 217
    :try_start_7f
    iget-object v11, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    iget-object v12, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->socket:Ljava/net/Socket;

    invoke-static {v12}, Lcom/android/org/conscrypt/Platform;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getSoTimeout()I

    move-result v13

    invoke-virtual {v11, v12, v13}, Lcom/android/org/conscrypt/SslWrapper;->doHandshake(Ljava/io/FileDescriptor;I)V
    :try_end_8e
    .catch Ljava/security/cert/CertificateException; {:try_start_7f .. :try_end_8e} :catch_11b
    .catch Ljavax/net/ssl/SSLException; {:try_start_7f .. :try_end_8e} :catch_d2
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_7f .. :try_end_8e} :catch_ae
    .catchall {:try_start_7f .. :try_end_8e} :catchall_be

    .line 248
    :try_start_8e
    iget-object v11, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->stateLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_91
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_8e .. :try_end_91} :catch_ae
    .catchall {:try_start_8e .. :try_end_91} :catchall_be

    .line 249
    :try_start_91
    iget v12, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I
    :try_end_93
    .catchall {:try_start_91 .. :try_end_93} :catchall_167

    const/16 v13, 0x8

    if-ne v12, v13, :cond_12f

    :try_start_97
    monitor-exit v11
    :try_end_98
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_97 .. :try_end_98} :catch_ae
    .catchall {:try_start_97 .. :try_end_98} :catchall_be

    .line 279
    if-eqz v7, :cond_aa

    .line 280
    iget-object v12, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->stateLock:Ljava/lang/Object;

    monitor-enter v12

    .line 286
    const/16 v11, 0x8

    :try_start_9f
    iput v11, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 287
    iget-object v11, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->stateLock:Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->notifyAll()V
    :try_end_a6
    .catchall {:try_start_9f .. :try_end_a6} :catchall_129

    monitor-exit v12

    .line 291
    :try_start_a7
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->shutdownAndFreeSslNative()V
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_aa} :catch_12c

    .line 250
    :cond_aa
    :goto_aa
    return-void

    .line 210
    :catchall_ab
    move-exception v12

    :try_start_ac
    monitor-exit v11

    throw v12
    :try_end_ae
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_ac .. :try_end_ae} :catch_ae
    .catchall {:try_start_ac .. :try_end_ae} :catchall_be

    .line 275
    .end local v8    # "savedReadTimeoutMilliseconds":I
    .end local v9    # "savedWriteTimeoutMilliseconds":I
    :catch_ae
    move-exception v3

    .line 276
    .local v3, "e":Ljavax/net/ssl/SSLProtocolException;
    :try_start_af
    new-instance v11, Ljavax/net/ssl/SSLHandshakeException;

    const-string/jumbo v12, "Handshake failed"

    invoke-direct {v11, v12}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljavax/net/ssl/SSLHandshakeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v11

    check-cast v11, Ljavax/net/ssl/SSLHandshakeException;

    throw v11
    :try_end_be
    .catchall {:try_start_af .. :try_end_be} :catchall_be

    .line 277
    .end local v3    # "e":Ljavax/net/ssl/SSLProtocolException;
    :catchall_be
    move-exception v11

    .line 279
    if-eqz v7, :cond_d1

    .line 280
    iget-object v12, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->stateLock:Ljava/lang/Object;

    monitor-enter v12

    .line 286
    const/16 v13, 0x8

    :try_start_c6
    iput v13, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 287
    iget-object v13, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->stateLock:Ljava/lang/Object;

    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V
    :try_end_cd
    .catchall {:try_start_c6 .. :try_end_cd} :catchall_178

    monitor-exit v12

    .line 291
    :try_start_ce
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->shutdownAndFreeSslNative()V
    :try_end_d1
    .catch Ljava/io/IOException; {:try_start_ce .. :try_end_d1} :catch_17b

    .line 277
    :cond_d1
    :goto_d1
    throw v11

    .line 222
    .restart local v8    # "savedReadTimeoutMilliseconds":I
    .restart local v9    # "savedWriteTimeoutMilliseconds":I
    :catch_d2
    move-exception v2

    .line 230
    .local v2, "e":Ljavax/net/ssl/SSLException;
    :try_start_d3
    iget-object v11, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->stateLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_d6
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_d3 .. :try_end_d6} :catch_ae
    .catchall {:try_start_d3 .. :try_end_d6} :catchall_be

    .line 231
    :try_start_d6
    iget v12, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I
    :try_end_d8
    .catchall {:try_start_d6 .. :try_end_d8} :catchall_118

    const/16 v13, 0x8

    if-ne v12, v13, :cond_f5

    :try_start_dc
    monitor-exit v11
    :try_end_dd
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_dc .. :try_end_dd} :catch_ae
    .catchall {:try_start_dc .. :try_end_dd} :catchall_be

    .line 279
    if-eqz v7, :cond_ef

    .line 280
    iget-object v12, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->stateLock:Ljava/lang/Object;

    monitor-enter v12

    .line 286
    const/16 v11, 0x8

    :try_start_e4
    iput v11, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 287
    iget-object v11, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->stateLock:Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->notifyAll()V
    :try_end_eb
    .catchall {:try_start_e4 .. :try_end_eb} :catchall_f0

    monitor-exit v12

    .line 291
    :try_start_ec
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->shutdownAndFreeSslNative()V
    :try_end_ef
    .catch Ljava/io/IOException; {:try_start_ec .. :try_end_ef} :catch_f3

    .line 232
    :cond_ef
    :goto_ef
    return-void

    .line 280
    :catchall_f0
    move-exception v11

    monitor-exit v12

    throw v11

    .line 292
    :catch_f3
    move-exception v4

    .restart local v4    # "ignored":Ljava/io/IOException;
    goto :goto_ef

    .end local v4    # "ignored":Ljava/io/IOException;
    :cond_f5
    :try_start_f5
    monitor-exit v11

    .line 237
    invoke-virtual {v2}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 239
    .local v6, "message":Ljava/lang/String;
    const-string/jumbo v11, "unexpected CCS"

    invoke-virtual {v6, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_117

    .line 241
    const-string/jumbo v11, "ssl_unexpected_ccs: host=%s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getHostnameOrIP()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 242
    .local v5, "logMessage":Ljava/lang/String;
    invoke-static {v5}, Lcom/android/org/conscrypt/Platform;->logEvent(Ljava/lang/String;)V

    .line 245
    .end local v5    # "logMessage":Ljava/lang/String;
    :cond_117
    throw v2

    .line 230
    .end local v6    # "message":Ljava/lang/String;
    :catchall_118
    move-exception v12

    monitor-exit v11

    throw v12

    .line 218
    .end local v2    # "e":Ljavax/net/ssl/SSLException;
    :catch_11b
    move-exception v1

    .line 219
    .local v1, "e":Ljava/security/cert/CertificateException;
    new-instance v10, Ljavax/net/ssl/SSLHandshakeException;

    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    .line 220
    .local v10, "wrapper":Ljavax/net/ssl/SSLHandshakeException;
    invoke-virtual {v10, v1}, Ljavax/net/ssl/SSLHandshakeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 221
    throw v10
    :try_end_129
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_f5 .. :try_end_129} :catch_ae
    .catchall {:try_start_f5 .. :try_end_129} :catchall_be

    .line 280
    .end local v1    # "e":Ljava/security/cert/CertificateException;
    .end local v10    # "wrapper":Ljavax/net/ssl/SSLHandshakeException;
    :catchall_129
    move-exception v11

    monitor-exit v12

    throw v11

    .line 292
    :catch_12c
    move-exception v4

    .restart local v4    # "ignored":Ljava/io/IOException;
    goto/16 :goto_aa

    .end local v4    # "ignored":Ljava/io/IOException;
    :cond_12f
    :try_start_12f
    monitor-exit v11

    .line 255
    iget v11, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->handshakeTimeoutMilliseconds:I

    if-ltz v11, :cond_13a

    .line 256
    invoke-virtual {p0, v8}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->setSoTimeout(I)V

    .line 257
    invoke-virtual {p0, v9}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->setSoWriteTimeout(I)V

    .line 260
    :cond_13a
    iget-object v12, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->stateLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_13d
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_12f .. :try_end_13d} :catch_ae
    .catchall {:try_start_12f .. :try_end_13d} :catchall_be

    .line 261
    :try_start_13d
    iget v11, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/16 v13, 0x8

    if-ne v11, v13, :cond_16a

    const/4 v7, 0x1

    .line 263
    :goto_144
    iget v11, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/4 v13, 0x2

    if-ne v11, v13, :cond_16c

    .line 264
    const/4 v11, 0x4

    iput v11, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 269
    :goto_14c
    if-nez v7, :cond_153

    .line 272
    iget-object v11, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->stateLock:Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->notifyAll()V
    :try_end_153
    .catchall {:try_start_13d .. :try_end_153} :catchall_170

    :cond_153
    :try_start_153
    monitor-exit v12
    :try_end_154
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_153 .. :try_end_154} :catch_ae
    .catchall {:try_start_153 .. :try_end_154} :catchall_be

    .line 279
    if-eqz v7, :cond_166

    .line 280
    iget-object v12, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->stateLock:Ljava/lang/Object;

    monitor-enter v12

    .line 286
    const/16 v11, 0x8

    :try_start_15b
    iput v11, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 287
    iget-object v11, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->stateLock:Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->notifyAll()V
    :try_end_162
    .catchall {:try_start_15b .. :try_end_162} :catchall_173

    monitor-exit v12

    .line 291
    :try_start_163
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->shutdownAndFreeSslNative()V
    :try_end_166
    .catch Ljava/io/IOException; {:try_start_163 .. :try_end_166} :catch_176

    .line 297
    :cond_166
    :goto_166
    return-void

    .line 248
    :catchall_167
    move-exception v12

    :try_start_168
    monitor-exit v11

    throw v12
    :try_end_16a
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_168 .. :try_end_16a} :catch_ae
    .catchall {:try_start_168 .. :try_end_16a} :catchall_be

    .line 261
    :cond_16a
    const/4 v7, 0x0

    goto :goto_144

    .line 266
    :cond_16c
    const/4 v11, 0x5

    :try_start_16d
    iput v11, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I
    :try_end_16f
    .catchall {:try_start_16d .. :try_end_16f} :catchall_170

    goto :goto_14c

    .line 260
    :catchall_170
    move-exception v11

    :try_start_171
    monitor-exit v12

    throw v11
    :try_end_173
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_171 .. :try_end_173} :catch_ae
    .catchall {:try_start_171 .. :try_end_173} :catchall_be

    .line 280
    :catchall_173
    move-exception v11

    monitor-exit v12

    throw v11

    .line 292
    :catch_176
    move-exception v4

    .restart local v4    # "ignored":Ljava/io/IOException;
    goto :goto_166

    .line 280
    .end local v4    # "ignored":Ljava/io/IOException;
    .end local v8    # "savedReadTimeoutMilliseconds":I
    .end local v9    # "savedWriteTimeoutMilliseconds":I
    :catchall_178
    move-exception v11

    monitor-exit v12

    throw v11

    .line 292
    :catch_17b
    move-exception v4

    .restart local v4    # "ignored":Ljava/io/IOException;
    goto/16 :goto_d1
.end method

.method public verifyCertificateChain([JLjava/lang/String;)V
    .registers 11
    .param p1, "certRefs"    # [J
    .param p2, "authMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 385
    :try_start_0
    iget-object v5, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v5}, Lcom/android/org/conscrypt/SSLParametersImpl;->getX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v4

    .line 386
    .local v4, "x509tm":Ljavax/net/ssl/X509TrustManager;
    if-nez v4, :cond_13

    .line 387
    new-instance v5, Ljava/security/cert/CertificateException;

    const-string/jumbo v6, "No X.509 TrustManager"

    invoke-direct {v5, v6}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_11
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_11} :catch_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_21

    .line 404
    .end local v4    # "x509tm":Ljavax/net/ssl/X509TrustManager;
    :catch_11
    move-exception v2

    .line 405
    .local v2, "e":Ljava/security/cert/CertificateException;
    throw v2

    .line 389
    .end local v2    # "e":Ljava/security/cert/CertificateException;
    .restart local v4    # "x509tm":Ljavax/net/ssl/X509TrustManager;
    :cond_13
    if-eqz p1, :cond_18

    :try_start_15
    array-length v5, p1

    if-nez v5, :cond_28

    .line 390
    :cond_18
    new-instance v5, Ljavax/net/ssl/SSLException;

    const-string/jumbo v6, "Peer sent no certificate"

    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_21
    .catch Ljava/security/cert/CertificateException; {:try_start_15 .. :try_end_21} :catch_11
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_21} :catch_21

    .line 406
    .end local v4    # "x509tm":Ljavax/net/ssl/X509TrustManager;
    :catch_21
    move-exception v1

    .line 407
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/security/cert/CertificateException;

    invoke-direct {v5, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 393
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "x509tm":Ljavax/net/ssl/X509TrustManager;
    :cond_28
    :try_start_28
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->createCertChain([J)[Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    move-result-object v3

    .line 396
    .local v3, "peerCertChain":[Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    iget-object v5, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslSession:Lcom/android/org/conscrypt/ActiveSession;

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getHostnameOrIP()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getPort()I

    move-result v7

    invoke-virtual {v5, v6, v7, v3}, Lcom/android/org/conscrypt/ActiveSession;->onPeerCertificatesReceived(Ljava/lang/String;I[Lcom/android/org/conscrypt/OpenSSLX509Certificate;)V

    .line 398
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getUseClientMode()Z

    move-result v5

    if-eqz v5, :cond_43

    .line 399
    invoke-static {v4, v3, p2, p0}, Lcom/android/org/conscrypt/Platform;->checkServerTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Lcom/android/org/conscrypt/AbstractConscryptSocket;)V

    .line 409
    :goto_42
    return-void

    .line 401
    :cond_43
    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v5}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-interface {v5}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 402
    .local v0, "authType":Ljava/lang/String;
    invoke-static {v4, v3, v0, p0}, Lcom/android/org/conscrypt/Platform;->checkClientTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Lcom/android/org/conscrypt/AbstractConscryptSocket;)V
    :try_end_51
    .catch Ljava/security/cert/CertificateException; {:try_start_28 .. :try_end_51} :catch_11
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_51} :catch_21

    goto :goto_42
.end method
