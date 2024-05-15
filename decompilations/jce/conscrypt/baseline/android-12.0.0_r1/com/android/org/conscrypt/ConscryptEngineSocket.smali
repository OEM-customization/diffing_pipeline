.class Lcom/android/org/conscrypt/ConscryptEngineSocket;
.super Lcom/android/org/conscrypt/OpenSSLSocketImpl;
.source "ConscryptEngineSocket.java"

# interfaces
.implements Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;,
        Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;
    }
.end annotation


# static fields
.field private static final blacklist EMPTY_BUFFER:Ljava/nio/ByteBuffer;


# instance fields
.field private blacklist bufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

.field private final blacklist engine:Lcom/android/org/conscrypt/ConscryptEngine;

.field private final blacklist handshakeLock:Ljava/lang/Object;

.field private blacklist handshakeStartedMillis:J

.field private blacklist in:Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;

.field private blacklist out:Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;

.field private blacklist state:I

.field private final blacklist stateLock:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 55
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/org/conscrypt/SSLParametersImpl;)V
    .registers 3
    .param p1, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;-><init>()V

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->handshakeLock:Ljava/lang/Object;

    .line 66
    invoke-static {}, Lcom/android/org/conscrypt/ConscryptEngine;->getDefaultBufferAllocator()Lcom/android/org/conscrypt/BufferAllocator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->bufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    .line 74
    invoke-static {p1, p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->newEngine(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptEngineSocket;)Lcom/android/org/conscrypt/ConscryptEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    .line 75
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;ILcom/android/org/conscrypt/SSLParametersImpl;)V
    .registers 5
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/lang/String;I)V

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->handshakeLock:Ljava/lang/Object;

    .line 66
    invoke-static {}, Lcom/android/org/conscrypt/ConscryptEngine;->getDefaultBufferAllocator()Lcom/android/org/conscrypt/BufferAllocator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->bufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    .line 80
    invoke-static {p3, p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->newEngine(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptEngineSocket;)Lcom/android/org/conscrypt/ConscryptEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    .line 81
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;ILjava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)V
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

    .line 91
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/lang/String;ILjava/net/InetAddress;I)V

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->handshakeLock:Ljava/lang/Object;

    .line 66
    invoke-static {}, Lcom/android/org/conscrypt/ConscryptEngine;->getDefaultBufferAllocator()Lcom/android/org/conscrypt/BufferAllocator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->bufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    .line 92
    invoke-static {p5, p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->newEngine(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptEngineSocket;)Lcom/android/org/conscrypt/ConscryptEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    .line 93
    return-void
.end method

.method constructor blacklist <init>(Ljava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)V
    .registers 5
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/net/InetAddress;I)V

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->handshakeLock:Ljava/lang/Object;

    .line 66
    invoke-static {}, Lcom/android/org/conscrypt/ConscryptEngine;->getDefaultBufferAllocator()Lcom/android/org/conscrypt/BufferAllocator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->bufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    .line 86
    invoke-static {p3, p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->newEngine(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptEngineSocket;)Lcom/android/org/conscrypt/ConscryptEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    .line 87
    return-void
.end method

.method constructor blacklist <init>(Ljava/net/InetAddress;ILjava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)V
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

    .line 97
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->handshakeLock:Ljava/lang/Object;

    .line 66
    invoke-static {}, Lcom/android/org/conscrypt/ConscryptEngine;->getDefaultBufferAllocator()Lcom/android/org/conscrypt/BufferAllocator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->bufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    .line 98
    invoke-static {p5, p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->newEngine(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptEngineSocket;)Lcom/android/org/conscrypt/ConscryptEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    .line 99
    return-void
.end method

.method constructor blacklist <init>(Ljava/net/Socket;Ljava/lang/String;IZLcom/android/org/conscrypt/SSLParametersImpl;)V
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

    .line 103
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/net/Socket;Ljava/lang/String;IZ)V

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->handshakeLock:Ljava/lang/Object;

    .line 66
    invoke-static {}, Lcom/android/org/conscrypt/ConscryptEngine;->getDefaultBufferAllocator()Lcom/android/org/conscrypt/BufferAllocator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->bufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    .line 104
    invoke-static {p5, p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->newEngine(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptEngineSocket;)Lcom/android/org/conscrypt/ConscryptEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    .line 105
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/org/conscrypt/ConscryptEngineSocket;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/org/conscrypt/ConscryptEngineSocket;

    .line 54
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->onHandshakeFinished()V

    return-void
.end method

.method static synthetic blacklist access$1000(Lcom/android/org/conscrypt/ConscryptEngineSocket;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/org/conscrypt/ConscryptEngineSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->doHandshake()V

    return-void
.end method

.method static synthetic blacklist access$1100(Lcom/android/org/conscrypt/ConscryptEngineSocket;)Ljava/io/InputStream;
    .registers 2
    .param p0, "x0"    # Lcom/android/org/conscrypt/ConscryptEngineSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->getUnderlyingInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$400(Lcom/android/org/conscrypt/ConscryptEngineSocket;)Lcom/android/org/conscrypt/ConscryptEngine;
    .registers 2
    .param p0, "x0"    # Lcom/android/org/conscrypt/ConscryptEngineSocket;

    .line 54
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    return-object v0
.end method

.method static synthetic blacklist access$500(Lcom/android/org/conscrypt/ConscryptEngineSocket;)Ljava/io/OutputStream;
    .registers 2
    .param p0, "x0"    # Lcom/android/org/conscrypt/ConscryptEngineSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->getUnderlyingOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$600(Lcom/android/org/conscrypt/ConscryptEngineSocket;)Lcom/android/org/conscrypt/BufferAllocator;
    .registers 2
    .param p0, "x0"    # Lcom/android/org/conscrypt/ConscryptEngineSocket;

    .line 54
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->bufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    return-object v0
.end method

.method static synthetic blacklist access$700(Lcom/android/org/conscrypt/ConscryptEngineSocket;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/org/conscrypt/ConscryptEngineSocket;

    .line 54
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic blacklist access$800(Lcom/android/org/conscrypt/ConscryptEngineSocket;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/org/conscrypt/ConscryptEngineSocket;

    .line 54
    iget v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    return v0
.end method

.method static synthetic blacklist access$900(Lcom/android/org/conscrypt/ConscryptEngineSocket;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/org/conscrypt/ConscryptEngineSocket;

    .line 54
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->handshakeLock:Ljava/lang/Object;

    return-object v0
.end method

.method private blacklist doHandshake()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    const/4 v0, 0x0

    .line 238
    .local v0, "finished":Z
    :goto_1
    if-nez v0, :cond_b4

    .line 239
    const/4 v1, 0x0

    :try_start_4
    sget-object v2, Lcom/android/org/conscrypt/ConscryptEngineSocket$3;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    iget-object v3, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v3}, Lcom/android/org/conscrypt/ConscryptEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_b6

    .line 267
    new-instance v2, Ljava/lang/IllegalStateException;

    goto :goto_65

    .line 260
    :pswitch_18
    const/4 v0, 0x1

    .line 261
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v3}, Lcom/android/org/conscrypt/ConscryptEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    invoke-interface {v3}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    .line 262
    invoke-virtual {v4}, Lcom/android/org/conscrypt/ConscryptEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v4

    invoke-interface {v4}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v4

    .line 263
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->getMillisSinceBoot()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->handshakeStartedMillis:J

    sub-long/2addr v5, v7

    .line 261
    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/org/conscrypt/Platform;->countTlsHandshake(ZLjava/lang/String;Ljava/lang/String;J)V

    .line 264
    goto :goto_1

    .line 255
    :pswitch_39
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Engine tasks are unsupported"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngineSocket;
    throw v2

    .line 248
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngineSocket;
    :pswitch_41
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->out:Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;

    sget-object v3, Lcom/android/org/conscrypt/ConscryptEngineSocket;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    # invokes: Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->writeInternal(Ljava/nio/ByteBuffer;)V
    invoke-static {v2, v3}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->access$200(Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;Ljava/nio/ByteBuffer;)V

    .line 250
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->out:Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;

    # invokes: Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->flushInternal()V
    invoke-static {v2}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->access$300(Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;)V

    .line 251
    goto :goto_1

    .line 241
    :pswitch_4e
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->in:Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;

    sget-object v3, Lcom/android/org/conscrypt/EmptyArray;->BYTE:[B

    # invokes: Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->processDataFromSocket([BII)I
    invoke-static {v2, v3, v1, v1}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->access$100(Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;[BII)I

    move-result v2

    if-ltz v2, :cond_59

    goto :goto_1

    .line 243
    :cond_59
    new-instance v2, Ljava/io/EOFException;

    const-string v3, "connection closed"

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/org/conscrypt/SSLUtils;->toSSLHandshakeException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLHandshakeException;

    move-result-object v2

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngineSocket;
    throw v2

    .line 267
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngineSocket;
    :goto_65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown handshake status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    .line 268
    invoke-virtual {v4}, Lcom/android/org/conscrypt/ConscryptEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngineSocket;
    throw v2
    :try_end_80
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_80} :catch_8e
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_80} :catch_89
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_80} :catch_80

    .line 282
    .end local v0    # "finished":Z
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngineSocket;
    :catch_80
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->close()V

    .line 285
    invoke-static {v0}, Lcom/android/org/conscrypt/SSLUtils;->toSSLHandshakeException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLHandshakeException;

    move-result-object v1

    throw v1

    .line 279
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_89
    move-exception v0

    .line 280
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->close()V

    .line 281
    throw v0

    .line 272
    .end local v0    # "e":Ljava/io/IOException;
    :catch_8e
    move-exception v0

    .line 273
    .local v0, "e":Ljavax/net/ssl/SSLException;
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->drainOutgoingQueue()V

    .line 274
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v2}, Lcom/android/org/conscrypt/ConscryptEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    .line 275
    invoke-virtual {v3}, Lcom/android/org/conscrypt/ConscryptEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    invoke-interface {v3}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v3

    .line 276
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->getMillisSinceBoot()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->handshakeStartedMillis:J

    sub-long/2addr v4, v6

    .line 274
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/org/conscrypt/Platform;->countTlsHandshake(ZLjava/lang/String;Ljava/lang/String;J)V

    .line 277
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->close()V

    .line 278
    throw v0

    .line 286
    .end local v0    # "e":Ljavax/net/ssl/SSLException;
    :cond_b4
    nop

    .line 287
    return-void

    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_41
        :pswitch_39
        :pswitch_18
        :pswitch_18
    .end packed-switch
.end method

.method private blacklist drainOutgoingQueue()V
    .registers 3

    .line 593
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->pendingOutboundEncryptedBytes()I

    move-result v0

    if-lez v0, :cond_15

    .line 594
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->out:Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;

    sget-object v1, Lcom/android/org/conscrypt/ConscryptEngineSocket;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    # invokes: Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->writeInternal(Ljava/nio/ByteBuffer;)V
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->access$200(Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;Ljava/nio/ByteBuffer;)V

    .line 596
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->out:Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;

    # invokes: Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->flushInternal()V
    invoke-static {v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->access$300(Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_16

    goto :goto_0

    .line 600
    :cond_15
    goto :goto_17

    .line 598
    :catch_16
    move-exception v0

    .line 601
    :goto_17
    return-void
.end method

.method private static blacklist getDelegatingTrustManager(Ljavax/net/ssl/X509TrustManager;Lcom/android/org/conscrypt/ConscryptEngineSocket;)Ljavax/net/ssl/X509TrustManager;
    .registers 4
    .param p0, "delegate"    # Ljavax/net/ssl/X509TrustManager;
    .param p1, "socket"    # Lcom/android/org/conscrypt/ConscryptEngineSocket;

    .line 142
    instance-of v0, p0, Ljavax/net/ssl/X509ExtendedTrustManager;

    if-eqz v0, :cond_d

    .line 143
    move-object v0, p0

    check-cast v0, Ljavax/net/ssl/X509ExtendedTrustManager;

    .line 144
    .local v0, "extendedDelegate":Ljavax/net/ssl/X509ExtendedTrustManager;
    new-instance v1, Lcom/android/org/conscrypt/ConscryptEngineSocket$2;

    invoke-direct {v1, v0, p1}, Lcom/android/org/conscrypt/ConscryptEngineSocket$2;-><init>(Ljavax/net/ssl/X509ExtendedTrustManager;Lcom/android/org/conscrypt/ConscryptEngineSocket;)V

    return-object v1

    .line 181
    .end local v0    # "extendedDelegate":Ljavax/net/ssl/X509ExtendedTrustManager;
    :cond_d
    return-object p0
.end method

.method private blacklist getUnderlyingInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 608
    invoke-super {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getUnderlyingOutputStream()Ljava/io/OutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 604
    invoke-super {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist newEngine(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptEngineSocket;)Lcom/android/org/conscrypt/ConscryptEngine;
    .registers 5
    .param p0, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .param p1, "socket"    # Lcom/android/org/conscrypt/ConscryptEngineSocket;

    .line 110
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->supportsX509ExtendedTrustManager()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 111
    nop

    .line 112
    invoke-virtual {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->getDelegatingTrustManager(Ljavax/net/ssl/X509TrustManager;Lcom/android/org/conscrypt/ConscryptEngineSocket;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    .line 111
    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->cloneWithTrustManager(Ljavax/net/ssl/X509TrustManager;)Lcom/android/org/conscrypt/SSLParametersImpl;

    move-result-object v0

    .local v0, "modifiedParams":Lcom/android/org/conscrypt/SSLParametersImpl;
    goto :goto_15

    .line 114
    .end local v0    # "modifiedParams":Lcom/android/org/conscrypt/SSLParametersImpl;
    :cond_14
    move-object v0, p0

    .line 116
    .restart local v0    # "modifiedParams":Lcom/android/org/conscrypt/SSLParametersImpl;
    :goto_15
    new-instance v1, Lcom/android/org/conscrypt/ConscryptEngine;

    .line 117
    invoke-virtual {p1}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->peerInfoProvider()Lcom/android/org/conscrypt/PeerInfoProvider;

    move-result-object v2

    invoke-direct {v1, v0, v2, p1}, Lcom/android/org/conscrypt/ConscryptEngine;-><init>(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/PeerInfoProvider;Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;)V

    .line 120
    .local v1, "engine":Lcom/android/org/conscrypt/ConscryptEngine;
    new-instance v2, Lcom/android/org/conscrypt/ConscryptEngineSocket$1;

    invoke-direct {v2, p1}, Lcom/android/org/conscrypt/ConscryptEngineSocket$1;-><init>(Lcom/android/org/conscrypt/ConscryptEngineSocket;)V

    invoke-virtual {v1, v2}, Lcom/android/org/conscrypt/ConscryptEngine;->setHandshakeListener(Lcom/android/org/conscrypt/HandshakeListener;)V

    .line 132
    invoke-virtual {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseClientMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/org/conscrypt/ConscryptEngine;->setUseClientMode(Z)V

    .line 133
    return-object v1
.end method

.method private blacklist onHandshakeFinished()V
    .registers 5

    .line 547
    const/4 v0, 0x0

    .line 548
    .local v0, "notify":Z
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 549
    :try_start_4
    iget v2, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1d

    .line 550
    const/4 v3, 0x2

    if-ne v2, v3, :cond_11

    .line 551
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    goto :goto_17

    .line 552
    :cond_11
    const/4 v3, 0x3

    if-ne v2, v3, :cond_17

    .line 553
    const/4 v2, 0x5

    iput v2, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    .line 558
    :cond_17
    :goto_17
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 559
    const/4 v0, 0x1

    .line 561
    :cond_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_24

    .line 563
    if-eqz v0, :cond_23

    .line 564
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->notifyHandshakeCompletedListeners()V

    .line 566
    :cond_23
    return-void

    .line 561
    :catchall_24
    move-exception v2

    :try_start_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v2
.end method

.method private blacklist waitForHandshake()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 572
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->startHandshake()V

    .line 574
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 575
    :goto_6
    :try_start_6
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_34

    const/4 v2, 0x5

    const/16 v3, 0x8

    if-eq v1, v2, :cond_28

    const/4 v2, 0x4

    if-eq v1, v2, :cond_28

    if-eq v1, v3, :cond_28

    .line 578
    :try_start_12
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_17} :catch_18
    .catchall {:try_start_12 .. :try_end_17} :catchall_34

    .line 582
    goto :goto_6

    .line 579
    :catch_18
    move-exception v1

    .line 580
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_19
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 581
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Interrupted waiting for handshake"

    invoke-direct {v2, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngineSocket;
    throw v2

    .line 585
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngineSocket;
    :cond_28
    if-eq v1, v3, :cond_2c

    .line 588
    monitor-exit v0

    .line 589
    return-void

    .line 586
    :cond_2c
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Socket is closed"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngineSocket;
    throw v1

    .line 588
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngineSocket;
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_19 .. :try_end_36} :catchall_34

    throw v1
.end method


# virtual methods
.method public final blacklist chooseClientAlias(Ljavax/net/ssl/X509KeyManager;[Ljavax/security/auth/x500/X500Principal;[Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "keyManager"    # Ljavax/net/ssl/X509KeyManager;
    .param p2, "issuers"    # [Ljavax/security/auth/x500/X500Principal;
    .param p3, "keyTypes"    # [Ljava/lang/String;

    .line 619
    invoke-interface {p1, p3, p2, p0}, Ljavax/net/ssl/X509KeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist chooseServerAlias(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "keyManager"    # Ljavax/net/ssl/X509KeyManager;
    .param p2, "keyType"    # Ljava/lang/String;

    .line 613
    const/4 v0, 0x0

    invoke-interface {p1, p2, v0, p0}, Ljavax/net/ssl/X509KeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 459
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    if-nez v0, :cond_5

    .line 462
    return-void

    .line 466
    :cond_5
    monitor-enter v0

    .line 467
    :try_start_6
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    move v2, v1

    .line 468
    .local v2, "previousState":I
    const/16 v3, 0x8

    if-ne v1, v3, :cond_f

    .line 470
    monitor-exit v0

    return-void

    .line 473
    :cond_f
    iput v3, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    .line 475
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 476
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_5a

    .line 480
    :try_start_17
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->closeInbound()V

    .line 481
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->closeOutbound()V

    .line 488
    const/4 v0, 0x2

    if-lt v2, v0, :cond_2c

    .line 489
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->drainOutgoingQueue()V

    .line 490
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->closeOutbound()V
    :try_end_2c
    .catchall {:try_start_17 .. :try_end_2c} :catchall_43

    .line 496
    :cond_2c
    :try_start_2c
    invoke-super {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->close()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_38

    .line 498
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->in:Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;

    if-eqz v0, :cond_36

    .line 499
    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->release()V

    .line 502
    :cond_36
    nop

    .line 503
    return-void

    .line 498
    :catchall_38
    move-exception v0

    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->in:Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;

    if-eqz v1, :cond_42

    .line 499
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->in:Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->release()V

    .line 501
    :cond_42
    throw v0

    .line 495
    :catchall_43
    move-exception v0

    .line 496
    :try_start_44
    invoke-super {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->close()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_4f

    .line 498
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->in:Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;

    if-eqz v1, :cond_4e

    .line 499
    invoke-virtual {v1}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->release()V

    .line 502
    :cond_4e
    throw v0

    .line 498
    :catchall_4f
    move-exception v0

    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->in:Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;

    if-eqz v1, :cond_59

    .line 499
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->in:Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->release()V

    .line 501
    :cond_59
    throw v0

    .line 476
    .end local v2    # "previousState":I
    :catchall_5a
    move-exception v1

    :try_start_5b
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v1
.end method

.method blacklist exportKeyingMaterial(Ljava/lang/String;[BI)[B
    .registers 5
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "context"    # [B
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 421
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/conscrypt/ConscryptEngine;->exportKeyingMaterial(Ljava/lang/String;[BI)[B

    move-result-object v0

    return-object v0
.end method

.method final blacklist getActiveSession()Ljavax/net/ssl/SSLSession;
    .registers 2

    .line 331
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getApplicationProtocol()Ljava/lang/String;
    .registers 2

    .line 522
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getApplicationProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final blacklist getApplicationProtocols()[Ljava/lang/String;
    .registers 2

    .line 517
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getApplicationProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist getChannelId()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 406
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getChannelId()[B

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getEnableSessionCreation()Z
    .registers 2

    .line 336
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getEnableSessionCreation()Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api getEnabledCipherSuites()[Ljava/lang/String;
    .registers 2

    .line 351
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getEnabledProtocols()[Ljava/lang/String;
    .registers 2

    .line 366
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getHandshakeApplicationProtocol()Ljava/lang/String;
    .registers 2

    .line 527
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getHandshakeApplicationProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getHandshakeSession()Ljavax/net/ssl/SSLSession;
    .registers 2

    .line 314
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->handshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 291
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->checkOpen()V

    .line 296
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->waitForHandshake()V

    .line 297
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->in:Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;

    return-object v0
.end method

.method public final whitelist test-api getNeedClientAuth()Z
    .registers 2

    .line 441
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getNeedClientAuth()Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api getOutputStream()Ljava/io/OutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->checkOpen()V

    .line 307
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->waitForHandshake()V

    .line 309
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->out:Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;

    return-object v0
.end method

.method public final whitelist test-api getSSLParameters()Ljavax/net/ssl/SSLParameters;
    .registers 2

    .line 186
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getSession()Ljavax/net/ssl/SSLSession;
    .registers 2

    .line 319
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 321
    :try_start_6
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->waitForHandshake()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_a

    .line 324
    goto :goto_b

    .line 322
    :catch_a
    move-exception v0

    .line 326
    :cond_b
    :goto_b
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getSupportedCipherSuites()[Ljava/lang/String;
    .registers 2

    .line 346
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getSupportedProtocols()[Ljava/lang/String;
    .registers 2

    .line 361
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist getTlsUnique()[B
    .registers 2

    .line 416
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getTlsUnique()[B

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getUseClientMode()Z
    .registers 2

    .line 426
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getUseClientMode()Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api getWantClientAuth()Z
    .registers 2

    .line 436
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getWantClientAuth()Z

    move-result v0

    return v0
.end method

.method public final blacklist setApplicationProtocolSelector(Lcom/android/org/conscrypt/ApplicationProtocolSelector;)V
    .registers 3
    .param p1, "selector"    # Lcom/android/org/conscrypt/ApplicationProtocolSelector;

    .line 532
    nop

    .line 533
    if-nez p1, :cond_5

    const/4 v0, 0x0

    goto :goto_a

    :cond_5
    new-instance v0, Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;

    invoke-direct {v0, p0, p1}, Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;-><init>(Ljavax/net/ssl/SSLSocket;Lcom/android/org/conscrypt/ApplicationProtocolSelector;)V

    .line 532
    :goto_a
    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->setApplicationProtocolSelector(Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;)V

    .line 534
    return-void
.end method

.method final blacklist setApplicationProtocolSelector(Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;)V
    .registers 3
    .param p1, "selector"    # Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;

    .line 538
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setApplicationProtocolSelector(Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;)V

    .line 539
    return-void
.end method

.method final blacklist setApplicationProtocols([Ljava/lang/String;)V
    .registers 3
    .param p1, "protocols"    # [Ljava/lang/String;

    .line 512
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setApplicationProtocols([Ljava/lang/String;)V

    .line 513
    return-void
.end method

.method blacklist setBufferAllocator(Lcom/android/org/conscrypt/BufferAllocator;)V
    .registers 3
    .param p1, "bufferAllocator"    # Lcom/android/org/conscrypt/BufferAllocator;

    .line 542
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setBufferAllocator(Lcom/android/org/conscrypt/BufferAllocator;)V

    .line 543
    iput-object p1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->bufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    .line 544
    return-void
.end method

.method public final blacklist setChannelIdEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 401
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setChannelIdEnabled(Z)V

    .line 402
    return-void
.end method

.method public final blacklist test-api setChannelIdPrivateKey(Ljava/security/PrivateKey;)V
    .registers 3
    .param p1, "privateKey"    # Ljava/security/PrivateKey;

    .line 411
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setChannelIdPrivateKey(Ljava/security/PrivateKey;)V

    .line 412
    return-void
.end method

.method public final whitelist test-api setEnableSessionCreation(Z)V
    .registers 3
    .param p1, "flag"    # Z

    .line 341
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setEnableSessionCreation(Z)V

    .line 342
    return-void
.end method

.method public final whitelist test-api setEnabledCipherSuites([Ljava/lang/String;)V
    .registers 3
    .param p1, "suites"    # [Ljava/lang/String;

    .line 356
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 357
    return-void
.end method

.method public final whitelist test-api setEnabledProtocols([Ljava/lang/String;)V
    .registers 3
    .param p1, "protocols"    # [Ljava/lang/String;

    .line 371
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setEnabledProtocols([Ljava/lang/String;)V

    .line 372
    return-void
.end method

.method public blacklist test-api setHandshakeTimeout(I)V
    .registers 2
    .param p1, "handshakeTimeoutMilliseconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 508
    return-void
.end method

.method public final greylist-max-q test-api setHostname(Ljava/lang/String;)V
    .registers 3
    .param p1, "hostname"    # Ljava/lang/String;

    .line 386
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setHostname(Ljava/lang/String;)V

    .line 387
    invoke-super {p0, p1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setHostname(Ljava/lang/String;)V

    .line 388
    return-void
.end method

.method public final whitelist test-api setNeedClientAuth(Z)V
    .registers 3
    .param p1, "need"    # Z

    .line 446
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setNeedClientAuth(Z)V

    .line 447
    return-void
.end method

.method public final whitelist test-api setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    .registers 3
    .param p1, "sslParameters"    # Ljavax/net/ssl/SSLParameters;

    .line 191
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    .line 192
    return-void
.end method

.method public final whitelist test-api setUseClientMode(Z)V
    .registers 3
    .param p1, "mode"    # Z

    .line 431
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setUseClientMode(Z)V

    .line 432
    return-void
.end method

.method public final greylist-max-q test-api setUseSessionTickets(Z)V
    .registers 3
    .param p1, "useSessionTickets"    # Z

    .line 396
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setUseSessionTickets(Z)V

    .line 397
    return-void
.end method

.method public final whitelist test-api setWantClientAuth(Z)V
    .registers 3
    .param p1, "want"    # Z

    .line 451
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setWantClientAuth(Z)V

    .line 452
    return-void
.end method

.method public final whitelist test-api startHandshake()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->checkOpen()V

    .line 199
    :try_start_3
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->handshakeLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_6
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_6} :catch_47
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_42
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_39

    .line 202
    :try_start_6
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_36

    .line 204
    :try_start_9
    iget v2, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    if-nez v2, :cond_30

    .line 205
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    .line 206
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->getMillisSinceBoot()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->handshakeStartedMillis:J

    .line 207
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v2}, Lcom/android/org/conscrypt/ConscryptEngine;->beginHandshake()V

    .line 208
    new-instance v2, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;

    invoke-direct {v2, p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;-><init>(Lcom/android/org/conscrypt/ConscryptEngineSocket;)V

    iput-object v2, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->in:Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;

    .line 209
    new-instance v2, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;

    invoke-direct {v2, p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;-><init>(Lcom/android/org/conscrypt/ConscryptEngineSocket;)V

    iput-object v2, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->out:Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;

    .line 218
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_9 .. :try_end_2a} :catchall_33

    .line 220
    :try_start_2a
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->doHandshake()V

    .line 221
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_36

    .line 232
    nop

    .line 233
    return-void

    .line 216
    :cond_30
    :try_start_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_33

    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_36

    return-void

    .line 218
    :catchall_33
    move-exception v2

    :try_start_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngineSocket;
    :try_start_35
    throw v2

    .line 221
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngineSocket;
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_36

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngineSocket;
    :try_start_38
    throw v1
    :try_end_39
    .catch Ljavax/net/ssl/SSLException; {:try_start_38 .. :try_end_39} :catch_47
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_39} :catch_42
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_39} :catch_39

    .line 228
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngineSocket;
    :catch_39
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->close()V

    .line 231
    invoke-static {v0}, Lcom/android/org/conscrypt/SSLUtils;->toSSLHandshakeException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLHandshakeException;

    move-result-object v1

    throw v1

    .line 225
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_42
    move-exception v0

    .line 226
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->close()V

    .line 227
    throw v0

    .line 222
    .end local v0    # "e":Ljava/io/IOException;
    :catch_47
    move-exception v0

    .line 223
    .local v0, "e":Ljavax/net/ssl/SSLException;
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->close()V

    .line 224
    throw v0
.end method
