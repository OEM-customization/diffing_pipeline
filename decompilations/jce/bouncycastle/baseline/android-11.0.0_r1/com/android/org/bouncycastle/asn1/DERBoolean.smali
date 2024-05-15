.class public Lcom/android/org/bouncycastle/asn1/DERBoolean;
.super Lcom/android/org/bouncycastle/asn1/ASN1Boolean;
.source "DERBoolean.java"


# direct methods
.method public constructor blacklist <init>(Z)V
    .registers 2
    .param p1, "value"    # Z

    .line 17
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;-><init>(Z)V

    .line 18
    return-void
.end method

.method constructor blacklist <init>([B)V
    .registers 2
    .param p1, "value"    # [B

    .line 22
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;-><init>([B)V

    .line 23
    return-void
.end method
