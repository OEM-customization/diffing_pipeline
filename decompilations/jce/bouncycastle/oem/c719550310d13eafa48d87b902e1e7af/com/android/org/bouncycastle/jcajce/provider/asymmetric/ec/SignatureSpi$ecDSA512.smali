.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecDSA512;
.super Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/SignatureSpi;
.source "SignatureSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/SignatureSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ecDSA512"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    .line 174
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA512()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v0

    new-instance v1, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;-><init>()V

    new-instance v2, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/SignatureSpi$StdDSAEncoder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/SignatureSpi$StdDSAEncoder;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/SignatureSpi$StdDSAEncoder;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/SignatureSpi;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;Lcom/android/org/bouncycastle/crypto/DSA;Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/DSAEncoder;)V

    .line 176
    return-void
.end method
