.class public Lcom/android/org/bouncycastle/jcajce/provider/digest/SHA1$PBEWithMacKeyFactory;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;
.source "SHA1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/digest/SHA1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBEWithMacKeyFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 9

    .prologue
    const/4 v3, 0x0

    .line 87
    const-string/jumbo v1, "PBEwithHmacSHA"

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/16 v6, 0xa0

    move-object v0, p0

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZIIII)V

    .line 88
    return-void
.end method
