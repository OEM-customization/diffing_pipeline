.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$Wrap;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;
.source "AES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Wrap"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 288
    new-instance v0, Lcom/android/org/bouncycastle/crypto/engines/AESWrapEngine;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/engines/AESWrapEngine;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>(Lcom/android/org/bouncycastle/crypto/Wrapper;)V

    .line 289
    return-void
.end method
