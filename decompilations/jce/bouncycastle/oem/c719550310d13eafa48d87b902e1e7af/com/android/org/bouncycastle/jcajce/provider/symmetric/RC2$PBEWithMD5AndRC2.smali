.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/RC2$PBEWithMD5AndRC2;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;
.source "RC2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/symmetric/RC2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBEWithMD5AndRC2"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 147
    new-instance v1, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance v0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;-><init>()V

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    const/16 v4, 0x40

    const/16 v5, 0x8

    move-object v0, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;IIII)V

    .line 148
    return-void
.end method