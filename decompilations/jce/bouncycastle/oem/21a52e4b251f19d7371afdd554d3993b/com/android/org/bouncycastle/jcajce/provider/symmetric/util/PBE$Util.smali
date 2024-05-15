.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;
.super Ljava/lang/Object;
.source "PBE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Util"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist convertPassword(ILjavax/crypto/spec/PBEKeySpec;)[B
    .registers 3
    .param p0, "type"    # I
    .param p1, "keySpec"    # Ljavax/crypto/spec/PBEKeySpec;

    .line 526
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    .line 528
    invoke-virtual {p1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS12PasswordToBytes([C)[B

    move-result-object v0

    .local v0, "key":[B
    goto :goto_24

    .line 530
    .end local v0    # "key":[B
    :cond_c
    const/4 v0, 0x5

    if-eq p0, v0, :cond_1c

    const/4 v0, 0x4

    if-ne p0, v0, :cond_13

    goto :goto_1c

    .line 536
    :cond_13
    invoke-virtual {p1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToBytes([C)[B

    move-result-object v0

    .restart local v0    # "key":[B
    goto :goto_24

    .line 532
    .end local v0    # "key":[B
    :cond_1c
    :goto_1c
    invoke-virtual {p1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToUTF8Bytes([C)[B

    move-result-object v0

    .line 538
    .restart local v0    # "key":[B
    :goto_24
    return-object v0
.end method

.method public static blacklist getParameterSpecFromPBEParameterSpec(Ljavax/crypto/spec/PBEParameterSpec;)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 5
    .param p0, "pbeParameterSpec"    # Ljavax/crypto/spec/PBEParameterSpec;

    .line 511
    :try_start_0
    const-class v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "javax.crypto.spec.PBEParameterSpec"

    .line 512
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getParameterSpec"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 513
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 514
    .local v0, "getParameterSpecMethod":Ljava/lang/reflect/Method;
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/spec/AlgorithmParameterSpec;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    return-object v1

    .line 515
    .end local v0    # "getParameterSpecMethod":Ljava/lang/reflect/Method;
    :catch_1e
    move-exception v0

    .line 516
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist makePBEGenerator(II)Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    .registers 8
    .param p0, "type"    # I
    .param p1, "hash"    # I

    .line 79
    const/4 v0, 0x1

    if-eqz p0, :cond_c3

    const/4 v1, 0x4

    if-ne p0, v1, :cond_8

    goto/16 :goto_c3

    .line 101
    :cond_8
    const/16 v2, 0x9

    const/16 v3, 0x8

    const/4 v4, 0x7

    if-eq p0, v0, :cond_73

    const/4 v5, 0x5

    if-ne p0, v5, :cond_13

    goto :goto_73

    .line 173
    :cond_13
    const/4 v5, 0x2

    if-ne p0, v5, :cond_6c

    .line 175
    if-eqz p1, :cond_61

    if-eq p1, v0, :cond_56

    if-eq p1, v1, :cond_4b

    if-eq p1, v4, :cond_40

    if-eq p1, v3, :cond_35

    if-ne p1, v2, :cond_2d

    .line 223
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA512()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 224
    .local v0, "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_e3

    .line 226
    .end local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unknown digest scheme for PBE encryption."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_35
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA384()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 219
    .restart local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_e3

    .line 213
    .end local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    :cond_40
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA224()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 214
    .restart local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_e3

    .line 204
    .end local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    :cond_4b
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA256()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 205
    .restart local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_e3

    .line 189
    .end local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    :cond_56
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 190
    .restart local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_e3

    .line 184
    .end local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    :cond_61
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getMD5()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 185
    .restart local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_e3

    .line 231
    .end local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    :cond_6c
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;-><init>()V

    .restart local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_e3

    .line 103
    .end local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    :cond_73
    :goto_73
    if-eqz p1, :cond_b9

    if-eq p1, v0, :cond_af

    if-eq p1, v1, :cond_a5

    if-eq p1, v4, :cond_9b

    if-eq p1, v3, :cond_91

    if-ne p1, v2, :cond_89

    .line 151
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA512()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 152
    .restart local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_e3

    .line 170
    .end local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    :cond_89
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unknown digest scheme for PBE PKCS5S2 encryption."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_91
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA384()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 147
    .restart local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_e3

    .line 141
    .end local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    :cond_9b
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA224()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 142
    .restart local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_e3

    .line 132
    .end local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    :cond_a5
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA256()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 133
    .restart local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_e3

    .line 117
    .end local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    :cond_af
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 118
    .restart local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_e3

    .line 112
    .end local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    :cond_b9
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getMD5()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 113
    .restart local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_e3

    .line 81
    .end local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    :cond_c3
    :goto_c3
    if-eqz p1, :cond_d9

    if-ne p1, v0, :cond_d1

    .line 95
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;

    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 96
    .restart local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_e3

    .line 98
    .end local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    :cond_d1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PKCS5 scheme 1 only supports MD2, MD5 and SHA1."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_d9
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;

    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getMD5()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 91
    .restart local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    nop

    .line 234
    :goto_e3
    return-object v0
.end method

.method public static blacklist makePBEMacParameters(Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .registers 7
    .param p0, "pbeKey"    # Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    .param p1, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;

    .line 389
    if-eqz p1, :cond_2d

    instance-of v0, p1, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v0, :cond_2d

    .line 394
    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/PBEParameterSpec;

    .line 395
    .local v0, "pbeParam":Ljavax/crypto/spec/PBEParameterSpec;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getType()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getDigest()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object v1

    .line 396
    .local v1, "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getEncoded()[B

    move-result-object v2

    .line 399
    .local v2, "key":[B
    invoke-virtual {v0}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v3

    invoke-virtual {v0}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 401
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getKeySize()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    .line 403
    .local v3, "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    return-object v3

    .line 391
    .end local v0    # "pbeParam":Ljavax/crypto/spec/PBEParameterSpec;
    .end local v1    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    .end local v2    # "key":[B
    .end local v3    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Need a PBEParameter spec with a PBE key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist makePBEMacParameters(Ljavax/crypto/SecretKey;IIILjavax/crypto/spec/PBEParameterSpec;)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .registers 10
    .param p0, "key"    # Ljavax/crypto/SecretKey;
    .param p1, "type"    # I
    .param p2, "hash"    # I
    .param p3, "keySize"    # I
    .param p4, "pbeSpec"    # Ljavax/crypto/spec/PBEParameterSpec;

    .line 483
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object v0

    .line 486
    .local v0, "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    .line 488
    .local v1, "keyBytes":[B
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    invoke-virtual {p4}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v3

    invoke-virtual {p4}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 490
    invoke-virtual {v0, p3}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    .line 492
    .local v2, "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1c
    array-length v4, v1

    if-eq v3, v4, :cond_25

    .line 494
    const/4 v4, 0x0

    aput-byte v4, v1, v3

    .line 492
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 497
    .end local v3    # "i":I
    :cond_25
    return-object v2
.end method

.method public static blacklist makePBEMacParameters(Ljavax/crypto/spec/PBEKeySpec;III)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .registers 9
    .param p0, "keySpec"    # Ljavax/crypto/spec/PBEKeySpec;
    .param p1, "type"    # I
    .param p2, "hash"    # I
    .param p3, "keySize"    # I

    .line 417
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object v0

    .line 421
    .local v0, "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->convertPassword(ILjavax/crypto/spec/PBEKeySpec;)[B

    move-result-object v1

    .line 423
    .local v1, "key":[B
    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v2

    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 425
    invoke-virtual {v0, p3}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    .line 427
    .local v2, "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_18
    array-length v4, v1

    if-eq v3, v4, :cond_21

    .line 429
    const/4 v4, 0x0

    aput-byte v4, v1, v3

    .line 427
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 432
    .end local v3    # "i":I
    :cond_21
    return-object v2
.end method

.method public static blacklist makePBEParameters(Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .registers 13
    .param p0, "pbeKey"    # Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    .param p1, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "targetAlgorithm"    # Ljava/lang/String;

    .line 320
    if-eqz p1, :cond_9d

    instance-of v0, p1, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v0, :cond_9d

    .line 325
    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/PBEParameterSpec;

    .line 326
    .local v0, "pbeParam":Ljavax/crypto/spec/PBEParameterSpec;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getType()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getDigest()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object v1

    .line 327
    .local v1, "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getEncoded()[B

    move-result-object v2

    .line 330
    .local v2, "key":[B
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->shouldTryWrongPKCS12()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 332
    const/4 v3, 0x2

    new-array v2, v3, [B

    .line 335
    :cond_22
    invoke-virtual {v0}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v3

    invoke-virtual {v0}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 337
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getIvSize()I

    move-result v3

    if-eqz v3, :cond_6d

    .line 339
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getKeySize()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getIvSize()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(II)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    .line 343
    .local v3, "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    nop

    .line 344
    invoke-static {v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->getParameterSpecFromPBEParameterSpec(Ljavax/crypto/spec/PBEParameterSpec;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v4

    .line 345
    .local v4, "parameterSpecFromPBEParameterSpec":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getType()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_52

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getType()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_6c

    :cond_52
    instance-of v5, v4, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v5, :cond_6c

    .line 347
    move-object v5, v3

    check-cast v5, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 348
    .local v5, "parametersWithIV":Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;
    move-object v6, v4

    check-cast v6, Ljavax/crypto/spec/IvParameterSpec;

    .line 350
    .local v6, "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v7, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 351
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v8

    check-cast v8, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .line 352
    invoke-virtual {v6}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    move-object v3, v7

    .line 355
    .end local v4    # "parameterSpecFromPBEParameterSpec":Ljava/security/spec/AlgorithmParameterSpec;
    .end local v5    # "parametersWithIV":Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;
    .end local v6    # "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    :cond_6c
    goto :goto_75

    .line 358
    .end local v3    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_6d
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getKeySize()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    .line 361
    .restart local v3    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :goto_75
    const-string v4, "DES"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9c

    .line 363
    instance-of v4, v3, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v4, :cond_92

    .line 365
    move-object v4, v3

    check-cast v4, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .line 367
    .local v4, "kParam":Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    .line 368
    .end local v4    # "kParam":Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    goto :goto_9c

    .line 371
    :cond_92
    move-object v4, v3

    check-cast v4, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .line 373
    .restart local v4    # "kParam":Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    .line 377
    .end local v4    # "kParam":Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    :cond_9c
    :goto_9c
    return-object v3

    .line 322
    .end local v0    # "pbeParam":Ljavax/crypto/spec/PBEParameterSpec;
    .end local v1    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    .end local v2    # "key":[B
    .end local v3    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_9d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Need a PBEParameter spec with a PBE key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist makePBEParameters(Ljavax/crypto/spec/PBEKeySpec;IIII)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .registers 10
    .param p0, "keySpec"    # Ljavax/crypto/spec/PBEKeySpec;
    .param p1, "type"    # I
    .param p2, "hash"    # I
    .param p3, "keySize"    # I
    .param p4, "ivSize"    # I

    .line 446
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object v0

    .line 450
    .local v0, "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->convertPassword(ILjavax/crypto/spec/PBEKeySpec;)[B

    move-result-object v1

    .line 452
    .local v1, "key":[B
    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v2

    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 454
    if-eqz p4, :cond_1a

    .line 456
    invoke-virtual {v0, p3, p4}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(II)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    .local v2, "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto :goto_1e

    .line 460
    .end local v2    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_1a
    invoke-virtual {v0, p3}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    .line 463
    .restart local v2    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :goto_1e
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1f
    array-length v4, v1

    if-eq v3, v4, :cond_28

    .line 465
    const/4 v4, 0x0

    aput-byte v4, v1, v3

    .line 463
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 468
    .end local v3    # "i":I
    :cond_28
    return-object v2
.end method

.method public static blacklist makePBEParameters([BIIIILjava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .registers 21
    .param p0, "pbeKey"    # [B
    .param p1, "scheme"    # I
    .param p2, "digest"    # I
    .param p3, "keySize"    # I
    .param p4, "ivSize"    # I
    .param p5, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p6, "targetAlgorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 251
    move v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p5

    if-eqz v3, :cond_7a

    instance-of v4, v3, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v4, :cond_7a

    .line 256
    move-object v4, v3

    check-cast v4, Ljavax/crypto/spec/PBEParameterSpec;

    .line 257
    .local v4, "pbeParam":Ljavax/crypto/spec/PBEParameterSpec;
    invoke-static/range {p1 .. p2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object v5

    .line 258
    .local v5, "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    move-object v6, p0

    .line 266
    .local v6, "key":[B
    invoke-virtual {v4}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v7

    invoke-virtual {v4}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 268
    if-eqz v2, :cond_4c

    .line 270
    invoke-virtual {v5, v1, v2}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(II)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v7

    .line 274
    .local v7, "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    nop

    .line 275
    invoke-static {v4}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->getParameterSpecFromPBEParameterSpec(Ljavax/crypto/spec/PBEParameterSpec;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v8

    .line 276
    .local v8, "parameterSpecFromPBEParameterSpec":Ljava/security/spec/AlgorithmParameterSpec;
    const/4 v9, 0x1

    if-eq v0, v9, :cond_31

    const/4 v9, 0x5

    if-ne v0, v9, :cond_4b

    :cond_31
    instance-of v9, v8, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v9, :cond_4b

    .line 278
    move-object v9, v7

    check-cast v9, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 279
    .local v9, "parametersWithIV":Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;
    move-object v10, v8

    check-cast v10, Ljavax/crypto/spec/IvParameterSpec;

    .line 281
    .local v10, "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v11, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 282
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v12

    check-cast v12, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .line 283
    invoke-virtual {v10}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    move-object v7, v11

    .line 286
    .end local v8    # "parameterSpecFromPBEParameterSpec":Ljava/security/spec/AlgorithmParameterSpec;
    .end local v9    # "parametersWithIV":Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;
    .end local v10    # "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    :cond_4b
    goto :goto_50

    .line 289
    .end local v7    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_4c
    invoke-virtual {v5, v1}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v7

    .line 292
    .restart local v7    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :goto_50
    const-string v8, "DES"

    move-object/from16 v9, p6

    invoke-virtual {v9, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_79

    .line 294
    instance-of v8, v7, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v8, :cond_6f

    .line 296
    move-object v8, v7

    check-cast v8, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v8

    check-cast v8, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .line 298
    .local v8, "kParam":Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    .line 299
    .end local v8    # "kParam":Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    goto :goto_79

    .line 302
    :cond_6f
    move-object v8, v7

    check-cast v8, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .line 304
    .restart local v8    # "kParam":Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    .line 308
    .end local v8    # "kParam":Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    :cond_79
    :goto_79
    return-object v7

    .line 251
    .end local v4    # "pbeParam":Ljavax/crypto/spec/PBEParameterSpec;
    .end local v5    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    .end local v6    # "key":[B
    .end local v7    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_7a
    move-object/from16 v9, p6

    .line 253
    new-instance v4, Ljava/security/InvalidAlgorithmParameterException;

    const-string v5, "Need a PBEParameter spec with a PBE key."

    invoke-direct {v4, v5}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
