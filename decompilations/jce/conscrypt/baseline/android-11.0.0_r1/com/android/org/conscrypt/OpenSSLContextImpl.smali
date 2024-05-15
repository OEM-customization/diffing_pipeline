.class public abstract Lcom/android/org/conscrypt/OpenSSLContextImpl;
.super Ljavax/net/ssl/SSLContextSpi;
.source "OpenSSLContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLContextImpl$TLSv1;,
        Lcom/android/org/conscrypt/OpenSSLContextImpl$TLSv11;,
        Lcom/android/org/conscrypt/OpenSSLContextImpl$TLSv12;,
        Lcom/android/org/conscrypt/OpenSSLContextImpl$TLSv13;
    }
.end annotation


# static fields
.field private static blacklist defaultSslContextImpl:Lcom/android/org/conscrypt/DefaultSSLContextImpl;


# instance fields
.field private final blacklist clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

.field private final blacklist protocols:[Ljava/lang/String;

.field private final blacklist serverSessionContext:Lcom/android/org/conscrypt/ServerSessionContext;

.field blacklist sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;


# direct methods
.method private constructor greylist <init>()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    sget-object v0, Lcom/android/org/conscrypt/NativeCrypto;->TLSV13_PROTOCOLS:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/org/conscrypt/OpenSSLContextImpl;-><init>([Ljava/lang/String;Z)V

    .line 76
    return-void
.end method

.method constructor blacklist <init>([Ljava/lang/String;)V
    .registers 3
    .param p1, "protocols"    # [Ljava/lang/String;

    .line 66
    invoke-direct {p0}, Ljavax/net/ssl/SSLContextSpi;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->protocols:[Ljava/lang/String;

    .line 68
    new-instance v0, Lcom/android/org/conscrypt/ClientSessionContext;

    invoke-direct {v0}, Lcom/android/org/conscrypt/ClientSessionContext;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

    .line 69
    new-instance v0, Lcom/android/org/conscrypt/ServerSessionContext;

    invoke-direct {v0}, Lcom/android/org/conscrypt/ServerSessionContext;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->serverSessionContext:Lcom/android/org/conscrypt/ServerSessionContext;

    .line 70
    return-void
.end method

.method constructor blacklist <init>([Ljava/lang/String;Z)V
    .registers 12
    .param p1, "protocols"    # [Ljava/lang/String;
    .param p2, "unused"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Ljavax/net/ssl/SSLContextSpi;-><init>()V

    .line 85
    const-class v0, Lcom/android/org/conscrypt/DefaultSSLContextImpl;

    monitor-enter v0

    .line 86
    const/4 v1, 0x0

    :try_start_7
    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->protocols:[Ljava/lang/String;

    .line 87
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLContextImpl;->defaultSslContextImpl:Lcom/android/org/conscrypt/DefaultSSLContextImpl;

    if-nez v1, :cond_21

    .line 88
    new-instance v1, Lcom/android/org/conscrypt/ClientSessionContext;

    invoke-direct {v1}, Lcom/android/org/conscrypt/ClientSessionContext;-><init>()V

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

    .line 89
    new-instance v1, Lcom/android/org/conscrypt/ServerSessionContext;

    invoke-direct {v1}, Lcom/android/org/conscrypt/ServerSessionContext;-><init>()V

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->serverSessionContext:Lcom/android/org/conscrypt/ServerSessionContext;

    .line 90
    move-object v1, p0

    check-cast v1, Lcom/android/org/conscrypt/DefaultSSLContextImpl;

    sput-object v1, Lcom/android/org/conscrypt/OpenSSLContextImpl;->defaultSslContextImpl:Lcom/android/org/conscrypt/DefaultSSLContextImpl;

    goto :goto_35

    .line 92
    :cond_21
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLContextImpl;->defaultSslContextImpl:Lcom/android/org/conscrypt/DefaultSSLContextImpl;

    .line 94
    invoke-virtual {v1}, Lcom/android/org/conscrypt/DefaultSSLContextImpl;->engineGetClientSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v1

    check-cast v1, Lcom/android/org/conscrypt/ClientSessionContext;

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

    .line 95
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLContextImpl;->defaultSslContextImpl:Lcom/android/org/conscrypt/DefaultSSLContextImpl;

    .line 97
    invoke-virtual {v1}, Lcom/android/org/conscrypt/DefaultSSLContextImpl;->engineGetServerSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v1

    check-cast v1, Lcom/android/org/conscrypt/ServerSessionContext;

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->serverSessionContext:Lcom/android/org/conscrypt/ServerSessionContext;

    .line 99
    :goto_35
    new-instance v1, Lcom/android/org/conscrypt/SSLParametersImpl;

    sget-object v2, Lcom/android/org/conscrypt/OpenSSLContextImpl;->defaultSslContextImpl:Lcom/android/org/conscrypt/DefaultSSLContextImpl;

    invoke-virtual {v2}, Lcom/android/org/conscrypt/DefaultSSLContextImpl;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v3

    sget-object v2, Lcom/android/org/conscrypt/OpenSSLContextImpl;->defaultSslContextImpl:Lcom/android/org/conscrypt/DefaultSSLContextImpl;

    .line 100
    invoke-virtual {v2}, Lcom/android/org/conscrypt/DefaultSSLContextImpl;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

    iget-object v7, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->serverSessionContext:Lcom/android/org/conscrypt/ServerSessionContext;

    move-object v2, v1

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/org/conscrypt/SSLParametersImpl;-><init>([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;Lcom/android/org/conscrypt/ClientSessionContext;Lcom/android/org/conscrypt/ServerSessionContext;[Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 102
    monitor-exit v0

    .line 103
    return-void

    .line 102
    :catchall_51
    move-exception v1

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_7 .. :try_end_53} :catchall_51

    throw v1
.end method

.method static greylist getPreferred()Lcom/android/org/conscrypt/OpenSSLContextImpl;
    .registers 1

    .line 63
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLContextImpl$TLSv13;

    invoke-direct {v0}, Lcom/android/org/conscrypt/OpenSSLContextImpl$TLSv13;-><init>()V

    return-object v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api engineCreateSSLEngine()Ljavax/net/ssl/SSLEngine;
    .registers 3

    .line 150
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    if-eqz v0, :cond_18

    .line 153
    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 154
    .local v0, "p":Lcom/android/org/conscrypt/SSLParametersImpl;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setUseClientMode(Z)V

    .line 155
    new-instance v1, Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-direct {v1, v0}, Lcom/android/org/conscrypt/ConscryptEngine;-><init>(Lcom/android/org/conscrypt/SSLParametersImpl;)V

    invoke-static {v1}, Lcom/android/org/conscrypt/Platform;->wrapEngine(Lcom/android/org/conscrypt/ConscryptEngine;)Ljavax/net/ssl/SSLEngine;

    move-result-object v1

    return-object v1

    .line 151
    .end local v0    # "p":Lcom/android/org/conscrypt/SSLParametersImpl;
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SSLContext is not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api engineCreateSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;
    .registers 5
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .line 140
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    if-eqz v0, :cond_18

    .line 143
    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 144
    .local v0, "p":Lcom/android/org/conscrypt/SSLParametersImpl;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setUseClientMode(Z)V

    .line 145
    new-instance v1, Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-direct {v1, p1, p2, v0}, Lcom/android/org/conscrypt/ConscryptEngine;-><init>(Ljava/lang/String;ILcom/android/org/conscrypt/SSLParametersImpl;)V

    invoke-static {v1}, Lcom/android/org/conscrypt/Platform;->wrapEngine(Lcom/android/org/conscrypt/ConscryptEngine;)Ljavax/net/ssl/SSLEngine;

    move-result-object v1

    return-object v1

    .line 141
    .end local v0    # "p":Lcom/android/org/conscrypt/SSLParametersImpl;
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SSLContext is not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api engineGetClientSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .registers 2

    .line 165
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

    return-object v0
.end method

.method public whitelist core-platform-api test-api engineGetServerSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .registers 2

    .line 160
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->serverSessionContext:Lcom/android/org/conscrypt/ServerSessionContext;

    return-object v0
.end method

.method public whitelist core-platform-api test-api engineGetServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;
    .registers 3

    .line 132
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    if-eqz v0, :cond_c

    .line 135
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;-><init>(Lcom/android/org/conscrypt/SSLParametersImpl;)V

    return-object v0

    .line 133
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SSLContext is not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api engineGetSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .registers 3

    .line 124
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    if-eqz v0, :cond_10

    .line 127
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;-><init>(Lcom/android/org/conscrypt/SSLParametersImpl;)V

    invoke-static {v0}, Lcom/android/org/conscrypt/Platform;->wrapSocketFactoryIfNeeded(Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0

    .line 125
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SSLContext is not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    .registers 12
    .param p1, "kms"    # [Ljavax/net/ssl/KeyManager;
    .param p2, "tms"    # [Ljavax/net/ssl/TrustManager;
    .param p3, "sr"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 118
    new-instance v7, Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->serverSessionContext:Lcom/android/org/conscrypt/ServerSessionContext;

    iget-object v6, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->protocols:[Ljava/lang/String;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/org/conscrypt/SSLParametersImpl;-><init>([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;Lcom/android/org/conscrypt/ClientSessionContext;Lcom/android/org/conscrypt/ServerSessionContext;[Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 120
    return-void
.end method
