.class public Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;
.super Lcom/android/org/bouncycastle/crypto/StreamBlockCipher;
.source "SICBlockCipher.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/SkippingStreamCipher;


# instance fields
.field private blacklist IV:[B

.field private final blacklist blockSize:I

.field private blacklist byteCount:I

.field private final blacklist cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

.field private blacklist counter:[B

.field private blacklist counterOut:[B


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V
    .registers 4
    .param p1, "c"    # Lcom/android/org/bouncycastle/crypto/BlockCipher;

    .line 37
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/StreamBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    .line 39
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    .line 40
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    .line 41
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    .line 42
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    .line 43
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    .line 45
    return-void
.end method

.method private blacklist adjustCounter(J)V
    .registers 14
    .param p1, "n"    # J

    .line 178
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    const-wide/16 v2, 0xff

    const-wide/16 v4, 0x1

    if-ltz v0, :cond_3c

    .line 180
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    int-to-long v6, v0

    add-long/2addr v6, p1

    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    int-to-long v8, v0

    div-long/2addr v6, v8

    .line 182
    .local v6, "numBlocks":J
    move-wide v8, v6

    .line 183
    .local v8, "rem":J
    cmp-long v0, v8, v2

    if-lez v0, :cond_2b

    .line 185
    const/4 v0, 0x5

    .local v0, "i":I
    :goto_19
    if-lt v0, v1, :cond_2b

    .line 187
    mul-int/lit8 v2, v0, 0x8

    shl-long v2, v4, v2

    .line 188
    .local v2, "diff":J
    :goto_1f
    cmp-long v10, v8, v2

    if-ltz v10, :cond_28

    .line 190
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->incrementCounterAt(I)V

    .line 191
    sub-long/2addr v8, v2

    goto :goto_1f

    .line 185
    .end local v2    # "diff":J
    :cond_28
    add-int/lit8 v0, v0, -0x1

    goto :goto_19

    .line 196
    .end local v0    # "i":I
    :cond_2b
    long-to-int v0, v8

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->incrementCounter(I)V

    .line 198
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    int-to-long v2, v2

    mul-long/2addr v2, v6

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    .line 199
    .end local v6    # "numBlocks":J
    .end local v8    # "rem":J
    goto :goto_80

    .line 202
    :cond_3c
    neg-long v6, p1

    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    int-to-long v8, v0

    sub-long/2addr v6, v8

    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    int-to-long v8, v0

    div-long/2addr v6, v8

    .line 204
    .restart local v6    # "numBlocks":J
    move-wide v8, v6

    .line 205
    .restart local v8    # "rem":J
    cmp-long v0, v8, v2

    if-lez v0, :cond_5d

    .line 207
    const/4 v0, 0x5

    .restart local v0    # "i":I
    :goto_4b
    if-lt v0, v1, :cond_5d

    .line 209
    mul-int/lit8 v2, v0, 0x8

    shl-long v2, v4, v2

    .line 210
    .restart local v2    # "diff":J
    :goto_51
    cmp-long v10, v8, v2

    if-lez v10, :cond_5a

    .line 212
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->decrementCounterAt(I)V

    .line 213
    sub-long/2addr v8, v2

    goto :goto_51

    .line 207
    .end local v2    # "diff":J
    :cond_5a
    add-int/lit8 v0, v0, -0x1

    goto :goto_4b

    .line 218
    .end local v0    # "i":I
    :cond_5d
    const-wide/16 v0, 0x0

    .local v0, "i":J
    :goto_5f
    cmp-long v2, v0, v8

    const/4 v3, 0x0

    if-eqz v2, :cond_69

    .line 220
    invoke-direct {p0, v3}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->decrementCounterAt(I)V

    .line 218
    add-long/2addr v0, v4

    goto :goto_5f

    .line 223
    .end local v0    # "i":J
    :cond_69
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    int-to-long v4, v2

    mul-long/2addr v4, v6

    add-long/2addr v0, v4

    long-to-int v0, v0

    .line 225
    .local v0, "gap":I
    if-ltz v0, :cond_78

    .line 227
    iput v3, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    goto :goto_80

    .line 231
    :cond_78
    invoke-direct {p0, v3}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->decrementCounterAt(I)V

    .line 232
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    .line 235
    .end local v0    # "gap":I
    .end local v6    # "numBlocks":J
    .end local v8    # "rem":J
    :goto_80
    return-void
.end method

.method private blacklist checkCounter()V
    .registers 4

    .line 128
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    array-length v0, v0

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    if-ge v0, v1, :cond_20

    .line 130
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    array-length v2, v1

    if-eq v0, v2, :cond_20

    .line 132
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    aget-byte v2, v2, v0

    aget-byte v1, v1, v0

    if-ne v2, v1, :cond_18

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 134
    :cond_18
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Counter in CTR/SIC mode out of range."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 138
    .end local v0    # "i":I
    :cond_20
    return-void
.end method

.method private blacklist decrementCounterAt(I)V
    .registers 6
    .param p1, "pos"    # I

    .line 166
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v0, v0

    sub-int/2addr v0, p1

    .line 167
    .local v0, "i":I
    :cond_4
    const/4 v1, -0x1

    add-int/2addr v0, v1

    if-ltz v0, :cond_14

    .line 169
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    aget-byte v3, v2, v0

    add-int/lit8 v3, v3, -0x1

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    if-eq v3, v1, :cond_4

    .line 171
    return-void

    .line 174
    :cond_14
    return-void
.end method

.method private blacklist incrementCounter(I)V
    .registers 7
    .param p1, "offSet"    # I

    .line 154
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-byte v1, v0, v1

    .line 156
    .local v1, "old":B
    array-length v3, v0

    sub-int/2addr v3, v2

    aget-byte v4, v0, v3

    add-int/2addr v4, p1

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 158
    if-eqz v1, :cond_1a

    array-length v3, v0

    sub-int/2addr v3, v2

    aget-byte v0, v0, v3

    if-ge v0, v1, :cond_1a

    .line 160
    invoke-direct {p0, v2}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->incrementCounterAt(I)V

    .line 162
    :cond_1a
    return-void
.end method

.method private blacklist incrementCounterAt(I)V
    .registers 5
    .param p1, "pos"    # I

    .line 142
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v0, v0

    sub-int/2addr v0, p1

    .line 143
    .local v0, "i":I
    :cond_4
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_13

    .line 145
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    aget-byte v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    if-eqz v2, :cond_4

    .line 150
    :cond_13
    return-void
.end method


# virtual methods
.method protected blacklist calculateByte(B)B
    .registers 6
    .param p1, "in"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 104
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_1b

    .line 106
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    invoke-interface {v0, v2, v1, v3, v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 108
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    aget-byte v0, v0, v1

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    return v0

    .line 111
    :cond_1b
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    aget-byte v0, v2, v0

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    .line 113
    .local v0, "rv":B
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v2, v2

    if-ne v3, v2, :cond_32

    .line 115
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    .line 117
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->incrementCounterAt(I)V

    .line 119
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->checkCounter()V

    .line 122
    :cond_32
    return v0
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 3

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/SIC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBlockSize()I
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public blacklist getPosition()J
    .registers 7

    .line 265
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v1, v0

    new-array v1, v1, [B

    .line 267
    .local v1, "res":[B
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 269
    array-length v0, v1

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    .local v0, "i":I
    :goto_d
    if-lt v0, v2, :cond_34

    .line 272
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    array-length v4, v3

    if-ge v0, v4, :cond_1e

    .line 274
    aget-byte v4, v1, v0

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v0

    and-int/lit16 v3, v3, 0xff

    sub-int/2addr v4, v3

    .local v4, "v":I
    goto :goto_22

    .line 278
    .end local v4    # "v":I
    :cond_1e
    aget-byte v3, v1, v0

    and-int/lit16 v4, v3, 0xff

    .line 281
    .restart local v4    # "v":I
    :goto_22
    if-gez v4, :cond_2e

    .line 283
    add-int/lit8 v3, v0, -0x1

    aget-byte v5, v1, v3

    sub-int/2addr v5, v2

    int-to-byte v5, v5

    aput-byte v5, v1, v3

    .line 284
    add-int/lit16 v4, v4, 0x100

    .line 287
    :cond_2e
    int-to-byte v3, v4

    aput-byte v3, v1, v0

    .line 269
    .end local v4    # "v":I
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 290
    .end local v0    # "i":I
    :cond_34
    array-length v0, v1

    add-int/lit8 v0, v0, -0x8

    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v2

    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    int-to-long v4, v0

    mul-long/2addr v2, v4

    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    return-wide v2
.end method

.method public blacklist init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 9
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 52
    instance-of v0, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_77

    .line 54
    move-object v0, p2

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 55
    .local v0, "ivParam":Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    .line 57
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    array-length v1, v1

    const-string v3, " bytes."

    if-lt v2, v1, :cond_5b

    .line 62
    div-int/lit8 v1, v2, 0x2

    const/16 v4, 0x8

    if-le v4, v1, :cond_20

    div-int/lit8 v4, v2, 0x2

    :cond_20
    move v1, v4

    .line 64
    .local v1, "maxCounterSize":I
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    array-length v4, v4

    sub-int/2addr v2, v4

    if-gt v2, v1, :cond_3e

    .line 70
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    if-eqz v2, :cond_39

    .line 72
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 75
    :cond_39
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->reset()V

    .line 76
    .end local v0    # "ivParam":Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;
    .end local v1    # "maxCounterSize":I
    nop

    .line 81
    return-void

    .line 66
    .restart local v0    # "ivParam":Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;
    .restart local v1    # "maxCounterSize":I
    :cond_3e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CTR/SIC mode requires IV of at least: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    sub-int/2addr v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 59
    .end local v1    # "maxCounterSize":I
    :cond_5b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CTR/SIC mode requires IV no greater than: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 79
    .end local v0    # "ivParam":Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;
    :cond_77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CTR/SIC mode requires ParametersWithIV"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist processBlock([BI[BI)I
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

    .line 96
    iget v3, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->processBytes([BII[BI)I

    .line 98
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    return v0
.end method

.method public blacklist reset()V
    .registers 5

    .line 239
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 240
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 241
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->reset()V

    .line 242
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    .line 243
    return-void
.end method

.method public blacklist seekTo(J)J
    .registers 5
    .param p1, "position"    # J

    .line 258
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->reset()V

    .line 260
    invoke-virtual {p0, p1, p2}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist skip(J)J
    .registers 7
    .param p1, "numberOfBytes"    # J

    .line 247
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->adjustCounter(J)V

    .line 249
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->checkCounter()V

    .line 251
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2, v3}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 253
    return-wide p1
.end method
