.class public abstract Ljava/security/AlgorithmParameterGeneratorSpi;
.super Ljava/lang/Object;
.source "AlgorithmParameterGeneratorSpi.java"


# direct methods
.method public constructor whitelist core-platform-api test-api <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract whitelist core-platform-api test-api engineGenerateParameters()Ljava/security/AlgorithmParameters;
.end method

.method protected abstract whitelist core-platform-api test-api engineInit(ILjava/security/SecureRandom;)V
.end method

.method protected abstract whitelist core-platform-api test-api engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method
