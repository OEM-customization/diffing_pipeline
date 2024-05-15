.class public abstract Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;
.super Ljavax/crypto/CipherSpi;
.source "BaseCipherSpi.java"


# instance fields
.field private availableSpecs:[Ljava/lang/Class;

.field protected engineParams:Ljava/security/AlgorithmParameters;

.field private final helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

.field private iv:[B

.field private ivSize:I

.field protected wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;


# direct methods
.method protected constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 59
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    .line 42
    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 43
    const-class v1, Ljavax/crypto/spec/PBEParameterSpec;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 40
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;->availableSpecs:[Ljava/lang/Class;

    .line 50
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    .line 52
    iput-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    .line 54
    iput-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;->wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;

    .line 61
    return-void
.end method


# virtual methods
.method protected final createParametersInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;
    .registers 3
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-interface {v0, p1}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createAlgorithmParameters(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    return-object v0
.end method

.method protected engineGetBlockSize()I
    .registers 2

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method protected engineGetIV()[B
    .registers 2

    .prologue
    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineGetKeySize(Ljava/security/Key;)I
    .registers 3
    .param p1, "key"    # Ljava/security/Key;

    .prologue
    .line 76
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method protected engineGetOutputSize(I)I
    .registers 3
    .param p1, "inputLen"    # I

    .prologue
    .line 82
    const/4 v0, -0x1

    return v0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .registers 2

    .prologue
    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineSetMode(Ljava/lang/String;)V
    .registers 5
    .param p1, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 100
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "can\'t support mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSetPadding(Ljava/lang/String;)V
    .registers 5
    .param p1, "padding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 107
    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Padding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " unknown."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .registers 19
    .param p1, "wrappedKey"    # [B
    .param p2, "wrappedKeyAlgorithm"    # Ljava/lang/String;
    .param p3, "wrappedKeyType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 146
    :try_start_0
    iget-object v12, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;->wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;

    if-nez v12, :cond_1b

    .line 148
    move-object/from16 v0, p1

    array-length v12, v0

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v13, v12}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;->engineDoFinal([BII)[B
    :try_end_d
    .catch Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_d} :catch_3d
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_d} :catch_33
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_d} :catch_28

    move-result-object v8

    .line 174
    .local v8, "encoded":[B
    :goto_e
    const/4 v12, 0x3

    move/from16 v0, p3

    if-ne v0, v12, :cond_48

    .line 176
    new-instance v12, Ljavax/crypto/spec/SecretKeySpec;

    move-object/from16 v0, p2

    invoke-direct {v12, v8, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v12

    .line 152
    .end local v8    # "encoded":[B
    :cond_1b
    :try_start_1b
    iget-object v12, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;->wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;

    move-object/from16 v0, p1

    array-length v13, v0

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-interface {v12, v0, v14, v13}, Lcom/android/org/bouncycastle/crypto/Wrapper;->unwrap([BII)[B
    :try_end_26
    .catch Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException; {:try_start_1b .. :try_end_26} :catch_3d
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1b .. :try_end_26} :catch_33
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1b .. :try_end_26} :catch_28

    move-result-object v8

    .restart local v8    # "encoded":[B
    goto :goto_e

    .line 170
    .end local v8    # "encoded":[B
    :catch_28
    move-exception v7

    .line 171
    .local v7, "e2":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v12, Ljava/security/InvalidKeyException;

    invoke-virtual {v7}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 160
    .end local v7    # "e2":Ljavax/crypto/IllegalBlockSizeException;
    :catch_33
    move-exception v6

    .line 161
    .local v6, "e":Ljavax/crypto/BadPaddingException;
    new-instance v12, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$1;

    const-string/jumbo v13, "unable to unwrap"

    invoke-direct {v12, p0, v13, v6}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$1;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;Ljava/lang/String;Ljavax/crypto/BadPaddingException;)V

    throw v12

    .line 156
    .end local v6    # "e":Ljavax/crypto/BadPaddingException;
    :catch_3d
    move-exception v1

    .line 157
    .local v1, "e":Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
    new-instance v12, Ljava/security/InvalidKeyException;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 178
    .end local v1    # "e":Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
    .restart local v8    # "encoded":[B
    :cond_48
    const-string/jumbo v12, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_96

    const/4 v12, 0x2

    move/from16 v0, p3

    if-ne v0, v12, :cond_96

    .line 186
    :try_start_58
    invoke-static {v8}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v9

    .line 188
    .local v9, "in":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    invoke-static {v9}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->getPrivateKey(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    move-result-object v11

    .line 190
    .local v11, "privKey":Ljava/security/PrivateKey;
    if-eqz v11, :cond_63

    .line 192
    return-object v11

    .line 196
    :cond_63
    new-instance v12, Ljava/security/InvalidKeyException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "algorithm "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " not supported"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_8c} :catch_8c

    .line 200
    .end local v9    # "in":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .end local v11    # "privKey":Ljava/security/PrivateKey;
    :catch_8c
    move-exception v2

    .line 201
    .local v2, "e":Ljava/lang/Exception;
    new-instance v12, Ljava/security/InvalidKeyException;

    const-string/jumbo v13, "Invalid key encoding."

    invoke-direct {v12, v13}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 208
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_96
    :try_start_96
    iget-object v12, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    move-object/from16 v0, p2

    invoke-interface {v12, v0}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v10

    .line 210
    .local v10, "kf":Ljava/security/KeyFactory;
    const/4 v12, 0x1

    move/from16 v0, p3

    if-ne v0, v12, :cond_ad

    .line 212
    new-instance v12, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v12, v8}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v10, v12}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v12

    return-object v12

    .line 214
    :cond_ad
    const/4 v12, 0x2

    move/from16 v0, p3

    if-ne v0, v12, :cond_119

    .line 216
    new-instance v12, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v12, v8}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v10, v12}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_ba
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_96 .. :try_end_ba} :catch_fa
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_96 .. :try_end_ba} :catch_db
    .catch Ljava/security/NoSuchProviderException; {:try_start_96 .. :try_end_ba} :catch_bc

    move-result-object v12

    return-object v12

    .line 228
    .end local v10    # "kf":Ljava/security/KeyFactory;
    :catch_bc
    move-exception v4

    .line 229
    .local v4, "e":Ljava/security/NoSuchProviderException;
    new-instance v12, Ljava/security/InvalidKeyException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Unknown key type "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Ljava/security/NoSuchProviderException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 224
    .end local v4    # "e":Ljava/security/NoSuchProviderException;
    :catch_db
    move-exception v5

    .line 225
    .local v5, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v12, Ljava/security/InvalidKeyException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Unknown key type "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Ljava/security/spec/InvalidKeySpecException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 220
    .end local v5    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_fa
    move-exception v3

    .line 221
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v12, Ljava/security/InvalidKeyException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Unknown key type "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 232
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v10    # "kf":Ljava/security/KeyFactory;
    :cond_119
    new-instance v12, Ljava/security/InvalidKeyException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Unknown key type "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v12
.end method

.method protected engineWrap(Ljava/security/Key;)[B
    .registers 7
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    .line 115
    .local v1, "encoded":[B
    if-nez v1, :cond_f

    .line 117
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string/jumbo v3, "Cannot wrap key, null encoding."

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 122
    :cond_f
    :try_start_f
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;->wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;

    if-nez v2, :cond_1a

    .line 124
    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;->engineDoFinal([BII)[B

    move-result-object v2

    return-object v2

    .line 128
    :cond_1a
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;->wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;

    array-length v3, v1

    const/4 v4, 0x0

    invoke-interface {v2, v1, v4, v3}, Lcom/android/org/bouncycastle/crypto/Wrapper;->wrap([BII)[B
    :try_end_21
    .catch Ljavax/crypto/BadPaddingException; {:try_start_f .. :try_end_21} :catch_23

    move-result-object v2

    return-object v2

    .line 132
    :catch_23
    move-exception v0

    .line 133
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    new-instance v2, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
