.class public Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;
.super Ljava/lang/Object;
.source "CBCBlockCipher.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/BlockCipher;


# instance fields
.field private IV:[B

.field private blockSize:I

.field private cbcNextV:[B

.field private cbcV:[B

.field private cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

.field private encrypting:Z


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V
    .registers 3
    .param p1, "cipher"    # Lcom/android/org/bouncycastle/crypto/BlockCipher;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    .line 31
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    .line 32
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    .line 34
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->IV:[B

    .line 35
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    .line 36
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcNextV:[B

    .line 37
    return-void
.end method

.method private decryptBlock([BI[BI)I
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
    .line 225
    iget v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    add-int/2addr v3, p2

    array-length v4, p1

    if-le v3, v4, :cond_f

    .line 227
    new-instance v3, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string/jumbo v4, "input buffer too short"

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 230
    :cond_f
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcNextV:[B

    iget v4, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    const/4 v5, 0x0

    invoke-static {p1, p2, v3, v5, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 232
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v1

    .line 237
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1e
    iget v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    if-ge v0, v3, :cond_31

    .line 239
    add-int v3, p4, v0

    aget-byte v4, p3, v3

    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    aget-byte v5, v5, v0

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p3, v3

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 247
    :cond_31
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    .line 248
    .local v2, "tmp":[B
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcNextV:[B

    iput-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    .line 249
    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcNextV:[B

    .line 251
    return v1
.end method

.method private encryptBlock([BI[BI)I
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
    const/4 v5, 0x0

    .line 182
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    add-int/2addr v2, p2

    array-length v3, p1

    if-le v2, v3, :cond_10

    .line 184
    new-instance v2, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string/jumbo v3, "input buffer too short"

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 191
    :cond_10
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    if-ge v0, v2, :cond_24

    .line 193
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    aget-byte v3, v2, v0

    add-int v4, p2, v0

    aget-byte v4, p1, v4

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 196
    :cond_24
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    invoke-interface {v2, v3, v5, p3, p4}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v1

    .line 201
    .local v1, "length":I
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    array-length v3, v3

    invoke-static {p3, p4, v2, v5, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 203
    return v1
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/CBC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlockSize()I
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 9
    .param p1, "encrypting"    # Z
    .param p2, "params"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 64
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->encrypting:Z

    .line 66
    .local v2, "oldEncrypting":Z
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->encrypting:Z

    .line 68
    instance-of v3, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v3, :cond_42

    move-object v1, p2

    .line 70
    check-cast v1, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 71
    .local v1, "ivParam":Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    .line 73
    .local v0, "iv":[B
    array-length v3, v0

    iget v4, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    if-eq v3, v4, :cond_1e

    .line 75
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "initialisation vector must be the same length as block size"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 78
    :cond_1e
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->IV:[B

    array-length v4, v0

    invoke-static {v0, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 80
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->reset()V

    .line 83
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 85
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 106
    .end local v0    # "iv":[B
    .end local v1    # "ivParam":Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;
    :cond_36
    :goto_36
    return-void

    .line 87
    .restart local v0    # "iv":[B
    .restart local v1    # "ivParam":Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;
    :cond_37
    if-eq v2, p1, :cond_36

    .line 89
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "cannot change encrypting state without providing key."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 94
    .end local v0    # "iv":[B
    .end local v1    # "ivParam":Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;
    :cond_42
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->reset()V

    .line 97
    if-eqz p2, :cond_4d

    .line 99
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v3, p1, p2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    goto :goto_36

    .line 101
    :cond_4d
    if-eq v2, p1, :cond_36

    .line 103
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "cannot change encrypting state without providing key."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public processBlock([BI[BI)I
    .registers 6
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
    .line 148
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->encrypting:Z

    if-eqz v0, :cond_9

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->encryptBlock([BI[BI)I

    move-result v0

    :goto_8
    return v0

    :cond_9
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->decryptBlock([BI[BI)I

    move-result v0

    goto :goto_8
.end method

.method public reset()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 157
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->IV:[B

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->IV:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 158
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcNextV:[B

    invoke-static {v0, v3}, Lcom/android/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 160
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->reset()V

    .line 161
    return-void
.end method
