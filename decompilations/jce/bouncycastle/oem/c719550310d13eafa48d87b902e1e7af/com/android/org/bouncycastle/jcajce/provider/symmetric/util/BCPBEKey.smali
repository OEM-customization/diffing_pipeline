.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
.super Ljava/lang/Object;
.source "BCPBEKey.java"

# interfaces
.implements Ljavax/crypto/interfaces/PBEKey;


# instance fields
.field algorithm:Ljava/lang/String;

.field digest:I

.field ivSize:I

.field keySize:I

.field oid:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field param:Lcom/android/org/bouncycastle/crypto/CipherParameters;

.field pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

.field tryWrong:Z

.field type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;IIIILjavax/crypto/spec/PBEKeySpec;Lcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 10
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p3, "type"    # I
    .param p4, "digest"    # I
    .param p5, "keySize"    # I
    .param p6, "ivSize"    # I
    .param p7, "pbeKeySpec"    # Ljavax/crypto/spec/PBEKeySpec;
    .param p8, "param"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->tryWrong:Z

    .line 38
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->algorithm:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->oid:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 40
    iput p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->type:I

    .line 41
    iput p4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->digest:I

    .line 42
    iput p5, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->keySize:I

    .line 43
    iput p6, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->ivSize:I

    .line 44
    iput-object p7, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

    .line 45
    iput-object p8, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->param:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    .line 46
    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method getDigest()I
    .registers 2

    .prologue
    .line 99
    iget v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->digest:I

    return v0
.end method

.method public getEncoded()[B
    .registers 4

    .prologue
    .line 60
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->param:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    if-eqz v1, :cond_1e

    .line 64
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->param:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    instance-of v1, v1, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v1, :cond_19

    .line 66
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->param:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    check-cast v1, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .line 73
    .local v0, "kParam":Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    :goto_14
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    return-object v1

    .line 70
    .end local v0    # "kParam":Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    :cond_19
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->param:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .restart local v0    # "kParam":Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    goto :goto_14

    .line 77
    .end local v0    # "kParam":Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    :cond_1e
    iget v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2e

    .line 79
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS12PasswordToBytes([C)[B

    move-result-object v1

    return-object v1

    .line 81
    :cond_2e
    iget v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3e

    .line 83
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToUTF8Bytes([C)[B

    move-result-object v1

    return-object v1

    .line 87
    :cond_3e
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToBytes([C)[B

    move-result-object v1

    return-object v1
.end method

.method public getFormat()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    const-string/jumbo v0, "RAW"

    return-object v0
.end method

.method public getIterationCount()I
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result v0

    return v0
.end method

.method public getIvSize()I
    .registers 2

    .prologue
    .line 109
    iget v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->ivSize:I

    return v0
.end method

.method getKeySize()I
    .registers 2

    .prologue
    .line 104
    iget v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->keySize:I

    return v0
.end method

.method public getOID()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->oid:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getParam()Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->param:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    return-object v0
.end method

.method public getPassword()[C
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v0

    return-object v0
.end method

.method public getPbeKeySpec()Ljavax/crypto/spec/PBEKeySpec;
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

    return-object v0
.end method

.method public getSalt()[B
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v0

    return-object v0
.end method

.method getType()I
    .registers 2

    .prologue
    .line 94
    iget v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->type:I

    return v0
.end method

.method public setTryWrongPKCS12Zero(Z)V
    .registers 2
    .param p1, "tryWrong"    # Z

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->tryWrong:Z

    .line 149
    return-void
.end method

.method shouldTryWrongPKCS12()Z
    .registers 2

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->tryWrong:Z

    return v0
.end method
