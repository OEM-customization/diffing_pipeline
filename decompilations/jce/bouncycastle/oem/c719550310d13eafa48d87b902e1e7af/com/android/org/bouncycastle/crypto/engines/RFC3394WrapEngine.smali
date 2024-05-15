.class public Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;
.super Ljava/lang/Object;
.source "RFC3394WrapEngine.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/Wrapper;


# instance fields
.field private engine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

.field private forWrapping:Z

.field private iv:[B

.field private param:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

.field private wrapCipherMode:Z


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V
    .registers 3
    .param p1, "engine"    # Lcom/android/org/bouncycastle/crypto/BlockCipher;

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;Z)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;Z)V
    .registers 4
    .param p1, "engine"    # Lcom/android/org/bouncycastle/crypto/BlockCipher;
    .param p2, "useReverseDirection"    # Z

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_16

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    .line 50
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    .line 51
    if-eqz p2, :cond_14

    const/4 v0, 0x0

    :goto_11
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->wrapCipherMode:Z

    .line 52
    return-void

    .line 51
    :cond_14
    const/4 v0, 0x1

    goto :goto_11

    .line 28
    :array_16
    .array-data 1
        -0x5at
        -0x5at
        -0x5at
        -0x5at
        -0x5at
        -0x5at
        -0x5at
        -0x5at
    .end array-data
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 5
    .param p1, "forWrapping"    # Z
    .param p2, "param"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->forWrapping:Z

    .line 60
    instance-of v0, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_c

    .line 62
    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    .end local p2    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    .line 65
    .restart local p2    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_c
    instance-of v0, p2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_15

    .line 67
    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .end local p2    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->param:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .line 78
    :cond_14
    return-void

    .line 69
    .restart local p2    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_15
    instance-of v0, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_14

    move-object v0, p2

    .line 71
    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    .line 72
    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    .end local p2    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->param:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .line 73
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v0, v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_14

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "IV not equal to 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unwrap([BII)[B
    .registers 16
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 142
    iget-boolean v9, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->forWrapping:Z

    if-eqz v9, :cond_d

    .line 144
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string/jumbo v10, "not set for unwrapping"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 147
    :cond_d
    div-int/lit8 v6, p3, 0x8

    .line 149
    .local v6, "n":I
    mul-int/lit8 v9, v6, 0x8

    if-eq v9, p3, :cond_1c

    .line 151
    new-instance v9, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string/jumbo v10, "unwrap data must be a multiple of 8 bytes"

    invoke-direct {v9, v10}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 154
    :cond_1c
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v9, v9

    sub-int v9, p3, v9

    new-array v1, v9, [B

    .line 155
    .local v1, "block":[B
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v9, v9

    new-array v0, v9, [B

    .line 156
    .local v0, "a":[B
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v9, v9

    add-int/lit8 v9, v9, 0x8

    new-array v2, v9, [B

    .line 158
    .local v2, "buf":[B
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v9, v9

    const/4 v10, 0x0

    invoke-static {p1, p2, v0, v10, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 159
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v9, v9

    add-int/2addr v9, p2

    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v10, v10

    sub-int v10, p3, v10

    const/4 v11, 0x0

    invoke-static {p1, v9, v1, v11, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 161
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-boolean v10, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->wrapCipherMode:Z

    xor-int/lit8 v10, v10, 0x1

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->param:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {v9, v10, v11}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 163
    add-int/lit8 v6, v6, -0x1

    .line 165
    const/4 v4, 0x5

    .local v4, "j":I
    :goto_51
    if-ltz v4, :cond_a1

    .line 167
    move v3, v6

    .local v3, "i":I
    :goto_54
    const/4 v9, 0x1

    if-lt v3, v9, :cond_9e

    .line 169
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v9, v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v0, v10, v2, v11, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 170
    add-int/lit8 v9, v3, -0x1

    mul-int/lit8 v9, v9, 0x8

    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v10, v10

    const/16 v11, 0x8

    invoke-static {v1, v9, v2, v10, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 172
    mul-int v9, v6, v4

    add-int v7, v9, v3

    .line 173
    .local v7, "t":I
    const/4 v5, 0x1

    .local v5, "k":I
    :goto_70
    if-eqz v7, :cond_82

    .line 175
    int-to-byte v8, v7

    .line 177
    .local v8, "v":B
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v9, v9

    sub-int/2addr v9, v5

    aget-byte v10, v2, v9

    xor-int/2addr v10, v8

    int-to-byte v10, v10

    aput-byte v10, v2, v9

    .line 179
    ushr-int/lit8 v7, v7, 0x8

    .line 173
    add-int/lit8 v5, v5, 0x1

    goto :goto_70

    .line 182
    .end local v8    # "v":B
    :cond_82
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface {v9, v2, v10, v2, v11}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 183
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x8

    invoke-static {v2, v9, v0, v10, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 184
    add-int/lit8 v9, v3, -0x1

    mul-int/lit8 v9, v9, 0x8

    const/16 v10, 0x8

    const/16 v11, 0x8

    invoke-static {v2, v10, v1, v9, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 167
    add-int/lit8 v3, v3, -0x1

    goto :goto_54

    .line 165
    .end local v5    # "k":I
    .end local v7    # "t":I
    :cond_9e
    add-int/lit8 v4, v4, -0x1

    goto :goto_51

    .line 188
    .end local v3    # "i":I
    :cond_a1
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    invoke-static {v0, v9}, Lcom/android/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v9

    if-nez v9, :cond_b2

    .line 190
    new-instance v9, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string/jumbo v10, "checksum failed"

    invoke-direct {v9, v10}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 193
    :cond_b2
    return-object v1
.end method

.method public wrap([BII)[B
    .registers 16
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I

    .prologue
    .line 90
    iget-boolean v8, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->forWrapping:Z

    if-nez v8, :cond_d

    .line 92
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string/jumbo v9, "not set for wrapping"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 95
    :cond_d
    div-int/lit8 v5, p3, 0x8

    .line 97
    .local v5, "n":I
    mul-int/lit8 v8, v5, 0x8

    if-eq v8, p3, :cond_1c

    .line 99
    new-instance v8, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string/jumbo v9, "wrap data must be a multiple of 8 bytes"

    invoke-direct {v8, v9}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 102
    :cond_1c
    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v8, v8

    add-int/2addr v8, p3

    new-array v0, v8, [B

    .line 103
    .local v0, "block":[B
    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v8, v8

    add-int/lit8 v8, v8, 0x8

    new-array v1, v8, [B

    .line 105
    .local v1, "buf":[B
    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v9, v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v8, v10, v0, v11, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 106
    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v8, v8

    invoke-static {p1, p2, v0, v8, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 108
    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-boolean v9, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->wrapCipherMode:Z

    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->param:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {v8, v9, v10}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 110
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_43
    const/4 v8, 0x6

    if-eq v3, v8, :cond_8f

    .line 112
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_47
    if-gt v2, v5, :cond_8c

    .line 114
    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v8, v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v0, v9, v1, v10, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 115
    mul-int/lit8 v8, v2, 0x8

    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v9, v9

    const/16 v10, 0x8

    invoke-static {v0, v8, v1, v9, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 116
    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {v8, v1, v9, v1, v10}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 118
    mul-int v8, v5, v3

    add-int v6, v8, v2

    .line 119
    .local v6, "t":I
    const/4 v4, 0x1

    .local v4, "k":I
    :goto_67
    if-eqz v6, :cond_79

    .line 121
    int-to-byte v7, v6

    .line 123
    .local v7, "v":B
    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v8, v8

    sub-int/2addr v8, v4

    aget-byte v9, v1, v8

    xor-int/2addr v9, v7

    int-to-byte v9, v9

    aput-byte v9, v1, v8

    .line 125
    ushr-int/lit8 v6, v6, 0x8

    .line 119
    add-int/lit8 v4, v4, 0x1

    goto :goto_67

    .line 128
    .end local v7    # "v":B
    :cond_79
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x8

    invoke-static {v1, v8, v0, v9, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 129
    mul-int/lit8 v8, v2, 0x8

    const/16 v9, 0x8

    const/16 v10, 0x8

    invoke-static {v1, v9, v0, v8, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    .line 110
    .end local v4    # "k":I
    .end local v6    # "t":I
    :cond_8c
    add-int/lit8 v3, v3, 0x1

    goto :goto_43

    .line 133
    .end local v2    # "i":I
    :cond_8f
    return-object v0
.end method
