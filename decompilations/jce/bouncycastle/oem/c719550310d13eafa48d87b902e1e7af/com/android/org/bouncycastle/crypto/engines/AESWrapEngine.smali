.class public Lcom/android/org/bouncycastle/crypto/engines/AESWrapEngine;
.super Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;
.source "AESWrapEngine.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    new-instance v0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3
    .param p1, "useReverseDirection"    # Z

    .prologue
    .line 27
    new-instance v0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;Z)V

    .line 28
    return-void
.end method
