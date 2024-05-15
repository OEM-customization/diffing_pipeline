.class public abstract Ljavax/security/cert/Certificate;
.super Ljava/lang/Object;
.source "Certificate.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 77
    if-ne p0, p1, :cond_5

    .line 78
    return v7

    .line 79
    :cond_5
    instance-of v4, p1, Ljavax/security/cert/Certificate;

    if-nez v4, :cond_a

    .line 80
    return v6

    .line 82
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Ljavax/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    .line 83
    .local v3, "thisCert":[B
    check-cast p1, Ljavax/security/cert/Certificate;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p1}, Ljavax/security/cert/Certificate;->getEncoded()[B

    move-result-object v2

    .line 85
    .local v2, "otherCert":[B
    array-length v4, v3

    array-length v5, v2

    if-eq v4, v5, :cond_19

    .line 86
    return v6

    .line 87
    :cond_19
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1a
    array-length v4, v3

    if-ge v1, v4, :cond_27

    .line 88
    aget-byte v4, v3, v1

    aget-byte v5, v2, v1
    :try_end_21
    .catch Ljavax/security/cert/CertificateException; {:try_start_a .. :try_end_21} :catch_28

    if-eq v4, v5, :cond_24

    .line 89
    return v6

    .line 87
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 90
    :cond_27
    return v7

    .line 91
    .end local v1    # "i":I
    .end local v2    # "otherCert":[B
    .end local v3    # "thisCert":[B
    :catch_28
    move-exception v0

    .line 92
    .local v0, "e":Ljavax/security/cert/CertificateException;
    return v6
.end method

.method public abstract getEncoded()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateEncodingException;
        }
    .end annotation
.end method

.method public abstract getPublicKey()Ljava/security/PublicKey;
.end method

.method public hashCode()I
    .registers 6

    .prologue
    .line 103
    const/4 v3, 0x0

    .line 105
    .local v3, "retval":I
    :try_start_1
    invoke-virtual {p0}, Ljavax/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    .line 106
    .local v0, "certData":[B
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_6
    array-length v4, v0

    if-ge v2, v4, :cond_10

    .line 107
    aget-byte v4, v0, v2
    :try_end_b
    .catch Ljavax/security/cert/CertificateException; {:try_start_1 .. :try_end_b} :catch_11

    mul-int/2addr v4, v2

    add-int/2addr v3, v4

    .line 106
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 109
    :cond_10
    return v3

    .line 110
    .end local v0    # "certData":[B
    .end local v2    # "i":I
    :catch_11
    move-exception v1

    .line 111
    .local v1, "e":Ljavax/security/cert/CertificateException;
    return v3
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public abstract verify(Ljava/security/PublicKey;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation
.end method

.method public abstract verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation
.end method
