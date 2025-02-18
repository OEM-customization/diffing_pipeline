.class public Lcom/android/org/bouncycastle/asn1/x509/V2Form;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "V2Form.java"


# instance fields
.field blacklist baseCertificateID:Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

.field blacklist issuerName:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

.field blacklist objectDigestInfo:Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 8
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 79
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 80
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_68

    .line 85
    const/4 v0, 0x0

    .line 87
    .local v0, "index":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v2, v2, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    if-nez v2, :cond_20

    .line 89
    add-int/lit8 v0, v0, 0x1

    .line 90
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->issuerName:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    .line 93
    :cond_20
    move v2, v0

    .local v2, "i":I
    :goto_21
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    if-eq v2, v3, :cond_67

    .line 95
    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v3

    .line 96
    .local v3, "o":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v4

    if-nez v4, :cond_3c

    .line 98
    invoke-static {v3, v1}, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->baseCertificateID:Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    goto :goto_49

    .line 100
    :cond_3c
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4c

    .line 102
    invoke-static {v3, v1}, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->objectDigestInfo:Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    .line 93
    .end local v3    # "o":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    :goto_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 106
    .restart local v3    # "o":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    :cond_4c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad tag number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 110
    .end local v2    # "i":I
    .end local v3    # "o":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    :cond_67
    return-void

    .line 82
    .end local v0    # "index":I
    :cond_68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)V
    .registers 3
    .param p1, "issuerName"    # Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/org/bouncycastle/asn1/x509/V2Form;-><init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;)V

    .line 48
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;)V
    .registers 4
    .param p1, "issuerName"    # Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .param p2, "baseCertificateID"    # Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/asn1/x509/V2Form;-><init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;)V

    .line 55
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;)V
    .registers 4
    .param p1, "issuerName"    # Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .param p2, "baseCertificateID"    # Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;
    .param p3, "objectDigestInfo"    # Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    .line 68
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->issuerName:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    .line 70
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->baseCertificateID:Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    .line 71
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->objectDigestInfo:Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    .line 72
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;)V
    .registers 4
    .param p1, "issuerName"    # Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .param p2, "objectDigestInfo"    # Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/org/bouncycastle/asn1/x509/V2Form;-><init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;)V

    .line 62
    return-void
.end method

.method public static blacklist getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/V2Form;
    .registers 3
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 26
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/V2Form;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/V2Form;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .line 32
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;

    if-eqz v0, :cond_8

    .line 34
    move-object v0, p0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;

    return-object v0

    .line 36
    :cond_8
    if-eqz p0, :cond_14

    .line 38
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/V2Form;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 41
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getBaseCertificateID()Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->baseCertificateID:Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    return-object v0
.end method

.method public blacklist getIssuerName()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->issuerName:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    return-object v0
.end method

.method public blacklist getObjectDigestInfo()Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;
    .registers 2

    .line 124
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->objectDigestInfo:Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 6

    .line 142
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 144
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->issuerName:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    if-eqz v1, :cond_c

    .line 146
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 149
    :cond_c
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->baseCertificateID:Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    const/4 v2, 0x0

    if-eqz v1, :cond_1b

    .line 151
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->baseCertificateID:Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    invoke-direct {v1, v2, v2, v3}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 154
    :cond_1b
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->objectDigestInfo:Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    if-eqz v1, :cond_2a

    .line 156
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->objectDigestInfo:Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 159
    :cond_2a
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
