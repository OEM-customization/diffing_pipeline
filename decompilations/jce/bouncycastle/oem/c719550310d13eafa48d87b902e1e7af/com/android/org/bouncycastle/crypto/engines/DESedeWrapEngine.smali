.class public Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;
.super Ljava/lang/Object;
.source "DESedeWrapEngine.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/Wrapper;


# static fields
.field private static final IV2:[B


# instance fields
.field digest:[B

.field private engine:Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

.field private forWrapping:Z

.field private iv:[B

.field private param:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

.field private paramPlusIV:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

.field sha1:Lcom/android/org/bouncycastle/crypto/Digest;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->IV2:[B

    .line 33
    return-void

    .line 52
    :array_a
    .array-data 1
        0x4at
        -0x23t
        -0x5et
        0x2ct
        0x79t
        -0x18t
        0x21t
        0x5t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->sha1:Lcom/android/org/bouncycastle/crypto/Digest;

    .line 62
    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->digest:[B

    .line 33
    return-void
.end method

.method private calculateCMSKeyChecksum([B)[B
    .registers 7
    .param p1, "key"    # [B

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 323
    new-array v0, v4, [B

    .line 325
    .local v0, "result":[B
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->sha1:Lcom/android/org/bouncycastle/crypto/Digest;

    array-length v2, p1

    invoke-interface {v1, p1, v3, v2}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 326
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->sha1:Lcom/android/org/bouncycastle/crypto/Digest;

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->digest:[B

    invoke-interface {v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 328
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->digest:[B

    invoke-static {v1, v3, v0, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 330
    return-object v0
.end method

.method private checkCMSKeyChecksum([B[B)Z
    .registers 4
    .param p1, "key"    # [B
    .param p2, "checksum"    # [B

    .prologue
    .line 344
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->calculateCMSKeyChecksum([B)[B

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    return v0
.end method

.method private static reverse([B)[B
    .registers 5
    .param p0, "bs"    # [B

    .prologue
    .line 349
    array-length v2, p0

    new-array v1, v2, [B

    .line 350
    .local v1, "result":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    array-length v2, p0

    if-ge v0, v2, :cond_12

    .line 352
    array-length v2, p0

    add-int/lit8 v3, v0, 0x1

    sub-int/2addr v2, v3

    aget-byte v2, p0, v2

    aput-byte v2, v1, v0

    .line 350
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 354
    :cond_12
    return-object v1
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 131
    const-string/jumbo v0, "DESede"

    return-object v0
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 8
    .param p1, "forWrapping"    # Z
    .param p2, "param"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;

    .prologue
    const/16 v4, 0x8

    .line 73
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->forWrapping:Z

    .line 74
    new-instance v2, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance v3, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;

    invoke-direct {v3}, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;-><init>()V

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    .line 77
    instance-of v2, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v2, :cond_40

    move-object v0, p2

    .line 79
    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    .line 80
    .local v0, "pr":Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    .line 81
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    .line 88
    .end local v0    # "pr":Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;
    .local v1, "sr":Ljava/security/SecureRandom;
    :goto_1f
    instance-of v2, p2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    if-eqz v2, :cond_46

    .line 90
    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .end local p2    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .line 92
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->forWrapping:Z

    if-eqz v2, :cond_3f

    .line 97
    new-array v2, v4, [B

    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    .line 98
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    invoke-virtual {v1, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 100
    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    invoke-direct {v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 122
    :cond_3f
    return-void

    .line 85
    .end local v1    # "sr":Ljava/security/SecureRandom;
    .restart local p2    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_40
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .restart local v1    # "sr":Ljava/security/SecureRandom;
    goto :goto_1f

    .line 103
    :cond_46
    instance-of v2, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v2, :cond_3f

    .line 105
    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    .end local p2    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 106
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    .line 107
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .line 109
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->forWrapping:Z

    if-eqz v2, :cond_76

    .line 111
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    if-eqz v2, :cond_6d

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    array-length v2, v2

    if-eq v2, v4, :cond_3f

    .line 113
    :cond_6d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "IV is not 8 octets"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 118
    :cond_76
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 119
    const-string/jumbo v3, "You should not supply an IV for unwrapping"

    .line 118
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public unwrap([BII)[B
    .registers 18
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 217
    iget-boolean v10, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->forWrapping:Z

    if-eqz v10, :cond_d

    .line 219
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string/jumbo v11, "Not set for unwrapping"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 222
    :cond_d
    if-nez p1, :cond_18

    .line 224
    new-instance v10, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string/jumbo v11, "Null pointer as ciphertext"

    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 227
    :cond_18
    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v6

    .line 228
    .local v6, "blockSize":I
    rem-int v10, p3, v6

    if-eqz v10, :cond_3c

    .line 230
    new-instance v10, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Ciphertext not multiple of "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 251
    :cond_3c
    new-instance v8, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    sget-object v11, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->IV2:[B

    invoke-direct {v8, v10, v11}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    .line 253
    .local v8, "param2":Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;
    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v8}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 255
    move/from16 v0, p3

    new-array v4, v0, [B

    .line 257
    .local v4, "TEMP3":[B
    const/4 v7, 0x0

    .local v7, "currentBytePos":I
    :goto_50
    move/from16 v0, p3

    if-eq v7, v0, :cond_5d

    .line 259
    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    add-int v11, p2, v7

    invoke-virtual {v10, p1, v11, v4, v7}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    .line 257
    add-int/2addr v7, v6

    goto :goto_50

    .line 263
    :cond_5d
    invoke-static {v4}, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->reverse([B)[B

    move-result-object v3

    .line 266
    .local v3, "TEMP2":[B
    const/16 v10, 0x8

    new-array v10, v10, [B

    iput-object v10, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    .line 268
    array-length v10, v3

    add-int/lit8 v10, v10, -0x8

    new-array v2, v10, [B

    .line 270
    .local v2, "TEMP1":[B
    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x8

    invoke-static {v3, v11, v10, v12, v13}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 271
    array-length v10, v3

    add-int/lit8 v10, v10, -0x8

    const/16 v11, 0x8

    const/4 v12, 0x0

    invoke-static {v3, v11, v2, v12, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 275
    new-instance v10, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    iget-object v12, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    invoke-direct {v10, v11, v12}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    iput-object v10, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 277
    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    const/4 v12, 0x0

    invoke-virtual {v10, v12, v11}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 279
    array-length v10, v2

    new-array v5, v10, [B

    .line 281
    .local v5, "WKCKS":[B
    const/4 v7, 0x0

    :goto_95
    array-length v10, v5

    if-eq v7, v10, :cond_9f

    .line 283
    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v10, v2, v7, v5, v7}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    .line 281
    add-int/2addr v7, v6

    goto :goto_95

    .line 288
    :cond_9f
    array-length v10, v5

    add-int/lit8 v10, v10, -0x8

    new-array v9, v10, [B

    .line 289
    .local v9, "result":[B
    const/16 v10, 0x8

    new-array v1, v10, [B

    .line 291
    .local v1, "CKStoBeVerified":[B
    array-length v10, v5

    add-int/lit8 v10, v10, -0x8

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v5, v11, v9, v12, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 292
    array-length v10, v5

    add-int/lit8 v10, v10, -0x8

    const/4 v11, 0x0

    const/16 v12, 0x8

    invoke-static {v5, v10, v1, v11, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 296
    invoke-direct {p0, v9, v1}, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->checkCMSKeyChecksum([B[B)Z

    move-result v10

    if-nez v10, :cond_c8

    .line 298
    new-instance v10, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    .line 299
    const-string/jumbo v11, "Checksum inside ciphertext is corrupted"

    .line 298
    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 303
    :cond_c8
    return-object v9
.end method

.method public wrap([BII)[B
    .registers 20
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I

    .prologue
    .line 144
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->forWrapping:Z

    if-nez v12, :cond_f

    .line 146
    new-instance v12, Ljava/lang/IllegalStateException;

    const-string/jumbo v13, "Not initialized for wrapping"

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 149
    :cond_f
    move/from16 v0, p3

    new-array v10, v0, [B

    .line 151
    .local v10, "keyToBeWrapped":[B
    const/4 v12, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v1, v10, v12, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 154
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->calculateCMSKeyChecksum([B)[B

    move-result-object v3

    .line 157
    .local v3, "CKS":[B
    array-length v12, v10

    array-length v13, v3

    add-int/2addr v12, v13

    new-array v7, v12, [B

    .line 159
    .local v7, "WKCKS":[B
    array-length v12, v10

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v10, v13, v7, v14, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 160
    array-length v12, v10

    array-length v13, v3

    const/4 v14, 0x0

    invoke-static {v3, v14, v7, v12, v13}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 165
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v12}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v8

    .line 167
    .local v8, "blockSize":I
    array-length v12, v7

    rem-int/2addr v12, v8

    if-eqz v12, :cond_49

    .line 169
    new-instance v12, Ljava/lang/IllegalStateException;

    const-string/jumbo v13, "Not multiple of block length"

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 172
    :cond_49
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    const/4 v14, 0x1

    invoke-virtual {v12, v14, v13}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 174
    array-length v12, v7

    new-array v4, v12, [B

    .line 176
    .local v4, "TEMP1":[B
    const/4 v9, 0x0

    .local v9, "currentBytePos":I
    :goto_59
    array-length v12, v7

    if-eq v9, v12, :cond_65

    .line 178
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v12, v7, v9, v4, v9}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    .line 176
    add-int/2addr v9, v8

    goto :goto_59

    .line 182
    :cond_65
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    array-length v12, v12

    array-length v13, v4

    add-int/2addr v12, v13

    new-array v5, v12, [B

    .line 184
    .local v5, "TEMP2":[B
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    array-length v13, v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v12, v14, v5, v15, v13}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 185
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    array-length v12, v12

    array-length v13, v4

    const/4 v14, 0x0

    invoke-static {v4, v14, v5, v12, v13}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 188
    invoke-static {v5}, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->reverse([B)[B

    move-result-object v6

    .line 193
    .local v6, "TEMP3":[B
    new-instance v11, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    sget-object v13, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->IV2:[B

    invoke-direct {v11, v12, v13}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    .line 195
    .local v11, "param2":Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    const/4 v13, 0x1

    invoke-virtual {v12, v13, v11}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 197
    const/4 v9, 0x0

    :goto_9e
    array-length v12, v6

    if-eq v9, v12, :cond_aa

    .line 199
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v12, v6, v9, v6, v9}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    .line 197
    add-int/2addr v9, v8

    goto :goto_9e

    .line 202
    :cond_aa
    return-object v6
.end method
