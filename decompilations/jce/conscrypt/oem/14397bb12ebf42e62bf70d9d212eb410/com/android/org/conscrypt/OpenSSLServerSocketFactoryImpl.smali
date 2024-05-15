.class final Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;
.super Ljavax/net/ssl/SSLServerSocketFactory;
.source "OpenSSLServerSocketFactoryImpl.java"


# static fields
.field private static useEngineSocketByDefault:Z


# instance fields
.field private instantiationException:Ljava/io/IOException;

.field private sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

.field private useEngineSocket:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    sget-boolean v0, Lcom/android/org/conscrypt/SSLUtils;->USE_ENGINE_SOCKET_BY_DEFAULT:Z

    sput-boolean v0, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;->useEngineSocketByDefault:Z

    .line 31
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method constructor <init>()V
    .registers 4

    .prologue
    .line 38
    invoke-direct {p0}, Ljavax/net/ssl/SSLServerSocketFactory;-><init>()V

    .line 36
    sget-boolean v1, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;->useEngineSocketByDefault:Z

    #disallowed odex opcode
    #iput-boolean-quick v1, p0, field@0x10
    nop

    .line 40
    :try_start_7
    invoke-static {}, Lcom/android/org/conscrypt/SSLParametersImpl;->getDefault()Lcom/android/org/conscrypt/SSLParametersImpl;

    move-result-object v1

    #disallowed odex opcode
    #iput-object-quick v1, p0, field@0xc
    nop

    .line 41
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0xc
    nop

    const/4 v2, 0x0

    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2}, vtable@39
    nop
    :try_end_13
    .catch Ljava/security/KeyManagementException; {:try_start_7 .. :try_end_13} :catch_14

    .line 46
    :goto_13
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 42
    :catch_14
    move-exception v0

    .line 43
    .local v0, "e":Ljava/security/KeyManagementException;
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Delayed instantiation exception:"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #disallowed odex opcode
    #iput-object-quick v1, p0, field@0x8
    nop

    .line 44
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x8
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v1, v0}, vtable@18
    nop

    goto :goto_13
.end method

.method constructor <init>(Lcom/android/org/conscrypt/SSLParametersImpl;)V
    .registers 4
    .param p1, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;

    .prologue
    .line 48
    invoke-direct {p0}, Ljavax/net/ssl/SSLServerSocketFactory;-><init>()V

    .line 36
    sget-boolean v0, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;->useEngineSocketByDefault:Z

    #disallowed odex opcode
    #iput-boolean-quick v0, p0, field@0x10
    nop

    .line 49
    #disallowed odex opcode
    #invoke-virtual-quick {p1}, vtable@0
    nop

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/SSLParametersImpl;

    #disallowed odex opcode
    #iput-object-quick v0, p0, field@0xc
    nop

    .line 50
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0xc
    nop

    const/4 v1, 0x0

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1}, vtable@39
    nop

    .line 51
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static setUseEngineSocketByDefault(Z)V
    .registers 1
    .param p0, "useEngineSocket"    # Z

    .prologue
    .line 57
    sput-boolean p0, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;->useEngineSocketByDefault:Z

    .line 58
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public createServerSocket()Ljava/net/ServerSocket;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    new-instance v1, Lcom/android/org/conscrypt/ConscryptServerSocket;

    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0xc
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@0
    nop

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-direct {v1, v0}, Lcom/android/org/conscrypt/ConscryptServerSocket;-><init>(Lcom/android/org/conscrypt/SSLParametersImpl;)V

    .line 81
    #disallowed odex opcode
    #iget-boolean-quick v0, p0, field@0x10
    nop

    .line 80
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v0}, vtable@52
    nop

    move-result-object v0

    return-object v0
.end method

.method public createServerSocket(I)Ljava/net/ServerSocket;
    .registers 4
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    new-instance v1, Lcom/android/org/conscrypt/ConscryptServerSocket;

    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0xc
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@0
    nop

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-direct {v1, p1, v0}, Lcom/android/org/conscrypt/ConscryptServerSocket;-><init>(ILcom/android/org/conscrypt/SSLParametersImpl;)V

    .line 87
    #disallowed odex opcode
    #iget-boolean-quick v0, p0, field@0x10
    nop

    .line 86
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v0}, vtable@52
    nop

    move-result-object v0

    return-object v0
.end method

.method public createServerSocket(II)Ljava/net/ServerSocket;
    .registers 5
    .param p1, "port"    # I
    .param p2, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    new-instance v1, Lcom/android/org/conscrypt/ConscryptServerSocket;

    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0xc
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@0
    nop

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-direct {v1, p1, p2, v0}, Lcom/android/org/conscrypt/ConscryptServerSocket;-><init>(IILcom/android/org/conscrypt/SSLParametersImpl;)V

    .line 93
    #disallowed odex opcode
    #iget-boolean-quick v0, p0, field@0x10
    nop

    .line 92
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v0}, vtable@52
    nop

    move-result-object v0

    return-object v0
.end method

.method public createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;
    .registers 6
    .param p1, "port"    # I
    .param p2, "backlog"    # I
    .param p3, "iAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    new-instance v1, Lcom/android/org/conscrypt/ConscryptServerSocket;

    .line 100
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0xc
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@0
    nop

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 99
    invoke-direct {v1, p1, p2, p3, v0}, Lcom/android/org/conscrypt/ConscryptServerSocket;-><init>(IILjava/net/InetAddress;Lcom/android/org/conscrypt/SSLParametersImpl;)V

    .line 101
    #disallowed odex opcode
    #iget-boolean-quick v0, p0, field@0x10
    nop

    .line 99
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v0}, vtable@52
    nop

    move-result-object v0

    return-object v0
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0xc
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@14
    nop

    move-result-object v0

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 75
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setUseEngineSocket(Z)V
    .registers 2
    .param p1, "useEngineSocket"    # Z

    .prologue
    .line 65
    #disallowed odex opcode
    #iput-boolean-quick p1, p0, field@0x10
    nop

    .line 66
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
