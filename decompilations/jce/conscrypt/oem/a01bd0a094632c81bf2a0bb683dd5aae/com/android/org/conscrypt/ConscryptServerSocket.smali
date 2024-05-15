.class final Lcom/android/org/conscrypt/ConscryptServerSocket;
.super Ljavax/net/ssl/SSLServerSocket;
.source "ConscryptServerSocket.java"


# instance fields
.field private channelIdEnabled:Z

.field private final sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

.field private useEngineSocket:Z


# direct methods
.method constructor <init>(IILcom/android/org/conscrypt/SSLParametersImpl;)V
    .registers 4
    .param p1, "port"    # I
    .param p2, "backlog"    # I
    .param p3, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljavax/net/ssl/SSLServerSocket;-><init>(II)V

    .line 45
    iput-object p3, p0, Lcom/android/org/conscrypt/ConscryptServerSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 46
    return-void
.end method

.method constructor <init>(IILjava/net/InetAddress;Lcom/android/org/conscrypt/SSLParametersImpl;)V
    .registers 5
    .param p1, "port"    # I
    .param p2, "backlog"    # I
    .param p3, "iAddress"    # Ljava/net/InetAddress;
    .param p4, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Ljavax/net/ssl/SSLServerSocket;-><init>(IILjava/net/InetAddress;)V

    .line 54
    iput-object p4, p0, Lcom/android/org/conscrypt/ConscryptServerSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 55
    return-void
.end method

.method constructor <init>(ILcom/android/org/conscrypt/SSLParametersImpl;)V
    .registers 3
    .param p1, "port"    # I
    .param p2, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1}, Ljavax/net/ssl/SSLServerSocket;-><init>(I)V

    .line 39
    iput-object p2, p0, Lcom/android/org/conscrypt/ConscryptServerSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 40
    return-void
.end method

.method constructor <init>(Lcom/android/org/conscrypt/SSLParametersImpl;)V
    .registers 2
    .param p1, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljavax/net/ssl/SSLServerSocket;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/org/conscrypt/ConscryptServerSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 34
    return-void
.end method


# virtual methods
.method public accept()Ljava/net/Socket;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    iget-boolean v1, p0, Lcom/android/org/conscrypt/ConscryptServerSocket;->useEngineSocket:Z

    if-eqz v1, :cond_14

    .line 180
    new-instance v0, Lcom/android/org/conscrypt/ConscryptEngineSocket;

    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptServerSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/ConscryptEngineSocket;-><init>(Lcom/android/org/conscrypt/SSLParametersImpl;)V

    .line 185
    .local v0, "socket":Lcom/android/org/conscrypt/AbstractConscryptSocket;
    :goto_b
    iget-boolean v1, p0, Lcom/android/org/conscrypt/ConscryptServerSocket;->channelIdEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->setChannelIdEnabled(Z)V

    .line 186
    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/ConscryptServerSocket;->implAccept(Ljava/net/Socket;)V

    .line 187
    return-object v0

    .line 182
    .end local v0    # "socket":Lcom/android/org/conscrypt/AbstractConscryptSocket;
    :cond_14
    new-instance v0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptServerSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;-><init>(Lcom/android/org/conscrypt/SSLParametersImpl;)V

    .restart local v0    # "socket":Lcom/android/org/conscrypt/AbstractConscryptSocket;
    goto :goto_b
.end method

.method public getEnableSessionCreation()Z
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptServerSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v0

    return v0
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptServerSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptServerSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNeedClientAuth()Z
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptServerSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v0

    return v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 111
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedProtocols()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUseClientMode()Z
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptServerSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseClientMode()Z

    move-result v0

    return v0
.end method

.method public getWantClientAuth()Z
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptServerSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getWantClientAuth()Z

    move-result v0

    return v0
.end method

.method isChannelIdEnabled()Z
    .registers 2

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/org/conscrypt/ConscryptServerSocket;->channelIdEnabled:Z

    return v0
.end method

.method setChannelIdEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/android/org/conscrypt/ConscryptServerSocket;->channelIdEnabled:Z

    .line 124
    return-void
.end method

.method public setEnableSessionCreation(Z)V
    .registers 3
    .param p1, "flag"    # Z

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptServerSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEnableSessionCreation(Z)V

    .line 73
    return-void
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .registers 3
    .param p1, "suites"    # [Ljava/lang/String;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptServerSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .registers 3
    .param p1, "protocols"    # [Ljava/lang/String;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptServerSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEnabledProtocols([Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public setNeedClientAuth(Z)V
    .registers 3
    .param p1, "need"    # Z

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptServerSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setNeedClientAuth(Z)V

    .line 164
    return-void
.end method

.method public setUseClientMode(Z)V
    .registers 3
    .param p1, "mode"    # Z

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptServerSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setUseClientMode(Z)V

    .line 169
    return-void
.end method

.method setUseEngineSocket(Z)Lcom/android/org/conscrypt/ConscryptServerSocket;
    .registers 2
    .param p1, "useEngineSocket"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/org/conscrypt/ConscryptServerSocket;->useEngineSocket:Z

    .line 62
    return-object p0
.end method

.method public setWantClientAuth(Z)V
    .registers 3
    .param p1, "want"    # Z

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptServerSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setWantClientAuth(Z)V

    .line 154
    return-void
.end method
