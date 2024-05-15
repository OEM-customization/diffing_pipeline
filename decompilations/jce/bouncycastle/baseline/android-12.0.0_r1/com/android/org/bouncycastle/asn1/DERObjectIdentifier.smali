.class public Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
.super Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
.source "DERObjectIdentifier.java"


# direct methods
.method constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V
    .registers 3
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "branch"    # Ljava/lang/String;

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor greylist-max-r <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "identifier"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method constructor blacklist <init>([B)V
    .registers 2
    .param p1, "bytes"    # [B

    .line 20
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>([B)V

    .line 21
    return-void
.end method
