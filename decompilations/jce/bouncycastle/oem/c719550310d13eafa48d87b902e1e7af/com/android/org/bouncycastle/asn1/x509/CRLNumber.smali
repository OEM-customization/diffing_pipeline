.class public Lcom/android/org/bouncycastle/asn1/x509/CRLNumber;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "CRLNumber.java"


# instance fields
.field private number:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .registers 2
    .param p1, "number"    # Ljava/math/BigInteger;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/CRLNumber;->number:Ljava/math/BigInteger;

    .line 24
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/CRLNumber;
    .registers 3
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 43
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CRLNumber;

    if-eqz v0, :cond_8

    .line 45
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/CRLNumber;

    .end local p0    # "o":Ljava/lang/Object;
    return-object p0

    .line 47
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_8
    if-eqz p0, :cond_18

    .line 49
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/CRLNumber;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/CRLNumber;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    .line 52
    :cond_18
    return-object v1
.end method


# virtual methods
.method public getCRLNumber()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CRLNumber;->number:Ljava/math/BigInteger;

    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .prologue
    .line 38
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/CRLNumber;->number:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CRLNumber: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/CRLNumber;->getCRLNumber()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
