.class public Lcom/android/org/conscrypt/OpenSSLCipherChaCha20;
.super Lcom/android/org/conscrypt/OpenSSLCipher;
.source "OpenSSLCipherChaCha20.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist BLOCK_SIZE_BYTES:I = 0x40

.field private static final blacklist NONCE_SIZE_BYTES:I = 0xc


# instance fields
.field private blacklist blockCounter:I

.field private blacklist currentBlockConsumedBytes:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 35
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLCipher;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    .line 45
    iput v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherChaCha20;->blockCounter:I

    .line 47
    return-void
.end method

.method private blacklist reset()V
    .registers 2

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherChaCha20;->blockCounter:I

    .line 117
    iput v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    .line 118
    return-void
.end method


# virtual methods
.method blacklist checkSupportedKeySize(I)V
    .registers 5
    .param p1, "keySize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 127
    const/16 v0, 0x20

    if-ne p1, v0, :cond_5

    .line 131
    return-void

    .line 128
    :cond_5
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes (must be 32)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist checkSupportedMode(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;)V
    .registers 4
    .param p1, "mode"    # Lcom/android/org/conscrypt/OpenSSLCipher$Mode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 135
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->NONE:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    if-ne p1, v0, :cond_5

    .line 138
    return-void

    .line 136
    :cond_5
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    const-string v1, "Mode must be NONE"

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist checkSupportedPadding(Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V
    .registers 4
    .param p1, "padding"    # Lcom/android/org/conscrypt/OpenSSLCipher$Padding;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 142
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    if-ne p1, v0, :cond_5

    .line 145
    return-void

    .line 143
    :cond_5
    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    const-string v1, "Must be NoPadding"

    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist doFinalInternal([BII)I
    .registers 5
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

    .line 111
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLCipherChaCha20;->reset()V

    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method blacklist engineInitInternal([BLjava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 7
    .param p1, "encodedKey"    # [B
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 52
    instance-of v0, p2, Ljavax/crypto/spec/IvParameterSpec;

    const/16 v1, 0xc

    if-eqz v0, :cond_1f

    .line 53
    move-object v0, p2

    check-cast v0, Ljavax/crypto/spec/IvParameterSpec;

    .line 54
    .local v0, "ivParams":Ljavax/crypto/spec/IvParameterSpec;
    invoke-virtual {v0}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v2

    array-length v2, v2

    if-ne v2, v1, :cond_17

    .line 57
    invoke-virtual {v0}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLCipherChaCha20;->iv:[B

    .line 58
    .end local v0    # "ivParams":Ljavax/crypto/spec/IvParameterSpec;
    goto :goto_36

    .line 55
    .restart local v0    # "ivParams":Ljavax/crypto/spec/IvParameterSpec;
    :cond_17
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "IV must be 12 bytes long"

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 59
    .end local v0    # "ivParams":Ljavax/crypto/spec/IvParameterSpec;
    :cond_1f
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLCipherChaCha20;->isEncrypting()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 63
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherChaCha20;->iv:[B

    .line 64
    if-eqz p3, :cond_31

    .line 65
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherChaCha20;->iv:[B

    invoke-virtual {p3, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto :goto_36

    .line 67
    :cond_31
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherChaCha20;->iv:[B

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->RAND_bytes([B)V

    .line 70
    :goto_36
    return-void

    .line 60
    :cond_37
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "IV must be specified when decrypting"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist getBaseCipherName()Ljava/lang/String;
    .registers 2

    .line 122
    const-string v0, "ChaCha20"

    return-object v0
.end method

.method blacklist getCipherBlockSize()I
    .registers 2

    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method blacklist getOutputSizeForFinal(I)I
    .registers 2
    .param p1, "inputLen"    # I

    .line 154
    return p1
.end method

.method blacklist getOutputSizeForUpdate(I)I
    .registers 2
    .param p1, "inputLen"    # I

    .line 159
    return p1
.end method

.method blacklist updateInternal([BII[BII)I
    .registers 27
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

    .line 75
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v11, p4

    move/from16 v3, p5

    array-length v4, v11

    sub-int/2addr v4, v3

    if-gt v2, v4, :cond_7a

    .line 78
    move/from16 v4, p3

    .line 79
    .local v4, "inputLenRemaining":I
    iget v5, v0, Lcom/android/org/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    if-lez v5, :cond_59

    .line 82
    const/16 v6, 0x40

    rsub-int/lit8 v5, v5, 0x40

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 83
    .local v5, "len":I
    new-array v7, v6, [B

    .line 84
    .local v7, "singleBlock":[B
    new-array v8, v6, [B

    .line 85
    .local v8, "singleBlockOut":[B
    iget v9, v0, Lcom/android/org/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    move-object/from16 v10, p1

    invoke-static {v10, v1, v7, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x40

    iget-object v9, v0, Lcom/android/org/conscrypt/OpenSSLCipherChaCha20;->encodedKey:[B

    iget-object v14, v0, Lcom/android/org/conscrypt/OpenSSLCipherChaCha20;->iv:[B

    iget v12, v0, Lcom/android/org/conscrypt/OpenSSLCipherChaCha20;->blockCounter:I

    move/from16 v19, v12

    move-object v12, v7

    move-object/from16 v18, v14

    move-object v14, v8

    move-object/from16 v17, v9

    invoke-static/range {v12 .. v19}, Lcom/android/org/conscrypt/NativeCrypto;->chacha20_encrypt_decrypt([BI[BII[B[BI)V

    .line 88
    iget v9, v0, Lcom/android/org/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    invoke-static {v8, v9, v11, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    iget v9, v0, Lcom/android/org/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    add-int/2addr v9, v5

    iput v9, v0, Lcom/android/org/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    .line 90
    if-ge v9, v6, :cond_49

    .line 92
    return v5

    .line 94
    :cond_49
    nop

    .line 95
    const/4 v6, 0x0

    iput v6, v0, Lcom/android/org/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    .line 96
    add-int/2addr v1, v5

    .line 97
    .end local p2    # "inputOffset":I
    .local v1, "inputOffset":I
    add-int/2addr v3, v5

    .line 98
    .end local p5    # "outputOffset":I
    .local v3, "outputOffset":I
    sub-int/2addr v4, v5

    .line 99
    iget v6, v0, Lcom/android/org/conscrypt/OpenSSLCipherChaCha20;->blockCounter:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Lcom/android/org/conscrypt/OpenSSLCipherChaCha20;->blockCounter:I

    move v12, v3

    move v13, v4

    goto :goto_5d

    .line 79
    .end local v1    # "inputOffset":I
    .end local v3    # "outputOffset":I
    .end local v5    # "len":I
    .end local v7    # "singleBlock":[B
    .end local v8    # "singleBlockOut":[B
    .restart local p2    # "inputOffset":I
    .restart local p5    # "outputOffset":I
    :cond_59
    move-object/from16 v10, p1

    move v12, v3

    move v13, v4

    .line 101
    .end local v4    # "inputLenRemaining":I
    .end local p2    # "inputOffset":I
    .end local p5    # "outputOffset":I
    .restart local v1    # "inputOffset":I
    .local v12, "outputOffset":I
    .local v13, "inputLenRemaining":I
    :goto_5d
    iget-object v8, v0, Lcom/android/org/conscrypt/OpenSSLCipherChaCha20;->encodedKey:[B

    iget-object v9, v0, Lcom/android/org/conscrypt/OpenSSLCipherChaCha20;->iv:[B

    iget v14, v0, Lcom/android/org/conscrypt/OpenSSLCipherChaCha20;->blockCounter:I

    move-object/from16 v3, p1

    move v4, v1

    move-object/from16 v5, p4

    move v6, v12

    move v7, v13

    move v10, v14

    invoke-static/range {v3 .. v10}, Lcom/android/org/conscrypt/NativeCrypto;->chacha20_encrypt_decrypt([BI[BII[B[BI)V

    .line 103
    rem-int/lit8 v3, v13, 0x40

    iput v3, v0, Lcom/android/org/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    .line 104
    iget v3, v0, Lcom/android/org/conscrypt/OpenSSLCipherChaCha20;->blockCounter:I

    div-int/lit8 v4, v13, 0x40

    add-int/2addr v3, v4

    iput v3, v0, Lcom/android/org/conscrypt/OpenSSLCipherChaCha20;->blockCounter:I

    .line 105
    return v2

    .line 76
    .end local v1    # "inputOffset":I
    .end local v12    # "outputOffset":I
    .end local v13    # "inputLenRemaining":I
    .restart local p2    # "inputOffset":I
    .restart local p5    # "outputOffset":I
    :cond_7a
    new-instance v4, Lcom/android/org/conscrypt/ShortBufferWithoutStackTraceException;

    const-string v5, "Insufficient output space"

    invoke-direct {v4, v5}, Lcom/android/org/conscrypt/ShortBufferWithoutStackTraceException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
