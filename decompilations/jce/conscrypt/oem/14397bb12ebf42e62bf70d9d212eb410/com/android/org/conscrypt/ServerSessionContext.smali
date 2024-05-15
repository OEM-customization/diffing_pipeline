.class public final Lcom/android/org/conscrypt/ServerSessionContext;
.super Lcom/android/org/conscrypt/AbstractSessionContext;
.source "ServerSessionContext.java"


# instance fields
.field private persistentCache:Lcom/android/org/conscrypt/SSLServerSessionCache;


# direct methods
.method constructor <init>()V
    .registers 6

    .prologue
    .line 32
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/AbstractSessionContext;-><init>(I)V

    .line 47
    iget-wide v0, p0, Lcom/android/org/conscrypt/ServerSessionContext;->sslCtxNativePointer:J

    const/4 v2, 0x1

    new-array v2, v2, [B

    const/16 v3, 0x20

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_CTX_set_session_id_context(J[B)V

    .line 48
    return-void
.end method


# virtual methods
.method getSessionFromPersistentCache([B)Lcom/android/org/conscrypt/SslSessionWrapper;
    .registers 6
    .param p1, "sessionId"    # [B

    .prologue
    const/4 v3, 0x0

    .line 60
    iget-object v2, p0, Lcom/android/org/conscrypt/ServerSessionContext;->persistentCache:Lcom/android/org/conscrypt/SSLServerSessionCache;

    if-eqz v2, :cond_1e

    .line 61
    iget-object v2, p0, Lcom/android/org/conscrypt/ServerSessionContext;->persistentCache:Lcom/android/org/conscrypt/SSLServerSessionCache;

    invoke-interface {v2, p1}, Lcom/android/org/conscrypt/SSLServerSessionCache;->getSessionData([B)[B

    move-result-object v0

    .line 62
    .local v0, "data":[B
    if-eqz v0, :cond_1e

    .line 63
    const/4 v2, -0x1

    invoke-static {p0, v0, v3, v2}, Lcom/android/org/conscrypt/SslSessionWrapper;->newInstance(Lcom/android/org/conscrypt/AbstractSessionContext;[BLjava/lang/String;I)Lcom/android/org/conscrypt/SslSessionWrapper;

    move-result-object v1

    .line 64
    .local v1, "session":Lcom/android/org/conscrypt/SslSessionWrapper;
    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Lcom/android/org/conscrypt/SslSessionWrapper;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 65
    invoke-virtual {p0, v1}, Lcom/android/org/conscrypt/ServerSessionContext;->cacheSession(Lcom/android/org/conscrypt/SslSessionWrapper;)V

    .line 66
    return-object v1

    .line 71
    .end local v0    # "data":[B
    .end local v1    # "session":Lcom/android/org/conscrypt/SslSessionWrapper;
    :cond_1e
    return-object v3
.end method

.method onBeforeAddSession(Lcom/android/org/conscrypt/SslSessionWrapper;)V
    .registers 5
    .param p1, "session"    # Lcom/android/org/conscrypt/SslSessionWrapper;

    .prologue
    .line 77
    iget-object v1, p0, Lcom/android/org/conscrypt/ServerSessionContext;->persistentCache:Lcom/android/org/conscrypt/SSLServerSessionCache;

    if-eqz v1, :cond_13

    .line 78
    invoke-virtual {p1}, Lcom/android/org/conscrypt/SslSessionWrapper;->toBytes()[B

    move-result-object v0

    .line 79
    .local v0, "data":[B
    if-eqz v0, :cond_13

    .line 80
    iget-object v1, p0, Lcom/android/org/conscrypt/ServerSessionContext;->persistentCache:Lcom/android/org/conscrypt/SSLServerSessionCache;

    invoke-virtual {p1}, Lcom/android/org/conscrypt/SslSessionWrapper;->toSSLSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/android/org/conscrypt/SSLServerSessionCache;->putSessionData(Ljavax/net/ssl/SSLSession;[B)V

    .line 83
    .end local v0    # "data":[B
    :cond_13
    return-void
.end method

.method onBeforeRemoveSession(Lcom/android/org/conscrypt/SslSessionWrapper;)V
    .registers 2
    .param p1, "session"    # Lcom/android/org/conscrypt/SslSessionWrapper;

    .prologue
    .line 88
    return-void
.end method

.method public setPersistentCache(Lcom/android/org/conscrypt/SSLServerSessionCache;)V
    .registers 2
    .param p1, "persistentCache"    # Lcom/android/org/conscrypt/SSLServerSessionCache;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/org/conscrypt/ServerSessionContext;->persistentCache:Lcom/android/org/conscrypt/SSLServerSessionCache;

    .line 56
    return-void
.end method
