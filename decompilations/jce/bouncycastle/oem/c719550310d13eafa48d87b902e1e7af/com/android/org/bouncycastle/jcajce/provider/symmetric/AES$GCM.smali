.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$GCM;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;
.source "AES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GCM"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 132
    new-instance v1, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;

    invoke-direct {v2}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;-><init>()V

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;)V

    .line 135
    :try_start_d
    const-string/jumbo v1, "GCM"

    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$GCM;->engineSetMode(Ljava/lang/String;)V

    .line 136
    const-string/jumbo v1, "NoPadding"

    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$GCM;->engineSetPadding(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_d .. :try_end_19} :catch_1a
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_d .. :try_end_19} :catch_1a

    .line 142
    return-void

    .line 137
    :catch_1a
    move-exception v0

    .line 139
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Could not set mode or padding for GCM mode"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
