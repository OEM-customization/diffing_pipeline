.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$AlgParamGen;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameterGenerator;
.source "DES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlgParamGen"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameterGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGenerateParameters()Ljava/security/AlgorithmParameters;
    .registers 6

    .prologue
    .line 176
    const/16 v3, 0x8

    new-array v1, v3, [B

    .line 178
    .local v1, "iv":[B
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$AlgParamGen;->random:Ljava/security/SecureRandom;

    if-nez v3, :cond_f

    .line 180
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    iput-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$AlgParamGen;->random:Ljava/security/SecureRandom;

    .line 183
    :cond_f
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$AlgParamGen;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 189
    :try_start_14
    const-string/jumbo v3, "DES"

    invoke-virtual {p0, v3}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$AlgParamGen;->createParametersInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v2

    .line 190
    .local v2, "params":Ljava/security/AlgorithmParameters;
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_23} :catch_24

    .line 197
    return-object v2

    .line 193
    .end local v2    # "params":Ljava/security/AlgorithmParameters;
    :catch_24
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 5
    .param p1, "genParamSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 171
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v1, "No supported AlgorithmParameterSpec for DES parameter generation."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
