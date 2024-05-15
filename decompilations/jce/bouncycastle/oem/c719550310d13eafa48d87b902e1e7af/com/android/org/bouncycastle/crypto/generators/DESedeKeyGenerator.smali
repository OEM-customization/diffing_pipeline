.class public Lcom/android/org/bouncycastle/crypto/generators/DESedeKeyGenerator;
.super Lcom/android/org/bouncycastle/crypto/generators/DESKeyGenerator;
.source "DESedeKeyGenerator.java"


# static fields
.field private static final MAX_IT:I = 0x14


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/generators/DESKeyGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKey()[B
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 46
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    new-array v1, v2, [B

    .line 47
    .local v1, "newKey":[B
    const/4 v0, 0x0

    .line 51
    .local v0, "count":I
    :cond_6
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/generators/DESedeKeyGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 53
    invoke-static {v1}, Lcom/android/org/bouncycastle/crypto/params/DESedeParameters;->setOddParity([B)V

    .line 55
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x14

    if-ge v0, v2, :cond_23

    array-length v2, v1

    invoke-static {v1, v3, v2}, Lcom/android/org/bouncycastle/crypto/params/DESedeParameters;->isWeakKey([BII)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/crypto/params/DESedeParameters;->isRealEDEKey([BI)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_6

    .line 57
    :cond_23
    array-length v2, v1

    invoke-static {v1, v3, v2}, Lcom/android/org/bouncycastle/crypto/params/DESedeParameters;->isWeakKey([BII)Z

    move-result v2

    if-nez v2, :cond_32

    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/crypto/params/DESedeParameters;->isRealEDEKey([BI)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3b

    .line 59
    :cond_32
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Unable to generate DES-EDE key"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 62
    :cond_3b
    return-object v1
.end method

.method public init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V
    .registers 6
    .param p1, "param"    # Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;

    .prologue
    const/16 v3, 0x18

    const/16 v2, 0x10

    .line 23
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DESedeKeyGenerator;->random:Ljava/security/SecureRandom;

    .line 24
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;->getStrength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    .line 26
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    if-eqz v0, :cond_1e

    iget v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_21

    .line 28
    :cond_1e
    iput v3, p0, Lcom/android/org/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    .line 42
    :cond_20
    :goto_20
    return-void

    .line 30
    :cond_21
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_2a

    .line 32
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    goto :goto_20

    .line 34
    :cond_2a
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    if-eq v0, v3, :cond_20

    .line 35
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    if-eq v0, v2, :cond_20

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "DESede key must be 192 or 128 bits long."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
