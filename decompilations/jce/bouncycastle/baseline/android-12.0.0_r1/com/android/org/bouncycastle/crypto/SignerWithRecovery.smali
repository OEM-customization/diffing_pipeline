.class public interface abstract Lcom/android/org/bouncycastle/crypto/SignerWithRecovery;
.super Ljava/lang/Object;
.source "SignerWithRecovery.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/Signer;


# virtual methods
.method public abstract blacklist getRecoveredMessage()[B
.end method

.method public abstract blacklist hasFullMessage()Z
.end method

.method public abstract blacklist updateWithRecoveredMessage([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation
.end method
