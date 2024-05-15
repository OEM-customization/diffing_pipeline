.class public Ljavax/crypto/spec/RC2ParameterSpec;
.super Ljava/lang/Object;
.source "RC2ParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private effectiveKeyBits:I

.field private iv:[B


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "effectiveKeyBits"    # I

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    .line 57
    iput p1, p0, Ljavax/crypto/spec/RC2ParameterSpec;->effectiveKeyBits:I

    .line 58
    return-void
.end method

.method public constructor <init>(I[B)V
    .registers 4
    .param p1, "effectiveKeyBits"    # I
    .param p2, "iv"    # [B

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljavax/crypto/spec/RC2ParameterSpec;-><init>(I[BI)V

    .line 74
    return-void
.end method

.method public constructor <init>(I[BI)V
    .registers 7
    .param p1, "effectiveKeyBits"    # I
    .param p2, "iv"    # [B
    .param p3, "offset"    # I

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v1, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    .line 94
    iput p1, p0, Ljavax/crypto/spec/RC2ParameterSpec;->effectiveKeyBits:I

    .line 95
    if-nez p2, :cond_13

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "IV missing"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_13
    const/16 v0, 0x8

    .line 97
    .local v0, "blockSize":I
    array-length v1, p2

    sub-int/2addr v1, p3

    .line 96
    const/16 v2, 0x8

    .line 97
    if-ge v1, v2, :cond_24

    .line 98
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "IV too short"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 100
    :cond_24
    new-array v1, v0, [B

    iput-object v1, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    .line 101
    iget-object v1, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    const/4 v2, 0x0

    invoke-static {p2, p3, v1, v2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 102
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 135
    if-ne p1, p0, :cond_5

    .line 136
    const/4 v1, 0x1

    return v1

    .line 138
    :cond_5
    instance-of v2, p1, Ljavax/crypto/spec/RC2ParameterSpec;

    if-nez v2, :cond_a

    .line 139
    return v1

    :cond_a
    move-object v0, p1

    .line 141
    check-cast v0, Ljavax/crypto/spec/RC2ParameterSpec;

    .line 143
    .local v0, "other":Ljavax/crypto/spec/RC2ParameterSpec;
    iget v2, p0, Ljavax/crypto/spec/RC2ParameterSpec;->effectiveKeyBits:I

    iget v3, v0, Ljavax/crypto/spec/RC2ParameterSpec;->effectiveKeyBits:I

    if-ne v2, v3, :cond_1b

    .line 144
    iget-object v1, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    iget-object v2, v0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 143
    :cond_1b
    return v1
.end method

.method public getEffectiveKeyBits()I
    .registers 2

    .prologue
    .line 110
    iget v0, p0, Ljavax/crypto/spec/RC2ParameterSpec;->effectiveKeyBits:I

    return v0
.end method

.method public getIV()[B
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 120
    iget-object v1, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_5
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 152
    const/4 v1, 0x0

    .line 153
    .local v1, "retval":I
    iget-object v2, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    if-eqz v2, :cond_14

    .line 154
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_6
    iget-object v2, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    array-length v2, v2

    if-ge v0, v2, :cond_14

    .line 155
    iget-object v2, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    aget-byte v2, v2, v0

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 158
    .end local v0    # "i":I
    :cond_14
    iget v2, p0, Ljavax/crypto/spec/RC2ParameterSpec;->effectiveKeyBits:I

    add-int/2addr v1, v2

    return v1
.end method
