.class public Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;
.super Ljava/lang/Object;
.source "AttributeCertificateIssuer.java"

# interfaces
.implements Ljava/security/cert/CertSelector;
.implements Lcom/android/org/bouncycastle/util/Selector;


# instance fields
.field final form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;)V
    .registers 3
    .param p1, "issuer"    # Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;->getIssuer()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/jce/X509Principal;)V
    .registers 5
    .param p1, "principal"    # Lcom/android/org/bouncycastle/jce/X509Principal;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;

    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    invoke-direct {v2, p1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/V2Form;-><init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;)V
    .registers 4
    .param p1, "principal"    # Ljavax/security/auth/x500/X500Principal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Lcom/android/org/bouncycastle/jce/X509Principal;

    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jce/X509Principal;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;-><init>(Lcom/android/org/bouncycastle/jce/X509Principal;)V

    .line 45
    return-void
.end method

.method private getNames()[Ljava/lang/Object;
    .registers 8

    .prologue
    .line 56
    iget-object v5, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    instance-of v5, v5, Lcom/android/org/bouncycastle/asn1/x509/V2Form;

    if-eqz v5, :cond_3e

    .line 58
    iget-object v5, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    check-cast v5, Lcom/android/org/bouncycastle/asn1/x509/V2Form;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->getIssuerName()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v3

    .line 65
    .local v3, "name":Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    :goto_e
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v4

    .line 67
    .local v4, "names":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    new-instance v2, Ljava/util/ArrayList;

    array-length v5, v4

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 69
    .local v2, "l":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    array-length v5, v4

    if-eq v1, v5, :cond_4d

    .line 71
    aget-object v5, v4, v1

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3b

    .line 75
    :try_start_25
    new-instance v5, Ljavax/security/auth/x500/X500Principal;

    .line 76
    aget-object v6, v4, v1

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v6

    .line 75
    invoke-direct {v5, v6}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_3b} :catch_43

    .line 69
    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 62
    .end local v1    # "i":I
    .end local v2    # "l":Ljava/util/List;
    .end local v3    # "name":Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .end local v4    # "names":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :cond_3e
    iget-object v3, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    check-cast v3, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    .restart local v3    # "name":Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    goto :goto_e

    .line 79
    .restart local v1    # "i":I
    .restart local v2    # "l":Ljava/util/List;
    .restart local v4    # "names":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :catch_43
    move-exception v0

    .line 80
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "badly formed Name object"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 85
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v2, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    return-object v5
.end method

.method private matchesDN(Ljavax/security/auth/x500/X500Principal;Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)Z
    .registers 9
    .param p1, "subject"    # Ljavax/security/auth/x500/X500Principal;
    .param p2, "targets"    # Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    .prologue
    .line 112
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v3

    .line 114
    .local v3, "names":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    array-length v4, v3

    if-eq v2, v4, :cond_2e

    .line 116
    aget-object v1, v3, v2

    .line 118
    .local v1, "gn":Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2b

    .line 122
    :try_start_11
    new-instance v4, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    invoke-virtual {v4, p1}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_25} :catch_2a

    move-result v4

    if-eqz v4, :cond_2b

    .line 124
    const/4 v4, 0x1

    return v4

    .line 128
    :catch_2a
    move-exception v0

    .line 114
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 133
    .end local v1    # "gn":Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :cond_2e
    const/4 v4, 0x0

    return v4
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 138
    new-instance v0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;

    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 179
    if-ne p1, p0, :cond_4

    .line 181
    const/4 v1, 0x1

    return v1

    .line 184
    :cond_4
    instance-of v1, p1, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;

    if-nez v1, :cond_a

    .line 186
    const/4 v1, 0x0

    return v1

    :cond_a
    move-object v0, p1

    .line 189
    check-cast v0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;

    .line 191
    .local v0, "other":Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    iget-object v2, v0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getPrincipals()[Ljava/security/Principal;
    .registers 5

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->getNames()[Ljava/lang/Object;

    move-result-object v2

    .line 97
    .local v2, "p":[Ljava/lang/Object;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v1, "l":Ljava/util/List;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    array-length v3, v2

    if-eq v0, v3, :cond_1b

    .line 101
    aget-object v3, v2, v0

    instance-of v3, v3, Ljava/security/Principal;

    if-eqz v3, :cond_18

    .line 103
    aget-object v3, v2, v0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 107
    :cond_1b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/security/Principal;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/security/Principal;

    return-object v3
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public match(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 201
    instance-of v0, p1, Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_6

    .line 203
    const/4 v0, 0x0

    return v0

    .line 206
    :cond_6
    check-cast p1, Ljava/security/cert/Certificate;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->match(Ljava/security/cert/Certificate;)Z

    move-result v0

    return v0
.end method

.method public match(Ljava/security/cert/Certificate;)Z
    .registers 8
    .param p1, "cert"    # Ljava/security/cert/Certificate;

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 143
    instance-of v4, p1, Ljava/security/cert/X509Certificate;

    if-nez v4, :cond_7

    .line 145
    return v3

    :cond_7
    move-object v2, p1

    .line 148
    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 150
    .local v2, "x509Cert":Ljava/security/cert/X509Certificate;
    iget-object v4, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    instance-of v4, v4, Lcom/android/org/bouncycastle/asn1/x509/V2Form;

    if-eqz v4, :cond_50

    .line 152
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;

    .line 153
    .local v0, "issuer":Lcom/android/org/bouncycastle/asn1/x509/V2Form;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->getBaseCertificateID()Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v4

    if-eqz v4, :cond_41

    .line 155
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->getBaseCertificateID()Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;->getSerial()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 156
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->getBaseCertificateID()Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;->getIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->matchesDN(Ljavax/security/auth/x500/X500Principal;Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)Z

    move-result v3

    .line 155
    :cond_40
    return v3

    .line 159
    :cond_41
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->getIssuerName()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v1

    .line 160
    .local v1, "name":Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-direct {p0, v4, v1}, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->matchesDN(Ljavax/security/auth/x500/X500Principal;Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 162
    return v5

    .line 167
    .end local v0    # "issuer":Lcom/android/org/bouncycastle/asn1/x509/V2Form;
    .end local v1    # "name":Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    :cond_50
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    check-cast v1, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    .line 168
    .restart local v1    # "name":Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-direct {p0, v4, v1}, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->matchesDN(Ljavax/security/auth/x500/X500Principal;Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 170
    return v5

    .line 174
    :cond_5f
    return v3
.end method
