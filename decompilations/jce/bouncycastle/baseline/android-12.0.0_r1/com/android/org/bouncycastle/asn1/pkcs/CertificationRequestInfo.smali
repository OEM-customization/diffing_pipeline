.class public Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "CertificationRequestInfo.java"


# instance fields
.field blacklist attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

.field blacklist subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

.field blacklist subjectPKInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

.field blacklist version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 107
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 41
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 108
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 110
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    .line 111
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->subjectPKInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 117
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_41

    .line 119
    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 120
    .local v1, "tagobj":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 123
    .end local v1    # "tagobj":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    :cond_41
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->validateAttributes(Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    .line 125
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->subjectPKInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    if-eqz v0, :cond_53

    .line 129
    return-void

    .line 127
    :cond_53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not all mandatory fields set in CertificationRequestInfo generator."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/x500/X500Name;Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V
    .registers 7
    .param p1, "subject"    # Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .param p2, "pkInfo"    # Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .param p3, "attributes"    # Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 78
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 41
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 79
    if-eqz p1, :cond_1d

    if-eqz p2, :cond_1d

    .line 84
    invoke-static {p3}, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->validateAttributes(Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    .line 86
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    .line 87
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->subjectPKInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 88
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 89
    return-void

    .line 81
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not all mandatory fields set in CertificationRequestInfo generator."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/x509/X509Name;Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V
    .registers 5
    .param p1, "subject"    # Lcom/android/org/bouncycastle/asn1/x509/X509Name;
    .param p2, "pkInfo"    # Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .param p3, "attributes"    # Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 99
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;-><init>(Lcom/android/org/bouncycastle/asn1/x500/X500Name;Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    .line 100
    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .line 49
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    if-eqz v0, :cond_8

    .line 51
    move-object v0, p0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    return-object v0

    .line 53
    :cond_8
    if-eqz p0, :cond_14

    .line 55
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 58
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist validateAttributes(Lcom/android/org/bouncycastle/asn1/ASN1Set;)V
    .registers 5
    .param p0, "attributes"    # Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 169
    if-nez p0, :cond_3

    .line 171
    return-void

    .line 174
    :cond_3
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "en":Ljava/util/Enumeration;
    :goto_7
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 176
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/Attribute;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/Attribute;

    move-result-object v1

    .line 177
    .local v1, "attr":Lcom/android/org/bouncycastle/asn1/pkcs/Attribute;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/Attribute;->getAttrType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sget-object v3, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_challengePassword:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 179
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/Attribute;->getAttrValues()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2d

    goto :goto_35

    .line 181
    :cond_2d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "challengePassword attribute must have one value"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 184
    .end local v1    # "attr":Lcom/android/org/bouncycastle/asn1/pkcs/Attribute;
    :cond_35
    :goto_35
    goto :goto_7

    .line 185
    .end local v0    # "en":Ljava/util/Enumeration;
    :cond_36
    return-void
.end method


# virtual methods
.method public blacklist getAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .registers 2

    .line 148
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public blacklist getSubject()Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .registers 2

    .line 138
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public blacklist getSubjectPublicKeyInfo()Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .registers 2

    .line 143
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->subjectPKInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    return-object v0
.end method

.method public blacklist getVersion()Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 5

    .line 153
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 155
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 156
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 157
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->subjectPKInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 159
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_22

    .line 161
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v1}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 164
    :cond_22
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
