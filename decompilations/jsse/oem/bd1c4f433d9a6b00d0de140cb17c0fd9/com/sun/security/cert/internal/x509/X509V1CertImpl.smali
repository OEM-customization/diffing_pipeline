.class public Lcom/sun/security/cert/internal/x509/X509V1CertImpl;
.super Ljavax/security/cert/X509Certificate;
.source "X509V1CertImpl.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = -0x1c6d8776efacf2edL


# instance fields
.field private wrappedCert:Ljava/security/cert/X509Certificate;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljavax/security/cert/X509Certificate;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 5
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0}, Ljavax/security/cert/X509Certificate;-><init>()V

    .line 101
    :try_start_3
    invoke-static {}, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->getFactory()Ljava/security/cert/CertificateFactory;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    .line 100
    check-cast v1, Ljava/security/cert/X509Certificate;

    iput-object v1, p0, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->wrappedCert:Ljava/security/cert/X509Certificate;
    :try_end_f
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_f} :catch_10

    .line 105
    return-void

    .line 102
    :catch_10
    move-exception v0

    .line 103
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v1, Ljavax/security/cert/CertificateException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>([B)V
    .registers 6
    .param p1, "certData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0}, Ljavax/security/cert/X509Certificate;-><init>()V

    .line 83
    :try_start_3
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 85
    .local v0, "bs":Ljava/io/ByteArrayInputStream;
    invoke-static {}, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->getFactory()Ljava/security/cert/CertificateFactory;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    .line 84
    check-cast v2, Ljava/security/cert/X509Certificate;

    iput-object v2, p0, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->wrappedCert:Ljava/security/cert/X509Certificate;
    :try_end_14
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_14} :catch_15

    .line 89
    return-void

    .line 86
    .end local v0    # "bs":Ljava/io/ByteArrayInputStream;
    :catch_15
    move-exception v1

    .line 87
    .local v1, "e":Ljava/security/cert/CertificateException;
    new-instance v2, Ljavax/security/cert/CertificateException;

    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static declared-synchronized getFactory()Ljava/security/cert/CertificateFactory;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const-class v1, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;

    monitor-enter v1

    .line 58
    :try_start_3
    const-string/jumbo v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_c

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 317
    :try_start_1
    invoke-static {}, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->getFactory()Ljava/security/cert/CertificateFactory;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    .line 316
    check-cast v1, Ljava/security/cert/X509Certificate;

    iput-object v1, p0, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->wrappedCert:Ljava/security/cert/X509Certificate;
    :try_end_d
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_d} :catch_f
    .catchall {:try_start_1 .. :try_end_d} :catchall_2e

    monitor-exit p0

    .line 321
    return-void

    .line 318
    :catch_f
    move-exception v0

    .line 319
    .local v0, "e":Ljava/security/cert/CertificateException;
    :try_start_10
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "generateCertificate failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2e
    .catchall {:try_start_10 .. :try_end_2e} :catchall_2e

    .end local v0    # "e":Ljava/security/cert/CertificateException;
    :catchall_2e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 6
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 307
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->getEncoded()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->write([B)V
    :try_end_8
    .catch Ljavax/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_8} :catch_a
    .catchall {:try_start_1 .. :try_end_8} :catchall_29

    monitor-exit p0

    .line 311
    return-void

    .line 308
    :catch_a
    move-exception v0

    .line 309
    .local v0, "e":Ljavax/security/cert/CertificateEncodingException;
    :try_start_b
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getEncoded failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_29
    .catchall {:try_start_b .. :try_end_29} :catchall_29

    .end local v0    # "e":Ljavax/security/cert/CertificateEncodingException;
    :catchall_29
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public checkValidity()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateExpiredException;,
            Ljavax/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .prologue
    .line 168
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->checkValidity(Ljava/util/Date;)V

    .line 169
    return-void
.end method

.method public checkValidity(Ljava/util/Date;)V
    .registers 6
    .param p1, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateExpiredException;,
            Ljavax/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .prologue
    .line 182
    :try_start_0
    iget-object v2, p0, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->wrappedCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v2, p1}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_5
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_0 .. :try_end_5} :catch_11
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_0 .. :try_end_5} :catch_6

    .line 188
    return-void

    .line 185
    :catch_6
    move-exception v0

    .line 186
    .local v0, "e":Ljava/security/cert/CertificateExpiredException;
    new-instance v2, Ljavax/security/cert/CertificateExpiredException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateExpiredException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/security/cert/CertificateExpiredException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 183
    .end local v0    # "e":Ljava/security/cert/CertificateExpiredException;
    :catch_11
    move-exception v1

    .line 184
    .local v1, "e":Ljava/security/cert/CertificateNotYetValidException;
    new-instance v2, Ljavax/security/cert/CertificateNotYetValidException;

    invoke-virtual {v1}, Ljava/security/cert/CertificateNotYetValidException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getEncoded()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 115
    :try_start_0
    iget-object v1, p0, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->wrappedCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getEncoded()[B
    :try_end_5
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    .line 116
    :catch_7
    move-exception v0

    .line 117
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v1, Ljavax/security/cert/CertificateEncodingException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getIssuerDN()Ljava/security/Principal;
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->wrappedCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public getNotAfter()Ljava/util/Date;
    .registers 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->wrappedCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getNotBefore()Ljava/util/Date;
    .registers 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->wrappedCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .registers 3

    .prologue
    .line 207
    iget-object v1, p0, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->wrappedCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    .line 208
    .local v0, "key":Ljava/security/PublicKey;
    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->wrappedCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getSigAlgName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->wrappedCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSigAlgOID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->wrappedCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSigAlgOID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSigAlgParams()[B
    .registers 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->wrappedCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSigAlgParams()[B

    move-result-object v0

    return-object v0
.end method

.method public getSubjectDN()Ljava/security/Principal;
    .registers 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->wrappedCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->wrappedCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getX509Certificate()Ljava/security/cert/X509Certificate;
    .registers 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->wrappedCert:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->wrappedCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verify(Ljava/security/PublicKey;)V
    .registers 5
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 135
    :try_start_0
    iget-object v1, p0, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->wrappedCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1, p1}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_5
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_5} :catch_6

    .line 139
    return-void

    .line 136
    :catch_6
    move-exception v0

    .line 137
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v1, Ljavax/security/cert/CertificateException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .registers 6
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;->wrappedCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1, p1, p2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_5} :catch_6

    .line 160
    return-void

    .line 157
    :catch_6
    move-exception v0

    .line 158
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v1, Ljavax/security/cert/CertificateException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
