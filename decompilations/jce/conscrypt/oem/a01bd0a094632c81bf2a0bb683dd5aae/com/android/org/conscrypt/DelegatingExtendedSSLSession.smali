.class final Lcom/android/org/conscrypt/DelegatingExtendedSSLSession;
.super Ljavax/net/ssl/ExtendedSSLSession;
.source "DelegatingExtendedSSLSession.java"


# static fields
.field private static final LOCAL_SUPPORTED_SIGNATURE_ALGORITHMS:[Ljava/lang/String;

.field private static final PEER_SUPPORTED_SIGNATURE_ALGORITHMS:[Ljava/lang/String;


# instance fields
.field private final delegate:Lcom/android/org/conscrypt/ActiveSession;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 35
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    .line 36
    const-string/jumbo v1, "SHA512withRSA"

    aput-object v1, v0, v3

    .line 37
    const-string/jumbo v1, "SHA512withECDSA"

    aput-object v1, v0, v4

    .line 38
    const-string/jumbo v1, "SHA384withRSA"

    aput-object v1, v0, v5

    .line 39
    const-string/jumbo v1, "SHA384withECDSA"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 40
    const-string/jumbo v1, "SHA256withRSA"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 41
    const-string/jumbo v1, "SHA256withECDSA"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 42
    const-string/jumbo v1, "SHA224withRSA"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 43
    const-string/jumbo v1, "SHA224withECDSA"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 44
    const-string/jumbo v1, "SHA1withRSA"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 45
    const-string/jumbo v1, "SHA1withECDSA"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 35
    sput-object v0, Lcom/android/org/conscrypt/DelegatingExtendedSSLSession;->LOCAL_SUPPORTED_SIGNATURE_ALGORITHMS:[Ljava/lang/String;

    .line 48
    new-array v0, v5, [Ljava/lang/String;

    .line 49
    const-string/jumbo v1, "SHA1withRSA"

    aput-object v1, v0, v3

    .line 50
    const-string/jumbo v1, "SHA1withECDSA"

    aput-object v1, v0, v4

    .line 48
    sput-object v0, Lcom/android/org/conscrypt/DelegatingExtendedSSLSession;->PEER_SUPPORTED_SIGNATURE_ALGORITHMS:[Ljava/lang/String;

    .line 33
    return-void
.end method

.method constructor <init>(Lcom/android/org/conscrypt/ActiveSession;)V
    .registers 2
    .param p1, "delegate"    # Lcom/android/org/conscrypt/ActiveSession;

    .prologue
    .line 55
    invoke-direct {p0}, Ljavax/net/ssl/ExtendedSSLSession;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/org/conscrypt/DelegatingExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ActiveSession;

    .line 57
    return-void
.end method


# virtual methods
.method public getApplicationBufferSize()I
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/org/conscrypt/DelegatingExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ActiveSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ActiveSession;->getApplicationBufferSize()I

    move-result v0

    return v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .registers 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/org/conscrypt/DelegatingExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ActiveSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ActiveSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreationTime()J
    .registers 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/org/conscrypt/DelegatingExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ActiveSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ActiveSession;->getCreationTime()J

    move-result-wide v0

    return-wide v0
.end method

.method getDelegate()Lcom/android/org/conscrypt/ActiveSession;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/org/conscrypt/DelegatingExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ActiveSession;

    return-object v0
.end method

.method public getId()[B
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/org/conscrypt/DelegatingExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ActiveSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ActiveSession;->getId()[B

    move-result-object v0

    return-object v0
.end method

.method public getLastAccessedTime()J
    .registers 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/org/conscrypt/DelegatingExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ActiveSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ActiveSession;->getLastAccessedTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/org/conscrypt/DelegatingExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ActiveSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ActiveSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/org/conscrypt/DelegatingExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ActiveSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ActiveSession;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public getLocalSupportedSignatureAlgorithms()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    sget-object v0, Lcom/android/org/conscrypt/DelegatingExtendedSSLSession;->LOCAL_SUPPORTED_SIGNATURE_ALGORITHMS:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getPacketBufferSize()I
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/org/conscrypt/DelegatingExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ActiveSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ActiveSession;->getPacketBufferSize()I

    move-result v0

    return v0
.end method

.method public getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/org/conscrypt/DelegatingExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ActiveSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ActiveSession;->getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getPeerCertificates()[Ljava/security/cert/Certificate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/org/conscrypt/DelegatingExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ActiveSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ActiveSession;->getPeerCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getPeerHost()Ljava/lang/String;
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/org/conscrypt/DelegatingExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ActiveSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ActiveSession;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPeerPort()I
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/org/conscrypt/DelegatingExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ActiveSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ActiveSession;->getPeerPort()I

    move-result v0

    return v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/org/conscrypt/DelegatingExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ActiveSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ActiveSession;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public getPeerSupportedSignatureAlgorithms()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    sget-object v0, Lcom/android/org/conscrypt/DelegatingExtendedSSLSession;->PEER_SUPPORTED_SIGNATURE_ALGORITHMS:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/org/conscrypt/DelegatingExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ActiveSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ActiveSession;->getProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestedServerNames()Ljava/util/List;
    .registers 13

    .prologue
    const/4 v11, 0x0

    .line 80
    :try_start_1
    iget-object v7, p0, Lcom/android/org/conscrypt/DelegatingExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ActiveSession;

    invoke-virtual {v7}, Lcom/android/org/conscrypt/ActiveSession;->getRequestedServerName()Ljava/lang/String;

    move-result-object v5

    .line 81
    .local v5, "requestedServerName":Ljava/lang/String;
    if-nez v5, :cond_a

    .line 82
    return-object v11

    .line 86
    :cond_a
    const-string/jumbo v7, "javax.net.ssl.SNIHostName"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    .line 87
    .local v6, "sniHostNameConstructor":Ljava/lang/reflect/Constructor;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;
    :try_end_2a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_2a} :catch_2c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_2a} :catch_2e
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_2a} :catch_30
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_2a} :catch_32
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_2a} :catch_34

    move-result-object v7

    return-object v7

    .line 89
    .end local v5    # "requestedServerName":Ljava/lang/String;
    .end local v6    # "sniHostNameConstructor":Ljava/lang/reflect/Constructor;
    :catch_2c
    move-exception v3

    .line 95
    :goto_2d
    return-object v11

    .line 90
    :catch_2e
    move-exception v4

    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_2d

    .line 91
    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_30
    move-exception v1

    .local v1, "e":Ljava/lang/IllegalAccessException;
    goto :goto_2d

    .line 92
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_32
    move-exception v0

    .local v0, "e":Ljava/lang/ClassNotFoundException;
    goto :goto_2d

    .line 93
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_34
    move-exception v2

    .local v2, "e":Ljava/lang/InstantiationException;
    goto :goto_2d
.end method

.method public getSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/org/conscrypt/DelegatingExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ActiveSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ActiveSession;->getSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/org/conscrypt/DelegatingExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ActiveSession;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ActiveSession;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValueNames()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/org/conscrypt/DelegatingExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ActiveSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ActiveSession;->getValueNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public invalidate()V
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/org/conscrypt/DelegatingExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ActiveSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ActiveSession;->invalidate()V

    .line 121
    return-void
.end method

.method public isValid()Z
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/org/conscrypt/DelegatingExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ActiveSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ActiveSession;->isValid()Z

    move-result v0

    return v0
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/org/conscrypt/DelegatingExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ActiveSession;

    invoke-virtual {v0, p1, p2}, Lcom/android/org/conscrypt/ActiveSession;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    return-void
.end method

.method public removeValue(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/org/conscrypt/DelegatingExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ActiveSession;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ActiveSession;->removeValue(Ljava/lang/String;)V

    .line 141
    return-void
.end method
