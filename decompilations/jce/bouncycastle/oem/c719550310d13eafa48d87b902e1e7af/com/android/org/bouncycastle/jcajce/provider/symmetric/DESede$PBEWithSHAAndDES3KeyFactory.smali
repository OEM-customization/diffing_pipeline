.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DESede$PBEWithSHAAndDES3KeyFactory;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;
.source "DESede.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DESede;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBEWithSHAAndDES3KeyFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 9

    .prologue
    const/4 v3, 0x1

    .line 246
    const-string/jumbo v1, "PBEwithSHAandDES3Key-CBC"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd3_KeyTripleDES_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v4, 0x2

    const/16 v6, 0xc0

    const/16 v7, 0x40

    move-object v0, p0

    move v5, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZIIII)V

    .line 247
    return-void
.end method
