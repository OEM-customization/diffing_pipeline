.class public Lcom/android/org/bouncycastle/asn1/DERBoolean;
.super Lcom/android/org/bouncycastle/asn1/ASN1Boolean;
.source "DERBoolean.java"


# direct methods
.method public constructor <init>(Z)V
    .registers 2
    .param p1, "value"    # Z

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;-><init>(Z)V

    .line 16
    return-void
.end method

.method constructor <init>([B)V
    .registers 2
    .param p1, "value"    # [B

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;-><init>([B)V

    .line 21
    return-void
.end method
