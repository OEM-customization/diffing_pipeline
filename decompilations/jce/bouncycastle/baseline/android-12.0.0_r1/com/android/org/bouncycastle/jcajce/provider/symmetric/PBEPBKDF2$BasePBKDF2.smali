.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;
.source "PBEPBKDF2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BasePBKDF2"
.end annotation


# instance fields
.field private blacklist defaultDigest:I

.field private blacklist ivSizeInBits:I

.field private blacklist keySizeInBits:I

.field private blacklist scheme:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "scheme"    # I

    .line 171
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;-><init>(Ljava/lang/String;II)V

    .line 172
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "scheme"    # I
    .param p3, "digest"    # I

    .line 192
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;-><init>(Ljava/lang/String;IIII)V

    .line 193
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;IIII)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "scheme"    # I
    .param p3, "digest"    # I
    .param p4, "keySizeInBits"    # I
    .param p5, "ivSizeInBits"    # I

    .line 180
    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBKDF2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 182
    iput p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->scheme:I

    .line 184
    iput p4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->keySizeInBits:I

    .line 185
    iput p5, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->ivSizeInBits:I

    .line 187
    iput p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->defaultDigest:I

    .line 188
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;IIIILcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$1;)V
    .registers 7
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$1;

    .line 159
    invoke-direct/range {p0 .. p5}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;-><init>(Ljava/lang/String;IIII)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;IILcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$1;)V
    .registers 5
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$1;

    .line 159
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method private blacklist getDigestCode(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)I
    .registers 6
    .param p1, "algorithm"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 273
    # getter for: Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2;->prfCodes:Ljava/util/Map;
    invoke-static {}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2;->access$000()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 274
    .local v0, "code":Ljava/lang/Integer;
    if-eqz v0, :cond_11

    .line 276
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 279
    :cond_11
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid KeySpec: unknown PRF algorithm "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected whitelist test-api engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .registers 20
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 200
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Ljavax/crypto/spec/PBEKeySpec;

    if-eqz v2, :cond_ee

    .line 202
    move-object v2, v1

    check-cast v2, Ljavax/crypto/spec/PBEKeySpec;

    .line 206
    .local v2, "pbeSpec":Ljavax/crypto/spec/PBEKeySpec;
    invoke-virtual {v2}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v3

    if-nez v3, :cond_3d

    .line 207
    invoke-virtual {v2}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result v3

    if-nez v3, :cond_3d

    .line 208
    invoke-virtual {v2}, Ljavax/crypto/spec/PBEKeySpec;->getKeyLength()I

    move-result v3

    if-nez v3, :cond_3d

    .line 209
    invoke-virtual {v2}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_3d

    iget v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->keySizeInBits:I

    if-eqz v3, :cond_3d

    .line 211
    new-instance v12, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    iget-object v4, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->algName:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->algOid:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget v6, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->scheme:I

    iget v7, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->defaultDigest:I

    iget v8, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->keySizeInBits:I

    iget v9, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->ivSizeInBits:I

    const/4 v11, 0x0

    move-object v3, v12

    move-object v10, v2

    invoke-direct/range {v3 .. v11}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;IIIILjavax/crypto/spec/PBEKeySpec;Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    return-object v12

    .line 219
    :cond_3d
    invoke-virtual {v2}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v3

    if-eqz v3, :cond_e6

    .line 227
    invoke-virtual {v2}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result v3

    if-lez v3, :cond_cb

    .line 233
    invoke-virtual {v2}, Ljavax/crypto/spec/PBEKeySpec;->getKeyLength()I

    move-result v3

    if-lez v3, :cond_b0

    .line 239
    invoke-virtual {v2}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v3

    array-length v3, v3

    if-eqz v3, :cond_a8

    .line 244
    instance-of v3, v2, Lcom/android/org/bouncycastle/jcajce/spec/PBKDF2KeySpec;

    if-eqz v3, :cond_88

    .line 246
    move-object v12, v2

    check-cast v12, Lcom/android/org/bouncycastle/jcajce/spec/PBKDF2KeySpec;

    .line 248
    .local v12, "spec":Lcom/android/org/bouncycastle/jcajce/spec/PBKDF2KeySpec;
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/jcajce/spec/PBKDF2KeySpec;->getPrf()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->getDigestCode(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)I

    move-result v13

    .line 249
    .local v13, "digest":I
    invoke-virtual {v2}, Ljavax/crypto/spec/PBEKeySpec;->getKeyLength()I

    move-result v14

    .line 250
    .local v14, "keySize":I
    const/4 v15, -0x1

    .line 251
    .local v15, "ivSize":I
    iget v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->scheme:I

    invoke-static {v2, v3, v13, v14}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEMacParameters(Ljavax/crypto/spec/PBEKeySpec;III)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v16

    .line 253
    .local v16, "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    new-instance v17, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    iget-object v4, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->algName:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->algOid:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget v6, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->scheme:I

    move-object/from16 v3, v17

    move v7, v13

    move v8, v14

    move v9, v15

    move-object v10, v2

    move-object/from16 v11, v16

    invoke-direct/range {v3 .. v11}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;IIIILjavax/crypto/spec/PBEKeySpec;Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    return-object v17

    .line 257
    .end local v12    # "spec":Lcom/android/org/bouncycastle/jcajce/spec/PBKDF2KeySpec;
    .end local v13    # "digest":I
    .end local v14    # "keySize":I
    .end local v15    # "ivSize":I
    .end local v16    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_88
    iget v12, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->defaultDigest:I

    .line 258
    .local v12, "digest":I
    invoke-virtual {v2}, Ljavax/crypto/spec/PBEKeySpec;->getKeyLength()I

    move-result v13

    .line 259
    .local v13, "keySize":I
    const/4 v14, -0x1

    .line 260
    .local v14, "ivSize":I
    iget v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->scheme:I

    invoke-static {v2, v3, v12, v13}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEMacParameters(Ljavax/crypto/spec/PBEKeySpec;III)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v15

    .line 262
    .local v15, "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    new-instance v16, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    iget-object v4, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->algName:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->algOid:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget v6, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->scheme:I

    move-object/from16 v3, v16

    move v7, v12

    move v8, v13

    move v9, v14

    move-object v10, v2

    move-object v11, v15

    invoke-direct/range {v3 .. v11}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;IIIILjavax/crypto/spec/PBEKeySpec;Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    return-object v16

    .line 241
    .end local v12    # "digest":I
    .end local v13    # "keySize":I
    .end local v14    # "ivSize":I
    .end local v15    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_a8
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "password empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 235
    :cond_b0
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "positive key length required: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {v2}, Ljavax/crypto/spec/PBEKeySpec;->getKeyLength()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 229
    :cond_cb
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "positive iteration count required: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v2}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 224
    :cond_e6
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    const-string v4, "missing required salt"

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 266
    .end local v2    # "pbeSpec":Ljavax/crypto/spec/PBEKeySpec;
    :cond_ee
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    const-string v3, "Invalid KeySpec"

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
