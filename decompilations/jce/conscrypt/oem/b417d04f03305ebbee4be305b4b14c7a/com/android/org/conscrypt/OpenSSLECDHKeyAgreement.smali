.class public final Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;
.super Ljavax/crypto/KeyAgreementSpi;
.source "OpenSSLECDHKeyAgreement.java"


# instance fields
.field private blacklist mExpectedResultLength:I

.field private blacklist mOpenSslPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;

.field private blacklist mResult:[B


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljavax/crypto/KeyAgreementSpi;-><init>()V

    return-void
.end method

.method private blacklist checkCompleted()V
    .registers 3

    .line 149
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mResult:[B

    if-eqz v0, :cond_5

    .line 152
    return-void

    .line 150
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Key agreement not completed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api engineDoPhase(Ljava/security/Key;Z)Ljava/security/Key;
    .registers 10
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "lastPhase"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mOpenSslPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;

    if-eqz v0, :cond_a1

    .line 58
    if-eqz p2, :cond_99

    .line 62
    if-eqz p1, :cond_91

    .line 65
    instance-of v0, p1, Ljava/security/PublicKey;

    if-eqz v0, :cond_76

    .line 68
    move-object v0, p1

    check-cast v0, Ljava/security/PublicKey;

    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->fromPublicKey(Ljava/security/PublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    .line 70
    .local v0, "openSslPublicKey":Lcom/android/org/conscrypt/OpenSSLKey;
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mExpectedResultLength:I

    new-array v1, v1, [B

    .line 71
    .local v1, "buffer":[B
    nop

    .line 74
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mOpenSslPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 75
    invoke-virtual {v3}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v3

    .line 71
    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->ECDH_compute_key([BILcom/android/org/conscrypt/NativeRef$EVP_PKEY;Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v2

    .line 77
    .local v2, "actualResultLength":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_5f

    .line 79
    iget v3, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mExpectedResultLength:I

    if-ne v2, v3, :cond_30

    .line 81
    move-object v3, v1

    .local v3, "result":[B
    goto :goto_3a

    .line 82
    .end local v3    # "result":[B
    :cond_30
    if-ge v2, v3, :cond_3e

    .line 84
    new-array v3, v2, [B

    .line 85
    .restart local v3    # "result":[B
    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mResult:[B

    array-length v6, v5

    invoke-static {v1, v4, v5, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    :goto_3a
    iput-object v3, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mResult:[B

    .line 93
    const/4 v4, 0x0

    return-object v4

    .line 88
    .end local v3    # "result":[B
    :cond_3e
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Engine produced a longer than expected result. Expected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mExpectedResultLength:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", actual: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 78
    :cond_5f
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Engine returned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 66
    .end local v0    # "openSslPublicKey":Lcom/android/org/conscrypt/OpenSSLKey;
    .end local v1    # "buffer":[B
    .end local v2    # "actualResultLength":I
    :cond_76
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a public key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_91
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_99
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ECDH only has one phase"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_a1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist core-platform-api test-api engineGenerateSecret([BI)I
    .registers 7
    .param p1, "sharedSecret"    # [B
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .line 99
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->checkCompleted()V

    .line 100
    array-length v0, p1

    sub-int/2addr v0, p2

    .line 101
    .local v0, "available":I
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mResult:[B

    array-length v2, v1

    if-gt v2, v0, :cond_13

    .line 106
    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mResult:[B

    array-length v1, v1

    return v1

    .line 102
    :cond_13
    new-instance v1, Lcom/android/org/conscrypt/ShortBufferWithoutStackTraceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Needed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mResult:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/conscrypt/ShortBufferWithoutStackTraceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected whitelist core-platform-api test-api engineGenerateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .registers 4
    .param p1, "algorithm"    # Ljava/lang/String;

    .line 118
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->checkCompleted()V

    .line 119
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->engineGenerateSecret()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method protected whitelist core-platform-api test-api engineGenerateSecret()[B
    .registers 2

    .line 112
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->checkCompleted()V

    .line 113
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mResult:[B

    return-object v0
.end method

.method protected whitelist core-platform-api test-api engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V
    .registers 7
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 124
    if-eqz p1, :cond_42

    .line 127
    instance-of v0, p1, Ljava/security/PrivateKey;

    if-eqz v0, :cond_27

    .line 131
    move-object v0, p1

    check-cast v0, Ljava/security/PrivateKey;

    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->fromPrivateKey(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    .line 132
    .local v0, "openSslKey":Lcom/android/org/conscrypt/OpenSSLKey;
    new-instance v1, Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    .line 133
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/conscrypt/NativeCrypto;->EC_KEY_get1_group(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/android/org/conscrypt/NativeRef$EC_GROUP;-><init>(J)V

    .line 132
    invoke-static {v1}, Lcom/android/org/conscrypt/NativeCrypto;->EC_GROUP_get_degree(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)I

    move-result v1

    .line 134
    .local v1, "fieldSizeBits":I
    add-int/lit8 v2, v1, 0x7

    div-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mExpectedResultLength:I

    .line 135
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mOpenSslPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 136
    return-void

    .line 128
    .end local v0    # "openSslKey":Lcom/android/org/conscrypt/OpenSSLKey;
    .end local v1    # "fieldSizeBits":I
    :cond_27
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a private key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_42
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist core-platform-api test-api engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 6
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 142
    if-nez p2, :cond_6

    .line 145
    invoke-virtual {p0, p1, p3}, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V

    .line 146
    return-void

    .line 143
    :cond_6
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "No algorithm parameters supported"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
