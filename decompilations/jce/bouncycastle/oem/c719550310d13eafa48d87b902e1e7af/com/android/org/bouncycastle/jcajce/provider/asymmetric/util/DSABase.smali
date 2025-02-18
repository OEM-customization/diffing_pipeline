.class public abstract Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/DSABase;
.super Ljava/security/SignatureSpi;
.source "DSABase.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;
.implements Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;


# instance fields
.field protected digest:Lcom/android/org/bouncycastle/crypto/Digest;

.field protected encoder:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/DSAEncoder;

.field protected signer:Lcom/android/org/bouncycastle/crypto/DSA;


# direct methods
.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/Digest;Lcom/android/org/bouncycastle/crypto/DSA;Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/DSAEncoder;)V
    .registers 4
    .param p1, "digest"    # Lcom/android/org/bouncycastle/crypto/Digest;
    .param p2, "signer"    # Lcom/android/org/bouncycastle/crypto/DSA;
    .param p3, "encoder"    # Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/DSAEncoder;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/DSABase;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    .line 27
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/DSABase;->signer:Lcom/android/org/bouncycastle/crypto/DSA;

    .line 28
    iput-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/DSABase;->encoder:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/DSAEncoder;

    .line 29
    return-void
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 110
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 101
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 4
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;

    .prologue
    .line 91
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSign()[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 50
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/DSABase;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v1, v3, [B

    .line 52
    .local v1, "hash":[B
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/DSABase;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v3, v1, v4}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 56
    :try_start_e
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/DSABase;->signer:Lcom/android/org/bouncycastle/crypto/DSA;

    invoke-interface {v3, v1}, Lcom/android/org/bouncycastle/crypto/DSA;->generateSignature([B)[Ljava/math/BigInteger;

    move-result-object v2

    .line 58
    .local v2, "sig":[Ljava/math/BigInteger;
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/DSABase;->encoder:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/DSAEncoder;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-interface {v3, v4, v5}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/DSAEncoder;->encode(Ljava/math/BigInteger;Ljava/math/BigInteger;)[B
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1f} :catch_21

    move-result-object v3

    return-object v3

    .line 61
    .end local v2    # "sig":[Ljava/math/BigInteger;
    :catch_21
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/security/SignatureException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected engineUpdate(B)V
    .registers 3
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/DSABase;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lcom/android/org/bouncycastle/crypto/Digest;->update(B)V

    .line 36
    return-void
.end method

.method protected engineUpdate([BII)V
    .registers 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/DSABase;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 45
    return-void
.end method

.method protected engineVerify([B)Z
    .registers 8
    .param p1, "sigBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 70
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/DSABase;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v1, v3, [B

    .line 72
    .local v1, "hash":[B
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/DSABase;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v3, v1, v4}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 78
    :try_start_e
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/DSABase;->encoder:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/DSAEncoder;

    invoke-interface {v3, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/DSAEncoder;->decode([B)[Ljava/math/BigInteger;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_20

    move-result-object v2

    .line 85
    .local v2, "sig":[Ljava/math/BigInteger;
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/DSABase;->signer:Lcom/android/org/bouncycastle/crypto/DSA;

    aget-object v4, v2, v4

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-interface {v3, v1, v4, v5}, Lcom/android/org/bouncycastle/crypto/DSA;->verifySignature([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v3

    return v3

    .line 81
    .end local v2    # "sig":[Ljava/math/BigInteger;
    :catch_20
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/security/SignatureException;

    const-string/jumbo v4, "error decoding signature bytes."

    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
