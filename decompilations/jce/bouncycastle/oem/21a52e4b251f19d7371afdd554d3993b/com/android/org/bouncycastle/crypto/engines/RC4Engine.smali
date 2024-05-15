.class public Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;
.super Ljava/lang/Object;
.source "RC4Engine.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/StreamCipher;


# static fields
.field private static final blacklist STATE_LENGTH:I = 0x100


# instance fields
.field private blacklist engineState:[B

.field private blacklist workingKey:[B

.field private blacklist x:I

.field private blacklist y:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    .line 23
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    .line 24
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    .line 25
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->workingKey:[B

    return-void
.end method

.method private blacklist setKey([B)V
    .registers 9
    .param p1, "keyBytes"    # [B

    .line 119
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->workingKey:[B

    .line 123
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    .line 124
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    .line 126
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    const/16 v1, 0x100

    if-nez v0, :cond_11

    .line 128
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    .line 132
    :cond_11
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    if-ge v0, v1, :cond_1c

    .line 134
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    int-to-byte v3, v0

    aput-byte v3, v2, v0

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 137
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x0

    .line 138
    .local v0, "i1":I
    const/4 v2, 0x0

    .line 140
    .local v2, "i2":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1f
    if-ge v3, v1, :cond_3d

    .line 142
    aget-byte v4, p1, v0

    and-int/lit16 v4, v4, 0xff

    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    aget-byte v6, v5, v3

    add-int/2addr v4, v6

    add-int/2addr v4, v2

    and-int/lit16 v2, v4, 0xff

    .line 144
    aget-byte v4, v5, v3

    .line 145
    .local v4, "tmp":B
    aget-byte v6, v5, v2

    aput-byte v6, v5, v3

    .line 146
    aput-byte v4, v5, v2

    .line 147
    add-int/lit8 v5, v0, 0x1

    array-length v6, p1

    rem-int v0, v5, v6

    .line 140
    .end local v4    # "tmp":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 149
    .end local v3    # "i":I
    :cond_3d
    return-void
.end method


# virtual methods
.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 2

    .line 58
    const-string v0, "RC4"

    return-object v0
.end method

.method public blacklist init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 6
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;

    .line 40
    instance-of v0, p2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_11

    .line 47
    move-object v0, p2

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->workingKey:[B

    .line 48
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->setKey([B)V

    .line 50
    return-void

    .line 53
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter passed to RC4 init - "

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

.method public blacklist processBytes([BII[BI)I
    .registers 13
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I

    .line 82
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_47

    .line 87
    add-int v0, p5, p3

    array-length v1, p4

    if-gt v0, v1, :cond_3f

    .line 92
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    if-ge v0, p3, :cond_3e

    .line 94
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    .line 95
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    aget-byte v3, v2, v1

    iget v4, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    add-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    .line 98
    aget-byte v4, v2, v1

    .line 99
    .local v4, "tmp":B
    aget-byte v5, v2, v3

    aput-byte v5, v2, v1

    .line 100
    aput-byte v4, v2, v3

    .line 103
    add-int v5, v0, p5

    add-int v6, v0, p2

    aget-byte v6, p1, v6

    aget-byte v1, v2, v1

    aget-byte v3, v2, v3

    add-int/2addr v1, v3

    and-int/lit16 v1, v1, 0xff

    aget-byte v1, v2, v1

    xor-int/2addr v1, v6

    int-to-byte v1, v1

    aput-byte v1, p4, v5

    .line 92
    .end local v4    # "tmp":B
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 107
    .end local v0    # "i":I
    :cond_3e
    return p3

    .line 89
    :cond_3f
    new-instance v0, Lcom/android/org/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_47
    new-instance v0, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist reset()V
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->workingKey:[B

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->setKey([B)V

    .line 113
    return-void
.end method

.method public blacklist returnByte(B)B
    .registers 7
    .param p1, "in"    # B

    .line 63
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    add-int/lit8 v0, v0, 0x1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    .line 64
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    aget-byte v2, v1, v0

    iget v3, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    add-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    .line 67
    aget-byte v3, v1, v0

    .line 68
    .local v3, "tmp":B
    aget-byte v4, v1, v2

    aput-byte v4, v1, v0

    .line 69
    aput-byte v3, v1, v2

    .line 72
    aget-byte v0, v1, v0

    aget-byte v2, v1, v2

    add-int/2addr v0, v2

    and-int/lit16 v0, v0, 0xff

    aget-byte v0, v1, v0

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    return v0
.end method
