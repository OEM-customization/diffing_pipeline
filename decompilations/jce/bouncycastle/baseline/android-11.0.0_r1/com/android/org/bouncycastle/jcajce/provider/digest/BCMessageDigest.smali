.class public Lcom/android/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;
.super Ljava/security/MessageDigest;
.source "BCMessageDigest.java"


# instance fields
.field protected blacklist digest:Lcom/android/org/bouncycastle/crypto/Digest;


# direct methods
.method protected constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/Digest;)V
    .registers 3
    .param p1, "digest"    # Lcom/android/org/bouncycastle/crypto/Digest;

    .line 19
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/MessageDigest;-><init>(Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    .line 22
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api engineDigest()[B
    .registers 4

    .line 45
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    .line 47
    .local v0, "digestBytes":[B
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 49
    return-object v0
.end method

.method public whitelist core-platform-api test-api engineReset()V
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/Digest;->reset()V

    .line 27
    return-void
.end method

.method public whitelist core-platform-api test-api engineUpdate(B)V
    .registers 3
    .param p1, "input"    # B

    .line 32
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lcom/android/org/bouncycastle/crypto/Digest;->update(B)V

    .line 33
    return-void
.end method

.method public whitelist core-platform-api test-api engineUpdate([BII)V
    .registers 5
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 40
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 41
    return-void
.end method
