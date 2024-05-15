.class public abstract Lcom/android/org/conscrypt/OpenSSLContextImpl;
.super Ljavax/net/ssl/SSLContextSpi;
.source "OpenSSLContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLContextImpl$TLSv11;,
        Lcom/android/org/conscrypt/OpenSSLContextImpl$TLSv12;,
        Lcom/android/org/conscrypt/OpenSSLContextImpl$TLSv1;
    }
.end annotation


# static fields
.field private static DEFAULT_SSL_CONTEXT_IMPL:Lcom/android/org/conscrypt/DefaultSSLContextImpl;


# instance fields
.field private final algorithms:[Ljava/lang/String;

.field private final clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

.field private final serverSessionContext:Lcom/android/org/conscrypt/ServerSessionContext;

.field sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;


# direct methods
.method constructor <init>()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0}, Ljavax/net/ssl/SSLContextSpi;-><init>()V

    .line 72
    const-class v8, Lcom/android/org/conscrypt/DefaultSSLContextImpl;

    monitor-enter v8

    .line 73
    const/4 v1, 0x0

    :try_start_7
    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->algorithms:[Ljava/lang/String;

    .line 74
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLContextImpl;->DEFAULT_SSL_CONTEXT_IMPL:Lcom/android/org/conscrypt/DefaultSSLContextImpl;

    if-nez v1, :cond_3d

    .line 75
    new-instance v1, Lcom/android/org/conscrypt/ClientSessionContext;

    invoke-direct {v1}, Lcom/android/org/conscrypt/ClientSessionContext;-><init>()V

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

    .line 76
    new-instance v1, Lcom/android/org/conscrypt/ServerSessionContext;

    invoke-direct {v1}, Lcom/android/org/conscrypt/ServerSessionContext;-><init>()V

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->serverSessionContext:Lcom/android/org/conscrypt/ServerSessionContext;

    .line 77
    move-object v0, p0

    check-cast v0, Lcom/android/org/conscrypt/DefaultSSLContextImpl;

    move-object v1, v0

    sput-object v1, Lcom/android/org/conscrypt/OpenSSLContextImpl;->DEFAULT_SSL_CONTEXT_IMPL:Lcom/android/org/conscrypt/DefaultSSLContextImpl;

    .line 82
    :goto_21
    new-instance v1, Lcom/android/org/conscrypt/SSLParametersImpl;

    sget-object v2, Lcom/android/org/conscrypt/OpenSSLContextImpl;->DEFAULT_SSL_CONTEXT_IMPL:Lcom/android/org/conscrypt/DefaultSSLContextImpl;

    invoke-virtual {v2}, Lcom/android/org/conscrypt/DefaultSSLContextImpl;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v2

    .line 83
    sget-object v3, Lcom/android/org/conscrypt/OpenSSLContextImpl;->DEFAULT_SSL_CONTEXT_IMPL:Lcom/android/org/conscrypt/DefaultSSLContextImpl;

    invoke-virtual {v3}, Lcom/android/org/conscrypt/DefaultSSLContextImpl;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v3

    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

    .line 84
    iget-object v6, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->serverSessionContext:Lcom/android/org/conscrypt/ServerSessionContext;

    iget-object v7, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->algorithms:[Ljava/lang/String;

    .line 83
    const/4 v4, 0x0

    .line 82
    invoke-direct/range {v1 .. v7}, Lcom/android/org/conscrypt/SSLParametersImpl;-><init>([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;Lcom/android/org/conscrypt/ClientSessionContext;Lcom/android/org/conscrypt/ServerSessionContext;[Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;
    :try_end_3b
    .catchall {:try_start_7 .. :try_end_3b} :catchall_4e

    monitor-exit v8

    .line 86
    return-void

    .line 79
    :cond_3d
    :try_start_3d
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLContextImpl;->DEFAULT_SSL_CONTEXT_IMPL:Lcom/android/org/conscrypt/DefaultSSLContextImpl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/DefaultSSLContextImpl;->engineGetClientSessionContext()Lcom/android/org/conscrypt/ClientSessionContext;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

    .line 80
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLContextImpl;->DEFAULT_SSL_CONTEXT_IMPL:Lcom/android/org/conscrypt/DefaultSSLContextImpl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/DefaultSSLContextImpl;->engineGetServerSessionContext()Lcom/android/org/conscrypt/ServerSessionContext;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->serverSessionContext:Lcom/android/org/conscrypt/ServerSessionContext;
    :try_end_4d
    .catchall {:try_start_3d .. :try_end_4d} :catchall_4e

    goto :goto_21

    .line 72
    :catchall_4e
    move-exception v1

    monitor-exit v8

    throw v1
.end method

.method constructor <init>([Ljava/lang/String;)V
    .registers 3
    .param p1, "algorithms"    # [Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0}, Ljavax/net/ssl/SSLContextSpi;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->algorithms:[Ljava/lang/String;

    .line 64
    new-instance v0, Lcom/android/org/conscrypt/ClientSessionContext;

    invoke-direct {v0}, Lcom/android/org/conscrypt/ClientSessionContext;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

    .line 65
    new-instance v0, Lcom/android/org/conscrypt/ServerSessionContext;

    invoke-direct {v0}, Lcom/android/org/conscrypt/ServerSessionContext;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->serverSessionContext:Lcom/android/org/conscrypt/ServerSessionContext;

    .line 66
    return-void
.end method

.method static getPreferred()Lcom/android/org/conscrypt/OpenSSLContextImpl;
    .registers 1

    .prologue
    .line 59
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLContextImpl$TLSv12;

    invoke-direct {v0}, Lcom/android/org/conscrypt/OpenSSLContextImpl$TLSv12;-><init>()V

    return-object v0
.end method


# virtual methods
.method public engineCreateSSLEngine()Ljavax/net/ssl/SSLEngine;
    .registers 4

    .prologue
    .line 133
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    if-nez v1, :cond_d

    .line 134
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "SSLContext is not initialized."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 136
    :cond_d
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 137
    .local v0, "p":Lcom/android/org/conscrypt/SSLParametersImpl;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setUseClientMode(Z)V

    .line 138
    new-instance v1, Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-direct {v1, v0}, Lcom/android/org/conscrypt/ConscryptEngine;-><init>(Lcom/android/org/conscrypt/SSLParametersImpl;)V

    return-object v1
.end method

.method public engineCreateSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;
    .registers 6
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 123
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    if-nez v1, :cond_d

    .line 124
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "SSLContext is not initialized."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    :cond_d
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 127
    .local v0, "p":Lcom/android/org/conscrypt/SSLParametersImpl;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setUseClientMode(Z)V

    .line 128
    new-instance v1, Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-direct {v1, p1, p2, v0}, Lcom/android/org/conscrypt/ConscryptEngine;-><init>(Ljava/lang/String;ILcom/android/org/conscrypt/SSLParametersImpl;)V

    return-object v1
.end method

.method public engineGetClientSessionContext()Lcom/android/org/conscrypt/ClientSessionContext;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

    return-object v0
.end method

.method public bridge synthetic engineGetClientSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .registers 2

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLContextImpl;->engineGetClientSessionContext()Lcom/android/org/conscrypt/ClientSessionContext;

    move-result-object v0

    return-object v0
.end method

.method public engineGetServerSessionContext()Lcom/android/org/conscrypt/ServerSessionContext;
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->serverSessionContext:Lcom/android/org/conscrypt/ServerSessionContext;

    return-object v0
.end method

.method public bridge synthetic engineGetServerSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .registers 2

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLContextImpl;->engineGetServerSessionContext()Lcom/android/org/conscrypt/ServerSessionContext;

    move-result-object v0

    return-object v0
.end method

.method public engineGetServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;
    .registers 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    if-nez v0, :cond_d

    .line 116
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "SSLContext is not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_d
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;-><init>(Lcom/android/org/conscrypt/SSLParametersImpl;)V

    return-object v0
.end method

.method public engineGetSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .registers 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    if-nez v0, :cond_d

    .line 108
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "SSLContext is not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_d
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;-><init>(Lcom/android/org/conscrypt/SSLParametersImpl;)V

    invoke-static {v0}, Lcom/android/org/conscrypt/Platform;->wrapSocketFactoryIfNeeded(Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    .registers 11
    .param p1, "kms"    # [Ljavax/net/ssl/KeyManager;
    .param p2, "tms"    # [Ljavax/net/ssl/TrustManager;
    .param p3, "sr"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 101
    new-instance v0, Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 102
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->serverSessionContext:Lcom/android/org/conscrypt/ServerSessionContext;

    iget-object v6, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->algorithms:[Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 101
    invoke-direct/range {v0 .. v6}, Lcom/android/org/conscrypt/SSLParametersImpl;-><init>([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;Lcom/android/org/conscrypt/ClientSessionContext;Lcom/android/org/conscrypt/ServerSessionContext;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 103
    return-void
.end method
