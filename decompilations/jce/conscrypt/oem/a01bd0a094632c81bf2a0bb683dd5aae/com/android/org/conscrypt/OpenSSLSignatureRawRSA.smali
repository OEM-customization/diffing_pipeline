.class public final Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;
.super Ljava/security/SignatureSpi;
.source "OpenSSLSignatureRawRSA.java"


# instance fields
.field private inputBuffer:[B

.field private inputIsTooLong:Z

.field private inputOffset:I

.field private key:Lcom/android/org/conscrypt/OpenSSLKey;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .registers 8
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 90
    instance-of v4, p1, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;

    if-eqz v4, :cond_1f

    move-object v1, p1

    .line 91
    check-cast v1, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;

    .line 92
    .local v1, "rsaPrivateKey":Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 104
    .end local v1    # "rsaPrivateKey":Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;
    :goto_d
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v4}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/conscrypt/NativeCrypto;->RSA_size(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v0

    .line 105
    .local v0, "maxSize":I
    new-array v4, v0, [B

    iput-object v4, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    .line 106
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    .line 107
    return-void

    .line 93
    .end local v0    # "maxSize":I
    :cond_1f
    instance-of v4, p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v4, :cond_2d

    move-object v2, p1

    .line 94
    check-cast v2, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 95
    .local v2, "rsaPrivateKey":Ljava/security/interfaces/RSAPrivateCrtKey;
    invoke-static {v2}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getInstance(Ljava/security/interfaces/RSAPrivateCrtKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    goto :goto_d

    .line 96
    .end local v2    # "rsaPrivateKey":Ljava/security/interfaces/RSAPrivateCrtKey;
    :cond_2d
    instance-of v4, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v4, :cond_3b

    move-object v3, p1

    .line 97
    check-cast v3, Ljava/security/interfaces/RSAPrivateKey;

    .line 98
    .local v3, "rsaPrivateKey":Ljava/security/interfaces/RSAPrivateKey;
    invoke-static {v3}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->getInstance(Ljava/security/interfaces/RSAPrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    goto :goto_d

    .line 100
    .end local v3    # "rsaPrivateKey":Ljava/security/interfaces/RSAPrivateKey;
    :cond_3b
    new-instance v4, Ljava/security/InvalidKeyException;

    const-string/jumbo v5, "Need RSA private key"

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .registers 7
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 111
    instance-of v3, p1, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;

    if-eqz v3, :cond_1f

    move-object v1, p1

    .line 112
    check-cast v1, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;

    .line 113
    .local v1, "rsaPublicKey":Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 122
    .end local v1    # "rsaPublicKey":Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;
    :goto_d
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v3}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/conscrypt/NativeCrypto;->RSA_size(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v0

    .line 123
    .local v0, "maxSize":I
    new-array v3, v0, [B

    iput-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    .line 124
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    .line 125
    return-void

    .line 114
    .end local v0    # "maxSize":I
    :cond_1f
    instance-of v3, p1, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v3, :cond_2d

    move-object v2, p1

    .line 115
    check-cast v2, Ljava/security/interfaces/RSAPublicKey;

    .line 116
    .local v2, "rsaPublicKey":Ljava/security/interfaces/RSAPublicKey;
    invoke-static {v2}, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->getInstance(Ljava/security/interfaces/RSAPublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    goto :goto_d

    .line 118
    .end local v2    # "rsaPublicKey":Ljava/security/interfaces/RSAPublicKey;
    :cond_2d
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string/jumbo v4, "Need RSA public key"

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 130
    return-void
.end method

.method protected engineSign()[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 134
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    if-nez v2, :cond_e

    .line 136
    new-instance v2, Ljava/security/SignatureException;

    const-string/jumbo v3, "Need RSA private key"

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 139
    :cond_e
    iget-boolean v2, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputIsTooLong:Z

    if-eqz v2, :cond_43

    .line 140
    new-instance v2, Ljava/security/SignatureException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "input length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " != "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 141
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    array-length v4, v4

    .line 140
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 141
    const-string/jumbo v4, " (modulus size)"

    .line 140
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 144
    :cond_43
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    array-length v2, v2

    new-array v1, v2, [B

    .line 146
    .local v1, "outputBuffer":[B
    :try_start_48
    iget v2, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    .line 147
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v4}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v4

    const/4 v5, 0x1

    .line 146
    invoke-static {v2, v3, v1, v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->RSA_private_encrypt(I[B[BLcom/android/org/conscrypt/NativeRef$EVP_PKEY;I)I
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_56} :catch_59
    .catchall {:try_start_48 .. :try_end_56} :catchall_60

    .line 152
    iput v6, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    .line 148
    return-object v1

    .line 149
    :catch_59
    move-exception v0

    .line 150
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_5a
    new-instance v2, Ljava/security/SignatureException;

    invoke-direct {v2, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_60
    .catchall {:try_start_5a .. :try_end_60} :catchall_60

    .line 151
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_60
    move-exception v2

    .line 152
    iput v6, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    .line 151
    throw v2
.end method

.method protected engineUpdate(B)V
    .registers 5
    .param p1, "input"    # B

    .prologue
    .line 59
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    .line 61
    .local v0, "oldOffset":I
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    array-length v2, v2

    if-le v1, v2, :cond_11

    .line 62
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputIsTooLong:Z

    .line 63
    return-void

    .line 66
    :cond_11
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    aput-byte p1, v1, v0

    .line 67
    return-void
.end method

.method protected engineUpdate([BII)V
    .registers 7
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 71
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    .line 72
    .local v0, "oldOffset":I
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    .line 74
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    array-length v2, v2

    if-le v1, v2, :cond_12

    .line 75
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputIsTooLong:Z

    .line 76
    return-void

    .line 79
    :cond_12
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 80
    return-void
.end method

.method protected engineVerify([B)Z
    .registers 13
    .param p1, "sigBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 158
    iget-object v7, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    if-nez v7, :cond_e

    .line 160
    new-instance v7, Ljava/security/SignatureException;

    const-string/jumbo v8, "Need RSA public key"

    invoke-direct {v7, v8}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 163
    :cond_e
    iget-boolean v7, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputIsTooLong:Z

    if-eqz v7, :cond_13

    .line 164
    return v10

    .line 169
    :cond_13
    array-length v7, p1

    iget-object v8, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    array-length v8, v8

    if-le v7, v8, :cond_42

    .line 170
    new-instance v7, Ljava/security/SignatureException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Input signature length is too large: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, p1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 171
    const-string/jumbo v9, " > "

    .line 170
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 171
    iget-object v9, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    array-length v9, v9

    .line 170
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 174
    :cond_42
    iget-object v7, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    array-length v7, v7

    new-array v5, v7, [B

    .line 178
    .local v5, "outputBuffer":[B
    :try_start_47
    array-length v7, p1

    .line 179
    iget-object v8, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v8}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v8

    const/4 v9, 0x1

    .line 178
    invoke-static {v7, p1, v5, v8, v9}, Lcom/android/org/conscrypt/NativeCrypto;->RSA_public_decrypt(I[B[BLcom/android/org/conscrypt/NativeRef$EVP_PKEY;I)I
    :try_end_52
    .catch Ljava/security/SignatureException; {:try_start_47 .. :try_end_52} :catch_6b
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_52} :catch_67
    .catchall {:try_start_47 .. :try_end_52} :catchall_74

    move-result v6

    .line 186
    .local v6, "resultSize":I
    :try_start_53
    iget v7, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    if-ne v6, v7, :cond_78

    const/4 v4, 0x1

    .line 187
    .local v4, "matches":Z
    :goto_58
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_59
    if-ge v3, v6, :cond_7a

    .line 188
    iget-object v7, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    aget-byte v7, v7, v3

    aget-byte v8, v5, v3
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_61} :catch_6d
    .catchall {:try_start_53 .. :try_end_61} :catchall_74

    if-eq v7, v8, :cond_64

    .line 189
    const/4 v4, 0x0

    .line 187
    :cond_64
    add-int/lit8 v3, v3, 0x1

    goto :goto_59

    .line 182
    .end local v3    # "i":I
    .end local v4    # "matches":Z
    .end local v6    # "resultSize":I
    :catch_67
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/Exception;
    iput v10, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    .line 183
    return v10

    .line 180
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_6b
    move-exception v1

    .line 181
    .local v1, "e":Ljava/security/SignatureException;
    :try_start_6c
    throw v1
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_6d} :catch_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_74

    .line 193
    .end local v1    # "e":Ljava/security/SignatureException;
    :catch_6d
    move-exception v2

    .line 194
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_6e
    new-instance v7, Ljava/security/SignatureException;

    invoke-direct {v7, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v7
    :try_end_74
    .catchall {:try_start_6e .. :try_end_74} :catchall_74

    .line 195
    .end local v2    # "ex":Ljava/lang/Exception;
    :catchall_74
    move-exception v7

    .line 196
    iput v10, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    .line 195
    throw v7

    .line 186
    .restart local v6    # "resultSize":I
    :cond_78
    const/4 v4, 0x0

    .restart local v4    # "matches":Z
    goto :goto_58

    .line 196
    .restart local v3    # "i":I
    :cond_7a
    iput v10, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    .line 192
    return v4
.end method
