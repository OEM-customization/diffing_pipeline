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

    .line 71
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;-><init>()V

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->handshakeLock:Ljava/lang/Object;

    .line 64
    invoke-static {}, Lcom/android/org/conscrypt/ConscryptEngine;->getDefaultBufferAllocator()Lcom/android/org/conscrypt/BufferAllocator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->bufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    .line 72
    invoke-static {p1, p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->newEngine(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptEngineSocket;)Lcom/android/org/conscrypt/ConscryptEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    .line 73
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

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/lang/String;I)V

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->handshakeLock:Ljava/lang/Object;

    .line 64
    invoke-static {}, Lcom/android/org/conscrypt/ConscryptEngine;->getDefaultBufferAllocator()Lcom/android/org/conscrypt/BufferAllocator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->bufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    .line 78
    invoke-static {p3, p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->newEngine(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptEngineSocket;)Lcom/android/org/conscrypt/ConscryptEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    .line 79
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

    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/lang/String;ILjava/net/InetAddress;I)V

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->handshakeLock:Ljava/lang/Object;

    .line 64
    invoke-static {}, Lcom/android/org/conscrypt/ConscryptEngine;->getDefaultBufferAllocator()Lcom/android/org/conscrypt/BufferAllocator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->bufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    .line 90
    invoke-static {p5, p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->newEngine(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptEngineSocket;)Lcom/android/org/conscrypt/ConscryptEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    .line 91
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

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/net/InetAddress;I)V

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->handshakeLock:Ljava/lang/Object;

    .line 64
    invoke-static {}, Lcom/android/org/conscrypt/ConscryptEngine;->getDefaultBufferAllocator()Lcom/android/org/conscrypt/BufferAllocator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->bufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    .line 84
    invoke-static {p3, p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->newEngine(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptEngineSocket;)Lcom/android/org/conscrypt/ConscryptEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    .line 85
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

    .line 95
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->handshakeLock:Ljava/lang/Object;

    .line 64
    invoke-static {}, Lcom/android/org/conscrypt/ConscryptEngine;->getDefaultBufferAllocator()Lcom/android/org/conscrypt/BufferAllocator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->bufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    .line 96
    invoke-static {p5, p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->newEngine(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptEngineSocket;)Lcom/android/org/conscrypt/ConscryptEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    .line 97
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

    .line 101
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/net/Socket;Ljava/lang/String;IZ)V

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->handshakeLock:Ljava/lang/Object;

    .line 64
    invoke-static {}, Lcom/android/org/conscrypt/ConscryptEngine;->getDefaultBufferAllocator()Lcom/android/org/conscrypt/BufferAllocator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->bufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    .line 102
    invoke-static {p5, p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->newEngine(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptEngineSocket;)Lcom/android/org/conscrypt/ConscryptEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    .line 103
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
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    const/4 v0, 0x0

    .line 235
    .local v0, "finished":Z
    :goto_1
    if-nez v0, :cond_83

    .line 236
    :try_start_3
    sget-object v1, Lcom/android/org/conscrypt/ConscryptEngineSocket$3;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v2}, Lcom/android/org/conscrypt/ConscryptEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_55

    const/4 v2, 0x2

    if-eq v1, v2, :cond_48

    const/4 v2, 0x3

    if-eq v1, v2, :cond_40

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3e

    const/4 v2, 0x5

    if-ne v1, v2, :cond_21

    goto :goto_3e

    .line 261
    :cond_21
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown handshake status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    .line 262
    invoke-virtual {v3}, Lcom/android/org/conscrypt/ConscryptEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngineSocket;
    throw v1

    .line 257
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngineSocket;
    :cond_3e
    :goto_3e
    const/4 v0, 0x1

    .line 258
    goto :goto_1

    .line 252
    :cond_40
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Engine tasks are unsupported"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngineSocket;
    throw v1

    .line 245
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngineSocket;
    :cond_48
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->out:Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;

    sget-object v2, Lcom/android/org/conscrypt/ConscryptEngineSocket;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    # invokes: Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->writeInternal(Ljava/nio/ByteBuffer;)V
    invoke-static {v1, v2}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->access$200(Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;Ljava/nio/ByteBuffer;)V

    .line 247
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->out:Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;

    # invokes: Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->flushInternal()V
    invoke-static {v1}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->access$300(Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;)V

    .line 248
    goto :goto_1

    .line 238
    :cond_55
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->in:Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;

    sget-object v2, Lcom/android/org/conscrypt/EmptyArray;->BYTE:[B

    const/4 v3, 0x0

    # invokes: Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->processDataFromSocket([BII)I
    invoke-static {v1, v2, v3, v3}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->access$100(Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;[BII)I

    move-result v1

    if-ltz v1, :cond_61

    goto :goto_1

    .line 240
    :cond_61
    new-instance v1, Ljava/io/EOFException;

    const-string v2, "connection closed"

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/org/conscrypt/SSLUtils;->toSSLHandshakeException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLHandshakeException;

    move-result-object v1

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngineSocket;
    throw v1
    :try_end_6d
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_6d} :catch_7b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6d} :catch_76
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6d} :catch_6d

    .line 273
    .end local v0    # "finished":Z
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngineSocket;
    :catch_6d
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->close()V

    .line 276
    invoke-static {v0}, Lcom/android/org/conscrypt/SSLUtils;->toSSLHandshakeException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLHandshakeException;

    move-result-object v1

    throw v1

    .line 270
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_76
    move-exception v0

    .line 271
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->close()V

    .line 272
    throw v0

    .line 266
    .end local v0    # "e":Ljava/io/IOException;
    :catch_7b
    move-exception v0

    .line 267
    .local v0, "e":Ljavax/net/ssl/SSLException;
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->drainOutgoingQueue()V

    .line 268
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->close()V

    .line 269
    throw v0

    .line 277
    .end local v0    # "e":Ljavax/net/ssl/SSLException;
    :cond_83
    nop

    .line 278
    return-void
.end method

.method private blacklist drainOutgoingQueue()V
    .registers 3

    .line 584
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->pendingOutboundEncryptedBytes()I

    move-result v0

    if-lez v0, :cond_15

    .line 585
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->out:Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;

    sget-object v1, Lcom/android/org/conscrypt/ConscryptEngineSocket;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    # invokes: Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->writeInternal(Ljava/nio/ByteBuffer;)V
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->access$200(Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;Ljava/nio/ByteBuffer;)V

    .line 587
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->out:Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;

    # invokes: Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->flushInternal()V
    invoke-static {v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->access$300(Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_16

    goto :goto_0

    .line 591
    :cond_15
    goto :goto_17

    .line 589
    :catch_16
    move-exception v0

    .line 592
    :goto_17
    return-void
.end method

.method private static blacklist getDelegatingTrustManager(Ljavax/net/ssl/X509TrustManager;Lcom/android/org/conscrypt/ConscryptEngineSocket;)Ljavax/net/ssl/X509TrustManager;
    .registers 4
    .param p0, "delegate"    # Ljavax/net/ssl/X509TrustManager;
    .param p1, "socket"    # Lcom/android/org/conscrypt/ConscryptEngineSocket;

    .line 140
    instance-of v0, p0, Ljavax/net/ssl/X509ExtendedTrustManager;

    if-eqz v0, :cond_d

    .line 141
    move-object v0, p0

    check-cast v0, Ljavax/net/ssl/X509ExtendedTrustManager;

    .line 142
    .local v0, "extendedDelegate":Ljavax/net/ssl/X509ExtendedTrustManager;
    new-instance v1, Lcom/android/org/conscrypt/ConscryptEngineSocket$2;

    invoke-direct {v1, v0, p1}, Lcom/android/org/conscrypt/ConscryptEngineSocket$2;-><init>(Ljavax/net/ssl/X509ExtendedTrustManager;Lcom/android/org/conscrypt/ConscryptEngineSocket;)V

    return-object v1

    .line 179
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

    .line 599
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

    .line 595
    invoke-super {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist newEngine(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptEngineSocket;)Lcom/android/org/conscrypt/ConscryptEngine;
    .registers 5
    .param p0, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .param p1, "socket"    # Lcom/android/org/conscrypt/ConscryptEngineSocket;

    .line 108
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->supportsX509ExtendedTrustManager()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 109
    nop

    .line 110
    invoke-virtual {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->getDelegatingTrustManager(Ljavax/net/ssl/X509TrustManager;Lcom/android/org/conscrypt/ConscryptEngineSocket;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    .line 109
    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->cloneWithTrustManager(Ljavax/net/ssl/X509TrustManager;)Lcom/android/org/conscrypt/SSLParametersImpl;

    move-result-object v0

    .local v0, "modifiedParams":Lcom/android/org/conscrypt/SSLParametersImpl;
    goto :goto_15

    .line 112
    .end local v0    # "modifiedParams":Lcom/android/org/conscrypt/SSLParametersImpl;
    :cond_14
    move-object v0, p0

    .line 114
    .restart local v0    # "modifiedParams":Lcom/android/org/conscrypt/SSLParametersImpl;
    :goto_15
    new-instance v1, Lcom/android/org/conscrypt/ConscryptEngine;

    .line 115
    invoke-virtual {p1}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->peerInfoProvider()Lcom/android/org/conscrypt/PeerInfoProvider;

    move-result-object v2

    invoke-direct {v1, v0, v2, p1}, Lcom/android/org/conscrypt/ConscryptEngine;-><init>(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/PeerInfoProvider;Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;)V

    .line 118
    .local v1, "engine":Lcom/android/org/conscrypt/ConscryptEngine;
    new-instance v2, Lcom/android/org/conscrypt/ConscryptEngineSocket$1;

    invoke-direct {v2, p1}, Lcom/android/org/conscrypt/ConscryptEngineSocket$1;-><init>(Lcom/android/org/conscrypt/ConscryptEngineSocket;)V

    invoke-virtual {v1, v2}, Lcom/android/org/conscrypt/ConscryptEngine;->setHandshakeListener(Lcom/android/org/conscrypt/HandshakeListener;)V

    .line 130
    invoke-virtual {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseClientMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/org/conscrypt/ConscryptEngine;->setUseClientMode(Z)V

    .line 131
    return-object v1
.end method

.method private blacklist onHandshakeFinished()V
    .registers 5

    .line 538
    const/4 v0, 0x0

    .line 539
    .local v0, "notify":Z
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 540
    :try_start_4
    iget v2, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_21

    .line 541
    iget v2, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_13

    .line 542
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    goto :goto_1b

    .line 543
    :cond_13
    iget v2, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1b

    .line 544
    const/4 v2, 0x5

    iput v2, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    .line 549
    :cond_1b
    :goto_1b
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 550
    const/4 v0, 0x1

    .line 552
    :cond_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_28

    .line 554
    if-eqz v0, :cond_27

    .line 555
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->notifyHandshakeCompletedListeners()V

    .line 557
    :cond_27
    return-void

    .line 552
    :catchall_28
    move-exception v2

    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v2
.end method

.method private blacklist waitForHandshake()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 563
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->startHandshake()V

    .line 565
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 566
    :goto_6
    :try_start_6
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    const/4 v2, 0x5

    const/16 v3, 0x8

    if-eq v1, v2, :cond_2c

    iget v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2c

    iget v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_3a

    if-eq v1, v3, :cond_2c

    .line 569
    :try_start_16
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_1b} :catch_1c
    .catchall {:try_start_16 .. :try_end_1b} :catchall_3a

    .line 573
    goto :goto_6

    .line 570
    :catch_1c
    move-exception v1

    .line 571
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_1d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 572
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Interrupted waiting for handshake"

    invoke-direct {v2, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngineSocket;
    throw v2

    .line 576
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngineSocket;
    :cond_2c
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    if-eq v1, v3, :cond_32

    .line 579
    monitor-exit v0

    .line 580
    return-void

    .line 577
    :cond_32
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Socket is closed"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngineSocket;
    throw v1

    .line 579
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngineSocket;
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_1d .. :try_end_3c} :catchall_3a

    throw v1
.end method


# virtual methods
.method public final blacklist chooseClientAlias(Ljavax/net/ssl/X509KeyManager;[Ljavax/security/auth/x500/X500Principal;[Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "keyManager"    # Ljavax/net/ssl/X509KeyManager;
    .param p2, "issuers"    # [Ljavax/security/auth/x500/X500Principal;
    .param p3, "keyTypes"    # [Ljava/lang/String;

    .line 610
    invoke-interface {p1, p3, p2, p0}, Ljavax/net/ssl/X509KeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist chooseServerAlias(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "keyManager"    # Ljavax/net/ssl/X509KeyManager;
    .param p2, "keyType"    # Ljava/lang/String;

    .line 604
    const/4 v0, 0x0

    invoke-interface {p1, p2, v0, p0}, Ljavax/net/ssl/X509KeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist core-platform-api test-api close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 450
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    if-nez v0, :cond_5

    .line 453
    return-void

    .line 457
    :cond_5
    monitor-enter v0

    .line 458
    :try_start_6
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    .line 459
    .local v1, "previousState":I
    iget v2, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_10

    .line 461
    monitor-exit v0

    return-void

    .line 464
    :cond_10
    iput v3, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    .line 466
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 467
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_57

    .line 471
    :try_start_18
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->closeInbound()V

    .line 472
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->closeOutbound()V

    .line 479
    const/4 v0, 0x2

    if-lt v1, v0, :cond_2d

    .line 480
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->drainOutgoingQueue()V

    .line 481
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->closeOutbound()V
    :try_end_2d
    .catchall {:try_start_18 .. :try_end_2d} :catchall_42

    .line 487
    :cond_2d
    :try_start_2d
    invoke-super {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->close()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_39

    .line 489
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->in:Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;

    if-eqz v0, :cond_37

    .line 490
    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->release()V

    .line 493
    :cond_37
    nop

    .line 494
    return-void

    .line 489
    :catchall_39
    move-exception v0

    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->in:Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;

    if-eqz v2, :cond_41

    .line 490
    invoke-virtual {v2}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->release()V

    .line 492
    :cond_41
    throw v0

    .line 486
    :catchall_42
    move-exception v0

    .line 487
    :try_start_43
    invoke-super {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->close()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_4e

    .line 489
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->in:Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;

    if-eqz v2, :cond_4d

    .line 490
    invoke-virtual {v2}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->release()V

    .line 493
    :cond_4d
    throw v0

    .line 489
    :catchall_4e
    move-exception v0

    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->in:Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;

    if-eqz v2, :cond_56

    .line 490
    invoke-virtual {v2}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->release()V

    .line 492
    :cond_56
    throw v0

    .line 467
    .end local v1    # "previousState":I
    :catchall_57
    move-exception v1

    :try_start_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

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

    .line 412
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/conscrypt/ConscryptEngine;->exportKeyingMaterial(Ljava/lang/String;[BI)[B

    move-result-object v0

    return-object v0
.end method

.method final blacklist getActiveSession()Ljavax/net/ssl/SSLSession;
    .registers 2

    .line 322
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist core-platform-api test-api getApplicationProtocol()Ljava/lang/String;
    .registers 2

    .line 513
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getApplicationProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final blacklist getApplicationProtocols()[Ljava/lang/String;
    .registers 2

    .line 508
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

    .line 397
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getChannelId()[B

    move-result-object v0

    return-object v0
.end method

.method public final whitelist core-platform-api test-api getEnableSessionCreation()Z
    .registers 2

    .line 327
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getEnableSessionCreation()Z

    move-result v0

    return v0
.end method

.method public final whitelist core-platform-api test-api getEnabledCipherSuites()[Ljava/lang/String;
    .registers 2

    .line 342
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist core-platform-api test-api getEnabledProtocols()[Ljava/lang/String;
    .registers 2

    .line 357
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist core-platform-api test-api getHandshakeApplicationProtocol()Ljava/lang/String;
    .registers 2

    .line 518
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getHandshakeApplicationProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist core-platform-api test-api getHandshakeSession()Ljavax/net/ssl/SSLSession;
    .registers 2

    .line 305
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->handshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist core-platform-api test-api getInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->checkOpen()V

    .line 287
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->waitForHandshake()V

    .line 288
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->in:Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;

    return-object v0
.end method

.method public final whitelist core-platform-api test-api getNeedClientAuth()Z
    .registers 2

    .line 432
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getNeedClientAuth()Z

    move-result v0

    return v0
.end method

.method public final whitelist core-platform-api test-api getOutputStream()Ljava/io/OutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->checkOpen()V

    .line 298
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->waitForHandshake()V

    .line 300
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->out:Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;

    return-object v0
.end method

.method public final whitelist core-platform-api test-api getSSLParameters()Ljavax/net/ssl/SSLParameters;
    .registers 2

    .line 184
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist core-platform-api test-api getSession()Ljavax/net/ssl/SSLSession;
    .registers 2

    .line 310
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 312
    :try_start_6
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->waitForHandshake()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_a

    .line 315
    goto :goto_b

    .line 313
    :catch_a
    move-exception v0

    .line 317
    :cond_b
    :goto_b
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist core-platform-api test-api getSupportedCipherSuites()[Ljava/lang/String;
    .registers 2

    .line 337
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist core-platform-api test-api getSupportedProtocols()[Ljava/lang/String;
    .registers 2

    .line 352
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist getTlsUnique()[B
    .registers 2

    .line 407
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getTlsUnique()[B

    move-result-object v0

    return-object v0
.end method

.method public final whitelist core-platform-api test-api getUseClientMode()Z
    .registers 2

    .line 417
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getUseClientMode()Z

    move-result v0

    return v0
.end method

.method public final whitelist core-platform-api test-api getWantClientAuth()Z
    .registers 2

    .line 427
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getWantClientAuth()Z

    move-result v0

    return v0
.end method

.method public final blacklist setApplicationProtocolSelector(Lcom/android/org/conscrypt/ApplicationProtocolSelector;)V
    .registers 3
    .param p1, "selector"    # Lcom/android/org/conscrypt/ApplicationProtocolSelector;

    .line 523
    nop

    .line 524
    if-nez p1, :cond_5

    const/4 v0, 0x0

    goto :goto_a

    :cond_5
    new-instance v0, Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;

    invoke-direct {v0, p0, p1}, Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;-><init>(Ljavax/net/ssl/SSLSocket;Lcom/android/org/conscrypt/ApplicationProtocolSelector;)V

    .line 523
    :goto_a
    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->setApplicationProtocolSelector(Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;)V

    .line 525
    return-void
.end method

.method final blacklist setApplicationProtocolSelector(Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;)V
    .registers 3
    .param p1, "selector"    # Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;

    .line 529
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setApplicationProtocolSelector(Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;)V

    .line 530
    return-void
.end method

.method final blacklist setApplicationProtocols([Ljava/lang/String;)V
    .registers 3
    .param p1, "protocols"    # [Ljava/lang/String;

    .line 503
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setApplicationProtocols([Ljava/lang/String;)V

    .line 504
    return-void
.end method

.method blacklist setBufferAllocator(Lcom/android/org/conscrypt/BufferAllocator;)V
    .registers 3
    .param p1, "bufferAllocator"    # Lcom/android/org/conscrypt/BufferAllocator;

    .line 533
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setBufferAllocator(Lcom/android/org/conscrypt/BufferAllocator;)V

    .line 534
    iput-object p1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->bufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    .line 535
    return-void
.end method

.method public final blacklist setChannelIdEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 392
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setChannelIdEnabled(Z)V

    .line 393
    return-void
.end method

.method public final blacklist core-platform-api setChannelIdPrivateKey(Ljava/security/PrivateKey;)V
    .registers 3
    .param p1, "privateKey"    # Ljava/security/PrivateKey;

    .line 402
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setChannelIdPrivateKey(Ljava/security/PrivateKey;)V

    .line 403
    return-void
.end method

.method public final whitelist core-platform-api test-api setEnableSessionCreation(Z)V
    .registers 3
    .param p1, "flag"    # Z

    .line 332
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setEnableSessionCreation(Z)V

    .line 333
    return-void
.end method

.method public final whitelist core-platform-api test-api setEnabledCipherSuites([Ljava/lang/String;)V
    .registers 3
    .param p1, "suites"    # [Ljava/lang/String;

    .line 347
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 348
    return-void
.end method

.method public final whitelist core-platform-api test-api setEnabledProtocols([Ljava/lang/String;)V
    .registers 3
    .param p1, "protocols"    # [Ljava/lang/String;

    .line 362
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setEnabledProtocols([Ljava/lang/String;)V

    .line 363
    return-void
.end method

.method public blacklist core-platform-api setHandshakeTimeout(I)V
    .registers 2
    .param p1, "handshakeTimeoutMilliseconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 499
    return-void
.end method

.method public final greylist-max-q core-platform-api setHostname(Ljava/lang/String;)V
    .registers 3
    .param p1, "hostname"    # Ljava/lang/String;

    .line 377
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setHostname(Ljava/lang/String;)V

    .line 378
    invoke-super {p0, p1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setHostname(Ljava/lang/String;)V

    .line 379
    return-void
.end method

.method public final whitelist core-platform-api test-api setNeedClientAuth(Z)V
    .registers 3
    .param p1, "need"    # Z

    .line 437
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setNeedClientAuth(Z)V

    .line 438
    return-void
.end method

.method public final whitelist core-platform-api test-api setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    .registers 3
    .param p1, "sslParameters"    # Ljavax/net/ssl/SSLParameters;

    .line 189
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    .line 190
    return-void
.end method

.method public final whitelist core-platform-api test-api setUseClientMode(Z)V
    .registers 3
    .param p1, "mode"    # Z

    .line 422
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setUseClientMode(Z)V

    .line 423
    return-void
.end method

.method public final greylist-max-q core-platform-api setUseSessionTickets(Z)V
    .registers 3
    .param p1, "useSessionTickets"    # Z

    .line 387
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setUseSessionTickets(Z)V

    .line 388
    return-void
.end method

.method public final whitelist core-platform-api test-api setWantClientAuth(Z)V
    .registers 3
    .param p1, "want"    # Z

    .line 442
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setWantClientAuth(Z)V

    .line 443
    return-void
.end method

.method public final whitelist core-platform-api test-api startHandshake()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->checkOpen()V

    .line 197
    :try_start_3
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->handshakeLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_6
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_6} :catch_41
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_3c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_33

    .line 200
    :try_start_6
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_30

    .line 202
    :try_start_9
    iget v2, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    if-nez v2, :cond_2a

    .line 203
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    .line 204
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v2}, Lcom/android/org/conscrypt/ConscryptEngine;->beginHandshake()V

    .line 205
    new-instance v2, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;

    invoke-direct {v2, p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;-><init>(Lcom/android/org/conscrypt/ConscryptEngineSocket;)V

    iput-object v2, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->in:Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;

    .line 206
    new-instance v2, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;

    invoke-direct {v2, p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;-><init>(Lcom/android/org/conscrypt/ConscryptEngineSocket;)V

    iput-object v2, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->out:Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;

    .line 215
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_9 .. :try_end_24} :catchall_2d

    .line 217
    :try_start_24
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->doHandshake()V

    .line 218
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_30

    .line 229
    nop

    .line 230
    return-void

    .line 213
    :cond_2a
    :try_start_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_2d

    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_30

    return-void

    .line 215
    :catchall_2d
    move-exception v2

    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngineSocket;
    :try_start_2f
    throw v2

    .line 218
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngineSocket;
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_30

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngineSocket;
    :try_start_32
    throw v1
    :try_end_33
    .catch Ljavax/net/ssl/SSLException; {:try_start_32 .. :try_end_33} :catch_41
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_33} :catch_3c
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_33} :catch_33

    .line 225
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngineSocket;
    :catch_33
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->close()V

    .line 228
    invoke-static {v0}, Lcom/android/org/conscrypt/SSLUtils;->toSSLHandshakeException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLHandshakeException;

    move-result-object v1

    throw v1

    .line 222
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3c
    move-exception v0

    .line 223
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->close()V

    .line 224
    throw v0

    .line 219
    .end local v0    # "e":Ljava/io/IOException;
    :catch_41
    move-exception v0

    .line 220
    .local v0, "e":Ljavax/net/ssl/SSLException;
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->close()V

    .line 221
    throw v0
.end method
