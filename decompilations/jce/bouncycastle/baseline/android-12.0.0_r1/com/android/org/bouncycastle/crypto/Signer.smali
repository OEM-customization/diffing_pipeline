.class public interface abstract Lcom/android/org/bouncycastle/crypto/Signer;
.super Ljava/lang/Object;
.source "Signer.java"


# virtual methods
.method public abstract blacklist generateSignature()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/CryptoException;,
            Lcom/android/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation
.end method

.method public abstract blacklist init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
.end method

.method public abstract blacklist reset()V
.end method

.method public abstract blacklist update(B)V
.end method

.method public abstract blacklist update([BII)V
.end method

.method public abstract blacklist verifySignature([B)Z
.end method
