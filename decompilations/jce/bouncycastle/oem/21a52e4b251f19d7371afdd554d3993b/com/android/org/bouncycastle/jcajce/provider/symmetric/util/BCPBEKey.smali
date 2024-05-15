.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
.super Ljava/lang/Object;
.source "BCPBEKey.java"

# interfaces
.implements Ljavax/crypto/interfaces/PBEKey;


# instance fields
.field blacklist algorithm:Ljava/lang/String;

.field blacklist digest:I

.field blacklist ivSize:I

.field blacklist keySize:I

.field blacklist oid:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field blacklist param:Lcom/android/org/bouncycastle/crypto/CipherParameters;

.field blacklist pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

.field blacklist tryWrong:Z

.field blacklist type:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;IIIILjavax/crypto/spec/PBEKeySpec;Lcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 10
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p3, "type"    # I
    .param p4, "digest"    # I
    .param p5, "keySize"    # I
    .param p6, "ivSize"    # I
    .param p7, "pbeKeySpec"    # Ljavax/crypto/spec/PBEKeySpec;
    .param p8, "param"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->tryWrong:Z

    .line 44
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->algorithm:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->oid:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 46
    iput p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->type:I

    .line 47
    iput p4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->digest:I

    .line 48
    iput p5, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->keySize:I

    .line 49
    iput p6, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->ivSize:I

    .line 50
    iput-object p7, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

    .line 51
    iput-object p8, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->param:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    .line 52
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/security/spec/KeySpec;Lcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 5
    .param p1, "algName"    # Ljava/lang/String;
    .param p2, "pbeSpec"    # Ljava/security/spec/KeySpec;
    .param p3, "param"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->tryWrong:Z

    .line 57
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->algorithm:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->param:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    .line 59
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method blacklist getDigest()I
    .registers 2

    .line 112
    iget v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->digest:I

    return v0
.end method

.method public whitelist core-platform-api test-api getEncoded()[B
    .registers 3

    .line 73
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->param:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    if-eqz v0, :cond_18

    .line 77
    instance-of v1, v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v1, :cond_11

    .line 79
    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .local v0, "kParam":Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    goto :goto_13

    .line 83
    .end local v0    # "kParam":Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    :cond_11
    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .line 86
    .restart local v0    # "kParam":Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    :goto_13
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    return-object v1

    .line 90
    .end local v0    # "kParam":Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    :cond_18
    iget v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_28

    .line 92
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS12PasswordToBytes([C)[B

    move-result-object v0

    return-object v0

    .line 94
    :cond_28
    const/4 v1, 0x5

    if-ne v0, v1, :cond_36

    .line 96
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToUTF8Bytes([C)[B

    move-result-object v0

    return-object v0

    .line 100
    :cond_36
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToBytes([C)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getFormat()Ljava/lang/String;
    .registers 2

    .line 68
    const-string v0, "RAW"

    return-object v0
.end method

.method public whitelist core-platform-api test-api getIterationCount()I
    .registers 2

    .line 151
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result v0

    return v0
.end method

.method public blacklist getIvSize()I
    .registers 2

    .line 122
    iget v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->ivSize:I

    return v0
.end method

.method blacklist getKeySize()I
    .registers 2

    .line 117
    iget v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->keySize:I

    return v0
.end method

.method public blacklist getOID()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 2

    .line 156
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->oid:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public blacklist getParam()Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->param:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getPassword()[C
    .registers 2

    .line 135
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getSalt()[B
    .registers 2

    .line 143
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v0

    return-object v0
.end method

.method blacklist getType()I
    .registers 2

    .line 107
    iget v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->type:I

    return v0
.end method

.method public blacklist setTryWrongPKCS12Zero(Z)V
    .registers 2
    .param p1, "tryWrong"    # Z

    .line 161
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->tryWrong:Z

    .line 162
    return-void
.end method

.method blacklist shouldTryWrongPKCS12()Z
    .registers 2

    .line 166
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->tryWrong:Z

    return v0
.end method
