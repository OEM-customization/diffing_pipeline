.class public Lcom/android/org/conscrypt/ct/CTLogInfo;
.super Ljava/lang/Object;
.source "CTLogInfo.java"


# instance fields
.field private final description:Ljava/lang/String;

.field private final logId:[B

.field private final publicKey:Ljava/security/PublicKey;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    :try_start_3
    const-string/jumbo v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 45
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    .line 44
    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/ct/CTLogInfo;->logId:[B
    :try_end_14
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_14} :catch_1b

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
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 77
    if-ne p0, p1, :cond_5

    .line 78
    const/4 v1, 0x1

    return v1

    .line 80
    :cond_5
    instance-of v2, p1, Lcom/android/org/conscrypt/ct/CTLogInfo;

    if-nez v2, :cond_a

    .line 81
    return v1

    :cond_a
    move-object v0, p1

    .line 84
    check-cast v0, Lcom/android/org/conscrypt/ct/CTLogInfo;

    .line 86
    .local v0, "that":Lcom/android/org/conscrypt/ct/CTLogInfo;
    iget-object v2, p0, Lcom/android/org/conscrypt/ct/CTLogInfo;->publicKey:Ljava/security/PublicKey;

    iget-object v3, v0, Lcom/android/org/conscrypt/ct/CTLogInfo;->publicKey:Ljava/security/PublicKey;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 87
    iget-object v2, p0, Lcom/android/org/conscrypt/ct/CTLogInfo;->description:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/org/conscrypt/ct/CTLogInfo;->description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 86
    if-eqz v2, :cond_29

    .line 88
    iget-object v1, p0, Lcom/android/org/conscrypt/ct/CTLogInfo;->url:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/org/conscrypt/ct/CTLogInfo;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 85
    :cond_29
    return v1
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/CTLogInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getID()[B
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/CTLogInfo;->logId:[B

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/CTLogInfo;->publicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/CTLogInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 93
    const/4 v0, 0x1

    .line 94
    .local v0, "hash":I
    iget-object v1, p0, Lcom/android/org/conscrypt/ct/CTLogInfo;->publicKey:Ljava/security/PublicKey;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/lit8 v0, v1, 0x1f

    .line 95
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/org/conscrypt/ct/CTLogInfo;->description:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 96
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/org/conscrypt/ct/CTLogInfo;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 98
    return v0
.end method

.method public verifySingleSCT(Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;Lcom/android/org/conscrypt/ct/CertificateEntry;)Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;
    .registers 12
    .param p1, "sct"    # Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;
    .param p2, "entry"    # Lcom/android/org/conscrypt/ct/CertificateEntry;

    .prologue
    .line 109
    invoke-virtual {p1}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->getLogID()[B

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ct/CTLogInfo;->getID()[B

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-nez v7, :cond_11

    .line 110
    sget-object v7, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->UNKNOWN_LOG:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    return-object v7

    .line 115
    :cond_11
    :try_start_11
    invoke-virtual {p1, p2}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->encodeTBS(Lcom/android/org/conscrypt/ct/CertificateEntry;)[B
    :try_end_14
    .catch Lcom/android/org/conscrypt/ct/SerializationException; {:try_start_11 .. :try_end_14} :catch_3a

    move-result-object v6

    .line 122
    .local v6, "toVerify":[B
    :try_start_15
    invoke-virtual {p1}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->getSignature()Lcom/android/org/conscrypt/ct/DigitallySigned;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/conscrypt/ct/DigitallySigned;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "algorithm":Ljava/lang/String;
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;
    :try_end_20
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_15 .. :try_end_20} :catch_3e

    move-result-object v5

    .line 129
    .local v5, "signature":Ljava/security/Signature;
    :try_start_21
    iget-object v7, p0, Lcom/android/org/conscrypt/ct/CTLogInfo;->publicKey:Ljava/security/PublicKey;

    invoke-virtual {v5, v7}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V
    :try_end_26
    .catch Ljava/security/InvalidKeyException; {:try_start_21 .. :try_end_26} :catch_42

    .line 135
    :try_start_26
    invoke-virtual {v5, v6}, Ljava/security/Signature;->update([B)V

    .line 136
    invoke-virtual {p1}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->getSignature()Lcom/android/org/conscrypt/ct/DigitallySigned;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/conscrypt/ct/DigitallySigned;->getSignature()[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/security/Signature;->verify([B)Z

    move-result v7

    if-nez v7, :cond_46

    .line 137
    sget-object v7, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->INVALID_SIGNATURE:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;
    :try_end_39
    .catch Ljava/security/SignatureException; {:try_start_26 .. :try_end_39} :catch_49

    return-object v7

    .line 116
    .end local v0    # "algorithm":Ljava/lang/String;
    .end local v5    # "signature":Ljava/security/Signature;
    .end local v6    # "toVerify":[B
    :catch_3a
    move-exception v1

    .line 117
    .local v1, "e":Lcom/android/org/conscrypt/ct/SerializationException;
    sget-object v7, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->INVALID_SCT:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    return-object v7

    .line 124
    .end local v1    # "e":Lcom/android/org/conscrypt/ct/SerializationException;
    .restart local v6    # "toVerify":[B
    :catch_3e
    move-exception v3

    .line 125
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    sget-object v7, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->INVALID_SCT:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    return-object v7

    .line 130
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v0    # "algorithm":Ljava/lang/String;
    .restart local v5    # "signature":Ljava/security/Signature;
    :catch_42
    move-exception v2

    .line 131
    .local v2, "e":Ljava/security/InvalidKeyException;
    sget-object v7, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->INVALID_SCT:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    return-object v7

    .line 139
    .end local v2    # "e":Ljava/security/InvalidKeyException;
    :cond_46
    :try_start_46
    sget-object v7, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->VALID:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;
    :try_end_48
    .catch Ljava/security/SignatureException; {:try_start_46 .. :try_end_48} :catch_49

    return-object v7

    .line 140
    :catch_49
    move-exception v4

    .line 143
    .local v4, "e":Ljava/security/SignatureException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method
