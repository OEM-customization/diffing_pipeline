.class public Lcom/android/org/bouncycastle/crypto/generators/DESedeKeyGenerator;
.super Lcom/android/org/bouncycastle/crypto/generators/DESKeyGenerator;
.source "DESedeKeyGenerator.java"


# static fields
.field private static final blacklist MAX_IT:I = 0x14


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/generators/DESKeyGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist generateKey()[B
    .registers 5

    .line 50
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    new-array v0, v0, [B

    .line 51
    .local v0, "newKey":[B
    const/4 v1, 0x0

    .line 55
    .local v1, "count":I
    :cond_5
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/generators/DESedeKeyGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 57
    invoke-static {v0}, Lcom/android/org/bouncycastle/crypto/params/DESedeParameters;->setOddParity([B)V

    .line 59
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x14

    const/4 v3, 0x0

    if-ge v1, v2, :cond_21

    array-length v2, v0

    invoke-static {v0, v3, v2}, Lcom/android/org/bouncycastle/crypto/params/DESedeParameters;->isWeakKey([BII)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v0, v3}, Lcom/android/org/bouncycastle/crypto/params/DESedeParameters;->isRealEDEKey([BI)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 61
    :cond_21
    array-length v2, v0

    invoke-static {v0, v3, v2}, Lcom/android/org/bouncycastle/crypto/params/DESedeParameters;->isWeakKey([BII)Z

    move-result v2

    if-nez v2, :cond_2f

    invoke-static {v0, v3}, Lcom/android/org/bouncycastle/crypto/params/DESedeParameters;->isRealEDEKey([BI)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 66
    return-object v0

    .line 63
    :cond_2f
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unable to generate DES-EDE key"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public blacklist init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V
    .registers 6
    .param p1, "param"    # Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;

    .line 27
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DESedeKeyGenerator;->random:Ljava/security/SecureRandom;

    .line 28
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;->getStrength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    .line 30
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    const/16 v1, 0x18

    if-eqz v0, :cond_39

    iget v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    const/16 v2, 0x15

    if-ne v0, v2, :cond_1d

    goto :goto_39

    .line 34
    :cond_1d
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    const/16 v2, 0xe

    const/16 v3, 0x10

    if-ne v0, v2, :cond_28

    .line 36
    iput v3, p0, Lcom/android/org/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    goto :goto_3b

    .line 38
    :cond_28
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    if-eq v0, v1, :cond_3b

    iget v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    if-ne v0, v3, :cond_31

    goto :goto_3b

    .line 41
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DESede key must be 192 or 128 bits long."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_39
    :goto_39
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    .line 46
    :cond_3b
    :goto_3b
    return-void
.end method
