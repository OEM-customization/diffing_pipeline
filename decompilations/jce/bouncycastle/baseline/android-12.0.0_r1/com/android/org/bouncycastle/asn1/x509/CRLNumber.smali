.class public Lcom/android/org/bouncycastle/asn1/x509/CRLNumber;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "CRLNumber.java"


# instance fields
.field private blacklist number:Ljava/math/BigInteger;


# direct methods
.method public constructor blacklist <init>(Ljava/math/BigInteger;)V
    .registers 2
    .param p1, "number"    # Ljava/math/BigInteger;

    .line 24
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/CRLNumber;->number:Ljava/math/BigInteger;

    .line 26
    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/CRLNumber;
    .registers 3
    .param p0, "o"    # Ljava/lang/Object;

    .line 45
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CRLNumber;

    if-eqz v0, :cond_8

    .line 47
    move-object v0, p0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/x509/CRLNumber;

    return-object v0

    .line 49
    :cond_8
    if-eqz p0, :cond_18

    .line 51
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/CRLNumber;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/CRLNumber;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    .line 54
    :cond_18
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getCRLNumber()Ljava/math/BigInteger;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CRLNumber;->number:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 40
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/CRLNumber;->number:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CRLNumber: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/CRLNumber;->getCRLNumber()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
