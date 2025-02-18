.class public Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;
.super Ljava/lang/Object;
.source "CCMBlockCipher.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;
    }
.end annotation


# instance fields
.field private blacklist associatedText:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

.field private blacklist blockSize:I

.field private blacklist cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

.field private blacklist data:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

.field private blacklist forEncryption:Z

.field private blacklist initialAssociatedText:[B

.field private blacklist keyParam:Lcom/android/org/bouncycastle/crypto/CipherParameters;

.field private blacklist macBlock:[B

.field private blacklist macSize:I

.field private blacklist nonce:[B


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V
    .registers 4
    .param p1, "c"    # Lcom/android/org/bouncycastle/crypto/BlockCipher;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;-><init>(Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    .line 36
    new-instance v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;-><init>(Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    .line 45
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    .line 46
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    .line 47
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    .line 49
    const/16 v1, 0x10

    if-ne v0, v1, :cond_22

    .line 53
    return-void

    .line 51
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cipher required with a block size of 16."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist calculateMac([BII[B)I
    .registers 15
    .param p1, "data"    # [B
    .param p2, "dataOff"    # I
    .param p3, "dataLen"    # I
    .param p4, "macBlock"    # [B

    .line 354
    new-instance v0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    mul-int/lit8 v2, v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;I)V

    .line 356
    .local v0, "cMac":Lcom/android/org/bouncycastle/crypto/Mac;
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->keyParam:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    invoke-interface {v0, v1}, Lcom/android/org/bouncycastle/crypto/Mac;->init(Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 361
    const/16 v1, 0x10

    new-array v2, v1, [B

    .line 363
    .local v2, "b0":[B
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->hasAssociatedText()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_22

    .line 365
    aget-byte v3, v2, v4

    or-int/lit8 v3, v3, 0x40

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    .line 368
    :cond_22
    aget-byte v3, v2, v4

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    div-int/lit8 v5, v5, 0x2

    and-int/lit8 v5, v5, 0x7

    shl-int/lit8 v5, v5, 0x3

    or-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    .line 370
    aget-byte v3, v2, v4

    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    array-length v6, v5

    rsub-int/lit8 v6, v6, 0xf

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    and-int/lit8 v6, v6, 0x7

    or-int/2addr v3, v6

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    .line 372
    array-length v3, v5

    invoke-static {v5, v4, v2, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 374
    move v3, p3

    .line 375
    .local v3, "q":I
    const/4 v5, 0x1

    .line 376
    .local v5, "count":I
    :goto_49
    if-lez v3, :cond_57

    .line 378
    array-length v6, v2

    sub-int/2addr v6, v5

    and-int/lit16 v7, v3, 0xff

    int-to-byte v7, v7

    aput-byte v7, v2, v6

    .line 379
    ushr-int/lit8 v3, v3, 0x8

    .line 380
    add-int/lit8 v5, v5, 0x1

    goto :goto_49

    .line 383
    :cond_57
    array-length v6, v2

    invoke-interface {v0, v2, v4, v6}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    .line 388
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->hasAssociatedText()Z

    move-result v6

    if-eqz v6, :cond_c2

    .line 392
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->getAssociatedTextLength()I

    move-result v6

    .line 393
    .local v6, "textLength":I
    const v7, 0xff00

    if-ge v6, v7, :cond_76

    .line 395
    shr-int/lit8 v7, v6, 0x8

    int-to-byte v7, v7

    invoke-interface {v0, v7}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    .line 396
    int-to-byte v7, v6

    invoke-interface {v0, v7}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    .line 398
    const/4 v7, 0x2

    .local v7, "extra":I
    goto :goto_95

    .line 402
    .end local v7    # "extra":I
    :cond_76
    const/4 v7, -0x1

    invoke-interface {v0, v7}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    .line 403
    const/4 v7, -0x2

    invoke-interface {v0, v7}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    .line 404
    shr-int/lit8 v7, v6, 0x18

    int-to-byte v7, v7

    invoke-interface {v0, v7}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    .line 405
    shr-int/lit8 v7, v6, 0x10

    int-to-byte v7, v7

    invoke-interface {v0, v7}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    .line 406
    shr-int/lit8 v7, v6, 0x8

    int-to-byte v7, v7

    invoke-interface {v0, v7}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    .line 407
    int-to-byte v7, v6

    invoke-interface {v0, v7}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    .line 409
    const/4 v7, 0x6

    .line 412
    .restart local v7    # "extra":I
    :goto_95
    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    if-eqz v8, :cond_9d

    .line 414
    array-length v9, v8

    invoke-interface {v0, v8, v4, v9}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    .line 416
    :cond_9d
    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v8

    if-lez v8, :cond_b4

    .line 418
    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->getBuffer()[B

    move-result-object v8

    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v9

    invoke-interface {v0, v8, v4, v9}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    .line 421
    :cond_b4
    add-int v8, v7, v6

    rem-int/2addr v8, v1

    .line 422
    .end local v7    # "extra":I
    .local v8, "extra":I
    if-eqz v8, :cond_c2

    .line 424
    move v7, v8

    .local v7, "i":I
    :goto_ba
    if-eq v7, v1, :cond_c2

    .line 426
    invoke-interface {v0, v4}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    .line 424
    add-int/lit8 v7, v7, 0x1

    goto :goto_ba

    .line 434
    .end local v6    # "textLength":I
    .end local v7    # "i":I
    .end local v8    # "extra":I
    :cond_c2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    .line 436
    invoke-interface {v0, p4, v4}, Lcom/android/org/bouncycastle/crypto/Mac;->doFinal([BI)I

    move-result v1

    return v1
.end method

.method private blacklist getAssociatedTextLength()I
    .registers 3

    .line 441
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    if-nez v1, :cond_c

    const/4 v1, 0x0

    goto :goto_d

    :cond_c
    array-length v1, v1

    :goto_d
    add-int/2addr v0, v1

    return v0
.end method

.method private blacklist hasAssociatedText()Z
    .registers 2

    .line 446
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->getAssociatedTextLength()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method


# virtual methods
.method public blacklist doFinal([BI)I
    .registers 10
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->getBuffer()[B

    move-result-object v2

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v4

    const/4 v3, 0x0

    move-object v1, p0

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->processPacket([BII[BI)I

    move-result v0

    .line 150
    .local v0, "len":I
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->reset()V

    .line 152
    return v0
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 3

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/CCM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMac()[B
    .registers 5

    .line 170
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    new-array v0, v0, [B

    .line 172
    .local v0, "mac":[B
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    return-object v0
.end method

.method public blacklist getOutputSize(I)I
    .registers 4
    .param p1, "len"    # I

    .line 184
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v0

    add-int/2addr v0, p1

    .line 186
    .local v0, "totalData":I
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    if-eqz v1, :cond_f

    .line 188
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    add-int/2addr v1, v0

    return v1

    .line 191
    :cond_f
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    if-ge v0, v1, :cond_15

    const/4 v1, 0x0

    goto :goto_17

    :cond_15
    sub-int v1, v0, v1

    :goto_17
    return v1
.end method

.method public blacklist getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public blacklist getUpdateOutputSize(I)I
    .registers 3
    .param p1, "len"    # I

    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 7
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 69
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    .line 72
    instance-of v0, p2, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;

    if-eqz v0, :cond_22

    .line 74
    move-object v0, p2

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;

    .line 76
    .local v0, "param":Lcom/android/org/bouncycastle/crypto/params/AEADParameters;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->getNonce()[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    .line 77
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->getAssociatedText()[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    .line 78
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->getMacSize()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    .line 79
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->getKey()Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    move-result-object v0

    .line 80
    .local v0, "cipherParameters":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto :goto_3e

    .line 81
    .end local v0    # "cipherParameters":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_22
    instance-of v0, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_5b

    .line 83
    move-object v0, p2

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 85
    .local v0, "param":Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    .line 86
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    .line 87
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    .line 88
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    .line 89
    .local v0, "cipherParameters":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    nop

    .line 96
    :goto_3e
    if-eqz v0, :cond_42

    .line 98
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->keyParam:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    .line 101
    :cond_42
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    if-eqz v1, :cond_53

    array-length v2, v1

    const/4 v3, 0x7

    if-lt v2, v3, :cond_53

    array-length v1, v1

    const/16 v2, 0xd

    if-gt v1, v2, :cond_53

    .line 106
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->reset()V

    .line 107
    return-void

    .line 103
    :cond_53
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "nonce must have length from 7 to 13 octets"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 92
    .end local v0    # "cipherParameters":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_5b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameters passed to CCM: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist processAADByte(B)V
    .registers 3
    .param p1, "in"    # B

    .line 116
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->write(I)V

    .line 117
    return-void
.end method

.method public blacklist processAADBytes([BII)V
    .registers 5
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    .line 122
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->write([BII)V

    .line 123
    return-void
.end method

.method public blacklist processByte(B[BI)I
    .registers 5
    .param p1, "in"    # B
    .param p2, "out"    # [B
    .param p3, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->write(I)V

    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist processBytes([BII[BI)I
    .registers 8
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 136
    array-length v0, p1

    add-int v1, p2, p3

    if-lt v0, v1, :cond_c

    .line 140
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->write([BII)V

    .line 142
    const/4 v0, 0x0

    return v0

    .line 138
    :cond_c
    new-instance v0, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string v1, "Input buffer too short"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist processPacket([BII[BI)I
    .registers 24
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .param p4, "output"    # [B
    .param p5, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;,
            Lcom/android/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .line 245
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    iget-object v6, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->keyParam:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    if-eqz v6, :cond_115

    .line 250
    iget-object v6, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    array-length v6, v6

    .line 251
    .local v6, "n":I
    rsub-int/lit8 v7, v6, 0xf

    .line 252
    .local v7, "q":I
    const/4 v8, 0x4

    const/4 v9, 0x1

    if-ge v7, v8, :cond_28

    .line 254
    mul-int/lit8 v8, v7, 0x8

    shl-int v8, v9, v8

    .line 255
    .local v8, "limitLen":I
    if-ge v3, v8, :cond_20

    goto :goto_28

    .line 257
    :cond_20
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "CCM packet too large for choice of q."

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 261
    .end local v8    # "limitLen":I
    :cond_28
    :goto_28
    iget v8, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array v8, v8, [B

    .line 262
    .local v8, "iv":[B
    add-int/lit8 v10, v7, -0x1

    and-int/lit8 v10, v10, 0x7

    int-to-byte v10, v10

    const/4 v11, 0x0

    aput-byte v10, v8, v11

    .line 263
    iget-object v10, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    array-length v12, v10

    invoke-static {v10, v11, v8, v9, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    new-instance v9, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;

    iget-object v10, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-direct {v9, v10}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    .line 266
    .local v9, "ctrCipher":Lcom/android/org/bouncycastle/crypto/BlockCipher;
    iget-boolean v10, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    new-instance v12, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v13, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->keyParam:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    invoke-direct {v12, v13, v8}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    invoke-interface {v9, v10, v12}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 269
    move/from16 v10, p2

    .line 270
    .local v10, "inIndex":I
    move/from16 v12, p5

    .line 272
    .local v12, "outIndex":I
    iget-boolean v13, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    const-string v14, "Output buffer too short."

    if-eqz v13, :cond_a3

    .line 274
    iget v13, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    add-int/2addr v13, v3

    .line 275
    .local v13, "outputLen":I
    array-length v15, v4

    add-int v11, v13, v5

    if-lt v15, v11, :cond_9b

    .line 280
    iget-object v11, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    invoke-direct {v0, v1, v2, v3, v11}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->calculateMac([BII[B)I

    .line 282
    iget v11, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array v11, v11, [B

    .line 284
    .local v11, "encMac":[B
    iget-object v14, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    const/4 v15, 0x0

    invoke-interface {v9, v14, v15, v11, v15}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 286
    :goto_6e
    add-int v14, v2, v3

    iget v15, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    sub-int/2addr v14, v15

    if-ge v10, v14, :cond_7d

    .line 288
    invoke-interface {v9, v1, v10, v4, v12}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 289
    iget v14, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    add-int/2addr v12, v14

    .line 290
    add-int/2addr v10, v14

    goto :goto_6e

    .line 293
    :cond_7d
    new-array v14, v15, [B

    .line 295
    .local v14, "block":[B
    add-int v15, v3, v2

    sub-int/2addr v15, v10

    move/from16 v16, v6

    const/4 v6, 0x0

    .end local v6    # "n":I
    .local v16, "n":I
    invoke-static {v1, v10, v14, v6, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 297
    invoke-interface {v9, v14, v6, v14, v6}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 299
    add-int v15, v3, v2

    sub-int/2addr v15, v10

    invoke-static {v14, v6, v4, v12, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 301
    add-int v15, v5, v3

    move/from16 v17, v7

    .end local v7    # "q":I
    .local v17, "q":I
    iget v7, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    invoke-static {v11, v6, v4, v15, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 302
    .end local v11    # "encMac":[B
    .end local v14    # "block":[B
    goto :goto_fe

    .line 277
    .end local v16    # "n":I
    .end local v17    # "q":I
    .restart local v6    # "n":I
    .restart local v7    # "q":I
    :cond_9b
    move/from16 v16, v6

    .end local v6    # "n":I
    .restart local v16    # "n":I
    new-instance v6, Lcom/android/org/bouncycastle/crypto/OutputLengthException;

    invoke-direct {v6, v14}, Lcom/android/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 305
    .end local v13    # "outputLen":I
    .end local v16    # "n":I
    .restart local v6    # "n":I
    :cond_a3
    move/from16 v16, v6

    move/from16 v17, v7

    .end local v6    # "n":I
    .end local v7    # "q":I
    .restart local v16    # "n":I
    .restart local v17    # "q":I
    iget v6, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    if-lt v3, v6, :cond_10d

    .line 309
    sub-int v13, v3, v6

    .line 310
    .restart local v13    # "outputLen":I
    array-length v7, v4

    add-int v11, v13, v5

    if-lt v7, v11, :cond_107

    .line 315
    add-int v7, v2, v13

    iget-object v11, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    const/4 v14, 0x0

    invoke-static {v1, v7, v11, v14, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 317
    iget-object v6, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    invoke-interface {v9, v6, v14, v6, v14}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 319
    iget v6, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    .local v6, "i":I
    :goto_c1
    iget-object v7, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    array-length v11, v7

    if-eq v6, v11, :cond_cc

    .line 321
    aput-byte v14, v7, v6

    .line 319
    add-int/lit8 v6, v6, 0x1

    const/4 v14, 0x0

    goto :goto_c1

    .line 324
    .end local v6    # "i":I
    :cond_cc
    :goto_cc
    add-int v6, v2, v13

    iget v7, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    sub-int/2addr v6, v7

    if-ge v10, v6, :cond_db

    .line 326
    invoke-interface {v9, v1, v10, v4, v12}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 327
    iget v6, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    add-int/2addr v12, v6

    .line 328
    add-int/2addr v10, v6

    goto :goto_cc

    .line 331
    :cond_db
    new-array v6, v7, [B

    .line 333
    .local v6, "block":[B
    sub-int v7, v10, v2

    sub-int v7, v13, v7

    const/4 v11, 0x0

    invoke-static {v1, v10, v6, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 335
    invoke-interface {v9, v6, v11, v6, v11}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 337
    sub-int v7, v10, v2

    sub-int v7, v13, v7

    invoke-static {v6, v11, v4, v12, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 339
    iget v7, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array v7, v7, [B

    .line 341
    .local v7, "calculatedMacBlock":[B
    invoke-direct {v0, v4, v5, v13, v7}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->calculateMac([BII[B)I

    .line 343
    iget-object v11, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    invoke-static {v11, v7}, Lcom/android/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v11

    if-eqz v11, :cond_ff

    .line 349
    .end local v6    # "block":[B
    .end local v7    # "calculatedMacBlock":[B
    :goto_fe
    return v13

    .line 345
    .restart local v6    # "block":[B
    .restart local v7    # "calculatedMacBlock":[B
    :cond_ff
    new-instance v11, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v14, "mac check in CCM failed"

    invoke-direct {v11, v14}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 312
    .end local v6    # "block":[B
    .end local v7    # "calculatedMacBlock":[B
    :cond_107
    new-instance v6, Lcom/android/org/bouncycastle/crypto/OutputLengthException;

    invoke-direct {v6, v14}, Lcom/android/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 307
    .end local v13    # "outputLen":I
    :cond_10d
    new-instance v6, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v7, "data too short"

    invoke-direct {v6, v7}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 247
    .end local v8    # "iv":[B
    .end local v9    # "ctrCipher":Lcom/android/org/bouncycastle/crypto/BlockCipher;
    .end local v10    # "inIndex":I
    .end local v12    # "outIndex":I
    .end local v16    # "n":I
    .end local v17    # "q":I
    :cond_115
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "CCM cipher unitialized."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public blacklist processPacket([BII)[B
    .registers 11
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 209
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_a

    .line 211
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    add-int/2addr v0, p3

    new-array v0, v0, [B

    .local v0, "output":[B
    goto :goto_12

    .line 215
    .end local v0    # "output":[B
    :cond_a
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    if-lt p3, v0, :cond_1c

    .line 219
    sub-int v0, p3, v0

    new-array v0, v0, [B

    .line 222
    .restart local v0    # "output":[B
    :goto_12
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->processPacket([BII[BI)I

    .line 224
    return-object v0

    .line 217
    .end local v0    # "output":[B
    :cond_1c
    new-instance v0, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "data too short"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist reset()V
    .registers 2

    .line 157
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->reset()V

    .line 158
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->reset()V

    .line 159
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->reset()V

    .line 160
    return-void
.end method
