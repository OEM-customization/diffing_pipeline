.class public Lcom/android/org/bouncycastle/asn1/DERInteger;
.super Lcom/android/org/bouncycastle/asn1/ASN1Integer;
.source "DERInteger.java"


# direct methods
.method public constructor greylist <init>(J)V
    .registers 3
    .param p1, "value"    # J

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    .line 33
    return-void
.end method

.method public constructor greylist-max-r <init>(Ljava/math/BigInteger;)V
    .registers 2
    .param p1, "value"    # Ljava/math/BigInteger;

    .line 26
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    .line 27
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 3
    .param p1, "bytes"    # [B

    .line 20
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>([BZ)V

    .line 21
    return-void
.end method
