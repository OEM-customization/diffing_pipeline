.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2WithHmacSHA256;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;
.source "PBEPBKDF2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BasePBKDF2WithHmacSHA256"
.end annotation


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "scheme"    # I

    .line 450
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;-><init>(Ljava/lang/String;IILcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$1;)V

    .line 451
    return-void
.end method
