.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;
.super Ljava/lang/Object;
.source "ECUtil.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist convertMidTerms([I)[I
    .registers 7
    .param p0, "k"    # [I

    .line 57
    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 59
    .local v1, "res":[I
    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_d

    .line 61
    aget v0, p0, v3

    aput v0, v1, v3

    goto :goto_76

    .line 65
    :cond_d
    array-length v2, p0

    if-ne v2, v0, :cond_77

    .line 70
    aget v0, p0, v3

    aget v2, p0, v4

    const/4 v5, 0x2

    if-ge v0, v2, :cond_39

    aget v0, p0, v3

    aget v2, p0, v5

    if-ge v0, v2, :cond_39

    .line 72
    aget v0, p0, v3

    aput v0, v1, v3

    .line 73
    aget v0, p0, v4

    aget v2, p0, v5

    if-ge v0, v2, :cond_30

    .line 75
    aget v0, p0, v4

    aput v0, v1, v4

    .line 76
    aget v0, p0, v5

    aput v0, v1, v5

    goto :goto_76

    .line 80
    :cond_30
    aget v0, p0, v5

    aput v0, v1, v4

    .line 81
    aget v0, p0, v4

    aput v0, v1, v5

    goto :goto_76

    .line 84
    :cond_39
    aget v0, p0, v4

    aget v2, p0, v5

    if-ge v0, v2, :cond_5b

    .line 86
    aget v0, p0, v4

    aput v0, v1, v3

    .line 87
    aget v0, p0, v3

    aget v2, p0, v5

    if-ge v0, v2, :cond_52

    .line 89
    aget v0, p0, v3

    aput v0, v1, v4

    .line 90
    aget v0, p0, v5

    aput v0, v1, v5

    goto :goto_76

    .line 94
    :cond_52
    aget v0, p0, v5

    aput v0, v1, v4

    .line 95
    aget v0, p0, v3

    aput v0, v1, v5

    goto :goto_76

    .line 100
    :cond_5b
    aget v0, p0, v5

    aput v0, v1, v3

    .line 101
    aget v0, p0, v3

    aget v2, p0, v4

    if-ge v0, v2, :cond_6e

    .line 103
    aget v0, p0, v3

    aput v0, v1, v4

    .line 104
    aget v0, p0, v4

    aput v0, v1, v5

    goto :goto_76

    .line 108
    :cond_6e
    aget v0, p0, v4

    aput v0, v1, v4

    .line 109
    aget v0, p0, v3

    aput v0, v1, v5

    .line 114
    :goto_76
    return-object v1

    .line 67
    :cond_77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Only Trinomials and pentanomials supported"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist generateKeyFingerprint(Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;)Ljava/lang/String;
    .registers 9
    .param p0, "publicPoint"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p1, "spec"    # Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    .line 419
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 420
    .local v0, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    .line 422
    .local v1, "g":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    const/4 v2, 0x0

    if-eqz v0, :cond_31

    .line 424
    new-instance v3, Lcom/android/org/bouncycastle/util/Fingerprint;

    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->getEncoded()[B

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->getEncoded()[B

    move-result-object v6

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v2

    invoke-static {v4, v5, v6, v2}, Lcom/android/org/bouncycastle/util/Arrays;->concatenate([B[B[B[B)[B

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/android/org/bouncycastle/util/Fingerprint;-><init>([B)V

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/util/Fingerprint;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 427
    :cond_31
    new-instance v3, Lcom/android/org/bouncycastle/util/Fingerprint;

    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/android/org/bouncycastle/util/Fingerprint;-><init>([B)V

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/util/Fingerprint;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .registers 14
    .param p0, "key"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 231
    instance-of v0, p0, Lcom/android/org/bouncycastle/jce/interfaces/ECPrivateKey;

    if-eqz v0, :cond_71

    .line 233
    move-object v0, p0

    check-cast v0, Lcom/android/org/bouncycastle/jce/interfaces/ECPrivateKey;

    .line 234
    .local v0, "k":Lcom/android/org/bouncycastle/jce/interfaces/ECPrivateKey;
    invoke-interface {v0}, Lcom/android/org/bouncycastle/jce/interfaces/ECPrivateKey;->getParameters()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v1

    .line 236
    .local v1, "s":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    if-nez v1, :cond_13

    .line 238
    sget-object v2, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v1

    .line 241
    :cond_13
    invoke-interface {v0}, Lcom/android/org/bouncycastle/jce/interfaces/ECPrivateKey;->getParameters()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v2

    instance-of v2, v2, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveParameterSpec;

    if-eqz v2, :cond_4d

    .line 243
    invoke-interface {v0}, Lcom/android/org/bouncycastle/jce/interfaces/ECPrivateKey;->getParameters()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveParameterSpec;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveParameterSpec;->getName()Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, "name":Ljava/lang/String;
    new-instance v3, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    .line 245
    invoke-interface {v0}, Lcom/android/org/bouncycastle/jce/interfaces/ECPrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object v4

    new-instance v12, Lcom/android/org/bouncycastle/crypto/params/ECNamedDomainParameters;

    .line 246
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x9/ECNamedCurveTable;->getOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    .line 247
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v7

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v11

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Lcom/android/org/bouncycastle/crypto/params/ECNamedDomainParameters;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    invoke-direct {v3, v4, v12}, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)V

    .line 244
    return-object v3

    .line 251
    .end local v2    # "name":Ljava/lang/String;
    :cond_4d
    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    .line 252
    invoke-interface {v0}, Lcom/android/org/bouncycastle/jce/interfaces/ECPrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object v3

    new-instance v10, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    .line 253
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v9

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    invoke-direct {v2, v3, v10}, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)V

    .line 251
    return-object v2

    .line 256
    .end local v0    # "k":Lcom/android/org/bouncycastle/jce/interfaces/ECPrivateKey;
    .end local v1    # "s":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    :cond_71
    instance-of v0, p0, Ljava/security/interfaces/ECPrivateKey;

    if-eqz v0, :cond_a4

    .line 258
    move-object v0, p0

    check-cast v0, Ljava/security/interfaces/ECPrivateKey;

    .line 259
    .local v0, "privKey":Ljava/security/interfaces/ECPrivateKey;
    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;)Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v1

    .line 260
    .restart local v1    # "s":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    .line 261
    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v3

    new-instance v10, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    .line 262
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v9

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    invoke-direct {v2, v3, v10}, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)V

    .line 260
    return-object v2

    .line 269
    .end local v0    # "privKey":Ljava/security/interfaces/ECPrivateKey;
    .end local v1    # "s":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    :cond_a4
    :try_start_a4
    invoke-interface {p0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v0

    .line 271
    .local v0, "bytes":[B
    if-eqz v0, :cond_c4

    .line 276
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->getPrivateKey(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    move-result-object v1

    .line 278
    .local v1, "privateKey":Ljava/security/PrivateKey;
    instance-of v2, v1, Ljava/security/interfaces/ECPrivateKey;

    if-eqz v2, :cond_bb

    .line 280
    invoke-static {v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_ba} :catch_cc

    return-object v2

    .line 286
    .end local v0    # "bytes":[B
    .end local v1    # "privateKey":Ljava/security/PrivateKey;
    :cond_bb
    nop

    .line 289
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "can\'t identify EC private key."

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    .restart local v0    # "bytes":[B
    :cond_c4
    :try_start_c4
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "no encoding for EC private key"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .end local p0    # "key":Ljava/security/PrivateKey;
    throw v1
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_cc} :catch_cc

    .line 283
    .end local v0    # "bytes":[B
    .restart local p0    # "key":Ljava/security/PrivateKey;
    :catch_cc
    move-exception v0

    .line 285
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot identify EC private key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist generatePublicKeyParameter(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .registers 12
    .param p0, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 182
    instance-of v0, p0, Lcom/android/org/bouncycastle/jce/interfaces/ECPublicKey;

    if-eqz v0, :cond_2f

    .line 184
    move-object v0, p0

    check-cast v0, Lcom/android/org/bouncycastle/jce/interfaces/ECPublicKey;

    .line 185
    .local v0, "k":Lcom/android/org/bouncycastle/jce/interfaces/ECPublicKey;
    invoke-interface {v0}, Lcom/android/org/bouncycastle/jce/interfaces/ECPublicKey;->getParameters()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v1

    .line 187
    .local v1, "s":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    .line 188
    invoke-interface {v0}, Lcom/android/org/bouncycastle/jce/interfaces/ECPublicKey;->getQ()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    new-instance v10, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    .line 189
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v9

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    invoke-direct {v2, v3, v10}, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)V

    .line 187
    return-object v2

    .line 191
    .end local v0    # "k":Lcom/android/org/bouncycastle/jce/interfaces/ECPublicKey;
    .end local v1    # "s":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    :cond_2f
    instance-of v0, p0, Ljava/security/interfaces/ECPublicKey;

    if-eqz v0, :cond_6a

    .line 193
    move-object v0, p0

    check-cast v0, Ljava/security/interfaces/ECPublicKey;

    .line 194
    .local v0, "pubKey":Ljava/security/interfaces/ECPublicKey;
    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;)Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v1

    .line 195
    .restart local v1    # "s":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    .line 196
    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v3

    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    new-instance v10, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    .line 197
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v9

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    invoke-direct {v2, v3, v10}, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)V

    .line 195
    return-object v2

    .line 204
    .end local v0    # "pubKey":Ljava/security/interfaces/ECPublicKey;
    .end local v1    # "s":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    :cond_6a
    :try_start_6a
    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    .line 206
    .local v0, "bytes":[B
    if-eqz v0, :cond_8a

    .line 211
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->getPublicKey(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;

    move-result-object v1

    .line 213
    .local v1, "publicKey":Ljava/security/PublicKey;
    instance-of v2, v1, Ljava/security/interfaces/ECPublicKey;

    if-eqz v2, :cond_81

    .line 215
    invoke-static {v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_80} :catch_92

    return-object v2

    .line 221
    .end local v0    # "bytes":[B
    .end local v1    # "publicKey":Ljava/security/PublicKey;
    :cond_81
    nop

    .line 224
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "cannot identify EC public key."

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    .restart local v0    # "bytes":[B
    :cond_8a
    :try_start_8a
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "no encoding for EC public key"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .end local p0    # "key":Ljava/security/PublicKey;
    throw v1
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_92} :catch_92

    .line 218
    .end local v0    # "bytes":[B
    .restart local p0    # "key":Ljava/security/PublicKey;
    :catch_92
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot identify EC public key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist getCurveName(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;
    .registers 2
    .param p0, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 386
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x9/ECNamedCurveTable;->getName(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getDomainParameters(Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;)Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    .registers 10
    .param p0, "configuration"    # Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;
    .param p1, "params"    # Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    .line 150
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->isNamedCurve()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 152
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    .line 153
    .local v0, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-static {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getNamedCurveByOid(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v1

    .line 154
    .local v1, "ecP":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    if-nez v1, :cond_1f

    .line 156
    invoke-interface {p0}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getAdditionalECParameters()Ljava/util/Map;

    move-result-object v2

    .line 158
    .local v2, "extraCurves":Ljava/util/Map;
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    .line 160
    .end local v2    # "extraCurves":Ljava/util/Map;
    :cond_1f
    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/ECNamedDomainParameters;

    invoke-direct {v2, v0, v1}, Lcom/android/org/bouncycastle/crypto/params/ECNamedDomainParameters;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;)V

    move-object v0, v2

    .line 161
    .end local v1    # "ecP":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .local v0, "domainParameters":Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    goto :goto_6f

    .line 162
    .end local v0    # "domainParameters":Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    :cond_26
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->isImplicitlyCA()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 164
    invoke-interface {p0}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    .line 166
    .local v0, "iSpec":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    new-instance v7, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    move-object v0, v7

    .line 167
    .local v0, "domainParameters":Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    goto :goto_6f

    .line 170
    .end local v0    # "domainParameters":Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    :cond_4c
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    .line 172
    .local v0, "ecP":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    new-instance v7, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    move-object v0, v1

    .line 175
    .local v0, "domainParameters":Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    :goto_6f
    return-object v0
.end method

.method public static blacklist getDomainParameters(Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;)Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    .registers 12
    .param p0, "configuration"    # Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;
    .param p1, "params"    # Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    .line 123
    instance-of v0, p1, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveParameterSpec;

    if-eqz v0, :cond_2c

    .line 125
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveParameterSpec;

    .line 126
    .local v0, "nParams":Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveParameterSpec;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getNamedCurveOid(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    .line 128
    .local v1, "nameOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    new-instance v9, Lcom/android/org/bouncycastle/crypto/params/ECNamedDomainParameters;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveParameterSpec;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveParameterSpec;->getSeed()[B

    move-result-object v8

    move-object v2, v9

    move-object v3, v1

    invoke-direct/range {v2 .. v8}, Lcom/android/org/bouncycastle/crypto/params/ECNamedDomainParameters;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    move-object v0, v9

    .line 129
    .end local v1    # "nameOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .local v0, "domainParameters":Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    goto :goto_68

    .line 130
    .end local v0    # "domainParameters":Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    :cond_2c
    if-nez p1, :cond_4e

    .line 132
    invoke-interface {p0}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    .line 134
    .local v0, "iSpec":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    new-instance v7, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    move-object v0, v7

    .line 135
    .local v0, "domainParameters":Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    goto :goto_68

    .line 138
    .end local v0    # "domainParameters":Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    :cond_4e
    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 141
    .restart local v0    # "domainParameters":Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    :goto_68
    return-object v0
.end method

.method public static blacklist getNameFrom(Ljava/security/spec/AlgorithmParameterSpec;)Ljava/lang/String;
    .registers 2
    .param p0, "paramSpec"    # Ljava/security/spec/AlgorithmParameterSpec;

    .line 432
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil$1;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil$1;-><init>(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist getNamedCurveByName(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .registers 2
    .param p0, "curveName"    # Ljava/lang/String;

    .line 373
    invoke-static {p0}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->getByName(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    .line 375
    .local v0, "params":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    if-nez v0, :cond_a

    .line 377
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x9/ECNamedCurveTable;->getByName(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    .line 380
    :cond_a
    return-object v0
.end method

.method public static blacklist getNamedCurveByOid(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .registers 2
    .param p0, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 360
    invoke-static {p0}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->getByOID(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    .line 362
    .local v0, "params":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    if-nez v0, :cond_a

    .line 364
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x9/ECNamedCurveTable;->getByOID(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    .line 367
    :cond_a
    return-object v0
.end method

.method public static blacklist getNamedCurveOid(Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 6
    .param p0, "ecParameterSpec"    # Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    .line 339
    invoke-static {}, Lcom/android/org/bouncycastle/asn1/x9/ECNamedCurveTable;->getNames()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "names":Ljava/util/Enumeration;
    :goto_4
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 341
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 343
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x9/ECNamedCurveTable;->getByName(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v2

    .line 345
    .local v2, "params":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 346
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 347
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->equals(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 348
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->equals(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 350
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x9/ECNamedCurveTable;->getOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    return-object v3

    .line 352
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "params":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    :cond_51
    goto :goto_4

    .line 354
    .end local v0    # "names":Ljava/util/Enumeration;
    :cond_52
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getNamedCurveOid(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 6
    .param p0, "curveName"    # Ljava/lang/String;

    .line 314
    move-object v0, p0

    .line 316
    .local v0, "name":Ljava/lang/String;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 317
    .local v1, "spacePos":I
    if-lez v1, :cond_f

    .line 319
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 324
    :cond_f
    const/4 v2, 0x0

    :try_start_10
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_26

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x32

    if-gt v2, v3, :cond_26

    .line 326
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v2, v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_25} :catch_27

    return-object v2

    .line 331
    :cond_26
    goto :goto_28

    .line 329
    :catch_27
    move-exception v2

    .line 333
    :goto_28
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x9/ECNamedCurveTable;->getOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist getOrderBitLength(Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;Ljava/math/BigInteger;Ljava/math/BigInteger;)I
    .registers 5
    .param p0, "configuration"    # Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;
    .param p1, "order"    # Ljava/math/BigInteger;
    .param p2, "privateValue"    # Ljava/math/BigInteger;

    .line 294
    if-nez p1, :cond_16

    .line 296
    invoke-interface {p0}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    .line 298
    .local v0, "implicitCA":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    if-nez v0, :cond_d

    .line 300
    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    return v1

    .line 303
    :cond_d
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    return v1

    .line 307
    .end local v0    # "implicitCA":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    :cond_16
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public static blacklist privateKeyToString(Ljava/lang/String;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;)Ljava/lang/String;
    .registers 8
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "d"    # Ljava/math/BigInteger;
    .param p2, "spec"    # Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    .line 391
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 392
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/android/org/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    .line 394
    .local v1, "nl":Ljava/lang/String;
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/FixedPointCombMultiplier;

    invoke-direct {v2}, Lcom/android/org/bouncycastle/math/ec/FixedPointCombMultiplier;-><init>()V

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/android/org/bouncycastle/math/ec/FixedPointCombMultiplier;->multiply(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    .line 396
    .local v2, "q":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 397
    const-string v3, " Private Key ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v2, p2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->generateKeyFingerprint(Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 398
    const-string v3, "            X: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 399
    const-string v3, "            Y: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 401
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static blacklist publicKeyToString(Ljava/lang/String;Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;)Ljava/lang/String;
    .registers 7
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "q"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p2, "spec"    # Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    .line 406
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 407
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/android/org/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    .line 409
    .local v1, "nl":Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 410
    const-string v2, " Public Key ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->generateKeyFingerprint(Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 411
    const-string v2, "            X: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 412
    const-string v2, "            Y: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 414
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
