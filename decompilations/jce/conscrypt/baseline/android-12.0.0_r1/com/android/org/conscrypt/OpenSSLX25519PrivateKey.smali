.class public Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;
.super Ljava/lang/Object;
.source "OpenSSLX25519PrivateKey.java"

# interfaces
.implements Lcom/android/org/conscrypt/OpenSSLX25519Key;
.implements Ljava/security/PrivateKey;


# static fields
.field private static final blacklist PKCS8_PREAMBLE:[B

.field private static final blacklist PKCS8_PREAMBLE_WITH_NULL:[B


# instance fields
.field private blacklist uCoordinate:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 13
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_14

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;->PKCS8_PREAMBLE:[B

    .line 17
    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_20

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;->PKCS8_PREAMBLE_WITH_NULL:[B

    return-void

    nop

    :array_14
    .array-data 1
        0x30t
        0x2et
        0x2t
        0x1t
        0x0t
        0x30t
        0x5t
        0x6t
        0x3t
        0x2bt
        0x65t
        0x6et
        0x4t
        0x22t
        0x4t
        0x20t
    .end array-data

    :array_20
    .array-data 1
        0x30t
        0x30t
        0x2t
        0x1t
        0x0t
        0x30t
        0x7t
        0x6t
        0x3t
        0x2bt
        0x65t
        0x6et
        0x5t
        0x0t
        0x4t
        0x22t
        0x4t
        0x20t
    .end array-data
.end method

.method public constructor blacklist <init>(Ljava/security/spec/PKCS8EncodedKeySpec;)V
    .registers 6
    .param p1, "keySpec"    # Ljava/security/spec/PKCS8EncodedKeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    move-result-object v0

    .line 25
    .local v0, "encoded":[B
    if-eqz v0, :cond_35

    invoke-virtual {p1}, Ljava/security/spec/PKCS8EncodedKeySpec;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PKCS#8"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 29
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;->PKCS8_PREAMBLE:[B

    invoke-static {v1, v0}, Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;->matchesPreamble([B[B)I

    move-result v2

    sget-object v3, Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;->PKCS8_PREAMBLE_WITH_NULL:[B

    invoke-static {v3, v0}, Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;->matchesPreamble([B[B)I

    move-result v3

    or-int/2addr v2, v3

    .line 30
    .local v2, "preambleLength":I
    if-eqz v2, :cond_2d

    .line 34
    array-length v1, v1

    array-length v3, v0

    invoke-static {v0, v1, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;->uCoordinate:[B

    .line 35
    return-void

    .line 31
    :cond_2d
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    const-string v3, "Key size is not correct size"

    invoke-direct {v1, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 26
    .end local v2    # "preambleLength":I
    :cond_35
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    const-string v2, "Key must be encoded in PKCS#8 format"

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor blacklist <init>([B)V
    .registers 3
    .param p1, "coordinateBytes"    # [B

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;->uCoordinate:[B

    .line 53
    return-void
.end method

.method private static blacklist matchesPreamble([B[B)I
    .registers 7
    .param p0, "preamble"    # [B
    .param p1, "encoded"    # [B

    .line 38
    array-length v0, p1

    array-length v1, p0

    add-int/lit8 v1, v1, 0x20

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    .line 39
    return v2

    .line 41
    :cond_8
    const/4 v0, 0x0

    .line 42
    .local v0, "cmp":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    array-length v3, p0

    if-ge v1, v3, :cond_16

    .line 43
    aget-byte v3, p1, v1

    aget-byte v4, p0, v1

    xor-int/2addr v3, v4

    or-int/2addr v0, v3

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 45
    .end local v1    # "i":I
    :cond_16
    if-eqz v0, :cond_19

    .line 46
    return v2

    .line 48
    :cond_19
    array-length v1, p0

    return v1
.end method


# virtual methods
.method public whitelist test-api destroy()V
    .registers 3

    .line 87
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;->uCoordinate:[B

    if-eqz v0, :cond_b

    .line 88
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;->uCoordinate:[B

    .line 91
    :cond_b
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 100
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 101
    :cond_4
    instance-of v0, p1, Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 102
    :cond_a
    move-object v0, p1

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;

    .line 103
    .local v0, "that":Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;->uCoordinate:[B

    iget-object v2, v0, Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;->uCoordinate:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method public whitelist test-api getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 57
    const-string v0, "XDH"

    return-object v0
.end method

.method public whitelist test-api getEncoded()[B
    .registers 6

    .line 67
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;->uCoordinate:[B

    if-eqz v0, :cond_16

    .line 71
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;->PKCS8_PREAMBLE:[B

    array-length v2, v1

    array-length v0, v0

    add-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 72
    .local v0, "encoded":[B
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;->uCoordinate:[B

    const/4 v3, 0x0

    array-length v1, v1

    array-length v4, v2

    invoke-static {v2, v3, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    return-object v0

    .line 68
    .end local v0    # "encoded":[B
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "key is destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getFormat()Ljava/lang/String;
    .registers 2

    .line 62
    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public blacklist getU()[B
    .registers 3

    .line 78
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;->uCoordinate:[B

    if-eqz v0, :cond_b

    .line 82
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0

    .line 79
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "key is destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;->uCoordinate:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public whitelist test-api isDestroyed()Z
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;->uCoordinate:[B

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
