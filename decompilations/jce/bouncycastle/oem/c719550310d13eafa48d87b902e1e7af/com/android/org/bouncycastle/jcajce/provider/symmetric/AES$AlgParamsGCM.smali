.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;
.source "AES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlgParamsGCM"
.end annotation


# instance fields
.field private gcmParams:Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 656
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGetEncoded()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 698
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method protected engineGetEncoded(Ljava/lang/String;)[B
    .registers 4
    .param p1, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 704
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->isASN1FormatString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 706
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "unknown format specified"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 709
    :cond_f
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 5
    .param p1, "paramSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .prologue
    .line 664
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/GcmSpecUtil;->isGcmSpec(Ljava/security/spec/AlgorithmParameterSpec;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 666
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/GcmSpecUtil;->extractGcmParameters(Ljava/security/spec/AlgorithmParameterSpec;)Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;

    .line 676
    .end local p1    # "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    :goto_c
    return-void

    .line 668
    .restart local p1    # "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_d
    instance-of v0, p1, Lcom/android/org/bouncycastle/jcajce/spec/AEADParameterSpec;

    if-eqz v0, :cond_28

    .line 670
    new-instance v1, Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;

    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/jcajce/spec/AEADParameterSpec;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jcajce/spec/AEADParameterSpec;->getNonce()[B

    move-result-object v0

    check-cast p1, Lcom/android/org/bouncycastle/jcajce/spec/AEADParameterSpec;

    .end local p1    # "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/spec/AEADParameterSpec;->getMacSizeInBits()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    invoke-direct {v1, v0, v2}, Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;-><init>([BI)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;

    goto :goto_c

    .line 674
    .restart local p1    # "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_28
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AlgorithmParameterSpec class not recognized: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .line 681
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;

    .line 682
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
    .line 687
    invoke-virtual {p0, p2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->isASN1FormatString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 689
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "unknown format specified"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 692
    :cond_f
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;

    .line 693
    return-void
.end method

.method protected engineToString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 714
    const-string/jumbo v0, "GCM"

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
    .line 720
    const-class v0, Ljava/security/spec/AlgorithmParameterSpec;

    if-eq p1, v0, :cond_a

    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/GcmSpecUtil;->isGcmSpec(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 722
    :cond_a
    invoke-static {}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/GcmSpecUtil;->gcmSpecExists()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 724
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/GcmSpecUtil;->extractGcmSpec(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    return-object v0

    .line 726
    :cond_1b
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/spec/AEADParameterSpec;

    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;->getNonce()[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;->getIcvLen()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/spec/AEADParameterSpec;-><init>([BI)V

    return-object v0

    .line 728
    :cond_2f
    const-class v0, Lcom/android/org/bouncycastle/jcajce/spec/AEADParameterSpec;

    if-ne p1, v0, :cond_47

    .line 730
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/spec/AEADParameterSpec;

    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;->getNonce()[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;->getIcvLen()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/spec/AEADParameterSpec;-><init>([BI)V

    return-object v0

    .line 732
    :cond_47
    const-class v0, Ljavax/crypto/spec/IvParameterSpec;

    if-ne p1, v0, :cond_57

    .line 734
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;->getNonce()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    return-object v0

    .line 737
    :cond_57
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AlgorithmParameterSpec not recognized: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
