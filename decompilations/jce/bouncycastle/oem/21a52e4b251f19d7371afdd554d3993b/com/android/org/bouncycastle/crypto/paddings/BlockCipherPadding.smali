.class public interface abstract Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;
.super Ljava/lang/Object;
.source "BlockCipherPadding.java"


# virtual methods
.method public abstract blacklist addPadding([BI)I
.end method

.method public abstract blacklist getPaddingName()Ljava/lang/String;
.end method

.method public abstract blacklist init(Ljava/security/SecureRandom;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract blacklist padCount([B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation
.end method
