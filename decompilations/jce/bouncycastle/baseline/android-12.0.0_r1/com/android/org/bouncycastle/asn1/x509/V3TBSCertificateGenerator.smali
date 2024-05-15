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
.method public constructor greylist <init>()V
    .registers 5

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x2

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->version:Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    .line 50
    return-void
.end method


# virtual methods
.method public greylist generateTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;
    .registers 7

    .line 171
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->issuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->startDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->endDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->altNamePresentAndCritical:Z

    if-eqz v0, :cond_99

    :cond_1c
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subjectPublicKeyInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    if-eqz v0, :cond_99

    .line 178
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 180
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->version:Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 181
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 182
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 183
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->issuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 189
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 190
    .local v1, "validity":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->startDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    invoke-virtual {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 191
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->endDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    invoke-virtual {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 193
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 196
    .end local v1    # "validity":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    if-eqz v1, :cond_5b

    .line 198
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_63

    .line 202
    :cond_5b
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 205
    :goto_63
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subjectPublicKeyInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 207
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->issuerUniqueID:Lcom/android/org/bouncycastle/asn1/DERBitString;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_76

    .line 209
    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v5, v4, v3, v1}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 212
    :cond_76
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subjectUniqueID:Lcom/android/org/bouncycastle/asn1/DERBitString;

    if-eqz v1, :cond_82

    .line 214
    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v5, v4, v2, v1}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 217
    :cond_82
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->extensions:Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    if-eqz v1, :cond_8f

    .line 219
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4, v1}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 222
    :cond_8f
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v1

    return-object v1

    .line 175
    .end local v0    # "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_99
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not all mandatory fields set in V3 TBScertificate generator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setEndDate(Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;)V
    .registers 3
    .param p1, "endDate"    # Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;

    .line 98
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/Time;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/Time;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->endDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    .line 99
    return-void
.end method

.method public greylist setEndDate(Lcom/android/org/bouncycastle/asn1/x509/Time;)V
    .registers 2
    .param p1, "endDate"    # Lcom/android/org/bouncycastle/asn1/x509/Time;

    .line 105
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->endDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    .line 106
    return-void
.end method

.method public blacklist setExtensions(Lcom/android/org/bouncycastle/asn1/x509/Extensions;)V
    .registers 4
    .param p1, "extensions"    # Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    .line 156
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->extensions:Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    .line 157
    if-eqz p1, :cond_15

    .line 159
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->subjectAlternativeName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    move-result-object v0

    .line 161
    .local v0, "altName":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 163
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->altNamePresentAndCritical:Z

    .line 166
    .end local v0    # "altName":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    :cond_15
    return-void
.end method

.method public blacklist setExtensions(Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;)V
    .registers 3
    .param p1, "extensions"    # Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

    .line 150
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setExtensions(Lcom/android/org/bouncycastle/asn1/x509/Extensions;)V

    .line 151
    return-void
.end method

.method public blacklist setIssuer(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)V
    .registers 2
    .param p1, "issuer"    # Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    .line 79
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->issuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    .line 80
    return-void
.end method

.method public greylist setIssuer(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V
    .registers 3
    .param p1, "issuer"    # Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    .line 73
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->issuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    .line 74
    return-void
.end method

.method public blacklist setIssuerUniqueID(Lcom/android/org/bouncycastle/asn1/DERBitString;)V
    .registers 2
    .param p1, "uniqueID"    # Lcom/android/org/bouncycastle/asn1/DERBitString;

    .line 127
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->issuerUniqueID:Lcom/android/org/bouncycastle/asn1/DERBitString;

    .line 128
    return-void
.end method

.method public greylist setSerialNumber(Lcom/android/org/bouncycastle/asn1/ASN1Integer;)V
    .registers 2
    .param p1, "serialNumber"    # Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 56
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 57
    return-void
.end method

.method public greylist setSignature(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .registers 2
    .param p1, "signature"    # Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 63
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 64
    return-void
.end method

.method public blacklist setStartDate(Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;)V
    .registers 3
    .param p1, "startDate"    # Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;

    .line 85
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/Time;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/Time;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->startDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    .line 86
    return-void
.end method

.method public greylist setStartDate(Lcom/android/org/bouncycastle/asn1/x509/Time;)V
    .registers 2
    .param p1, "startDate"    # Lcom/android/org/bouncycastle/asn1/x509/Time;

    .line 92
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->startDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    .line 93
    return-void
.end method

.method public blacklist setSubject(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)V
    .registers 2
    .param p1, "subject"    # Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    .line 121
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    .line 122
    return-void
.end method

.method public greylist setSubject(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V
    .registers 3
    .param p1, "subject"    # Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    .line 115
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    .line 116
    return-void
.end method

.method public greylist setSubjectPublicKeyInfo(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .registers 2
    .param p1, "pubKeyInfo"    # Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 140
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subjectPublicKeyInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 141
    return-void
.end method

.method public blacklist setSubjectUniqueID(Lcom/android/org/bouncycastle/asn1/DERBitString;)V
    .registers 2
    .param p1, "uniqueID"    # Lcom/android/org/bouncycastle/asn1/DERBitString;

    .line 133
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subjectUniqueID:Lcom/android/org/bouncycastle/asn1/DERBitString;

    .line 134
    return-void
.end method
