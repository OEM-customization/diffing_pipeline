.class Ljava/net/SocksSocketImpl;
.super Ljava/net/PlainSocketImpl;
.source "SocksSocketImpl.java"

# interfaces
.implements Ljava/net/SocksConsts;


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private applicationSetProxy:Z

.field private cmdIn:Ljava/io/InputStream;

.field private cmdOut:Ljava/io/OutputStream;

.field private cmdsock:Ljava/net/Socket;

.field private external_address:Ljava/net/InetSocketAddress;

.field private server:Ljava/lang/String;

.field private serverPort:I

.field private useV4:Z


# direct methods
.method static synthetic -get0(Ljava/net/SocksSocketImpl;)Ljava/lang/String;
    .registers 2
    .param p0, "-this"    # Ljava/net/SocksSocketImpl;

    .prologue
    iget-object v0, p0, Ljava/net/SocksSocketImpl;->server:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Ljava/net/SocksSocketImpl;)I
    .registers 2
    .param p0, "-this"    # Ljava/net/SocksSocketImpl;

    .prologue
    iget v0, p0, Ljava/net/SocksSocketImpl;->serverPort:I

    return v0
.end method

.method static synthetic -set0(Ljava/net/SocksSocketImpl;Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 2
    .param p0, "-this"    # Ljava/net/SocksSocketImpl;
    .param p1, "-value"    # Ljava/io/InputStream;

    .prologue
    iput-object p1, p0, Ljava/net/SocksSocketImpl;->cmdIn:Ljava/io/InputStream;

    return-object p1
.end method

.method static synthetic -set1(Ljava/net/SocksSocketImpl;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .registers 2
    .param p0, "-this"    # Ljava/net/SocksSocketImpl;
    .param p1, "-value"    # Ljava/io/OutputStream;

    .prologue
    iput-object p1, p0, Ljava/net/SocksSocketImpl;->cmdOut:Ljava/io/OutputStream;

    return-object p1
.end method

.method static synthetic -wrap0(Ljava/net/SocksSocketImpl;Ljava/lang/String;II)V
    .registers 4
    .param p0, "-this"    # Ljava/net/SocksSocketImpl;
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "timeout"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Ljava/net/SocksSocketImpl;->superConnectServer(Ljava/lang/String;II)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Ljava/net/SocksSocketImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/net/SocksSocketImpl;->-assertionsDisabled:Z

    .line 43
    return-void
.end method

.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/net/PlainSocketImpl;-><init>()V

    .line 44
    iput-object v1, p0, Ljava/net/SocksSocketImpl;->server:Ljava/lang/String;

    .line 45
    const/16 v0, 0x438

    iput v0, p0, Ljava/net/SocksSocketImpl;->serverPort:I

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/SocksSocketImpl;->useV4:Z

    .line 48
    iput-object v1, p0, Ljava/net/SocksSocketImpl;->cmdsock:Ljava/net/Socket;

    .line 49
    iput-object v1, p0, Ljava/net/SocksSocketImpl;->cmdIn:Ljava/io/InputStream;

    .line 50
    iput-object v1, p0, Ljava/net/SocksSocketImpl;->cmdOut:Ljava/io/OutputStream;

    .line 57
    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .registers 6
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    const/16 v0, 0x438

    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Ljava/net/PlainSocketImpl;-><init>()V

    .line 44
    iput-object v2, p0, Ljava/net/SocksSocketImpl;->server:Ljava/lang/String;

    .line 45
    iput v0, p0, Ljava/net/SocksSocketImpl;->serverPort:I

    .line 47
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/net/SocksSocketImpl;->useV4:Z

    .line 48
    iput-object v2, p0, Ljava/net/SocksSocketImpl;->cmdsock:Ljava/net/Socket;

    .line 49
    iput-object v2, p0, Ljava/net/SocksSocketImpl;->cmdIn:Ljava/io/InputStream;

    .line 50
    iput-object v2, p0, Ljava/net/SocksSocketImpl;->cmdOut:Ljava/io/OutputStream;

    .line 60
    iput-object p1, p0, Ljava/net/SocksSocketImpl;->server:Ljava/lang/String;

    .line 61
    const/4 v1, -0x1

    if-ne p2, v1, :cond_19

    move p2, v0

    .end local p2    # "port":I
    :cond_19
    iput p2, p0, Ljava/net/SocksSocketImpl;->serverPort:I

    .line 62
    return-void
.end method

.method constructor <init>(Ljava/net/Proxy;)V
    .registers 6
    .param p1, "proxy"    # Ljava/net/Proxy;

    .prologue
    const/4 v3, 0x0

    .line 64
    invoke-direct {p0}, Ljava/net/PlainSocketImpl;-><init>()V

    .line 44
    iput-object v3, p0, Ljava/net/SocksSocketImpl;->server:Ljava/lang/String;

    .line 45
    const/16 v2, 0x438

    iput v2, p0, Ljava/net/SocksSocketImpl;->serverPort:I

    .line 47
    const/4 v2, 0x0

    iput-boolean v2, p0, Ljava/net/SocksSocketImpl;->useV4:Z

    .line 48
    iput-object v3, p0, Ljava/net/SocksSocketImpl;->cmdsock:Ljava/net/Socket;

    .line 49
    iput-object v3, p0, Ljava/net/SocksSocketImpl;->cmdIn:Ljava/io/InputStream;

    .line 50
    iput-object v3, p0, Ljava/net/SocksSocketImpl;->cmdOut:Ljava/io/OutputStream;

    .line 65
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    .line 66
    .local v0, "a":Ljava/net/SocketAddress;
    instance-of v2, v0, Ljava/net/InetSocketAddress;

    if-eqz v2, :cond_2a

    move-object v1, v0

    .line 67
    check-cast v1, Ljava/net/InetSocketAddress;

    .line 69
    .local v1, "ad":Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/net/SocksSocketImpl;->server:Ljava/lang/String;

    .line 70
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    iput v2, p0, Ljava/net/SocksSocketImpl;->serverPort:I

    .line 72
    .end local v1    # "ad":Ljava/net/InetSocketAddress;
    :cond_2a
    return-void
.end method

.method private authenticate(BLjava/io/InputStream;Ljava/io/BufferedOutputStream;)Z
    .registers 10
    .param p1, "method"    # B
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "out"    # Ljava/io/BufferedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Ljava/net/SocksSocketImpl;->authenticate(BLjava/io/InputStream;Ljava/io/BufferedOutputStream;J)Z

    move-result v0

    return v0
.end method

.method private authenticate(BLjava/io/InputStream;Ljava/io/BufferedOutputStream;J)Z
    .registers 16
    .param p1, "method"    # B
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "out"    # Ljava/io/BufferedOutputStream;
    .param p4, "deadlineMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    if-nez p1, :cond_4

    .line 148
    const/4 v7, 0x1

    return v7

    .line 154
    :cond_4
    const/4 v7, 0x2

    if-ne p1, v7, :cond_9a

    .line 156
    const/4 v3, 0x0

    .line 157
    .local v3, "password":Ljava/lang/String;
    iget-object v7, p0, Ljava/net/SocksSocketImpl;->server:Ljava/lang/String;

    invoke-static {v7}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 160
    .local v0, "addr":Ljava/net/InetAddress;
    new-instance v7, Ljava/net/SocksSocketImpl$2;

    invoke-direct {v7, p0, v0}, Ljava/net/SocksSocketImpl$2;-><init>(Ljava/net/SocksSocketImpl;Ljava/net/InetAddress;)V

    .line 159
    invoke-static {v7}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/PasswordAuthentication;

    .line 166
    .local v4, "pw":Ljava/net/PasswordAuthentication;
    if-eqz v4, :cond_2c

    .line 167
    invoke-virtual {v4}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v6

    .line 168
    .local v6, "userName":Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    .end local v3    # "password":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/String;-><init>([C)V

    .line 173
    :goto_28
    if-nez v6, :cond_3b

    .line 174
    const/4 v7, 0x0

    return v7

    .line 171
    .end local v6    # "userName":Ljava/lang/String;
    .restart local v3    # "password":Ljava/lang/String;
    :cond_2c
    new-instance v7, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v8, "user.name"

    invoke-direct {v7, v8}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-static {v7}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .restart local v6    # "userName":Ljava/lang/String;
    goto :goto_28

    .line 175
    .end local v3    # "password":Ljava/lang/String;
    :cond_3b
    const/4 v7, 0x1

    invoke-virtual {p3, v7}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 176
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p3, v7}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 178
    :try_start_46
    const-string/jumbo v7, "ISO-8859-1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_50
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_46 .. :try_end_50} :catch_7d

    .line 182
    :cond_50
    if-eqz v3, :cond_93

    .line 183
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p3, v7}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 185
    :try_start_59
    const-string/jumbo v7, "ISO-8859-1"

    invoke-virtual {v3, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_63
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_59 .. :try_end_63} :catch_88

    .line 191
    :cond_63
    :goto_63
    invoke-virtual {p3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 192
    const/4 v7, 0x2

    new-array v1, v7, [B

    .line 193
    .local v1, "data":[B
    invoke-direct {p0, p2, v1, p4, p5}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    move-result v2

    .line 194
    .local v2, "i":I
    const/4 v7, 0x2

    if-ne v2, v7, :cond_75

    const/4 v7, 0x1

    aget-byte v7, v1, v7

    if-eqz v7, :cond_98

    .line 197
    :cond_75
    invoke-virtual {p3}, Ljava/io/BufferedOutputStream;->close()V

    .line 198
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 199
    const/4 v7, 0x0

    return v7

    .line 179
    .end local v1    # "data":[B
    .end local v2    # "i":I
    :catch_7d
    move-exception v5

    .line 180
    .local v5, "uee":Ljava/io/UnsupportedEncodingException;
    sget-boolean v7, Ljava/net/SocksSocketImpl;->-assertionsDisabled:Z

    if-nez v7, :cond_50

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 186
    .end local v5    # "uee":Ljava/io/UnsupportedEncodingException;
    :catch_88
    move-exception v5

    .line 187
    .restart local v5    # "uee":Ljava/io/UnsupportedEncodingException;
    sget-boolean v7, Ljava/net/SocksSocketImpl;->-assertionsDisabled:Z

    if-nez v7, :cond_63

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 190
    .end local v5    # "uee":Ljava/io/UnsupportedEncodingException;
    :cond_93
    const/4 v7, 0x0

    invoke-virtual {p3, v7}, Ljava/io/BufferedOutputStream;->write(I)V

    goto :goto_63

    .line 202
    .restart local v1    # "data":[B
    .restart local v2    # "i":I
    :cond_98
    const/4 v7, 0x1

    return v7

    .line 258
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "data":[B
    .end local v2    # "i":I
    .end local v4    # "pw":Ljava/net/PasswordAuthentication;
    .end local v6    # "userName":Ljava/lang/String;
    :cond_9a
    const/4 v7, 0x0

    return v7
.end method

.method private connectV4(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/net/InetSocketAddress;J)V
    .registers 16
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "endpoint"    # Ljava/net/InetSocketAddress;
    .param p4, "deadlineMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 264
    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    instance-of v5, v5, Ljava/net/Inet4Address;

    if-nez v5, :cond_16

    .line 265
    new-instance v5, Ljava/net/SocketException;

    const-string/jumbo v6, "SOCKS V4 requires IPv4 only addresses"

    invoke-direct {v5, v6}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 267
    :cond_16
    invoke-virtual {p2, v8}, Ljava/io/OutputStream;->write(I)V

    .line 268
    invoke-virtual {p2, v7}, Ljava/io/OutputStream;->write(I)V

    .line 269
    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    shr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {p2, v5}, Ljava/io/OutputStream;->write(I)V

    .line 270
    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    shr-int/lit8 v5, v5, 0x0

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {p2, v5}, Ljava/io/OutputStream;->write(I)V

    .line 271
    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/OutputStream;->write([B)V

    .line 272
    invoke-direct {p0}, Ljava/net/SocksSocketImpl;->getUserName()Ljava/lang/String;

    move-result-object v4

    .line 274
    .local v4, "userName":Ljava/lang/String;
    :try_start_41
    const-string/jumbo v5, "ISO-8859-1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/OutputStream;->write([B)V
    :try_end_4b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_41 .. :try_end_4b} :catch_73

    .line 278
    :cond_4b
    invoke-virtual {p2, v6}, Ljava/io/OutputStream;->write(I)V

    .line 279
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 280
    new-array v0, v9, [B

    .line 281
    .local v0, "data":[B
    invoke-direct {p0, p1, v0, p4, p5}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    move-result v2

    .line 282
    .local v2, "n":I
    if-eq v2, v9, :cond_7e

    .line 283
    new-instance v5, Ljava/net/SocketException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Reply from SOCKS server has bad length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 275
    .end local v0    # "data":[B
    .end local v2    # "n":I
    :catch_73
    move-exception v3

    .line 276
    .local v3, "uee":Ljava/io/UnsupportedEncodingException;
    sget-boolean v5, Ljava/net/SocksSocketImpl;->-assertionsDisabled:Z

    if-nez v5, :cond_4b

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 284
    .end local v3    # "uee":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "data":[B
    .restart local v2    # "n":I
    :cond_7e
    aget-byte v5, v0, v6

    if-eqz v5, :cond_8f

    aget-byte v5, v0, v6

    if-eq v5, v8, :cond_8f

    .line 285
    new-instance v5, Ljava/net/SocketException;

    const-string/jumbo v6, "Reply from SOCKS server has bad version"

    invoke-direct {v5, v6}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 286
    :cond_8f
    const/4 v1, 0x0

    .line 287
    .local v1, "ex":Ljava/net/SocketException;
    aget-byte v5, v0, v7

    packed-switch v5, :pswitch_data_c6

    .line 302
    new-instance v1, Ljava/net/SocketException;

    .end local v1    # "ex":Ljava/net/SocketException;
    const-string/jumbo v5, "Reply from SOCKS server contains bad status"

    invoke-direct {v1, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 305
    :goto_9d
    if-eqz v1, :cond_c4

    .line 306
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 307
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 308
    throw v1

    .line 290
    .restart local v1    # "ex":Ljava/net/SocketException;
    :pswitch_a6
    iput-object p3, p0, Ljava/net/SocksSocketImpl;->external_address:Ljava/net/InetSocketAddress;

    goto :goto_9d

    .line 293
    :pswitch_a9
    new-instance v1, Ljava/net/SocketException;

    .end local v1    # "ex":Ljava/net/SocketException;
    const-string/jumbo v5, "SOCKS request rejected"

    invoke-direct {v1, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 294
    .local v1, "ex":Ljava/net/SocketException;
    goto :goto_9d

    .line 296
    .local v1, "ex":Ljava/net/SocketException;
    :pswitch_b2
    new-instance v1, Ljava/net/SocketException;

    .end local v1    # "ex":Ljava/net/SocketException;
    const-string/jumbo v5, "SOCKS server couldn\'t reach destination"

    invoke-direct {v1, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 297
    .local v1, "ex":Ljava/net/SocketException;
    goto :goto_9d

    .line 299
    .local v1, "ex":Ljava/net/SocketException;
    :pswitch_bb
    new-instance v1, Ljava/net/SocketException;

    .end local v1    # "ex":Ljava/net/SocketException;
    const-string/jumbo v5, "SOCKS authentication failed"

    invoke-direct {v1, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 300
    .local v1, "ex":Ljava/net/SocketException;
    goto :goto_9d

    .line 310
    .end local v1    # "ex":Ljava/net/SocketException;
    :cond_c4
    return-void

    .line 287
    nop

    :pswitch_data_c6
    .packed-switch 0x5a
        :pswitch_a6
        :pswitch_a9
        :pswitch_b2
        :pswitch_bb
    .end packed-switch
.end method

.method private getUserName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 558
    const-string/jumbo v1, ""

    .line 559
    .local v1, "userName":Ljava/lang/String;
    iget-boolean v2, p0, Ljava/net/SocksSocketImpl;->applicationSetProxy:Z

    if-eqz v2, :cond_f

    .line 561
    :try_start_7
    const-string/jumbo v2, "user.name"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_d} :catch_1e

    move-result-object v1

    .line 567
    :goto_e
    return-object v1

    .line 565
    :cond_f
    new-instance v2, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v3, "user.name"

    invoke-direct {v2, v3}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    .line 564
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "userName":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "userName":Ljava/lang/String;
    goto :goto_e

    .line 562
    :catch_1e
    move-exception v0

    .local v0, "se":Ljava/lang/SecurityException;
    goto :goto_e
.end method

.method private declared-synchronized privilegedConnect(Ljava/lang/String;II)V
    .registers 6
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 85
    :try_start_1
    new-instance v1, Ljava/net/SocksSocketImpl$1;

    invoke-direct {v1, p0, p1, p2, p3}, Ljava/net/SocksSocketImpl$1;-><init>(Ljava/net/SocksSocketImpl;Ljava/lang/String;II)V

    .line 84
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/security/PrivilegedActionException; {:try_start_1 .. :try_end_9} :catch_b
    .catchall {:try_start_1 .. :try_end_9} :catchall_13

    monitor-exit p0

    .line 96
    return-void

    .line 93
    :catch_b
    move-exception v0

    .line 94
    .local v0, "pae":Ljava/security/PrivilegedActionException;
    :try_start_c
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    throw v1
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_13

    .end local v0    # "pae":Ljava/security/PrivilegedActionException;
    :catchall_13
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private readSocksReply(Ljava/io/InputStream;[B)I
    .registers 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    move-result v0

    return v0
.end method

.method private readSocksReply(Ljava/io/InputStream;[BJ)I
    .registers 14
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "data"    # [B
    .param p3, "deadlineMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    array-length v4, p2

    .line 120
    .local v4, "len":I
    const/4 v5, 0x0

    .line 121
    .local v5, "received":I
    const/4 v1, 0x0

    .local v1, "attempts":I
    :goto_3
    if-ge v5, v4, :cond_2f

    const/4 v6, 0x3

    if-ge v1, v6, :cond_2f

    .line 124
    :try_start_8
    move-object v0, p1

    check-cast v0, Ljava/net/SocketInputStream;

    move-object v6, v0

    sub-int v7, v4, v5

    invoke-static {p3, p4}, Ljava/net/SocksSocketImpl;->remainingMillis(J)I

    move-result v8

    invoke-virtual {v6, p2, v5, v7, v8}, Ljava/net/SocketInputStream;->read([BIII)I
    :try_end_15
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_15} :catch_21

    move-result v2

    .line 128
    .local v2, "count":I
    if-gez v2, :cond_2b

    .line 129
    new-instance v6, Ljava/net/SocketException;

    const-string/jumbo v7, "Malformed reply from SOCKS server"

    invoke-direct {v6, v7}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 125
    .end local v2    # "count":I
    :catch_21
    move-exception v3

    .line 126
    .local v3, "e":Ljava/net/SocketTimeoutException;
    new-instance v6, Ljava/net/SocketTimeoutException;

    const-string/jumbo v7, "Connect timed out"

    invoke-direct {v6, v7}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 130
    .end local v3    # "e":Ljava/net/SocketTimeoutException;
    .restart local v2    # "count":I
    :cond_2b
    add-int/2addr v5, v2

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 132
    .end local v2    # "count":I
    :cond_2f
    return v5
.end method

.method private static remainingMillis(J)I
    .registers 8
    .param p0, "deadlineMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 104
    cmp-long v2, p0, v4

    if-nez v2, :cond_8

    .line 105
    const/4 v2, 0x0

    return v2

    .line 107
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, p0, v2

    .line 108
    .local v0, "remaining":J
    cmp-long v2, v0, v4

    if-lez v2, :cond_14

    .line 109
    long-to-int v2, v0

    return v2

    .line 111
    :cond_14
    new-instance v2, Ljava/net/SocketTimeoutException;

    invoke-direct {v2}, Ljava/net/SocketTimeoutException;-><init>()V

    throw v2
.end method

.method private superConnectServer(Ljava/lang/String;II)V
    .registers 5
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-super {p0, v0, p3}, Ljava/net/PlainSocketImpl;->connect(Ljava/net/SocketAddress;I)V

    .line 101
    return-void
.end method


# virtual methods
.method protected close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 551
    iget-object v0, p0, Ljava/net/SocksSocketImpl;->cmdsock:Ljava/net/Socket;

    if-eqz v0, :cond_a

    .line 552
    iget-object v0, p0, Ljava/net/SocksSocketImpl;->cmdsock:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 553
    :cond_a
    iput-object v1, p0, Ljava/net/SocksSocketImpl;->cmdsock:Ljava/net/Socket;

    .line 554
    invoke-super {p0}, Ljava/net/PlainSocketImpl;->close()V

    .line 555
    return-void
.end method

.method protected connect(Ljava/net/SocketAddress;I)V
    .registers 28
    .param p1, "endpoint"    # Ljava/net/SocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 330
    if-nez p2, :cond_1b

    .line 331
    const-wide/16 v6, 0x0

    .line 337
    .local v6, "deadlineMillis":J
    :goto_4
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v23

    .line 338
    .local v23, "security":Ljava/lang/SecurityManager;
    if-eqz p1, :cond_12

    move-object/from16 v0, p1

    instance-of v2, v0, Ljava/net/InetSocketAddress;

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_33

    .line 339
    :cond_12
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "Unsupported address type"

    invoke-direct {v2, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 333
    .end local v6    # "deadlineMillis":J
    .end local v23    # "security":Ljava/lang/SecurityManager;
    :cond_1b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move/from16 v0, p2

    int-to-long v10, v0

    add-long v18, v8, v10

    .line 334
    .local v18, "finish":J
    const-wide/16 v8, 0x0

    cmp-long v2, v18, v8

    if-gez v2, :cond_30

    const-wide v6, 0x7fffffffffffffffL

    .restart local v6    # "deadlineMillis":J
    goto :goto_4

    .end local v6    # "deadlineMillis":J
    :cond_30
    move-wide/from16 v6, v18

    .restart local v6    # "deadlineMillis":J
    goto :goto_4

    .end local v18    # "finish":J
    .restart local v23    # "security":Ljava/lang/SecurityManager;
    :cond_33
    move-object/from16 v5, p1

    .line 340
    check-cast v5, Ljava/net/InetSocketAddress;

    .line 341
    .local v5, "epoint":Ljava/net/InetSocketAddress;
    if-eqz v23, :cond_4c

    .line 342
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 343
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    .line 344
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v8

    .line 343
    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v8}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 349
    :cond_4c
    :goto_4c
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/net/SocksSocketImpl;->server:Ljava/lang/String;

    if-nez v2, :cond_6e

    .line 357
    invoke-static {v6, v7}, Ljava/net/SocksSocketImpl;->remainingMillis(J)I

    move-result v2

    move-object/from16 v0, p0

    invoke-super {v0, v5, v2}, Ljava/net/PlainSocketImpl;->connect(Ljava/net/SocketAddress;I)V

    .line 358
    return-void

    .line 346
    :cond_5c
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 347
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v8

    .line 346
    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v8}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    goto :goto_4c

    .line 362
    :cond_6e
    :try_start_6e
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/net/SocksSocketImpl;->server:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Ljava/net/SocksSocketImpl;->serverPort:I

    invoke-static {v6, v7}, Ljava/net/SocksSocketImpl;->remainingMillis(J)I

    move-result v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v8, v9}, Ljava/net/SocksSocketImpl;->privilegedConnect(Ljava/lang/String;II)V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_7f} :catch_a4

    .line 369
    new-instance v4, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/net/SocksSocketImpl;->cmdOut:Ljava/io/OutputStream;

    const/16 v8, 0x200

    invoke-direct {v4, v2, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 370
    .local v4, "out":Ljava/io/BufferedOutputStream;
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/net/SocksSocketImpl;->cmdIn:Ljava/io/InputStream;

    .line 372
    .local v3, "in":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Ljava/net/SocksSocketImpl;->useV4:Z

    if-eqz v2, :cond_b5

    .line 375
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v2

    if-eqz v2, :cond_af

    .line 376
    new-instance v2, Ljava/net/UnknownHostException;

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 363
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    :catch_a4
    move-exception v16

    .line 364
    .local v16, "e":Ljava/io/IOException;
    new-instance v2, Ljava/net/SocketException;

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v16    # "e":Ljava/io/IOException;
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "out":Ljava/io/BufferedOutputStream;
    :cond_af
    move-object/from16 v2, p0

    .line 377
    invoke-direct/range {v2 .. v7}, Ljava/net/SocksSocketImpl;->connectV4(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/net/InetSocketAddress;J)V

    .line 378
    return-void

    .line 382
    :cond_b5
    const/4 v2, 0x5

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 383
    const/4 v2, 0x2

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 384
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 385
    const/4 v2, 0x2

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 386
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 387
    const/4 v2, 0x2

    new-array v15, v2, [B

    .line 388
    .local v15, "data":[B
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15, v6, v7}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    move-result v21

    .line 389
    .local v21, "i":I
    const/4 v2, 0x2

    move/from16 v0, v21

    if-ne v0, v2, :cond_dc

    const/4 v2, 0x0

    aget-byte v2, v15, v2

    const/4 v8, 0x5

    if-eq v2, v8, :cond_f2

    .line 394
    :cond_dc
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v2

    if-eqz v2, :cond_ec

    .line 395
    new-instance v2, Ljava/net/UnknownHostException;

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_ec
    move-object/from16 v2, p0

    .line 396
    invoke-direct/range {v2 .. v7}, Ljava/net/SocksSocketImpl;->connectV4(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/net/InetSocketAddress;J)V

    .line 397
    return-void

    .line 399
    :cond_f2
    const/4 v2, 0x1

    aget-byte v2, v15, v2

    const/4 v8, -0x1

    if-ne v2, v8, :cond_101

    .line 400
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v8, "SOCKS : No acceptable methods"

    invoke-direct {v2, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 401
    :cond_101
    const/4 v2, 0x1

    aget-byte v9, v15, v2

    move-object/from16 v8, p0

    move-object v10, v3

    move-object v11, v4

    move-wide v12, v6

    invoke-direct/range {v8 .. v13}, Ljava/net/SocksSocketImpl;->authenticate(BLjava/io/InputStream;Ljava/io/BufferedOutputStream;J)Z

    move-result v2

    if-nez v2, :cond_118

    .line 402
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v8, "SOCKS : authentication failed"

    invoke-direct {v2, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 404
    :cond_118
    const/4 v2, 0x5

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 405
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 406
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 408
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v2

    if-eqz v2, :cond_182

    .line 409
    const/4 v2, 0x3

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 410
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 412
    :try_start_139
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v8, "ISO-8859-1"

    invoke-virtual {v2, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_147
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_139 .. :try_end_147} :catch_177

    .line 416
    :cond_147
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 417
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    shr-int/lit8 v2, v2, 0x0

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 429
    :goto_15d
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 430
    const/4 v2, 0x4

    new-array v15, v2, [B

    .line 431
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15, v6, v7}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    move-result v21

    .line 432
    const/4 v2, 0x4

    move/from16 v0, v21

    if-eq v0, v2, :cond_1d6

    .line 433
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v8, "Reply from SOCKS server has bad length"

    invoke-direct {v2, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 413
    :catch_177
    move-exception v24

    .line 414
    .local v24, "uee":Ljava/io/UnsupportedEncodingException;
    sget-boolean v2, Ljava/net/SocksSocketImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_147

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 418
    .end local v24    # "uee":Ljava/io/UnsupportedEncodingException;
    :cond_182
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet6Address;

    if-eqz v2, :cond_1b0

    .line 419
    const/4 v2, 0x4

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 420
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 421
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 422
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    shr-int/lit8 v2, v2, 0x0

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    goto :goto_15d

    .line 424
    :cond_1b0
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 425
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 426
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 427
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    shr-int/lit8 v2, v2, 0x0

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    goto :goto_15d

    .line 434
    :cond_1d6
    const/16 v17, 0x0

    .line 437
    .local v17, "ex":Ljava/net/SocketException;
    const/4 v2, 0x1

    aget-byte v2, v15, v2

    packed-switch v2, :pswitch_data_2f6

    .line 503
    .end local v17    # "ex":Ljava/net/SocketException;
    :cond_1de
    :goto_1de
    if-eqz v17, :cond_2f0

    .line 504
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 505
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    .line 506
    throw v17

    .line 440
    .restart local v17    # "ex":Ljava/net/SocketException;
    :pswitch_1e7
    const/4 v2, 0x3

    aget-byte v2, v15, v2

    packed-switch v2, :pswitch_data_30c

    .line 474
    :pswitch_1ed
    new-instance v17, Ljava/net/SocketException;

    .end local v17    # "ex":Ljava/net/SocketException;
    const-string/jumbo v2, "Reply from SOCKS server contains wrong code"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 475
    .local v17, "ex":Ljava/net/SocketException;
    goto :goto_1de

    .line 442
    .local v17, "ex":Ljava/net/SocketException;
    :pswitch_1f8
    const/4 v2, 0x4

    new-array v14, v2, [B

    .line 443
    .local v14, "addr":[B
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14, v6, v7}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    move-result v21

    .line 444
    const/4 v2, 0x4

    move/from16 v0, v21

    if-eq v0, v2, :cond_20f

    .line 445
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v8, "Reply from SOCKS server badly formatted"

    invoke-direct {v2, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 446
    :cond_20f
    const/4 v2, 0x2

    new-array v15, v2, [B

    .line 447
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15, v6, v7}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    move-result v21

    .line 448
    const/4 v2, 0x2

    move/from16 v0, v21

    if-eq v0, v2, :cond_1de

    .line 449
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v8, "Reply from SOCKS server badly formatted"

    invoke-direct {v2, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 452
    .end local v14    # "addr":[B
    :pswitch_226
    const/4 v2, 0x1

    aget-byte v22, v15, v2

    .line 453
    .local v22, "len":I
    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .line 454
    .local v20, "host":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v3, v1, v6, v7}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    move-result v21

    .line 455
    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_246

    .line 456
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v8, "Reply from SOCKS server badly formatted"

    invoke-direct {v2, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 457
    :cond_246
    const/4 v2, 0x2

    new-array v15, v2, [B

    .line 458
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15, v6, v7}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    move-result v21

    .line 459
    const/4 v2, 0x2

    move/from16 v0, v21

    if-eq v0, v2, :cond_1de

    .line 460
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v8, "Reply from SOCKS server badly formatted"

    invoke-direct {v2, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 463
    .end local v20    # "host":[B
    .end local v22    # "len":I
    :pswitch_25d
    const/4 v2, 0x1

    aget-byte v22, v15, v2

    .line 464
    .restart local v22    # "len":I
    move/from16 v0, v22

    new-array v14, v0, [B

    .line 465
    .restart local v14    # "addr":[B
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14, v6, v7}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    move-result v21

    .line 466
    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_279

    .line 467
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v8, "Reply from SOCKS server badly formatted"

    invoke-direct {v2, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 468
    :cond_279
    const/4 v2, 0x2

    new-array v15, v2, [B

    .line 469
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15, v6, v7}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    move-result v21

    .line 470
    const/4 v2, 0x2

    move/from16 v0, v21

    if-eq v0, v2, :cond_1de

    .line 471
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v8, "Reply from SOCKS server badly formatted"

    invoke-direct {v2, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 479
    .end local v14    # "addr":[B
    .end local v22    # "len":I
    :pswitch_290
    new-instance v17, Ljava/net/SocketException;

    .end local v17    # "ex":Ljava/net/SocketException;
    const-string/jumbo v2, "SOCKS server general failure"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 480
    .local v17, "ex":Ljava/net/SocketException;
    goto/16 :goto_1de

    .line 482
    .local v17, "ex":Ljava/net/SocketException;
    :pswitch_29c
    new-instance v17, Ljava/net/SocketException;

    .end local v17    # "ex":Ljava/net/SocketException;
    const-string/jumbo v2, "SOCKS: Connection not allowed by ruleset"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 483
    .local v17, "ex":Ljava/net/SocketException;
    goto/16 :goto_1de

    .line 485
    .local v17, "ex":Ljava/net/SocketException;
    :pswitch_2a8
    new-instance v17, Ljava/net/SocketException;

    .end local v17    # "ex":Ljava/net/SocketException;
    const-string/jumbo v2, "SOCKS: Network unreachable"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 486
    .local v17, "ex":Ljava/net/SocketException;
    goto/16 :goto_1de

    .line 488
    .local v17, "ex":Ljava/net/SocketException;
    :pswitch_2b4
    new-instance v17, Ljava/net/SocketException;

    .end local v17    # "ex":Ljava/net/SocketException;
    const-string/jumbo v2, "SOCKS: Host unreachable"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 489
    .local v17, "ex":Ljava/net/SocketException;
    goto/16 :goto_1de

    .line 491
    .local v17, "ex":Ljava/net/SocketException;
    :pswitch_2c0
    new-instance v17, Ljava/net/SocketException;

    .end local v17    # "ex":Ljava/net/SocketException;
    const-string/jumbo v2, "SOCKS: Connection refused"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 492
    .local v17, "ex":Ljava/net/SocketException;
    goto/16 :goto_1de

    .line 494
    .local v17, "ex":Ljava/net/SocketException;
    :pswitch_2cc
    new-instance v17, Ljava/net/SocketException;

    .end local v17    # "ex":Ljava/net/SocketException;
    const-string/jumbo v2, "SOCKS: TTL expired"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 495
    .local v17, "ex":Ljava/net/SocketException;
    goto/16 :goto_1de

    .line 497
    .local v17, "ex":Ljava/net/SocketException;
    :pswitch_2d8
    new-instance v17, Ljava/net/SocketException;

    .end local v17    # "ex":Ljava/net/SocketException;
    const-string/jumbo v2, "SOCKS: Command not supported"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 498
    .local v17, "ex":Ljava/net/SocketException;
    goto/16 :goto_1de

    .line 500
    .local v17, "ex":Ljava/net/SocketException;
    :pswitch_2e4
    new-instance v17, Ljava/net/SocketException;

    .end local v17    # "ex":Ljava/net/SocketException;
    const-string/jumbo v2, "SOCKS: address type not supported"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 501
    .local v17, "ex":Ljava/net/SocketException;
    goto/16 :goto_1de

    .line 508
    .end local v17    # "ex":Ljava/net/SocketException;
    :cond_2f0
    move-object/from16 v0, p0

    iput-object v5, v0, Ljava/net/SocksSocketImpl;->external_address:Ljava/net/InetSocketAddress;

    .line 509
    return-void

    .line 437
    nop

    :pswitch_data_2f6
    .packed-switch 0x0
        :pswitch_1e7
        :pswitch_290
        :pswitch_29c
        :pswitch_2a8
        :pswitch_2b4
        :pswitch_2c0
        :pswitch_2cc
        :pswitch_2d8
        :pswitch_2e4
    .end packed-switch

    .line 440
    :pswitch_data_30c
    .packed-switch 0x1
        :pswitch_1f8
        :pswitch_1ed
        :pswitch_226
        :pswitch_25d
    .end packed-switch
.end method

.method protected getInetAddress()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 519
    iget-object v0, p0, Ljava/net/SocksSocketImpl;->external_address:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_b

    .line 520
    iget-object v0, p0, Ljava/net/SocksSocketImpl;->external_address:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0

    .line 522
    :cond_b
    invoke-super {p0}, Ljava/net/PlainSocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method protected getLocalPort()I
    .registers 2

    .prologue
    .line 541
    iget-object v0, p0, Ljava/net/SocksSocketImpl;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_9

    .line 542
    invoke-super {p0}, Ljava/net/PlainSocketImpl;->getLocalPort()I

    move-result v0

    return v0

    .line 543
    :cond_9
    iget-object v0, p0, Ljava/net/SocksSocketImpl;->external_address:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_14

    .line 544
    iget-object v0, p0, Ljava/net/SocksSocketImpl;->external_address:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    return v0

    .line 546
    :cond_14
    invoke-super {p0}, Ljava/net/PlainSocketImpl;->getLocalPort()I

    move-result v0

    return v0
.end method

.method protected getPort()I
    .registers 2

    .prologue
    .line 533
    iget-object v0, p0, Ljava/net/SocksSocketImpl;->external_address:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_b

    .line 534
    iget-object v0, p0, Ljava/net/SocksSocketImpl;->external_address:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    return v0

    .line 536
    :cond_b
    invoke-super {p0}, Ljava/net/PlainSocketImpl;->getPort()I

    move-result v0

    return v0
.end method

.method setV4()V
    .registers 2

    .prologue
    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/SocksSocketImpl;->useV4:Z

    .line 76
    return-void
.end method
