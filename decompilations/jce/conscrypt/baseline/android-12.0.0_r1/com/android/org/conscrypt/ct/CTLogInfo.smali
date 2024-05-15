.class public Lcom/android/org/conscrypt/ct/CTLogInfo;
.super Ljava/lang/Object;
.source "CTLogInfo.java"


# instance fields
.field private final blacklist description:Ljava/lang/String;

.field private final blacklist logId:[B

.field private final blacklist publicKey:Ljava/security/PublicKey;

.field private final blacklist url:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    :try_start_3
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 45
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ct/CTLogInfo;->logId:[B
    :try_end_13
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_13} :catch_1b

    .line 49
    nop

    .line 51
    iput-object p1, p0, Lcom/android/org/conscrypt/ct/CTLogInfo;->publicKey:Ljava/security/PublicKey;

    .line 52
    iput-object p2, p0, Lcom/android/org/conscrypt/ct/CTLogInfo;->description:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcom/android/org/conscrypt/ct/CTLogInfo;->url:Ljava/lang/String;

    .line 54
    return-void

    .line 46
    :catch_1b
    move-exception v0

    .line 48
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 77
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 78
    return v0

    .line 80
    :cond_4
    instance-of v1, p1, Lcom/android/org/conscrypt/ct/CTLogInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 81
    return v2

    .line 84
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/android/org/conscrypt/ct/CTLogInfo;

    .line 85
    .local v1, "that":Lcom/android/org/conscrypt/ct/CTLogInfo;
    iget-object v3, p0, Lcom/android/org/conscrypt/ct/CTLogInfo;->publicKey:Ljava/security/PublicKey;

    iget-object v4, v1, Lcom/android/org/conscrypt/ct/CTLogInfo;->publicKey:Ljava/security/PublicKey;

    .line 86
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    iget-object v3, p0, Lcom/android/org/conscrypt/ct/CTLogInfo;->description:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/org/conscrypt/ct/CTLogInfo;->description:Ljava/lang/String;

    .line 87
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    iget-object v3, p0, Lcom/android/org/conscrypt/ct/CTLogInfo;->url:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/org/conscrypt/ct/CTLogInfo;->url:Ljava/lang/String;

    .line 88
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    goto :goto_2d

    :cond_2c
    move v0, v2

    .line 85
    :goto_2d
    return v0
.end method

.method public blacklist getDescription()Ljava/lang/String;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/CTLogInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getID()[B
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/CTLogInfo;->logId:[B

    return-object v0
.end method

.method public blacklist getPublicKey()Ljava/security/PublicKey;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/CTLogInfo;->publicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public blacklist getUrl()Ljava/lang/String;
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/CTLogInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 93
    const/4 v0, 0x1

    .line 94
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/org/conscrypt/ct/CTLogInfo;->publicKey:Ljava/security/PublicKey;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 95
    .end local v0    # "hash":I
    .local v1, "hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/android/org/conscrypt/ct/CTLogInfo;->description:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 96
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/org/conscrypt/ct/CTLogInfo;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 98
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    return v1
.end method

.method public blacklist verifySingleSCT(Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;Lcom/android/org/conscrypt/ct/CertificateEntry;)Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;
    .registers 7
    .param p1, "sct"    # Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;
    .param p2, "entry"    # Lcom/android/org/conscrypt/ct/CertificateEntry;

    .line 109
    invoke-virtual {p1}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->getLogID()[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ct/CTLogInfo;->getID()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_11

    .line 110
    sget-object v0, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->UNKNOWN_LOG:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    return-object v0

    .line 115
    :cond_11
    :try_start_11
    invoke-virtual {p1, p2}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->encodeTBS(Lcom/android/org/conscrypt/ct/CertificateEntry;)[B

    move-result-object v0
    :try_end_15
    .catch Lcom/android/org/conscrypt/ct/SerializationException; {:try_start_11 .. :try_end_15} :catch_50

    .line 118
    .local v0, "toVerify":[B
    nop

    .line 122
    :try_start_16
    invoke-virtual {p1}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->getSignature()Lcom/android/org/conscrypt/ct/DigitallySigned;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/conscrypt/ct/DigitallySigned;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "algorithm":Ljava/lang/String;
    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2
    :try_end_22
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_16 .. :try_end_22} :catch_4c

    move-object v1, v2

    .line 126
    .local v1, "signature":Ljava/security/Signature;
    nop

    .line 129
    :try_start_24
    iget-object v2, p0, Lcom/android/org/conscrypt/ct/CTLogInfo;->publicKey:Ljava/security/PublicKey;

    invoke-virtual {v1, v2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V
    :try_end_29
    .catch Ljava/security/InvalidKeyException; {:try_start_24 .. :try_end_29} :catch_48

    .line 132
    nop

    .line 135
    :try_start_2a
    invoke-virtual {v1, v0}, Ljava/security/Signature;->update([B)V

    .line 136
    invoke-virtual {p1}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->getSignature()Lcom/android/org/conscrypt/ct/DigitallySigned;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/conscrypt/ct/DigitallySigned;->getSignature()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->verify([B)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 137
    sget-object v2, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->INVALID_SIGNATURE:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    return-object v2

    .line 139
    :cond_3e
    sget-object v2, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->VALID:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;
    :try_end_40
    .catch Ljava/security/SignatureException; {:try_start_2a .. :try_end_40} :catch_41

    return-object v2

    .line 140
    :catch_41
    move-exception v2

    .line 143
    .local v2, "e":Ljava/security/SignatureException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 130
    .end local v2    # "e":Ljava/security/SignatureException;
    :catch_48
    move-exception v2

    .line 131
    .local v2, "e":Ljava/security/InvalidKeyException;
    sget-object v3, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->INVALID_SCT:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    return-object v3

    .line 124
    .end local v1    # "signature":Ljava/security/Signature;
    .end local v2    # "e":Ljava/security/InvalidKeyException;
    :catch_4c
    move-exception v1

    .line 125
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    sget-object v2, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->INVALID_SCT:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    return-object v2

    .line 116
    .end local v0    # "toVerify":[B
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_50
    move-exception v0

    .line 117
    .local v0, "e":Lcom/android/org/conscrypt/ct/SerializationException;
    sget-object v1, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->INVALID_SCT:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    return-object v1
.end method
