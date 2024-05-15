.class Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;
.super Ljava/lang/Object;
.source "CertPathValidatorUtilities.java"


# static fields
.field protected static final ANY_POLICY:Ljava/lang/String; = "2.5.29.32.0"

.field protected static final AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

.field protected static final BASIC_CONSTRAINTS:Ljava/lang/String;

.field protected static final CERTIFICATE_POLICIES:Ljava/lang/String;

.field protected static final CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

.field protected static final CRL_NUMBER:Ljava/lang/String;

.field protected static final CRL_SIGN:I = 0x6

.field protected static final CRL_UTIL:Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;

.field protected static final DELTA_CRL_INDICATOR:Ljava/lang/String;

.field protected static final FRESHEST_CRL:Ljava/lang/String;

.field protected static final INHIBIT_ANY_POLICY:Ljava/lang/String;

.field protected static final ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

.field protected static final KEY_CERT_SIGN:I = 0x5

.field protected static final KEY_USAGE:Ljava/lang/String;

.field protected static final NAME_CONSTRAINTS:Ljava/lang/String;

.field protected static final POLICY_CONSTRAINTS:Ljava/lang/String;

.field protected static final POLICY_MAPPINGS:Ljava/lang/String;

.field protected static final SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

.field protected static final crlReasons:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 84
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->CRL_UTIL:Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;

    .line 86
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->certificatePolicies:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    .line 87
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->basicConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    .line 88
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->policyMappings:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    .line 89
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->subjectAlternativeName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    .line 90
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->nameConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    .line 91
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->keyUsage:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->KEY_USAGE:Ljava/lang/String;

    .line 92
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->inhibitAnyPolicy:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    .line 93
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    .line 94
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->deltaCRLIndicator:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    .line 95
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->policyConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    .line 96
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->freshestCRL:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->FRESHEST_CRL:Ljava/lang/String;

    .line 97
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->cRLDistributionPoints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    .line 98
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->authorityKeyIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

    .line 102
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->cRLNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->CRL_NUMBER:Ljava/lang/String;

    .line 110
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    .line 111
    const-string/jumbo v1, "unspecified"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 112
    const-string/jumbo v1, "keyCompromise"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 113
    const-string/jumbo v1, "cACompromise"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 114
    const-string/jumbo v1, "affiliationChanged"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 115
    const-string/jumbo v1, "superseded"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 116
    const-string/jumbo v1, "cessationOfOperation"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 117
    const-string/jumbo v1, "certificateHold"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 118
    const-string/jumbo v1, "unknown"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 119
    const-string/jumbo v1, "removeFromCRL"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 120
    const-string/jumbo v1, "privilegeWithdrawn"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 121
    const-string/jumbo v1, "aACompromise"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 110
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->crlReasons:[Ljava/lang/String;

    .line 82
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkCRLsNotEmpty(Ljava/util/Set;Ljava/lang/Object;)V
    .registers 8
    .param p0, "crls"    # Ljava/util/Set;
    .param p1, "cert"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 1343
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_67

    .line 1345
    instance-of v2, p1, Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    if-eqz v2, :cond_39

    move-object v0, p1

    .line 1347
    check-cast v0, Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    .line 1349
    .local v0, "aCert":Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No CRLs found for issuer \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;->getIssuer()Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->getPrincipals()[Ljava/security/Principal;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v0    # "aCert":Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;
    :cond_39
    move-object v1, p1

    .line 1353
    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 1355
    .local v1, "xCert":Ljava/security/cert/X509Certificate;
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No CRLs found for issuer \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->INSTANCE:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    invoke-static {v1}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;->toString(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1358
    .end local v1    # "xCert":Ljava/security/cert/X509Certificate;
    :cond_67
    return-void
.end method

.method protected static findCertificates(Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)Ljava/util/Collection;
    .registers 9
    .param p0, "certSelect"    # Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    .param p1, "certStores"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 653
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 654
    .local v1, "certs":Ljava/util/Set;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 656
    .local v3, "iter":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_28

    .line 658
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "obj":Ljava/lang/Object;
    move-object v0, v4

    .line 677
    check-cast v0, Ljava/security/cert/CertStore;

    .line 681
    .local v0, "certStore":Ljava/security/cert/CertStore;
    :try_start_16
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;->getCertificates(Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/security/cert/CertStore;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_1d
    .catch Ljava/security/cert/CertStoreException; {:try_start_16 .. :try_end_1d} :catch_1e

    goto :goto_9

    .line 684
    :catch_1e
    move-exception v2

    .line 685
    .local v2, "e":Ljava/security/cert/CertStoreException;
    new-instance v5, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    .line 686
    const-string/jumbo v6, "Problem while picking certificates from certificate store."

    .line 685
    invoke-direct {v5, v6, v2}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 691
    .end local v0    # "certStore":Ljava/security/cert/CertStore;
    .end local v2    # "e":Ljava/security/cert/CertStoreException;
    .end local v4    # "obj":Ljava/lang/Object;
    :cond_28
    return-object v1
.end method

.method static findIssuerCerts(Ljava/security/cert/X509Certificate;Ljava/util/List;Ljava/util/List;)Ljava/util/Collection;
    .registers 18
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/org/bouncycastle/jcajce/PKIXCertStore;",
            ">;)",
            "Ljava/util/Collection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 1266
    .local p1, "certStores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    .local p2, "pkixCertStores":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/jcajce/PKIXCertStore;>;"
    new-instance v12, Ljava/security/cert/X509CertSelector;

    invoke-direct {v12}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 1270
    .local v12, "selector":Ljava/security/cert/X509CertSelector;
    :try_start_5
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getEncoded()[B

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/security/cert/X509CertSelector;->setSubject([B)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_10} :catch_70

    .line 1280
    :try_start_10
    sget-object v13, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

    invoke-virtual {p0, v13}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v2

    .line 1281
    .local v2, "akiExtensionValue":[B
    if-eqz v2, :cond_36

    .line 1283
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    .line 1284
    .local v1, "aki":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v13

    invoke-static {v13}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v3

    .line 1285
    .local v3, "authorityKeyIdentifier":[B
    if-eqz v3, :cond_36

    .line 1287
    new-instance v13, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v13, v3}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v13}, Lcom/android/org/bouncycastle/asn1/DEROctetString;->getEncoded()[B

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/security/cert/X509CertSelector;->setSubjectKeyIdentifier([B)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_36} :catch_85

    .line 1296
    .end local v1    # "aki":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .end local v2    # "akiExtensionValue":[B
    .end local v3    # "authorityKeyIdentifier":[B
    :cond_36
    :goto_36
    new-instance v13, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;

    invoke-direct {v13, v12}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;-><init>(Ljava/security/cert/CertSelector;)V

    invoke-virtual {v13}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;->build()Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v4

    .line 1297
    .local v4, "certSelect":Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1303
    .local v5, "certs":Ljava/util/Set;
    :try_start_44
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1305
    .local v11, "matches":Ljava/util/List;
    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1306
    move-object/from16 v0, p2

    invoke-static {v4, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1308
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_5e
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_44 .. :try_end_5e} :catch_7a

    move-result-object v10

    .line 1315
    .local v10, "iter":Ljava/util/Iterator;
    const/4 v9, 0x0

    .line 1316
    :goto_60
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_84

    .line 1318
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/security/cert/X509Certificate;

    .line 1321
    .local v9, "issuer":Ljava/security/cert/X509Certificate;
    invoke-interface {v5, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_60

    .line 1273
    .end local v4    # "certSelect":Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    .end local v5    # "certs":Ljava/util/Set;
    .end local v9    # "issuer":Ljava/security/cert/X509Certificate;
    .end local v10    # "iter":Ljava/util/Iterator;
    .end local v11    # "matches":Ljava/util/List;
    :catch_70
    move-exception v7

    .line 1274
    .local v7, "e":Ljava/io/IOException;
    new-instance v13, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    .line 1275
    const-string/jumbo v14, "Subject criteria for certificate selector to find issuer certificate could not be set."

    .line 1274
    invoke-direct {v13, v14, v7}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    .line 1311
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v4    # "certSelect":Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    .restart local v5    # "certs":Ljava/util/Set;
    :catch_7a
    move-exception v6

    .line 1312
    .local v6, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v13, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string/jumbo v14, "Issuer certificate cannot be searched."

    invoke-direct {v13, v14, v6}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    .line 1323
    .end local v6    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v10    # "iter":Ljava/util/Iterator;
    .restart local v11    # "matches":Ljava/util/List;
    :cond_84
    return-object v5

    .line 1292
    .end local v4    # "certSelect":Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    .end local v5    # "certs":Ljava/util/Set;
    .end local v10    # "iter":Ljava/util/Iterator;
    .end local v11    # "matches":Ljava/util/List;
    :catch_85
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    goto :goto_36
.end method

.method protected static findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;)Ljava/security/cert/TrustAnchor;
    .registers 3
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p1, "trustAnchors"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Ljava/security/cert/TrustAnchor;

    move-result-object v0

    return-object v0
.end method

.method protected static findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Ljava/security/cert/TrustAnchor;
    .registers 15
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p1, "trustAnchors"    # Ljava/util/Set;
    .param p2, "sigProvider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 163
    const/4 v8, 0x0

    .line 164
    .local v8, "trust":Ljava/security/cert/TrustAnchor;
    const/4 v9, 0x0

    .line 165
    .local v9, "trustPublicKey":Ljava/security/PublicKey;
    const/4 v6, 0x0

    .line 167
    .local v6, "invalidKeyEx":Ljava/lang/Exception;
    new-instance v2, Ljava/security/cert/X509CertSelector;

    invoke-direct {v2}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 168
    .local v2, "certSelectX509":Ljava/security/cert/X509CertSelector;
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    .line 172
    .local v1, "certIssuer":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    :try_start_c
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getEncoded()[B

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/security/cert/X509CertSelector;->setSubject([B)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_13} :catch_48

    .line 179
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 180
    .end local v6    # "invalidKeyEx":Ljava/lang/Exception;
    .end local v8    # "trust":Ljava/security/cert/TrustAnchor;
    .end local v9    # "trustPublicKey":Ljava/security/PublicKey;
    .local v7, "iter":Ljava/util/Iterator;
    :cond_17
    :goto_17
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_76

    if-nez v8, :cond_76

    .line 182
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/cert/TrustAnchor;

    .line 183
    .local v8, "trust":Ljava/security/cert/TrustAnchor;
    invoke-virtual {v8}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v10

    if-eqz v10, :cond_54

    .line 185
    invoke-virtual {v8}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/security/cert/X509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v10

    if-eqz v10, :cond_52

    .line 187
    invoke-virtual {v8}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v10

    invoke-virtual {v10}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v9

    .line 219
    .end local v8    # "trust":Ljava/security/cert/TrustAnchor;
    :goto_3d
    if-eqz v9, :cond_17

    .line 223
    :try_start_3f
    invoke-static {p0, v9, p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->verifyX509Certificate(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_42} :catch_43

    goto :goto_17

    .line 226
    :catch_43
    move-exception v4

    .line 227
    .local v4, "ex":Ljava/lang/Exception;
    move-object v6, v4

    .line 228
    .local v6, "invalidKeyEx":Ljava/lang/Exception;
    const/4 v8, 0x0

    .line 229
    .local v8, "trust":Ljava/security/cert/TrustAnchor;
    const/4 v9, 0x0

    .restart local v9    # "trustPublicKey":Ljava/security/PublicKey;
    goto :goto_17

    .line 175
    .end local v4    # "ex":Ljava/lang/Exception;
    .end local v7    # "iter":Ljava/util/Iterator;
    .local v6, "invalidKeyEx":Ljava/lang/Exception;
    :catch_48
    move-exception v3

    .line 176
    .local v3, "ex":Ljava/io/IOException;
    new-instance v10, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string/jumbo v11, "Cannot set subject search criteria for trust anchor."

    invoke-direct {v10, v11, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 191
    .end local v3    # "ex":Ljava/io/IOException;
    .end local v6    # "invalidKeyEx":Ljava/lang/Exception;
    .end local v9    # "trustPublicKey":Ljava/security/PublicKey;
    .restart local v7    # "iter":Ljava/util/Iterator;
    .local v8, "trust":Ljava/security/cert/TrustAnchor;
    :cond_52
    const/4 v8, 0x0

    .local v8, "trust":Ljava/security/cert/TrustAnchor;
    goto :goto_3d

    .line 194
    .local v8, "trust":Ljava/security/cert/TrustAnchor;
    :cond_54
    invoke-virtual {v8}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_74

    .line 195
    invoke-virtual {v8}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v10

    if-eqz v10, :cond_74

    .line 199
    :try_start_60
    invoke-static {v8}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getCA(Ljava/security/cert/TrustAnchor;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    .line 200
    .local v0, "caName":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    invoke-virtual {v1, v0}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6f

    .line 202
    invoke-virtual {v8}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;
    :try_end_6d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_60 .. :try_end_6d} :catch_71

    move-result-object v9

    .local v9, "trustPublicKey":Ljava/security/PublicKey;
    goto :goto_3d

    .line 206
    .end local v9    # "trustPublicKey":Ljava/security/PublicKey;
    :cond_6f
    const/4 v8, 0x0

    .local v8, "trust":Ljava/security/cert/TrustAnchor;
    goto :goto_3d

    .line 210
    .end local v0    # "caName":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .local v8, "trust":Ljava/security/cert/TrustAnchor;
    :catch_71
    move-exception v5

    .line 211
    .local v5, "ex":Ljava/lang/IllegalArgumentException;
    const/4 v8, 0x0

    .local v8, "trust":Ljava/security/cert/TrustAnchor;
    goto :goto_3d

    .line 216
    .end local v5    # "ex":Ljava/lang/IllegalArgumentException;
    .local v8, "trust":Ljava/security/cert/TrustAnchor;
    :cond_74
    const/4 v8, 0x0

    .local v8, "trust":Ljava/security/cert/TrustAnchor;
    goto :goto_3d

    .line 234
    .end local v8    # "trust":Ljava/security/cert/TrustAnchor;
    :cond_76
    if-nez v8, :cond_83

    if-eqz v6, :cond_83

    .line 236
    new-instance v10, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string/jumbo v11, "TrustAnchor found but certificate validation failed."

    invoke-direct {v10, v11, v6}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 239
    :cond_83
    return-object v8
.end method

.method static getAdditionalStoresFromAltNames([BLjava/util/Map;)Ljava/util/List;
    .registers 9
    .param p0, "issuerAlternativeName"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map",
            "<",
            "Lcom/android/org/bouncycastle/asn1/x509/GeneralName;",
            "Lcom/android/org/bouncycastle/jcajce/PKIXCertStore;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/org/bouncycastle/jcajce/PKIXCertStore;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 249
    .local p1, "altNameCertStoreMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/bouncycastle/asn1/x509/GeneralName;Lorg/bouncycastle/jcajce/PKIXCertStore;>;"
    if-eqz p0, :cond_2c

    .line 251
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v3

    .line 253
    .local v3, "issuerAltName":Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v4

    .line 254
    .local v4, "names":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .local v5, "stores":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/jcajce/PKIXCertStore;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_18
    array-length v6, v4

    if-eq v2, v6, :cond_2b

    .line 258
    aget-object v0, v4, v2

    .line 260
    .local v0, "altName":Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/jcajce/PKIXCertStore;

    .line 262
    .local v1, "altStore":Lcom/android/org/bouncycastle/jcajce/PKIXCertStore;
    if-eqz v1, :cond_28

    .line 264
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 268
    .end local v0    # "altName":Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .end local v1    # "altStore":Lcom/android/org/bouncycastle/jcajce/PKIXCertStore;
    :cond_2b
    return-object v5

    .line 272
    .end local v2    # "i":I
    .end local v3    # "issuerAltName":Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .end local v4    # "names":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .end local v5    # "stores":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/jcajce/PKIXCertStore;>;"
    :cond_2c
    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v6
.end method

.method static getAdditionalStoresFromCRLDistributionPoint(Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;Ljava/util/Map;)Ljava/util/List;
    .registers 12
    .param p0, "crldp"    # Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/org/bouncycastle/asn1/x509/GeneralName;",
            "Lcom/android/org/bouncycastle/jcajce/PKIXCRLStore;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/org/bouncycastle/jcajce/PKIXCRLStore;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 697
    .local p1, "namedCRLStoreMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/bouncycastle/asn1/x509/GeneralName;Lorg/bouncycastle/jcajce/PKIXCRLStore;>;"
    if-eqz p0, :cond_4c

    .line 699
    const/4 v1, 0x0

    .line 702
    .local v1, "dps":[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    :try_start_3
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_3e

    move-result-object v1

    .line 709
    .local v1, "dps":[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 711
    .local v7, "stores":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/jcajce/PKIXCRLStore;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_d
    array-length v8, v1

    if-ge v4, v8, :cond_4b

    .line 713
    aget-object v8, v1, v4

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v0

    .line 715
    .local v0, "dpn":Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;
    if-eqz v0, :cond_48

    .line 717
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v8

    if-nez v8, :cond_48

    .line 720
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v8

    .line 719
    invoke-static {v8}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v3

    .line 722
    .local v3, "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2b
    array-length v8, v3

    if-ge v5, v8, :cond_48

    .line 724
    aget-object v8, v3, v5

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStore;

    .line 725
    .local v6, "store":Lcom/android/org/bouncycastle/jcajce/PKIXCRLStore;
    if-eqz v6, :cond_3b

    .line 727
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 722
    :cond_3b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    .line 705
    .end local v0    # "dpn":Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;
    .end local v3    # "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v6    # "store":Lcom/android/org/bouncycastle/jcajce/PKIXCRLStore;
    .end local v7    # "stores":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/jcajce/PKIXCRLStore;>;"
    .local v1, "dps":[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    :catch_3e
    move-exception v2

    .line 706
    .local v2, "e":Ljava/lang/Exception;
    new-instance v8, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    .line 707
    const-string/jumbo v9, "Distribution points could not be read."

    .line 706
    invoke-direct {v8, v9, v2}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 711
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "dpn":Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;
    .local v1, "dps":[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .restart local v4    # "i":I
    .restart local v7    # "stores":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/jcajce/PKIXCRLStore;>;"
    :cond_48
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 734
    .end local v0    # "dpn":Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;
    :cond_4b
    return-object v7

    .line 738
    .end local v1    # "dps":[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .end local v4    # "i":I
    .end local v7    # "stores":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/jcajce/PKIXCRLStore;>;"
    :cond_4c
    sget-object v8, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v8
.end method

.method protected static getAlgorithmIdentifier(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 6
    .param p0, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 340
    :try_start_0
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 342
    .local v0, "aIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v2

    .line 344
    .local v2, "info":Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_16

    move-result-object v3

    return-object v3

    .line 347
    .end local v0    # "aIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v2    # "info":Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    :catch_16
    move-exception v1

    .line 348
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string/jumbo v4, "Subject public key cannot be decoded."

    invoke-direct {v3, v4, v1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected static getCRLIssuersFromDistributionPoint(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/util/Collection;Ljava/security/cert/X509CRLSelector;)V
    .registers 11
    .param p0, "dp"    # Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .param p1, "issuerPrincipals"    # Ljava/util/Collection;
    .param p2, "selector"    # Ljava/security/cert/X509CRLSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 764
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 766
    .local v3, "issuers":Ljava/util/List;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v6

    if-eqz v6, :cond_42

    .line 768
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v2

    .line 770
    .local v2, "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_14
    array-length v6, v2

    if-ge v5, v6, :cond_63

    .line 772
    aget-object v6, v2, v5

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_35

    .line 776
    :try_start_20
    aget-object v6, v2, v5

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_35} :catch_38

    .line 770
    :cond_35
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 780
    :catch_38
    move-exception v0

    .line 781
    .local v0, "e":Ljava/io/IOException;
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    .line 782
    const-string/jumbo v7, "CRL issuer information from distribution point cannot be decoded."

    .line 781
    invoke-direct {v6, v7, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 794
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .end local v5    # "j":I
    :cond_42
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v6

    if-nez v6, :cond_51

    .line 796
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    .line 797
    const-string/jumbo v7, "CRL issuer is omitted from distribution point but no distributionPoint field present."

    .line 796
    invoke-direct {v6, v7}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 800
    :cond_51
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "it":Ljava/util/Iterator;
    :goto_55
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_63

    .line 802
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_55

    .line 849
    .end local v4    # "it":Ljava/util/Iterator;
    :cond_63
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 850
    .restart local v4    # "it":Ljava/util/Iterator;
    :goto_67
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_85

    .line 854
    :try_start_6d
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getEncoded()[B

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/security/cert/X509CRLSelector;->addIssuerName([B)V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_7a} :catch_7b

    goto :goto_67

    .line 857
    :catch_7b
    move-exception v1

    .line 858
    .local v1, "ex":Ljava/io/IOException;
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    .line 859
    const-string/jumbo v7, "Cannot decode CRL issuer information."

    .line 858
    invoke-direct {v6, v7, v1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 862
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_85
    return-void
.end method

.method protected static getCertStatus(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/org/bouncycastle/jce/provider/CertStatus;)V
    .registers 16
    .param p0, "validDate"    # Ljava/util/Date;
    .param p1, "crl"    # Ljava/security/cert/X509CRL;
    .param p2, "cert"    # Ljava/lang/Object;
    .param p3, "certStatus"    # Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 877
    const/4 v2, 0x0

    .line 882
    .local v2, "crl_entry":Ljava/security/cert/X509CRLEntry;
    :try_start_1
    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->isIndirectCRL(Ljava/security/cert/X509CRL;)Z
    :try_end_4
    .catch Ljava/security/cert/CRLException; {:try_start_1 .. :try_end_4} :catch_12

    move-result v5

    .line 889
    .local v5, "isIndirect":Z
    if-eqz v5, :cond_3a

    .line 891
    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getSerialNumber(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/security/cert/X509CRL;->getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;

    move-result-object v2

    .line 893
    .local v2, "crl_entry":Ljava/security/cert/X509CRLEntry;
    if-nez v2, :cond_1c

    .line 895
    return-void

    .line 885
    .end local v5    # "isIndirect":Z
    .local v2, "crl_entry":Ljava/security/cert/X509CRLEntry;
    :catch_12
    move-exception v4

    .line 886
    .local v4, "exception":Ljava/security/cert/CRLException;
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string/jumbo v8, "Failed check for indirect CRL."

    invoke-direct {v7, v8, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 897
    .end local v4    # "exception":Ljava/security/cert/CRLException;
    .local v2, "crl_entry":Ljava/security/cert/X509CRLEntry;
    .restart local v5    # "isIndirect":Z
    :cond_1c
    invoke-virtual {v2}, Ljava/security/cert/X509CRLEntry;->getCertificateIssuer()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    .line 899
    .local v1, "certificateIssuer":Ljavax/security/auth/x500/X500Principal;
    if-nez v1, :cond_31

    .line 901
    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    .line 908
    .local v0, "certIssuer":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    :goto_26
    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_54

    .line 910
    return-void

    .line 905
    .end local v0    # "certIssuer":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    :cond_31
    invoke-virtual {v1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    .restart local v0    # "certIssuer":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    goto :goto_26

    .line 913
    .end local v0    # "certIssuer":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .end local v1    # "certificateIssuer":Ljavax/security/auth/x500/X500Principal;
    .local v2, "crl_entry":Ljava/security/cert/X509CRLEntry;
    :cond_3a
    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v7

    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_49

    .line 915
    return-void

    .line 919
    :cond_49
    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getSerialNumber(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/security/cert/X509CRL;->getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;

    move-result-object v2

    .line 921
    .local v2, "crl_entry":Ljava/security/cert/X509CRLEntry;
    if-nez v2, :cond_54

    .line 923
    return-void

    .line 927
    :cond_54
    const/4 v6, 0x0

    .line 928
    .local v6, "reasonCode":Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;
    invoke-virtual {v2}, Ljava/security/cert/X509CRLEntry;->hasExtensions()Z

    move-result v7

    if-eqz v7, :cond_69

    .line 935
    :try_start_5b
    sget-object v7, Lcom/android/org/bouncycastle/asn1/x509/Extension;->reasonCode:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    .line 933
    invoke-static {v2, v7}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    .line 932
    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_68} :catch_93

    move-result-object v6

    .line 947
    .end local v6    # "reasonCode":Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;
    :cond_69
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v2}, Ljava/security/cert/X509CRLEntry;->getRevocationDate()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-gez v7, :cond_9d

    const/4 v7, 0x1

    :goto_7a
    if-eqz v7, :cond_7e

    .line 948
    if-nez v6, :cond_9f

    .line 956
    :cond_7e
    :goto_7e
    if-eqz v6, :cond_cc

    .line 958
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    invoke-virtual {p3, v7}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->setCertStatus(I)V

    .line 965
    :goto_8b
    invoke-virtual {v2}, Ljava/security/cert/X509CRLEntry;->getRevocationDate()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {p3, v7}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->setRevocationDate(Ljava/util/Date;)V

    .line 967
    :cond_92
    return-void

    .line 938
    .restart local v6    # "reasonCode":Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;
    :catch_93
    move-exception v3

    .line 939
    .local v3, "e":Ljava/lang/Exception;
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    .line 940
    const-string/jumbo v8, "Reason code CRL entry extension could not be decoded."

    .line 939
    invoke-direct {v7, v8, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 947
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "reasonCode":Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;
    :cond_9d
    const/4 v7, 0x0

    goto :goto_7a

    .line 949
    :cond_9f
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    if-eqz v7, :cond_7e

    .line 950
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_7e

    .line 951
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_7e

    .line 952
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_92

    goto :goto_7e

    .line 963
    :cond_cc
    const/4 v7, 0x0

    invoke-virtual {p3, v7}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->setCertStatus(I)V

    goto :goto_8b
.end method

.method protected static getCompleteCRLs(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/util/Date;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/Set;
    .registers 13
    .param p0, "dp"    # Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .param p1, "cert"    # Ljava/lang/Object;
    .param p2, "currentDate"    # Ljava/util/Date;
    .param p3, "paramsPKIX"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 1086
    new-instance v0, Ljava/security/cert/X509CRLSelector;

    invoke-direct {v0}, Ljava/security/cert/X509CRLSelector;-><init>()V

    .line 1090
    .local v0, "baseCrlSelect":Ljava/security/cert/X509CRLSelector;
    :try_start_5
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1092
    .local v4, "issuers":Ljava/util/Set;
    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1094
    invoke-static {p0, v4, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getCRLIssuersFromDistributionPoint(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/util/Collection;Ljava/security/cert/X509CRLSelector;)V
    :try_end_14
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_5 .. :try_end_14} :catch_49

    .line 1102
    instance-of v6, p1, Ljava/security/cert/X509Certificate;

    if-eqz v6, :cond_1e

    move-object v6, p1

    .line 1104
    check-cast v6, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v6}, Ljava/security/cert/X509CRLSelector;->setCertificateChecking(Ljava/security/cert/X509Certificate;)V

    .line 1107
    :cond_1e
    new-instance v6, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;

    invoke-direct {v6, v0}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;-><init>(Ljava/security/cert/CRLSelector;)V

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->setCompleteCRLEnabled(Z)Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->build()Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;

    move-result-object v1

    .line 1109
    .local v1, "crlSelect":Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;
    move-object v5, p2

    .line 1111
    .local v5, "validityDate":Ljava/util/Date;
    invoke-virtual {p3}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getDate()Ljava/util/Date;

    move-result-object v6

    if-eqz v6, :cond_37

    .line 1113
    invoke-virtual {p3}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getDate()Ljava/util/Date;

    move-result-object v5

    .line 1116
    :cond_37
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->CRL_UTIL:Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;

    invoke-virtual {p3}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    move-result-object v7

    invoke-virtual {p3}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCRLStores()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v6, v1, v5, v7, v8}, Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;->findCRLs(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;Ljava/util/Date;Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v2

    .line 1118
    .local v2, "crls":Ljava/util/Set;
    invoke-static {v2, p1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->checkCRLsNotEmpty(Ljava/util/Set;Ljava/lang/Object;)V

    .line 1120
    return-object v2

    .line 1097
    .end local v1    # "crlSelect":Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;
    .end local v2    # "crls":Ljava/util/Set;
    .end local v4    # "issuers":Ljava/util/Set;
    .end local v5    # "validityDate":Ljava/util/Date;
    :catch_49
    move-exception v3

    .line 1098
    .local v3, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    .line 1099
    const-string/jumbo v7, "Could not get issuer information from distribution point."

    .line 1098
    invoke-direct {v6, v7, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method protected static getDeltaCRLs(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/util/List;Ljava/util/List;)Ljava/util/Set;
    .registers 22
    .param p0, "validityDate"    # Ljava/util/Date;
    .param p1, "completeCRL"    # Ljava/security/cert/X509CRL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/security/cert/X509CRL;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/org/bouncycastle/jcajce/PKIXCRLStore;",
            ">;)",
            "Ljava/util/Set;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 982
    .local p2, "certStores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    .local p3, "pkixCrlStores":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/jcajce/PKIXCRLStore;>;"
    new-instance v4, Ljava/security/cert/X509CRLSelector;

    invoke-direct {v4}, Ljava/security/cert/X509CRLSelector;-><init>()V

    .line 986
    .local v4, "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    :try_start_5
    invoke-static/range {p1 .. p1}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getEncoded()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/security/cert/X509CRLSelector;->addIssuerName([B)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_12} :catch_7e

    .line 995
    const/4 v5, 0x0

    .line 999
    .local v5, "completeCRLNumber":Ljava/math/BigInteger;
    :try_start_13
    sget-object v16, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->CRL_NUMBER:Ljava/lang/String;

    .line 998
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v8

    .line 1000
    .local v8, "derObject":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    if-eqz v8, :cond_27

    .line 1002
    invoke-static {v8}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_26} :catch_8c

    move-result-object v5

    .line 1012
    .end local v5    # "completeCRLNumber":Ljava/math/BigInteger;
    :cond_27
    const/4 v11, 0x0

    .line 1015
    .local v11, "idp":[B
    :try_start_28
    sget-object v16, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_31} :catch_9a

    move-result-object v11

    .line 1026
    .local v11, "idp":[B
    if-nez v5, :cond_a8

    const/16 v16, 0x0

    :goto_36
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/security/cert/X509CRLSelector;->setMinCRLNumber(Ljava/math/BigInteger;)V

    .line 1029
    new-instance v14, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;

    invoke-direct {v14, v4}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;-><init>(Ljava/security/cert/CRLSelector;)V

    .line 1031
    .local v14, "selBuilder":Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;
    invoke-virtual {v14, v11}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->setIssuingDistributionPoint([B)V

    .line 1032
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->setIssuingDistributionPointEnabled(Z)V

    .line 1035
    invoke-virtual {v14, v5}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->setMaxBaseCRLNumber(Ljava/math/BigInteger;)V

    .line 1037
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->build()Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;

    move-result-object v7

    .line 1040
    .local v7, "deltaSelect":Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;
    sget-object v16, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->CRL_UTIL:Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v7, v1, v2, v3}, Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;->findCRLs(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;Ljava/util/Date;Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v15

    .line 1042
    .local v15, "temp":Ljava/util/Set;
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 1044
    .local v13, "result":Ljava/util/Set;
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "it":Ljava/util/Iterator;
    :cond_68
    :goto_68
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_b5

    .line 1046
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509CRL;

    .line 1048
    .local v6, "crl":Ljava/security/cert/X509CRL;
    invoke-static {v6}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isDeltaCRL(Ljava/security/cert/X509CRL;)Z

    move-result v16

    if-eqz v16, :cond_68

    .line 1050
    invoke-interface {v13, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_68

    .line 989
    .end local v6    # "crl":Ljava/security/cert/X509CRL;
    .end local v7    # "deltaSelect":Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;
    .end local v8    # "derObject":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .end local v11    # "idp":[B
    .end local v12    # "it":Ljava/util/Iterator;
    .end local v13    # "result":Ljava/util/Set;
    .end local v14    # "selBuilder":Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;
    .end local v15    # "temp":Ljava/util/Set;
    :catch_7e
    move-exception v9

    .line 990
    .local v9, "e":Ljava/io/IOException;
    new-instance v16, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string/jumbo v17, "Cannot extract issuer from CRL."

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v9}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v16

    .line 1006
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v5    # "completeCRLNumber":Ljava/math/BigInteger;
    :catch_8c
    move-exception v10

    .line 1007
    .local v10, "e":Ljava/lang/Exception;
    new-instance v16, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    .line 1008
    const-string/jumbo v17, "CRL number extension could not be extracted from CRL."

    .line 1007
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v10}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v16

    .line 1018
    .end local v5    # "completeCRLNumber":Ljava/math/BigInteger;
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v8    # "derObject":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .local v11, "idp":[B
    :catch_9a
    move-exception v10

    .line 1019
    .restart local v10    # "e":Ljava/lang/Exception;
    new-instance v16, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    .line 1020
    const-string/jumbo v17, "Issuing distribution point extension value could not be read."

    .line 1019
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v10}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v16

    .line 1027
    .end local v10    # "e":Ljava/lang/Exception;
    .local v11, "idp":[B
    :cond_a8
    const-wide/16 v16, 0x1

    invoke-static/range {v16 .. v17}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v16

    .line 1026
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v16

    goto :goto_36

    .line 1054
    .restart local v7    # "deltaSelect":Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;
    .restart local v12    # "it":Ljava/util/Iterator;
    .restart local v13    # "result":Ljava/util/Set;
    .restart local v14    # "selBuilder":Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;
    .restart local v15    # "temp":Ljava/util/Set;
    :cond_b5
    return-object v13
.end method

.method protected static getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 4
    .param p0, "ext"    # Ljava/security/cert/X509Extension;
    .param p1, "oid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 306
    invoke-interface {p0, p1}, Ljava/security/cert/X509Extension;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    .line 307
    .local v0, "bytes":[B
    if-nez v0, :cond_8

    .line 309
    return-object v1

    .line 312
    :cond_8
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getObject(Ljava/lang/String;[B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    return-object v1
.end method

.method protected static getNextWorkingKey(Ljava/util/List;ILcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/security/PublicKey;
    .registers 18
    .param p0, "certs"    # Ljava/util/List;
    .param p1, "index"    # I
    .param p2, "helper"    # Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1211
    invoke-interface/range {p0 .. p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/Certificate;

    .line 1212
    .local v1, "cert":Ljava/security/cert/Certificate;
    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v10

    .line 1213
    .local v10, "pubKey":Ljava/security/PublicKey;
    instance-of v11, v10, Ljava/security/interfaces/DSAPublicKey;

    if-nez v11, :cond_f

    .line 1215
    return-object v10

    :cond_f
    move-object v3, v10

    .line 1217
    check-cast v3, Ljava/security/interfaces/DSAPublicKey;

    .line 1218
    .local v3, "dsaPubKey":Ljava/security/interfaces/DSAPublicKey;
    invoke-interface {v3}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v11

    if-eqz v11, :cond_19

    .line 1220
    return-object v3

    .line 1222
    :cond_19
    add-int/lit8 v6, p1, 0x1

    .local v6, "i":I
    :goto_1b
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v11

    if-ge v6, v11, :cond_76

    .line 1224
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509Certificate;

    .line 1225
    .local v8, "parentCert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v10

    .line 1226
    instance-of v11, v10, Ljava/security/interfaces/DSAPublicKey;

    if-nez v11, :cond_38

    .line 1228
    new-instance v11, Ljava/security/cert/CertPathValidatorException;

    .line 1229
    const-string/jumbo v12, "DSA parameters cannot be inherited from previous certificate."

    .line 1228
    invoke-direct {v11, v12}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_38
    move-object v9, v10

    .line 1231
    check-cast v9, Ljava/security/interfaces/DSAPublicKey;

    .line 1232
    .local v9, "prevDSAPubKey":Ljava/security/interfaces/DSAPublicKey;
    invoke-interface {v9}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v11

    if-nez v11, :cond_44

    .line 1222
    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    .line 1236
    :cond_44
    invoke-interface {v9}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v2

    .line 1237
    .local v2, "dsaParams":Ljava/security/interfaces/DSAParams;
    new-instance v4, Ljava/security/spec/DSAPublicKeySpec;

    .line 1238
    invoke-interface {v3}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v11

    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v12

    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v13

    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v14

    .line 1237
    invoke-direct {v4, v11, v12, v13, v14}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 1241
    .local v4, "dsaPubKeySpec":Ljava/security/spec/DSAPublicKeySpec;
    :try_start_5d
    const-string/jumbo v11, "DSA"

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v7

    .line 1242
    .local v7, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v7, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_69} :catch_6b

    move-result-object v11

    return-object v11

    .line 1245
    .end local v7    # "keyFactory":Ljava/security/KeyFactory;
    :catch_6b
    move-exception v5

    .line 1246
    .local v5, "exception":Ljava/lang/Exception;
    new-instance v11, Ljava/lang/RuntimeException;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1249
    .end local v2    # "dsaParams":Ljava/security/interfaces/DSAParams;
    .end local v4    # "dsaPubKeySpec":Ljava/security/spec/DSAPublicKeySpec;
    .end local v5    # "exception":Ljava/lang/Exception;
    .end local v8    # "parentCert":Ljava/security/cert/X509Certificate;
    .end local v9    # "prevDSAPubKey":Ljava/security/interfaces/DSAPublicKey;
    :cond_76
    new-instance v11, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v12, "DSA parameters cannot be inherited from previous certificate."

    invoke-direct {v11, v12}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v11
.end method

.method private static getObject(Ljava/lang/String;[B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 8
    .param p0, "oid"    # Ljava/lang/String;
    .param p1, "ext"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 322
    :try_start_0
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 323
    .local v0, "aIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 325
    .local v2, "octs":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    .end local v0    # "aIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 326
    .restart local v0    # "aIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_19

    move-result-object v3

    return-object v3

    .line 329
    .end local v0    # "aIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v2    # "octs":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    :catch_19
    move-exception v1

    .line 330
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "exception processing extension "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected static final getQualifierSet(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;
    .registers 8
    .param p0, "qualifiers"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 362
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 364
    .local v4, "pq":Ljava/util/Set;
    if-nez p0, :cond_8

    .line 366
    return-object v4

    .line 369
    :cond_8
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 370
    .local v1, "bOut":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 372
    .local v0, "aOut":Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v2

    .line 374
    .local v2, "e":Ljava/util/Enumeration;
    :goto_16
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 378
    :try_start_1c
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 380
    new-instance v5, Ljava/security/cert/PolicyQualifierInfo;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/cert/PolicyQualifierInfo;-><init>([B)V

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_31} :catch_35

    .line 387
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_16

    .line 383
    :catch_35
    move-exception v3

    .line 384
    .local v3, "ex":Ljava/io/IOException;
    new-instance v5, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string/jumbo v6, "Policy qualifier info cannot be decoded."

    invoke-direct {v5, v6, v3}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 390
    .end local v3    # "ex":Ljava/io/IOException;
    :cond_3f
    return-object v4
.end method

.method private static getSerialNumber(Ljava/lang/Object;)Ljava/math/BigInteger;
    .registers 2
    .param p0, "cert"    # Ljava/lang/Object;

    .prologue
    .line 867
    check-cast p0, Ljava/security/cert/X509Certificate;

    .end local p0    # "cert":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method protected static getValidCertDateFromValidityModel(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/security/cert/CertPath;I)Ljava/util/Date;
    .registers 10
    .param p0, "paramsPKIX"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .param p1, "certPath"    # Ljava/security/cert/CertPath;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 1127
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getValidityModel()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_7a

    .line 1130
    if-gtz p2, :cond_e

    .line 1132
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getValidDate(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/Date;

    move-result-object v5

    return-object v5

    .line 1137
    :cond_e
    add-int/lit8 v5, p2, -0x1

    if-nez v5, :cond_69

    .line 1139
    const/4 v0, 0x0

    .line 1142
    .local v0, "dateOfCertgen":Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;
    :try_start_13
    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v5

    add-int/lit8 v6, p2, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    sget-object v6, Lcom/android/org/bouncycastle/asn1/isismtt/ISISMTTObjectIdentifiers;->id_isismtt_at_dateOfCertGen:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v4

    .line 1143
    .local v4, "extBytes":[B
    if-eqz v4, :cond_33

    .line 1145
    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_32} :catch_44
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_32} :catch_3a

    move-result-object v0

    .line 1158
    .end local v0    # "dateOfCertgen":Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;
    :cond_33
    if-eqz v0, :cond_58

    .line 1162
    :try_start_35
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->getDate()Ljava/util/Date;
    :try_end_38
    .catch Ljava/text/ParseException; {:try_start_35 .. :try_end_38} :catch_4e

    move-result-object v5

    return-object v5

    .line 1154
    .end local v4    # "extBytes":[B
    .restart local v0    # "dateOfCertgen":Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;
    :catch_3a
    move-exception v2

    .line 1155
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    .line 1156
    const-string/jumbo v6, "Date of cert gen extension could not be read."

    .line 1155
    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1149
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_44
    move-exception v1

    .line 1150
    .local v1, "e":Ljava/io/IOException;
    new-instance v5, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    .line 1151
    const-string/jumbo v6, "Date of cert gen extension could not be read."

    .line 1150
    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1165
    .end local v0    # "dateOfCertgen":Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "extBytes":[B
    :catch_4e
    move-exception v3

    .line 1166
    .local v3, "e":Ljava/text/ParseException;
    new-instance v5, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    .line 1167
    const-string/jumbo v6, "Date from date of cert gen extension could not be parsed."

    .line 1166
    invoke-direct {v5, v6, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 1171
    .end local v3    # "e":Ljava/text/ParseException;
    :cond_58
    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v5

    .line 1172
    add-int/lit8 v6, p2, -0x1

    .line 1171
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v5

    return-object v5

    .line 1176
    .end local v4    # "extBytes":[B
    :cond_69
    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v5

    .line 1177
    add-int/lit8 v6, p2, -0x1

    .line 1176
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v5

    return-object v5

    .line 1183
    :cond_7a
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getValidDate(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/Date;

    move-result-object v5

    return-object v5
.end method

.method protected static getValidDate(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/Date;
    .registers 2
    .param p0, "paramsPKIX"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getDate()Ljava/util/Date;

    move-result-object v0

    .line 280
    .local v0, "validDate":Ljava/util/Date;
    if-nez v0, :cond_b

    .line 282
    new-instance v0, Ljava/util/Date;

    .end local v0    # "validDate":Ljava/util/Date;
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 285
    .restart local v0    # "validDate":Ljava/util/Date;
    :cond_b
    return-object v0
.end method

.method protected static isAnyPolicy(Ljava/util/Set;)Z
    .registers 2
    .param p0, "policySet"    # Ljava/util/Set;

    .prologue
    .line 635
    if-eqz p0, :cond_10

    const-string/jumbo v0, "2.5.29.32.0"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x1

    goto :goto_f
.end method

.method private static isDeltaCRL(Ljava/security/cert/X509CRL;)Z
    .registers 3
    .param p0, "crl"    # Ljava/security/cert/X509CRL;

    .prologue
    .line 1059
    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    .line 1061
    .local v0, "critical":Ljava/util/Set;
    if-nez v0, :cond_8

    .line 1063
    const/4 v1, 0x0

    return v1

    .line 1066
    :cond_8
    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method protected static isSelfIssued(Ljava/security/cert/X509Certificate;)Z
    .registers 3
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 290
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected static prepareNextCertB1(I[Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Ljava/security/cert/X509Certificate;)V
    .registers 24
    .param p0, "i"    # I
    .param p1, "policyNodes"    # [Ljava/util/List;
    .param p2, "id_p"    # Ljava/lang/String;
    .param p3, "m_idp"    # Ljava/util/Map;
    .param p4, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;,
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 516
    const/4 v14, 0x0

    .line 517
    .local v14, "idp_found":Z
    aget-object v3, p1, p0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 518
    .local v16, "nodes_i":Ljava/util/Iterator;
    :cond_7
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 520
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 521
    .local v15, "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 523
    const/4 v14, 0x1

    .line 524
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    iput-object v3, v15, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->expectedPolicies:Ljava/util/Set;

    .line 529
    .end local v15    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_2c
    if-nez v14, :cond_cd

    .line 531
    aget-object v3, p1, p0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 532
    :cond_34
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_cd

    .line 534
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 535
    .restart local v15    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    const-string/jumbo v3, "2.5.29.32.0"

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 537
    const/4 v7, 0x0

    .line 538
    .local v7, "pq":Ljava/util/Set;
    const/16 v18, 0x0

    .line 541
    .local v18, "policies":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_50
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-static {v0, v3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_5b} :catch_ce

    move-result-object v18

    .line 547
    .local v18, "policies":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v11

    .line 548
    .local v11, "e":Ljava/util/Enumeration;
    :cond_60
    invoke-interface {v11}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_89

    .line 550
    const/16 v17, 0x0

    .line 554
    .local v17, "pinfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    :try_start_68
    invoke-interface {v11}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6f} :catch_d8

    move-result-object v17

    .line 560
    .local v17, "pinfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    const-string/jumbo v3, "2.5.29.32.0"

    invoke-virtual/range {v17 .. v17}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 564
    :try_start_81
    invoke-virtual/range {v17 .. v17}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getQualifierSet(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;
    :try_end_88
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_81 .. :try_end_88} :catch_e2

    move-result-object v7

    .line 574
    .end local v7    # "pq":Ljava/util/Set;
    .end local v17    # "pinfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    :cond_89
    const/4 v9, 0x0

    .line 575
    .local v9, "ci":Z
    invoke-virtual/range {p4 .. p4}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_9a

    .line 577
    invoke-virtual/range {p4 .. p4}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v3

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    .line 580
    .end local v9    # "ci":Z
    :cond_9a
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v6

    check-cast v6, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 581
    .local v6, "p_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    const-string/jumbo v3, "2.5.29.32.0"

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cd

    .line 583
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 584
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 585
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    move/from16 v4, p0

    move-object/from16 v8, p2

    .line 583
    invoke-direct/range {v2 .. v9}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 587
    .local v2, "c_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v6, v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 588
    aget-object v3, p1, p0

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 594
    .end local v2    # "c_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v6    # "p_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v11    # "e":Ljava/util/Enumeration;
    .end local v15    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v18    # "policies":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_cd
    return-void

    .line 544
    .restart local v7    # "pq":Ljava/util/Set;
    .restart local v15    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v18, "policies":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_ce
    move-exception v10

    .line 545
    .local v10, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string/jumbo v4, "Certificate policies cannot be decoded."

    invoke-direct {v3, v4, v10}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 557
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v11    # "e":Ljava/util/Enumeration;
    .local v17, "pinfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    .local v18, "policies":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_d8
    move-exception v12

    .line 558
    .local v12, "ex":Ljava/lang/Exception;
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string/jumbo v4, "Policy information cannot be decoded."

    invoke-direct {v3, v4, v12}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 567
    .end local v12    # "ex":Ljava/lang/Exception;
    .local v17, "pinfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    :catch_e2
    move-exception v13

    .line 568
    .local v13, "ex":Ljava/security/cert/CertPathValidatorException;
    new-instance v3, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    .line 569
    const-string/jumbo v4, "Policy qualifier info set could not be built."

    .line 568
    invoke-direct {v3, v4, v13}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected static prepareNextCertB2(I[Ljava/util/List;Ljava/lang/String;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .registers 12
    .param p0, "i"    # I
    .param p1, "policyNodes"    # [Ljava/util/List;
    .param p2, "id_p"    # Ljava/lang/String;
    .param p3, "validPolicyTree"    # Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .prologue
    .line 602
    aget-object v7, p1, p0

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 603
    .local v5, "nodes_i":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4d

    .line 605
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 606
    .local v2, "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 608
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v6

    check-cast v6, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 609
    .local v6, "p_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v6, v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->removeChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 610
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 611
    add-int/lit8 v0, p0, -0x1

    .local v0, "k":I
    :goto_2a
    if-ltz v0, :cond_6

    .line 613
    aget-object v4, p1, v0

    .line 614
    .local v4, "nodes":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "l":I
    :goto_2f
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_47

    .line 616
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 617
    .local v3, "node2":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v7

    if-nez v7, :cond_4a

    .line 619
    invoke-static {p3, p1, v3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object p3

    .line 620
    if-nez p3, :cond_4a

    .line 611
    .end local v3    # "node2":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_47
    add-int/lit8 v0, v0, -0x1

    goto :goto_2a

    .line 614
    .restart local v3    # "node2":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 629
    .end local v0    # "k":I
    .end local v1    # "l":I
    .end local v2    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v3    # "node2":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v4    # "nodes":Ljava/util/List;
    .end local v6    # "p_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_4d
    return-object p3
.end method

.method protected static processCertD1i(I[Ljava/util/List;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Set;)Z
    .registers 15
    .param p0, "index"    # I
    .param p1, "policyNodes"    # [Ljava/util/List;
    .param p2, "pOid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p3, "pq"    # Ljava/util/Set;

    .prologue
    const/4 v7, 0x0

    .line 447
    add-int/lit8 v1, p0, -0x1

    aget-object v10, p1, v1

    .line 449
    .local v10, "policyNodeVec":Ljava/util/List;
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_6
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_49

    .line 451
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 452
    .local v4, "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getExpectedPolicies()Ljava/util/Set;

    move-result-object v8

    .line 454
    .local v8, "expectedPolicies":Ljava/util/Set;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 456
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 457
    .local v3, "childExpectedPolicies":Ljava/util/Set;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 459
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 464
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    move v2, p0

    move-object v5, p3

    .line 459
    invoke-direct/range {v0 .. v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 466
    .local v0, "child":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 467
    aget-object v1, p1, p0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    const/4 v1, 0x1

    return v1

    .line 449
    .end local v0    # "child":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v3    # "childExpectedPolicies":Ljava/util/Set;
    :cond_46
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 473
    .end local v4    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v8    # "expectedPolicies":Ljava/util/Set;
    :cond_49
    return v7
.end method

.method protected static processCertD1ii(I[Ljava/util/List;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Set;)V
    .registers 14
    .param p0, "index"    # I
    .param p1, "policyNodes"    # [Ljava/util/List;
    .param p2, "_poid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p3, "_pq"    # Ljava/util/Set;

    .prologue
    .line 482
    add-int/lit8 v1, p0, -0x1

    aget-object v9, p1, v1

    .line 484
    .local v9, "policyNodeVec":Ljava/util/List;
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_5
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_47

    .line 486
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 488
    .local v4, "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    const-string/jumbo v1, "2.5.29.32.0"

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 490
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 491
    .local v3, "_childExpectedPolicies":Ljava/util/Set;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 493
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 498
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    .line 499
    const/4 v7, 0x0

    move v2, p0

    move-object v5, p3

    .line 493
    invoke-direct/range {v0 .. v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 500
    .local v0, "_child":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 501
    aget-object v1, p1, p0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    return-void

    .line 484
    .end local v0    # "_child":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v3    # "_childExpectedPolicies":Ljava/util/Set;
    :cond_44
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 505
    .end local v4    # "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_47
    return-void
.end method

.method protected static removePolicyNode(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .registers 7
    .param p0, "validPolicyTree"    # Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .param p1, "policyNodes"    # [Ljava/util/List;
    .param p2, "_node"    # Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .prologue
    const/4 v3, 0x0

    .line 398
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 400
    .local v0, "_parent":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    if-nez p0, :cond_a

    .line 402
    return-object v3

    .line 405
    :cond_a
    if-nez v0, :cond_1b

    .line 407
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_d
    array-length v2, p1

    if-ge v1, v2, :cond_1a

    .line 409
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, p1, v1

    .line 407
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 412
    :cond_1a
    return-object v3

    .line 416
    .end local v1    # "j":I
    :cond_1b
    invoke-virtual {v0, p2}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->removeChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 417
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNodeRecurse([Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 419
    return-object p0
.end method

.method private static removePolicyNodeRecurse([Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V
    .registers 5
    .param p0, "policyNodes"    # [Ljava/util/List;
    .param p1, "_node"    # Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .prologue
    .line 427
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getDepth()I

    move-result v2

    aget-object v2, p0, v2

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 429
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 431
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v1

    .line 432
    .local v1, "_iter":Ljava/util/Iterator;
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 434
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 435
    .local v0, "_child":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNodeRecurse([Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    goto :goto_13

    .line 438
    .end local v0    # "_child":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v1    # "_iter":Ljava/util/Iterator;
    :cond_23
    return-void
.end method

.method protected static verifyX509Certificate(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    .registers 3
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 1330
    if-nez p2, :cond_6

    .line 1332
    invoke-virtual {p0, p1}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    .line 1338
    :goto_5
    return-void

    .line 1336
    :cond_6
    invoke-virtual {p0, p1, p2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V

    goto :goto_5
.end method
