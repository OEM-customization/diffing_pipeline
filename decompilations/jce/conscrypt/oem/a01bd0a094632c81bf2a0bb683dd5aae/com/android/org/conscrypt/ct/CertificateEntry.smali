.class public Lcom/android/org/conscrypt/ct/CertificateEntry;
.super Ljava/lang/Object;
.source "CertificateEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;
    }
.end annotation


# instance fields
.field private final certificate:[B

.field private final entryType:Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

.field private final issuerKeyHash:[B


# direct methods
.method private constructor <init>(Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;[B[B)V
    .registers 6
    .param p1, "entryType"    # Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;
    .param p2, "certificate"    # [B
    .param p3, "issuerKeyHash"    # [B

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    sget-object v0, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;->PRECERT_ENTRY:Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    if-ne p1, v0, :cond_12

    if-nez p3, :cond_12

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "issuerKeyHash missing for precert entry."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_12
    sget-object v0, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;->X509_ENTRY:Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    if-ne p1, v0, :cond_21

    if-eqz p3, :cond_21

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unexpected issuerKeyHash for X509 entry."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_21
    if-eqz p3, :cond_31

    array-length v0, p3

    const/16 v1, 0x20

    if-eq v0, v1, :cond_31

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "issuerKeyHash must be 32 bytes long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_31
    iput-object p1, p0, Lcom/android/org/conscrypt/ct/CertificateEntry;->entryType:Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    .line 72
    iput-object p3, p0, Lcom/android/org/conscrypt/ct/CertificateEntry;->issuerKeyHash:[B

    .line 73
    iput-object p2, p0, Lcom/android/org/conscrypt/ct/CertificateEntry;->certificate:[B

    .line 74
    return-void
.end method

.method public static createForPrecertificate(Lcom/android/org/conscrypt/OpenSSLX509Certificate;Lcom/android/org/conscrypt/OpenSSLX509Certificate;)Lcom/android/org/conscrypt/ct/CertificateEntry;
    .registers 10
    .param p0, "leaf"    # Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .param p1, "issuer"    # Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 86
    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getNonCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v6

    const-string/jumbo v7, "1.3.6.1.4.1.11129.2.4.2"

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1d

    .line 87
    new-instance v6, Ljava/security/cert/CertificateException;

    const-string/jumbo v7, "Certificate does not contain embedded signed timestamps"

    invoke-direct {v6, v7}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_16
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_16} :catch_16

    .line 99
    :catch_16
    move-exception v0

    .line 101
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 90
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_1d
    :try_start_1d
    const-string/jumbo v6, "1.3.6.1.4.1.11129.2.4.2"

    invoke-virtual {p0, v6}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->withDeletedExtension(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    move-result-object v4

    .line 91
    .local v4, "preCert":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    invoke-virtual {v4}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getTBSCertificate()[B

    move-result-object v5

    .line 93
    .local v5, "tbs":[B
    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    invoke-interface {v6}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    .line 94
    .local v1, "issuerKey":[B
    const-string/jumbo v6, "SHA-256"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 95
    .local v3, "md":Ljava/security/MessageDigest;
    invoke-virtual {v3, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 96
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 98
    .local v2, "issuerKeyHash":[B
    invoke-static {v5, v2}, Lcom/android/org/conscrypt/ct/CertificateEntry;->createForPrecertificate([B[B)Lcom/android/org/conscrypt/ct/CertificateEntry;
    :try_end_41
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1d .. :try_end_41} :catch_16

    move-result-object v6

    return-object v6
.end method

.method public static createForPrecertificate([B[B)Lcom/android/org/conscrypt/ct/CertificateEntry;
    .registers 4
    .param p0, "tbsCertificate"    # [B
    .param p1, "issuerKeyHash"    # [B

    .prologue
    .line 80
    new-instance v0, Lcom/android/org/conscrypt/ct/CertificateEntry;

    sget-object v1, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;->PRECERT_ENTRY:Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    invoke-direct {v0, v1, p0, p1}, Lcom/android/org/conscrypt/ct/CertificateEntry;-><init>(Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;[B[B)V

    return-object v0
.end method

.method public static createForX509Certificate(Ljava/security/cert/X509Certificate;)Lcom/android/org/conscrypt/ct/CertificateEntry;
    .registers 2
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/ct/CertificateEntry;->createForX509Certificate([B)Lcom/android/org/conscrypt/ct/CertificateEntry;

    move-result-object v0

    return-object v0
.end method

.method public static createForX509Certificate([B)Lcom/android/org/conscrypt/ct/CertificateEntry;
    .registers 4
    .param p0, "x509Certificate"    # [B

    .prologue
    .line 106
    new-instance v0, Lcom/android/org/conscrypt/ct/CertificateEntry;

    sget-object v1, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;->X509_ENTRY:Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/android/org/conscrypt/ct/CertificateEntry;-><init>(Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;[B[B)V

    return-object v0
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .registers 5
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/CertificateEntry;->entryType:Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;->ordinal()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2}, Lcom/android/org/conscrypt/ct/Serialization;->writeNumber(Ljava/io/OutputStream;JI)V

    .line 129
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/CertificateEntry;->entryType:Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    sget-object v1, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;->PRECERT_ENTRY:Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    if-ne v0, v1, :cond_16

    .line 130
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/CertificateEntry;->issuerKeyHash:[B

    invoke-static {p1, v0}, Lcom/android/org/conscrypt/ct/Serialization;->writeFixedBytes(Ljava/io/OutputStream;[B)V

    .line 132
    :cond_16
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/CertificateEntry;->certificate:[B

    const/4 v1, 0x3

    invoke-static {p1, v0, v1}, Lcom/android/org/conscrypt/ct/Serialization;->writeVariableBytes(Ljava/io/OutputStream;[BI)V

    .line 133
    return-void
.end method

.method public getCertificate()[B
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/CertificateEntry;->certificate:[B

    return-object v0
.end method

.method public getEntryType()Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/CertificateEntry;->entryType:Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    return-object v0
.end method

.method public getIssuerKeyHash()[B
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/CertificateEntry;->issuerKeyHash:[B

    return-object v0
.end method
