.class public Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "CertificationRequestInfo.java"


# instance fields
.field attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

.field subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

.field subjectPKInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

.field version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 9
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 103
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 39
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 42
    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 106
    invoke-virtual {p1, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 108
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    .line 109
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->subjectPKInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 115
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-le v1, v6, :cond_41

    .line 117
    invoke-virtual {p1, v6}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 118
    .local v0, "tagobj":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-static {v0, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 121
    .end local v0    # "tagobj":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    :cond_41
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->validateAttributes(Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    .line 123
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    if-eqz v1, :cond_4e

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    if-nez v1, :cond_57

    .line 125
    :cond_4e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Not all mandatory fields set in CertificationRequestInfo generator."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 123
    :cond_57
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->subjectPKInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    if-eqz v1, :cond_4e

    .line 127
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x500/X500Name;Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V
    .registers 8
    .param p1, "subject"    # Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .param p2, "pkInfo"    # Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .param p3, "attributes"    # Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 39
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 42
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 77
    if-eqz p1, :cond_13

    if-nez p2, :cond_1c

    .line 79
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Not all mandatory fields set in CertificationRequestInfo generator."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_1c
    invoke-static {p3}, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->validateAttributes(Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    .line 84
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    .line 85
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->subjectPKInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 86
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 87
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/X509Name;Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V
    .registers 5
    .param p1, "subject"    # Lcom/android/org/bouncycastle/asn1/x509/X509Name;
    .param p2, "pkInfo"    # Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .param p3, "attributes"    # Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .prologue
    .line 97
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;-><init>(Lcom/android/org/bouncycastle/asn1/x500/X500Name;Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    .line 98
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 47
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    if-eqz v0, :cond_8

    .line 49
    check-cast p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    .line 51
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_8
    if-eqz p0, :cond_14

    .line 53
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 56
    :cond_14
    return-object v1
.end method

.method private static validateAttributes(Lcom/android/org/bouncycastle/asn1/ASN1Set;)V
    .registers 5
    .param p0, "attributes"    # Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .prologue
    .line 167
    if-nez p0, :cond_3

    .line 169
    return-void

    .line 172
    :cond_3
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "en":Ljava/util/Enumeration;
    :cond_7
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 174
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/Attribute;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/Attribute;

    move-result-object v0

    .line 175
    .local v0, "attr":Lcom/android/org/bouncycastle/asn1/pkcs/Attribute;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/Attribute;->getAttrType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sget-object v3, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_challengePassword:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 177
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/Attribute;->getAttrValues()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_7

    .line 179
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "challengePassword attribute must have one value"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 183
    .end local v0    # "attr":Lcom/android/org/bouncycastle/asn1/pkcs/Attribute;
    :cond_35
    return-void
.end method


# virtual methods
.method public getAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getSubject()Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public getSubjectPublicKeyInfo()Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->subjectPKInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    return-object v0
.end method

.method public getVersion()Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 151
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 153
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 154
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 155
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->subjectPKInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 157
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_23

    .line 159
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v3, v3, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 162
    :cond_23
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
