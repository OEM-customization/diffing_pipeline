.class public Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "TBSCertificate.java"


# instance fields
.field blacklist endDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

.field blacklist extensions:Lcom/android/org/bouncycastle/asn1/x509/Extensions;

.field blacklist issuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

.field blacklist issuerUniqueId:Lcom/android/org/bouncycastle/asn1/DERBitString;

.field blacklist seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

.field blacklist serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

.field blacklist signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field blacklist startDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

.field blacklist subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

.field blacklist subjectPublicKeyInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

.field blacklist subjectUniqueId:Lcom/android/org/bouncycastle/asn1/DERBitString;

.field blacklist version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;


# direct methods
.method private constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 12
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 76
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    .line 79
    .local v0, "seqStart":I
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 84
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v2, v2, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_1f

    .line 86
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v2, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    goto :goto_27

    .line 90
    :cond_1f
    const/4 v0, -0x1

    .line 91
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v2, v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 94
    :goto_27
    const/4 v2, 0x0

    .line 95
    .local v2, "isV1":Z
    const/4 v6, 0x0

    .line 97
    .local v6, "isV2":Z
    iget-object v7, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v7

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 99
    const/4 v2, 0x1

    goto :goto_61

    .line 101
    :cond_3b
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    const-wide/16 v7, 0x1

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 103
    const/4 v6, 0x1

    goto :goto_61

    .line 105
    :cond_4f
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    const-wide/16 v7, 0x2

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_128

    .line 110
    :goto_61
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 112
    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 113
    add-int/lit8 v3, v0, 0x3

    invoke-virtual {p1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->issuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    .line 118
    add-int/lit8 v3, v0, 0x4

    invoke-virtual {p1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 120
    .local v3, "dates":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v3, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x509/Time;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Time;

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->startDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    .line 121
    invoke-virtual {v3, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x509/Time;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Time;

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->endDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    .line 123
    add-int/lit8 v4, v0, 0x5

    invoke-virtual {p1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    .line 128
    add-int/lit8 v4, v0, 0x6

    invoke-virtual {p1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->subjectPublicKeyInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 130
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    add-int/lit8 v7, v0, 0x6

    sub-int/2addr v4, v7

    sub-int/2addr v4, v5

    .line 131
    .local v4, "extras":I
    if-eqz v4, :cond_ce

    if-nez v2, :cond_c6

    goto :goto_ce

    .line 133
    :cond_c6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v5, "version 1 certificate contains extra data"

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 136
    :cond_ce
    :goto_ce
    if-lez v4, :cond_127

    .line 138
    add-int/lit8 v7, v0, 0x6

    add-int/2addr v7, v4

    invoke-virtual {p1, v7}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    check-cast v7, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 140
    .local v7, "extra":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v8

    if-eq v8, v5, :cond_11c

    const/4 v9, 0x2

    if-eq v8, v9, :cond_115

    const/4 v9, 0x3

    if-ne v8, v9, :cond_fa

    .line 149
    if-nez v6, :cond_f2

    .line 153
    invoke-static {v7, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v8

    invoke-static {v8}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v8

    iput-object v8, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->extensions:Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    .line 154
    goto :goto_123

    .line 151
    :cond_f2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v5, "version 2 certificate cannot contain extensions"

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 156
    :cond_fa
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown tag encountered in structure: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 146
    :cond_115
    invoke-static {v7, v1}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v8

    iput-object v8, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->subjectUniqueId:Lcom/android/org/bouncycastle/asn1/DERBitString;

    .line 147
    goto :goto_123

    .line 143
    :cond_11c
    invoke-static {v7, v1}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v8

    iput-object v8, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->issuerUniqueId:Lcom/android/org/bouncycastle/asn1/DERBitString;

    .line 144
    nop

    .line 158
    :goto_123
    nop

    .end local v7    # "extra":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    add-int/lit8 v4, v4, -0x1

    .line 159
    goto :goto_ce

    .line 160
    :cond_127
    return-void

    .line 107
    .end local v3    # "dates":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v4    # "extras":I
    :cond_128
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "version number not recognised"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;
    .registers 3
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 56
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .line 62
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    if-eqz v0, :cond_8

    .line 64
    move-object v0, p0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    return-object v0

    .line 66
    :cond_8
    if-eqz p0, :cond_14

    .line 68
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 71
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getEndDate()Lcom/android/org/bouncycastle/asn1/x509/Time;
    .registers 2

    .line 194
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->endDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    return-object v0
.end method

.method public blacklist getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;
    .registers 2

    .line 219
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->extensions:Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    return-object v0
.end method

.method public blacklist getIssuer()Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .registers 2

    .line 184
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->issuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public blacklist getIssuerUniqueId()Lcom/android/org/bouncycastle/asn1/DERBitString;
    .registers 2

    .line 209
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->issuerUniqueId:Lcom/android/org/bouncycastle/asn1/DERBitString;

    return-object v0
.end method

.method public blacklist getSerialNumber()Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .registers 2

    .line 174
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public blacklist getSignature()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .line 179
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public blacklist getStartDate()Lcom/android/org/bouncycastle/asn1/x509/Time;
    .registers 2

    .line 189
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->startDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    return-object v0
.end method

.method public blacklist getSubject()Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .registers 2

    .line 199
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public blacklist getSubjectPublicKeyInfo()Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .registers 2

    .line 204
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->subjectPublicKeyInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    return-object v0
.end method

.method public blacklist getSubjectUniqueId()Lcom/android/org/bouncycastle/asn1/DERBitString;
    .registers 2

    .line 214
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->subjectUniqueId:Lcom/android/org/bouncycastle/asn1/DERBitString;

    return-object v0
.end method

.method public blacklist getVersion()Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .registers 2

    .line 169
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public blacklist getVersionNumber()I
    .registers 2

    .line 164
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 224
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
