.class public Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;
.super Ljava/lang/Object;
.source "RSADigestSigner.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/Signer;


# static fields
.field private static final blacklist oidMap:Ljava/util/Hashtable;


# instance fields
.field private final blacklist algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final blacklist digest:Lcom/android/org/bouncycastle/crypto/Digest;

.field private blacklist forSigning:Z

.field private final blacklist rsaEngine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 39
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    .line 52
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_SHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA-1"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA-224"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA-256"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA-384"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA-512"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512_224:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA-512/224"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512_256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA-512/256"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "MD5"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/Digest;)V
    .registers 4
    .param p1, "digest"    # Lcom/android/org/bouncycastle/crypto/Digest;

    .line 77
    sget-object v0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 78
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/Digest;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .registers 5
    .param p1, "digest"    # Lcom/android/org/bouncycastle/crypto/Digest;
    .param p2, "digestOid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;

    new-instance v1, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;-><init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->rsaEngine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 84
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    .line 85
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    invoke-direct {v0, p2, v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 86
    return-void
.end method

.method private blacklist derEncode([B)[B
    .registers 4
    .param p1, "hash"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v0, v1, p1}, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .line 255
    .local v0, "dInfo":Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;
    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public blacklist generateSignature()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/CryptoException;,
            Lcom/android/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .line 162
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->forSigning:Z

    if-eqz v0, :cond_3a

    .line 167
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    .line 168
    .local v0, "hash":[B
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 172
    :try_start_12
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->derEncode([B)[B

    move-result-object v1

    .line 173
    .local v1, "data":[B
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->rsaEngine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    array-length v4, v1

    invoke-interface {v3, v1, v2, v4}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v2
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1d} :catch_1e

    return-object v2

    .line 175
    .end local v1    # "data":[B
    :catch_1e
    move-exception v1

    .line 177
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lcom/android/org/bouncycastle/crypto/CryptoException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to encode signature: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/android/org/bouncycastle/crypto/CryptoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 164
    .end local v0    # "hash":[B
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RSADigestSigner not initialised for signature generation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 3

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "withRSA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 6
    .param p1, "forSigning"    # Z
    .param p2, "parameters"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;

    .line 108
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->forSigning:Z

    .line 111
    instance-of v0, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_10

    .line 113
    move-object v0, p2

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .local v0, "k":Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    goto :goto_13

    .line 117
    .end local v0    # "k":Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :cond_10
    move-object v0, p2

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 120
    .restart local v0    # "k":Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :goto_13
    if-eqz p1, :cond_24

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_24

    .line 122
    :cond_1c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "signing requires private key"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 125
    :cond_24
    :goto_24
    if-nez p1, :cond_35

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v1

    if-nez v1, :cond_2d

    goto :goto_35

    .line 127
    :cond_2d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "verification requires public key"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 130
    :cond_35
    :goto_35
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->reset()V

    .line 132
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->rsaEngine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1, p1, p2}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 133
    return-void
.end method

.method public blacklist reset()V
    .registers 2

    .line 246
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/Digest;->reset()V

    .line 247
    return-void
.end method

.method public blacklist update(B)V
    .registers 3
    .param p1, "input"    # B

    .line 141
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lcom/android/org/bouncycastle/crypto/Digest;->update(B)V

    .line 142
    return-void
.end method

.method public blacklist update([BII)V
    .registers 5
    .param p1, "input"    # [B
    .param p2, "inOff"    # I
    .param p3, "length"    # I

    .line 152
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 153
    return-void
.end method

.method public blacklist verifySignature([B)Z
    .registers 13
    .param p1, "signature"    # [B

    .line 188
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->forSigning:Z

    if-nez v0, :cond_6f

    .line 193
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    .line 195
    .local v0, "hash":[B
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 202
    :try_start_12
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->rsaEngine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    array-length v3, p1

    invoke-interface {v1, p1, v2, v3}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v1

    .line 203
    .local v1, "sig":[B
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->derEncode([B)[B

    move-result-object v3
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1d} :catch_6d

    .line 208
    .local v3, "expected":[B
    nop

    .line 210
    array-length v4, v1

    array-length v5, v3

    if-ne v4, v5, :cond_27

    .line 212
    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v2

    return v2

    .line 214
    :cond_27
    array-length v4, v1

    array-length v5, v3

    add-int/lit8 v5, v5, -0x2

    if-ne v4, v5, :cond_69

    .line 216
    array-length v4, v1

    array-length v5, v0

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x2

    .line 217
    .local v4, "sigOffset":I
    array-length v5, v3

    array-length v6, v0

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x2

    .line 219
    .local v5, "expectedOffset":I
    const/4 v6, 0x1

    aget-byte v7, v3, v6

    add-int/lit8 v7, v7, -0x2

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    .line 220
    const/4 v7, 0x3

    aget-byte v8, v3, v7

    add-int/lit8 v8, v8, -0x2

    int-to-byte v8, v8

    aput-byte v8, v3, v7

    .line 222
    const/4 v7, 0x0

    .line 224
    .local v7, "nonEqual":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_49
    array-length v9, v0

    if-ge v8, v9, :cond_59

    .line 226
    add-int v9, v4, v8

    aget-byte v9, v1, v9

    add-int v10, v5, v8

    aget-byte v10, v3, v10

    xor-int/2addr v9, v10

    or-int/2addr v7, v9

    .line 224
    add-int/lit8 v8, v8, 0x1

    goto :goto_49

    .line 229
    .end local v8    # "i":I
    :cond_59
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_5a
    if-ge v8, v4, :cond_65

    .line 231
    aget-byte v9, v1, v8

    aget-byte v10, v3, v8

    xor-int/2addr v9, v10

    or-int/2addr v7, v9

    .line 229
    add-int/lit8 v8, v8, 0x1

    goto :goto_5a

    .line 234
    .end local v8    # "i":I
    :cond_65
    if-nez v7, :cond_68

    move v2, v6

    :cond_68
    return v2

    .line 238
    .end local v4    # "sigOffset":I
    .end local v5    # "expectedOffset":I
    .end local v7    # "nonEqual":I
    :cond_69
    invoke-static {v3, v3}, Lcom/android/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    .line 240
    return v2

    .line 205
    .end local v1    # "sig":[B
    .end local v3    # "expected":[B
    :catch_6d
    move-exception v1

    .line 207
    .local v1, "e":Ljava/lang/Exception;
    return v2

    .line 190
    .end local v0    # "hash":[B
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RSADigestSigner not initialised for verification"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
