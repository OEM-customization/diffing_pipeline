.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;
.super Ljavax/crypto/MacSpi;
.source "BaseMac.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE;


# static fields
.field private static final gcmSpecClass:Ljava/lang/Class;


# instance fields
.field private keySize:I

.field private macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

.field private pbeHash:I

.field private scheme:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const-string/jumbo v0, "javax.crypto.spec.GCMParameterSpec"

    invoke-static {v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->lookup(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->gcmSpecClass:Ljava/lang/Class;

    .line 35
    return-void
.end method

.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/Mac;)V
    .registers 3
    .param p1, "macEngine"    # Lcom/android/org/bouncycastle/crypto/Mac;

    .prologue
    .line 46
    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    .line 42
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->scheme:I

    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->pbeHash:I

    .line 44
    const/16 v0, 0xa0

    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->keySize:I

    .line 49
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    .line 50
    return-void
.end method

.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/Mac;III)V
    .registers 6
    .param p1, "macEngine"    # Lcom/android/org/bouncycastle/crypto/Mac;
    .param p2, "scheme"    # I
    .param p3, "pbeHash"    # I
    .param p4, "keySize"    # I

    .prologue
    .line 52
    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    .line 42
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->scheme:I

    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->pbeHash:I

    .line 44
    const/16 v0, 0xa0

    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->keySize:I

    .line 58
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    .line 59
    iput p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->scheme:I

    .line 60
    iput p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->pbeHash:I

    .line 61
    iput p4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->keySize:I

    .line 62
    return-void
.end method

.method private static copyMap(Ljava/util/Map;)Ljava/util/Hashtable;
    .registers 5
    .param p0, "paramsMap"    # Ljava/util/Map;

    .prologue
    .line 280
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 282
    .local v2, "newTable":Ljava/util/Hashtable;
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 283
    .local v1, "keys":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 285
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 286
    .local v0, "key":Ljava/lang/Object;
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 289
    .end local v0    # "key":Ljava/lang/Object;
    :cond_1f
    return-object v2
.end method

.method private static lookup(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 296
    :try_start_0
    const-class v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    .line 298
    .local v0, "def":Ljava/lang/Class;
    return-object v0

    .line 301
    .end local v0    # "def":Ljava/lang/Class;
    :catch_b
    move-exception v1

    .line 302
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method protected engineDoFinal()[B
    .registers 4

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->engineGetMacLength()I

    move-result v1

    new-array v0, v1, [B

    .line 273
    .local v0, "out":[B
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/org/bouncycastle/crypto/Mac;->doFinal([BI)I

    .line 275
    return-object v0
.end method

.method protected engineGetMacLength()I
    .registers 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v0

    return v0
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 18
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 71
    if-nez p1, :cond_b

    .line 73
    new-instance v12, Ljava/security/InvalidKeyException;

    const-string/jumbo v13, "key is null"

    invoke-direct {v12, v13}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 76
    :cond_b
    move-object/from16 v0, p1

    instance-of v12, v0, Lcom/android/org/bouncycastle/jcajce/PKCS12Key;

    if-eqz v12, :cond_101

    .line 83
    :try_start_11
    move-object/from16 v0, p1

    check-cast v0, Ljavax/crypto/SecretKey;

    move-object v6, v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_91

    .line 92
    .local v6, "k":Ljavax/crypto/SecretKey;
    :try_start_16
    move-object/from16 v0, p2

    check-cast v0, Ljavax/crypto/spec/PBEParameterSpec;

    move-object v10, v0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1b} :catch_9b

    .line 99
    .local v10, "pbeSpec":Ljavax/crypto/spec/PBEParameterSpec;
    instance-of v12, v6, Ljavax/crypto/interfaces/PBEKey;

    if-eqz v12, :cond_34

    if-nez v10, :cond_34

    .line 101
    new-instance v10, Ljavax/crypto/spec/PBEParameterSpec;

    .end local v10    # "pbeSpec":Ljavax/crypto/spec/PBEParameterSpec;
    move-object v12, v6

    check-cast v12, Ljavax/crypto/interfaces/PBEKey;

    invoke-interface {v12}, Ljavax/crypto/interfaces/PBEKey;->getSalt()[B

    move-result-object v13

    move-object v12, v6

    check-cast v12, Ljavax/crypto/interfaces/PBEKey;

    invoke-interface {v12}, Ljavax/crypto/interfaces/PBEKey;->getIterationCount()I

    move-result v12

    invoke-direct {v10, v13, v12}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 104
    .restart local v10    # "pbeSpec":Ljavax/crypto/spec/PBEParameterSpec;
    :cond_34
    const/4 v2, 0x1

    .line 105
    .local v2, "digest":I
    const/16 v8, 0xa0

    .line 114
    .local v8, "keySize":I
    iget-object v12, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    instance-of v12, v12, Lcom/android/org/bouncycastle/crypto/macs/HMac;

    if-eqz v12, :cond_5e

    .line 117
    iget-object v12, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {v12}, Lcom/android/org/bouncycastle/crypto/Mac;->getAlgorithmName()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "SHA-1"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5e

    .line 119
    iget-object v12, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {v12}, Lcom/android/org/bouncycastle/crypto/Mac;->getAlgorithmName()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "SHA-224"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a5

    .line 121
    const/4 v2, 0x7

    .line 122
    const/16 v8, 0xe0

    .line 153
    :cond_5e
    :goto_5e
    const/4 v12, 0x2

    invoke-static {v6, v12, v2, v8, v10}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEMacParameters(Ljavax/crypto/SecretKey;IIILjavax/crypto/spec/PBEParameterSpec;)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v9

    .line 182
    .end local v2    # "digest":I
    .end local v6    # "k":Ljavax/crypto/SecretKey;
    .end local v8    # "keySize":I
    .end local v10    # "pbeSpec":Ljavax/crypto/spec/PBEParameterSpec;
    .local v9, "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :goto_63
    instance-of v12, v9, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v12, :cond_161

    move-object v12, v9

    .line 184
    check-cast v12, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v12}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v7

    check-cast v7, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .line 191
    .local v7, "keyParam":Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    :goto_70
    move-object/from16 v0, p2

    instance-of v12, v0, Lcom/android/org/bouncycastle/jcajce/spec/AEADParameterSpec;

    if-eqz v12, :cond_166

    move-object/from16 v1, p2

    .line 193
    check-cast v1, Lcom/android/org/bouncycastle/jcajce/spec/AEADParameterSpec;

    .line 195
    .local v1, "aeadSpec":Lcom/android/org/bouncycastle/jcajce/spec/AEADParameterSpec;
    new-instance v9, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;

    .end local v9    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jcajce/spec/AEADParameterSpec;->getMacSizeInBits()I

    move-result v12

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jcajce/spec/AEADParameterSpec;->getNonce()[B

    move-result-object v13

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jcajce/spec/AEADParameterSpec;->getAssociatedData()[B

    move-result-object v14

    invoke-direct {v9, v7, v12, v13, v14}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;-><init>(Lcom/android/org/bouncycastle/crypto/params/KeyParameter;I[B[B)V

    .line 237
    .end local v1    # "aeadSpec":Lcom/android/org/bouncycastle/jcajce/spec/AEADParameterSpec;
    .end local p2    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local v9    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_8b
    :goto_8b
    :try_start_8b
    iget-object v12, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {v12, v9}, Lcom/android/org/bouncycastle/crypto/Mac;->init(Lcom/android/org/bouncycastle/crypto/CipherParameters;)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_90} :catch_201

    .line 243
    return-void

    .line 86
    .end local v7    # "keyParam":Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    .end local v9    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local p2    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    :catch_91
    move-exception v3

    .line 87
    .local v3, "e":Ljava/lang/Exception;
    new-instance v12, Ljava/security/InvalidKeyException;

    const-string/jumbo v13, "PKCS12 requires a SecretKey/PBEKey"

    invoke-direct {v12, v13}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 95
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v6    # "k":Ljavax/crypto/SecretKey;
    :catch_9b
    move-exception v3

    .line 96
    .restart local v3    # "e":Ljava/lang/Exception;
    new-instance v12, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v13, "PKCS12 requires a PBEParameterSpec"

    invoke-direct {v12, v13}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 124
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "digest":I
    .restart local v8    # "keySize":I
    .restart local v10    # "pbeSpec":Ljavax/crypto/spec/PBEParameterSpec;
    :cond_a5
    iget-object v12, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {v12}, Lcom/android/org/bouncycastle/crypto/Mac;->getAlgorithmName()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "SHA-256"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b8

    .line 126
    const/4 v2, 0x4

    .line 127
    const/16 v8, 0x100

    goto :goto_5e

    .line 129
    :cond_b8
    iget-object v12, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {v12}, Lcom/android/org/bouncycastle/crypto/Mac;->getAlgorithmName()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "SHA-384"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_cc

    .line 131
    const/16 v2, 0x8

    .line 132
    const/16 v8, 0x180

    goto :goto_5e

    .line 134
    :cond_cc
    iget-object v12, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {v12}, Lcom/android/org/bouncycastle/crypto/Mac;->getAlgorithmName()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "SHA-512"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_e1

    .line 136
    const/16 v2, 0x9

    .line 137
    const/16 v8, 0x200

    goto/16 :goto_5e

    .line 148
    :cond_e1
    new-instance v12, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "no PKCS12 mapping for HMAC: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {v14}, Lcom/android/org/bouncycastle/crypto/Mac;->getAlgorithmName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 155
    .end local v2    # "digest":I
    .end local v6    # "k":Ljavax/crypto/SecretKey;
    .end local v8    # "keySize":I
    .end local v10    # "pbeSpec":Ljavax/crypto/spec/PBEParameterSpec;
    :cond_101
    move-object/from16 v0, p1

    instance-of v12, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    if-eqz v12, :cond_12e

    move-object/from16 v5, p1

    .line 157
    check-cast v5, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    .line 159
    .local v5, "k":Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v12

    if-eqz v12, :cond_117

    .line 161
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v9

    .restart local v9    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto/16 :goto_63

    .line 163
    .end local v9    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_117
    move-object/from16 v0, p2

    instance-of v12, v0, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v12, :cond_125

    .line 165
    move-object/from16 v0, p2

    invoke-static {v5, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEMacParameters(Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v9

    .restart local v9    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto/16 :goto_63

    .line 169
    .end local v9    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_125
    new-instance v12, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v13, "PBE requires PBE parameters to be set."

    invoke-direct {v12, v13}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 174
    .end local v5    # "k":Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    :cond_12e
    move-object/from16 v0, p2

    instance-of v12, v0, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v12, :cond_156

    .line 176
    new-instance v12, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "inappropriate parameter type: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 178
    :cond_156
    new-instance v9, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    invoke-interface/range {p1 .. p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v12

    invoke-direct {v9, v12}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .restart local v9    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto/16 :goto_63

    :cond_161
    move-object v7, v9

    .line 188
    check-cast v7, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .restart local v7    # "keyParam":Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    goto/16 :goto_70

    .line 197
    :cond_166
    move-object/from16 v0, p2

    instance-of v12, v0, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v12, :cond_179

    .line 199
    new-instance v9, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    .end local v9    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    check-cast p2, Ljavax/crypto/spec/IvParameterSpec;

    .end local p2    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-virtual/range {p2 .. p2}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v12

    invoke-direct {v9, v7, v12}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    .restart local v9    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto/16 :goto_8b

    .line 212
    .restart local p2    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_179
    if-nez p2, :cond_186

    .line 214
    new-instance v9, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .end local v9    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    invoke-interface/range {p1 .. p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v12

    invoke-direct {v9, v12}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .restart local v9    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto/16 :goto_8b

    .line 216
    :cond_186
    sget-object v12, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->gcmSpecClass:Ljava/lang/Class;

    if-eqz v12, :cond_1d9

    sget-object v12, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->gcmSpecClass:Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_1d9

    .line 220
    :try_start_196
    sget-object v12, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->gcmSpecClass:Ljava/lang/Class;

    const-string/jumbo v13, "getTLen"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Class;

    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 221
    .local v11, "tLen":Ljava/lang/reflect/Method;
    sget-object v12, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->gcmSpecClass:Ljava/lang/Class;

    const-string/jumbo v13, "getIV"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Class;

    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 223
    .local v4, "iv":Ljava/lang/reflect/Method;
    new-instance v9, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;

    .end local v9    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-virtual {v11, v0, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    invoke-direct {v9, v7, v13, v12}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;-><init>(Lcom/android/org/bouncycastle/crypto/params/KeyParameter;I[B)V
    :try_end_1cd
    .catch Ljava/lang/Exception; {:try_start_196 .. :try_end_1cd} :catch_1cf

    .restart local v9    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto/16 :goto_8b

    .line 226
    .end local v4    # "iv":Ljava/lang/reflect/Method;
    .end local v9    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .end local v11    # "tLen":Ljava/lang/reflect/Method;
    :catch_1cf
    move-exception v3

    .line 227
    .restart local v3    # "e":Ljava/lang/Exception;
    new-instance v12, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v13, "Cannot process GCMParameterSpec."

    invoke-direct {v12, v13}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 230
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v9    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_1d9
    move-object/from16 v0, p2

    instance-of v12, v0, Ljavax/crypto/spec/PBEParameterSpec;

    if-nez v12, :cond_8b

    .line 232
    new-instance v12, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "unknown parameter type: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 240
    .end local p2    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    :catch_201
    move-exception v3

    .line 241
    .restart local v3    # "e":Ljava/lang/Exception;
    new-instance v12, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "cannot initialize MAC: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v12
.end method

.method protected engineReset()V
    .registers 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/Mac;->reset()V

    .line 253
    return-void
.end method

.method protected engineUpdate(B)V
    .registers 3
    .param p1, "input"    # B

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {v0, p1}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    .line 259
    return-void
.end method

.method protected engineUpdate([BII)V
    .registers 5
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    .line 267
    return-void
.end method
