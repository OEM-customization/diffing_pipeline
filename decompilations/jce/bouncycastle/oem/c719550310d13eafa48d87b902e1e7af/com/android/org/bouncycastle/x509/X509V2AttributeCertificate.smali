.class public Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;
.super Ljava/lang/Object;
.source "X509V2AttributeCertificate.java"

# interfaces
.implements Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;


# instance fields
.field private cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

.field private notAfter:Ljava/util/Date;

.field private notBefore:Ljava/util/Date;


# direct methods
.method constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;)V
    .registers 5
    .param p1, "cert"    # Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    .line 85
    :try_start_5
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getAttrCertValidityPeriod()Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;->getNotAfterTime()Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->getDate()Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->notAfter:Ljava/util/Date;

    .line 86
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getAttrCertValidityPeriod()Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;->getNotBeforeTime()Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->getDate()Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->notBefore:Ljava/util/Date;
    :try_end_29
    .catch Ljava/text/ParseException; {:try_start_5 .. :try_end_29} :catch_2a

    .line 92
    return-void

    .line 89
    :catch_2a
    move-exception v0

    .line 90
    .local v0, "e":Ljava/text/ParseException;
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "invalid data structure in certificate!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "encIn"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-static {p1}, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->getObject(Ljava/io/InputStream;)Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;)V

    .line 68
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3
    .param p1, "encoded"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;-><init>(Ljava/io/InputStream;)V

    .line 75
    return-void
.end method

.method private getExtensionOIDs(Z)Ljava/util/Set;
    .registers 9
    .param p1, "critical"    # Z

    .prologue
    const/4 v6, 0x0

    .line 235
    iget-object v5, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v2

    .line 237
    .local v2, "extensions":Lcom/android/org/bouncycastle/asn1/x509/Extensions;
    if-eqz v2, :cond_35

    .line 239
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 240
    .local v4, "set":Ljava/util/Set;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v0

    .line 242
    .local v0, "e":Ljava/util/Enumeration;
    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_34

    .line 244
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 245
    .local v3, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    move-result-object v1

    .line 247
    .local v1, "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    move-result v5

    if-ne v5, p1, :cond_16

    .line 249
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 253
    .end local v1    # "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    .end local v3    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_34
    return-object v4

    .line 256
    .end local v0    # "e":Ljava/util/Enumeration;
    .end local v4    # "set":Ljava/util/Set;
    :cond_35
    return-object v6
.end method

.method private static getObject(Ljava/io/InputStream;)Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;
    .registers 6
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    :try_start_0
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v2, p0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_e

    move-result-object v2

    return-object v2

    .line 58
    :catch_e
    move-exception v1

    .line 59
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "exception decoding certificate structure: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 54
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2d
    move-exception v0

    .line 55
    .local v0, "e":Ljava/io/IOException;
    throw v0
.end method


# virtual methods
.method public checkValidity()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .prologue
    .line 147
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->checkValidity(Ljava/util/Date;)V

    .line 148
    return-void
.end method

.method public checkValidity(Ljava/util/Date;)V
    .registers 5
    .param p1, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->getNotAfter()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 156
    new-instance v0, Ljava/security/cert/CertificateExpiredException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "certificate expired on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->getNotAfter()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateExpiredException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_28
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->getNotBefore()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 161
    new-instance v0, Ljava/security/cert/CertificateNotYetValidException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "certificate not valid till "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->getNotBefore()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_50
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 314
    if-ne p1, p0, :cond_5

    .line 316
    const/4 v4, 0x1

    return v4

    .line 319
    :cond_5
    instance-of v4, p1, Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    if-nez v4, :cond_a

    .line 321
    return v5

    :cond_a
    move-object v3, p1

    .line 324
    check-cast v3, Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    .line 328
    .local v3, "other":Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;
    :try_start_d
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->getEncoded()[B

    move-result-object v0

    .line 329
    .local v0, "b1":[B
    invoke-interface {v3}, Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;->getEncoded()[B

    move-result-object v1

    .line 331
    .local v1, "b2":[B
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_18} :catch_1a

    move-result v4

    return v4

    .line 334
    .end local v0    # "b1":[B
    .end local v1    # "b2":[B
    :catch_1a
    move-exception v2

    .line 335
    .local v2, "e":Ljava/io/IOException;
    return v5
.end method

.method public getAttributes()[Lcom/android/org/bouncycastle/x509/X509Attribute;
    .registers 6

    .prologue
    .line 278
    iget-object v3, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    .line 279
    .local v2, "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    new-array v0, v3, [Lcom/android/org/bouncycastle/x509/X509Attribute;

    .line 281
    .local v0, "attrs":[Lcom/android/org/bouncycastle/x509/X509Attribute;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    if-eq v1, v3, :cond_25

    .line 283
    new-instance v3, Lcom/android/org/bouncycastle/x509/X509Attribute;

    invoke-virtual {v2, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/x509/X509Attribute;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    aput-object v3, v0, v1

    .line 281
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 286
    :cond_25
    return-object v0
.end method

.method public getAttributes(Ljava/lang/String;)[Lcom/android/org/bouncycastle/x509/X509Attribute;
    .registers 7
    .param p1, "oid"    # Ljava/lang/String;

    .prologue
    .line 291
    iget-object v4, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3

    .line 292
    .local v3, "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .local v2, "list":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    if-eq v1, v4, :cond_2f

    .line 296
    new-instance v0, Lcom/android/org/bouncycastle/x509/X509Attribute;

    invoke-virtual {v3, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/android/org/bouncycastle/x509/X509Attribute;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 297
    .local v0, "attr":Lcom/android/org/bouncycastle/x509/X509Attribute;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/x509/X509Attribute;->getOID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 299
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 303
    .end local v0    # "attr":Lcom/android/org/bouncycastle/x509/X509Attribute;
    :cond_2f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_37

    .line 305
    const/4 v4, 0x0

    return-object v4

    .line 308
    :cond_37
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/android/org/bouncycastle/x509/X509Attribute;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/org/bouncycastle/x509/X509Attribute;

    return-object v4
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    .prologue
    .line 266
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->getExtensionOIDs(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .registers 8
    .param p1, "oid"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 210
    iget-object v3, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v2

    .line 212
    .local v2, "extensions":Lcom/android/org/bouncycastle/asn1/x509/Extensions;
    if-eqz v2, :cond_43

    .line 214
    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v3, p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    move-result-object v1

    .line 216
    .local v1, "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    if-eqz v1, :cond_43

    .line 220
    :try_start_18
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v3

    const-string/jumbo v4, "DER"

    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getEncoded(Ljava/lang/String;)[B
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_22} :catch_24

    move-result-object v3

    return-object v3

    .line 223
    :catch_24
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "error encoding "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 229
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    :cond_43
    return-object v4
.end method

.method public getHolder()Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;
    .registers 3

    .prologue
    .line 106
    new-instance v1, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;

    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getHolder()Lcom/android/org/bouncycastle/asn1/x509/Holder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v1
.end method

.method public getIssuer()Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;
    .registers 3

    .prologue
    .line 111
    new-instance v0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;

    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getIssuer()Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;)V

    return-object v0
.end method

.method public getIssuerUniqueID()[Z
    .registers 9

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 126
    iget-object v4, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getIssuerUniqueID()Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v3

    .line 128
    .local v3, "id":Lcom/android/org/bouncycastle/asn1/DERBitString;
    if-eqz v3, :cond_36

    .line 130
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v1

    .line 131
    .local v1, "bytes":[B
    array-length v4, v1

    mul-int/lit8 v4, v4, 0x8

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getPadBits()I

    move-result v6

    sub-int/2addr v4, v6

    new-array v0, v4, [Z

    .line 133
    .local v0, "boolId":[Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1d
    array-length v4, v0

    if-eq v2, v4, :cond_35

    .line 135
    div-int/lit8 v4, v2, 0x8

    aget-byte v4, v1, v4

    rem-int/lit8 v6, v2, 0x8

    const/16 v7, 0x80

    ushr-int v6, v7, v6

    and-int/2addr v4, v6

    if-eqz v4, :cond_33

    const/4 v4, 0x1

    :goto_2e
    aput-boolean v4, v0, v2

    .line 133
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_33
    move v4, v5

    .line 135
    goto :goto_2e

    .line 138
    :cond_35
    return-object v0

    .line 141
    .end local v0    # "boolId":[Z
    .end local v1    # "bytes":[B
    .end local v2    # "i":I
    :cond_36
    return-object v6
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    .prologue
    .line 261
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->getExtensionOIDs(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getNotAfter()Ljava/util/Date;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->notAfter:Ljava/util/Date;

    return-object v0
.end method

.method public getNotBefore()Ljava/util/Date;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->notBefore:Ljava/util/Date;

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getSerialNumber()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()[B
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getSignatureValue()Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getOctets()[B

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getVersion()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .registers 3

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    .line 273
    .local v0, "extensions":Ljava/util/Set;
    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 343
    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([B)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    return v1

    .line 346
    :catch_9
    move-exception v0

    .line 347
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return v1
.end method

.method public final verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .registers 7
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 176
    const/4 v1, 0x0

    .line 178
    .local v1, "signature":Ljava/security/Signature;
    iget-object v2, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getSignature()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 180
    new-instance v2, Ljava/security/cert/CertificateException;

    const-string/jumbo v3, "Signature algorithm in certificate info not same as outer certificate"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 183
    :cond_20
    iget-object v2, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 185
    .local v1, "signature":Ljava/security/Signature;
    invoke-virtual {v1, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 189
    :try_start_35
    iget-object v2, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->update([B)V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_42} :catch_55

    .line 196
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->getSignature()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->verify([B)Z

    move-result v2

    if-nez v2, :cond_5f

    .line 198
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string/jumbo v3, "Public key presented not for certificate signature"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 192
    :catch_55
    move-exception v0

    .line 193
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/security/SignatureException;

    const-string/jumbo v3, "Exception encoding certificate info object"

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 200
    .end local v0    # "e":Ljava/io/IOException;
    :cond_5f
    return-void
.end method
