.class public Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;
.super Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
.source "PKCS12ParametersGenerator.java"


# static fields
.field public static final IV_MATERIAL:I = 0x2

.field public static final KEY_MATERIAL:I = 0x1

.field public static final MAC_MATERIAL:I = 0x3


# instance fields
.field private digest:Lcom/android/org/bouncycastle/crypto/Digest;

.field private u:I

.field private v:I


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/Digest;)V
    .registers 5
    .param p1, "digest"    # Lcom/android/org/bouncycastle/crypto/Digest;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    .line 40
    instance-of v0, p1, Lcom/android/org/bouncycastle/crypto/ExtendedDigest;

    if-eqz v0, :cond_18

    .line 42
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    .line 43
    check-cast p1, Lcom/android/org/bouncycastle/crypto/ExtendedDigest;

    .end local p1    # "digest":Lcom/android/org/bouncycastle/crypto/Digest;
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/ExtendedDigest;->getByteLength()I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    .line 49
    return-void

    .line 47
    .restart local p1    # "digest":Lcom/android/org/bouncycastle/crypto/Digest;
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Digest "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " unsupported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private adjust([BI[B)V
    .registers 8
    .param p1, "a"    # [B
    .param p2, "aOff"    # I
    .param p3, "b"    # [B

    .prologue
    .line 61
    array-length v2, p3

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, p3, v2

    and-int/lit16 v2, v2, 0xff

    array-length v3, p3

    add-int/2addr v3, p2

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    add-int/lit8 v1, v2, 0x1

    .line 63
    .local v1, "x":I
    array-length v2, p3

    add-int/2addr v2, p2

    add-int/lit8 v2, v2, -0x1

    int-to-byte v3, v1

    aput-byte v3, p1, v2

    .line 64
    ushr-int/lit8 v1, v1, 0x8

    .line 66
    array-length v2, p3

    add-int/lit8 v0, v2, -0x2

    .local v0, "i":I
    :goto_1e
    if-ltz v0, :cond_36

    .line 68
    aget-byte v2, p3, v0

    and-int/lit16 v2, v2, 0xff

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 69
    add-int v2, p2, v0

    int-to-byte v3, v1

    aput-byte v3, p1, v2

    .line 70
    ushr-int/lit8 v1, v1, 0x8

    .line 66
    add-int/lit8 v0, v0, -0x1

    goto :goto_1e

    .line 72
    :cond_36
    return-void
.end method

.method private generateDerivedKey(II)[B
    .registers 18
    .param p1, "idByte"    # I
    .param p2, "n"    # I

    .prologue
    .line 81
    iget v11, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    new-array v3, v11, [B

    .line 82
    .local v3, "D":[B
    move/from16 v0, p2

    new-array v8, v0, [B

    .line 84
    .local v8, "dKey":[B
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_9
    array-length v11, v3

    if-eq v9, v11, :cond_14

    .line 86
    move/from16 v0, p1

    int-to-byte v11, v0

    aput-byte v11, v3, v9

    .line 84
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 91
    :cond_14
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->salt:[B

    if-eqz v11, :cond_3f

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->salt:[B

    array-length v11, v11

    if-eqz v11, :cond_3f

    .line 93
    iget v11, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    iget-object v12, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->salt:[B

    array-length v12, v12

    iget v13, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    add-int/2addr v12, v13

    add-int/lit8 v12, v12, -0x1

    iget v13, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    div-int/2addr v12, v13

    mul-int/2addr v11, v12

    new-array v6, v11, [B

    .line 95
    .local v6, "S":[B
    const/4 v9, 0x0

    :goto_2e
    array-length v11, v6

    if-eq v9, v11, :cond_42

    .line 97
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->salt:[B

    iget-object v12, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->salt:[B

    array-length v12, v12

    rem-int v12, v9, v12

    aget-byte v11, v11, v12

    aput-byte v11, v6, v9

    .line 95
    add-int/lit8 v9, v9, 0x1

    goto :goto_2e

    .line 102
    .end local v6    # "S":[B
    :cond_3f
    const/4 v11, 0x0

    new-array v6, v11, [B

    .line 107
    .restart local v6    # "S":[B
    :cond_42
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->password:[B

    if-eqz v11, :cond_6d

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->password:[B

    array-length v11, v11

    if-eqz v11, :cond_6d

    .line 109
    iget v11, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    iget-object v12, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->password:[B

    array-length v12, v12

    iget v13, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    add-int/2addr v12, v13

    add-int/lit8 v12, v12, -0x1

    iget v13, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    div-int/2addr v12, v13

    mul-int/2addr v11, v12

    new-array v5, v11, [B

    .line 111
    .local v5, "P":[B
    const/4 v9, 0x0

    :goto_5c
    array-length v11, v5

    if-eq v9, v11, :cond_70

    .line 113
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->password:[B

    iget-object v12, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->password:[B

    array-length v12, v12

    rem-int v12, v9, v12

    aget-byte v11, v11, v12

    aput-byte v11, v5, v9

    .line 111
    add-int/lit8 v9, v9, 0x1

    goto :goto_5c

    .line 118
    .end local v5    # "P":[B
    :cond_6d
    const/4 v11, 0x0

    new-array v5, v11, [B

    .line 121
    .restart local v5    # "P":[B
    :cond_70
    array-length v11, v6

    array-length v12, v5

    add-int/2addr v11, v12

    new-array v4, v11, [B

    .line 123
    .local v4, "I":[B
    array-length v11, v6

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v6, v12, v4, v13, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 124
    array-length v11, v6

    array-length v12, v5

    const/4 v13, 0x0

    invoke-static {v5, v13, v4, v11, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 126
    iget v11, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    new-array v2, v11, [B

    .line 127
    .local v2, "B":[B
    iget v11, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    add-int v11, v11, p2

    add-int/lit8 v11, v11, -0x1

    iget v12, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    div-int v7, v11, v12

    .line 128
    .local v7, "c":I
    iget v11, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    new-array v1, v11, [B

    .line 130
    .local v1, "A":[B
    const/4 v9, 0x1

    :goto_94
    if-gt v9, v7, :cond_fd

    .line 132
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    array-length v12, v3

    const/4 v13, 0x0

    invoke-interface {v11, v3, v13, v12}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 133
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    array-length v12, v4

    const/4 v13, 0x0

    invoke-interface {v11, v4, v13, v12}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 134
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    const/4 v12, 0x0

    invoke-interface {v11, v1, v12}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 135
    const/4 v10, 0x1

    .local v10, "j":I
    :goto_ab
    iget v11, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->iterationCount:I

    if-ge v10, v11, :cond_bf

    .line 137
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    array-length v12, v1

    const/4 v13, 0x0

    invoke-interface {v11, v1, v13, v12}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 138
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    const/4 v12, 0x0

    invoke-interface {v11, v1, v12}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 135
    add-int/lit8 v10, v10, 0x1

    goto :goto_ab

    .line 141
    :cond_bf
    const/4 v10, 0x0

    :goto_c0
    array-length v11, v2

    if-eq v10, v11, :cond_cd

    .line 143
    array-length v11, v1

    rem-int v11, v10, v11

    aget-byte v11, v1, v11

    aput-byte v11, v2, v10

    .line 141
    add-int/lit8 v10, v10, 0x1

    goto :goto_c0

    .line 146
    :cond_cd
    const/4 v10, 0x0

    :goto_ce
    array-length v11, v4

    iget v12, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    div-int/2addr v11, v12

    if-eq v10, v11, :cond_dd

    .line 148
    iget v11, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    mul-int/2addr v11, v10

    invoke-direct {p0, v4, v11, v2}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->adjust([BI[B)V

    .line 146
    add-int/lit8 v10, v10, 0x1

    goto :goto_ce

    .line 151
    :cond_dd
    if-ne v9, v7, :cond_f2

    .line 153
    add-int/lit8 v11, v9, -0x1

    iget v12, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    mul-int/2addr v11, v12

    array-length v12, v8

    add-int/lit8 v13, v9, -0x1

    iget v14, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    mul-int/2addr v13, v14

    sub-int/2addr v12, v13

    const/4 v13, 0x0

    invoke-static {v1, v13, v8, v11, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 130
    :goto_ef
    add-int/lit8 v9, v9, 0x1

    goto :goto_94

    .line 157
    :cond_f2
    add-int/lit8 v11, v9, -0x1

    iget v12, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    mul-int/2addr v11, v12

    array-length v12, v1

    const/4 v13, 0x0

    invoke-static {v1, v13, v8, v11, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_ef

    .line 161
    .end local v10    # "j":I
    :cond_fd
    return-object v8
.end method


# virtual methods
.method public generateDerivedMacParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .registers 5
    .param p1, "keySize"    # I

    .prologue
    .line 214
    div-int/lit8 p1, p1, 0x8

    .line 216
    const/4 v1, 0x3

    invoke-direct {p0, v1, p1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object v0

    .line 218
    .local v0, "dKey":[B
    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    return-object v1
.end method

.method public generateDerivedParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .registers 5
    .param p1, "keySize"    # I

    .prologue
    .line 174
    div-int/lit8 p1, p1, 0x8

    .line 176
    const/4 v1, 0x1

    invoke-direct {p0, v1, p1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object v0

    .line 178
    .local v0, "dKey":[B
    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    return-object v1
.end method

.method public generateDerivedParameters(II)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .registers 8
    .param p1, "keySize"    # I
    .param p2, "ivSize"    # I

    .prologue
    const/4 v4, 0x0

    .line 194
    div-int/lit8 p1, p1, 0x8

    .line 195
    div-int/lit8 p2, p2, 0x8

    .line 197
    const/4 v2, 0x1

    invoke-direct {p0, v2, p1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object v0

    .line 199
    .local v0, "dKey":[B
    const/4 v2, 0x2

    invoke-direct {p0, v2, p2}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object v1

    .line 201
    .local v1, "iv":[B
    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v3, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v3, v0, v4, p1}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-direct {v2, v3, v1, v4, p2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[BII)V

    return-object v2
.end method
