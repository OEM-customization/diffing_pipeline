.class public Lcom/android/org/bouncycastle/asn1/DERInteger;
.super Lcom/android/org/bouncycastle/asn1/ASN1Integer;
.source "DERInteger.java"


# direct methods
.method public constructor <init>(J)V
    .registers 4
    .param p1, "value"    # J

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .registers 2
    .param p1, "value"    # Ljava/math/BigInteger;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    .line 24
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3
    .param p1, "bytes"    # [B

    .prologue
    .line 18
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>([BZ)V

    .line 19
    return-void
.end method
