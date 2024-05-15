.class public Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;
.super Ljava/lang/Object;
.source "OpenSSLX25519PublicKey.java"

# interfaces
.implements Lcom/android/org/conscrypt/OpenSSLX25519Key;
.implements Ljava/security/PublicKey;


# static fields
.field private static final blacklist X509_PREAMBLE:[B

.field private static final blacklist X509_PREAMBLE_WITH_NULL:[B


# instance fields
.field private blacklist uCoordinate:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 13
    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_14

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;->X509_PREAMBLE:[B

    .line 17
    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_1e

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;->X509_PREAMBLE_WITH_NULL:[B

    return-void

    nop

    :array_14
    .array-data 1
        0x30t
        0x2at
        0x30t
        0x5t
        0x6t
        0x3t
        0x2bt
        0x65t
        0x6et
        0x3t
        0x21t
        0x0t
    .end array-data

    :array_1e
    .array-data 1
        0x30t
        0x2ct
        0x30t
        0x7t
        0x6t
        0x3t
        0x2bt
        0x65t
        0x6et
        0x5t
        0x0t
        0x3t
        0x21t
        0x0t
    .end array-data
.end method

.method public constructor blacklist <init>(Ljava/security/spec/X509EncodedKeySpec;)V
    .registers 6
    .param p1, "keySpec"    # Ljava/security/spec/X509EncodedKeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Ljava/security/spec/X509EncodedKeySpec;->getEncoded()[B

    move-result-object v0

    .line 25
    .local v0, "encoded":[B
    if-eqz v0, :cond_34

    invoke-virtual {p1}, Ljava/security/spec/X509EncodedKeySpec;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X.509"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 29
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;->X509_PREAMBLE:[B

    invoke-static {v1, v0}, Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;->matchesPreamble([B[B)I

    move-result v1

    sget-object v2, Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;->X509_PREAMBLE_WITH_NULL:[B

    invoke-static {v2, v0}, Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;->matchesPreamble([B[B)I

    move-result v2

    or-int/2addr v1, v2

    .line 30
    .local v1, "preambleLength":I
    if-eqz v1, :cond_2c

    .line 34
    array-length v2, v0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;->uCoordinate:[B

    .line 35
    return-void

    .line 31
    :cond_2c
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    const-string v3, "Key size is not correct size"

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 26
    .end local v1    # "preambleLength":I
    :cond_34
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    const-string v2, "Encoding must be in X.509 format"

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

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;->uCoordinate:[B

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
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;->uCoordinate:[B

    if-eqz v0, :cond_18

    .line 91
    if-ne p0, p1, :cond_8

    const/4 v0, 0x1

    return v0

    .line 92
    :cond_8
    instance-of v1, p1, Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;

    if-nez v1, :cond_e

    const/4 v0, 0x0

    return v0

    .line 93
    :cond_e
    move-object v1, p1

    check-cast v1, Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;

    .line 94
    .local v1, "that":Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;
    iget-object v2, v1, Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;->uCoordinate:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0

    .line 88
    .end local v1    # "that":Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "key is destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
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
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;->uCoordinate:[B

    if-eqz v0, :cond_16

    .line 71
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;->X509_PREAMBLE:[B

    array-length v1, v0

    add-int/lit8 v1, v1, 0x20

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 72
    .local v1, "encoded":[B
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;->uCoordinate:[B

    const/4 v3, 0x0

    array-length v0, v0

    array-length v4, v2

    invoke-static {v2, v3, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    return-object v1

    .line 68
    .end local v1    # "encoded":[B
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "key is destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getFormat()Ljava/lang/String;
    .registers 2

    .line 62
    const-string v0, "X.509"

    return-object v0
.end method

.method public blacklist getU()[B
    .registers 3

    .line 78
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;->uCoordinate:[B

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
    .registers 3

    .line 99
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;->uCoordinate:[B

    if-eqz v0, :cond_9

    .line 103
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0

    .line 100
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "key is destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
