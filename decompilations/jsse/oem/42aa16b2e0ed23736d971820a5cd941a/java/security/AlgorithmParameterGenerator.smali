.class public Ljava/security/AlgorithmParameterGenerator;
.super Ljava/lang/Object;
.source "AlgorithmParameterGenerator.java"


# instance fields
.field private greylist-max-o algorithm:Ljava/lang/String;

.field private greylist-max-o paramGenSpi:Ljava/security/AlgorithmParameterGeneratorSpi;

.field private greylist-max-o provider:Ljava/security/Provider;


# direct methods
.method protected constructor whitelist core-platform-api test-api <init>(Ljava/security/AlgorithmParameterGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .registers 4
    .param p1, "paramGenSpi"    # Ljava/security/AlgorithmParameterGeneratorSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "algorithm"    # Ljava/lang/String;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Ljava/security/AlgorithmParameterGenerator;->paramGenSpi:Ljava/security/AlgorithmParameterGeneratorSpi;

    .line 137
    iput-object p2, p0, Ljava/security/AlgorithmParameterGenerator;->provider:Ljava/security/Provider;

    .line 138
    iput-object p3, p0, Ljava/security/AlgorithmParameterGenerator;->algorithm:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public static whitelist core-platform-api test-api getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameterGenerator;
    .registers 5
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 182
    :try_start_0
    const-string v0, "AlgorithmParameterGenerator"

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v0, v1}, Ljava/security/Security;->getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    .line 185
    .local v0, "objs":[Ljava/lang/Object;
    new-instance v1, Ljava/security/AlgorithmParameterGenerator;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    check-cast v2, Ljava/security/AlgorithmParameterGeneratorSpi;

    const/4 v3, 0x1

    aget-object v3, v0, v3

    check-cast v3, Ljava/security/Provider;

    invoke-direct {v1, v2, v3, p0}, Ljava/security/AlgorithmParameterGenerator;-><init>(Ljava/security/AlgorithmParameterGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_18} :catch_19

    return-object v1

    .line 189
    .end local v0    # "objs":[Ljava/lang/Object;
    :catch_19
    move-exception v0

    .line 190
    .local v0, "e":Ljava/security/NoSuchProviderException;
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist core-platform-api test-api getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameterGenerator;
    .registers 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 233
    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1e

    .line 235
    const-string v0, "AlgorithmParameterGenerator"

    invoke-static {p0, v0, p1}, Ljava/security/Security;->getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    .line 238
    .local v0, "objs":[Ljava/lang/Object;
    new-instance v1, Ljava/security/AlgorithmParameterGenerator;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    check-cast v2, Ljava/security/AlgorithmParameterGeneratorSpi;

    const/4 v3, 0x1

    aget-object v3, v0, v3

    check-cast v3, Ljava/security/Provider;

    invoke-direct {v1, v2, v3, p0}, Ljava/security/AlgorithmParameterGenerator;-><init>(Ljava/security/AlgorithmParameterGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1

    .line 234
    .end local v0    # "objs":[Ljava/lang/Object;
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "missing provider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist core-platform-api test-api getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/AlgorithmParameterGenerator;
    .registers 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 277
    if-eqz p1, :cond_18

    .line 279
    const-string v0, "AlgorithmParameterGenerator"

    invoke-static {p0, v0, p1}, Ljava/security/Security;->getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/security/Provider;)[Ljava/lang/Object;

    move-result-object v0

    .line 282
    .local v0, "objs":[Ljava/lang/Object;
    new-instance v1, Ljava/security/AlgorithmParameterGenerator;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    check-cast v2, Ljava/security/AlgorithmParameterGeneratorSpi;

    const/4 v3, 0x1

    aget-object v3, v0, v3

    check-cast v3, Ljava/security/Provider;

    invoke-direct {v1, v2, v3, p0}, Ljava/security/AlgorithmParameterGenerator;-><init>(Ljava/security/AlgorithmParameterGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1

    .line 278
    .end local v0    # "objs":[Ljava/lang/Object;
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "missing provider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final whitelist core-platform-api test-api generateParameters()Ljava/security/AlgorithmParameters;
    .registers 2

    .line 364
    iget-object v0, p0, Ljava/security/AlgorithmParameterGenerator;->paramGenSpi:Ljava/security/AlgorithmParameterGeneratorSpi;

    invoke-virtual {v0}, Ljava/security/AlgorithmParameterGeneratorSpi;->engineGenerateParameters()Ljava/security/AlgorithmParameters;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist core-platform-api test-api getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 148
    iget-object v0, p0, Ljava/security/AlgorithmParameterGenerator;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist core-platform-api test-api getProvider()Ljava/security/Provider;
    .registers 2

    .line 293
    iget-object v0, p0, Ljava/security/AlgorithmParameterGenerator;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final whitelist core-platform-api test-api init(I)V
    .registers 4
    .param p1, "size"    # I

    .line 308
    iget-object v0, p0, Ljava/security/AlgorithmParameterGenerator;->paramGenSpi:Ljava/security/AlgorithmParameterGeneratorSpi;

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/security/AlgorithmParameterGeneratorSpi;->engineInit(ILjava/security/SecureRandom;)V

    .line 309
    return-void
.end method

.method public final whitelist core-platform-api test-api init(ILjava/security/SecureRandom;)V
    .registers 4
    .param p1, "size"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .line 319
    iget-object v0, p0, Ljava/security/AlgorithmParameterGenerator;->paramGenSpi:Ljava/security/AlgorithmParameterGeneratorSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/AlgorithmParameterGeneratorSpi;->engineInit(ILjava/security/SecureRandom;)V

    .line 320
    return-void
.end method

.method public final whitelist core-platform-api test-api init(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 4
    .param p1, "genParamSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 339
    iget-object v0, p0, Ljava/security/AlgorithmParameterGenerator;->paramGenSpi:Ljava/security/AlgorithmParameterGeneratorSpi;

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/security/AlgorithmParameterGeneratorSpi;->engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 340
    return-void
.end method

.method public final whitelist core-platform-api test-api init(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 4
    .param p1, "genParamSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 355
    iget-object v0, p0, Ljava/security/AlgorithmParameterGenerator;->paramGenSpi:Ljava/security/AlgorithmParameterGeneratorSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/AlgorithmParameterGeneratorSpi;->engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 356
    return-void
.end method
