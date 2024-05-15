.class public abstract Lcom/android/org/conscrypt/OpenSSLEvpCipher;
.super Lcom/android/org/conscrypt/OpenSSLCipher;
.source "OpenSSLEvpCipher.java"


# instance fields
.field private blacklist calledUpdate:Z

.field private final blacklist cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

.field private blacklist modeBlockSize:I


# direct methods
.method protected constructor blacklist <init>(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V
    .registers 6
    .param p1, "mode"    # Lcom/android/org/conscrypt/OpenSSLCipher$Mode;
    .param p2, "padding"    # Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLCipher;-><init>(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V

    .line 38
    new-instance v0, Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    .line 39
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CIPHER_CTX_new()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;-><init>(J)V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    .line 55
    return-void
.end method

.method private blacklist reset()V
    .registers 7

    .line 209
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->encodedKey:[B

    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->iv:[B

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->isEncrypting()Z

    move-result v5

    const-wide/16 v1, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CipherInit_ex(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;J[B[BZ)V

    .line 210
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->calledUpdate:Z

    .line 211
    return-void
.end method


# virtual methods
.method blacklist doFinalInternal([BII)I
    .registers 11
    .param p1, "output"    # [B
    .param p2, "outputOffset"    # I
    .param p3, "maximumLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .line 138
    move v0, p2

    .line 144
    .local v0, "initialOutputOffset":I
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->isEncrypting()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_d

    iget-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->calledUpdate:Z

    if-nez v1, :cond_d

    .line 145
    return v2

    .line 149
    :cond_d
    array-length v1, p1

    sub-int/2addr v1, p2

    .line 151
    .local v1, "bytesLeft":I
    if-lt v1, p3, :cond_18

    .line 152
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    invoke-static {v2, p1, p2}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CipherFinal_ex(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;[BI)I

    move-result v2

    .local v2, "writtenBytes":I
    goto :goto_28

    .line 154
    .end local v2    # "writtenBytes":I
    :cond_18
    new-array v3, p3, [B

    .line 155
    .local v3, "lastBlock":[B
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    invoke-static {v4, v3, v2}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CipherFinal_ex(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;[BI)I

    move-result v4

    .line 156
    .local v4, "writtenBytes":I
    if-gt v4, v1, :cond_2f

    .line 159
    if-lez v4, :cond_27

    .line 160
    invoke-static {v3, v2, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    .end local v3    # "lastBlock":[B
    :cond_27
    move v2, v4

    .end local v4    # "writtenBytes":I
    .restart local v2    # "writtenBytes":I
    :goto_28
    add-int/2addr p2, v2

    .line 165
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->reset()V

    .line 167
    sub-int v3, p2, v0

    return v3

    .line 157
    .end local v2    # "writtenBytes":I
    .restart local v3    # "lastBlock":[B
    .restart local v4    # "writtenBytes":I
    :cond_2f
    new-instance v2, Lcom/android/org/conscrypt/ShortBufferWithoutStackTraceException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "buffer is too short: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/android/org/conscrypt/ShortBufferWithoutStackTraceException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method blacklist engineInitInternal([BLjava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 23
    .param p1, "encodedKey"    # [B
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 62
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    instance-of v1, v8, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v1, :cond_14

    .line 63
    move-object v1, v8

    check-cast v1, Ljavax/crypto/spec/IvParameterSpec;

    .line 64
    .local v1, "ivParams":Ljavax/crypto/spec/IvParameterSpec;
    invoke-virtual {v1}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v1

    .line 65
    .local v1, "iv":[B
    goto :goto_15

    .line 66
    .end local v1    # "iv":[B
    :cond_14
    const/4 v1, 0x0

    .line 69
    .restart local v1    # "iv":[B
    :goto_15
    array-length v2, v7

    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->mode:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    invoke-virtual {v0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->getCipherName(ILcom/android/org/conscrypt/OpenSSLCipher$Mode;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_get_cipherbyname(Ljava/lang/String;)J

    move-result-wide v16

    .line 71
    .local v16, "cipherType":J
    const-wide/16 v2, 0x0

    cmp-long v2, v16, v2

    if-eqz v2, :cond_f9

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->isEncrypting()Z

    move-result v18

    .line 78
    .local v18, "encrypting":Z
    invoke-static/range {v16 .. v17}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CIPHER_iv_length(J)I

    move-result v6

    .line 79
    .local v6, "expectedIvLength":I
    const-string v2, " mode"

    if-nez v1, :cond_5e

    if-eqz v6, :cond_5e

    .line 80
    if-eqz v18, :cond_42

    .line 85
    new-array v1, v6, [B

    .line 86
    if-eqz v9, :cond_3e

    .line 87
    invoke-virtual {v9, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto :goto_a5

    .line 89
    :cond_3e
    invoke-static {v1}, Lcom/android/org/conscrypt/NativeCrypto;->RAND_bytes([B)V

    goto :goto_a5

    .line 81
    :cond_42
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IV must be specified in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->mode:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 91
    :cond_5e
    if-nez v6, :cond_7f

    if-nez v1, :cond_63

    goto :goto_7f

    .line 92
    :cond_63
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IV not used in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->mode:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 93
    :cond_7f
    :goto_7f
    if-eqz v1, :cond_a5

    array-length v2, v1

    if-ne v2, v6, :cond_85

    goto :goto_a5

    .line 94
    :cond_85
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expected IV length of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 98
    :cond_a5
    :goto_a5
    move-object v5, v1

    .end local v1    # "iv":[B
    .local v5, "iv":[B
    iput-object v5, v0, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->iv:[B

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->supportsVariableSizeKey()Z

    move-result v1

    if-eqz v1, :cond_d0

    .line 101
    iget-object v10, v0, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-wide/from16 v11, v16

    move/from16 v15, v18

    invoke-static/range {v10 .. v15}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CipherInit_ex(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;J[B[BZ)V

    .line 102
    iget-object v1, v0, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    array-length v2, v7

    invoke-static {v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CIPHER_CTX_set_key_length(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;I)V

    .line 103
    iget-object v1, v0, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    const-wide/16 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->isEncrypting()Z

    move-result v10

    move-object/from16 v4, p1

    move-object v11, v5

    .end local v5    # "iv":[B
    .local v11, "iv":[B
    move v12, v6

    .end local v6    # "expectedIvLength":I
    .local v12, "expectedIvLength":I
    move v6, v10

    invoke-static/range {v1 .. v6}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CipherInit_ex(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;J[B[BZ)V

    goto :goto_dd

    .line 105
    .end local v11    # "iv":[B
    .end local v12    # "expectedIvLength":I
    .restart local v5    # "iv":[B
    .restart local v6    # "expectedIvLength":I
    :cond_d0
    move-object v11, v5

    move v12, v6

    .end local v5    # "iv":[B
    .end local v6    # "expectedIvLength":I
    .restart local v11    # "iv":[B
    .restart local v12    # "expectedIvLength":I
    iget-object v1, v0, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    move-wide/from16 v2, v16

    move-object/from16 v4, p1

    move/from16 v6, v18

    invoke-static/range {v1 .. v6}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CipherInit_ex(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;J[B[BZ)V

    .line 109
    :goto_dd
    iget-object v1, v0, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->getPadding()Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    move-result-object v2

    sget-object v3, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->PKCS5PADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_ea

    const/4 v2, 0x1

    goto :goto_eb

    :cond_ea
    move v2, v4

    :goto_eb
    invoke-static {v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CIPHER_CTX_set_padding(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;Z)V

    .line 111
    iget-object v1, v0, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    invoke-static {v1}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CIPHER_CTX_block_size(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;)I

    move-result v1

    iput v1, v0, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->modeBlockSize:I

    .line 112
    iput-boolean v4, v0, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->calledUpdate:Z

    .line 113
    return-void

    .line 72
    .end local v11    # "iv":[B
    .end local v12    # "expectedIvLength":I
    .end local v18    # "encrypting":Z
    .restart local v1    # "iv":[B
    :cond_f9
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find name for key length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v7

    mul-int/lit8 v4, v4, 0x8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " and mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->mode:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method abstract blacklist getCipherName(ILcom/android/org/conscrypt/OpenSSLCipher$Mode;)Ljava/lang/String;
.end method

.method blacklist getOutputSizeForFinal(I)I
    .registers 7
    .param p1, "inputLen"    # I

    .line 172
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->modeBlockSize:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 173
    return p1

    .line 175
    :cond_6
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->get_EVP_CIPHER_CTX_buf_len(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;)I

    move-result v0

    .line 177
    .local v0, "buffered":I
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->getPadding()Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    move-result-object v1

    sget-object v2, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    if-ne v1, v2, :cond_17

    .line 178
    add-int v1, v0, p1

    return v1

    .line 180
    :cond_17
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    invoke-static {v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_EVP_CIPHER_CTX_final_used(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;)Z

    move-result v1

    .line 182
    .local v1, "finalUsed":Z
    add-int v2, p1, v0

    const/4 v3, 0x0

    if-eqz v1, :cond_25

    iget v4, p0, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->modeBlockSize:I

    goto :goto_26

    :cond_25
    move v4, v3

    :goto_26
    add-int/2addr v2, v4

    .line 186
    .local v2, "totalLen":I
    iget v4, p0, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->modeBlockSize:I

    rem-int v4, v2, v4

    if-nez v4, :cond_35

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->isEncrypting()Z

    move-result v4

    if-eqz v4, :cond_34

    goto :goto_35

    .line 187
    :cond_34
    goto :goto_37

    :cond_35
    :goto_35
    iget v3, p0, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->modeBlockSize:I

    :goto_37
    add-int/2addr v2, v3

    .line 189
    iget v3, p0, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->modeBlockSize:I

    rem-int v3, v2, v3

    sub-int v3, v2, v3

    return v3
.end method

.method blacklist getOutputSizeForUpdate(I)I
    .registers 3
    .param p1, "inputLen"    # I

    .line 196
    invoke-virtual {p0, p1}, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->getOutputSizeForFinal(I)I

    move-result v0

    return v0
.end method

.method blacklist updateInternal([BII[BII)I
    .registers 15
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .param p6, "maximumLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .line 118
    move v0, p5

    .line 120
    .local v0, "intialOutputOffset":I
    array-length v1, p4

    sub-int/2addr v1, p5

    .line 121
    .local v1, "bytesLeft":I
    if-lt v1, p6, :cond_17

    .line 126
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    move-object v3, p4

    move v4, p5

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-static/range {v2 .. v7}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CipherUpdate(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;[BI[BII)I

    move-result v2

    add-int/2addr p5, v2

    .line 129
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/org/conscrypt/OpenSSLEvpCipher;->calledUpdate:Z

    .line 131
    sub-int v2, p5, v0

    return v2

    .line 122
    :cond_17
    new-instance v2, Lcom/android/org/conscrypt/ShortBufferWithoutStackTraceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "output buffer too small during update: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/org/conscrypt/ShortBufferWithoutStackTraceException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
