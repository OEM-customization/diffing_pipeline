.class public Lcom/android/org/bouncycastle/asn1/x509/Certificate;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "Certificate.java"


# instance fields
.field blacklist seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

.field blacklist sig:Lcom/android/org/bouncycastle/asn1/DERBitString;

.field blacklist sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field blacklist tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;


# direct methods
.method private constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 4
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 56
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 62
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2e

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 67
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->sig:Lcom/android/org/bouncycastle/asn1/DERBitString;

    .line 73
    return-void

    .line 71
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sequence wrong size for a certificate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/Certificate;
    .registers 3
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 35
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public static greylist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Certificate;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .line 42
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    if-eqz v0, :cond_8

    .line 44
    move-object v0, p0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    return-object v0

    .line 46
    :cond_8
    if-eqz p0, :cond_14

    .line 48
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 51
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getEndDate()Lcom/android/org/bouncycastle/asn1/x509/Time;
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getEndDate()Lcom/android/org/bouncycastle/asn1/x509/Time;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getIssuer()Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getIssuer()Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSerialNumber()Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getSerialNumber()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSignature()Lcom/android/org/bouncycastle/asn1/DERBitString;
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->sig:Lcom/android/org/bouncycastle/asn1/DERBitString;

    return-object v0
.end method

.method public blacklist getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public blacklist getStartDate()Lcom/android/org/bouncycastle/asn1/x509/Time;
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getStartDate()Lcom/android/org/bouncycastle/asn1/x509/Time;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSubject()Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getSubject()Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSubjectPublicKeyInfo()Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getSubjectPublicKeyInfo()Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    return-object v0
.end method

.method public blacklist getVersion()Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getVersion()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getVersionNumber()I
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getVersionNumber()I

    move-result v0

    return v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
