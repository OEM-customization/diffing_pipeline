.class public Lcom/android/org/bouncycastle/its/asn1/ImplicitCertificate;
.super Lcom/android/org/bouncycastle/its/asn1/CertificateBase;
.source "ImplicitCertificate.java"


# direct methods
.method private constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 2
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 14
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/its/asn1/CertificateBase;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 15
    return-void
.end method
