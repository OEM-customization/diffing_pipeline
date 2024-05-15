.class public Lcom/android/org/bouncycastle/asn1/x509/PolicyQualifierInfo;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "PolicyQualifierInfo.java"


# instance fields
.field private policyQualifierId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private qualifier:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3
    .param p1, "policyQualifierId"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "qualifier"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyQualifierInfo;->policyQualifierId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 41
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyQualifierInfo;->qualifier:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5
    .param p1, "as"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 68
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_28

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 71
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_28
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyQualifierInfo;->policyQualifierId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 75
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyQualifierInfo;->qualifier:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "cps"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 54
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/PolicyQualifierId;->id_qt_cps:Lcom/android/org/bouncycastle/asn1/x509/PolicyQualifierId;

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyQualifierInfo;->policyQualifierId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 55
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERIA5String;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyQualifierInfo;->qualifier:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 56
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/PolicyQualifierInfo;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 81
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyQualifierInfo;

    if-eqz v0, :cond_8

    .line 83
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyQualifierInfo;

    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    .line 85
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_8
    if-eqz p0, :cond_14

    .line 87
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/PolicyQualifierInfo;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/PolicyQualifierInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 90
    :cond_14
    return-object v1
.end method


# virtual methods
.method public getPolicyQualifierId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyQualifierInfo;->policyQualifierId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getQualifier()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyQualifierInfo;->qualifier:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .prologue
    .line 111
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 112
    .local v0, "dev":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyQualifierInfo;->policyQualifierId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 113
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyQualifierInfo;->qualifier:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 115
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
