.class public Ljavax/crypto/NullCipher;
.super Ljavax/crypto/Cipher;
.source "NullCipher.java"


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 45
    new-instance v0, Ljavax/crypto/NullCipherSpi;

    invoke-direct {v0}, Ljavax/crypto/NullCipherSpi;-><init>()V

    invoke-direct {p0, v0, v1, v1}, Ljavax/crypto/Cipher;-><init>(Ljavax/crypto/CipherSpi;Ljava/security/Provider;Ljava/lang/String;)V

    .line 46
    return-void
.end method