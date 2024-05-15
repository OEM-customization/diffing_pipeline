.class Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;
.super Ljava/lang/Object;
.source "RSACoreEngine.java"


# instance fields
.field private blacklist forEncryption:Z

.field private blacklist key:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist convertInput([BII)Ljava/math/BigInteger;
    .registers 8
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I

    .line 92
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->getInputBlockSize()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const-string v2, "input too large for RSA cipher."

    if-gt p3, v0, :cond_43

    .line 96
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->getInputBlockSize()I

    move-result v0

    add-int/2addr v0, v1

    if-ne p3, v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->forEncryption:Z

    if-eqz v0, :cond_16

    goto :goto_1c

    .line 98
    :cond_16
    new-instance v0, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    invoke-direct {v0, v2}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_1c
    :goto_1c
    if-nez p2, :cond_24

    array-length v0, p1

    if-eq p3, v0, :cond_22

    goto :goto_24

    .line 111
    :cond_22
    move-object v0, p1

    .local v0, "block":[B
    goto :goto_2a

    .line 105
    .end local v0    # "block":[B
    :cond_24
    :goto_24
    new-array v0, p3, [B

    .line 107
    .restart local v0    # "block":[B
    const/4 v3, 0x0

    invoke-static {p1, p2, v0, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    :goto_2a
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    move-object v1, v3

    .line 115
    .local v1, "res":Ljava/math/BigInteger;
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gez v3, :cond_3d

    .line 120
    return-object v1

    .line 117
    :cond_3d
    new-instance v3, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    invoke-direct {v3, v2}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 94
    .end local v0    # "block":[B
    .end local v1    # "res":Ljava/math/BigInteger;
    :cond_43
    new-instance v0, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    invoke-direct {v0, v2}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist convertOutput(Ljava/math/BigInteger;)[B
    .registers 7
    .param p1, "result"    # Ljava/math/BigInteger;

    .line 126
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 128
    .local v0, "output":[B
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->forEncryption:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_34

    .line 130
    aget-byte v1, v0, v3

    if-nez v1, :cond_1e

    array-length v1, v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->getOutputBlockSize()I

    move-result v4

    if-le v1, v4, :cond_1e

    .line 132
    array-length v1, v0

    sub-int/2addr v1, v2

    new-array v1, v1, [B

    .line 134
    .local v1, "tmp":[B
    array-length v4, v1

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    return-object v1

    .line 139
    .end local v1    # "tmp":[B
    :cond_1e
    array-length v1, v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->getOutputBlockSize()I

    move-result v2

    if-ge v1, v2, :cond_33

    .line 141
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->getOutputBlockSize()I

    move-result v1

    new-array v1, v1, [B

    .line 143
    .restart local v1    # "tmp":[B
    array-length v2, v1

    array-length v4, v0

    sub-int/2addr v2, v4

    array-length v4, v0

    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    return-object v1

    .line 148
    .end local v1    # "tmp":[B
    :cond_33
    return-object v0

    .line 153
    :cond_34
    aget-byte v1, v0, v3

    if-nez v1, :cond_41

    .line 155
    array-length v1, v0

    sub-int/2addr v1, v2

    new-array v1, v1, [B

    .line 157
    .local v1, "rv":[B
    array-length v4, v1

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_48

    .line 161
    .end local v1    # "rv":[B
    :cond_41
    array-length v1, v0

    new-array v1, v1, [B

    .line 163
    .restart local v1    # "rv":[B
    array-length v2, v1

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    :goto_48
    invoke-static {v0, v3}, Lcom/android/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 168
    return-object v1
.end method

.method public blacklist getInputBlockSize()I
    .registers 3

    .line 54
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 56
    .local v0, "bitSize":I
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->forEncryption:Z

    if-eqz v1, :cond_15

    .line 58
    add-int/lit8 v1, v0, 0x7

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, -0x1

    return v1

    .line 62
    :cond_15
    add-int/lit8 v1, v0, 0x7

    div-int/lit8 v1, v1, 0x8

    return v1
.end method

.method public blacklist getOutputBlockSize()I
    .registers 3

    .line 75
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 77
    .local v0, "bitSize":I
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->forEncryption:Z

    if-eqz v1, :cond_13

    .line 79
    add-int/lit8 v1, v0, 0x7

    div-int/lit8 v1, v1, 0x8

    return v1

    .line 83
    :cond_13
    add-int/lit8 v1, v0, 0x7

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method public blacklist init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 5
    .param p1, "forEncryption"    # Z
    .param p2, "param"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;

    .line 31
    instance-of v0, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_10

    .line 33
    move-object v0, p2

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    .line 35
    .local v0, "rParam":Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    .line 36
    .end local v0    # "rParam":Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;
    goto :goto_15

    .line 39
    :cond_10
    move-object v0, p2

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    .line 42
    :goto_15
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->forEncryption:Z

    .line 43
    return-void
.end method

.method public blacklist processBlock(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 12
    .param p1, "input"    # Ljava/math/BigInteger;

    .line 174
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    instance-of v1, v0, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    if-eqz v1, :cond_41

    .line 181
    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    .line 183
    .local v0, "crtKey":Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    .line 184
    .local v1, "p":Ljava/math/BigInteger;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    .line 185
    .local v2, "q":Ljava/math/BigInteger;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getDP()Ljava/math/BigInteger;

    move-result-object v3

    .line 186
    .local v3, "dP":Ljava/math/BigInteger;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getDQ()Ljava/math/BigInteger;

    move-result-object v4

    .line 187
    .local v4, "dQ":Ljava/math/BigInteger;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getQInv()Ljava/math/BigInteger;

    move-result-object v5

    .line 192
    .local v5, "qInv":Ljava/math/BigInteger;
    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v3, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 195
    .local v6, "mP":Ljava/math/BigInteger;
    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, v4, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 198
    .local v7, "mQ":Ljava/math/BigInteger;
    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 199
    .local v8, "h":Ljava/math/BigInteger;
    invoke-virtual {v8, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 200
    invoke-virtual {v8, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 203
    invoke-virtual {v8, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 204
    .local v9, "m":Ljava/math/BigInteger;
    invoke-virtual {v9, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 206
    return-object v9

    .line 210
    .end local v0    # "crtKey":Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;
    .end local v1    # "p":Ljava/math/BigInteger;
    .end local v2    # "q":Ljava/math/BigInteger;
    .end local v3    # "dP":Ljava/math/BigInteger;
    .end local v4    # "dQ":Ljava/math/BigInteger;
    .end local v5    # "qInv":Ljava/math/BigInteger;
    .end local v6    # "mP":Ljava/math/BigInteger;
    .end local v7    # "mQ":Ljava/math/BigInteger;
    .end local v8    # "h":Ljava/math/BigInteger;
    .end local v9    # "m":Ljava/math/BigInteger;
    :cond_41
    nop

    .line 211
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;->getExponent()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    .line 210
    invoke-virtual {p1, v0, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
