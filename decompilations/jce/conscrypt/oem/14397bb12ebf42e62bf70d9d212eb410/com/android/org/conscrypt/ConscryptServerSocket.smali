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
    #disallowed odex opcode
    #iput-object-quick p3, p0, field@0x14
    nop

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
    #disallowed odex opcode
    #iput-object-quick p4, p0, field@0x14
    nop

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
    #disallowed odex opcode
    #iput-object-quick p2, p0, field@0x14
    nop

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
    #disallowed odex opcode
    #iput-object-quick p1, p0, field@0x14
    nop

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
    #disallowed odex opcode
    #iget-boolean-quick v1, p0, field@0x19
    nop

    if-eqz v1, :cond_14

    .line 180
    new-instance v0, Lcom/android/org/conscrypt/ConscryptEngineSocket;

    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x14
    nop

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/ConscryptEngineSocket;-><init>(Lcom/android/org/conscrypt/SSLParametersImpl;)V

    .line 185
    .local v0, "socket":Lcom/android/org/conscrypt/AbstractConscryptSocket;
    :goto_b
    #disallowed odex opcode
    #iget-boolean-quick v1, p0, field@0x18
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1}, vtable@92
    nop

    .line 186
    #disallowed odex opcode
    #invoke-virtual-quick {p0, v0}, vtable@25
    nop

    .line 187
    return-object v0

    .line 182
    .end local v0    # "socket":Lcom/android/org/conscrypt/AbstractConscryptSocket;
    :cond_14
    new-instance v0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x14
    nop

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;-><init>(Lcom/android/org/conscrypt/SSLParametersImpl;)V

    .restart local v0    # "socket":Lcom/android/org/conscrypt/AbstractConscryptSocket;
    goto :goto_b
.end method

.method public getEnableSessionCreation()Z
    .registers 2

    .prologue
    .line 67
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x14
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@13
    nop

    move-result v0

    return v0
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 116
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x14
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@14
    nop

    move-result-object v0

    return-object v0
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 92
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x14
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@15
    nop

    move-result-object v0

    return-object v0
.end method

.method public getNeedClientAuth()Z
    .registers 2

    .prologue
    .line 158
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x14
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@17
    nop

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
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x14
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@22
    nop

    move-result v0

    return v0
.end method

.method public getWantClientAuth()Z
    .registers 2

    .prologue
    .line 148
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x14
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@24
    nop

    move-result v0

    return v0
.end method

.method isChannelIdEnabled()Z
    .registers 2

    .prologue
    .line 130
    #disallowed odex opcode
    #iget-boolean-quick v0, p0, field@0x18
    nop

    return v0
.end method

.method setChannelIdEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 123
    #disallowed odex opcode
    #iput-boolean-quick p1, p0, field@0x18
    nop

    .line 124
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setEnableSessionCreation(Z)V
    .registers 3
    .param p1, "flag"    # Z

    .prologue
    .line 72
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x14
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v0, p1}, vtable@31
    nop

    .line 73
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .registers 3
    .param p1, "suites"    # [Ljava/lang/String;

    .prologue
    .line 143
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x14
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v0, p1}, vtable@32
    nop

    .line 144
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .registers 3
    .param p1, "protocols"    # [Ljava/lang/String;

    .prologue
    .line 106
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x14
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v0, p1}, vtable@33
    nop

    .line 107
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setNeedClientAuth(Z)V
    .registers 3
    .param p1, "need"    # Z

    .prologue
    .line 163
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x14
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v0, p1}, vtable@35
    nop

    .line 164
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setUseClientMode(Z)V
    .registers 3
    .param p1, "mode"    # Z

    .prologue
    .line 168
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x14
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v0, p1}, vtable@39
    nop

    .line 169
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method setUseEngineSocket(Z)Lcom/android/org/conscrypt/ConscryptServerSocket;
    .registers 2
    .param p1, "useEngineSocket"    # Z

    .prologue
    .line 61
    #disallowed odex opcode
    #iput-boolean-quick p1, p0, field@0x19
    nop

    .line 62
    return-object p0
.end method

.method public setWantClientAuth(Z)V
    .registers 3
    .param p1, "want"    # Z

    .prologue
    .line 153
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x14
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v0, p1}, vtable@42
    nop

    .line 154
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
