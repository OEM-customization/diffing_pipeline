.class final Lcom/android/org/conscrypt/ActiveSession;
.super Ljava/lang/Object;
.source "ActiveSession.java"

# interfaces
.implements Ljavax/net/ssl/SSLSession;


# instance fields
.field private cipherSuite:Ljava/lang/String;

.field private creationTime:J

.field private id:[B

.field private lastAccessedTime:J

.field private localCertificates:[Ljava/security/cert/X509Certificate;

.field private volatile peerCertificateChain:[Ljavax/security/cert/X509Certificate;

.field private peerCertificateOcspData:[B

.field private peerCertificates:[Ljava/security/cert/X509Certificate;

.field private peerHost:Ljava/lang/String;

.field private peerPort:I

.field private peerTlsSctData:[B

.field private protocol:Ljava/lang/String;

.field private sessionContext:Lcom/android/org/conscrypt/AbstractSessionContext;

.field private final ssl:Lcom/android/org/conscrypt/SslWrapper;

.field private values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/org/conscrypt/SslWrapper;Lcom/android/org/conscrypt/AbstractSessionContext;)V
    .registers 5
    .param p1, "ssl"    # Lcom/android/org/conscrypt/SslWrapper;
    .param p2, "sessionContext"    # Lcom/android/org/conscrypt/AbstractSessionContext;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/conscrypt/ActiveSession;->peerPort:I

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/org/conscrypt/ActiveSession;->lastAccessedTime:J

    .line 58
    const-string/jumbo v0, "ssl"

    invoke-static {p1, v0}, Lcom/android/org/conscrypt/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/SslWrapper;

    iput-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    .line 59
    const-string/jumbo v0, "sessionContext"

    invoke-static {p2, v0}, Lcom/android/org/conscrypt/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/AbstractSessionContext;

    iput-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->sessionContext:Lcom/android/org/conscrypt/AbstractSessionContext;

    .line 60
    return-void
.end method

.method private checkPeerCertificatesPresent()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->peerCertificates:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->peerCertificates:[Ljava/security/cert/X509Certificate;

    array-length v0, v0

    if-nez v0, :cond_12

    .line 340
    :cond_9
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string/jumbo v1, "No peer certificates"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_12
    return-void
.end method

.method private configurePeer(Ljava/lang/String;I[Lcom/android/org/conscrypt/OpenSSLX509Certificate;)V
    .registers 5
    .param p1, "peerHost"    # Ljava/lang/String;
    .param p2, "peerPort"    # I
    .param p3, "peerCertificates"    # [Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/android/org/conscrypt/ActiveSession;->peerHost:Ljava/lang/String;

    .line 322
    iput p2, p0, Lcom/android/org/conscrypt/ActiveSession;->peerPort:I

    .line 323
    iput-object p3, p0, Lcom/android/org/conscrypt/ActiveSession;->peerCertificates:[Ljava/security/cert/X509Certificate;

    .line 324
    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SslWrapper;->getPeerCertificateOcspData()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->peerCertificateOcspData:[B

    .line 325
    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SslWrapper;->getPeerTlsSctData()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->peerTlsSctData:[B

    .line 326
    return-void
.end method

.method private getX509PeerCertificates()[Ljava/security/cert/X509Certificate;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->peerCertificates:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->peerCertificates:[Ljava/security/cert/X509Certificate;

    array-length v0, v0

    if-nez v0, :cond_12

    .line 330
    :cond_9
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string/jumbo v1, "No peer certificates"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :cond_12
    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->peerCertificates:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method private notifyUnbound(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 345
    instance-of v0, p1, Ljavax/net/ssl/SSLSessionBindingListener;

    if-eqz v0, :cond_e

    .line 346
    check-cast p1, Ljavax/net/ssl/SSLSessionBindingListener;

    .line 347
    .end local p1    # "value":Ljava/lang/Object;
    new-instance v0, Ljavax/net/ssl/SSLSessionBindingEvent;

    invoke-direct {v0, p0, p2}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    .line 346
    invoke-interface {p1, v0}, Ljavax/net/ssl/SSLSessionBindingListener;->valueUnbound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    .line 349
    :cond_e
    return-void
.end method


# virtual methods
.method public getApplicationBufferSize()I
    .registers 2

    .prologue
    .line 299
    const/16 v0, 0x4000

    return v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .registers 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->cipherSuite:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 267
    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SslWrapper;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->cipherSuite:Ljava/lang/String;

    .line 269
    :cond_c
    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->cipherSuite:Ljava/lang/String;

    return-object v0
.end method

.method public getCreationTime()J
    .registers 5

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/android/org/conscrypt/ActiveSession;->creationTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    .line 85
    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SslWrapper;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/org/conscrypt/ActiveSession;->creationTime:J

    .line 87
    :cond_10
    iget-wide v0, p0, Lcom/android/org/conscrypt/ActiveSession;->creationTime:J

    return-wide v0
.end method

.method public getId()[B
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->id:[B

    if-nez v0, :cond_c

    .line 65
    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SslWrapper;->getSessionId()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->id:[B

    .line 67
    :cond_c
    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->id:[B

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->id:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_18
    return-object v0

    :cond_19
    sget-object v0, Lcom/android/org/conscrypt/EmptyArray;->BYTE:[B

    goto :goto_18
.end method

.method public getLastAccessedTime()J
    .registers 5

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/android/org/conscrypt/ActiveSession;->lastAccessedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ActiveSession;->getCreationTime()J

    move-result-wide v0

    :goto_c
    return-wide v0

    :cond_d
    iget-wide v0, p0, Lcom/android/org/conscrypt/ActiveSession;->lastAccessedTime:J

    goto :goto_c
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 221
    iget-object v1, p0, Lcom/android/org/conscrypt/ActiveSession;->localCertificates:[Ljava/security/cert/X509Certificate;

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->localCertificates:[Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    goto :goto_5
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 257
    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->localCertificates:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->localCertificates:[Ljava/security/cert/X509Certificate;

    array-length v0, v0

    if-lez v0, :cond_14

    .line 258
    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->localCertificates:[Ljava/security/cert/X509Certificate;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0

    .line 260
    :cond_14
    return-object v2
.end method

.method public getPacketBufferSize()I
    .registers 2

    .prologue
    .line 294
    const/16 v0, 0x4145

    return v0
.end method

.method public getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/android/org/conscrypt/ActiveSession;->checkPeerCertificatesPresent()V

    .line 241
    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->peerCertificateChain:[Ljavax/security/cert/X509Certificate;

    .line 242
    .local v0, "result":[Ljavax/security/cert/X509Certificate;
    if-nez v0, :cond_f

    .line 244
    iget-object v1, p0, Lcom/android/org/conscrypt/ActiveSession;->peerCertificates:[Ljava/security/cert/X509Certificate;

    invoke-static {v1}, Lcom/android/org/conscrypt/SSLUtils;->toCertificateChain([Ljava/security/cert/X509Certificate;)[Ljavax/security/cert/X509Certificate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->peerCertificateChain:[Ljavax/security/cert/X509Certificate;

    .line 246
    :cond_f
    return-object v0
.end method

.method public bridge synthetic getPeerCertificates()[Ljava/security/cert/Certificate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ActiveSession;->getPeerCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getPeerCertificates()[Ljava/security/cert/X509Certificate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/android/org/conscrypt/ActiveSession;->checkPeerCertificatesPresent()V

    .line 216
    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->peerCertificates:[Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getPeerHost()Ljava/lang/String;
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->peerHost:Ljava/lang/String;

    return-object v0
.end method

.method public getPeerPort()I
    .registers 2

    .prologue
    .line 289
    iget v0, p0, Lcom/android/org/conscrypt/ActiveSession;->peerPort:I

    return v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/android/org/conscrypt/ActiveSession;->checkPeerCertificatesPresent()V

    .line 252
    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->peerCertificates:[Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method getPeerSignedCertificateTimestamp()[B
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 135
    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->peerTlsSctData:[B

    if-nez v0, :cond_6

    .line 136
    return-object v1

    .line 138
    :cond_6
    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->peerTlsSctData:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .registers 3

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->protocol:Ljava/lang/String;

    .line 275
    .local v0, "protocol":Ljava/lang/String;
    if-nez v0, :cond_c

    .line 276
    iget-object v1, p0, Lcom/android/org/conscrypt/ActiveSession;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/SslWrapper;->getVersion()Ljava/lang/String;

    move-result-object v0

    .line 277
    iput-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->protocol:Ljava/lang/String;

    .line 279
    :cond_c
    return-object v0
.end method

.method getRequestedServerName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SslWrapper;->getRequestedServerName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .registers 2

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ActiveSession;->isValid()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->sessionContext:Lcom/android/org/conscrypt/AbstractSessionContext;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getStatusResponses()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->peerCertificateOcspData:[B

    if-nez v0, :cond_9

    .line 122
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 125
    :cond_9
    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->peerCertificateOcspData:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 182
    if-nez p1, :cond_c

    .line 183
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_c
    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->values:Ljava/util/Map;

    if-nez v0, :cond_11

    .line 186
    return-object v1

    .line 188
    :cond_11
    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValueNames()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->values:Ljava/util/Map;

    .line 207
    .local v0, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 208
    :cond_a
    sget-object v1, Lcom/android/org/conscrypt/EmptyArray;->STRING:[Ljava/lang/String;

    return-object v1

    .line 210
    :cond_d
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public invalidate()V
    .registers 5

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/org/conscrypt/SslWrapper;->setTimeout(J)V

    .line 148
    return-void
.end method

.method public isValid()Z
    .registers 7

    .prologue
    .line 152
    iget-object v4, p0, Lcom/android/org/conscrypt/ActiveSession;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    invoke-virtual {v4}, Lcom/android/org/conscrypt/SslWrapper;->getTime()J

    move-result-wide v0

    .line 153
    .local v0, "creationTimeMillis":J
    iget-object v4, p0, Lcom/android/org/conscrypt/ActiveSession;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    invoke-virtual {v4}, Lcom/android/org/conscrypt/SslWrapper;->getTimeout()J

    move-result-wide v2

    .line 154
    .local v2, "timeoutMillis":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    cmp-long v4, v4, v0

    if-gez v4, :cond_17

    const/4 v4, 0x1

    :goto_16
    return v4

    :cond_17
    const/4 v4, 0x0

    goto :goto_16
.end method

.method onPeerCertificatesReceived(Ljava/lang/String;I[Lcom/android/org/conscrypt/OpenSSLX509Certificate;)V
    .registers 4
    .param p1, "peerHost"    # Ljava/lang/String;
    .param p2, "peerPort"    # I
    .param p3, "peerCertificates"    # [Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    .prologue
    .line 307
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/conscrypt/ActiveSession;->configurePeer(Ljava/lang/String;I[Lcom/android/org/conscrypt/OpenSSLX509Certificate;)V

    .line 308
    return-void
.end method

.method onSessionEstablished(Ljava/lang/String;I)V
    .registers 4
    .param p1, "peerHost"    # Ljava/lang/String;
    .param p2, "peerPort"    # I

    .prologue
    .line 314
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->id:[B

    .line 315
    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SslWrapper;->getLocalCertificates()[Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->localCertificates:[Ljava/security/cert/X509Certificate;

    .line 316
    iget-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SslWrapper;->getPeerCertificates()[Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/conscrypt/ActiveSession;->configurePeer(Ljava/lang/String;I[Lcom/android/org/conscrypt/OpenSSLX509Certificate;)V

    .line 317
    return-void
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 159
    if-nez p1, :cond_b

    .line 160
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "name"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 162
    :cond_b
    if-nez p2, :cond_16

    .line 163
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "value"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 165
    :cond_16
    iget-object v1, p0, Lcom/android/org/conscrypt/ActiveSession;->values:Ljava/util/Map;

    .line 166
    .local v1, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v1, :cond_22

    .line 168
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/android/org/conscrypt/ActiveSession;->values:Ljava/util/Map;

    .line 170
    .restart local v1    # "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_22
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 171
    .local v0, "old":Ljava/lang/Object;
    instance-of v2, p2, Ljavax/net/ssl/SSLSessionBindingListener;

    if-eqz v2, :cond_34

    .line 172
    check-cast p2, Ljavax/net/ssl/SSLSessionBindingListener;

    .end local p2    # "value":Ljava/lang/Object;
    new-instance v2, Ljavax/net/ssl/SSLSessionBindingEvent;

    invoke-direct {v2, p0, p1}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    invoke-interface {p2, v2}, Ljavax/net/ssl/SSLSessionBindingListener;->valueBound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    .line 174
    :cond_34
    instance-of v2, v0, Ljavax/net/ssl/SSLSessionBindingListener;

    if-eqz v2, :cond_43

    move-object v2, v0

    .line 175
    check-cast v2, Ljavax/net/ssl/SSLSessionBindingListener;

    new-instance v3, Ljavax/net/ssl/SSLSessionBindingEvent;

    invoke-direct {v3, p0, p1}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljavax/net/ssl/SSLSessionBindingListener;->valueUnbound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    .line 177
    :cond_43
    invoke-direct {p0, v0, p1}, Lcom/android/org/conscrypt/ActiveSession;->notifyUnbound(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public removeValue(Ljava/lang/String;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 193
    if-nez p1, :cond_b

    .line 194
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "name"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 196
    :cond_b
    iget-object v1, p0, Lcom/android/org/conscrypt/ActiveSession;->values:Ljava/util/Map;

    .line 197
    .local v1, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v1, :cond_10

    .line 198
    return-void

    .line 200
    :cond_10
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 201
    .local v0, "old":Ljava/lang/Object;
    invoke-direct {p0, v0, p1}, Lcom/android/org/conscrypt/ActiveSession;->notifyUnbound(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method resetId()V
    .registers 2

    .prologue
    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/conscrypt/ActiveSession;->id:[B

    .line 75
    return-void
.end method

.method setLastAccessedTime(J)V
    .registers 4
    .param p1, "accessTimeMillis"    # J

    .prologue
    .line 104
    iput-wide p1, p0, Lcom/android/org/conscrypt/ActiveSession;->lastAccessedTime:J

    .line 105
    return-void
.end method
