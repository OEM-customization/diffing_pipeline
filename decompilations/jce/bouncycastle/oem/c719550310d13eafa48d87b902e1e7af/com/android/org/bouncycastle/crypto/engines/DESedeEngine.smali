.class public Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;
.super Lcom/android/org/bouncycastle/crypto/engines/DESEngine;
.source "DESedeEngine.java"


# static fields
.field protected static final BLOCK_SIZE:I = 0x8


# instance fields
.field private forEncryption:Z

.field private workingKey1:[I

.field private workingKey2:[I

.field private workingKey3:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    .line 17
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey2:[I

    .line 18
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    .line 27
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    const-string/jumbo v0, "DESede"

    return-object v0
.end method

.method public getBlockSize()I
    .registers 2

    .prologue
    .line 82
    const/16 v0, 0x8

    return v0
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 12
    .param p1, "encrypting"    # Z
    .param p2, "params"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;

    .prologue
    const/16 v8, 0x18

    const/16 v7, 0x10

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 41
    instance-of v4, p2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    if-nez v4, :cond_2d

    .line 43
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "invalid parameter passed to DESede init - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 46
    :cond_2d
    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .end local p2    # "params":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v3

    .line 48
    .local v3, "keyMaster":[B
    array-length v4, v3

    if-eq v4, v8, :cond_42

    array-length v4, v3

    if-eq v4, v7, :cond_42

    .line 50
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "key size must be 16 or 24 bytes."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 53
    :cond_42
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->forEncryption:Z

    .line 55
    new-array v0, v6, [B

    .line 56
    .local v0, "key1":[B
    array-length v4, v0

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 57
    invoke-virtual {p0, p1, v0}, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->generateWorkingKey(Z[B)[I

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    .line 59
    new-array v1, v6, [B

    .line 60
    .local v1, "key2":[B
    array-length v4, v1

    invoke-static {v3, v6, v1, v5, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 61
    xor-int/lit8 v4, p1, 0x1

    invoke-virtual {p0, v4, v1}, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->generateWorkingKey(Z[B)[I

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey2:[I

    .line 63
    array-length v4, v3

    if-ne v4, v8, :cond_6e

    .line 65
    new-array v2, v6, [B

    .line 66
    .local v2, "key3":[B
    array-length v4, v2

    invoke-static {v3, v7, v2, v5, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 67
    invoke-virtual {p0, p1, v2}, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->generateWorkingKey(Z[B)[I

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    .line 73
    .end local v2    # "key3":[B
    :goto_6d
    return-void

    .line 71
    :cond_6e
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    iput-object v4, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    goto :goto_6d
.end method

.method public processBlock([BI[BI)I
    .registers 14
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I

    .prologue
    const/16 v8, 0x8

    const/4 v5, 0x0

    .line 91
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    if-nez v0, :cond_10

    .line 93
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "DESede engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_10
    add-int/lit8 v0, p2, 0x8

    array-length v1, p1

    if-le v0, v1, :cond_1e

    .line 98
    new-instance v0, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string/jumbo v1, "input buffer too short"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_1e
    add-int/lit8 v0, p4, 0x8

    array-length v1, p3

    if-le v0, v1, :cond_2c

    .line 103
    new-instance v0, Lcom/android/org/bouncycastle/crypto/OutputLengthException;

    const-string/jumbo v1, "output buffer too short"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_2c
    new-array v4, v8, [B

    .line 108
    .local v4, "temp":[B
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->forEncryption:Z

    if-eqz v0, :cond_4b

    .line 110
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    .line 111
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey2:[I

    move-object v2, p0

    move-object v6, v4

    move v7, v5

    invoke-virtual/range {v2 .. v7}, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    .line 112
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    move-object v2, p0

    move-object v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    .line 121
    :goto_4a
    return v8

    .line 116
    :cond_4b
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    .line 117
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey2:[I

    move-object v2, p0

    move-object v6, v4

    move v7, v5

    invoke-virtual/range {v2 .. v7}, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    .line 118
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    move-object v2, p0

    move-object v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    goto :goto_4a
.end method

.method public reset()V
    .registers 1

    .prologue
    .line 126
    return-void
.end method
