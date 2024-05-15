.class public Lcom/android/org/bouncycastle/asn1/DERInteger;
.super Lcom/android/org/bouncycastle/asn1/ASN1Integer;
.source "DERInteger.java"


# direct methods
.method public constructor greylist core-platform-api <init>(J)V
    .registers 3
    .param p1, "value"    # J

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    .line 35
    return-void
.end method

.method public constructor greylist <init>(Ljava/math/BigInteger;)V
    .registers 2
    .param p1, "value"    # Ljava/math/BigInteger;

    .line 27
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    .line 28
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 3
    .param p1, "bytes"    # [B

    .line 21
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>([BZ)V

    .line 22
    return-void
.end method
