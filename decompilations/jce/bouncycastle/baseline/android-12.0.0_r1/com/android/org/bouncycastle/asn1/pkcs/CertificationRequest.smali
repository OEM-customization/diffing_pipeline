.class public Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "CertificationRequest.java"


# instance fields
.field protected blacklist reqInfo:Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

.field protected blacklist sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field protected blacklist sigBits:Lcom/android/org/bouncycastle/asn1/DERBitString;


# direct methods
.method protected constructor blacklist <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;->reqInfo:Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    .line 27
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 28
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;->sigBits:Lcom/android/org/bouncycastle/asn1/DERBitString;

    .line 47
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 3
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 64
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;->reqInfo:Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    .line 27
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 28
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;->sigBits:Lcom/android/org/bouncycastle/asn1/DERBitString;

    .line 65
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;->reqInfo:Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    .line 66
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 67
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERBitString;

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;->sigBits:Lcom/android/org/bouncycastle/asn1/DERBitString;

    .line 68
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/DERBitString;)V
    .registers 5
    .param p1, "requestInfo"    # Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;
    .param p2, "algorithm"    # Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "signature"    # Lcom/android/org/bouncycastle/asn1/DERBitString;

    .line 53
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;->reqInfo:Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    .line 27
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 28
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;->sigBits:Lcom/android/org/bouncycastle/asn1/DERBitString;

    .line 54
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;->reqInfo:Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    .line 55
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 56
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;->sigBits:Lcom/android/org/bouncycastle/asn1/DERBitString;

    .line 57
    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;
    .registers 3
    .param p0, "o"    # Ljava/lang/Object;

    .line 32
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;

    if-eqz v0, :cond_8

    .line 34
    move-object v0, p0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;

    return-object v0

    .line 37
    :cond_8
    if-eqz p0, :cond_14

    .line 39
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 42
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getCertificationRequestInfo()Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;->reqInfo:Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    return-object v0
.end method

.method public blacklist getSignature()Lcom/android/org/bouncycastle/asn1/DERBitString;
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;->sigBits:Lcom/android/org/bouncycastle/asn1/DERBitString;

    return-object v0
.end method

.method public blacklist getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 88
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 90
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;->reqInfo:Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 91
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 92
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;->sigBits:Lcom/android/org/bouncycastle/asn1/DERBitString;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 94
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
