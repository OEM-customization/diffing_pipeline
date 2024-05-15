.class public Lcom/android/org/bouncycastle/crypto/engines/AESWrapEngine;
.super Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;
.source "AESWrapEngine.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 19
    new-instance v0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    .line 20
    return-void
.end method

.method public constructor blacklist <init>(Z)V
    .registers 3
    .param p1, "useReverseDirection"    # Z

    .line 29
    new-instance v0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;Z)V

    .line 30
    return-void
.end method
