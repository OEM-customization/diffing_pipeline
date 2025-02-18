.class public Ljavax/crypto/spec/SecretKeySpec;
.super Ljava/lang/Object;
.source "SecretKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;
.implements Ljavax/crypto/SecretKey;


# static fields
.field private static final serialVersionUID:J = 0x5b470b66e230614dL


# instance fields
.field private algorithm:Ljava/lang/String;

.field private key:[B


# direct methods
.method public constructor <init>([BIILjava/lang/String;)V
    .registers 7
    .param p1, "key"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "algorithm"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    if-eqz p1, :cond_8

    if-nez p4, :cond_11

    .line 142
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Missing argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_11
    array-length v0, p1

    if-nez v0, :cond_1d

    .line 145
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Empty key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_1d
    array-length v0, p1

    sub-int/2addr v0, p2

    if-ge v0, p3, :cond_2a

    .line 148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 149
    const-string/jumbo v1, "Invalid offset/length combination"

    .line 148
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_2a
    if-gez p3, :cond_35

    .line 152
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string/jumbo v1, "len is negative"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_35
    new-array v0, p3, [B

    iput-object v0, p0, Ljavax/crypto/spec/SecretKeySpec;->key:[B

    .line 155
    iget-object v0, p0, Ljavax/crypto/spec/SecretKeySpec;->key:[B

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 156
    iput-object p4, p0, Ljavax/crypto/spec/SecretKeySpec;->algorithm:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .registers 5
    .param p1, "key"    # [B
    .param p2, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    if-eqz p1, :cond_7

    if-nez p2, :cond_10

    .line 93
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Missing argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_10
    array-length v0, p1

    if-nez v0, :cond_1c

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Empty key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_1c
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljavax/crypto/spec/SecretKeySpec;->key:[B

    .line 99
    iput-object p2, p0, Ljavax/crypto/spec/SecretKeySpec;->algorithm:Ljava/lang/String;

    .line 100
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 215
    if-ne p0, p1, :cond_5

    .line 216
    const/4 v2, 0x1

    return v2

    .line 218
    :cond_5
    instance-of v2, p1, Ljavax/crypto/SecretKey;

    if-nez v2, :cond_a

    .line 219
    return v4

    :cond_a
    move-object v2, p1

    .line 221
    check-cast v2, Ljavax/crypto/SecretKey;

    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "thatAlg":Ljava/lang/String;
    iget-object v2, p0, Ljavax/crypto/spec/SecretKeySpec;->algorithm:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_46

    .line 223
    const-string/jumbo v2, "DESede"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 224
    iget-object v2, p0, Ljavax/crypto/spec/SecretKeySpec;->algorithm:Ljava/lang/String;

    const-string/jumbo v3, "TripleDES"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 223
    if-eqz v2, :cond_46

    .line 225
    :cond_2f
    const-string/jumbo v2, "TripleDES"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 226
    iget-object v2, p0, Ljavax/crypto/spec/SecretKeySpec;->algorithm:Ljava/lang/String;

    const-string/jumbo v3, "DESede"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 223
    if-eqz v2, :cond_46

    .line 227
    :cond_45
    return v4

    .line 230
    :cond_46
    check-cast p1, Ljavax/crypto/SecretKey;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    .line 232
    .local v1, "thatKey":[B
    iget-object v2, p0, Ljavax/crypto/spec/SecretKeySpec;->key:[B

    invoke-static {v2, v1}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v2

    return v2
.end method

.method public getAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Ljavax/crypto/spec/SecretKeySpec;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()[B
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Ljavax/crypto/spec/SecretKeySpec;->key:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .registers 2

    .prologue
    .line 174
    const-string/jumbo v0, "RAW"

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 192
    const/4 v1, 0x0

    .line 193
    .local v1, "retval":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_2
    iget-object v2, p0, Ljavax/crypto/spec/SecretKeySpec;->key:[B

    array-length v2, v2

    if-ge v0, v2, :cond_10

    .line 194
    iget-object v2, p0, Ljavax/crypto/spec/SecretKeySpec;->key:[B

    aget-byte v2, v2, v0

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 196
    :cond_10
    iget-object v2, p0, Ljavax/crypto/spec/SecretKeySpec;->algorithm:Ljava/lang/String;

    const-string/jumbo v3, "TripleDES"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 197
    const-string/jumbo v2, "desede"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    return v1

    .line 200
    :cond_24
    iget-object v2, p0, Ljavax/crypto/spec/SecretKeySpec;->algorithm:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 199
    xor-int/2addr v1, v2

    return v1
.end method
