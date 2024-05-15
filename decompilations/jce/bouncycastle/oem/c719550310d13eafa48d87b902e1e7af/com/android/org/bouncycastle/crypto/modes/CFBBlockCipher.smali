.class public Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;
.super Lcom/android/org/bouncycastle/crypto/StreamBlockCipher;
.source "CFBBlockCipher.java"


# instance fields
.field private IV:[B

.field private blockSize:I

.field private byteCount:I

.field private cfbOutV:[B

.field private cfbV:[B

.field private cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

.field private encrypting:Z

.field private inBuf:[B


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;I)V
    .registers 4
    .param p1, "cipher"    # Lcom/android/org/bouncycastle/crypto/BlockCipher;
    .param p2, "bitBlockSize"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/StreamBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    .line 39
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    .line 40
    div-int/lit8 v0, p2, 0x8

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    .line 42
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    .line 43
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    .line 44
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbOutV:[B

    .line 45
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->inBuf:[B

    .line 46
    return-void
.end method

.method private decryptByte(B)B
    .registers 9
    .param p1, "in"    # B

    .prologue
    const/4 v6, 0x0

    .line 145
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    if-nez v1, :cond_e

    .line 147
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbOutV:[B

    invoke-interface {v1, v2, v6, v3, v6}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 150
    :cond_e
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->inBuf:[B

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    aput-byte p1, v1, v2

    .line 151
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbOutV:[B

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    aget-byte v1, v1, v2

    xor-int/2addr v1, p1

    int-to-byte v0, v1

    .line 153
    .local v0, "rv":B
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    if-ne v1, v2, :cond_46

    .line 155
    iput v6, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    .line 157
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    array-length v4, v4

    iget v5, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    sub-int/2addr v4, v5

    invoke-static {v1, v2, v3, v6, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 158
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->inBuf:[B

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    array-length v3, v3

    iget v4, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    invoke-static {v1, v6, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 161
    :cond_46
    return v0
.end method

.method private encryptByte(B)B
    .registers 9
    .param p1, "in"    # B

    .prologue
    const/4 v6, 0x0

    .line 124
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    if-nez v1, :cond_e

    .line 126
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbOutV:[B

    invoke-interface {v1, v2, v6, v3, v6}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 129
    :cond_e
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbOutV:[B

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    aget-byte v1, v1, v2

    xor-int/2addr v1, p1

    int-to-byte v0, v1

    .line 130
    .local v0, "rv":B
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->inBuf:[B

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    aput-byte v0, v1, v2

    .line 132
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    if-ne v1, v2, :cond_46

    .line 134
    iput v6, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    .line 136
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    array-length v4, v4

    iget v5, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    sub-int/2addr v4, v5

    invoke-static {v1, v2, v3, v6, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 137
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->inBuf:[B

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    array-length v3, v3

    iget v4, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    invoke-static {v1, v6, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 140
    :cond_46
    return v0
.end method


# virtual methods
.method protected calculateByte(B)B
    .registers 3
    .param p1, "in"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->encrypting:Z

    if-eqz v0, :cond_9

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->encryptByte(B)B

    move-result v0

    :goto_8
    return v0

    :cond_9
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->decryptByte(B)B

    move-result v0

    goto :goto_8
.end method

.method public decryptBlock([BI[BI)I
    .registers 11
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 242
    iget v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->processBytes([BII[BI)I

    .line 244
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    return v0
.end method

.method public encryptBlock([BI[BI)I
    .registers 11
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 218
    iget v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->processBytes([BII[BI)I

    .line 220
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/CFB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlockSize()I
    .registers 2

    .prologue
    .line 171
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    return v0
.end method

.method public getCurrentIV()[B
    .registers 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 11
    .param p1, "encrypting"    # Z
    .param p2, "params"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 64
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->encrypting:Z

    .line 66
    instance-of v3, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v3, :cond_4a

    move-object v2, p2

    .line 68
    check-cast v2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 69
    .local v2, "ivParam":Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    .line 71
    .local v1, "iv":[B
    array-length v3, v1

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    array-length v4, v4

    if-ge v3, v4, :cond_2f

    .line 74
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    array-length v4, v4

    array-length v5, v1

    sub-int/2addr v4, v5

    array-length v5, v1

    invoke-static {v1, v6, v3, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 75
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_21
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    array-length v3, v3

    array-length v4, v1

    sub-int/2addr v3, v4

    if-ge v0, v3, :cond_37

    .line 77
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    aput-byte v6, v3, v0

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 82
    .end local v0    # "i":I
    :cond_2f
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    array-length v4, v4

    invoke-static {v1, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 85
    :cond_37
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->reset()V

    .line 88
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    if-eqz v3, :cond_49

    .line 90
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v4

    invoke-interface {v3, v7, v4}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 103
    .end local v1    # "iv":[B
    .end local v2    # "ivParam":Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;
    :cond_49
    :goto_49
    return-void

    .line 95
    :cond_4a
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->reset()V

    .line 98
    if-eqz p2, :cond_49

    .line 100
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v3, v7, p2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    goto :goto_49
.end method

.method public processBlock([BI[BI)I
    .registers 11
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 194
    iget v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->processBytes([BII[BI)I

    .line 196
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    return v0
.end method

.method public reset()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 263
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 264
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->inBuf:[B

    invoke-static {v0, v3}, Lcom/android/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 265
    iput v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    .line 267
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->reset()V

    .line 268
    return-void
.end method
