.class public Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "AttributeCertificateInfo.java"


# instance fields
.field private attrCertValidityPeriod:Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;

.field private attributes:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

.field private extensions:Lcom/android/org/bouncycastle/asn1/x509/Extensions;

.field private holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

.field private issuer:Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;

.field private issuerUniqueID:Lcom/android/org/bouncycastle/asn1/DERBitString;

.field private serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

.field private signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;


# direct methods
.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 8
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v5, 0x0

    .line 48
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    const/4 v4, 0x6

    if-lt v3, v4, :cond_13

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    const/16 v4, 0x9

    if-le v3, v4, :cond_31

    .line 53
    :cond_13
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Bad sequence size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 57
    :cond_31
    invoke-virtual {p1, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    instance-of v3, v3, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v3, :cond_a7

    .line 59
    invoke-virtual {p1, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 60
    const/4 v2, 0x1

    .line 68
    .local v2, "start":I
    :goto_44
    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Holder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    .line 69
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->issuer:Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;

    .line 70
    add-int/lit8 v3, v2, 0x2

    invoke-virtual {p1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 71
    add-int/lit8 v3, v2, 0x3

    invoke-virtual {p1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 72
    add-int/lit8 v3, v2, 0x4

    invoke-virtual {p1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->attrCertValidityPeriod:Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;

    .line 73
    add-int/lit8 v3, v2, 0x5

    invoke-virtual {p1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 75
    add-int/lit8 v0, v2, 0x6

    .local v0, "i":I
    :goto_8c
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    if-ge v0, v3, :cond_c5

    .line 77
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    .line 79
    .local v1, "obj":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    instance-of v3, v1, Lcom/android/org/bouncycastle/asn1/DERBitString;

    if-eqz v3, :cond_b2

    .line 81
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->issuerUniqueID:Lcom/android/org/bouncycastle/asn1/DERBitString;

    .line 75
    :cond_a4
    :goto_a4
    add-int/lit8 v0, v0, 0x1

    goto :goto_8c

    .line 64
    .end local v0    # "i":I
    .end local v1    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .end local v2    # "start":I
    :cond_a7
    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 65
    const/4 v2, 0x0

    .restart local v2    # "start":I
    goto :goto_44

    .line 83
    .restart local v0    # "i":I
    .restart local v1    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :cond_b2
    instance-of v3, v1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-nez v3, :cond_ba

    instance-of v3, v1, Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    if-eqz v3, :cond_a4

    .line 85
    :cond_ba
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->extensions:Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    goto :goto_a4

    .line 88
    .end local v1    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :cond_c5
    return-void
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;
    .registers 3
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 30
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 36
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    if-eqz v0, :cond_8

    .line 38
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    .line 40
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_8
    if-eqz p0, :cond_14

    .line 42
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 45
    :cond_14
    return-object v1
.end method


# virtual methods
.method public getAttrCertValidityPeriod()Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->attrCertValidityPeriod:Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;

    return-object v0
.end method

.method public getAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->extensions:Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    return-object v0
.end method

.method public getHolder()Lcom/android/org/bouncycastle/asn1/x509/Holder;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    return-object v0
.end method

.method public getIssuer()Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->issuer:Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;

    return-object v0
.end method

.method public getIssuerUniqueID()Lcom/android/org/bouncycastle/asn1/DERBitString;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->issuerUniqueID:Lcom/android/org/bouncycastle/asn1/DERBitString;

    return-object v0
.end method

.method public getSerialNumber()Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getSignature()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getVersion()Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .prologue
    .line 155
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 157
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    if-eqz v1, :cond_16

    .line 159
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 161
    :cond_16
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 162
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->issuer:Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 163
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 164
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 165
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->attrCertValidityPeriod:Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 166
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 168
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->issuerUniqueID:Lcom/android/org/bouncycastle/asn1/DERBitString;

    if-eqz v1, :cond_3d

    .line 170
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->issuerUniqueID:Lcom/android/org/bouncycastle/asn1/DERBitString;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 173
    :cond_3d
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->extensions:Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    if-eqz v1, :cond_46

    .line 175
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->extensions:Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 178
    :cond_46
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
