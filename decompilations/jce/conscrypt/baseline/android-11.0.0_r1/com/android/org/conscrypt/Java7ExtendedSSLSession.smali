.class Lcom/android/org/conscrypt/Java7ExtendedSSLSession;
.super Ljavax/net/ssl/ExtendedSSLSession;
.source "Java7ExtendedSSLSession.java"

# interfaces
.implements Lcom/android/org/conscrypt/ConscryptSession;


# static fields
.field private static final blacklist LOCAL_SUPPORTED_SIGNATURE_ALGORITHMS:[Ljava/lang/String;

.field private static final blacklist PEER_SUPPORTED_SIGNATURE_ALGORITHMS:[Ljava/lang/String;


# instance fields
.field protected final blacklist delegate:Lcom/android/org/conscrypt/ExternalSession;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 10

    .line 33
    const-string v0, "SHA512withRSA"

    const-string v1, "SHA512withECDSA"

    const-string v2, "SHA384withRSA"

    const-string v3, "SHA384withECDSA"

    const-string v4, "SHA256withRSA"

    const-string v5, "SHA256withECDSA"

    const-string v6, "SHA224withRSA"

    const-string v7, "SHA224withECDSA"

    const-string v8, "SHA1withRSA"

    const-string v9, "SHA1withECDSA"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/Java7ExtendedSSLSession;->LOCAL_SUPPORTED_SIGNATURE_ALGORITHMS:[Ljava/lang/String;

    .line 38
    const-string v0, "SHA1withRSA"

    const-string v1, "SHA1withECDSA"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/Java7ExtendedSSLSession;->PEER_SUPPORTED_SIGNATURE_ALGORITHMS:[Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/org/conscrypt/ExternalSession;)V
    .registers 2
    .param p1, "delegate"    # Lcom/android/org/conscrypt/ExternalSession;

    .line 42
    invoke-direct {p0}, Ljavax/net/ssl/ExtendedSSLSession;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/org/conscrypt/Java7ExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ExternalSession;

    .line 44
    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api getApplicationBufferSize()I
    .registers 2

    .line 179
    iget-object v0, p0, Lcom/android/org/conscrypt/Java7ExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ExternalSession;->getApplicationBufferSize()I

    move-result v0

    return v0
.end method

.method public blacklist getApplicationProtocol()Ljava/lang/String;
    .registers 2

    .line 184
    iget-object v0, p0, Lcom/android/org/conscrypt/Java7ExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ExternalSession;->getApplicationProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist core-platform-api test-api getCipherSuite()Ljava/lang/String;
    .registers 2

    .line 154
    iget-object v0, p0, Lcom/android/org/conscrypt/Java7ExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ExternalSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist core-platform-api test-api getCreationTime()J
    .registers 3

    .line 88
    iget-object v0, p0, Lcom/android/org/conscrypt/Java7ExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ExternalSession;->getCreationTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist core-platform-api test-api getId()[B
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/android/org/conscrypt/Java7ExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ExternalSession;->getId()[B

    move-result-object v0

    return-object v0
.end method

.method public final whitelist core-platform-api test-api getLastAccessedTime()J
    .registers 3

    .line 93
    iget-object v0, p0, Lcom/android/org/conscrypt/Java7ExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ExternalSession;->getLastAccessedTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist core-platform-api test-api getLocalCertificates()[Ljava/security/cert/Certificate;
    .registers 2

    .line 134
    iget-object v0, p0, Lcom/android/org/conscrypt/Java7ExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ExternalSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist core-platform-api test-api getLocalPrincipal()Ljava/security/Principal;
    .registers 2

    .line 149
    iget-object v0, p0, Lcom/android/org/conscrypt/Java7ExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ExternalSession;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist core-platform-api test-api getLocalSupportedSignatureAlgorithms()[Ljava/lang/String;
    .registers 2

    .line 49
    sget-object v0, Lcom/android/org/conscrypt/Java7ExtendedSSLSession;->LOCAL_SUPPORTED_SIGNATURE_ALGORITHMS:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist core-platform-api test-api getPacketBufferSize()I
    .registers 2

    .line 174
    iget-object v0, p0, Lcom/android/org/conscrypt/Java7ExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ExternalSession;->getPacketBufferSize()I

    move-result v0

    return v0
.end method

.method public final whitelist core-platform-api test-api getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/android/org/conscrypt/Java7ExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ExternalSession;->getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api getPeerCertificates()[Ljava/security/cert/Certificate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lcom/android/org/conscrypt/Java7ExtendedSSLSession;->getPeerCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPeerCertificates()[Ljava/security/cert/X509Certificate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/android/org/conscrypt/Java7ExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ExternalSession;->getPeerCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist core-platform-api test-api getPeerHost()Ljava/lang/String;
    .registers 2

    .line 164
    iget-object v0, p0, Lcom/android/org/conscrypt/Java7ExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ExternalSession;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist core-platform-api test-api getPeerPort()I
    .registers 2

    .line 169
    iget-object v0, p0, Lcom/android/org/conscrypt/Java7ExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ExternalSession;->getPeerPort()I

    move-result v0

    return v0
.end method

.method public final whitelist core-platform-api test-api getPeerPrincipal()Ljava/security/Principal;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/android/org/conscrypt/Java7ExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ExternalSession;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist getPeerSignedCertificateTimestamp()[B
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/android/org/conscrypt/Java7ExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ExternalSession;->getPeerSignedCertificateTimestamp()[B

    move-result-object v0

    return-object v0
.end method

.method public final whitelist core-platform-api test-api getPeerSupportedSignatureAlgorithms()[Ljava/lang/String;
    .registers 2

    .line 55
    sget-object v0, Lcom/android/org/conscrypt/Java7ExtendedSSLSession;->PEER_SUPPORTED_SIGNATURE_ALGORITHMS:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist core-platform-api test-api getProtocol()Ljava/lang/String;
    .registers 2

    .line 159
    iget-object v0, p0, Lcom/android/org/conscrypt/Java7ExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ExternalSession;->getProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist getRequestedServerName()Ljava/lang/String;
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/android/org/conscrypt/Java7ExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ExternalSession;->getRequestedServerName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist core-platform-api test-api getSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/android/org/conscrypt/Java7ExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ExternalSession;->getSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist getStatusResponses()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/android/org/conscrypt/Java7ExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ExternalSession;->getStatusResponses()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist core-platform-api test-api getValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lcom/android/org/conscrypt/Java7ExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ExternalSession;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ExternalSession;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist core-platform-api test-api getValueNames()[Ljava/lang/String;
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/android/org/conscrypt/Java7ExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ExternalSession;->getValueNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist core-platform-api test-api invalidate()V
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/android/org/conscrypt/Java7ExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ExternalSession;->invalidate()V

    .line 99
    return-void
.end method

.method public final whitelist core-platform-api test-api isValid()Z
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/android/org/conscrypt/Java7ExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ExternalSession;->isValid()Z

    move-result v0

    return v0
.end method

.method public final whitelist core-platform-api test-api putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "o"    # Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lcom/android/org/conscrypt/Java7ExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ExternalSession;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/org/conscrypt/ExternalSession;->putValue(Ljavax/net/ssl/SSLSession;Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    return-void
.end method

.method public final whitelist core-platform-api test-api removeValue(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/android/org/conscrypt/Java7ExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ExternalSession;

    invoke-virtual {v0, p0, p1}, Lcom/android/org/conscrypt/ExternalSession;->removeValue(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    .line 119
    return-void
.end method
