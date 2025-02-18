.class public Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "AttCertValidityPeriod.java"


# instance fields
.field notAfterTime:Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

.field notBeforeTime:Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;)V
    .registers 3
    .param p1, "notBeforeTime"    # Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;
    .param p2, "notAfterTime"    # Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;->notBeforeTime:Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 53
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;->notAfterTime:Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 54
    return-void
.end method

.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_28

    .line 36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 37
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_28
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;->notBeforeTime:Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;->notAfterTime:Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 42
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 19
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;

    if-eqz v0, :cond_8

    .line 21
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;

    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    .line 23
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_8
    if-eqz p0, :cond_14

    .line 25
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 28
    :cond_14
    return-object v1
.end method


# virtual methods
.method public getNotAfterTime()Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;->notAfterTime:Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    return-object v0
.end method

.method public getNotBeforeTime()Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;->notBeforeTime:Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .prologue
    .line 77
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 79
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;->notBeforeTime:Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 80
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;->notAfterTime:Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 82
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
