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
.field private final blacklist certificate:[B

.field private final blacklist entryType:Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

.field private final blacklist issuerKeyHash:[B


# direct methods
.method private constructor blacklist <init>(Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;[B[B)V
    .registers 6
    .param p1, "entryType"    # Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;
    .param p2, "certificate"    # [B
    .param p3, "issuerKeyHash"    # [B

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    sget-object v0, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;->PRECERT_ENTRY:Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    if-ne p1, v0, :cond_12

    if-eqz p3, :cond_a

    goto :goto_12

    .line 65
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "issuerKeyHash missing for precert entry."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_12
    :goto_12
    sget-object v0, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;->X509_ENTRY:Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    if-ne p1, v0, :cond_21

    if-nez p3, :cond_19

    goto :goto_21

    .line 67
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unexpected issuerKeyHash for X509 entry."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_21
    :goto_21
    if-eqz p3, :cond_31

    array-length v0, p3

    const/16 v1, 0x20

    if-ne v0, v1, :cond_29

    goto :goto_31

    .line 71
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "issuerKeyHash must be 32 bytes long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_31
    :goto_31
    iput-object p1, p0, Lcom/android/org/conscrypt/ct/CertificateEntry;->entryType:Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    .line 75
    iput-object p3, p0, Lcom/android/org/conscrypt/ct/CertificateEntry;->issuerKeyHash:[B

    .line 76
    iput-object p2, p0, Lcom/android/org/conscrypt/ct/CertificateEntry;->certificate:[B

    .line 77
    return-void
.end method

.method public static blacklist createForPrecertificate(Lcom/android/org/conscrypt/OpenSSLX509Certificate;Lcom/android/org/conscrypt/OpenSSLX509Certificate;)Lcom/android/org/conscrypt/ct/CertificateEntry;
    .registers 7
    .param p0, "leaf"    # Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .param p1, "issuer"    # Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 91
    const-string v0, "1.3.6.1.4.1.11129.2.4.2"

    :try_start_2
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getNonCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 95
    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getTBSCertificateWithoutExtension(Ljava/lang/String;)[B

    move-result-object v0

    .line 97
    .local v0, "tbs":[B
    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    .line 98
    .local v1, "issuerKey":[B
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 99
    .local v2, "md":Ljava/security/MessageDigest;
    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 100
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 102
    .local v3, "issuerKeyHash":[B
    invoke-static {v0, v3}, Lcom/android/org/conscrypt/ct/CertificateEntry;->createForPrecertificate([B[B)Lcom/android/org/conscrypt/ct/CertificateEntry;

    move-result-object v4

    return-object v4

    .line 92
    .end local v0    # "tbs":[B
    .end local v1    # "issuerKey":[B
    .end local v2    # "md":Ljava/security/MessageDigest;
    .end local v3    # "issuerKeyHash":[B
    :cond_2a
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Certificate does not contain embedded signed timestamps"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "leaf":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .end local p1    # "issuer":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    throw v0
    :try_end_32
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_32} :catch_32

    .line 103
    .restart local p0    # "leaf":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .restart local p1    # "issuer":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    :catch_32
    move-exception v0

    .line 105
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static blacklist createForPrecertificate([B[B)Lcom/android/org/conscrypt/ct/CertificateEntry;
    .registers 4
    .param p0, "tbsCertificate"    # [B
    .param p1, "issuerKeyHash"    # [B

    .line 85
    new-instance v0, Lcom/android/org/conscrypt/ct/CertificateEntry;

    sget-object v1, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;->PRECERT_ENTRY:Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    invoke-direct {v0, v1, p0, p1}, Lcom/android/org/conscrypt/ct/CertificateEntry;-><init>(Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;[B[B)V

    return-object v0
.end method

.method public static blacklist createForX509Certificate(Ljava/security/cert/X509Certificate;)Lcom/android/org/conscrypt/ct/CertificateEntry;
    .registers 2
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 115
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/ct/CertificateEntry;->createForX509Certificate([B)Lcom/android/org/conscrypt/ct/CertificateEntry;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist createForX509Certificate([B)Lcom/android/org/conscrypt/ct/CertificateEntry;
    .registers 4
    .param p0, "x509Certificate"    # [B

    .line 110
    new-instance v0, Lcom/android/org/conscrypt/ct/CertificateEntry;

    sget-object v1, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;->X509_ENTRY:Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/android/org/conscrypt/ct/CertificateEntry;-><init>(Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;[B[B)V

    return-object v0
.end method


# virtual methods
.method public blacklist encode(Ljava/io/OutputStream;)V
    .registers 5
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/CertificateEntry;->entryType:Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;->ordinal()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2}, Lcom/android/org/conscrypt/ct/Serialization;->writeNumber(Ljava/io/OutputStream;JI)V

    .line 133
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/CertificateEntry;->entryType:Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    sget-object v1, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;->PRECERT_ENTRY:Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    if-ne v0, v1, :cond_16

    .line 134
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/CertificateEntry;->issuerKeyHash:[B

    invoke-static {p1, v0}, Lcom/android/org/conscrypt/ct/Serialization;->writeFixedBytes(Ljava/io/OutputStream;[B)V

    .line 136
    :cond_16
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/CertificateEntry;->certificate:[B

    const/4 v1, 0x3

    invoke-static {p1, v0, v1}, Lcom/android/org/conscrypt/ct/Serialization;->writeVariableBytes(Ljava/io/OutputStream;[BI)V

    .line 137
    return-void
.end method

.method public blacklist getCertificate()[B
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/CertificateEntry;->certificate:[B

    return-object v0
.end method

.method public blacklist getEntryType()Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/CertificateEntry;->entryType:Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    return-object v0
.end method

.method public blacklist getIssuerKeyHash()[B
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/CertificateEntry;->issuerKeyHash:[B

    return-object v0
.end method
