.class final Lcom/android/org/conscrypt/ConscryptEngineSocket;
.super Lcom/android/org/conscrypt/OpenSSLSocketImpl;
.source "ConscryptEngineSocket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;,
        Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;
    }
.end annotation


# static fields
.field private static final synthetic -javax-net-ssl-SSLEngineResult$HandshakeStatusSwitchesValues:[I

.field private static final EMPTY_BUFFER:Ljava/nio/ByteBuffer;


# instance fields
.field private final engine:Lcom/android/org/conscrypt/ConscryptEngine;

.field private final handshakeLock:Ljava/lang/Object;

.field private in:Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;

.field private out:Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;

.field private state:I

.field private final stateLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Lcom/android/org/conscrypt/ConscryptEngineSocket;)Lcom/android/org/conscrypt/ConscryptEngine;
    .registers 2
    .param p0, "-this"    # Lcom/android/org/conscrypt/ConscryptEngineSocket;

    .prologue
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    return-object v0
.end method

.method private static synthetic -getjavax-net-ssl-SSLEngineResult$HandshakeStatusSwitchesValues()[I
    .registers 3

    sget-object v0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->-javax-net-ssl-SSLEngineResult$HandshakeStatusSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->-javax-net-ssl-SSLEngineResult$HandshakeStatusSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->values()[Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_46

    :goto_17
    :try_start_17
    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_44

    :goto_20
    :try_start_20
    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_42

    :goto_29
    :try_start_29
    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_40

    :goto_32
    :try_start_32
    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_3b} :catch_3e

    :goto_3b
    sput-object v0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->-javax-net-ssl-SSLEngineResult$HandshakeStatusSwitchesValues:[I

    return-object v0

    :catch_3e
    move-exception v1

    goto :goto_3b

    :catch_40
    move-exception v1

    goto :goto_32

    :catch_42
    move-exception v1

    goto :goto_29

    :catch_44
    move-exception v1

    goto :goto_20

    :catch_46
    move-exception v1

    goto :goto_17
.end method

.method static synthetic -wrap0(Lcom/android/org/conscrypt/ConscryptEngineSocket;)Ljava/io/InputStream;
    .registers 2
    .param p0, "-this"    # Lcom/android/org/conscrypt/ConscryptEngineSocket;

    .prologue
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->getUnderlyingInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/org/conscrypt/ConscryptEngineSocket;)Ljava/io/OutputStream;
    .registers 2
    .param p0, "-this"    # Lcom/android/org/conscrypt/ConscryptEngineSocket;

    .prologue
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->getUnderlyingOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/org/conscrypt/ConscryptEngineSocket;)Ljava/nio/channels/SocketChannel;
    .registers 2
    .param p0, "-this"    # Lcom/android/org/conscrypt/ConscryptEngineSocket;

    .prologue
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->getUnderlyingChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/org/conscrypt/ConscryptEngineSocket;)V
    .registers 1
    .param p0, "-this"    # Lcom/android/org/conscrypt/ConscryptEngineSocket;

    .prologue
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->onHandshakeFinished()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    .line 45
    return-void
.end method

.method constructor <init>(Lcom/android/org/conscrypt/SSLParametersImpl;)V
    .registers 3
    .param p1, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->handshakeLock:Ljava/lang/Object;

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    .line 59
    invoke-static {p1, p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->newEngine(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptEngineSocket;)Lcom/android/org/conscrypt/ConscryptEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    .line 60
    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILcom/android/org/conscrypt/SSLParametersImpl;)V
    .registers 5
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/lang/String;I)V

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->handshakeLock:Ljava/lang/Object;

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    .line 65
    invoke-static {p3, p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->newEngine(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptEngineSocket;)Lcom/android/org/conscrypt/ConscryptEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    .line 66
    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)V
    .registers 7
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
    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/lang/String;ILjava/net/InetAddress;I)V

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->handshakeLock:Ljava/lang/Object;

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    .line 77
    invoke-static {p5, p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->newEngine(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptEngineSocket;)Lcom/android/org/conscrypt/ConscryptEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    .line 78
    return-void
.end method

.method constructor <init>(Ljava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)V
    .registers 5
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/net/InetAddress;I)V

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->handshakeLock:Ljava/lang/Object;

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    .line 71
    invoke-static {p3, p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->newEngine(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptEngineSocket;)Lcom/android/org/conscrypt/ConscryptEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    .line 72
    return-void
.end method

.method constructor <init>(Ljava/net/InetAddress;ILjava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)V
    .registers 7
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
    .line 82
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->handshakeLock:Ljava/lang/Object;

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    .line 83
    invoke-static {p5, p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->newEngine(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptEngineSocket;)Lcom/android/org/conscrypt/ConscryptEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    .line 84
    return-void
.end method

.method constructor <init>(Ljava/net/Socket;Ljava/lang/String;IZLcom/android/org/conscrypt/SSLParametersImpl;)V
    .registers 7
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
    .line 88
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/net/Socket;Ljava/lang/String;IZ)V

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->handshakeLock:Ljava/lang/Object;

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    .line 89
    invoke-static {p5, p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->newEngine(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptEngineSocket;)Lcom/android/org/conscrypt/ConscryptEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    .line 90
    return-void
.end method

.method private getUnderlyingChannel()Ljava/nio/channels/SocketChannel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 447
    invoke-super {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    return-object v0
.end method

.method private getUnderlyingInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 443
    invoke-super {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private getUnderlyingOutputStream()Ljava/io/OutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 439
    invoke-super {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method private isHandshakeFinished()Z
    .registers 3

    .prologue
    .line 390
    iget v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private static newEngine(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptEngineSocket;)Lcom/android/org/conscrypt/ConscryptEngine;
    .registers 4
    .param p0, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .param p1, "socket"    # Lcom/android/org/conscrypt/ConscryptEngineSocket;

    .prologue
    .line 94
    new-instance v0, Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {p1}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->peerInfoProvider()Lcom/android/org/conscrypt/PeerInfoProvider;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/org/conscrypt/ConscryptEngine;-><init>(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/PeerInfoProvider;)V

    .line 97
    .local v0, "engine":Lcom/android/org/conscrypt/ConscryptEngine;
    new-instance v1, Lcom/android/org/conscrypt/ConscryptEngineSocket$1;

    invoke-direct {v1, p1}, Lcom/android/org/conscrypt/ConscryptEngineSocket$1;-><init>(Lcom/android/org/conscrypt/ConscryptEngineSocket;)V

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/ConscryptEngine;->setHandshakeListener(Lcom/android/org/conscrypt/HandshakeListener;)V

    .line 109
    invoke-virtual {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseClientMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/ConscryptEngine;->setUseClientMode(Z)V

    .line 110
    return-object v0
.end method

.method private onHandshakeFinished()V
    .registers 5

    .prologue
    .line 394
    const/4 v0, 0x0

    .line 395
    .local v0, "notify":Z
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 396
    :try_start_4
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    const/16 v3, 0x8

    if-eq v1, v3, :cond_18

    .line 397
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1f

    .line 398
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    .line 405
    :cond_12
    :goto_12
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_28

    .line 406
    const/4 v0, 0x1

    :cond_18
    monitor-exit v2

    .line 410
    if-eqz v0, :cond_1e

    .line 411
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->notifyHandshakeCompletedListeners()V

    .line 413
    :cond_1e
    return-void

    .line 399
    :cond_1f
    :try_start_1f
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_12

    .line 400
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_28

    goto :goto_12

    .line 395
    :catchall_28
    move-exception v1

    monitor-exit v2

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

    .line 419
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->startHandshake()V

    .line 421
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 422
    :goto_8
    :try_start_8
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    const/4 v3, 0x5

    if-eq v1, v3, :cond_30

    iget v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    const/4 v3, 0x4

    if-eq v1, v3, :cond_30

    .line 423
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_2d

    if-eq v1, v4, :cond_30

    .line 425
    :try_start_16
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_1b} :catch_1c
    .catchall {:try_start_16 .. :try_end_1b} :catchall_2d

    goto :goto_8

    .line 426
    :catch_1c
    move-exception v0

    .line 427
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 428
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v3, "Interrupted waiting for handshake"

    invoke-direct {v1, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2d
    .catchall {:try_start_1d .. :try_end_2d} :catchall_2d

    .line 421
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_2d
    move-exception v1

    monitor-exit v2

    throw v1

    .line 432
    :cond_30
    :try_start_30
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    if-ne v1, v4, :cond_3d

    .line 433
    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v3, "Socket is closed"

    invoke-direct {v1, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3d
    .catchall {:try_start_30 .. :try_end_3d} :catchall_2d

    :cond_3d
    monitor-exit v2

    .line 436
    return-void
.end method


# virtual methods
.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x8

    .line 355
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 356
    :try_start_5
    iget v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_23

    if-ne v0, v2, :cond_b

    monitor-exit v1

    .line 358
    return-void

    .line 361
    :cond_b
    const/16 v0, 0x8

    :try_start_d
    iput v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    .line 363
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_23

    monitor-exit v1

    .line 367
    invoke-super {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->close()V

    .line 370
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->closeInbound()V

    .line 371
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->closeOutbound()V

    .line 372
    return-void

    .line 355
    :catchall_23
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method getActiveSession()Ljavax/net/ssl/SSLSession;
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0
.end method

.method public getAlpnSelectedProtocol()[B
    .registers 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getAlpnSelectedProtocol()[B

    move-result-object v0

    return-object v0
.end method

.method public getChannelId()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getChannelId()[B

    move-result-object v0

    return-object v0
.end method

.method public getEnableSessionCreation()Z
    .registers 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getEnableSessionCreation()Z

    move-result v0

    return v0
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHandshakeSession()Ljavax/net/ssl/SSLSession;
    .registers 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->handshakeSession()Ljavax/net/ssl/SSLSession;

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
    .line 195
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->checkOpen()V

    .line 200
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->waitForHandshake()V

    .line 201
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->in:Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;

    return-object v0
.end method

.method public getNeedClientAuth()Z
    .registers 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getNeedClientAuth()Z

    move-result v0

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
    .line 206
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->checkOpen()V

    .line 211
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->waitForHandshake()V

    .line 213
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->out:Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;

    return-object v0
.end method

.method public getSSLParameters()Ljavax/net/ssl/SSLParameters;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    return-object v0
.end method

.method public getSession()Ljavax/net/ssl/SSLSession;
    .registers 5

    .prologue
    .line 223
    iget-object v3, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v3}, Lcom/android/org/conscrypt/ConscryptEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    .line 224
    .local v2, "session":Ljavax/net/ssl/SSLSession;
    invoke-static {v2}, Lcom/android/org/conscrypt/SSLNullSession;->isNullSession(Ljavax/net/ssl/SSLSession;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 225
    const/4 v1, 0x0

    .line 227
    .local v1, "handshakeCompleted":Z
    :try_start_d
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 228
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->waitForHandshake()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_16} :catch_21

    .line 229
    const/4 v1, 0x1

    .line 235
    :cond_17
    :goto_17
    if-nez v1, :cond_1a

    .line 237
    return-object v2

    .line 239
    :cond_1a
    iget-object v3, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v3}, Lcom/android/org/conscrypt/ConscryptEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    .line 241
    .end local v1    # "handshakeCompleted":Z
    :cond_20
    return-object v2

    .line 231
    .restart local v1    # "handshakeCompleted":Z
    :catch_21
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_17
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedProtocols()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUseClientMode()Z
    .registers 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getUseClientMode()Z

    move-result v0

    return v0
.end method

.method public getWantClientAuth()Z
    .registers 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getWantClientAuth()Z

    move-result v0

    return v0
.end method

.method public setAlpnProtocols([B)V
    .registers 3
    .param p1, "alpnProtocols"    # [B

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setAlpnProtocols([B)V

    .line 382
    return-void
.end method

.method public setAlpnProtocols([Ljava/lang/String;)V
    .registers 3
    .param p1, "alpnProtocols"    # [Ljava/lang/String;

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setAlpnProtocols([Ljava/lang/String;)V

    .line 387
    return-void
.end method

.method public setChannelIdEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setChannelIdEnabled(Z)V

    .line 308
    return-void
.end method

.method public setChannelIdPrivateKey(Ljava/security/PrivateKey;)V
    .registers 3
    .param p1, "privateKey"    # Ljava/security/PrivateKey;

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setChannelIdPrivateKey(Ljava/security/PrivateKey;)V

    .line 318
    return-void
.end method

.method public setEnableSessionCreation(Z)V
    .registers 3
    .param p1, "flag"    # Z

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setEnableSessionCreation(Z)V

    .line 257
    return-void
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .registers 3
    .param p1, "suites"    # [Ljava/lang/String;

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .registers 3
    .param p1, "protocols"    # [Ljava/lang/String;

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setEnabledProtocols([Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method public setHostname(Ljava/lang/String;)V
    .registers 3
    .param p1, "hostname"    # Ljava/lang/String;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setHostname(Ljava/lang/String;)V

    .line 297
    invoke-super {p0, p1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setHostname(Ljava/lang/String;)V

    .line 298
    return-void
.end method

.method public setNeedClientAuth(Z)V
    .registers 3
    .param p1, "need"    # Z

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setNeedClientAuth(Z)V

    .line 343
    return-void
.end method

.method public setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    .registers 3
    .param p1, "sslParameters"    # Ljavax/net/ssl/SSLParameters;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    .line 121
    return-void
.end method

.method public setUseClientMode(Z)V
    .registers 3
    .param p1, "mode"    # Z

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setUseClientMode(Z)V

    .line 328
    return-void
.end method

.method public setUseSessionTickets(Z)V
    .registers 3
    .param p1, "useSessionTickets"    # Z

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setUseSessionTickets(Z)V

    .line 303
    return-void
.end method

.method public setWantClientAuth(Z)V
    .registers 3
    .param p1, "want"    # Z

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setWantClientAuth(Z)V

    .line 348
    return-void
.end method

.method public startHandshake()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->checkOpen()V

    .line 127
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->isHandshakeFinished()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 129
    return-void

    .line 133
    :cond_a
    :try_start_a
    iget-object v5, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->handshakeLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_d
    .catch Ljavax/net/ssl/SSLException; {:try_start_a .. :try_end_d} :catch_64
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_a8
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_9f

    .line 136
    :try_start_d
    iget-object v6, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_61

    .line 138
    :try_start_10
    iget v4, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    if-nez v4, :cond_69

    .line 139
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    .line 140
    iget-object v4, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v4}, Lcom/android/org/conscrypt/ConscryptEngine;->beginHandshake()V

    .line 141
    new-instance v4, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;

    invoke-direct {v4, p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;-><init>(Lcom/android/org/conscrypt/ConscryptEngineSocket;)V

    iput-object v4, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->in:Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;

    .line 142
    new-instance v4, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;

    invoke-direct {v4, p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;-><init>(Lcom/android/org/conscrypt/ConscryptEngineSocket;)V

    iput-object v4, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->out:Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;
    :try_end_2a
    .catchall {:try_start_10 .. :try_end_2a} :catchall_6c

    :try_start_2a
    monitor-exit v6

    .line 150
    const/4 v3, 0x0

    .line 151
    .local v3, "finished":Z
    :cond_2c
    :goto_2c
    if-nez v3, :cond_9d

    .line 152
    invoke-static {}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->-getjavax-net-ssl-SSLEngineResult$HandshakeStatusSwitchesValues()[I

    move-result-object v4

    iget-object v6, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v6}, Lcom/android/org/conscrypt/ConscryptEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v6

    aget v4, v4, v6

    packed-switch v4, :pswitch_data_ae

    .line 174
    new-instance v4, Ljava/lang/IllegalStateException;

    .line 175
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown handshake status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v7}, Lcom/android/org/conscrypt/ConscryptEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 174
    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_61
    .catchall {:try_start_2a .. :try_end_61} :catchall_61

    .line 133
    .end local v3    # "finished":Z
    :catchall_61
    move-exception v4

    :try_start_62
    monitor-exit v5

    throw v4
    :try_end_64
    .catch Ljavax/net/ssl/SSLException; {:try_start_62 .. :try_end_64} :catch_64
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_64} :catch_a8
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_64} :catch_9f

    .line 180
    :catch_64
    move-exception v2

    .line 181
    .local v2, "e":Ljavax/net/ssl/SSLException;
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->close()V

    .line 182
    throw v2

    .end local v2    # "e":Ljavax/net/ssl/SSLException;
    :cond_69
    :try_start_69
    monitor-exit v6
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_61

    :try_start_6a
    monitor-exit v5
    :try_end_6b
    .catch Ljavax/net/ssl/SSLException; {:try_start_6a .. :try_end_6b} :catch_64
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6b} :catch_a8
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6b} :catch_9f

    .line 146
    return-void

    .line 136
    :catchall_6c
    move-exception v4

    :try_start_6d
    monitor-exit v6

    throw v4

    .line 154
    .restart local v3    # "finished":Z
    :pswitch_6f
    iget-object v4, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->in:Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;

    sget-object v6, Lcom/android/org/conscrypt/EmptyArray;->BYTE:[B

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v4, v6, v7, v8}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->-wrap0(Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;[BII)I

    move-result v4

    if-gez v4, :cond_2c

    .line 156
    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    invoke-static {v4}, Lcom/android/org/conscrypt/SSLUtils;->toSSLHandshakeException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLHandshakeException;

    move-result-object v4

    throw v4

    .line 160
    :pswitch_85
    iget-object v4, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->out:Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;

    sget-object v6, Lcom/android/org/conscrypt/ConscryptEngineSocket;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    invoke-static {v4, v6}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->-wrap1(Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;Ljava/nio/ByteBuffer;)V

    .line 162
    iget-object v4, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->out:Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;

    invoke-static {v4}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->-wrap0(Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;)V

    goto :goto_2c

    .line 167
    :pswitch_92
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "Engine tasks are unsupported"

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_9b
    .catchall {:try_start_6d .. :try_end_9b} :catchall_61

    .line 171
    :pswitch_9b
    const/4 v3, 0x1

    .line 172
    goto :goto_2c

    :cond_9d
    :try_start_9d
    monitor-exit v5
    :try_end_9e
    .catch Ljavax/net/ssl/SSLException; {:try_start_9d .. :try_end_9e} :catch_64
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_9e} :catch_a8
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_9e} :catch_9f

    .line 191
    return-void

    .line 186
    .end local v3    # "finished":Z
    :catch_9f
    move-exception v1

    .line 187
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->close()V

    .line 189
    invoke-static {v1}, Lcom/android/org/conscrypt/SSLUtils;->toSSLHandshakeException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLHandshakeException;

    move-result-object v4

    throw v4

    .line 183
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_a8
    move-exception v0

    .line 184
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->close()V

    .line 185
    throw v0

    .line 152
    nop

    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_9b
        :pswitch_92
        :pswitch_6f
        :pswitch_85
        :pswitch_9b
    .end packed-switch
.end method