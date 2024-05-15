.class final Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "OpenSSLSocketFactoryImpl.java"


# static fields
.field private static useEngineSocketByDefault:Z


# instance fields
.field private final instantiationException:Ljava/io/IOException;

.field private final sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

.field private useEngineSocket:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    sget-boolean v0, Lcom/android/org/conscrypt/SSLUtils;->USE_ENGINE_SOCKET_BY_DEFAULT:Z

    sput-boolean v0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->useEngineSocketByDefault:Z

    .line 33
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method constructor <init>()V
    .registers 5

    .prologue
    .line 40
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    .line 38
    sget-boolean v3, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->useEngineSocketByDefault:Z

    iput-boolean v3, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->useEngineSocket:Z

    .line 41
    const/4 v2, 0x0

    .line 42
    .local v2, "sslParametersLocal":Lcom/android/org/conscrypt/SSLParametersImpl;
    const/4 v1, 0x0

    .line 44
    .local v1, "instantiationExceptionLocal":Ljava/io/IOException;
    :try_start_9
    invoke-static {}, Lcom/android/org/conscrypt/SSLParametersImpl;->getDefault()Lcom/android/org/conscrypt/SSLParametersImpl;
    :try_end_c
    .catch Ljava/security/KeyManagementException; {:try_start_9 .. :try_end_c} :catch_12

    move-result-object v2

    .line 48
    .end local v1    # "instantiationExceptionLocal":Ljava/io/IOException;
    .end local v2    # "sslParametersLocal":Lcom/android/org/conscrypt/SSLParametersImpl;
    :goto_d
    iput-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 49
    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    .line 50
    return-void

    .line 45
    .restart local v1    # "instantiationExceptionLocal":Ljava/io/IOException;
    .restart local v2    # "sslParametersLocal":Lcom/android/org/conscrypt/SSLParametersImpl;
    :catch_12
    move-exception v0

    .line 46
    .local v0, "e":Ljava/security/KeyManagementException;
    new-instance v1, Ljava/io/IOException;

    .end local v1    # "instantiationExceptionLocal":Ljava/io/IOException;
    const-string/jumbo v3, "Delayed instantiation exception:"

    invoke-direct {v1, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .local v1, "instantiationExceptionLocal":Ljava/io/IOException;
    goto :goto_d
.end method

.method constructor <init>(Lcom/android/org/conscrypt/SSLParametersImpl;)V
    .registers 3
    .param p1, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;

    .prologue
    .line 52
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    .line 38
    sget-boolean v0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->useEngineSocketByDefault:Z

    iput-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->useEngineSocket:Z

    .line 53
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    .line 55
    return-void
.end method

.method private hasFileDescriptor(Ljava/net/Socket;)Z
    .registers 4
    .param p1, "s"    # Ljava/net/Socket;

    .prologue
    .line 161
    :try_start_0
    invoke-static {p1}, Lcom/android/org/conscrypt/Platform;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_5

    .line 162
    const/4 v1, 0x1

    return v1

    .line 163
    :catch_5
    move-exception v0

    .line 164
    .local v0, "re":Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    return v1
.end method

.method static setUseEngineSocketByDefault(Z)V
    .registers 1
    .param p0, "useEngineSocket"    # Z

    .prologue
    .line 61
    sput-boolean p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->useEngineSocketByDefault:Z

    .line 62
    return-void
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    if-eqz v0, :cond_7

    .line 85
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    throw v0

    .line 87
    :cond_7
    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->useEngineSocket:Z

    if-eqz v0, :cond_19

    .line 88
    new-instance v1, Lcom/android/org/conscrypt/ConscryptEngineSocket;

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-direct {v1, v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;-><init>(Lcom/android/org/conscrypt/SSLParametersImpl;)V

    return-object v1

    .line 90
    :cond_19
    new-instance v1, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-direct {v1, v0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;-><init>(Lcom/android/org/conscrypt/SSLParametersImpl;)V

    return-object v1
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .registers 5
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->useEngineSocket:Z

    if-eqz v0, :cond_12

    .line 97
    new-instance v1, Lcom/android/org/conscrypt/ConscryptEngineSocket;

    .line 98
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 97
    invoke-direct {v1, p1, p2, v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;-><init>(Ljava/lang/String;ILcom/android/org/conscrypt/SSLParametersImpl;)V

    return-object v1

    .line 100
    :cond_12
    new-instance v1, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    .line 101
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 100
    invoke-direct {v1, p1, p2, v0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;-><init>(Ljava/lang/String;ILcom/android/org/conscrypt/SSLParametersImpl;)V

    return-object v1
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .registers 11
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "localHost"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->useEngineSocket:Z

    if-eqz v0, :cond_16

    .line 109
    new-instance v0, Lcom/android/org/conscrypt/ConscryptEngineSocket;

    .line 110
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/org/conscrypt/SSLParametersImpl;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 109
    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/ConscryptEngineSocket;-><init>(Ljava/lang/String;ILjava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)V

    return-object v0

    .line 112
    :cond_16
    new-instance v0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    .line 113
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/org/conscrypt/SSLParametersImpl;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 112
    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;-><init>(Ljava/lang/String;ILjava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)V

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .registers 5
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->useEngineSocket:Z

    if-eqz v0, :cond_12

    .line 120
    new-instance v1, Lcom/android/org/conscrypt/ConscryptEngineSocket;

    .line 121
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 120
    invoke-direct {v1, p1, p2, v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;-><init>(Ljava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)V

    return-object v1

    .line 123
    :cond_12
    new-instance v1, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    .line 124
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 123
    invoke-direct {v1, p1, p2, v0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;-><init>(Ljava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)V

    return-object v1
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .registers 11
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->useEngineSocket:Z

    if-eqz v0, :cond_16

    .line 132
    new-instance v0, Lcom/android/org/conscrypt/ConscryptEngineSocket;

    .line 133
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/org/conscrypt/SSLParametersImpl;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 132
    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/ConscryptEngineSocket;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)V

    return-object v0

    .line 135
    :cond_16
    new-instance v0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    .line 136
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/org/conscrypt/SSLParametersImpl;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 135
    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)V

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .registers 11
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
    .line 143
    const-string/jumbo v0, "socket"

    invoke-static {p1, v0}, Lcom/android/org/conscrypt/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 144
    invoke-virtual {p1}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_15

    .line 145
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is not connected."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_15
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->hasFileDescriptor(Ljava/net/Socket;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->useEngineSocket:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_33

    .line 149
    new-instance v0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    .line 150
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/org/conscrypt/SSLParametersImpl;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 149
    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;-><init>(Ljava/net/Socket;Ljava/lang/String;IZLcom/android/org/conscrypt/SSLParametersImpl;)V

    return-object v0

    .line 152
    :cond_33
    new-instance v0, Lcom/android/org/conscrypt/ConscryptEngineSocket;

    .line 153
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/org/conscrypt/SSLParametersImpl;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 152
    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/ConscryptEngineSocket;-><init>(Ljava/net/Socket;Ljava/lang/String;IZLcom/android/org/conscrypt/SSLParametersImpl;)V

    return-object v0
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 79
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setUseEngineSocket(Z)V
    .registers 2
    .param p1, "useEngineSocket"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->useEngineSocket:Z

    .line 70
    return-void
.end method
