.class public Lcom/android/org/bouncycastle/jcajce/provider/digest/SHA1$Digest;
.super Lcom/android/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;
.source "SHA1.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/digest/SHA1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Digest"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 34
    new-instance v0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 35
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 40
    invoke-super {p0}, Lcom/android/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/jcajce/provider/digest/SHA1$Digest;

    .line 41
    .local v0, "d":Lcom/android/org/bouncycastle/jcajce/provider/digest/SHA1$Digest;
    new-instance v1, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/digest/SHA1$Digest;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    check-cast v2, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;-><init>(Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;)V

    iput-object v1, v0, Lcom/android/org/bouncycastle/jcajce/provider/digest/SHA1$Digest;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    .line 43
    return-object v0
.end method
