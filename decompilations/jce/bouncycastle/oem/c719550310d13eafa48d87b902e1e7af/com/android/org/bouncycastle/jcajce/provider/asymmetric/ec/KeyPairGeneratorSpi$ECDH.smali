.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$ECDH;
.super Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;
.source "KeyPairGeneratorSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECDH"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 270
    const-string/jumbo v0, "ECDH"

    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V

    .line 271
    return-void
.end method
