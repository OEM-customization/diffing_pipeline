.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$PBEWithHmacSHA224AES256AlgorithmParameters;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$BasePBEWithHmacAlgorithmParameters;
.source "PBES2AlgorithmParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBEWithHmacSHA224AES256AlgorithmParameters"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 8

    .line 269
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA224:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v4, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "HmacSHA224"

    const/16 v3, 0x20

    const-string v5, "AES256"

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$BasePBEWithHmacAlgorithmParameters;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;ILcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$1;)V

    .line 274
    return-void
.end method