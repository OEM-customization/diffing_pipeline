.class public Lcom/android/org/bouncycastle/crypto/macs/HMac;
.super Ljava/lang/Object;
.source "HMac.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/Mac;


# static fields
.field private static final IPAD:B = 0x36t

.field private static final OPAD:B = 0x5ct

.field private static blockLengths:Ljava/util/Hashtable;


# instance fields
.field private blockLength:I

.field private digest:Lcom/android/org/bouncycastle/crypto/Digest;

.field private digestSize:I

.field private inputPad:[B

.field private ipadState:Lcom/android/org/bouncycastle/util/Memoable;

.field private opadState:Lcom/android/org/bouncycastle/util/Memoable;

.field private outputBuf:[B


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/16 v4, 0x80

    const/16 v3, 0x40

    .line 37
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    .line 45
    sget-object v0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    const-string/jumbo v1, "MD5"

    invoke-static {v3}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    const-string/jumbo v1, "SHA-1"

    invoke-static {v3}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    const-string/jumbo v1, "SHA-224"

    invoke-static {v3}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    const-string/jumbo v1, "SHA-256"

    invoke-static {v3}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    const-string/jumbo v1, "SHA-384"

    invoke-static {v4}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    const-string/jumbo v1, "SHA-512"

    invoke-static {v4}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/Digest;)V
    .registers 3
    .param p1, "digest"    # Lcom/android/org/bouncycastle/crypto/Digest;

    .prologue
    .line 91
    invoke-static {p1}, Lcom/android/org/bouncycastle/crypto/macs/HMac;->getByteLength(Lcom/android/org/bouncycastle/crypto/Digest;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/crypto/macs/HMac;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;I)V

    .line 92
    return-void
.end method

.method private constructor <init>(Lcom/android/org/bouncycastle/crypto/Digest;I)V
    .registers 5
    .param p1, "digest"    # Lcom/android/org/bouncycastle/crypto/Digest;
    .param p2, "byteLength"    # I

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    .line 99
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digestSize:I

    .line 100
    iput p2, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLength:I

    .line 101
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLength:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->inputPad:[B

    .line 102
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLength:I

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digestSize:I

    add-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->outputBuf:[B

    .line 103
    return-void
.end method

.method private static getByteLength(Lcom/android/org/bouncycastle/crypto/Digest;)I
    .registers 5
    .param p0, "digest"    # Lcom/android/org/bouncycastle/crypto/Digest;

    .prologue
    .line 67
    instance-of v1, p0, Lcom/android/org/bouncycastle/crypto/ExtendedDigest;

    if-eqz v1, :cond_b

    .line 69
    check-cast p0, Lcom/android/org/bouncycastle/crypto/ExtendedDigest;

    .end local p0    # "digest":Lcom/android/org/bouncycastle/crypto/Digest;
    invoke-interface {p0}, Lcom/android/org/bouncycastle/crypto/ExtendedDigest;->getByteLength()I

    move-result v1

    return v1

    .line 72
    .restart local p0    # "digest":Lcom/android/org/bouncycastle/crypto/Digest;
    :cond_b
    sget-object v1, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    invoke-interface {p0}, Lcom/android/org/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 74
    .local v0, "b":Ljava/lang/Integer;
    if-nez v0, :cond_37

    .line 76
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown digest passed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lcom/android/org/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 79
    :cond_37
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private static xorPad([BIB)V
    .registers 5
    .param p0, "pad"    # [B
    .param p1, "len"    # I
    .param p2, "n"    # B

    .prologue
    .line 232
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_c

    .line 234
    aget-byte v1, p0, v0

    xor-int/2addr v1, p2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 232
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 236
    :cond_c
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .registers 10
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    .prologue
    const/4 v6, 0x0

    .line 183
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->outputBuf:[B

    iget v4, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLength:I

    invoke-interface {v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 185
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->opadState:Lcom/android/org/bouncycastle/util/Memoable;

    if-eqz v2, :cond_3a

    .line 187
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    check-cast v2, Lcom/android/org/bouncycastle/util/Memoable;

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->opadState:Lcom/android/org/bouncycastle/util/Memoable;

    invoke-interface {v2, v3}, Lcom/android/org/bouncycastle/util/Memoable;->reset(Lcom/android/org/bouncycastle/util/Memoable;)V

    .line 188
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->outputBuf:[B

    iget v4, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLength:I

    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v5}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 195
    :goto_26
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v2, p1, p2}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    move-result v1

    .line 197
    .local v1, "len":I
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLength:I

    .local v0, "i":I
    :goto_2e
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->outputBuf:[B

    array-length v2, v2

    if-ge v0, v2, :cond_45

    .line 199
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->outputBuf:[B

    aput-byte v6, v2, v0

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 192
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_3a
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->outputBuf:[B

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->outputBuf:[B

    array-length v4, v4

    invoke-interface {v2, v3, v6, v4}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    goto :goto_26

    .line 202
    .restart local v0    # "i":I
    .restart local v1    # "len":I
    :cond_45
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->ipadState:Lcom/android/org/bouncycastle/util/Memoable;

    if-eqz v2, :cond_53

    .line 204
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    check-cast v2, Lcom/android/org/bouncycastle/util/Memoable;

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->ipadState:Lcom/android/org/bouncycastle/util/Memoable;

    invoke-interface {v2, v3}, Lcom/android/org/bouncycastle/util/Memoable;->reset(Lcom/android/org/bouncycastle/util/Memoable;)V

    .line 211
    :goto_52
    return v1

    .line 208
    :cond_53
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->inputPad:[B

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->inputPad:[B

    array-length v4, v4

    invoke-interface {v2, v3, v6, v4}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    goto :goto_52
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/HMAC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacSize()I
    .registers 2

    .prologue
    .line 162
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digestSize:I

    return v0
.end method

.method public getUnderlyingDigest()Lcom/android/org/bouncycastle/crypto/Digest;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    return-object v0
.end method

.method public init(Lcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 9
    .param p1, "params"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;

    .prologue
    const/4 v6, 0x0

    .line 118
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lcom/android/org/bouncycastle/crypto/Digest;->reset()V

    .line 120
    check-cast p1, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .end local p1    # "params":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    .line 121
    .local v1, "key":[B
    array-length v2, v1

    .line 123
    .local v2, "keyLength":I
    iget v3, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLength:I

    if-le v2, v3, :cond_2c

    .line 125
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v3, v1, v6, v2}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 126
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->inputPad:[B

    invoke-interface {v3, v4, v6}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 128
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digestSize:I

    .line 135
    :goto_1f
    move v0, v2

    .local v0, "i":I
    :goto_20
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->inputPad:[B

    array-length v3, v3

    if-ge v0, v3, :cond_32

    .line 137
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->inputPad:[B

    aput-byte v6, v3, v0

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 132
    .end local v0    # "i":I
    :cond_2c
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->inputPad:[B

    invoke-static {v1, v6, v3, v6, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_1f

    .line 140
    .restart local v0    # "i":I
    :cond_32
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->inputPad:[B

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->outputBuf:[B

    iget v5, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLength:I

    invoke-static {v3, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 142
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->inputPad:[B

    iget v4, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLength:I

    const/16 v5, 0x36

    invoke-static {v3, v4, v5}, Lcom/android/org/bouncycastle/crypto/macs/HMac;->xorPad([BIB)V

    .line 143
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->outputBuf:[B

    iget v4, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLength:I

    const/16 v5, 0x5c

    invoke-static {v3, v4, v5}, Lcom/android/org/bouncycastle/crypto/macs/HMac;->xorPad([BIB)V

    .line 145
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    instance-of v3, v3, Lcom/android/org/bouncycastle/util/Memoable;

    if-eqz v3, :cond_68

    .line 147
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    check-cast v3, Lcom/android/org/bouncycastle/util/Memoable;

    invoke-interface {v3}, Lcom/android/org/bouncycastle/util/Memoable;->copy()Lcom/android/org/bouncycastle/util/Memoable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->opadState:Lcom/android/org/bouncycastle/util/Memoable;

    .line 149
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->opadState:Lcom/android/org/bouncycastle/util/Memoable;

    check-cast v3, Lcom/android/org/bouncycastle/crypto/Digest;

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->outputBuf:[B

    iget v5, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLength:I

    invoke-interface {v3, v4, v6, v5}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 152
    :cond_68
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->inputPad:[B

    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->inputPad:[B

    array-length v5, v5

    invoke-interface {v3, v4, v6, v5}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 154
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    instance-of v3, v3, Lcom/android/org/bouncycastle/util/Memoable;

    if-eqz v3, :cond_82

    .line 156
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    check-cast v3, Lcom/android/org/bouncycastle/util/Memoable;

    invoke-interface {v3}, Lcom/android/org/bouncycastle/util/Memoable;->copy()Lcom/android/org/bouncycastle/util/Memoable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->ipadState:Lcom/android/org/bouncycastle/util/Memoable;

    .line 158
    :cond_82
    return-void
.end method

.method public reset()V
    .registers 5

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/Digest;->reset()V

    .line 227
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->inputPad:[B

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->inputPad:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 228
    return-void
.end method

.method public update(B)V
    .registers 3
    .param p1, "in"    # B

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lcom/android/org/bouncycastle/crypto/Digest;->update(B)V

    .line 169
    return-void
.end method

.method public update([BII)V
    .registers 5
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 177
    return-void
.end method
