.class public Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;
.super Ljava/lang/Object;
.source "V3TBSCertificateGenerator.java"


# instance fields
.field private blacklist altNamePresentAndCritical:Z

.field blacklist endDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

.field blacklist extensions:Lcom/android/org/bouncycastle/asn1/x509/Extensions;

.field blacklist issuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

.field private blacklist issuerUniqueID:Lcom/android/org/bouncycastle/asn1/DERBitString;

.field blacklist serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

.field blacklist signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field blacklist startDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

.field blacklist subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

.field blacklist subjectPublicKeyInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

.field private blacklist subjectUniqueID:Lcom/android/org/bouncycastle/asn1/DERBitString;

.field blacklist version:Lcom/android/org/bouncycastle/asn1/DERTaggedObject;


# direct methods
.method public constructor greylist core-platform-api <init>()V
    .registers 5

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x2

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->version:Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    .line 52
    return-void
.end method


# virtual methods
.method public greylist core-platform-api generateTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;
    .registers 8

    .line 181
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_9d

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v0, :cond_9d

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->issuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    if-eqz v0, :cond_9d

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->startDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    if-eqz v0, :cond_9d

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->endDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    if-eqz v0, :cond_9d

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->altNamePresentAndCritical:Z

    if-eqz v0, :cond_9d

    :cond_1c
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subjectPublicKeyInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    if-eqz v0, :cond_9d

    .line 188
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 190
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->version:Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 191
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 192
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 193
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->issuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 198
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 200
    .local v1, "validity":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->startDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 201
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->endDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 203
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 205
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    if-eqz v2, :cond_58

    .line 207
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_60

    .line 211
    :cond_58
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v2}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>()V

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 214
    :goto_60
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subjectPublicKeyInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 216
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->issuerUniqueID:Lcom/android/org/bouncycastle/asn1/DERBitString;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_75

    .line 218
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->issuerUniqueID:Lcom/android/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v2, v4, v3, v5}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 221
    :cond_75
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subjectUniqueID:Lcom/android/org/bouncycastle/asn1/DERBitString;

    if-eqz v2, :cond_84

    .line 223
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subjectUniqueID:Lcom/android/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v2, v4, v5, v6}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 226
    :cond_84
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->extensions:Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    if-eqz v2, :cond_93

    .line 228
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->extensions:Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 231
    :cond_93
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v2

    return-object v2

    .line 185
    .end local v0    # "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v1    # "validity":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_9d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not all mandatory fields set in V3 TBScertificate generator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setEndDate(Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;)V
    .registers 3
    .param p1, "endDate"    # Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;

    .line 104
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/Time;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/Time;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->endDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    .line 105
    return-void
.end method

.method public greylist core-platform-api setEndDate(Lcom/android/org/bouncycastle/asn1/x509/Time;)V
    .registers 2
    .param p1, "endDate"    # Lcom/android/org/bouncycastle/asn1/x509/Time;

    .line 112
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->endDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    .line 113
    return-void
.end method

.method public blacklist setExtensions(Lcom/android/org/bouncycastle/asn1/x509/Extensions;)V
    .registers 4
    .param p1, "extensions"    # Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    .line 165
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->extensions:Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    .line 166
    if-eqz p1, :cond_15

    .line 168
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->subjectAlternativeName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    move-result-object v0

    .line 170
    .local v0, "altName":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 172
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->altNamePresentAndCritical:Z

    .line 175
    .end local v0    # "altName":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    :cond_15
    return-void
.end method

.method public blacklist setExtensions(Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;)V
    .registers 3
    .param p1, "extensions"    # Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

    .line 159
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setExtensions(Lcom/android/org/bouncycastle/asn1/x509/Extensions;)V

    .line 160
    return-void
.end method

.method public blacklist setIssuer(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)V
    .registers 2
    .param p1, "issuer"    # Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    .line 84
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->issuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    .line 85
    return-void
.end method

.method public greylist core-platform-api setIssuer(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V
    .registers 3
    .param p1, "issuer"    # Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    .line 78
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->issuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    .line 79
    return-void
.end method

.method public blacklist setIssuerUniqueID(Lcom/android/org/bouncycastle/asn1/DERBitString;)V
    .registers 2
    .param p1, "uniqueID"    # Lcom/android/org/bouncycastle/asn1/DERBitString;

    .line 135
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->issuerUniqueID:Lcom/android/org/bouncycastle/asn1/DERBitString;

    .line 136
    return-void
.end method

.method public greylist core-platform-api setSerialNumber(Lcom/android/org/bouncycastle/asn1/ASN1Integer;)V
    .registers 2
    .param p1, "serialNumber"    # Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 59
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 60
    return-void
.end method

.method public greylist core-platform-api setSignature(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .registers 2
    .param p1, "signature"    # Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 67
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 68
    return-void
.end method

.method public blacklist setStartDate(Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;)V
    .registers 3
    .param p1, "startDate"    # Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;

    .line 90
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/Time;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/Time;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->startDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    .line 91
    return-void
.end method

.method public greylist core-platform-api setStartDate(Lcom/android/org/bouncycastle/asn1/x509/Time;)V
    .registers 2
    .param p1, "startDate"    # Lcom/android/org/bouncycastle/asn1/x509/Time;

    .line 98
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->startDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    .line 99
    return-void
.end method

.method public blacklist setSubject(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)V
    .registers 2
    .param p1, "subject"    # Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    .line 129
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    .line 130
    return-void
.end method

.method public greylist core-platform-api setSubject(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V
    .registers 3
    .param p1, "subject"    # Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    .line 123
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    .line 124
    return-void
.end method

.method public greylist core-platform-api setSubjectPublicKeyInfo(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .registers 2
    .param p1, "pubKeyInfo"    # Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 149
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subjectPublicKeyInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 150
    return-void
.end method

.method public blacklist setSubjectUniqueID(Lcom/android/org/bouncycastle/asn1/DERBitString;)V
    .registers 2
    .param p1, "uniqueID"    # Lcom/android/org/bouncycastle/asn1/DERBitString;

    .line 141
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subjectUniqueID:Lcom/android/org/bouncycastle/asn1/DERBitString;

    .line 142
    return-void
.end method
