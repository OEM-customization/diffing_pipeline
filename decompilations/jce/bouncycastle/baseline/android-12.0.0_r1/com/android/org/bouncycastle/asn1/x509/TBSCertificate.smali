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
    .registers 11
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 80
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 81
    const/4 v0, 0x0

    .line 83
    .local v0, "seqStart":I
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 88
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v2, v2, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_1f

    .line 90
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v2, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    goto :goto_27

    .line 94
    :cond_1f
    const/4 v0, -0x1

    .line 95
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v2, v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 98
    :goto_27
    const/4 v2, 0x0

    .line 99
    .local v2, "isV1":Z
    const/4 v6, 0x0

    .line 101
    .local v6, "isV2":Z
    iget-object v7, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->hasValue(Ljava/math/BigInteger;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 103
    const/4 v2, 0x1

    goto :goto_55

    .line 105
    :cond_37
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v7, 0x1

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->hasValue(Ljava/math/BigInteger;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 107
    const/4 v6, 0x1

    goto :goto_55

    .line 109
    :cond_47
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v7, 0x2

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->hasValue(Ljava/math/BigInteger;)Z

    move-result v3

    if-eqz v3, :cond_117

    .line 114
    :goto_55
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 116
    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 117
    add-int/lit8 v3, v0, 0x3

    invoke-virtual {p1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->issuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    .line 122
    add-int/lit8 v3, v0, 0x4

    invoke-virtual {p1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 124
    .local v3, "dates":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v3, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x509/Time;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Time;

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->startDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    .line 125
    invoke-virtual {v3, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x509/Time;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Time;

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->endDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    .line 127
    add-int/lit8 v4, v0, 0x5

    invoke-virtual {p1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    .line 132
    add-int/lit8 v4, v0, 0x6

    invoke-virtual {p1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->subjectPublicKeyInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 134
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    add-int/lit8 v7, v0, 0x6

    sub-int/2addr v4, v7

    sub-int/2addr v4, v5

    .line 135
    .local v4, "extras":I
    if-eqz v4, :cond_c2

    if-nez v2, :cond_ba

    goto :goto_c2

    .line 137
    :cond_ba
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v5, "version 1 certificate contains extra data"

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 140
    :cond_c2
    :goto_c2
    if-lez v4, :cond_116

    .line 142
    add-int/lit8 v7, v0, 0x6

    add-int/2addr v7, v4

    invoke-virtual {p1, v7}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    check-cast v7, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 144
    .local v7, "extra":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v8

    packed-switch v8, :pswitch_data_120

    .line 160
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

    .line 153
    :pswitch_ef
    if-nez v6, :cond_fc

    .line 157
    invoke-static {v7, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v8

    invoke-static {v8}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v8

    iput-object v8, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->extensions:Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    .line 158
    goto :goto_112

    .line 155
    :cond_fc
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v5, "version 2 certificate cannot contain extensions"

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 150
    :pswitch_104
    invoke-static {v7, v1}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v8

    iput-object v8, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->subjectUniqueId:Lcom/android/org/bouncycastle/asn1/DERBitString;

    .line 151
    goto :goto_112

    .line 147
    :pswitch_10b
    invoke-static {v7, v1}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v8

    iput-object v8, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->issuerUniqueId:Lcom/android/org/bouncycastle/asn1/DERBitString;

    .line 148
    nop

    .line 162
    :goto_112
    nop

    .end local v7    # "extra":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    add-int/lit8 v4, v4, -0x1

    .line 163
    goto :goto_c2

    .line 164
    :cond_116
    return-void

    .line 111
    .end local v3    # "dates":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v4    # "extras":I
    :cond_117
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "version number not recognised"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_120
    .packed-switch 0x1
        :pswitch_10b
        :pswitch_104
        :pswitch_ef
    .end packed-switch
.end method

.method public static blacklist getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;
    .registers 3
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 60
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .line 66
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    if-eqz v0, :cond_8

    .line 68
    move-object v0, p0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    return-object v0

    .line 70
    :cond_8
    if-eqz p0, :cond_14

    .line 72
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 75
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getEndDate()Lcom/android/org/bouncycastle/asn1/x509/Time;
    .registers 2

    .line 198
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->endDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    return-object v0
.end method

.method public blacklist getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;
    .registers 2

    .line 223
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->extensions:Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    return-object v0
.end method

.method public blacklist getIssuer()Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .registers 2

    .line 188
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->issuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public blacklist getIssuerUniqueId()Lcom/android/org/bouncycastle/asn1/DERBitString;
    .registers 2

    .line 213
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->issuerUniqueId:Lcom/android/org/bouncycastle/asn1/DERBitString;

    return-object v0
.end method

.method public blacklist getSerialNumber()Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .registers 2

    .line 178
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public blacklist getSignature()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .line 183
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public blacklist getStartDate()Lcom/android/org/bouncycastle/asn1/x509/Time;
    .registers 2

    .line 193
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->startDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    return-object v0
.end method

.method public blacklist getSubject()Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .registers 2

    .line 203
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public blacklist getSubjectPublicKeyInfo()Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .registers 2

    .line 208
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->subjectPublicKeyInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    return-object v0
.end method

.method public blacklist getSubjectUniqueId()Lcom/android/org/bouncycastle/asn1/DERBitString;
    .registers 2

    .line 218
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->subjectUniqueId:Lcom/android/org/bouncycastle/asn1/DERBitString;

    return-object v0
.end method

.method public blacklist getVersion()Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .registers 2

    .line 173
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public blacklist getVersionNumber()I
    .registers 2

    .line 168
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 7

    .line 228
    const-string v0, "com.android.org.bouncycastle.x509.allow_non-der_tbscert"

    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Properties;->getPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_93

    .line 230
    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Properties;->isOverrideSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 232
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    return-object v0

    .line 240
    :cond_11
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 243
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    sget-object v2, Lcom/android/org/bouncycastle/util/BigIntegers;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->hasValue(Ljava/math/BigInteger;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2c

    .line 245
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v1, v3, v2, v4}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 248
    :cond_2c
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 249
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 250
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->issuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 256
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v4, 0x2

    invoke-direct {v1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 257
    .local v1, "validity":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->startDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    invoke-virtual {v1, v5}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 258
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->endDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    invoke-virtual {v1, v5}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 260
    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v5, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 263
    .end local v1    # "validity":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    if-eqz v1, :cond_5b

    .line 265
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_63

    .line 269
    :cond_5b
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 272
    :goto_63
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->subjectPublicKeyInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 275
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->issuerUniqueId:Lcom/android/org/bouncycastle/asn1/DERBitString;

    if-eqz v1, :cond_74

    .line 277
    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v5, v2, v3, v1}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 281
    :cond_74
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->subjectUniqueId:Lcom/android/org/bouncycastle/asn1/DERBitString;

    if-eqz v1, :cond_80

    .line 283
    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v5, v2, v4, v1}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 286
    :cond_80
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->extensions:Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    if-eqz v1, :cond_8d

    .line 288
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4, v1}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 291
    :cond_8d
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1

    .line 237
    .end local v0    # "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_93
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
