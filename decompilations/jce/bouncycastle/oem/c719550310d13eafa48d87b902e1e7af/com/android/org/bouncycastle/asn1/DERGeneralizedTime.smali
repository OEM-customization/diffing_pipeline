.class public Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;
.super Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;
.source "DERGeneralizedTime.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;-><init>(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .registers 2
    .param p1, "time"    # Ljava/util/Date;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;-><init>(Ljava/util/Date;)V

    .line 20
    return-void
.end method

.method constructor <init>([B)V
    .registers 2
    .param p1, "bytes"    # [B

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;-><init>([B)V

    .line 15
    return-void
.end method
