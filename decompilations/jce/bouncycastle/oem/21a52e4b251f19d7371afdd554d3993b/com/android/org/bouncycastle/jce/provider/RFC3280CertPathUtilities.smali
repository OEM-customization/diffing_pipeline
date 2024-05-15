.class Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;
.super Ljava/lang/Object;
.source "RFC3280CertPathUtilities.java"


# static fields
.field public static final blacklist ANY_POLICY:Ljava/lang/String; = "2.5.29.32.0"

.field public static final blacklist AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

.field public static final blacklist BASIC_CONSTRAINTS:Ljava/lang/String;

.field public static final blacklist CERTIFICATE_POLICIES:Ljava/lang/String;

.field public static final blacklist CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

.field public static final blacklist CRL_NUMBER:Ljava/lang/String;

.field protected static final blacklist CRL_SIGN:I = 0x6

.field private static final blacklist CRL_UTIL:Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;

.field public static final blacklist DELTA_CRL_INDICATOR:Ljava/lang/String;

.field public static final blacklist FRESHEST_CRL:Ljava/lang/String;

.field public static final blacklist INHIBIT_ANY_POLICY:Ljava/lang/String;

.field public static final blacklist ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

.field protected static final blacklist KEY_CERT_SIGN:I = 0x5

.field public static final blacklist KEY_USAGE:Ljava/lang/String;

.field public static final blacklist NAME_CONSTRAINTS:Ljava/lang/String;

.field public static final blacklist POLICY_CONSTRAINTS:Ljava/lang/String;

.field public static final blacklist POLICY_MAPPINGS:Ljava/lang/String;

.field public static final blacklist SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

.field protected static final blacklist crlReasons:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 12

    .line 68
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_UTIL:Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;

    .line 390
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->certificatePolicies:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    .line 392
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->policyMappings:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    .line 394
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->inhibitAnyPolicy:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    .line 396
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    .line 398
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->freshestCRL:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->FRESHEST_CRL:Ljava/lang/String;

    .line 400
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->deltaCRLIndicator:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    .line 402
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->policyConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    .line 404
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->basicConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    .line 406
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->cRLDistributionPoints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    .line 408
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->subjectAlternativeName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    .line 410
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->nameConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    .line 412
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->authorityKeyIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

    .line 414
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->keyUsage:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->KEY_USAGE:Ljava/lang/String;

    .line 416
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->cRLNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_NUMBER:Ljava/lang/String;

    .line 2324
    const-string v1, "unspecified"

    const-string v2, "keyCompromise"

    const-string v3, "cACompromise"

    const-string v4, "affiliationChanged"

    const-string v5, "superseded"

    const-string v6, "cessationOfOperation"

    const-string v7, "certificateHold"

    const-string v8, "unknown"

    const-string v9, "removeFromCRL"

    const-string v10, "privilegeWithdrawn"

    const-string v11, "aACompromise"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->crlReasons:[Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist checkCRL(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lcom/android/org/bouncycastle/jce/provider/CertStatus;Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;Ljava/util/List;Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;)V
    .registers 32
    .param p0, "dp"    # Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .param p1, "paramsPKIX"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .param p2, "cert"    # Ljava/security/cert/X509Certificate;
    .param p3, "validDate"    # Ljava/util/Date;
    .param p4, "defaultCRLSignCert"    # Ljava/security/cert/X509Certificate;
    .param p5, "defaultCRLSignKey"    # Ljava/security/PublicKey;
    .param p6, "certStatus"    # Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    .param p7, "reasonMask"    # Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
    .param p8, "certPathCerts"    # Ljava/util/List;
    .param p9, "helper"    # Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 1768
    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    move-object v14, v0

    .line 1769
    .local v14, "currentDate":Ljava/util/Date;
    invoke-virtual/range {p3 .. p3}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_14e

    .line 1782
    invoke-static {v1, v10, v14, v9}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getCompleteCRLs(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/util/Date;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/Set;

    move-result-object v15

    .line 1783
    .local v15, "crls":Ljava/util/Set;
    const/4 v0, 0x0

    .line 1784
    .local v0, "validCrlFound":Z
    const/4 v2, 0x0

    .line 1785
    .local v2, "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move/from16 v17, v0

    move-object/from16 v18, v2

    .line 1787
    .end local v0    # "validCrlFound":Z
    .end local v2    # "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .local v16, "crl_iter":Ljava/util/Iterator;
    .local v17, "validCrlFound":Z
    .local v18, "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :goto_30
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_147

    invoke-virtual/range {p6 .. p6}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v0

    const/16 v8, 0xb

    if-ne v0, v8, :cond_147

    invoke-virtual/range {p7 .. p7}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v0

    if-nez v0, :cond_147

    .line 1791
    :try_start_44
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CRL;

    .line 1794
    .local v0, "crl":Ljava/security/cert/X509CRL;
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLD(Ljava/security/cert/X509CRL;Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;)Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    move-result-object v2

    move-object v7, v2

    .line 1802
    .local v7, "interimReasonsMask":Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
    invoke-virtual {v7, v13}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->hasNewReasons(Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;)Z

    move-result v2
    :try_end_53
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_44 .. :try_end_53} :catch_13c

    if-nez v2, :cond_56

    .line 1804
    goto :goto_30

    .line 1808
    :cond_56
    move-object v2, v0

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p1

    move-object/from16 v19, v15

    move-object v15, v7

    .end local v7    # "interimReasonsMask":Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
    .local v15, "interimReasonsMask":Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
    .local v19, "crls":Ljava/util/Set;
    move-object/from16 v7, p8

    move v13, v8

    move-object/from16 v8, p9

    :try_start_67
    invoke-static/range {v2 .. v8}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLF(Ljava/security/cert/X509CRL;Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/List;Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/util/Set;

    move-result-object v2

    .line 1811
    .local v2, "keys":Ljava/util/Set;
    invoke-static {v0, v2}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLG(Ljava/security/cert/X509CRL;Ljava/util/Set;)Ljava/security/PublicKey;

    move-result-object v3

    .line 1813
    .local v3, "key":Ljava/security/PublicKey;
    const/4 v4, 0x0

    .line 1815
    .local v4, "deltaCRL":Ljava/security/cert/X509CRL;
    move-object v5, v14

    .line 1817
    .local v5, "validityDate":Ljava/util/Date;
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getDate()Ljava/util/Date;

    move-result-object v6

    if-eqz v6, :cond_7c

    .line 1819
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getDate()Ljava/util/Date;

    move-result-object v6

    move-object v5, v6

    .line 1822
    :cond_7c
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->isUseDeltasEnabled()Z

    move-result v6

    if-eqz v6, :cond_93

    .line 1825
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCRLStores()Ljava/util/List;

    move-result-object v7

    invoke-static {v5, v0, v6, v7}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getDeltaCRLs(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v6

    .line 1828
    .local v6, "deltaCRLs":Ljava/util/Set;
    invoke-static {v6, v3}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLH(Ljava/util/Set;Ljava/security/PublicKey;)Ljava/security/cert/X509CRL;

    move-result-object v7

    move-object v4, v7

    .line 1844
    .end local v6    # "deltaCRLs":Ljava/util/Set;
    :cond_93
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getValidityModel()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_b7

    .line 1851
    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    cmp-long v6, v6, v20

    if-ltz v6, :cond_af

    goto :goto_b7

    .line 1853
    :cond_af
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "No valid CRL for current time found."

    invoke-direct {v6, v7}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    .end local v14    # "currentDate":Ljava/util/Date;
    .end local v16    # "crl_iter":Ljava/util/Iterator;
    .end local v17    # "validCrlFound":Z
    .end local v18    # "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .end local v19    # "crls":Ljava/util/Set;
    .end local p0    # "dp":Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .end local p1    # "paramsPKIX":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local p2    # "cert":Ljava/security/cert/X509Certificate;
    .end local p3    # "validDate":Ljava/util/Date;
    .end local p4    # "defaultCRLSignCert":Ljava/security/cert/X509Certificate;
    .end local p5    # "defaultCRLSignKey":Ljava/security/PublicKey;
    .end local p6    # "certStatus":Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    .end local p7    # "reasonMask":Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
    .end local p8    # "certPathCerts":Ljava/util/List;
    .end local p9    # "helper":Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;
    throw v6

    .line 1857
    .restart local v14    # "currentDate":Ljava/util/Date;
    .restart local v16    # "crl_iter":Ljava/util/Iterator;
    .restart local v17    # "validCrlFound":Z
    .restart local v18    # "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v19    # "crls":Ljava/util/Set;
    .restart local p0    # "dp":Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .restart local p1    # "paramsPKIX":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local p2    # "cert":Ljava/security/cert/X509Certificate;
    .restart local p3    # "validDate":Ljava/util/Date;
    .restart local p4    # "defaultCRLSignCert":Ljava/security/cert/X509Certificate;
    .restart local p5    # "defaultCRLSignKey":Ljava/security/PublicKey;
    .restart local p6    # "certStatus":Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    .restart local p7    # "reasonMask":Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
    .restart local p8    # "certPathCerts":Ljava/util/List;
    .restart local p9    # "helper":Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;
    :cond_b7
    :goto_b7
    invoke-static {v1, v10, v0}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLB1(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V

    .line 1860
    invoke-static {v1, v10, v0}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLB2(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V

    .line 1863
    invoke-static {v4, v0, v9}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLC(Ljava/security/cert/X509CRL;Ljava/security/cert/X509CRL;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)V

    .line 1866
    invoke-static {v11, v4, v10, v12, v9}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLI(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/org/bouncycastle/jce/provider/CertStatus;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)V

    .line 1869
    invoke-static {v11, v0, v10, v12}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLJ(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/org/bouncycastle/jce/provider/CertStatus;)V

    .line 1872
    invoke-virtual/range {p6 .. p6}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_d1

    .line 1874
    invoke-virtual {v12, v13}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->setCertStatus(I)V
    :try_end_d1
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_67 .. :try_end_d1} :catch_138

    .line 1878
    :cond_d1
    move-object/from16 v6, p7

    :try_start_d3
    invoke-virtual {v6, v15}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->addReasons(Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;)V

    .line 1880
    invoke-virtual {v0}, Ljava/security/cert/X509CRL;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v7

    .line 1881
    .local v7, "criticalExtensions":Ljava/util/Set;
    if-eqz v7, :cond_103

    .line 1883
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v7, v8

    .line 1884
    sget-object v8, Lcom/android/org/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1885
    sget-object v8, Lcom/android/org/bouncycastle/asn1/x509/Extension;->deltaCRLIndicator:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1887
    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_fb

    goto :goto_103

    .line 1889
    :cond_fb
    new-instance v8, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v13, "CRL contains unsupported critical extensions."

    invoke-direct {v8, v13}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    .end local v14    # "currentDate":Ljava/util/Date;
    .end local v16    # "crl_iter":Ljava/util/Iterator;
    .end local v17    # "validCrlFound":Z
    .end local v18    # "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .end local v19    # "crls":Ljava/util/Set;
    .end local p0    # "dp":Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .end local p1    # "paramsPKIX":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local p2    # "cert":Ljava/security/cert/X509Certificate;
    .end local p3    # "validDate":Ljava/util/Date;
    .end local p4    # "defaultCRLSignCert":Ljava/security/cert/X509Certificate;
    .end local p5    # "defaultCRLSignKey":Ljava/security/PublicKey;
    .end local p6    # "certStatus":Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    .end local p7    # "reasonMask":Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
    .end local p8    # "certPathCerts":Ljava/util/List;
    .end local p9    # "helper":Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;
    throw v8

    .line 1893
    .restart local v14    # "currentDate":Ljava/util/Date;
    .restart local v16    # "crl_iter":Ljava/util/Iterator;
    .restart local v17    # "validCrlFound":Z
    .restart local v18    # "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v19    # "crls":Ljava/util/Set;
    .restart local p0    # "dp":Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .restart local p1    # "paramsPKIX":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local p2    # "cert":Ljava/security/cert/X509Certificate;
    .restart local p3    # "validDate":Ljava/util/Date;
    .restart local p4    # "defaultCRLSignCert":Ljava/security/cert/X509Certificate;
    .restart local p5    # "defaultCRLSignKey":Ljava/security/PublicKey;
    .restart local p6    # "certStatus":Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    .restart local p7    # "reasonMask":Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
    .restart local p8    # "certPathCerts":Ljava/util/List;
    .restart local p9    # "helper":Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;
    :cond_103
    :goto_103
    if-eqz v4, :cond_133

    .line 1895
    invoke-virtual {v4}, Ljava/security/cert/X509CRL;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v8

    move-object v7, v8

    .line 1896
    if-eqz v7, :cond_133

    .line 1898
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v7, v8

    .line 1899
    sget-object v8, Lcom/android/org/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1900
    sget-object v8, Lcom/android/org/bouncycastle/asn1/x509/Extension;->deltaCRLIndicator:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1901
    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_12b

    goto :goto_133

    .line 1903
    :cond_12b
    new-instance v8, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v13, "Delta CRL contains unsupported critical extension."

    invoke-direct {v8, v13}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    .end local v14    # "currentDate":Ljava/util/Date;
    .end local v16    # "crl_iter":Ljava/util/Iterator;
    .end local v17    # "validCrlFound":Z
    .end local v18    # "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .end local v19    # "crls":Ljava/util/Set;
    .end local p0    # "dp":Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .end local p1    # "paramsPKIX":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local p2    # "cert":Ljava/security/cert/X509Certificate;
    .end local p3    # "validDate":Ljava/util/Date;
    .end local p4    # "defaultCRLSignCert":Ljava/security/cert/X509Certificate;
    .end local p5    # "defaultCRLSignKey":Ljava/security/PublicKey;
    .end local p6    # "certStatus":Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    .end local p7    # "reasonMask":Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
    .end local p8    # "certPathCerts":Ljava/util/List;
    .end local p9    # "helper":Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;
    throw v8
    :try_end_133
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_d3 .. :try_end_133} :catch_136

    .line 1908
    .restart local v14    # "currentDate":Ljava/util/Date;
    .restart local v16    # "crl_iter":Ljava/util/Iterator;
    .restart local v17    # "validCrlFound":Z
    .restart local v18    # "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v19    # "crls":Ljava/util/Set;
    .restart local p0    # "dp":Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .restart local p1    # "paramsPKIX":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local p2    # "cert":Ljava/security/cert/X509Certificate;
    .restart local p3    # "validDate":Ljava/util/Date;
    .restart local p4    # "defaultCRLSignCert":Ljava/security/cert/X509Certificate;
    .restart local p5    # "defaultCRLSignKey":Ljava/security/PublicKey;
    .restart local p6    # "certStatus":Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    .restart local p7    # "reasonMask":Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
    .restart local p8    # "certPathCerts":Ljava/util/List;
    .restart local p9    # "helper":Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;
    :cond_133
    :goto_133
    const/16 v17, 0x1

    .end local v0    # "crl":Ljava/security/cert/X509CRL;
    .end local v2    # "keys":Ljava/util/Set;
    .end local v3    # "key":Ljava/security/PublicKey;
    .end local v4    # "deltaCRL":Ljava/security/cert/X509CRL;
    .end local v5    # "validityDate":Ljava/util/Date;
    .end local v7    # "criticalExtensions":Ljava/util/Set;
    .end local v15    # "interimReasonsMask":Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
    goto :goto_142

    .line 1910
    :catch_136
    move-exception v0

    goto :goto_140

    :catch_138
    move-exception v0

    move-object/from16 v6, p7

    goto :goto_140

    .end local v19    # "crls":Ljava/util/Set;
    .local v15, "crls":Ljava/util/Set;
    :catch_13c
    move-exception v0

    move-object v6, v13

    move-object/from16 v19, v15

    .line 1912
    .end local v15    # "crls":Ljava/util/Set;
    .local v0, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v19    # "crls":Ljava/util/Set;
    :goto_140
    move-object/from16 v18, v0

    .line 1913
    .end local v0    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :goto_142
    move-object v13, v6

    move-object/from16 v15, v19

    goto/16 :goto_30

    .line 1787
    .end local v19    # "crls":Ljava/util/Set;
    .restart local v15    # "crls":Ljava/util/Set;
    :cond_147
    move-object v6, v13

    move-object/from16 v19, v15

    .line 1915
    .end local v15    # "crls":Ljava/util/Set;
    .restart local v19    # "crls":Ljava/util/Set;
    if-eqz v17, :cond_14d

    .line 1919
    return-void

    .line 1917
    :cond_14d
    throw v18

    .line 1771
    .end local v16    # "crl_iter":Ljava/util/Iterator;
    .end local v17    # "validCrlFound":Z
    .end local v18    # "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .end local v19    # "crls":Ljava/util/Set;
    :cond_14e
    move-object v6, v13

    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "Validation time is in future."

    invoke-direct {v0, v2}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static blacklist checkCRLs(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/List;Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;)V
    .registers 31
    .param p0, "paramsPKIX"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p2, "validDate"    # Ljava/util/Date;
    .param p3, "sign"    # Ljava/security/cert/X509Certificate;
    .param p4, "workingPublicKey"    # Ljava/security/PublicKey;
    .param p5, "certPathCerts"    # Ljava/util/List;
    .param p6, "helper"    # Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 1944
    const/4 v1, 0x0

    .line 1945
    .local v1, "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    const/4 v2, 0x0

    .line 1948
    .local v2, "crldp":Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    :try_start_2
    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    move-object/from16 v15, p1

    invoke-static {v15, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_1c2

    move-object v2, v0

    .line 1954
    nop

    .line 1956
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    move-object/from16 v14, p0

    invoke-direct {v0, v14}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)V

    move-object v13, v0

    .line 1959
    .local v13, "paramsBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    :try_start_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getNamedCRLStoreMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getAdditionalStoresFromCRLDistributionPoint(Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 1960
    .local v0, "extras":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;
    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_28
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_18 .. :try_end_28} :catch_1b6

    if-eqz v4, :cond_3a

    .line 1962
    :try_start_2a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStore;

    invoke-virtual {v13, v4}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->addCRLStore(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStore;)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    :try_end_33
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_2a .. :try_end_33} :catch_34

    goto :goto_24

    .line 1965
    .end local v0    # "extras":Ljava/util/List;
    .end local v3    # "it":Ljava/util/Iterator;
    :catch_34
    move-exception v0

    move-object/from16 v22, v2

    move-object v5, v13

    goto/16 :goto_1ba

    .line 1969
    :cond_3a
    nop

    .line 1970
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/CertStatus;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;-><init>()V

    move-object v12, v0

    .line 1971
    .local v12, "certStatus":Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    new-instance v10, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    invoke-direct {v10}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;-><init>()V

    .line 1972
    .local v10, "reasonsMask":Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v21

    .line 1974
    .local v21, "finalParams":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    const/4 v3, 0x0

    .line 1976
    .local v3, "validCrlFound":Z
    const/16 v11, 0xb

    if-eqz v2, :cond_c6

    .line 1978
    const/4 v4, 0x0

    .line 1981
    .local v4, "dps":[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    :try_start_50
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;

    move-result-object v0
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_54} :catch_b7

    move-object v9, v0

    .line 1986
    .end local v4    # "dps":[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .local v9, "dps":[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    nop

    .line 1987
    if-eqz v9, :cond_af

    .line 1989
    const/4 v0, 0x0

    move-object/from16 v16, v1

    move/from16 v17, v3

    move v1, v0

    .end local v3    # "validCrlFound":Z
    .local v1, "i":I
    .local v16, "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .local v17, "validCrlFound":Z
    :goto_5e
    array-length v0, v9

    if-ge v1, v0, :cond_a3

    invoke-virtual {v12}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v0

    if-ne v0, v11, :cond_a3

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v0

    if-nez v0, :cond_a3

    .line 1993
    :try_start_6d
    aget-object v3, v9, v1
    :try_end_6f
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_6d .. :try_end_6f} :catch_8e

    move-object/from16 v4, v21

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v18, v9

    .end local v9    # "dps":[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .local v18, "dps":[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    move-object v9, v12

    move-object/from16 v22, v2

    move v2, v11

    .end local v2    # "crldp":Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    .local v22, "crldp":Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    move-object/from16 v11, p5

    move-object/from16 v23, v12

    .end local v12    # "certStatus":Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    .local v23, "certStatus":Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    move-object/from16 v12, p6

    :try_start_85
    invoke-static/range {v3 .. v12}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->checkCRL(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lcom/android/org/bouncycastle/jce/provider/CertStatus;Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;Ljava/util/List;Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;)V
    :try_end_88
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_85 .. :try_end_88} :catch_8c

    .line 1994
    const/4 v0, 0x1

    .line 1999
    .end local v17    # "validCrlFound":Z
    .local v0, "validCrlFound":Z
    move/from16 v17, v0

    goto :goto_99

    .line 1996
    .end local v0    # "validCrlFound":Z
    .restart local v17    # "validCrlFound":Z
    :catch_8c
    move-exception v0

    goto :goto_96

    .end local v18    # "dps":[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .end local v22    # "crldp":Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    .end local v23    # "certStatus":Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    .restart local v2    # "crldp":Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    .restart local v9    # "dps":[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .restart local v12    # "certStatus":Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    :catch_8e
    move-exception v0

    move-object/from16 v22, v2

    move-object/from16 v18, v9

    move v2, v11

    move-object/from16 v23, v12

    .line 1998
    .end local v2    # "crldp":Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    .end local v9    # "dps":[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .end local v12    # "certStatus":Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    .local v0, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v18    # "dps":[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .restart local v22    # "crldp":Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    .restart local v23    # "certStatus":Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    :goto_96
    move-object v3, v0

    move-object/from16 v16, v3

    .line 1989
    .end local v0    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :goto_99
    add-int/lit8 v1, v1, 0x1

    move v11, v2

    move-object/from16 v9, v18

    move-object/from16 v2, v22

    move-object/from16 v12, v23

    goto :goto_5e

    .end local v18    # "dps":[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .end local v22    # "crldp":Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    .end local v23    # "certStatus":Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    .restart local v2    # "crldp":Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    .restart local v9    # "dps":[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .restart local v12    # "certStatus":Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    :cond_a3
    move-object/from16 v22, v2

    move-object/from16 v18, v9

    move v2, v11

    move-object/from16 v23, v12

    .line 2010
    .end local v1    # "i":I
    .end local v2    # "crldp":Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    .end local v9    # "dps":[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .end local v12    # "certStatus":Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    .restart local v22    # "crldp":Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    .restart local v23    # "certStatus":Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    move-object/from16 v1, v16

    move/from16 v3, v17

    goto :goto_cb

    .line 1987
    .end local v16    # "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .end local v17    # "validCrlFound":Z
    .end local v22    # "crldp":Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    .end local v23    # "certStatus":Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    .local v1, "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v2    # "crldp":Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    .restart local v3    # "validCrlFound":Z
    .restart local v9    # "dps":[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .restart local v12    # "certStatus":Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    :cond_af
    move-object/from16 v22, v2

    move-object/from16 v18, v9

    move v2, v11

    move-object/from16 v23, v12

    .end local v2    # "crldp":Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    .end local v9    # "dps":[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .end local v12    # "certStatus":Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    .restart local v18    # "dps":[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .restart local v22    # "crldp":Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    .restart local v23    # "certStatus":Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    goto :goto_cb

    .line 1983
    .end local v18    # "dps":[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .end local v22    # "crldp":Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    .end local v23    # "certStatus":Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    .restart local v2    # "crldp":Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    .restart local v4    # "dps":[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .restart local v12    # "certStatus":Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    :catch_b7
    move-exception v0

    move-object/from16 v22, v2

    move-object/from16 v23, v12

    move-object v2, v0

    .end local v2    # "crldp":Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    .end local v12    # "certStatus":Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    .restart local v22    # "crldp":Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    .restart local v23    # "certStatus":Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    move-object v0, v2

    .line 1985
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v5, "Distribution points could not be read."

    invoke-direct {v2, v5, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1976
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "dps":[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .end local v22    # "crldp":Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    .end local v23    # "certStatus":Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    .restart local v2    # "crldp":Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    .restart local v12    # "certStatus":Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    :cond_c6
    move-object/from16 v22, v2

    move v2, v11

    move-object/from16 v23, v12

    .line 2010
    .end local v2    # "crldp":Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    .end local v12    # "certStatus":Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    .restart local v22    # "crldp":Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    .restart local v23    # "certStatus":Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    :goto_cb
    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v0

    if-ne v0, v2, :cond_12e

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v0

    if-nez v0, :cond_12e

    .line 2019
    const/4 v4, 0x0

    .line 2022
    .local v4, "issuer":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :try_start_d8
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-static/range {p1 .. p1}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getEncoded()[B

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 2023
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_e9} :catch_121
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_d8 .. :try_end_e9} :catch_11e

    .line 2028
    .end local v4    # "issuer":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .local v0, "issuer":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    nop

    .line 2029
    :try_start_ea
    new-instance v11, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;

    new-instance v4, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    const/4 v5, 0x0

    new-instance v6, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    new-instance v7, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    const/4 v8, 0x4

    invoke-direct {v7, v8, v0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(ILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v6, v7}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;-><init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V

    invoke-direct {v4, v5, v6}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;-><init>(ILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v5, 0x0

    invoke-direct {v11, v4, v5, v5}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;-><init>(Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)V

    .line 2031
    .local v11, "dp":Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->clone()Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    :try_end_108
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_ea .. :try_end_108} :catch_11e

    .line 2032
    .local v12, "paramsPKIXClone":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    move-object v5, v13

    .end local v13    # "paramsBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .local v5, "paramsBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move-object/from16 v17, v23

    move-object/from16 v18, v10

    move-object/from16 v19, p5

    move-object/from16 v20, p6

    :try_start_119
    invoke-static/range {v11 .. v20}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->checkCRL(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lcom/android/org/bouncycastle/jce/provider/CertStatus;Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;Ljava/util/List;Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;)V

    .line 2034
    const/4 v3, 0x1

    .line 2039
    .end local v0    # "issuer":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .end local v11    # "dp":Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .end local v12    # "paramsPKIXClone":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    goto :goto_12f

    .line 2036
    .end local v5    # "paramsBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .restart local v13    # "paramsBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    :catch_11e
    move-exception v0

    move-object v5, v13

    .end local v13    # "paramsBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .restart local v5    # "paramsBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    goto :goto_12c

    .line 2025
    .end local v5    # "paramsBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .restart local v4    # "issuer":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .restart local v13    # "paramsBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    :catch_121
    move-exception v0

    move-object v5, v13

    .line 2027
    .end local v13    # "paramsBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v5    # "paramsBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Issuer from certificate for CRL could not be reencoded."

    invoke-direct {v6, v7, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .end local v3    # "validCrlFound":Z
    .end local v5    # "paramsBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .end local v10    # "reasonsMask":Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
    .end local v21    # "finalParams":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local v22    # "crldp":Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    .end local v23    # "certStatus":Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    .end local p0    # "paramsPKIX":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local p1    # "cert":Ljava/security/cert/X509Certificate;
    .end local p2    # "validDate":Ljava/util/Date;
    .end local p3    # "sign":Ljava/security/cert/X509Certificate;
    .end local p4    # "workingPublicKey":Ljava/security/PublicKey;
    .end local p5    # "certPathCerts":Ljava/util/List;
    .end local p6    # "helper":Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;
    throw v6
    :try_end_12b
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_119 .. :try_end_12b} :catch_12b

    .line 2036
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "issuer":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .restart local v1    # "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v3    # "validCrlFound":Z
    .restart local v5    # "paramsBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .restart local v10    # "reasonsMask":Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
    .restart local v21    # "finalParams":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local v22    # "crldp":Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    .restart local v23    # "certStatus":Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    .restart local p0    # "paramsPKIX":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local p1    # "cert":Ljava/security/cert/X509Certificate;
    .restart local p2    # "validDate":Ljava/util/Date;
    .restart local p3    # "sign":Ljava/security/cert/X509Certificate;
    .restart local p4    # "workingPublicKey":Ljava/security/PublicKey;
    .restart local p5    # "certPathCerts":Ljava/util/List;
    .restart local p6    # "helper":Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;
    :catch_12b
    move-exception v0

    .line 2038
    .local v0, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :goto_12c
    move-object v1, v0

    goto :goto_12f

    .line 2010
    .end local v0    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .end local v5    # "paramsBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .restart local v13    # "paramsBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    :cond_12e
    move-object v5, v13

    .line 2042
    .end local v13    # "paramsBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .restart local v5    # "paramsBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    :goto_12f
    if-nez v3, :cond_13e

    .line 2044
    instance-of v0, v1, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    if-eqz v0, :cond_136

    .line 2046
    throw v1

    .line 2049
    :cond_136
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "No valid CRL found."

    invoke-direct {v0, v2, v1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 2051
    :cond_13e
    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v0

    if-ne v0, v2, :cond_169

    .line 2059
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v0

    const/16 v4, 0xc

    if-nez v0, :cond_158

    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v0

    if-ne v0, v2, :cond_158

    .line 2061
    move-object/from16 v2, v23

    .end local v23    # "certStatus":Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    .local v2, "certStatus":Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    invoke-virtual {v2, v4}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->setCertStatus(I)V

    goto :goto_15a

    .line 2059
    .end local v2    # "certStatus":Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    .restart local v23    # "certStatus":Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    :cond_158
    move-object/from16 v2, v23

    .line 2063
    .end local v23    # "certStatus":Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    .restart local v2    # "certStatus":Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    :goto_15a
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v0

    if-eq v0, v4, :cond_161

    .line 2067
    return-void

    .line 2065
    :cond_161
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Certificate status could not be determined."

    invoke-direct {v0, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2053
    .end local v2    # "certStatus":Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    .restart local v23    # "certStatus":Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    :cond_169
    move-object/from16 v2, v23

    .end local v23    # "certStatus":Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    .restart local v2    # "certStatus":Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss Z"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2054
    .local v0, "df":Ljava/text/SimpleDateFormat;
    const-string v4, "UTC"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2055
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Certificate revocation after "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getRevocationDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2056
    .local v4, "message":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", reason: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->crlReasons:[Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2057
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    invoke-direct {v6, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1965
    .end local v0    # "df":Ljava/text/SimpleDateFormat;
    .end local v3    # "validCrlFound":Z
    .end local v4    # "message":Ljava/lang/String;
    .end local v5    # "paramsBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .end local v10    # "reasonsMask":Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
    .end local v21    # "finalParams":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local v22    # "crldp":Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    .local v2, "crldp":Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    .restart local v13    # "paramsBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    :catch_1b6
    move-exception v0

    move-object/from16 v22, v2

    move-object v5, v13

    .line 1967
    .end local v2    # "crldp":Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    .end local v13    # "paramsBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .local v0, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v5    # "paramsBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .restart local v22    # "crldp":Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    :goto_1ba
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v3, "No additional CRL locations could be decoded from CRL distribution point extension."

    invoke-direct {v2, v3, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1951
    .end local v0    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .end local v5    # "paramsBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .end local v22    # "crldp":Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    .restart local v2    # "crldp":Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    :catch_1c2
    move-exception v0

    .line 1953
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "CRL distribution point extension could not be read."

    invoke-direct {v3, v4, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected static blacklist prepareCertB(Ljava/security/cert/CertPath;I[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;I)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .registers 36
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "policyNodes"    # [Ljava/util/List;
    .param p3, "validPolicyTree"    # Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .param p4, "policyMapping"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 896
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {p0 .. p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v4

    .line 897
    .local v4, "certs":Ljava/util/List;
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 898
    .local v5, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    .line 900
    .local v6, "n":I
    sub-int v15, v6, v2

    .line 903
    .local v15, "i":I
    const/4 v7, 0x0

    .line 906
    .local v7, "pm":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_18
    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0
    :try_end_22
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_18 .. :try_end_22} :catch_238

    move-object/from16 v16, v0

    .line 913
    .end local v7    # "pm":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .local v16, "pm":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    nop

    .line 914
    move-object/from16 v0, p3

    .line 915
    .local v0, "_validPolicyTree":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    if-eqz v16, :cond_237

    .line 917
    move-object/from16 v14, v16

    .line 918
    .local v14, "mappings":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    move-object v13, v7

    .line 919
    .local v13, "m_idp":Ljava/util/Map;
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    move-object v12, v7

    .line 921
    .local v12, "s_idp":Ljava/util/Set;
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_38
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v8

    if-ge v7, v8, :cond_7b

    .line 923
    invoke-virtual {v14, v7}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v8

    check-cast v8, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 924
    .local v8, "mapping":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v9

    check-cast v9, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v9

    .line 925
    .local v9, "id_p":Ljava/lang/String;
    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v10

    check-cast v10, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v10

    .line 928
    .local v10, "sd_p":Ljava/lang/String;
    invoke-interface {v13, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6f

    .line 930
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 931
    .local v11, "tmp":Ljava/util/Set;
    invoke-interface {v11, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 932
    invoke-interface {v13, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    invoke-interface {v12, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_78

    .line 937
    .end local v11    # "tmp":Ljava/util/Set;
    :cond_6f
    invoke-interface {v13, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Set;

    .line 938
    .restart local v11    # "tmp":Ljava/util/Set;
    invoke-interface {v11, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 921
    .end local v8    # "mapping":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v9    # "id_p":Ljava/lang/String;
    .end local v10    # "sd_p":Ljava/lang/String;
    .end local v11    # "tmp":Ljava/util/Set;
    :goto_78
    add-int/lit8 v7, v7, 0x1

    goto :goto_38

    .line 942
    .end local v7    # "j":I
    :cond_7b
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    move-object/from16 v18, v0

    .line 943
    .end local v0    # "_validPolicyTree":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v17, "it_idp":Ljava/util/Iterator;
    .local v18, "_validPolicyTree":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :goto_81
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22f

    .line 945
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    .line 950
    .local v11, "id_p":Ljava/lang/String;
    if-lez p4, :cond_1bf

    .line 952
    const/4 v0, 0x0

    .line 953
    .local v0, "idp_found":Z
    aget-object v7, v3, v15

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 954
    .local v7, "nodes_i":Ljava/util/Iterator;
    :goto_97
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_ba

    .line 956
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 957
    .local v8, "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b9

    .line 959
    const/4 v0, 0x1

    .line 960
    invoke-interface {v13, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    iput-object v9, v8, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->expectedPolicies:Ljava/util/Set;

    .line 961
    move/from16 v19, v0

    goto :goto_bc

    .line 963
    .end local v8    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_b9
    goto :goto_97

    .line 954
    :cond_ba
    move/from16 v19, v0

    .line 965
    .end local v0    # "idp_found":Z
    .local v19, "idp_found":Z
    :goto_bc
    if-nez v19, :cond_1b5

    .line 967
    aget-object v0, v3, v15

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 968
    .end local v7    # "nodes_i":Ljava/util/Iterator;
    .local v20, "nodes_i":Ljava/util/Iterator;
    :goto_c4
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1ac

    .line 970
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 971
    .local v21, "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v0

    const-string v7, "2.5.29.32.0"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a2

    .line 973
    const/4 v8, 0x0

    .line 974
    .local v8, "pq":Ljava/util/Set;
    const/4 v9, 0x0

    .line 977
    .local v9, "policies":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_e0
    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_e8
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_e0 .. :try_end_e8} :catch_191

    move-object/from16 v22, v0

    .line 984
    .end local v9    # "policies":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .local v22, "policies":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    nop

    .line 985
    invoke-virtual/range {v22 .. v22}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v23

    .line 986
    .local v23, "e":Ljava/util/Enumeration;
    :goto_ef
    invoke-interface/range {v23 .. v23}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_12c

    .line 988
    const/4 v9, 0x0

    .line 991
    .local v9, "pinfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    :try_start_f6
    invoke-interface/range {v23 .. v23}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object v0
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_fe} :catch_123

    move-object v9, v0

    .line 997
    nop

    .line 998
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_122

    .line 1002
    nop

    .line 1003
    :try_start_10f
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getQualifierSet(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;

    move-result-object v0
    :try_end_117
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_10f .. :try_end_117} :catch_119

    move-object v8, v0

    .line 1011
    goto :goto_12d

    .line 1005
    :catch_119
    move-exception v0

    .line 1008
    .local v0, "ex":Ljava/security/cert/CertPathValidatorException;
    new-instance v7, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v10, "Policy qualifier info set could not be decoded."

    invoke-direct {v7, v10, v0, v1, v2}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v7

    .line 1014
    .end local v0    # "ex":Ljava/security/cert/CertPathValidatorException;
    .end local v9    # "pinfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    :cond_122
    goto :goto_ef

    .line 993
    .restart local v9    # "pinfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    :catch_123
    move-exception v0

    .line 995
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v7, Ljava/security/cert/CertPathValidatorException;

    const-string v10, "Policy information could not be decoded."

    invoke-direct {v7, v10, v0, v1, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v7

    .line 986
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v9    # "pinfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    :cond_12c
    move-object v0, v8

    .line 1015
    .end local v8    # "pq":Ljava/util/Set;
    .local v0, "pq":Ljava/util/Set;
    :goto_12d
    const/4 v8, 0x0

    .line 1016
    .local v8, "ci":Z
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v9

    if-eqz v9, :cond_141

    .line 1018
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v9

    sget-object v10, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    move/from16 v24, v8

    goto :goto_143

    .line 1016
    :cond_141
    move/from16 v24, v8

    .line 1022
    .end local v8    # "ci":Z
    .local v24, "ci":Z
    :goto_143
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1023
    .local v10, "p_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_187

    .line 1025
    new-instance v25, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1026
    invoke-interface {v13, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v26, v7

    check-cast v26, Ljava/util/Set;

    move-object/from16 v7, v25

    move v9, v15

    move-object/from16 v27, v10

    .end local v10    # "p_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v27, "p_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    move-object/from16 v10, v26

    move-object/from16 v26, v11

    .end local v11    # "id_p":Ljava/lang/String;
    .local v26, "id_p":Ljava/lang/String;
    move-object/from16 v11, v27

    move-object/from16 v28, v12

    .end local v12    # "s_idp":Ljava/util/Set;
    .local v28, "s_idp":Ljava/util/Set;
    move-object v12, v0

    move-object/from16 v29, v13

    .end local v13    # "m_idp":Ljava/util/Map;
    .local v29, "m_idp":Ljava/util/Map;
    move-object/from16 v13, v26

    move-object/from16 v30, v14

    .end local v14    # "mappings":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .local v30, "mappings":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    move/from16 v14, v24

    invoke-direct/range {v7 .. v14}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 1027
    .local v7, "c_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    move-object/from16 v8, v27

    .end local v27    # "p_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v8, "p_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v8, v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 1028
    aget-object v9, v3, v15

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1029
    .end local v7    # "c_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    goto :goto_1bd

    .line 1023
    .end local v8    # "p_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v26    # "id_p":Ljava/lang/String;
    .end local v28    # "s_idp":Ljava/util/Set;
    .end local v29    # "m_idp":Ljava/util/Map;
    .end local v30    # "mappings":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v10    # "p_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v11    # "id_p":Ljava/lang/String;
    .restart local v12    # "s_idp":Ljava/util/Set;
    .restart local v13    # "m_idp":Ljava/util/Map;
    .restart local v14    # "mappings":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_187
    move-object v8, v10

    move-object/from16 v26, v11

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move-object/from16 v30, v14

    .end local v10    # "p_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v11    # "id_p":Ljava/lang/String;
    .end local v12    # "s_idp":Ljava/util/Set;
    .end local v13    # "m_idp":Ljava/util/Map;
    .end local v14    # "mappings":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v8    # "p_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v26    # "id_p":Ljava/lang/String;
    .restart local v28    # "s_idp":Ljava/util/Set;
    .restart local v29    # "m_idp":Ljava/util/Map;
    .restart local v30    # "mappings":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    goto :goto_1bd

    .line 980
    .end local v0    # "pq":Ljava/util/Set;
    .end local v22    # "policies":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v23    # "e":Ljava/util/Enumeration;
    .end local v24    # "ci":Z
    .end local v26    # "id_p":Ljava/lang/String;
    .end local v28    # "s_idp":Ljava/util/Set;
    .end local v29    # "m_idp":Ljava/util/Map;
    .end local v30    # "mappings":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .local v8, "pq":Ljava/util/Set;
    .local v9, "policies":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v11    # "id_p":Ljava/lang/String;
    .restart local v12    # "s_idp":Ljava/util/Set;
    .restart local v13    # "m_idp":Ljava/util/Map;
    .restart local v14    # "mappings":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_191
    move-exception v0

    move-object/from16 v26, v11

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move-object/from16 v30, v14

    .line 982
    .end local v11    # "id_p":Ljava/lang/String;
    .end local v12    # "s_idp":Ljava/util/Set;
    .end local v13    # "m_idp":Ljava/util/Map;
    .end local v14    # "mappings":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .local v0, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v26    # "id_p":Ljava/lang/String;
    .restart local v28    # "s_idp":Ljava/util/Set;
    .restart local v29    # "m_idp":Ljava/util/Map;
    .restart local v30    # "mappings":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    new-instance v7, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v10, "Certificate policies extension could not be decoded."

    invoke-direct {v7, v10, v0, v1, v2}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v7

    .line 971
    .end local v0    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .end local v8    # "pq":Ljava/util/Set;
    .end local v9    # "policies":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v26    # "id_p":Ljava/lang/String;
    .end local v28    # "s_idp":Ljava/util/Set;
    .end local v29    # "m_idp":Ljava/util/Map;
    .end local v30    # "mappings":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v11    # "id_p":Ljava/lang/String;
    .restart local v12    # "s_idp":Ljava/util/Set;
    .restart local v13    # "m_idp":Ljava/util/Map;
    .restart local v14    # "mappings":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_1a2
    move-object/from16 v26, v11

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move-object/from16 v30, v14

    .line 1032
    .end local v11    # "id_p":Ljava/lang/String;
    .end local v12    # "s_idp":Ljava/util/Set;
    .end local v13    # "m_idp":Ljava/util/Map;
    .end local v14    # "mappings":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v21    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v26    # "id_p":Ljava/lang/String;
    .restart local v28    # "s_idp":Ljava/util/Set;
    .restart local v29    # "m_idp":Ljava/util/Map;
    .restart local v30    # "mappings":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    goto/16 :goto_c4

    .line 968
    .end local v26    # "id_p":Ljava/lang/String;
    .end local v28    # "s_idp":Ljava/util/Set;
    .end local v29    # "m_idp":Ljava/util/Map;
    .end local v30    # "mappings":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v11    # "id_p":Ljava/lang/String;
    .restart local v12    # "s_idp":Ljava/util/Set;
    .restart local v13    # "m_idp":Ljava/util/Map;
    .restart local v14    # "mappings":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_1ac
    move-object/from16 v26, v11

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move-object/from16 v30, v14

    .end local v11    # "id_p":Ljava/lang/String;
    .end local v12    # "s_idp":Ljava/util/Set;
    .end local v13    # "m_idp":Ljava/util/Map;
    .end local v14    # "mappings":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v26    # "id_p":Ljava/lang/String;
    .restart local v28    # "s_idp":Ljava/util/Set;
    .restart local v29    # "m_idp":Ljava/util/Map;
    .restart local v30    # "mappings":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    goto :goto_1bd

    .line 965
    .end local v20    # "nodes_i":Ljava/util/Iterator;
    .end local v26    # "id_p":Ljava/lang/String;
    .end local v28    # "s_idp":Ljava/util/Set;
    .end local v29    # "m_idp":Ljava/util/Map;
    .end local v30    # "mappings":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .local v7, "nodes_i":Ljava/util/Iterator;
    .restart local v11    # "id_p":Ljava/lang/String;
    .restart local v12    # "s_idp":Ljava/util/Set;
    .restart local v13    # "m_idp":Ljava/util/Map;
    .restart local v14    # "mappings":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_1b5
    move-object/from16 v26, v11

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move-object/from16 v30, v14

    .line 1038
    .end local v7    # "nodes_i":Ljava/util/Iterator;
    .end local v11    # "id_p":Ljava/lang/String;
    .end local v12    # "s_idp":Ljava/util/Set;
    .end local v13    # "m_idp":Ljava/util/Map;
    .end local v14    # "mappings":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v19    # "idp_found":Z
    .restart local v26    # "id_p":Ljava/lang/String;
    .restart local v28    # "s_idp":Ljava/util/Set;
    .restart local v29    # "m_idp":Ljava/util/Map;
    .restart local v30    # "mappings":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :goto_1bd
    goto/16 :goto_227

    .line 1039
    .end local v26    # "id_p":Ljava/lang/String;
    .end local v28    # "s_idp":Ljava/util/Set;
    .end local v29    # "m_idp":Ljava/util/Map;
    .end local v30    # "mappings":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v11    # "id_p":Ljava/lang/String;
    .restart local v12    # "s_idp":Ljava/util/Set;
    .restart local v13    # "m_idp":Ljava/util/Map;
    .restart local v14    # "mappings":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_1bf
    move-object/from16 v26, v11

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move-object/from16 v30, v14

    .end local v11    # "id_p":Ljava/lang/String;
    .end local v12    # "s_idp":Ljava/util/Set;
    .end local v13    # "m_idp":Ljava/util/Map;
    .end local v14    # "mappings":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v26    # "id_p":Ljava/lang/String;
    .restart local v28    # "s_idp":Ljava/util/Set;
    .restart local v29    # "m_idp":Ljava/util/Map;
    .restart local v30    # "mappings":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    if-gtz p4, :cond_225

    .line 1041
    aget-object v0, v3, v15

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1042
    .local v0, "nodes_i":Ljava/util/Iterator;
    :goto_1cf
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_222

    .line 1044
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1045
    .local v7, "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v9, v26

    .end local v26    # "id_p":Ljava/lang/String;
    .local v9, "id_p":Ljava/lang/String;
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_21f

    .line 1047
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v8

    check-cast v8, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1048
    .local v8, "p_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v8, v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->removeChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 1049
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1050
    add-int/lit8 v10, v15, -0x1

    .local v10, "k":I
    :goto_1f5
    if-ltz v10, :cond_21f

    .line 1052
    aget-object v11, v3, v10

    .line 1053
    .local v11, "nodes":Ljava/util/List;
    const/4 v12, 0x0

    move-object/from16 v13, v18

    .end local v18    # "_validPolicyTree":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v12, "l":I
    .local v13, "_validPolicyTree":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :goto_1fc
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    if-ge v12, v14, :cond_21a

    .line 1055
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1056
    .local v14, "node2":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v18

    if-nez v18, :cond_217

    .line 1058
    invoke-static {v13, v3, v14}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v13

    .line 1060
    if-nez v13, :cond_217

    .line 1062
    move-object/from16 v18, v13

    goto :goto_21c

    .line 1053
    .end local v14    # "node2":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_217
    add-int/lit8 v12, v12, 0x1

    goto :goto_1fc

    :cond_21a
    move-object/from16 v18, v13

    .line 1050
    .end local v11    # "nodes":Ljava/util/List;
    .end local v12    # "l":I
    .end local v13    # "_validPolicyTree":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v18    # "_validPolicyTree":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :goto_21c
    add-int/lit8 v10, v10, -0x1

    goto :goto_1f5

    .line 1068
    .end local v7    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v8    # "p_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v10    # "k":I
    :cond_21f
    move-object/from16 v26, v9

    goto :goto_1cf

    .line 1042
    .end local v9    # "id_p":Ljava/lang/String;
    .restart local v26    # "id_p":Ljava/lang/String;
    :cond_222
    move-object/from16 v9, v26

    .end local v26    # "id_p":Ljava/lang/String;
    .restart local v9    # "id_p":Ljava/lang/String;
    goto :goto_227

    .line 1039
    .end local v0    # "nodes_i":Ljava/util/Iterator;
    .end local v9    # "id_p":Ljava/lang/String;
    .restart local v26    # "id_p":Ljava/lang/String;
    :cond_225
    move-object/from16 v9, v26

    .line 1070
    .end local v26    # "id_p":Ljava/lang/String;
    :goto_227
    move-object/from16 v12, v28

    move-object/from16 v13, v29

    move-object/from16 v14, v30

    goto/16 :goto_81

    .line 943
    .end local v28    # "s_idp":Ljava/util/Set;
    .end local v29    # "m_idp":Ljava/util/Map;
    .end local v30    # "mappings":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .local v12, "s_idp":Ljava/util/Set;
    .local v13, "m_idp":Ljava/util/Map;
    .local v14, "mappings":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_22f
    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move-object/from16 v30, v14

    .end local v12    # "s_idp":Ljava/util/Set;
    .end local v13    # "m_idp":Ljava/util/Map;
    .end local v14    # "mappings":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v28    # "s_idp":Ljava/util/Set;
    .restart local v29    # "m_idp":Ljava/util/Map;
    .restart local v30    # "mappings":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    move-object/from16 v0, v18

    .line 1072
    .end local v17    # "it_idp":Ljava/util/Iterator;
    .end local v18    # "_validPolicyTree":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v28    # "s_idp":Ljava/util/Set;
    .end local v29    # "m_idp":Ljava/util/Map;
    .end local v30    # "mappings":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .local v0, "_validPolicyTree":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_237
    return-object v0

    .line 909
    .end local v0    # "_validPolicyTree":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v16    # "pm":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .local v7, "pm":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_238
    move-exception v0

    .line 911
    .local v0, "ex":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v8, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v9, "Policy mappings extension could not be decoded."

    invoke-direct {v8, v9, v0, v1, v2}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v8
.end method

.method protected static blacklist prepareNextCertA(Ljava/security/cert/CertPath;I)V
    .registers 12
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 1080
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 1081
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 1086
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .line 1089
    .local v2, "pm":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_b
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3
    :try_end_15
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_b .. :try_end_15} :catch_74

    move-object v2, v3

    .line 1096
    nop

    .line 1097
    if-eqz v2, :cond_73

    .line 1099
    move-object v3, v2

    .line 1101
    .local v3, "mappings":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1b
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v5

    if-ge v4, v5, :cond_73

    .line 1103
    const/4 v5, 0x0

    .line 1104
    .local v5, "issuerDomainPolicy":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    const/4 v6, 0x0

    .line 1107
    .local v6, "subjectDomainPolicy":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :try_start_23
    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v7

    .line 1109
    .local v7, "mapping":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v8

    invoke-static {v8}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    move-object v5, v8

    .line 1110
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v8

    invoke-static {v8}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_3e} :catch_6a

    move-object v6, v8

    .line 1116
    .end local v7    # "mapping":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    nop

    .line 1118
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    const-string v8, "2.5.29.32.0"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v9, 0x0

    if-nez v7, :cond_62

    .line 1124
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5a

    .line 1101
    .end local v5    # "issuerDomainPolicy":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v6    # "subjectDomainPolicy":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 1127
    .restart local v5    # "issuerDomainPolicy":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .restart local v6    # "subjectDomainPolicy":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_5a
    new-instance v7, Ljava/security/cert/CertPathValidatorException;

    const-string v8, "SubjectDomainPolicy is anyPolicy,"

    invoke-direct {v7, v8, v9, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v7

    .line 1121
    :cond_62
    new-instance v7, Ljava/security/cert/CertPathValidatorException;

    const-string v8, "IssuerDomainPolicy is anyPolicy"

    invoke-direct {v7, v8, v9, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v7

    .line 1112
    :catch_6a
    move-exception v7

    .line 1114
    .local v7, "e":Ljava/lang/Exception;
    new-instance v8, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v9, "Policy mappings extension contents could not be decoded."

    invoke-direct {v8, v9, v7, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v8

    .line 1131
    .end local v3    # "mappings":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v4    # "j":I
    .end local v5    # "issuerDomainPolicy":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v6    # "subjectDomainPolicy":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_73
    return-void

    .line 1092
    :catch_74
    move-exception v3

    .line 1094
    .local v3, "ex":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Policy mappings extension could not be decoded."

    invoke-direct {v4, v5, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4
.end method

.method protected static blacklist prepareNextCertG(Ljava/security/cert/CertPath;ILcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;)V
    .registers 12
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "nameConstraintValidator"    # Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 1677
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 1678
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 1682
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .line 1685
    .local v2, "nc":Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;
    :try_start_b
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3

    .line 1687
    .local v3, "ncSeq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    if-eqz v3, :cond_1c

    .line 1689
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;

    move-result-object v4
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1b} :catch_4f

    move-object v2, v4

    .line 1696
    .end local v3    # "ncSeq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_1c
    nop

    .line 1697
    if-eqz v2, :cond_4e

    .line 1703
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->getPermittedSubtrees()[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v3

    .line 1704
    .local v3, "permitted":[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
    if-eqz v3, :cond_32

    .line 1708
    :try_start_25
    invoke-virtual {p2, v3}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->intersectPermittedSubtree([Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_29

    .line 1714
    goto :goto_32

    .line 1710
    :catch_29
    move-exception v4

    .line 1712
    .local v4, "ex":Ljava/lang/Exception;
    new-instance v5, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v6, "Permitted subtrees cannot be build from name constraints extension."

    invoke-direct {v5, v6, v4, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v5

    .line 1720
    .end local v4    # "ex":Ljava/lang/Exception;
    :cond_32
    :goto_32
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->getExcludedSubtrees()[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v4

    .line 1721
    .local v4, "excluded":[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
    if-eqz v4, :cond_4e

    .line 1723
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_39
    array-length v6, v4

    if-eq v5, v6, :cond_4e

    .line 1726
    :try_start_3c
    aget-object v6, v4, v5

    invoke-virtual {p2, v6}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->addExcludedSubtree(Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_41} :catch_45

    .line 1732
    nop

    .line 1723
    add-int/lit8 v5, v5, 0x1

    goto :goto_39

    .line 1728
    :catch_45
    move-exception v6

    .line 1730
    .local v6, "ex":Ljava/lang/Exception;
    new-instance v7, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v8, "Excluded subtrees cannot be build from name constraints extension."

    invoke-direct {v7, v8, v6, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v7

    .line 1735
    .end local v3    # "permitted":[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
    .end local v4    # "excluded":[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
    .end local v5    # "i":I
    .end local v6    # "ex":Ljava/lang/Exception;
    :cond_4e
    return-void

    .line 1692
    :catch_4f
    move-exception v3

    .line 1694
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Name constraints extension could not be decoded."

    invoke-direct {v4, v5, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4
.end method

.method protected static blacklist prepareNextCertH1(Ljava/security/cert/CertPath;II)I
    .registers 6
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "explicitPolicy"    # I

    .line 2260
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 2261
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 2265
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    invoke-static {v1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 2270
    if-eqz p2, :cond_15

    .line 2272
    add-int/lit8 v2, p2, -0x1

    return v2

    .line 2275
    :cond_15
    return p2
.end method

.method protected static blacklist prepareNextCertH2(Ljava/security/cert/CertPath;II)I
    .registers 6
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "policyMapping"    # I

    .line 2283
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 2284
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 2288
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    invoke-static {v1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 2293
    if-eqz p2, :cond_15

    .line 2295
    add-int/lit8 v2, p2, -0x1

    return v2

    .line 2298
    :cond_15
    return p2
.end method

.method protected static blacklist prepareNextCertH3(Ljava/security/cert/CertPath;II)I
    .registers 6
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "inhibitAnyPolicy"    # I

    .line 2306
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 2307
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 2311
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    invoke-static {v1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 2316
    if-eqz p2, :cond_15

    .line 2318
    add-int/lit8 v2, p2, -0x1

    return v2

    .line 2321
    :cond_15
    return p2
.end method

.method protected static blacklist prepareNextCertI1(Ljava/security/cert/CertPath;II)I
    .registers 10
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "explicitPolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 1568
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 1569
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 1573
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .line 1576
    .local v2, "pc":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_b
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_15} :catch_4d

    move-object v2, v3

    .line 1583
    nop

    .line 1587
    if-eqz v2, :cond_4c

    .line 1589
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    .line 1591
    .local v3, "policyConstraints":Ljava/util/Enumeration;
    :goto_1d
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 1596
    :try_start_23
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v4

    .line 1597
    .local v4, "constraint":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v5

    if-nez v5, :cond_42

    .line 1599
    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5
    :try_end_3e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_3e} :catch_43

    .line 1600
    .local v5, "tmpInt":I
    if-ge v5, p2, :cond_41

    .line 1602
    return v5

    .line 1604
    :cond_41
    goto :goto_4c

    .line 1611
    .end local v4    # "constraint":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .end local v5    # "tmpInt":I
    :cond_42
    goto :goto_1d

    .line 1607
    :catch_43
    move-exception v4

    .line 1609
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v6, "Policy constraints extension contents cannot be decoded."

    invoke-direct {v5, v6, v4, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v5

    .line 1614
    .end local v3    # "policyConstraints":Ljava/util/Enumeration;
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :cond_4c
    :goto_4c
    return p2

    .line 1579
    :catch_4d
    move-exception v3

    .line 1581
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Policy constraints extension cannot be decoded."

    invoke-direct {v4, v5, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4
.end method

.method protected static blacklist prepareNextCertI2(Ljava/security/cert/CertPath;II)I
    .registers 10
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "policyMapping"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 1623
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 1624
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 1628
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .line 1631
    .local v2, "pc":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_b
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_15} :catch_4e

    move-object v2, v3

    .line 1638
    nop

    .line 1642
    if-eqz v2, :cond_4d

    .line 1644
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    .line 1646
    .local v3, "policyConstraints":Ljava/util/Enumeration;
    :goto_1d
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 1650
    :try_start_23
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v4

    .line 1651
    .local v4, "constraint":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_43

    .line 1653
    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5
    :try_end_3f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_3f} :catch_44

    .line 1654
    .local v5, "tmpInt":I
    if-ge v5, p2, :cond_42

    .line 1656
    return v5

    .line 1658
    :cond_42
    goto :goto_4d

    .line 1665
    .end local v4    # "constraint":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .end local v5    # "tmpInt":I
    :cond_43
    goto :goto_1d

    .line 1661
    :catch_44
    move-exception v4

    .line 1663
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v6, "Policy constraints extension contents cannot be decoded."

    invoke-direct {v5, v6, v4, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v5

    .line 1668
    .end local v3    # "policyConstraints":Ljava/util/Enumeration;
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :cond_4d
    :goto_4d
    return p2

    .line 1634
    :catch_4e
    move-exception v3

    .line 1636
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Policy constraints extension cannot be decoded."

    invoke-direct {v4, v5, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4
.end method

.method protected static blacklist prepareNextCertJ(Ljava/security/cert/CertPath;II)I
    .registers 9
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "inhibitAnyPolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 2075
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 2076
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 2080
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .line 2083
    .local v2, "iap":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    :try_start_b
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v3
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_15} :catch_25

    move-object v2, v3

    .line 2090
    nop

    .line 2092
    if-eqz v2, :cond_24

    .line 2094
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    .line 2096
    .local v3, "_inhibitAnyPolicy":I
    if-ge v3, p2, :cond_24

    .line 2098
    return v3

    .line 2101
    .end local v3    # "_inhibitAnyPolicy":I
    :cond_24
    return p2

    .line 2086
    :catch_25
    move-exception v3

    .line 2088
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Inhibit any-policy extension cannot be decoded."

    invoke-direct {v4, v5, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4
.end method

.method protected static blacklist prepareNextCertK(Ljava/security/cert/CertPath;I)V
    .registers 8
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 2109
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 2110
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 2114
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .line 2117
    .local v2, "bc":Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    :try_start_b
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v3
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_15} :catch_30

    move-object v2, v3

    .line 2124
    nop

    .line 2125
    if-eqz v2, :cond_28

    .line 2127
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 2136
    return-void

    .line 2129
    :cond_20
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    const-string v4, "Not a CA certificate"

    invoke-direct {v3, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2134
    :cond_28
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    const-string v4, "Intermediate certificate lacks BasicConstraints"

    invoke-direct {v3, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2120
    :catch_30
    move-exception v3

    .line 2122
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Basic constraints extension cannot be decoded."

    invoke-direct {v4, v5, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4
.end method

.method protected static blacklist prepareNextCertL(Ljava/security/cert/CertPath;II)I
    .registers 8
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "maxPathLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 2144
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 2145
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 2149
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    invoke-static {v1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 2151
    if-lez p2, :cond_15

    .line 2156
    add-int/lit8 v2, p2, -0x1

    return v2

    .line 2153
    :cond_15
    new-instance v2, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const/4 v3, 0x0

    const-string v4, "Max path length not greater than zero"

    invoke-direct {v2, v4, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2

    .line 2158
    :cond_1e
    return p2
.end method

.method protected static blacklist prepareNextCertM(Ljava/security/cert/CertPath;II)I
    .registers 9
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "maxPathLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 2167
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 2168
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 2173
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .line 2176
    .local v2, "bc":Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    :try_start_b
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v3
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_15} :catch_27

    move-object v2, v3

    .line 2183
    nop

    .line 2184
    if-eqz v2, :cond_26

    .line 2186
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getPathLenConstraint()Ljava/math/BigInteger;

    move-result-object v3

    .line 2188
    .local v3, "_pathLengthConstraint":Ljava/math/BigInteger;
    if-eqz v3, :cond_26

    .line 2190
    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    .line 2192
    .local v4, "_plc":I
    if-ge v4, p2, :cond_26

    .line 2194
    return v4

    .line 2198
    .end local v3    # "_pathLengthConstraint":Ljava/math/BigInteger;
    .end local v4    # "_plc":I
    :cond_26
    return p2

    .line 2179
    :catch_27
    move-exception v3

    .line 2181
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Basic constraints extension cannot be decoded."

    invoke-direct {v4, v5, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4
.end method

.method protected static blacklist prepareNextCertN(Ljava/security/cert/CertPath;I)V
    .registers 8
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 2206
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 2207
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 2212
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v2

    .line 2214
    .local v2, "_usage":[Z
    if-eqz v2, :cond_1f

    const/4 v3, 0x5

    aget-boolean v3, v2, v3

    if-eqz v3, :cond_16

    goto :goto_1f

    .line 2216
    :cond_16
    new-instance v3, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const/4 v4, 0x0

    const-string v5, "Issuer certificate keyusage extension is critical and does not permit key signing."

    invoke-direct {v3, v5, v4, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    .line 2220
    :cond_1f
    :goto_1f
    return-void
.end method

.method protected static blacklist prepareNextCertO(Ljava/security/cert/CertPath;ILjava/util/Set;Ljava/util/List;)V
    .registers 11
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "criticalExtensions"    # Ljava/util/Set;
    .param p3, "pathCheckers"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 2229
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 2230
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 2236
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2237
    .local v2, "tmpIter":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 2241
    :try_start_14
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v3, v1, p2}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_1d
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_14 .. :try_end_1d} :catch_1e

    .line 2246
    goto :goto_e

    .line 2243
    :catch_1e
    move-exception v3

    .line 2245
    .local v3, "e":Ljava/security/cert/CertPathValidatorException;
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {v3}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/security/cert/CertPathValidatorException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-direct {v4, v5, v6, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 2248
    .end local v3    # "e":Ljava/security/cert/CertPathValidatorException;
    :cond_2d
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 2253
    return-void

    .line 2250
    :cond_34
    new-instance v3, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Certificate has unsupported critical extension: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3
.end method

.method protected static blacklist processCRLA1i(Ljava/util/Date;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509CRL;)Ljava/util/Set;
    .registers 10
    .param p0, "currentDate"    # Ljava/util/Date;
    .param p1, "paramsPKIX"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .param p2, "cert"    # Ljava/security/cert/X509Certificate;
    .param p3, "crl"    # Ljava/security/cert/X509CRL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 641
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 642
    .local v0, "set":Ljava/util/Set;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->isUseDeltasEnabled()Z

    move-result v1

    if-eqz v1, :cond_70

    .line 644
    const/4 v1, 0x0

    .line 647
    .local v1, "freshestCRL":Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    :try_start_c
    sget-object v2, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->FRESHEST_CRL:Ljava/lang/String;

    .line 648
    invoke-static {p2, v2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;

    move-result-object v2
    :try_end_16
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_c .. :try_end_16} :catch_67

    move-object v1, v2

    .line 653
    nop

    .line 654
    if-nez v1, :cond_2f

    .line 658
    :try_start_1a
    sget-object v2, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->FRESHEST_CRL:Ljava/lang/String;

    invoke-static {p3, v2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;

    move-result-object v2
    :try_end_24
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_1a .. :try_end_24} :catch_26

    move-object v1, v2

    .line 664
    goto :goto_2f

    .line 661
    :catch_26
    move-exception v2

    .line 663
    .local v2, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Freshest CRL extension could not be decoded from CRL."

    invoke-direct {v3, v4, v2}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 666
    .end local v2    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :cond_2f
    :goto_2f
    if-eqz v1, :cond_70

    .line 668
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 670
    .local v2, "crlStores":Ljava/util/List;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCRLStores()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 674
    :try_start_3d
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getNamedCRLStoreMap()Ljava/util/Map;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getAdditionalStoresFromCRLDistributionPoint(Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;Ljava/util/Map;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_48
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_3d .. :try_end_48} :catch_5e

    .line 680
    nop

    .line 685
    :try_start_49
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    move-result-object v3

    invoke-static {p0, p3, v3, v2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getDeltaCRLs(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_54
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_49 .. :try_end_54} :catch_55

    .line 690
    goto :goto_70

    .line 687
    :catch_55
    move-exception v3

    .line 689
    .local v3, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v5, "Exception obtaining delta CRLs."

    invoke-direct {v4, v5, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 676
    .end local v3    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :catch_5e
    move-exception v3

    .line 678
    .restart local v3    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v5, "No new delta CRL locations could be added from Freshest CRL extension."

    invoke-direct {v4, v5, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 650
    .end local v2    # "crlStores":Ljava/util/List;
    .end local v3    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :catch_67
    move-exception v2

    .line 652
    .local v2, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Freshest CRL extension could not be decoded from certificate."

    invoke-direct {v3, v4, v2}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 693
    .end local v1    # "freshestCRL":Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    .end local v2    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :cond_70
    :goto_70
    return-object v0
.end method

.method protected static blacklist processCRLA1ii(Ljava/util/Date;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509CRL;)[Ljava/util/Set;
    .registers 12
    .param p0, "currentDate"    # Ljava/util/Date;
    .param p1, "paramsPKIX"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .param p2, "cert"    # Ljava/security/cert/X509Certificate;
    .param p3, "crl"    # Ljava/security/cert/X509CRL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 703
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 704
    .local v0, "deltaSet":Ljava/util/Set;
    new-instance v1, Ljava/security/cert/X509CRLSelector;

    invoke-direct {v1}, Ljava/security/cert/X509CRLSelector;-><init>()V

    .line 705
    .local v1, "crlselect":Ljava/security/cert/X509CRLSelector;
    invoke-virtual {v1, p2}, Ljava/security/cert/X509CRLSelector;->setCertificateChecking(Ljava/security/cert/X509Certificate;)V

    .line 709
    :try_start_d
    invoke-static {p3}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/cert/X509CRLSelector;->addIssuerName([B)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_18} :catch_68

    .line 714
    nop

    .line 716
    new-instance v2, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;

    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;-><init>(Ljava/security/cert/CRLSelector;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->setCompleteCRLEnabled(Z)Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->build()Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;

    move-result-object v2

    .line 718
    .local v2, "extSelect":Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;
    move-object v4, p0

    .line 720
    .local v4, "validityDate":Ljava/util/Date;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getDate()Ljava/util/Date;

    move-result-object v5

    if-eqz v5, :cond_32

    .line 722
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getDate()Ljava/util/Date;

    move-result-object v4

    .line 725
    :cond_32
    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_UTIL:Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCRLStores()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v5, v2, v4, v6, v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;->findCRLs(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;Ljava/util/Date;Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v5

    .line 727
    .local v5, "completeSet":Ljava/util/Set;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->isUseDeltasEnabled()Z

    move-result v6

    if-eqz v6, :cond_5f

    .line 732
    :try_start_46
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCRLStores()Ljava/util/List;

    move-result-object v7

    invoke-static {v4, p3, v6, v7}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getDeltaCRLs(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_55
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_46 .. :try_end_55} :catch_56

    .line 737
    goto :goto_5f

    .line 734
    :catch_56
    move-exception v3

    .line 736
    .local v3, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Exception obtaining delta CRLs."

    invoke-direct {v6, v7, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 739
    .end local v3    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :cond_5f
    :goto_5f
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/util/Set;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    aput-object v0, v6, v3

    return-object v6

    .line 711
    .end local v2    # "extSelect":Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;
    .end local v4    # "validityDate":Ljava/util/Date;
    .end local v5    # "completeSet":Ljava/util/Set;
    :catch_68
    move-exception v2

    .line 713
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot extract issuer from CRL."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected static blacklist processCRLB1(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V
    .registers 12
    .param p0, "dp"    # Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .param p1, "cert"    # Ljava/lang/Object;
    .param p2, "crl"    # Ljava/security/cert/X509CRL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 291
    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 292
    .local v0, "idp":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    const/4 v1, 0x0

    .line 293
    .local v1, "isIndirect":Z
    if-eqz v0, :cond_14

    .line 295
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->isIndirectCRL()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 297
    const/4 v1, 0x1

    .line 304
    :cond_14
    :try_start_14
    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getEncoded()[B

    move-result-object v2
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1c} :catch_8d

    .line 309
    .local v2, "issuerBytes":[B
    nop

    .line 311
    const/4 v3, 0x0

    .line 312
    .local v3, "matchIssuer":Z
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v4

    if-eqz v4, :cond_73

    .line 314
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v4

    .line 315
    .local v4, "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2d
    array-length v6, v4

    if-ge v5, v6, :cond_5b

    .line 317
    aget-object v6, v4, v5

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_58

    .line 321
    :try_start_39
    aget-object v6, v4, v5

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v6

    invoke-static {v6, v2}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v6
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_4b} :catch_4f

    if-eqz v6, :cond_4e

    .line 323
    const/4 v3, 0x1

    .line 330
    :cond_4e
    goto :goto_58

    .line 326
    :catch_4f
    move-exception v6

    .line 328
    .local v6, "e":Ljava/io/IOException;
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v8, "CRL issuer information from distribution point cannot be decoded."

    invoke-direct {v7, v8, v6}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 315
    .end local v6    # "e":Ljava/io/IOException;
    :cond_58
    :goto_58
    add-int/lit8 v5, v5, 0x1

    goto :goto_2d

    .line 333
    .end local v5    # "j":I
    :cond_5b
    if-eqz v3, :cond_68

    if-eqz v1, :cond_60

    goto :goto_68

    .line 335
    :cond_60
    new-instance v5, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "Distribution point contains cRLIssuer field but CRL is not indirect."

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 337
    :cond_68
    :goto_68
    if-eqz v3, :cond_6b

    .line 341
    .end local v4    # "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    goto :goto_82

    .line 339
    .restart local v4    # "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :cond_6b
    new-instance v5, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "CRL issuer of CRL does not match CRL issuer of distribution point."

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 344
    .end local v4    # "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :cond_73
    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v4

    .line 345
    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v5

    .line 344
    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_82

    .line 347
    const/4 v3, 0x1

    .line 350
    :cond_82
    :goto_82
    if-eqz v3, :cond_85

    .line 354
    return-void

    .line 352
    :cond_85
    new-instance v4, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v5, "Cannot find matching CRL issuer for certificate."

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 306
    .end local v2    # "issuerBytes":[B
    .end local v3    # "matchIssuer":Z
    :catch_8d
    move-exception v2

    .line 308
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception encoding CRL issuer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected static blacklist processCRLB2(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V
    .registers 14
    .param p0, "dp"    # Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .param p1, "cert"    # Ljava/lang/Object;
    .param p2, "crl"    # Ljava/security/cert/X509CRL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 107
    const/4 v0, 0x0

    .line 110
    .local v0, "idp":Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_start_1
    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {p2, v1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_1cd

    move-object v0, v1

    .line 116
    nop

    .line 119
    if-eqz v0, :cond_1cc

    .line 121
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getDistributionPoint()Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v1

    if-eqz v1, :cond_172

    .line 124
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getDistributionPoint()Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v1

    .line 125
    .local v1, "dpName":Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v2, "names":Ljava/util/List;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v3

    if-nez v3, :cond_40

    .line 129
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v3

    .line 130
    .local v3, "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_35
    array-length v5, v3

    if-ge v4, v5, :cond_40

    .line 132
    aget-object v5, v3, v4

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    .line 135
    .end local v3    # "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .end local v4    # "j":I
    :cond_40
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8b

    .line 137
    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 140
    .local v3, "vec":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :try_start_4c
    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v5

    .line 141
    .local v5, "e":Ljava/util/Enumeration;
    :goto_58
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_68

    .line 143
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v3, v6}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_67} :catch_82

    goto :goto_58

    .line 149
    .end local v5    # "e":Ljava/util/Enumeration;
    :cond_68
    nop

    .line 150
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 151
    new-instance v5, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    new-instance v6, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v6, v3}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8b

    .line 146
    :catch_82
    move-exception v4

    .line 148
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "Could not read CRL issuer."

    invoke-direct {v5, v6, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 153
    .end local v3    # "vec":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_8b
    :goto_8b
    const/4 v3, 0x0

    .line 156
    .local v3, "matches":Z
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v5

    const-string v6, "No match for certificate CRL issuing distribution point name to cRLIssuer CRL distribution point."

    if-eqz v5, :cond_142

    .line 158
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v1

    .line 159
    const/4 v5, 0x0

    .line 160
    .local v5, "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v7

    if-nez v7, :cond_ab

    .line 162
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v5

    .line 164
    :cond_ab
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v7

    if-ne v7, v4, :cond_126

    .line 166
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v7

    if-eqz v7, :cond_c1

    .line 168
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v4

    move-object v5, v4

    .end local v5    # "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .local v4, "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    goto :goto_d8

    .line 172
    .end local v4    # "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .restart local v5    # "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :cond_c1
    new-array v4, v4, [Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    .line 175
    .end local v5    # "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .restart local v4    # "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    const/4 v5, 0x0

    :try_start_c4
    new-instance v7, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    .line 176
    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getEncoded()[B

    move-result-object v8

    .line 175
    invoke-static {v8}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)V

    aput-object v7, v4, v5
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_d7} :catch_11d

    .line 181
    move-object v5, v4

    .line 183
    .end local v4    # "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .restart local v5    # "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :goto_d8
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_d9
    array-length v7, v5

    if-ge v4, v7, :cond_126

    .line 185
    aget-object v7, v5, v4

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v7

    .line 186
    .local v7, "e":Ljava/util/Enumeration;
    new-instance v8, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v8}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 187
    .local v8, "vec":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :goto_f3
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_103

    .line 189
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v8, v9}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_f3

    .line 191
    :cond_103
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 192
    new-instance v9, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    new-instance v10, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v10, v8}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)V

    aput-object v9, v5, v4

    .line 183
    .end local v7    # "e":Ljava/util/Enumeration;
    .end local v8    # "vec":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    add-int/lit8 v4, v4, 0x1

    goto :goto_d9

    .line 178
    .end local v5    # "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .local v4, "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :catch_11d
    move-exception v5

    .line 180
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Could not read certificate issuer."

    invoke-direct {v6, v7, v5}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 195
    .end local v4    # "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .local v5, "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :cond_126
    if-eqz v5, :cond_139

    .line 197
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_129
    array-length v7, v5

    if-ge v4, v7, :cond_139

    .line 199
    aget-object v7, v5, v4

    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_136

    .line 201
    const/4 v3, 0x1

    .line 202
    goto :goto_139

    .line 197
    :cond_136
    add-int/lit8 v4, v4, 0x1

    goto :goto_129

    .line 206
    .end local v4    # "j":I
    :cond_139
    :goto_139
    if-eqz v3, :cond_13c

    .line 211
    .end local v5    # "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    goto :goto_172

    .line 208
    .restart local v5    # "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :cond_13c
    new-instance v4, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    invoke-direct {v4, v6}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 217
    .end local v5    # "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :cond_142
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v4

    if-eqz v4, :cond_16a

    .line 222
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v4

    .line 223
    .local v4, "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_151
    array-length v7, v4

    if-ge v5, v7, :cond_161

    .line 225
    aget-object v7, v4, v5

    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15e

    .line 227
    const/4 v3, 0x1

    .line 228
    goto :goto_161

    .line 223
    :cond_15e
    add-int/lit8 v5, v5, 0x1

    goto :goto_151

    .line 231
    .end local v5    # "j":I
    :cond_161
    :goto_161
    if-eqz v3, :cond_164

    goto :goto_172

    .line 233
    :cond_164
    new-instance v5, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 219
    .end local v4    # "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :cond_16a
    new-instance v4, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v5, "Either the cRLIssuer or the distributionPoint field must be contained in DistributionPoint."

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 238
    .end local v1    # "dpName":Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;
    .end local v2    # "names":Ljava/util/List;
    .end local v3    # "matches":Z
    :cond_172
    :goto_172
    const/4 v1, 0x0

    .line 241
    .local v1, "bc":Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    :try_start_173
    move-object v2, p1

    check-cast v2, Ljava/security/cert/X509Extension;

    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v2
    :try_end_180
    .catch Ljava/lang/Exception; {:try_start_173 .. :try_end_180} :catch_1c3

    move-object v1, v2

    .line 247
    nop

    .line 249
    instance-of v2, p1, Ljava/security/cert/X509Certificate;

    if-eqz v2, :cond_1b4

    .line 252
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsUserCerts()Z

    move-result v2

    if-eqz v2, :cond_19d

    if-eqz v1, :cond_19d

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v2

    if-nez v2, :cond_195

    goto :goto_19d

    .line 254
    :cond_195
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v3, "CA Cert CRL only contains user certificates."

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 258
    :cond_19d
    :goto_19d
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsCACerts()Z

    move-result v2

    if-eqz v2, :cond_1b4

    if-eqz v1, :cond_1ac

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v2

    if-eqz v2, :cond_1ac

    goto :goto_1b4

    .line 260
    :cond_1ac
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v3, "End CRL only contains CA certificates."

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 265
    :cond_1b4
    :goto_1b4
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts()Z

    move-result v2

    if-nez v2, :cond_1bb

    goto :goto_1cc

    .line 267
    :cond_1bb
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v3, "onlyContainsAttributeCerts boolean is asserted."

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 244
    :catch_1c3
    move-exception v2

    .line 246
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Basic constraints extension could not be decoded."

    invoke-direct {v3, v4, v2}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 270
    .end local v1    # "bc":Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1cc
    :goto_1cc
    return-void

    .line 113
    :catch_1cd
    move-exception v1

    .line 115
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v3, "Issuing distribution point extension could not be decoded."

    invoke-direct {v2, v3, v1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected static blacklist processCRLC(Ljava/security/cert/X509CRL;Ljava/security/cert/X509CRL;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)V
    .registers 11
    .param p0, "deltaCRL"    # Ljava/security/cert/X509CRL;
    .param p1, "completeCRL"    # Ljava/security/cert/X509CRL;
    .param p2, "pkixParams"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 761
    if-nez p0, :cond_3

    .line 763
    return-void

    .line 765
    :cond_3
    const/4 v0, 0x0

    .line 768
    .local v0, "completeidp":Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_start_4
    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_a2

    move-object v0, v1

    .line 774
    nop

    .line 776
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->isUseDeltasEnabled()Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 779
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_99

    .line 785
    const/4 v1, 0x0

    .line 788
    .local v1, "deltaidp":Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_start_25
    sget-object v2, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v2
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2f} :catch_90

    move-object v1, v2

    .line 795
    nop

    .line 797
    const/4 v2, 0x0

    .line 798
    .local v2, "match":Z
    if-nez v0, :cond_38

    .line 800
    if-nez v1, :cond_3f

    .line 802
    const/4 v2, 0x1

    goto :goto_3f

    .line 807
    :cond_38
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 809
    const/4 v2, 0x1

    .line 812
    :cond_3f
    :goto_3f
    if-eqz v2, :cond_88

    .line 819
    const/4 v3, 0x0

    .line 822
    .local v3, "completeKeyIdentifier":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :try_start_42
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

    invoke-static {p1, v4}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4
    :try_end_48
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_42 .. :try_end_48} :catch_7f

    move-object v3, v4

    .line 829
    nop

    .line 831
    const/4 v4, 0x0

    .line 834
    .local v4, "deltaKeyIdentifier":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :try_start_4b
    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5
    :try_end_51
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_4b .. :try_end_51} :catch_76

    move-object v4, v5

    .line 841
    nop

    .line 843
    if-eqz v3, :cond_6e

    .line 848
    if-eqz v4, :cond_66

    .line 853
    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5e

    goto :goto_a1

    .line 855
    :cond_5e
    new-instance v5, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "Delta CRL authority key identifier does not match complete CRL authority key identifier."

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 850
    :cond_66
    new-instance v5, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "Delta CRL authority key identifier is null."

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 845
    :cond_6e
    new-instance v5, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "CRL authority key identifier is null."

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 837
    :catch_76
    move-exception v5

    .line 839
    .local v5, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Authority key identifier extension could not be extracted from delta CRL."

    invoke-direct {v6, v7, v5}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 825
    .end local v4    # "deltaKeyIdentifier":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .end local v5    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :catch_7f
    move-exception v4

    .line 827
    .local v4, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v5, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "Authority key identifier extension could not be extracted from complete CRL."

    invoke-direct {v5, v6, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 814
    .end local v3    # "completeKeyIdentifier":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .end local v4    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :cond_88
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Issuing distribution point extension from delta CRL and complete CRL does not match."

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 791
    .end local v2    # "match":Z
    :catch_90
    move-exception v2

    .line 793
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Issuing distribution point extension from delta CRL could not be decoded."

    invoke-direct {v3, v4, v2}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 781
    .end local v1    # "deltaidp":Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_99
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "Complete CRL issuer does not match delta CRL issuer."

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 859
    :cond_a1
    :goto_a1
    return-void

    .line 771
    :catch_a2
    move-exception v1

    .line 773
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v3, "Issuing distribution point extension could not be decoded."

    invoke-direct {v2, v3, v1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected static blacklist processCRLD(Ljava/security/cert/X509CRL;Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;)Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
    .registers 6
    .param p0, "crl"    # Ljava/security/cert/X509CRL;
    .param p1, "dp"    # Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 361
    const/4 v0, 0x0

    .line 364
    .local v0, "idp":Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_start_1
    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_68

    move-object v0, v1

    .line 370
    nop

    .line 372
    if-eqz v0, :cond_32

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getOnlySomeReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v1

    if-eqz v1, :cond_32

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 374
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;-><init>(Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;)V

    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getOnlySomeReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;-><init>(Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;)V

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->intersect(Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;)Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    move-result-object v1

    return-object v1

    .line 377
    :cond_32
    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getOnlySomeReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v1

    if-nez v1, :cond_43

    :cond_3a
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v1

    if-nez v1, :cond_43

    .line 379
    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->allReasons:Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    return-object v1

    .line 382
    :cond_43
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v1

    if-nez v1, :cond_4c

    .line 383
    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->allReasons:Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    goto :goto_55

    .line 384
    :cond_4c
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;-><init>(Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;)V

    :goto_55
    if-nez v0, :cond_5a

    .line 385
    sget-object v2, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->allReasons:Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    goto :goto_63

    .line 386
    :cond_5a
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getOnlySomeReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;-><init>(Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;)V

    .line 384
    :goto_63
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->intersect(Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;)Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    move-result-object v1

    .line 382
    return-object v1

    .line 367
    :catch_68
    move-exception v1

    .line 369
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v3, "Issuing distribution point extension could not be decoded."

    invoke-direct {v2, v3, v1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected static blacklist processCRLF(Ljava/security/cert/X509CRL;Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/List;Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/util/Set;
    .registers 24
    .param p0, "crl"    # Ljava/security/cert/X509CRL;
    .param p1, "cert"    # Ljava/lang/Object;
    .param p2, "defaultCRLSignCert"    # Ljava/security/cert/X509Certificate;
    .param p3, "defaultCRLSignKey"    # Ljava/security/PublicKey;
    .param p4, "paramsPKIX"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .param p5, "certPathCerts"    # Ljava/util/List;
    .param p6, "helper"    # Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 459
    move-object/from16 v1, p2

    new-instance v0, Ljava/security/cert/X509CertSelector;

    invoke-direct {v0}, Ljava/security/cert/X509CertSelector;-><init>()V

    move-object v2, v0

    .line 462
    .local v2, "certSelector":Ljava/security/cert/X509CertSelector;
    :try_start_8
    invoke-static/range {p0 .. p0}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getEncoded()[B

    move-result-object v0

    .line 463
    .local v0, "issuerPrincipal":[B
    invoke-virtual {v2, v0}, Ljava/security/cert/X509CertSelector;->setSubject([B)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_13} :catch_16c

    .line 469
    .end local v0    # "issuerPrincipal":[B
    nop

    .line 471
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;

    invoke-direct {v0, v2}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;-><init>(Ljava/security/cert/CertSelector;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;->build()Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v3

    .line 477
    .local v3, "selector":Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    :try_start_1d
    invoke-virtual/range {p4 .. p4}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCertificateStores()Ljava/util/List;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v0

    move-object v4, v0

    .line 478
    .local v4, "coll":Ljava/util/Collection;
    invoke-virtual/range {p4 .. p4}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_31
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_1d .. :try_end_31} :catch_15d

    .line 483
    nop

    .line 485
    invoke-interface {v4, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 487
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 489
    .local v5, "cert_it":Ljava/util/Iterator;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 490
    .local v6, "validCerts":Ljava/util/List;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 492
    .local v7, "validKeys":Ljava/util/List;
    :goto_45
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_102

    .line 494
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/security/cert/X509Certificate;

    .line 500
    .local v8, "signingCert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v8, v1}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 502
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    move-object/from16 v9, p3

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    goto :goto_45

    .line 508
    :cond_61
    move-object/from16 v9, p3

    :try_start_63
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;-><init>()V

    .line 509
    .local v0, "builder":Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;
    new-instance v10, Ljava/security/cert/X509CertSelector;

    invoke-direct {v10}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 510
    .local v10, "tmpCertSelector":Ljava/security/cert/X509CertSelector;
    invoke-virtual {v10, v8}, Ljava/security/cert/X509CertSelector;->setCertificate(Ljava/security/cert/X509Certificate;)V

    .line 512
    new-instance v11, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    :try_end_72
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_63 .. :try_end_72} :catch_f3
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_63 .. :try_end_72} :catch_e4
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_72} :catch_d3

    move-object/from16 v12, p4

    :try_start_74
    invoke-direct {v11, v12}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)V

    new-instance v13, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;

    invoke-direct {v13, v10}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;-><init>(Ljava/security/cert/CertSelector;)V

    .line 513
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;->build()Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->setTargetConstraints(Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    move-result-object v11
    :try_end_84
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_74 .. :try_end_84} :catch_d1
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_74 .. :try_end_84} :catch_cf
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_84} :catch_cd

    .line 524
    .local v11, "paramsBuilder":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    move-object/from16 v13, p5

    :try_start_86
    invoke-interface {v13, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    const/4 v15, 0x0

    if-eqz v14, :cond_91

    .line 526
    invoke-virtual {v11, v15}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->setRevocationEnabled(Z)V

    goto :goto_95

    .line 530
    :cond_91
    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->setRevocationEnabled(Z)V

    .line 533
    :goto_95
    new-instance v14, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;-><init>(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)V

    invoke-virtual {v14}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->build()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    move-result-object v14

    .line 535
    .local v14, "extParams":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    invoke-virtual {v0, v14}, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->engineBuild(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v15

    invoke-interface {v15}, Ljava/security/cert/CertPathBuilderResult;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v15

    invoke-virtual {v15}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v15

    .line 536
    .local v15, "certs":Ljava/util/List;
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b1
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_86 .. :try_end_b1} :catch_cb
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_86 .. :try_end_b1} :catch_c9
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_b1} :catch_c7

    .line 537
    move-object/from16 v1, p6

    move-object/from16 v16, v0

    const/4 v0, 0x0

    .end local v0    # "builder":Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;
    .local v16, "builder":Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;
    :try_start_b6
    invoke-static {v15, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getNextWorkingKey(Ljava/util/List;ILcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_bd
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_b6 .. :try_end_bd} :catch_c5
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_b6 .. :try_end_bd} :catch_c3
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_bd} :catch_c1

    .line 550
    nop

    .line 551
    .end local v8    # "signingCert":Ljava/security/cert/X509Certificate;
    .end local v10    # "tmpCertSelector":Ljava/security/cert/X509CertSelector;
    .end local v11    # "paramsBuilder":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .end local v14    # "extParams":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    .end local v15    # "certs":Ljava/util/List;
    .end local v16    # "builder":Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;
    move-object/from16 v1, p2

    goto :goto_45

    .line 547
    .restart local v8    # "signingCert":Ljava/security/cert/X509Certificate;
    :catch_c1
    move-exception v0

    goto :goto_da

    .line 543
    :catch_c3
    move-exception v0

    goto :goto_eb

    .line 539
    :catch_c5
    move-exception v0

    goto :goto_fa

    .line 547
    :catch_c7
    move-exception v0

    goto :goto_d8

    .line 543
    :catch_c9
    move-exception v0

    goto :goto_e9

    .line 539
    :catch_cb
    move-exception v0

    goto :goto_f8

    .line 547
    :catch_cd
    move-exception v0

    goto :goto_d6

    .line 543
    :catch_cf
    move-exception v0

    goto :goto_e7

    .line 539
    :catch_d1
    move-exception v0

    goto :goto_f6

    .line 547
    :catch_d3
    move-exception v0

    move-object/from16 v12, p4

    :goto_d6
    move-object/from16 v13, p5

    :goto_d8
    move-object/from16 v1, p6

    .line 549
    .local v0, "e":Ljava/lang/Exception;
    :goto_da
    new-instance v10, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 543
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_e4
    move-exception v0

    move-object/from16 v12, p4

    :goto_e7
    move-object/from16 v13, p5

    :goto_e9
    move-object/from16 v1, p6

    .line 545
    .local v0, "e":Ljava/security/cert/CertPathValidatorException;
    :goto_eb
    new-instance v10, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v11, "Public key of issuer certificate of CRL could not be retrieved."

    invoke-direct {v10, v11, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 539
    .end local v0    # "e":Ljava/security/cert/CertPathValidatorException;
    :catch_f3
    move-exception v0

    move-object/from16 v12, p4

    :goto_f6
    move-object/from16 v13, p5

    :goto_f8
    move-object/from16 v1, p6

    .line 541
    .local v0, "e":Ljava/security/cert/CertPathBuilderException;
    :goto_fa
    new-instance v10, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v11, "CertPath for CRL signer failed to validate."

    invoke-direct {v10, v11, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 553
    .end local v0    # "e":Ljava/security/cert/CertPathBuilderException;
    .end local v8    # "signingCert":Ljava/security/cert/X509Certificate;
    :cond_102
    move-object/from16 v9, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v1, p6

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 555
    .local v0, "checkKeys":Ljava/util/Set;
    const/4 v8, 0x0

    .line 556
    .local v8, "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_111
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_141

    .line 558
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/security/cert/X509Certificate;

    .line 559
    .local v11, "signCert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v14

    .line 561
    .local v14, "keyusage":[Z
    if-eqz v14, :cond_135

    array-length v15, v14

    const/4 v1, 0x7

    if-lt v15, v1, :cond_12c

    const/4 v1, 0x6

    aget-boolean v1, v14, v1

    if-nez v1, :cond_135

    .line 563
    :cond_12c
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v15, "Issuer certificate key usage extension does not permit CRL signing."

    invoke-direct {v1, v15}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    move-object v8, v1

    .end local v8    # "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .local v1, "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    goto :goto_13c

    .line 568
    .end local v1    # "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v8    # "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :cond_135
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 556
    .end local v11    # "signCert":Ljava/security/cert/X509Certificate;
    .end local v14    # "keyusage":[Z
    :goto_13c
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p6

    goto :goto_111

    .line 572
    .end local v10    # "i":I
    :cond_141
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_152

    if-eqz v8, :cond_14a

    goto :goto_152

    .line 574
    :cond_14a
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v10, "Cannot find a valid issuer certificate."

    invoke-direct {v1, v10}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 576
    :cond_152
    :goto_152
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15c

    if-nez v8, :cond_15b

    goto :goto_15c

    .line 578
    :cond_15b
    throw v8

    .line 581
    :cond_15c
    :goto_15c
    return-object v0

    .line 480
    .end local v0    # "checkKeys":Ljava/util/Set;
    .end local v4    # "coll":Ljava/util/Collection;
    .end local v5    # "cert_it":Ljava/util/Iterator;
    .end local v6    # "validCerts":Ljava/util/List;
    .end local v7    # "validKeys":Ljava/util/List;
    .end local v8    # "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :catch_15d
    move-exception v0

    move-object/from16 v9, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    .line 482
    .local v0, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Issuer certificate for CRL cannot be searched."

    invoke-direct {v1, v4, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 465
    .end local v0    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .end local v3    # "selector":Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    :catch_16c
    move-exception v0

    move-object/from16 v9, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    .line 467
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v3, "Subject criteria for certificate selector to find issuer certificate for CRL could not be set."

    invoke-direct {v1, v3, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static blacklist processCRLG(Ljava/security/cert/X509CRL;Ljava/util/Set;)Ljava/security/PublicKey;
    .registers 6
    .param p0, "crl"    # Ljava/security/cert/X509CRL;
    .param p1, "keys"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 589
    const/4 v0, 0x0

    .line 590
    .local v0, "lastException":Ljava/lang/Exception;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 592
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/PublicKey;

    .line 595
    .local v2, "key":Ljava/security/PublicKey;
    :try_start_11
    invoke-virtual {p0, v2}, Ljava/security/cert/X509CRL;->verify(Ljava/security/PublicKey;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_14} :catch_15

    .line 596
    return-object v2

    .line 598
    :catch_15
    move-exception v3

    .line 600
    .local v3, "e":Ljava/lang/Exception;
    move-object v0, v3

    .line 602
    .end local v2    # "key":Ljava/security/PublicKey;
    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_5

    .line 603
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_18
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "Cannot verify CRL."

    invoke-direct {v1, v2, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static blacklist processCRLH(Ljava/util/Set;Ljava/security/PublicKey;)Ljava/security/cert/X509CRL;
    .registers 6
    .param p0, "deltacrls"    # Ljava/util/Set;
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 611
    const/4 v0, 0x0

    .line 613
    .local v0, "lastException":Ljava/lang/Exception;
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 615
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509CRL;

    .line 618
    .local v2, "crl":Ljava/security/cert/X509CRL;
    :try_start_11
    invoke-virtual {v2, p1}, Ljava/security/cert/X509CRL;->verify(Ljava/security/PublicKey;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_14} :catch_15

    .line 619
    return-object v2

    .line 621
    :catch_15
    move-exception v3

    .line 623
    .local v3, "e":Ljava/lang/Exception;
    move-object v0, v3

    .line 625
    .end local v2    # "crl":Ljava/security/cert/X509CRL;
    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_5

    .line 627
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_18
    if-nez v0, :cond_1c

    .line 631
    const/4 v1, 0x0

    return-object v1

    .line 629
    :cond_1c
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "Cannot verify delta CRL."

    invoke-direct {v1, v2, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static blacklist processCRLI(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/org/bouncycastle/jce/provider/CertStatus;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)V
    .registers 6
    .param p0, "validDate"    # Ljava/util/Date;
    .param p1, "deltacrl"    # Ljava/security/cert/X509CRL;
    .param p2, "cert"    # Ljava/lang/Object;
    .param p3, "certStatus"    # Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    .param p4, "pkixParams"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 869
    invoke-virtual {p4}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->isUseDeltasEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    .line 871
    invoke-static {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getCertStatus(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/org/bouncycastle/jce/provider/CertStatus;)V

    .line 873
    :cond_b
    return-void
.end method

.method protected static blacklist processCRLJ(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/org/bouncycastle/jce/provider/CertStatus;)V
    .registers 6
    .param p0, "validDate"    # Ljava/util/Date;
    .param p1, "completecrl"    # Ljava/security/cert/X509CRL;
    .param p2, "cert"    # Ljava/lang/Object;
    .param p3, "certStatus"    # Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 882
    invoke-virtual {p3}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_b

    .line 884
    invoke-static {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getCertStatus(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/org/bouncycastle/jce/provider/CertStatus;)V

    .line 886
    :cond_b
    return-void
.end method

.method protected static blacklist processCertA(Ljava/security/cert/CertPath;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;ILjava/security/PublicKey;ZLcom/android/org/bouncycastle/asn1/x500/X500Name;Ljava/security/cert/X509Certificate;Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;)V
    .registers 23
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "paramsPKIX"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .param p2, "index"    # I
    .param p3, "workingPublicKey"    # Ljava/security/PublicKey;
    .param p4, "verificationAlreadyPerformed"    # Z
    .param p5, "workingIssuerName"    # Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .param p6, "sign"    # Ljava/security/cert/X509Certificate;
    .param p7, "helper"    # Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;
        }
    .end annotation

    .line 1490
    move-object v1, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p5

    const-string v2, "Could not validate certificate: "

    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v12

    .line 1491
    .local v12, "certs":Ljava/util/List;
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/security/cert/X509Certificate;

    .line 1495
    .local v13, "cert":Ljava/security/cert/X509Certificate;
    if-nez p4, :cond_2e

    .line 1501
    nop

    .line 1502
    :try_start_17
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v0
    :try_end_1b
    .catch Ljava/security/GeneralSecurityException; {:try_start_17 .. :try_end_1b} :catch_23

    .line 1501
    move-object/from16 v14, p3

    :try_start_1d
    invoke-static {v13, v14, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->verifyX509Certificate(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/security/GeneralSecurityException; {:try_start_1d .. :try_end_20} :catch_21

    .line 1507
    goto :goto_30

    .line 1504
    :catch_21
    move-exception v0

    goto :goto_26

    :catch_23
    move-exception v0

    move-object/from16 v14, p3

    .line 1506
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :goto_26
    new-instance v2, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v3, "Could not validate certificate signature."

    invoke-direct {v2, v3, v0, p0, v10}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2

    .line 1495
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :cond_2e
    move-object/from16 v14, p3

    .line 1514
    :goto_30
    nop

    .line 1515
    :try_start_31
    invoke-static {v9, p0, v10}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getValidCertDateFromValidityModel(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/security/cert/CertPath;I)Ljava/util/Date;

    move-result-object v0

    .line 1514
    invoke-virtual {v13, v0}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_38
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_31 .. :try_end_38} :catch_be
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_31 .. :try_end_38} :catch_a4
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_31 .. :try_end_38} :catch_9b

    .line 1528
    nop

    .line 1533
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->isRevocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 1537
    :try_start_3f
    invoke-static {v9, p0, v10}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getValidCertDateFromValidityModel(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/security/cert/CertPath;I)Ljava/util/Date;

    move-result-object v4

    move-object/from16 v2, p1

    move-object v3, v13

    move-object/from16 v5, p6

    move-object/from16 v6, p3

    move-object v7, v12

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v8}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->checkCRLs(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/List;Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;)V
    :try_end_50
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_3f .. :try_end_50} :catch_51

    .line 1548
    goto :goto_67

    .line 1540
    :catch_51
    move-exception v0

    .line 1542
    .local v0, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    move-object v2, v0

    .line 1543
    .local v2, "cause":Ljava/lang/Throwable;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_5d

    .line 1545
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 1547
    :cond_5d
    new-instance v3, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2, p0, v10}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    .line 1554
    .end local v0    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .end local v2    # "cause":Ljava/lang/Throwable;
    :cond_67
    :goto_67
    invoke-static {v13}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 1560
    return-void

    .line 1556
    :cond_72
    new-instance v0, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IssuerName("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") does not match SubjectName("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") of signing certificate."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, p0, v10}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1525
    :catch_9b
    move-exception v0

    .line 1527
    .restart local v0    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v2, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v3, "Could not validate time of certificate."

    invoke-direct {v2, v3, v0, p0, v10}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2

    .line 1521
    .end local v0    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :catch_a4
    move-exception v0

    .line 1523
    .local v0, "e":Ljava/security/cert/CertificateNotYetValidException;
    new-instance v3, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/cert/CertificateNotYetValidException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v0, p0, v10}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    .line 1517
    .end local v0    # "e":Ljava/security/cert/CertificateNotYetValidException;
    :catch_be
    move-exception v0

    .line 1519
    .local v0, "e":Ljava/security/cert/CertificateExpiredException;
    new-instance v3, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/cert/CertificateExpiredException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v0, p0, v10}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3
.end method

.method protected static blacklist processCertBC(Ljava/security/cert/CertPath;ILcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;)V
    .registers 20
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "nameConstraintValidator"    # Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 1185
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {p0 .. p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v4

    .line 1186
    .local v4, "certs":Ljava/util/List;
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 1187
    .local v5, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    .line 1189
    .local v6, "n":I
    sub-int v7, v6, v2

    .line 1193
    .local v7, "i":I
    invoke-static {v5}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-eqz v0, :cond_24

    if-lt v7, v6, :cond_20

    goto :goto_24

    :cond_20
    move-object/from16 v16, v4

    goto/16 :goto_b3

    .line 1195
    :cond_24
    :goto_24
    invoke-static {v5}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v8

    .line 1200
    .local v8, "principal":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    :try_start_28
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_30} :catch_ca

    move-object v9, v0

    .line 1206
    .local v9, "dns":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    nop

    .line 1210
    :try_start_32
    invoke-virtual {v3, v9}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkPermittedDN(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 1211
    invoke-virtual {v3, v9}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkExcludedDN(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    :try_end_38
    .catch Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_32 .. :try_end_38} :catch_bf

    .line 1217
    nop

    .line 1219
    const/4 v10, 0x0

    .line 1222
    .local v10, "altName":Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    :try_start_3a
    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_44} :catch_b4

    move-object v10, v0

    .line 1229
    nop

    .line 1230
    invoke-static {v9}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    sget-object v11, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->EmailAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v11}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getRDNs(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    move-result-object v11

    .line 1231
    .local v11, "emails":[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    const/4 v0, 0x0

    move v12, v0

    .local v12, "eI":I
    :goto_52
    array-length v0, v11

    if-eq v12, v0, :cond_81

    .line 1234
    aget-object v0, v11, v12

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1String;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v13

    .line 1235
    .local v13, "email":Ljava/lang/String;
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    const/4 v14, 0x1

    invoke-direct {v0, v14, v13}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(ILjava/lang/String;)V

    move-object v14, v0

    .line 1238
    .local v14, "emailAsGeneralName":Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :try_start_6c
    invoke-virtual {v3, v14}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkPermitted(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V

    .line 1239
    invoke-virtual {v3, v14}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkExcluded(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V
    :try_end_72
    .catch Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_6c .. :try_end_72} :catch_76

    .line 1245
    nop

    .line 1231
    .end local v13    # "email":Ljava/lang/String;
    .end local v14    # "emailAsGeneralName":Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    add-int/lit8 v12, v12, 0x1

    goto :goto_52

    .line 1241
    .restart local v13    # "email":Ljava/lang/String;
    .restart local v14    # "emailAsGeneralName":Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :catch_76
    move-exception v0

    .line 1243
    .local v0, "ex":Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
    new-instance v15, Ljava/security/cert/CertPathValidatorException;

    move-object/from16 v16, v4

    .end local v4    # "certs":Ljava/util/List;
    .local v16, "certs":Ljava/util/List;
    const-string v4, "Subtree check for certificate subject alternative email failed."

    invoke-direct {v15, v4, v0, v1, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v15

    .line 1231
    .end local v0    # "ex":Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
    .end local v13    # "email":Ljava/lang/String;
    .end local v14    # "emailAsGeneralName":Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .end local v16    # "certs":Ljava/util/List;
    .restart local v4    # "certs":Ljava/util/List;
    :cond_81
    move-object/from16 v16, v4

    .line 1247
    .end local v4    # "certs":Ljava/util/List;
    .end local v12    # "eI":I
    .restart local v16    # "certs":Ljava/util/List;
    if-eqz v10, :cond_b3

    .line 1249
    const/4 v4, 0x0

    .line 1252
    .local v4, "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :try_start_86
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_8a} :catch_a8

    move-object v4, v0

    .line 1258
    nop

    .line 1259
    const/4 v0, 0x0

    move v12, v0

    .local v12, "j":I
    :goto_8e
    array-length v0, v4

    if-ge v12, v0, :cond_b3

    .line 1264
    :try_start_91
    aget-object v0, v4, v12

    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkPermitted(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V

    .line 1265
    aget-object v0, v4, v12

    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkExcluded(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V
    :try_end_9b
    .catch Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_91 .. :try_end_9b} :catch_9f

    .line 1271
    nop

    .line 1259
    add-int/lit8 v12, v12, 0x1

    goto :goto_8e

    .line 1267
    :catch_9f
    move-exception v0

    .line 1269
    .local v0, "e":Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
    new-instance v13, Ljava/security/cert/CertPathValidatorException;

    const-string v14, "Subtree check for certificate subject alternative name failed."

    invoke-direct {v13, v14, v0, v1, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v13

    .line 1254
    .end local v0    # "e":Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
    .end local v12    # "j":I
    :catch_a8
    move-exception v0

    move-object v12, v0

    move-object v0, v12

    .line 1256
    .local v0, "e":Ljava/lang/Exception;
    new-instance v12, Ljava/security/cert/CertPathValidatorException;

    const-string v13, "Subject alternative name contents could not be decoded."

    invoke-direct {v12, v13, v0, v1, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v12

    .line 1275
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .end local v8    # "principal":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .end local v9    # "dns":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v10    # "altName":Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .end local v11    # "emails":[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    :cond_b3
    :goto_b3
    return-void

    .line 1225
    .end local v16    # "certs":Ljava/util/List;
    .local v4, "certs":Ljava/util/List;
    .restart local v8    # "principal":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .restart local v9    # "dns":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v10    # "altName":Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    :catch_b4
    move-exception v0

    move-object/from16 v16, v4

    .line 1227
    .end local v4    # "certs":Ljava/util/List;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v16    # "certs":Ljava/util/List;
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v11, "Subject alternative name extension could not be decoded."

    invoke-direct {v4, v11, v0, v1, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 1213
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v10    # "altName":Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .end local v16    # "certs":Ljava/util/List;
    .restart local v4    # "certs":Ljava/util/List;
    :catch_bf
    move-exception v0

    move-object/from16 v16, v4

    .line 1215
    .end local v4    # "certs":Ljava/util/List;
    .local v0, "e":Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
    .restart local v16    # "certs":Ljava/util/List;
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v10, "Subtree check for certificate subject failed."

    invoke-direct {v4, v10, v0, v1, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 1202
    .end local v0    # "e":Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
    .end local v9    # "dns":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v16    # "certs":Ljava/util/List;
    .restart local v4    # "certs":Ljava/util/List;
    :catch_ca
    move-exception v0

    move-object/from16 v16, v4

    .line 1204
    .end local v4    # "certs":Ljava/util/List;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v16    # "certs":Ljava/util/List;
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v9, "Exception extracting subject name when checking subtrees."

    invoke-direct {v4, v9, v0, v1, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4
.end method

.method protected static blacklist processCertD(Ljava/security/cert/CertPath;ILjava/util/Set;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;I)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .registers 38
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "acceptablePolicies"    # Ljava/util/Set;
    .param p3, "validPolicyTree"    # Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .param p4, "policyNodes"    # [Ljava/util/List;
    .param p5, "inhibitAnyPolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 1286
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    invoke-virtual/range {p0 .. p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v5

    .line 1287
    .local v5, "certs":Ljava/util/List;
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 1288
    .local v6, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    .line 1290
    .local v7, "n":I
    sub-int v15, v7, v2

    .line 1295
    .local v15, "i":I
    const/4 v8, 0x0

    .line 1298
    .local v8, "certPolicies":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_1a
    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0
    :try_end_24
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_1a .. :try_end_24} :catch_227

    move-object/from16 v16, v0

    .line 1305
    .end local v8    # "certPolicies":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .local v16, "certPolicies":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    nop

    .line 1306
    if-eqz v16, :cond_223

    if-eqz p3, :cond_223

    .line 1311
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v8

    .line 1312
    .local v8, "e":Ljava/util/Enumeration;
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v14, v0

    .line 1314
    .local v14, "pols":Ljava/util/Set;
    :goto_35
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    const-string v9, "2.5.29.32.0"

    if-eqz v0, :cond_78

    .line 1316
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object v10

    .line 1317
    .local v10, "pInfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v11

    .line 1319
    .local v11, "pOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1321
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77

    .line 1323
    const/4 v9, 0x0

    .line 1326
    .local v9, "pq":Ljava/util/Set;
    :try_start_5b
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getQualifierSet(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;

    move-result-object v0
    :try_end_63
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_5b .. :try_end_63} :catch_6e

    .line 1332
    .end local v9    # "pq":Ljava/util/Set;
    .local v0, "pq":Ljava/util/Set;
    nop

    .line 1334
    invoke-static {v15, v4, v11, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->processCertD1i(I[Ljava/util/List;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Set;)Z

    move-result v9

    .line 1336
    .local v9, "match":Z
    if-nez v9, :cond_77

    .line 1338
    invoke-static {v15, v4, v11, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->processCertD1ii(I[Ljava/util/List;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Set;)V

    goto :goto_77

    .line 1328
    .end local v0    # "pq":Ljava/util/Set;
    .local v9, "pq":Ljava/util/Set;
    :catch_6e
    move-exception v0

    .line 1330
    .local v0, "ex":Ljava/security/cert/CertPathValidatorException;
    new-instance v12, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v13, "Policy qualifier info set could not be build."

    invoke-direct {v12, v13, v0, v1, v2}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v12

    .line 1341
    .end local v0    # "ex":Ljava/security/cert/CertPathValidatorException;
    .end local v9    # "pq":Ljava/util/Set;
    .end local v10    # "pInfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    .end local v11    # "pOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_77
    :goto_77
    goto :goto_35

    .line 1343
    :cond_78
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a9

    invoke-interface {v3, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_85

    goto :goto_a9

    .line 1350
    :cond_85
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1351
    .local v0, "it":Ljava/util/Iterator;
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 1353
    .local v10, "t1":Ljava/util/Set;
    :goto_8e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a2

    .line 1355
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 1357
    .local v11, "o":Ljava/lang/Object;
    invoke-interface {v14, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a1

    .line 1359
    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1361
    .end local v11    # "o":Ljava/lang/Object;
    :cond_a1
    goto :goto_8e

    .line 1362
    :cond_a2
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->clear()V

    .line 1363
    invoke-interface {v3, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_af

    .line 1345
    .end local v0    # "it":Ljava/util/Iterator;
    .end local v10    # "t1":Ljava/util/Set;
    :cond_a9
    :goto_a9
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->clear()V

    .line 1346
    invoke-interface {v3, v14}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1369
    :goto_af
    if-gtz p5, :cond_c0

    if-ge v15, v7, :cond_ba

    invoke-static {v6}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-eqz v0, :cond_ba

    goto :goto_c0

    .line 1435
    :cond_ba
    move-object/from16 v30, v14

    move/from16 v31, v15

    goto/16 :goto_1d9

    .line 1371
    :cond_c0
    :goto_c0
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 1373
    .end local v8    # "e":Ljava/util/Enumeration;
    .local v0, "e":Ljava/util/Enumeration;
    :goto_c4
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_1d1

    .line 1375
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object v17

    .line 1377
    .local v17, "pInfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    invoke-virtual/range {v17 .. v17}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c9

    .line 1379
    invoke-virtual/range {v17 .. v17}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v8

    invoke-static {v8}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getQualifierSet(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;

    move-result-object v18

    .line 1380
    .local v18, "_apq":Ljava/util/Set;
    add-int/lit8 v8, v15, -0x1

    aget-object v13, v4, v8

    .line 1382
    .local v13, "_nodes":Ljava/util/List;
    const/4 v8, 0x0

    move v12, v8

    .local v12, "k":I
    :goto_ee
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v8

    if-ge v12, v8, :cond_1be

    .line 1384
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v11, v8

    check-cast v11, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1386
    .local v11, "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getExpectedPolicies()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 1387
    .local v19, "_policySetIter":Ljava/util/Iterator;
    :goto_103
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1af

    .line 1389
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 1392
    .local v10, "_tmp":Ljava/lang/Object;
    instance-of v8, v10, Ljava/lang/String;

    if-eqz v8, :cond_116

    .line 1394
    move-object v8, v10

    check-cast v8, Ljava/lang/String;

    move-object v9, v8

    .local v8, "_policy":Ljava/lang/String;
    goto :goto_122

    .line 1396
    .end local v8    # "_policy":Ljava/lang/String;
    :cond_116
    instance-of v8, v10, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v8, :cond_1a0

    .line 1398
    move-object v8, v10

    check-cast v8, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    .line 1405
    .local v9, "_policy":Ljava/lang/String;
    :goto_122
    const/4 v8, 0x0

    .line 1406
    .local v8, "_found":Z
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v20

    move/from16 v21, v8

    .line 1408
    .end local v8    # "_found":Z
    .local v20, "_childrenIter":Ljava/util/Iterator;
    .local v21, "_found":Z
    :goto_129
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_147

    .line 1410
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1412
    .local v8, "_child":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    move-object/from16 v22, v0

    .end local v0    # "e":Ljava/util/Enumeration;
    .local v22, "e":Ljava/util/Enumeration;
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_144

    .line 1414
    const/4 v0, 0x1

    move/from16 v21, v0

    .line 1416
    .end local v8    # "_child":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_144
    move-object/from16 v0, v22

    goto :goto_129

    .line 1418
    .end local v22    # "e":Ljava/util/Enumeration;
    .restart local v0    # "e":Ljava/util/Enumeration;
    :cond_147
    move-object/from16 v22, v0

    .end local v0    # "e":Ljava/util/Enumeration;
    .restart local v22    # "e":Ljava/util/Enumeration;
    if-nez v21, :cond_186

    .line 1420
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1421
    .local v0, "_newChildExpectedPolicies":Ljava/util/Set;
    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1423
    new-instance v23, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    const/16 v25, 0x0

    move-object/from16 v8, v23

    move-object/from16 v26, v9

    .end local v9    # "_policy":Ljava/lang/String;
    .local v26, "_policy":Ljava/lang/String;
    move-object/from16 v9, v24

    move-object/from16 v24, v10

    .end local v10    # "_tmp":Ljava/lang/Object;
    .local v24, "_tmp":Ljava/lang/Object;
    move v10, v15

    move-object/from16 v27, v11

    .end local v11    # "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v27, "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    move-object v11, v0

    move/from16 v28, v12

    .end local v12    # "k":I
    .local v28, "k":I
    move-object/from16 v12, v27

    move-object/from16 v29, v13

    .end local v13    # "_nodes":Ljava/util/List;
    .local v29, "_nodes":Ljava/util/List;
    move-object/from16 v13, v18

    move-object/from16 v30, v14

    .end local v14    # "pols":Ljava/util/Set;
    .local v30, "pols":Ljava/util/Set;
    move-object/from16 v14, v26

    move/from16 v31, v15

    .end local v15    # "i":I
    .local v31, "i":I
    move/from16 v15, v25

    invoke-direct/range {v8 .. v15}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 1425
    .local v8, "_newChild":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    move-object/from16 v9, v27

    .end local v27    # "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v9, "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v9, v8}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 1426
    aget-object v10, v4, v31

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_193

    .line 1418
    .end local v0    # "_newChildExpectedPolicies":Ljava/util/Set;
    .end local v8    # "_newChild":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v24    # "_tmp":Ljava/lang/Object;
    .end local v26    # "_policy":Ljava/lang/String;
    .end local v28    # "k":I
    .end local v29    # "_nodes":Ljava/util/List;
    .end local v30    # "pols":Ljava/util/Set;
    .end local v31    # "i":I
    .local v9, "_policy":Ljava/lang/String;
    .restart local v10    # "_tmp":Ljava/lang/Object;
    .restart local v11    # "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v12    # "k":I
    .restart local v13    # "_nodes":Ljava/util/List;
    .restart local v14    # "pols":Ljava/util/Set;
    .restart local v15    # "i":I
    :cond_186
    move-object/from16 v26, v9

    move-object/from16 v24, v10

    move-object v9, v11

    move/from16 v28, v12

    move-object/from16 v29, v13

    move-object/from16 v30, v14

    move/from16 v31, v15

    .line 1428
    .end local v10    # "_tmp":Ljava/lang/Object;
    .end local v11    # "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v12    # "k":I
    .end local v13    # "_nodes":Ljava/util/List;
    .end local v14    # "pols":Ljava/util/Set;
    .end local v15    # "i":I
    .end local v20    # "_childrenIter":Ljava/util/Iterator;
    .end local v21    # "_found":Z
    .local v9, "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v28    # "k":I
    .restart local v29    # "_nodes":Ljava/util/List;
    .restart local v30    # "pols":Ljava/util/Set;
    .restart local v31    # "i":I
    :goto_193
    move-object v11, v9

    move-object/from16 v0, v22

    move/from16 v12, v28

    move-object/from16 v13, v29

    move-object/from16 v14, v30

    move/from16 v15, v31

    goto/16 :goto_103

    .line 1396
    .end local v9    # "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v22    # "e":Ljava/util/Enumeration;
    .end local v28    # "k":I
    .end local v29    # "_nodes":Ljava/util/List;
    .end local v30    # "pols":Ljava/util/Set;
    .end local v31    # "i":I
    .local v0, "e":Ljava/util/Enumeration;
    .restart local v10    # "_tmp":Ljava/lang/Object;
    .restart local v11    # "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v12    # "k":I
    .restart local v13    # "_nodes":Ljava/util/List;
    .restart local v14    # "pols":Ljava/util/Set;
    .restart local v15    # "i":I
    :cond_1a0
    move-object/from16 v22, v0

    move-object/from16 v24, v10

    move-object v9, v11

    move/from16 v28, v12

    move-object/from16 v29, v13

    move-object/from16 v30, v14

    move/from16 v31, v15

    .end local v0    # "e":Ljava/util/Enumeration;
    .end local v10    # "_tmp":Ljava/lang/Object;
    .end local v11    # "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v12    # "k":I
    .end local v13    # "_nodes":Ljava/util/List;
    .end local v14    # "pols":Ljava/util/Set;
    .end local v15    # "i":I
    .restart local v9    # "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v22    # "e":Ljava/util/Enumeration;
    .restart local v24    # "_tmp":Ljava/lang/Object;
    .restart local v28    # "k":I
    .restart local v29    # "_nodes":Ljava/util/List;
    .restart local v30    # "pols":Ljava/util/Set;
    .restart local v31    # "i":I
    goto/16 :goto_103

    .line 1387
    .end local v9    # "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v22    # "e":Ljava/util/Enumeration;
    .end local v24    # "_tmp":Ljava/lang/Object;
    .end local v28    # "k":I
    .end local v29    # "_nodes":Ljava/util/List;
    .end local v30    # "pols":Ljava/util/Set;
    .end local v31    # "i":I
    .restart local v0    # "e":Ljava/util/Enumeration;
    .restart local v11    # "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v12    # "k":I
    .restart local v13    # "_nodes":Ljava/util/List;
    .restart local v14    # "pols":Ljava/util/Set;
    .restart local v15    # "i":I
    :cond_1af
    move-object/from16 v22, v0

    move-object v9, v11

    move/from16 v28, v12

    move-object/from16 v29, v13

    move-object/from16 v30, v14

    move/from16 v31, v15

    .line 1382
    .end local v0    # "e":Ljava/util/Enumeration;
    .end local v11    # "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v12    # "k":I
    .end local v13    # "_nodes":Ljava/util/List;
    .end local v14    # "pols":Ljava/util/Set;
    .end local v15    # "i":I
    .end local v19    # "_policySetIter":Ljava/util/Iterator;
    .restart local v22    # "e":Ljava/util/Enumeration;
    .restart local v28    # "k":I
    .restart local v29    # "_nodes":Ljava/util/List;
    .restart local v30    # "pols":Ljava/util/Set;
    .restart local v31    # "i":I
    add-int/lit8 v12, v28, 0x1

    .end local v28    # "k":I
    .restart local v12    # "k":I
    goto/16 :goto_ee

    .end local v22    # "e":Ljava/util/Enumeration;
    .end local v29    # "_nodes":Ljava/util/List;
    .end local v30    # "pols":Ljava/util/Set;
    .end local v31    # "i":I
    .restart local v0    # "e":Ljava/util/Enumeration;
    .restart local v13    # "_nodes":Ljava/util/List;
    .restart local v14    # "pols":Ljava/util/Set;
    .restart local v15    # "i":I
    :cond_1be
    move-object/from16 v22, v0

    move/from16 v28, v12

    move-object/from16 v29, v13

    move-object/from16 v30, v14

    move/from16 v31, v15

    .line 1430
    .end local v0    # "e":Ljava/util/Enumeration;
    .end local v12    # "k":I
    .end local v13    # "_nodes":Ljava/util/List;
    .end local v14    # "pols":Ljava/util/Set;
    .end local v15    # "i":I
    .restart local v22    # "e":Ljava/util/Enumeration;
    .restart local v29    # "_nodes":Ljava/util/List;
    .restart local v30    # "pols":Ljava/util/Set;
    .restart local v31    # "i":I
    goto :goto_1d7

    .line 1377
    .end local v18    # "_apq":Ljava/util/Set;
    .end local v22    # "e":Ljava/util/Enumeration;
    .end local v29    # "_nodes":Ljava/util/List;
    .end local v30    # "pols":Ljava/util/Set;
    .end local v31    # "i":I
    .restart local v0    # "e":Ljava/util/Enumeration;
    .restart local v14    # "pols":Ljava/util/Set;
    .restart local v15    # "i":I
    :cond_1c9
    move-object/from16 v22, v0

    move-object/from16 v30, v14

    move/from16 v31, v15

    .line 1432
    .end local v0    # "e":Ljava/util/Enumeration;
    .end local v14    # "pols":Ljava/util/Set;
    .end local v15    # "i":I
    .end local v17    # "pInfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    .restart local v22    # "e":Ljava/util/Enumeration;
    .restart local v30    # "pols":Ljava/util/Set;
    .restart local v31    # "i":I
    goto/16 :goto_c4

    .line 1373
    .end local v22    # "e":Ljava/util/Enumeration;
    .end local v30    # "pols":Ljava/util/Set;
    .end local v31    # "i":I
    .restart local v0    # "e":Ljava/util/Enumeration;
    .restart local v14    # "pols":Ljava/util/Set;
    .restart local v15    # "i":I
    :cond_1d1
    move-object/from16 v22, v0

    move-object/from16 v30, v14

    move/from16 v31, v15

    .line 1435
    .end local v0    # "e":Ljava/util/Enumeration;
    .end local v14    # "pols":Ljava/util/Set;
    .end local v15    # "i":I
    .restart local v22    # "e":Ljava/util/Enumeration;
    .restart local v30    # "pols":Ljava/util/Set;
    .restart local v31    # "i":I
    :goto_1d7
    move-object/from16 v8, v22

    .end local v22    # "e":Ljava/util/Enumeration;
    .local v8, "e":Ljava/util/Enumeration;
    :goto_1d9
    move-object/from16 v0, p3

    .line 1439
    .local v0, "_validPolicyTree":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    add-int/lit8 v15, v31, -0x1

    .local v15, "j":I
    :goto_1dd
    if-ltz v15, :cond_201

    .line 1441
    aget-object v9, v4, v15

    .line 1443
    .local v9, "nodes":Ljava/util/List;
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_1e2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_1fe

    .line 1445
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1446
    .local v11, "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v12

    if-nez v12, :cond_1fb

    .line 1448
    invoke-static {v0, v4, v11}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v0

    .line 1450
    if-nez v0, :cond_1fb

    .line 1452
    goto :goto_1fe

    .line 1443
    .end local v11    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_1fb
    add-int/lit8 v10, v10, 0x1

    goto :goto_1e2

    .line 1439
    .end local v9    # "nodes":Ljava/util/List;
    .end local v10    # "k":I
    :cond_1fe
    :goto_1fe
    add-int/lit8 v15, v15, -0x1

    goto :goto_1dd

    .line 1461
    .end local v15    # "j":I
    :cond_201
    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v9

    .line 1463
    .local v9, "criticalExtensionOids":Ljava/util/Set;
    if-eqz v9, :cond_222

    .line 1465
    sget-object v10, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    .line 1467
    .local v10, "critical":Z
    aget-object v11, v4, v31

    .line 1468
    .local v11, "nodes":Ljava/util/List;
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_210
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_222

    .line 1470
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1471
    .local v13, "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v13, v10}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->setCritical(Z)V

    .line 1468
    .end local v13    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    add-int/lit8 v12, v12, 0x1

    goto :goto_210

    .line 1474
    .end local v10    # "critical":Z
    .end local v11    # "nodes":Ljava/util/List;
    .end local v12    # "j":I
    :cond_222
    return-object v0

    .line 1306
    .end local v0    # "_validPolicyTree":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v8    # "e":Ljava/util/Enumeration;
    .end local v9    # "criticalExtensionOids":Ljava/util/Set;
    .end local v30    # "pols":Ljava/util/Set;
    .end local v31    # "i":I
    .local v15, "i":I
    :cond_223
    move/from16 v31, v15

    .line 1476
    .end local v15    # "i":I
    .restart local v31    # "i":I
    const/4 v0, 0x0

    return-object v0

    .line 1301
    .end local v16    # "certPolicies":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v31    # "i":I
    .local v8, "certPolicies":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v15    # "i":I
    :catch_227
    move-exception v0

    move/from16 v31, v15

    .line 1303
    .end local v15    # "i":I
    .local v0, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v31    # "i":I
    new-instance v9, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v10, "Could not read certificate policies extension from certificate."

    invoke-direct {v9, v10, v0, v1, v2}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v9
.end method

.method protected static blacklist processCertE(Ljava/security/cert/CertPath;ILcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .registers 9
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "validPolicyTree"    # Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 1156
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 1157
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 1161
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .line 1164
    .local v2, "certPolicies":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_b
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3
    :try_end_15
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_b .. :try_end_15} :catch_1b

    move-object v2, v3

    .line 1171
    nop

    .line 1172
    if-nez v2, :cond_1a

    .line 1174
    const/4 p2, 0x0

    .line 1176
    :cond_1a
    return-object p2

    .line 1167
    :catch_1b
    move-exception v3

    .line 1169
    .local v3, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Could not read certificate policies extension from certificate."

    invoke-direct {v4, v5, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4
.end method

.method protected static blacklist processCertF(Ljava/security/cert/CertPath;ILcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;I)V
    .registers 7
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "validPolicyTree"    # Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .param p3, "explicitPolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 1143
    if-gtz p3, :cond_e

    if-eqz p2, :cond_5

    goto :goto_e

    .line 1145
    :cond_5
    new-instance v0, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const/4 v1, 0x0

    const-string v2, "No valid policy tree found when one expected."

    invoke-direct {v0, v2, v1, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1148
    :cond_e
    :goto_e
    return-void
.end method

.method protected static blacklist wrapupCertA(ILjava/security/cert/X509Certificate;)I
    .registers 3
    .param p0, "explicitPolicy"    # I
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .line 2345
    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 2347
    add-int/lit8 p0, p0, -0x1

    .line 2349
    :cond_a
    return p0
.end method

.method protected static blacklist wrapupCertB(Ljava/security/cert/CertPath;II)I
    .registers 11
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "explicitPolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 2358
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 2359
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 2364
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .line 2367
    .local v2, "pc":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_b
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3
    :try_end_15
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_b .. :try_end_15} :catch_4c

    move-object v2, v3

    .line 2373
    nop

    .line 2374
    if-eqz v2, :cond_4b

    .line 2376
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    .line 2378
    .local v3, "policyConstraints":Ljava/util/Enumeration;
    :goto_1d
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 2380
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 2381
    .local v4, "constraint":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v5

    if-eqz v5, :cond_30

    goto :goto_41

    .line 2386
    :cond_30
    const/4 v5, 0x0

    :try_start_31
    invoke-static {v4, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v6
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3d} :catch_42

    .line 2393
    .local v6, "tmpInt":I
    nop

    .line 2394
    if-nez v6, :cond_41

    .line 2396
    return v5

    .line 2400
    .end local v4    # "constraint":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .end local v6    # "tmpInt":I
    :cond_41
    :goto_41
    goto :goto_1d

    .line 2388
    .restart local v4    # "constraint":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    :catch_42
    move-exception v5

    .line 2390
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v7, "Policy constraints requireExplicitPolicy field could not be decoded."

    invoke-direct {v6, v7, v5, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v6

    .line 2402
    .end local v3    # "policyConstraints":Ljava/util/Enumeration;
    .end local v4    # "constraint":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_4b
    return p2

    .line 2370
    :catch_4c
    move-exception v3

    .line 2372
    .local v3, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Policy constraints could not be decoded."

    invoke-direct {v4, v5, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4
.end method

.method protected static blacklist wrapupCertF(Ljava/security/cert/CertPath;ILjava/util/List;Ljava/util/Set;)V
    .registers 10
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "pathCheckers"    # Ljava/util/List;
    .param p3, "criticalExtensions"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 2412
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 2413
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 2415
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2416
    .local v2, "tmpIter":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 2420
    :try_start_14
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v3, v1, p3}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_1d
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_14 .. :try_end_1d} :catch_27
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1d} :catch_1e

    .line 2429
    goto :goto_e

    .line 2426
    :catch_1e
    move-exception v3

    .line 2428
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v5, "Additional certificate path checker failed."

    invoke-direct {v4, v5, v3, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 2422
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_27
    move-exception v3

    .line 2424
    .local v3, "e":Ljava/security/cert/CertPathValidatorException;
    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    invoke-virtual {v3}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 2432
    .end local v3    # "e":Ljava/security/cert/CertPathValidatorException;
    :cond_32
    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 2437
    return-void

    .line 2434
    :cond_39
    new-instance v3, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Certificate has unsupported critical extension: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3
.end method

.method protected static blacklist wrapupCertG(Ljava/security/cert/CertPath;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Set;I[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;Ljava/util/Set;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .registers 21
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "paramsPKIX"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .param p2, "userInitialPolicySet"    # Ljava/util/Set;
    .param p3, "index"    # I
    .param p4, "policyNodes"    # [Ljava/util/List;
    .param p5, "validPolicyTree"    # Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .param p6, "acceptablePolicies"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 2449
    move-object v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 2458
    .local v3, "n":I
    const/4 v4, 0x0

    const-string v5, "Explicit policy requested but none available."

    if-nez p5, :cond_27

    .line 2460
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->isExplicitPolicyRequired()Z

    move-result v6

    if-nez v6, :cond_21

    .line 2465
    const/4 v4, 0x0

    move-object/from16 v10, p2

    move-object/from16 v6, p5

    move-object/from16 v8, p6

    .local v4, "intersection":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    goto/16 :goto_15e

    .line 2462
    .end local v4    # "intersection":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_21
    new-instance v6, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    invoke-direct {v6, v5, v4, p0, v1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v6

    .line 2467
    :cond_27
    invoke-static/range {p2 .. p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isAnyPolicy(Ljava/util/Set;)Z

    move-result v6

    const-string v7, "2.5.29.32.0"

    if-eqz v6, :cond_ca

    .line 2470
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->isExplicitPolicyRequired()Z

    move-result v6

    if-eqz v6, :cond_c1

    .line 2472
    invoke-interface/range {p6 .. p6}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_b9

    .line 2479
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 2481
    .local v4, "_validPolicyNodeSet":Ljava/util/Set;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_41
    array-length v6, v2

    if-ge v5, v6, :cond_75

    .line 2483
    aget-object v6, v2, v5

    .line 2485
    .local v6, "_nodeDepth":Ljava/util/List;
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_47
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_72

    .line 2487
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2489
    .local v9, "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6f

    .line 2491
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v10

    .line 2492
    .local v10, "_iter":Ljava/util/Iterator;
    :goto_61
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6f

    .line 2494
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_61

    .line 2485
    .end local v9    # "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v10    # "_iter":Ljava/util/Iterator;
    :cond_6f
    add-int/lit8 v8, v8, 0x1

    goto :goto_47

    .line 2481
    .end local v6    # "_nodeDepth":Ljava/util/List;
    .end local v8    # "k":I
    :cond_72
    add-int/lit8 v5, v5, 0x1

    goto :goto_41

    .line 2500
    .end local v5    # "j":I
    :cond_75
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 2501
    .local v5, "_vpnsIter":Ljava/util/Iterator;
    :goto_79
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8f

    .line 2503
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2504
    .local v6, "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v7

    .line 2506
    .local v7, "_validPolicy":Ljava/lang/String;
    move-object/from16 v8, p6

    invoke-interface {v8, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 2512
    .end local v6    # "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v7    # "_validPolicy":Ljava/lang/String;
    goto :goto_79

    .line 2513
    :cond_8f
    move-object/from16 v8, p6

    if-eqz p5, :cond_c3

    .line 2515
    add-int/lit8 v6, v3, -0x1

    move v7, v6

    move-object/from16 v6, p5

    .end local p5    # "validPolicyTree":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v6, "validPolicyTree":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v7, "j":I
    :goto_98
    if-ltz v7, :cond_c5

    .line 2517
    aget-object v9, v2, v7

    .line 2519
    .local v9, "nodes":Ljava/util/List;
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_9d
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_b6

    .line 2521
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2522
    .local v11, "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v12

    if-nez v12, :cond_b3

    .line 2524
    invoke-static {v6, v2, v11}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v6

    .line 2519
    .end local v11    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_b3
    add-int/lit8 v10, v10, 0x1

    goto :goto_9d

    .line 2515
    .end local v9    # "nodes":Ljava/util/List;
    .end local v10    # "k":I
    :cond_b6
    add-int/lit8 v7, v7, -0x1

    goto :goto_98

    .line 2474
    .end local v4    # "_validPolicyNodeSet":Ljava/util/Set;
    .end local v5    # "_vpnsIter":Ljava/util/Iterator;
    .end local v6    # "validPolicyTree":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v7    # "j":I
    .restart local p5    # "validPolicyTree":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_b9
    move-object/from16 v8, p6

    new-instance v6, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    invoke-direct {v6, v5, v4, p0, v1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v6

    .line 2470
    :cond_c1
    move-object/from16 v8, p6

    .line 2533
    :cond_c3
    move-object/from16 v6, p5

    .end local p5    # "validPolicyTree":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v6    # "validPolicyTree":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_c5
    move-object v4, v6

    move-object/from16 v10, p2

    .local v4, "intersection":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    goto/16 :goto_15e

    .line 2550
    .end local v4    # "intersection":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v6    # "validPolicyTree":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local p5    # "validPolicyTree":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_ca
    move-object/from16 v8, p6

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 2552
    .local v4, "_validPolicyNodeSet":Ljava/util/Set;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_d2
    array-length v6, v2

    if-ge v5, v6, :cond_112

    .line 2554
    aget-object v6, v2, v5

    .line 2556
    .local v6, "_nodeDepth":Ljava/util/List;
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_d8
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_10f

    .line 2558
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2560
    .local v10, "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10c

    .line 2562
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v11

    .line 2563
    .local v11, "_iter":Ljava/util/Iterator;
    :goto_f2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_10c

    .line 2565
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2566
    .local v12, "_c_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_10b

    .line 2568
    invoke-interface {v4, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2570
    .end local v12    # "_c_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_10b
    goto :goto_f2

    .line 2556
    .end local v10    # "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v11    # "_iter":Ljava/util/Iterator;
    :cond_10c
    add-int/lit8 v9, v9, 0x1

    goto :goto_d8

    .line 2552
    .end local v6    # "_nodeDepth":Ljava/util/List;
    .end local v9    # "k":I
    :cond_10f
    add-int/lit8 v5, v5, 0x1

    goto :goto_d2

    .line 2578
    .end local v5    # "j":I
    :cond_112
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object/from16 v6, p5

    .line 2579
    .end local p5    # "validPolicyTree":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v5, "_vpnsIter":Ljava/util/Iterator;
    .local v6, "validPolicyTree":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :goto_118
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_135

    .line 2581
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2582
    .local v7, "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v9

    .line 2584
    .local v9, "_validPolicy":Ljava/lang/String;
    move-object/from16 v10, p2

    invoke-interface {v10, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_134

    .line 2586
    invoke-static {v6, v2, v7}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v6

    .line 2588
    .end local v7    # "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v9    # "_validPolicy":Ljava/lang/String;
    :cond_134
    goto :goto_118

    .line 2593
    :cond_135
    move-object/from16 v10, p2

    if-eqz v6, :cond_15c

    .line 2595
    add-int/lit8 v7, v3, -0x1

    .local v7, "j":I
    :goto_13b
    if-ltz v7, :cond_15c

    .line 2597
    aget-object v9, v2, v7

    .line 2599
    .local v9, "nodes":Ljava/util/List;
    const/4 v11, 0x0

    .local v11, "k":I
    :goto_140
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_159

    .line 2601
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2602
    .local v12, "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v13

    if-nez v13, :cond_156

    .line 2604
    invoke-static {v6, v2, v12}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v6

    .line 2599
    .end local v12    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_156
    add-int/lit8 v11, v11, 0x1

    goto :goto_140

    .line 2595
    .end local v9    # "nodes":Ljava/util/List;
    .end local v11    # "k":I
    :cond_159
    add-int/lit8 v7, v7, -0x1

    goto :goto_13b

    .line 2611
    .end local v7    # "j":I
    :cond_15c
    move-object v7, v6

    move-object v4, v7

    .line 2613
    .end local v5    # "_vpnsIter":Ljava/util/Iterator;
    .local v4, "intersection":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :goto_15e
    return-object v4
.end method
