.class public Lsun/net/NetworkClient;
.super Ljava/lang/Object;
.source "NetworkClient.java"


# static fields
.field public static final blacklist DEFAULT_CONNECT_TIMEOUT:I = -0x1

.field public static final blacklist DEFAULT_READ_TIMEOUT:I = -0x1

.field protected static blacklist defaultConnectTimeout:I

.field protected static blacklist defaultSoTimeout:I

.field protected static blacklist encoding:Ljava/lang/String;


# instance fields
.field protected blacklist connectTimeout:I

.field protected blacklist proxy:Ljava/net/Proxy;

.field protected blacklist readTimeout:I

.field public blacklist serverInput:Ljava/io/InputStream;

.field public blacklist serverOutput:Ljava/io/PrintStream;

.field protected blacklist serverSocket:Ljava/net/Socket;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 68
    const-string v0, "ISO8859_1"

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_38

    .line 69
    .local v1, "vals":[I
    const/4 v2, 0x0

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "encs":[Ljava/lang/String;
    new-instance v3, Lsun/net/NetworkClient$1;

    invoke-direct {v3, v1, v2}, Lsun/net/NetworkClient$1;-><init>([I[Ljava/lang/String;)V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 80
    const/4 v3, 0x0

    aget v4, v1, v3

    if-eqz v4, :cond_1e

    .line 81
    aget v4, v1, v3

    sput v4, Lsun/net/NetworkClient;->defaultSoTimeout:I

    .line 83
    :cond_1e
    const/4 v4, 0x1

    aget v5, v1, v4

    if-eqz v5, :cond_27

    .line 84
    aget v4, v1, v4

    sput v4, Lsun/net/NetworkClient;->defaultConnectTimeout:I

    .line 87
    :cond_27
    aget-object v3, v2, v3

    sput-object v3, Lsun/net/NetworkClient;->encoding:Ljava/lang/String;

    .line 89
    :try_start_2b
    invoke-static {v3}, Lsun/net/NetworkClient;->isASCIISuperset(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_33

    .line 90
    sput-object v0, Lsun/net/NetworkClient;->encoding:Ljava/lang/String;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_33} :catch_34

    .line 94
    :cond_33
    goto :goto_37

    .line 92
    :catch_34
    move-exception v3

    .line 93
    .local v3, "e":Ljava/lang/Exception;
    sput-object v0, Lsun/net/NetworkClient;->encoding:Ljava/lang/String;

    .line 95
    .end local v1    # "vals":[I
    .end local v2    # "encs":[Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_37
    return-void

    :array_38
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    iput-object v0, p0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lsun/net/NetworkClient;->readTimeout:I

    .line 63
    iput v0, p0, Lsun/net/NetworkClient;->connectTimeout:I

    .line 233
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    iput-object v0, p0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lsun/net/NetworkClient;->readTimeout:I

    .line 63
    iput v0, p0, Lsun/net/NetworkClient;->connectTimeout:I

    .line 230
    invoke-virtual {p0, p1, p2}, Lsun/net/NetworkClient;->openServer(Ljava/lang/String;I)V

    .line 231
    return-void
.end method

.method private static blacklist isASCIISuperset(Ljava/lang/String;)Z
    .registers 5
    .param p0, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 117
    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz-_.!~*\'();/?:@&=+$,"

    .line 121
    .local v0, "chkS":Ljava/lang/String;
    const/16 v1, 0x51

    new-array v1, v1, [B

    fill-array-data v1, :array_12

    .line 127
    .local v1, "chkB":[B
    invoke-virtual {v0, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 128
    .local v2, "b":[B
    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    return v3

    :array_12
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x2dt
        0x5ft
        0x2et
        0x21t
        0x7et
        0x2at
        0x27t
        0x28t
        0x29t
        0x3bt
        0x2ft
        0x3ft
        0x3at
        0x40t
        0x26t
        0x3dt
        0x2bt
        0x24t
        0x2ct
    .end array-data
.end method


# virtual methods
.method public blacklist closeServer()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    invoke-virtual {p0}, Lsun/net/NetworkClient;->serverIsOpen()Z

    move-result v0

    if-nez v0, :cond_7

    .line 215
    return-void

    .line 217
    :cond_7
    iget-object v0, p0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    .line 219
    iput-object v0, p0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    .line 220
    iput-object v0, p0, Lsun/net/NetworkClient;->serverOutput:Ljava/io/PrintStream;

    .line 221
    return-void
.end method

.method protected blacklist createSocket()Ljava/net/Socket;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    return-object v0
.end method

.method protected blacklist doConnect(Ljava/lang/String;I)Ljava/net/Socket;
    .registers 6
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    if-eqz v0, :cond_2f

    .line 155
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_18

    .line 156
    new-instance v0, Lsun/net/NetworkClient$2;

    invoke-direct {v0, p0}, Lsun/net/NetworkClient$2;-><init>(Lsun/net/NetworkClient;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    .local v0, "s":Ljava/net/Socket;
    goto :goto_33

    .line 161
    .end local v0    # "s":Ljava/net/Socket;
    :cond_18
    iget-object v0, p0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_27

    .line 162
    invoke-virtual {p0}, Lsun/net/NetworkClient;->createSocket()Ljava/net/Socket;

    move-result-object v0

    .restart local v0    # "s":Ljava/net/Socket;
    goto :goto_33

    .line 166
    .end local v0    # "s":Ljava/net/Socket;
    :cond_27
    new-instance v0, Ljava/net/Socket;

    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    .restart local v0    # "s":Ljava/net/Socket;
    goto :goto_33

    .line 169
    .end local v0    # "s":Ljava/net/Socket;
    :cond_2f
    invoke-virtual {p0}, Lsun/net/NetworkClient;->createSocket()Ljava/net/Socket;

    move-result-object v0

    .line 174
    .restart local v0    # "s":Ljava/net/Socket;
    :goto_33
    iget v1, p0, Lsun/net/NetworkClient;->connectTimeout:I

    if-ltz v1, :cond_42

    .line 175
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iget v2, p0, Lsun/net/NetworkClient;->connectTimeout:I

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    goto :goto_59

    .line 177
    :cond_42
    sget v1, Lsun/net/NetworkClient;->defaultConnectTimeout:I

    if-lez v1, :cond_51

    .line 178
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    sget v2, Lsun/net/NetworkClient;->defaultConnectTimeout:I

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    goto :goto_59

    .line 180
    :cond_51
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    .line 183
    :goto_59
    iget v1, p0, Lsun/net/NetworkClient;->readTimeout:I

    if-ltz v1, :cond_61

    .line 184
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    goto :goto_68

    .line 185
    :cond_61
    sget v1, Lsun/net/NetworkClient;->defaultSoTimeout:I

    if-lez v1, :cond_68

    .line 186
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 188
    :cond_68
    :goto_68
    return-object v0
.end method

.method public blacklist getConnectTimeout()I
    .registers 2

    .line 240
    iget v0, p0, Lsun/net/NetworkClient;->connectTimeout:I

    return v0
.end method

.method protected blacklist getLocalAddress()Ljava/net/InetAddress;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    if-eqz v0, :cond_10

    .line 203
    new-instance v0, Lsun/net/NetworkClient$3;

    invoke-direct {v0, p0}, Lsun/net/NetworkClient$3;-><init>(Lsun/net/NetworkClient;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    return-object v0

    .line 202
    :cond_10
    new-instance v0, Ljava/io/IOException;

    const-string v1, "not connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getReadTimeout()I
    .registers 2

    .line 271
    iget v0, p0, Lsun/net/NetworkClient;->readTimeout:I

    return v0
.end method

.method public blacklist openServer(Ljava/lang/String;I)V
    .registers 7
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    if-eqz v0, :cond_7

    .line 135
    invoke-virtual {p0}, Lsun/net/NetworkClient;->closeServer()V

    .line 136
    :cond_7
    invoke-virtual {p0, p1, p2}, Lsun/net/NetworkClient;->doConnect(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    .line 138
    :try_start_d
    new-instance v1, Ljava/io/PrintStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    .line 139
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v0, 0x1

    sget-object v3, Lsun/net/NetworkClient;->encoding:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    iput-object v1, p0, Lsun/net/NetworkClient;->serverOutput:Ljava/io/PrintStream;
    :try_end_20
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d .. :try_end_20} :catch_2f

    .line 143
    nop

    .line 144
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    .line 145
    return-void

    .line 141
    :catch_2f
    move-exception v0

    .line 142
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/InternalError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lsun/net/NetworkClient;->encoding:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "encoding not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist serverIsOpen()Z
    .registers 2

    .line 225
    iget-object v0, p0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist setConnectTimeout(I)V
    .registers 2
    .param p1, "timeout"    # I

    .line 236
    iput p1, p0, Lsun/net/NetworkClient;->connectTimeout:I

    .line 237
    return-void
.end method

.method public blacklist setReadTimeout(I)V
    .registers 3
    .param p1, "timeout"    # I

    .line 257
    const/4 v0, -0x1

    if-ne p1, v0, :cond_5

    .line 258
    sget p1, Lsun/net/NetworkClient;->defaultSoTimeout:I

    .line 260
    :cond_5
    iget-object v0, p0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    if-eqz v0, :cond_10

    if-ltz p1, :cond_10

    .line 262
    :try_start_b
    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_f

    .line 265
    goto :goto_10

    .line 263
    :catch_f
    move-exception v0

    .line 267
    :cond_10
    :goto_10
    iput p1, p0, Lsun/net/NetworkClient;->readTimeout:I

    .line 268
    return-void
.end method
