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
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertPassword(ILjavax/crypto/spec/PBEKeySpec;)[B
    .registers 4
    .param p0, "type"    # I
    .param p1, "keySpec"    # Ljavax/crypto/spec/PBEKeySpec;

    .prologue
    .line 493
    const/4 v1, 0x2

    if-ne p0, v1, :cond_c

    .line 495
    invoke-virtual {p1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS12PasswordToBytes([C)[B

    move-result-object v0

    .line 505
    .local v0, "key":[B
    :goto_b
    return-object v0

    .line 497
    .end local v0    # "key":[B
    :cond_c
    const/4 v1, 0x5

    if-eq p0, v1, :cond_12

    const/4 v1, 0x4

    if-ne p0, v1, :cond_1b

    .line 499
    :cond_12
    invoke-virtual {p1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToUTF8Bytes([C)[B

    move-result-object v0

    .restart local v0    # "key":[B
    goto :goto_b

    .line 503
    .end local v0    # "key":[B
    :cond_1b
    invoke-virtual {p1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToBytes([C)[B

    move-result-object v0

    .restart local v0    # "key":[B
    goto :goto_b
.end method

.method public static getParameterSpecFromPBEParameterSpec(Ljavax/crypto/spec/PBEParameterSpec;)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 6
    .param p0, "pbeParameterSpec"    # Ljavax/crypto/spec/PBEParameterSpec;

    .prologue
    .line 478
    :try_start_0
    const-class v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 479
    const-string/jumbo v3, "javax.crypto.spec.PBEParameterSpec"

    .line 478
    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 480
    const-string/jumbo v3, "getParameterSpec"

    .line 478
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 481
    .local v1, "getParameterSpecMethod":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/spec/AlgorithmParameterSpec;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    return-object v2

    .line 482
    .end local v1    # "getParameterSpecMethod":Ljava/lang/reflect/Method;
    :catch_21
    move-exception v0

    .line 483
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    return-object v2
.end method

.method private static makePBEGenerator(II)Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    .registers 5
    .param p0, "type"    # I
    .param p1, "hash"    # I

    .prologue
    .line 75
    if-eqz p0, :cond_5

    const/4 v1, 0x4

    if-ne p0, v1, :cond_25

    .line 77
    :cond_5
    packed-switch p1, :pswitch_data_ca

    .line 95
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "PKCS5 scheme 1 only supports MD2, MD5 and SHA1."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    :pswitch_11
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;

    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getMD5()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 201
    .local v0, "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    :goto_1a
    return-object v0

    .line 91
    .end local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_1b
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;

    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 93
    .restart local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_1a

    .line 98
    .end local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    :cond_25
    const/4 v1, 0x1

    if-eq p0, v1, :cond_2b

    const/4 v1, 0x5

    if-ne p0, v1, :cond_73

    .line 100
    :cond_2b
    packed-switch p1, :pswitch_data_d2

    .line 145
    :pswitch_2e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "unknown digest scheme for PBE PKCS5S2 encryption."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    :pswitch_37
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getMD5()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 111
    .restart local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_1a

    .line 115
    .end local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_41
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 117
    .restart local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_1a

    .line 128
    .end local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_4b
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA224()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 129
    .restart local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_1a

    .line 133
    .end local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_55
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA256()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 135
    .restart local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_1a

    .line 138
    .end local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_5f
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA384()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 139
    .restart local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_1a

    .line 141
    .end local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_69
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA512()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 142
    .restart local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_1a

    .line 148
    .end local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    :cond_73
    const/4 v1, 0x2

    if-ne p0, v1, :cond_c2

    .line 150
    packed-switch p1, :pswitch_data_ea

    .line 193
    :pswitch_79
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "unknown digest scheme for PBE encryption."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 159
    :pswitch_82
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getMD5()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 161
    .restart local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_1a

    .line 164
    .end local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_8c
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 166
    .restart local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_1a

    .line 177
    .end local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_96
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA224()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 178
    .restart local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_1a

    .line 182
    .end local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_a1
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA256()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 184
    .restart local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_1a

    .line 187
    .end local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_ac
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA384()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 188
    .restart local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_1a

    .line 190
    .end local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_b7
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA512()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 191
    .restart local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_1a

    .line 198
    .end local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    :cond_c2
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;-><init>()V

    .restart local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_1a

    .line 77
    nop

    :pswitch_data_ca
    .packed-switch 0x0
        :pswitch_11
        :pswitch_1b
    .end packed-switch

    .line 100
    :pswitch_data_d2
    .packed-switch 0x0
        :pswitch_37
        :pswitch_41
        :pswitch_2e
        :pswitch_2e
        :pswitch_55
        :pswitch_2e
        :pswitch_2e
        :pswitch_4b
        :pswitch_5f
        :pswitch_69
    .end packed-switch

    .line 150
    :pswitch_data_ea
    .packed-switch 0x0
        :pswitch_82
        :pswitch_8c
        :pswitch_79
        :pswitch_79
        :pswitch_a1
        :pswitch_79
        :pswitch_79
        :pswitch_96
        :pswitch_ac
        :pswitch_b7
    .end packed-switch
.end method

.method public static makePBEMacParameters(Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .registers 8
    .param p0, "pbeKey"    # Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    .param p1, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;

    .prologue
    .line 356
    if-eqz p1, :cond_8

    instance-of v4, p1, Ljavax/crypto/spec/PBEParameterSpec;

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_11

    .line 358
    :cond_8
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Need a PBEParameter spec with a PBE key."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_11
    move-object v3, p1

    .line 361
    check-cast v3, Ljavax/crypto/spec/PBEParameterSpec;

    .line 362
    .local v3, "pbeParam":Ljavax/crypto/spec/PBEParameterSpec;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getType()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getDigest()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object v0

    .line 363
    .local v0, "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getEncoded()[B

    move-result-object v1

    .line 366
    .local v1, "key":[B
    invoke-virtual {v3}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v4

    invoke-virtual {v3}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v5

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 368
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getKeySize()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    .line 370
    .local v2, "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    return-object v2
.end method

.method public static makePBEMacParameters(Ljavax/crypto/SecretKey;IIILjavax/crypto/spec/PBEParameterSpec;)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .registers 12
    .param p0, "key"    # Ljavax/crypto/SecretKey;
    .param p1, "type"    # I
    .param p2, "hash"    # I
    .param p3, "keySize"    # I
    .param p4, "pbeSpec"    # Ljavax/crypto/spec/PBEParameterSpec;

    .prologue
    .line 450
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object v0

    .line 453
    .local v0, "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    .line 455
    .local v2, "keyBytes":[B
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v4

    invoke-virtual {p4}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v5

    invoke-virtual {p4}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v6

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 457
    invoke-virtual {v0, p3}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    .line 459
    .local v3, "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1c
    array-length v4, v2

    if-eq v1, v4, :cond_25

    .line 461
    const/4 v4, 0x0

    aput-byte v4, v2, v1

    .line 459
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 464
    :cond_25
    return-object v3
.end method

.method public static makePBEMacParameters(Ljavax/crypto/spec/PBEKeySpec;III)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .registers 10
    .param p0, "keySpec"    # Ljavax/crypto/spec/PBEKeySpec;
    .param p1, "type"    # I
    .param p2, "hash"    # I
    .param p3, "keySize"    # I

    .prologue
    .line 384
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object v0

    .line 388
    .local v0, "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->convertPassword(ILjavax/crypto/spec/PBEKeySpec;)[B

    move-result-object v2

    .line 390
    .local v2, "key":[B
    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v4

    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result v5

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 392
    invoke-virtual {v0, p3}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    .line 394
    .local v3, "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_18
    array-length v4, v2

    if-eq v1, v4, :cond_21

    .line 396
    const/4 v4, 0x0

    aput-byte v4, v2, v1

    .line 394
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 399
    :cond_21
    return-object v3
.end method

.method public static makePBEParameters(Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .registers 13
    .param p0, "pbeKey"    # Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    .param p1, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "targetAlgorithm"    # Ljava/lang/String;

    .prologue
    .line 287
    if-eqz p1, :cond_8

    instance-of v8, p1, Ljavax/crypto/spec/PBEParameterSpec;

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_11

    .line 289
    :cond_8
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "Need a PBEParameter spec with a PBE key."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_11
    move-object v7, p1

    .line 292
    check-cast v7, Ljavax/crypto/spec/PBEParameterSpec;

    .line 293
    .local v7, "pbeParam":Ljavax/crypto/spec/PBEParameterSpec;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getType()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getDigest()I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object v0

    .line 294
    .local v0, "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getEncoded()[B

    move-result-object v3

    .line 297
    .local v3, "key":[B
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->shouldTryWrongPKCS12()Z

    move-result v8

    if-eqz v8, :cond_2d

    .line 299
    const/4 v8, 0x2

    new-array v3, v8, [B

    .line 302
    :cond_2d
    invoke-virtual {v7}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v8

    invoke-virtual {v7}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v9

    invoke-virtual {v0, v3, v8, v9}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 304
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getIvSize()I

    move-result v8

    if-eqz v8, :cond_93

    .line 306
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getKeySize()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getIvSize()I

    move-result v9

    invoke-virtual {v0, v8, v9}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(II)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v4

    .line 311
    .local v4, "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    invoke-static {v7}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->getParameterSpecFromPBEParameterSpec(Ljavax/crypto/spec/PBEParameterSpec;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v5

    .line 312
    .local v5, "parameterSpecFromPBEParameterSpec":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getType()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_5c

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getType()I

    move-result v8

    const/4 v9, 0x5

    if-ne v8, v9, :cond_75

    .line 313
    :cond_5c
    instance-of v8, v5, Ljavax/crypto/spec/IvParameterSpec;

    .line 312
    if-eqz v8, :cond_75

    move-object v6, v4

    .line 314
    check-cast v6, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    .local v6, "parametersWithIV":Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;
    move-object v1, v5

    .line 316
    check-cast v1, Ljavax/crypto/spec/IvParameterSpec;

    .line 317
    .local v1, "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v4, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 318
    .end local v4    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v8

    check-cast v8, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .line 319
    invoke-virtual {v1}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v9

    .line 317
    invoke-direct {v4, v8, v9}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    .line 328
    .end local v1    # "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v5    # "parameterSpecFromPBEParameterSpec":Ljava/security/spec/AlgorithmParameterSpec;
    .end local v6    # "parametersWithIV":Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;
    .restart local v4    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_75
    :goto_75
    const-string/jumbo v8, "DES"

    invoke-virtual {p2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_92

    .line 330
    instance-of v8, v4, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v8, :cond_9c

    move-object v8, v4

    .line 332
    check-cast v8, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .line 334
    .local v2, "kParam":Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v8

    invoke-static {v8}, Lcom/android/org/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    .line 344
    .end local v2    # "kParam":Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    :cond_92
    :goto_92
    return-object v4

    .line 325
    .end local v4    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_93
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getKeySize()I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v4

    .restart local v4    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto :goto_75

    :cond_9c
    move-object v2, v4

    .line 338
    check-cast v2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .line 340
    .restart local v2    # "kParam":Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v8

    invoke-static {v8}, Lcom/android/org/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    goto :goto_92
.end method

.method public static makePBEParameters(Ljavax/crypto/spec/PBEKeySpec;IIII)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .registers 12
    .param p0, "keySpec"    # Ljavax/crypto/spec/PBEKeySpec;
    .param p1, "type"    # I
    .param p2, "hash"    # I
    .param p3, "keySize"    # I
    .param p4, "ivSize"    # I

    .prologue
    const/4 v6, 0x0

    .line 413
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object v0

    .line 417
    .local v0, "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->convertPassword(ILjavax/crypto/spec/PBEKeySpec;)[B

    move-result-object v2

    .line 419
    .local v2, "key":[B
    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v4

    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result v5

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 421
    if-eqz p4, :cond_23

    .line 423
    invoke-virtual {v0, p3, p4}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(II)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    .line 430
    .local v3, "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :goto_1a
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1b
    array-length v4, v2

    if-eq v1, v4, :cond_28

    .line 432
    aput-byte v6, v2, v1

    .line 430
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 427
    .end local v1    # "i":I
    .end local v3    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_23
    invoke-virtual {v0, p3}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    .restart local v3    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto :goto_1a

    .line 435
    .restart local v1    # "i":I
    :cond_28
    return-object v3
.end method

.method public static makePBEParameters([BIIIILjava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .registers 18
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

    .prologue
    .line 218
    if-eqz p5, :cond_a

    move-object/from16 v0, p5

    instance-of v9, v0, Ljavax/crypto/spec/PBEParameterSpec;

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_13

    .line 220
    :cond_a
    new-instance v9, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v10, "Need a PBEParameter spec with a PBE key."

    invoke-direct {v9, v10}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_13
    move-object/from16 v8, p5

    .line 223
    check-cast v8, Ljavax/crypto/spec/PBEParameterSpec;

    .line 224
    .local v8, "pbeParam":Ljavax/crypto/spec/PBEParameterSpec;
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object v1

    .line 225
    .local v1, "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    move-object v4, p0

    .line 233
    .local v4, "key":[B
    invoke-virtual {v8}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v9

    invoke-virtual {v8}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v10

    invoke-virtual {v1, p0, v9, v10}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 235
    if-eqz p4, :cond_70

    .line 237
    invoke-virtual {v1, p3, p4}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(II)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v5

    .line 242
    .local v5, "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    invoke-static {v8}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->getParameterSpecFromPBEParameterSpec(Ljavax/crypto/spec/PBEParameterSpec;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v6

    .line 243
    .local v6, "parameterSpecFromPBEParameterSpec":Ljava/security/spec/AlgorithmParameterSpec;
    const/4 v9, 0x1

    if-eq p1, v9, :cond_37

    const/4 v9, 0x5

    if-ne p1, v9, :cond_50

    .line 244
    :cond_37
    instance-of v9, v6, Ljavax/crypto/spec/IvParameterSpec;

    .line 243
    if-eqz v9, :cond_50

    move-object v7, v5

    .line 245
    check-cast v7, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    .local v7, "parametersWithIV":Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;
    move-object v2, v6

    .line 247
    check-cast v2, Ljavax/crypto/spec/IvParameterSpec;

    .line 248
    .local v2, "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v5, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 249
    .end local v5    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v9

    check-cast v9, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .line 250
    invoke-virtual {v2}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v10

    .line 248
    invoke-direct {v5, v9, v10}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    .line 259
    .end local v2    # "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v6    # "parameterSpecFromPBEParameterSpec":Ljava/security/spec/AlgorithmParameterSpec;
    .end local v7    # "parametersWithIV":Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;
    .restart local v5    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_50
    :goto_50
    const-string/jumbo v9, "DES"

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6f

    .line 261
    instance-of v9, v5, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v9, :cond_75

    move-object v9, v5

    .line 263
    check-cast v9, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .line 265
    .local v3, "kParam":Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v9

    invoke-static {v9}, Lcom/android/org/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    .line 275
    .end local v3    # "kParam":Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    :cond_6f
    :goto_6f
    return-object v5

    .line 256
    .end local v5    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_70
    invoke-virtual {v1, p3}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v5

    .restart local v5    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto :goto_50

    :cond_75
    move-object v3, v5

    .line 269
    check-cast v3, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .line 271
    .restart local v3    # "kParam":Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v9

    invoke-static {v9}, Lcom/android/org/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    goto :goto_6f
.end method
