.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPKCS12$AlgParams;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;
.source "PBEPKCS12.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPKCS12;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlgParams"
.end annotation


# instance fields
.field params:Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGetEncoded()[B
    .registers 5

    .prologue
    .line 32
    :try_start_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPKCS12$AlgParams;->params:Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    const-string/jumbo v2, "DER"

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getEncoded(Ljava/lang/String;)[B
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_a

    move-result-object v1

    return-object v1

    .line 35
    :catch_a
    move-exception v0

    .line 36
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Oooops! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineGetEncoded(Ljava/lang/String;)[B
    .registers 3
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPKCS12$AlgParams;->isASN1FormatString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 45
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPKCS12$AlgParams;->engineGetEncoded()[B

    move-result-object v0

    return-object v0

    .line 48
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 6
    .param p1, "paramSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .prologue
    .line 68
    instance-of v1, p1, Ljavax/crypto/spec/PBEParameterSpec;

    if-nez v1, :cond_d

    .line 70
    new-instance v1, Ljava/security/spec/InvalidParameterSpecException;

    const-string/jumbo v2, "PBEParameterSpec required to initialise a PKCS12 PBE parameters algorithm parameters object"

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    move-object v0, p1

    .line 73
    check-cast v0, Ljavax/crypto/spec/PBEParameterSpec;

    .line 75
    .local v0, "pbeSpec":Ljavax/crypto/spec/PBEParameterSpec;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    invoke-virtual {v0}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v2

    .line 76
    invoke-virtual {v0}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v3

    .line 75
    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;-><init>([BI)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPKCS12$AlgParams;->params:Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    .line 77
    return-void
.end method

.method protected engineInit([B)V
    .registers 3
    .param p1, "params"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPKCS12$AlgParams;->params:Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    .line 84
    return-void
.end method

.method protected engineInit([BLjava/lang/String;)V
    .registers 5
    .param p1, "params"    # [B
    .param p2, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-virtual {p0, p2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPKCS12$AlgParams;->isASN1FormatString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 93
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPKCS12$AlgParams;->engineInit([B)V

    .line 94
    return-void

    .line 97
    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Unknown parameters format in PKCS12 PBE parameters object"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineToString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 102
    const-string/jumbo v0, "PKCS12 PBE Parameters"

    return-object v0
.end method

.method protected localEngineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 5
    .param p1, "paramSpec"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .prologue
    .line 55
    const-class v0, Ljavax/crypto/spec/PBEParameterSpec;

    if-ne p1, v0, :cond_1a

    .line 57
    new-instance v0, Ljavax/crypto/spec/PBEParameterSpec;

    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPKCS12$AlgParams;->params:Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object v1

    .line 58
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPKCS12$AlgParams;->params:Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    .line 57
    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    return-object v0

    .line 61
    :cond_1a
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string/jumbo v1, "unknown parameter spec passed to PKCS12 PBE parameters object."

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
