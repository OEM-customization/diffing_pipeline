.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$KeyGen;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;
.source "AES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyGen"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 382
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$KeyGen;-><init>(I)V

    .line 384
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "keySize"    # I

    .prologue
    .line 388
    const-string/jumbo v0, "AES"

    new-instance v1, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;-><init>()V

    invoke-direct {p0, v0, p1, v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;-><init>(Ljava/lang/String;ILcom/android/org/bouncycastle/crypto/CipherKeyGenerator;)V

    .line 389
    return-void
.end method
