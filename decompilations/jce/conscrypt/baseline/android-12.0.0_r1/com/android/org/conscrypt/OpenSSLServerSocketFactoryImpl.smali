.class final Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;
.super Ljavax/net/ssl/SSLServerSocketFactory;
.source "OpenSSLServerSocketFactoryImpl.java"


# static fields
.field private static blacklist useEngineSocketByDefault:Z


# instance fields
.field private blacklist instantiationException:Ljava/io/IOException;

.field private blacklist sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

.field private blacklist useEngineSocket:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 34
    sget-boolean v0, Lcom/android/org/conscrypt/SSLUtils;->USE_ENGINE_SOCKET_BY_DEFAULT:Z

    sput-boolean v0, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;->useEngineSocketByDefault:Z

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 4

    .line 40
    invoke-direct {p0}, Ljavax/net/ssl/SSLServerSocketFactory;-><init>()V

    .line 38
    sget-boolean v0, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;->useEngineSocketByDefault:Z

    iput-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;->useEngineSocket:Z

    .line 42
    :try_start_7
    invoke-static {}, Lcom/android/org/conscrypt/SSLParametersImpl;->getDefault()Lcom/android/org/conscrypt/SSLParametersImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 43
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setUseClientMode(Z)V
    :try_end_11
    .catch Ljava/security/KeyManagementException; {:try_start_7 .. :try_end_11} :catch_12

    .line 47
    goto :goto_1f

    .line 44
    :catch_12
    move-exception v0

    .line 45
    .local v0, "e":Ljava/security/KeyManagementException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Delayed instantiation exception:"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    .line 46
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 48
    .end local v0    # "e":Ljava/security/KeyManagementException;
    :goto_1f
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/org/conscrypt/SSLParametersImpl;)V
    .registers 4
    .param p1, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 50
    invoke-direct {p0}, Ljavax/net/ssl/SSLServerSocketFactory;-><init>()V

    .line 38
    sget-boolean v0, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;->useEngineSocketByDefault:Z

    iput-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;->useEngineSocket:Z

    .line 51
    invoke-virtual {p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/SSLParametersImpl;

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 52
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setUseClientMode(Z)V

    .line 53
    return-void
.end method

.method static blacklist setUseEngineSocketByDefault(Z)V
    .registers 3
    .param p0, "useEngineSocket"    # Z

    .line 59
    sput-boolean p0, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;->useEngineSocketByDefault:Z

    .line 62
    invoke-static {}, Ljavax/net/ssl/SSLServerSocketFactory;->getDefault()Ljavax/net/ServerSocketFactory;

    move-result-object v0

    .line 63
    .local v0, "defaultFactory":Ljavax/net/ServerSocketFactory;
    instance-of v1, v0, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;

    if-eqz v1, :cond_10

    .line 64
    move-object v1, v0

    check-cast v1, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;

    invoke-virtual {v1, p0}, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;->setUseEngineSocket(Z)V

    .line 66
    :cond_10
    return-void
.end method


# virtual methods
.method public whitelist test-api createServerSocket()Ljava/net/ServerSocket;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    new-instance v0, Lcom/android/org/conscrypt/ConscryptServerSocket;

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/ConscryptServerSocket;-><init>(Lcom/android/org/conscrypt/SSLParametersImpl;)V

    iget-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;->useEngineSocket:Z

    .line 89
    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/ConscryptServerSocket;->setUseEngineSocket(Z)Lcom/android/org/conscrypt/ConscryptServerSocket;

    move-result-object v0

    .line 88
    return-object v0
.end method

.method public whitelist test-api createServerSocket(I)Ljava/net/ServerSocket;
    .registers 4
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    new-instance v0, Lcom/android/org/conscrypt/ConscryptServerSocket;

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-direct {v0, p1, v1}, Lcom/android/org/conscrypt/ConscryptServerSocket;-><init>(ILcom/android/org/conscrypt/SSLParametersImpl;)V

    iget-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;->useEngineSocket:Z

    .line 95
    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/ConscryptServerSocket;->setUseEngineSocket(Z)Lcom/android/org/conscrypt/ConscryptServerSocket;

    move-result-object v0

    .line 94
    return-object v0
.end method

.method public whitelist test-api createServerSocket(II)Ljava/net/ServerSocket;
    .registers 5
    .param p1, "port"    # I
    .param p2, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    new-instance v0, Lcom/android/org/conscrypt/ConscryptServerSocket;

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-direct {v0, p1, p2, v1}, Lcom/android/org/conscrypt/ConscryptServerSocket;-><init>(IILcom/android/org/conscrypt/SSLParametersImpl;)V

    iget-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;->useEngineSocket:Z

    .line 101
    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/ConscryptServerSocket;->setUseEngineSocket(Z)Lcom/android/org/conscrypt/ConscryptServerSocket;

    move-result-object v0

    .line 100
    return-object v0
.end method

.method public whitelist test-api createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;
    .registers 6
    .param p1, "port"    # I
    .param p2, "backlog"    # I
    .param p3, "iAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    new-instance v0, Lcom/android/org/conscrypt/ConscryptServerSocket;

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 108
    invoke-virtual {v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/android/org/conscrypt/ConscryptServerSocket;-><init>(IILjava/net/InetAddress;Lcom/android/org/conscrypt/SSLParametersImpl;)V

    iget-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;->useEngineSocket:Z

    .line 109
    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/ConscryptServerSocket;->setUseEngineSocket(Z)Lcom/android/org/conscrypt/ConscryptServerSocket;

    move-result-object v0

    .line 107
    return-object v0
.end method

.method public whitelist test-api getDefaultCipherSuites()[Ljava/lang/String;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSupportedCipherSuites()[Ljava/lang/String;
    .registers 2

    .line 83
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist setUseEngineSocket(Z)V
    .registers 2
    .param p1, "useEngineSocket"    # Z

    .line 73
    iput-boolean p1, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;->useEngineSocket:Z

    .line 74
    return-void
.end method
