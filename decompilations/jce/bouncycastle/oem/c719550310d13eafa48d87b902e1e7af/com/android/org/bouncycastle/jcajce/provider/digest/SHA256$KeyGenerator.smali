.class public Lcom/android/org/bouncycastle/jcajce/provider/digest/SHA256$KeyGenerator;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;
.source "SHA256.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/digest/SHA256;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyGenerator"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 70
    const-string/jumbo v0, "HMACSHA256"

    new-instance v1, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;-><init>()V

    const/16 v2, 0x100

    invoke-direct {p0, v0, v2, v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;-><init>(Ljava/lang/String;ILcom/android/org/bouncycastle/crypto/CipherKeyGenerator;)V

    .line 71
    return-void
.end method
