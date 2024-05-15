.class public Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;
.super Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;
.source "PaddedBufferedBlockCipher.java"


# instance fields
.field padding:Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V
    .registers 3
    .param p1, "cipher"    # Lcom/android/org/bouncycastle/crypto/BlockCipher;

    .prologue
    .line 48
    new-instance v0, Lcom/android/org/bouncycastle/crypto/paddings/PKCS7Padding;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/paddings/PKCS7Padding;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V
    .registers 4
    .param p1, "cipher"    # Lcom/android/org/bouncycastle/crypto/BlockCipher;
    .param p2, "padding"    # Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    .line 34
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->padding:Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    .line 36
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    .line 38
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .registers 9
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;,
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 247
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    .line 248
    .local v0, "blockSize":I
    const/4 v1, 0x0

    .line 250
    .local v1, "resultLen":I
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->forEncryption:Z

    if-eqz v2, :cond_44

    .line 252
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    if-ne v2, v0, :cond_2c

    .line 254
    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v2, p2

    array-length v3, p1

    if-le v2, v3, :cond_22

    .line 256
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->reset()V

    .line 258
    new-instance v2, Lcom/android/org/bouncycastle/crypto/OutputLengthException;

    const-string/jumbo v3, "output buffer too short"

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 261
    :cond_22
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    invoke-interface {v2, v3, v5, p1, p2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v1

    .line 262
    iput v5, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    .line 265
    :cond_2c
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->padding:Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    iget v4, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    invoke-interface {v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;->addPadding([BI)I

    .line 267
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    add-int v4, p2, v1

    invoke-interface {v2, v3, v5, p1, v4}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v2

    add-int/2addr v1, v2

    .line 269
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->reset()V

    .line 297
    :goto_43
    return v1

    .line 273
    :cond_44
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    if-ne v2, v0, :cond_67

    .line 275
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    invoke-interface {v2, v3, v5, v4, v5}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v1

    .line 276
    iput v5, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    .line 287
    :try_start_54
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->padding:Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    invoke-interface {v2, v3}, Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;->padCount([B)I

    move-result v2

    sub-int/2addr v1, v2

    .line 289
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_63
    .catchall {:try_start_54 .. :try_end_63} :catchall_73

    .line 293
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->reset()V

    goto :goto_43

    .line 280
    :cond_67
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->reset()V

    .line 282
    new-instance v2, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string/jumbo v3, "last block incomplete in decryption"

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 292
    :catchall_73
    move-exception v2

    .line 293
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->reset()V

    .line 292
    throw v2
.end method

.method public getOutputSize(I)I
    .registers 6
    .param p1, "len"    # I

    .prologue
    .line 96
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    add-int v1, p1, v2

    .line 97
    .local v1, "total":I
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    array-length v2, v2

    rem-int v0, v1, v2

    .line 99
    .local v0, "leftOver":I
    if-nez v0, :cond_15

    .line 101
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->forEncryption:Z

    if-eqz v2, :cond_14

    .line 103
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    array-length v2, v2

    add-int/2addr v2, v1

    return v2

    .line 106
    :cond_14
    return v1

    .line 109
    :cond_15
    sub-int v2, v1, v0

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    array-length v3, v3

    add-int/2addr v2, v3

    return v2
.end method

.method public getUpdateOutputSize(I)I
    .registers 6
    .param p1, "len"    # I

    .prologue
    const/4 v3, 0x0

    .line 123
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    add-int v1, p1, v2

    .line 124
    .local v1, "total":I
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    array-length v2, v2

    rem-int v0, v1, v2

    .line 126
    .local v0, "leftOver":I
    if-nez v0, :cond_16

    .line 128
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    array-length v2, v2

    sub-int v2, v1, v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2

    .line 131
    :cond_16
    sub-int v2, v1, v0

    return v2
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 6
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->forEncryption:Z

    .line 67
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->reset()V

    .line 69
    instance-of v1, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_1f

    move-object v0, p2

    .line 71
    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    .line 73
    .local v0, "p":Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->padding:Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;->init(Ljava/security/SecureRandom;)V

    .line 75
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 83
    .end local v0    # "p":Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;
    :goto_1e
    return-void

    .line 79
    :cond_1f
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->padding:Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;->init(Ljava/security/SecureRandom;)V

    .line 81
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1, p1, p2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    goto :goto_1e
.end method

.method public processByte(B[BI)I
    .registers 8
    .param p1, "in"    # B
    .param p2, "out"    # [B
    .param p3, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 150
    const/4 v0, 0x0

    .line 152
    .local v0, "resultLen":I
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    array-length v2, v2

    if-ne v1, v2, :cond_13

    .line 154
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    invoke-interface {v1, v2, v3, p2, p3}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v0

    .line 155
    iput v3, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    .line 158
    :cond_13
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    aput-byte p1, v1, v2

    .line 160
    return v0
.end method

.method public processBytes([BII[BI)I
    .registers 13
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 183
    if-gez p3, :cond_c

    .line 185
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Can\'t have a negative input length!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 188
    :cond_c
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->getBlockSize()I

    move-result v0

    .line 189
    .local v0, "blockSize":I
    invoke-virtual {p0, p3}, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->getUpdateOutputSize(I)I

    move-result v2

    .line 191
    .local v2, "length":I
    if-lez v2, :cond_24

    .line 193
    add-int v4, p5, v2

    array-length v5, p4

    if-le v4, v5, :cond_24

    .line 195
    new-instance v4, Lcom/android/org/bouncycastle/crypto/OutputLengthException;

    const-string/jumbo v5, "output buffer too short"

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 199
    :cond_24
    const/4 v3, 0x0

    .line 200
    .local v3, "resultLen":I
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    array-length v4, v4

    iget v5, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    sub-int v1, v4, v5

    .line 202
    .local v1, "gapLen":I
    if-le p3, v1, :cond_54

    .line 204
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    iget v5, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    invoke-static {p1, p2, v4, v5, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 206
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    invoke-interface {v4, v5, v6, p4, p5}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v4

    add-int/lit8 v3, v4, 0x0

    .line 208
    iput v6, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    .line 209
    sub-int/2addr p3, v1

    .line 210
    add-int/2addr p2, v1

    .line 212
    :goto_43
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    array-length v4, v4

    if-le p3, v4, :cond_54

    .line 214
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    add-int v5, p5, v3

    invoke-interface {v4, p1, p2, p4, v5}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v4

    add-int/2addr v3, v4

    .line 216
    sub-int/2addr p3, v0

    .line 217
    add-int/2addr p2, v0

    goto :goto_43

    .line 221
    :cond_54
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    iget v5, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    invoke-static {p1, p2, v4, v5, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 223
    iget v4, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    add-int/2addr v4, p3

    iput v4, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    .line 225
    return v3
.end method
