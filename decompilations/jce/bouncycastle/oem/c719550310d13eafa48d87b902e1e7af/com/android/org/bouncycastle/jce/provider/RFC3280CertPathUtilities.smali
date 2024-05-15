.class Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;
.super Ljava/lang/Object;
.source "RFC3280CertPathUtilities.java"


# static fields
.field public static final ANY_POLICY:Ljava/lang/String; = "2.5.29.32.0"

.field public static final AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

.field public static final BASIC_CONSTRAINTS:Ljava/lang/String;

.field public static final CERTIFICATE_POLICIES:Ljava/lang/String;

.field public static final CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

.field public static final CRL_NUMBER:Ljava/lang/String;

.field protected static final CRL_SIGN:I = 0x6

.field private static final CRL_UTIL:Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;

.field public static final DELTA_CRL_INDICATOR:Ljava/lang/String;

.field public static final FRESHEST_CRL:Ljava/lang/String;

.field public static final INHIBIT_ANY_POLICY:Ljava/lang/String;

.field public static final ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

.field protected static final KEY_CERT_SIGN:I = 0x5

.field public static final KEY_USAGE:Ljava/lang/String;

.field public static final NAME_CONSTRAINTS:Ljava/lang/String;

.field public static final POLICY_CONSTRAINTS:Ljava/lang/String;

.field public static final POLICY_MAPPINGS:Ljava/lang/String;

.field public static final SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

.field protected static final crlReasons:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
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

    .line 2325
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    .line 2326
    const-string/jumbo v1, "unspecified"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2327
    const-string/jumbo v1, "keyCompromise"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 2328
    const-string/jumbo v1, "cACompromise"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 2329
    const-string/jumbo v1, "affiliationChanged"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 2330
    const-string/jumbo v1, "superseded"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 2331
    const-string/jumbo v1, "cessationOfOperation"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 2332
    const-string/jumbo v1, "certificateHold"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 2333
    const-string/jumbo v1, "unknown"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 2334
    const-string/jumbo v1, "removeFromCRL"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 2335
    const-string/jumbo v1, "privilegeWithdrawn"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 2336
    const-string/jumbo v1, "aACompromise"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 2324
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->crlReasons:[Ljava/lang/String;

    .line 66
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkCRL(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lcom/android/org/bouncycastle/jce/provider/CertStatus;Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;Ljava/util/List;Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;)V
    .registers 37
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

    .prologue
    .line 1768
    new-instance v17, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v0, v17

    invoke-direct {v0, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 1769
    .local v17, "currentDate":Ljava/util/Date;
    invoke-virtual/range {p3 .. p3}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual/range {v17 .. v17}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-lez v7, :cond_20

    .line 1771
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string/jumbo v8, "Validation time is in future."

    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1782
    :cond_20
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    move-object/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getCompleteCRLs(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/util/Date;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/Set;

    move-result-object v16

    .line 1783
    .local v16, "crls":Ljava/util/Set;
    const/16 v25, 0x0

    .line 1784
    .local v25, "validCrlFound":Z
    const/16 v24, 0x0

    .line 1785
    .local v24, "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 1787
    .end local v24    # "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .local v15, "crl_iter":Ljava/util/Iterator;
    :cond_34
    :goto_34
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_16a

    invoke-virtual/range {p6 .. p6}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v7

    const/16 v8, 0xb

    if-ne v7, v8, :cond_16a

    invoke-virtual/range {p7 .. p7}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_16a

    .line 1791
    :try_start_4a
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509CRL;

    .line 1794
    .local v6, "crl":Ljava/security/cert/X509CRL;
    move-object/from16 v0, p0

    invoke-static {v6, v0}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLD(Ljava/security/cert/X509CRL;Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;)Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    move-result-object v21

    .line 1802
    .local v21, "interimReasonsMask":Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
    move-object/from16 v0, v21

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->hasNewReasons(Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;)Z

    move-result v7

    if-eqz v7, :cond_34

    move-object/from16 v7, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p1

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    .line 1808
    invoke-static/range {v6 .. v12}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLF(Ljava/security/cert/X509CRL;Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/List;Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/util/Set;

    move-result-object v23

    .line 1811
    .local v23, "keys":Ljava/util/Set;
    move-object/from16 v0, v23

    invoke-static {v6, v0}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLG(Ljava/security/cert/X509CRL;Ljava/util/Set;)Ljava/security/PublicKey;

    move-result-object v22

    .line 1813
    .local v22, "key":Ljava/security/PublicKey;
    const/16 v18, 0x0

    .line 1815
    .local v18, "deltaCRL":Ljava/security/cert/X509CRL;
    move-object/from16 v26, v17

    .line 1817
    .local v26, "validityDate":Ljava/util/Date;
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getDate()Ljava/util/Date;

    move-result-object v7

    if-eqz v7, :cond_84

    .line 1819
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getDate()Ljava/util/Date;

    move-result-object v26

    .line 1822
    :cond_84
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->isUseDeltasEnabled()Z

    move-result v7

    if-eqz v7, :cond_a0

    .line 1825
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCRLStores()Ljava/util/List;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-static {v0, v6, v7, v8}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getDeltaCRLs(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v19

    .line 1828
    .local v19, "deltaCRLs":Ljava/util/Set;
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLH(Ljava/util/Set;Ljava/security/PublicKey;)Ljava/security/cert/X509CRL;

    move-result-object v18

    .line 1844
    .end local v18    # "deltaCRL":Ljava/security/cert/X509CRL;
    .end local v19    # "deltaCRLs":Ljava/util/Set;
    :cond_a0
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getValidityModel()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_c9

    .line 1851
    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v6}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-gez v7, :cond_c9

    .line 1853
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string/jumbo v8, "No valid CRL for current time found."

    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1911
    .end local v6    # "crl":Ljava/security/cert/X509CRL;
    .end local v21    # "interimReasonsMask":Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
    .end local v22    # "key":Ljava/security/PublicKey;
    .end local v23    # "keys":Ljava/util/Set;
    .end local v26    # "validityDate":Ljava/util/Date;
    :catch_c4
    move-exception v20

    .line 1912
    .local v20, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    move-object/from16 v24, v20

    .local v24, "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    goto/16 :goto_34

    .line 1857
    .end local v20    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .end local v24    # "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v6    # "crl":Ljava/security/cert/X509CRL;
    .restart local v21    # "interimReasonsMask":Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
    .restart local v22    # "key":Ljava/security/PublicKey;
    .restart local v23    # "keys":Ljava/util/Set;
    .restart local v26    # "validityDate":Ljava/util/Date;
    :cond_c9
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1, v6}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLB1(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V

    .line 1860
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1, v6}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLB2(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V

    .line 1863
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-static {v0, v6, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLC(Ljava/security/cert/X509CRL;Ljava/security/cert/X509CRL;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)V

    .line 1866
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    move-object/from16 v3, p6

    move-object/from16 v4, p1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLI(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/org/bouncycastle/jce/provider/CertStatus;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)V

    .line 1869
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    invoke-static {v0, v6, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLJ(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/org/bouncycastle/jce/provider/CertStatus;)V

    .line 1872
    invoke-virtual/range {p6 .. p6}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_103

    .line 1874
    const/16 v7, 0xb

    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->setCertStatus(I)V

    .line 1878
    :cond_103
    move-object/from16 v0, p7

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->addReasons(Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;)V

    .line 1880
    invoke-virtual {v6}, Ljava/security/cert/X509CRL;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v13

    .line 1881
    .local v13, "criticalExtensions":Ljava/util/Set;
    if-eqz v13, :cond_137

    .line 1883
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14, v13}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1884
    .end local v13    # "criticalExtensions":Ljava/util/Set;
    .local v14, "criticalExtensions":Ljava/util/Set;
    sget-object v7, Lcom/android/org/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v14, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1885
    sget-object v7, Lcom/android/org/bouncycastle/asn1/x509/Extension;->deltaCRLIndicator:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v14, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1887
    invoke-interface {v14}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_136

    .line 1889
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string/jumbo v8, "CRL contains unsupported critical extensions."

    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_136
    move-object v13, v14

    .line 1893
    .end local v14    # "criticalExtensions":Ljava/util/Set;
    .restart local v13    # "criticalExtensions":Ljava/util/Set;
    :cond_137
    if-eqz v18, :cond_166

    .line 1895
    invoke-virtual/range {v18 .. v18}, Ljava/security/cert/X509CRL;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v13

    .line 1896
    if-eqz v13, :cond_166

    .line 1898
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14, v13}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1899
    .end local v13    # "criticalExtensions":Ljava/util/Set;
    .restart local v14    # "criticalExtensions":Ljava/util/Set;
    sget-object v7, Lcom/android/org/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v14, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1900
    sget-object v7, Lcom/android/org/bouncycastle/asn1/x509/Extension;->deltaCRLIndicator:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v14, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1901
    invoke-interface {v14}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_165

    .line 1903
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string/jumbo v8, "Delta CRL contains unsupported critical extension."

    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_165
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_4a .. :try_end_165} :catch_c4

    :cond_165
    move-object v13, v14

    .line 1908
    .end local v14    # "criticalExtensions":Ljava/util/Set;
    .restart local v13    # "criticalExtensions":Ljava/util/Set;
    :cond_166
    const/16 v25, 0x1

    goto/16 :goto_34

    .line 1915
    .end local v6    # "crl":Ljava/security/cert/X509CRL;
    .end local v13    # "criticalExtensions":Ljava/util/Set;
    .end local v21    # "interimReasonsMask":Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
    .end local v22    # "key":Ljava/security/PublicKey;
    .end local v23    # "keys":Ljava/util/Set;
    .end local v26    # "validityDate":Ljava/util/Date;
    :cond_16a
    if-nez v25, :cond_16d

    .line 1917
    throw v24

    .line 1919
    :cond_16d
    return-void
.end method

.method protected static checkCRLs(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/List;Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;)V
    .registers 40
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

    .prologue
    .line 1944
    const/16 v29, 0x0

    .line 1945
    .local v29, "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    const/16 v20, 0x0

    .line 1949
    .local v20, "crldp":Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    :try_start_4
    sget-object v2, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    .line 1948
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_45

    move-result-object v20

    .line 1956
    .local v20, "crldp":Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    new-instance v31, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)V

    .line 1959
    .local v31, "paramsBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    :try_start_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getNamedCRLStoreMap()Ljava/util/Map;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-static {v0, v2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getAdditionalStoresFromCRLDistributionPoint(Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;Ljava/util/Map;)Ljava/util/List;

    move-result-object v25

    .line 1960
    .local v25, "extras":Ljava/util/List;
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, "it":Ljava/util/Iterator;
    :goto_27
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 1962
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStore;

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->addCRLStore(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStore;)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    :try_end_38
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_19 .. :try_end_38} :catch_39

    goto :goto_27

    .line 1966
    .end local v25    # "extras":Ljava/util/List;
    .end local v28    # "it":Ljava/util/Iterator;
    :catch_39
    move-exception v23

    .line 1967
    .local v23, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    .line 1968
    const-string/jumbo v4, "No additional CRL locations could be decoded from CRL distribution point extension."

    .line 1967
    move-object/from16 v0, v23

    invoke-direct {v2, v4, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1952
    .end local v23    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .end local v31    # "paramsBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .local v20, "crldp":Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    :catch_45
    move-exception v24

    .line 1953
    .local v24, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string/jumbo v4, "CRL distribution point extension could not be read."

    move-object/from16 v0, v24

    invoke-direct {v2, v4, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1970
    .end local v24    # "e":Ljava/lang/Exception;
    .local v20, "crldp":Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    .restart local v25    # "extras":Ljava/util/List;
    .restart local v28    # "it":Ljava/util/Iterator;
    .restart local v31    # "paramsBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    :cond_51
    new-instance v8, Lcom/android/org/bouncycastle/jce/provider/CertStatus;

    invoke-direct {v8}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;-><init>()V

    .line 1971
    .local v8, "certStatus":Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    new-instance v9, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    invoke-direct {v9}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;-><init>()V

    .line 1972
    .local v9, "reasonsMask":Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
    invoke-virtual/range {v31 .. v31}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v3

    .line 1974
    .local v3, "finalParams":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    const/16 v32, 0x0

    .line 1976
    .local v32, "validCrlFound":Z
    if-eqz v20, :cond_aa

    .line 1978
    const/16 v22, 0x0

    .line 1981
    .local v22, "dps":[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    :try_start_65
    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_68} :catch_9a

    move-result-object v22

    .line 1987
    .local v22, "dps":[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    if-eqz v22, :cond_aa

    .line 1989
    const/16 v26, 0x0

    .end local v29    # "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .local v26, "i":I
    :goto_6d
    move-object/from16 v0, v22

    array-length v2, v0

    move/from16 v0, v26

    if-ge v0, v2, :cond_aa

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v2

    const/16 v4, 0xb

    if-ne v2, v4, :cond_aa

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_aa

    .line 1993
    :try_start_84
    aget-object v2, v22, v26

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-static/range {v2 .. v11}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->checkCRL(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lcom/android/org/bouncycastle/jce/provider/CertStatus;Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;Ljava/util/List;Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;)V
    :try_end_95
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_84 .. :try_end_95} :catch_a6

    .line 1994
    const/16 v32, 0x1

    .line 1989
    :goto_97
    add-int/lit8 v26, v26, 0x1

    goto :goto_6d

    .line 1984
    .end local v26    # "i":I
    .local v22, "dps":[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .restart local v29    # "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :catch_9a
    move-exception v24

    .line 1985
    .restart local v24    # "e":Ljava/lang/Exception;
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string/jumbo v4, "Distribution points could not be read."

    move-object/from16 v0, v24

    invoke-direct {v2, v4, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1997
    .end local v24    # "e":Ljava/lang/Exception;
    .end local v29    # "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .local v22, "dps":[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .restart local v26    # "i":I
    :catch_a6
    move-exception v23

    .line 1998
    .restart local v23    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    move-object/from16 v29, v23

    .local v29, "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    goto :goto_97

    .line 2010
    .end local v22    # "dps":[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .end local v23    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .end local v26    # "i":I
    .end local v29    # "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :cond_aa
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v2

    const/16 v4, 0xb

    if-ne v2, v4, :cond_102

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_102

    .line 2019
    const/16 v27, 0x0

    .line 2022
    .local v27, "issuer":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :try_start_bc
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-static/range {p1 .. p1}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getEncoded()[B

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_cc} :catch_10b
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_bc .. :try_end_cc} :catch_117

    move-result-object v27

    .line 2029
    .local v27, "issuer":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :try_start_cd
    new-instance v10, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;

    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    new-instance v4, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    .line 2030
    new-instance v5, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    const/4 v6, 0x4

    move-object/from16 v0, v27

    invoke-direct {v5, v6, v0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(ILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 2029
    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;-><init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V

    const/4 v5, 0x0

    invoke-direct {v2, v5, v4}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;-><init>(ILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 2030
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2029
    invoke-direct {v10, v2, v4, v5}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;-><init>(Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)V

    .line 2031
    .local v10, "dp":Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->clone()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    .local v11, "paramsPKIXClone":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v18, p5

    move-object/from16 v19, p6

    .line 2032
    invoke-static/range {v10 .. v19}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->checkCRL(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lcom/android/org/bouncycastle/jce/provider/CertStatus;Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;Ljava/util/List;Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;)V
    :try_end_100
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_cd .. :try_end_100} :catch_117

    .line 2034
    const/16 v32, 0x1

    .line 2042
    .end local v10    # "dp":Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .end local v11    # "paramsPKIXClone":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local v27    # "issuer":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_102
    :goto_102
    if-nez v32, :cond_126

    .line 2044
    move-object/from16 v0, v29

    instance-of v2, v0, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    if-eqz v2, :cond_11b

    .line 2046
    throw v29

    .line 2026
    .local v27, "issuer":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :catch_10b
    move-exception v24

    .line 2027
    .restart local v24    # "e":Ljava/lang/Exception;
    :try_start_10c
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string/jumbo v4, "Issuer from certificate for CRL could not be reencoded."

    move-object/from16 v0, v24

    invoke-direct {v2, v4, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_117
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_10c .. :try_end_117} :catch_117

    .line 2037
    .end local v24    # "e":Ljava/lang/Exception;
    .end local v27    # "issuer":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :catch_117
    move-exception v23

    .line 2038
    .restart local v23    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    move-object/from16 v29, v23

    .restart local v29    # "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    goto :goto_102

    .line 2049
    .end local v23    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .end local v29    # "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :cond_11b
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string/jumbo v4, "No valid CRL found."

    move-object/from16 v0, v29

    invoke-direct {v2, v4, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 2051
    :cond_126
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v2

    const/16 v4, 0xb

    if-eq v2, v4, :cond_18c

    .line 2053
    new-instance v21, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss Z"

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2054
    .local v21, "df":Ljava/text/SimpleDateFormat;
    const-string/jumbo v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2055
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Certificate revocation after "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getRevocationDate()Ljava/util/Date;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 2056
    .local v30, "message":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", reason: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->crlReasons:[Ljava/lang/String;

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 2057
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    move-object/from16 v0, v30

    invoke-direct {v2, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2059
    .end local v21    # "df":Ljava/text/SimpleDateFormat;
    .end local v30    # "message":Ljava/lang/String;
    :cond_18c
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v2

    if-nez v2, :cond_19f

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v2

    const/16 v4, 0xb

    if-ne v2, v4, :cond_19f

    .line 2061
    const/16 v2, 0xc

    invoke-virtual {v8, v2}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->setCertStatus(I)V

    .line 2063
    :cond_19f
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v2

    const/16 v4, 0xc

    if-ne v2, v4, :cond_1b0

    .line 2065
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string/jumbo v4, "Certificate status could not be determined."

    invoke-direct {v2, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2067
    :cond_1b0
    return-void
.end method

.method protected static prepareCertB(Ljava/security/cert/CertPath;I[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;I)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .registers 43
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

    .prologue
    .line 896
    invoke-virtual/range {p0 .. p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v13

    .line 897
    .local v13, "certs":Ljava/util/List;
    move/from16 v0, p1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/security/cert/X509Certificate;

    .line 898
    .local v12, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v27

    .line 900
    .local v27, "n":I
    sub-int v5, v27, p1

    .line 903
    .local v5, "i":I
    const/16 v33, 0x0

    .line 907
    .local v33, "pm":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_14
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    .line 906
    invoke-static {v12, v4}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_1d
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_14 .. :try_end_1d} :catch_7f

    move-result-object v33

    .line 914
    .local v33, "pm":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    move-object/from16 v11, p3

    .line 915
    .local v11, "_validPolicyTree":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    if-eqz v33, :cond_200

    .line 917
    move-object/from16 v26, v33

    .line 918
    .local v26, "mappings":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    .line 919
    .local v24, "m_idp":Ljava/util/Map;
    new-instance v35, Ljava/util/HashSet;

    invoke-direct/range {v35 .. v35}, Ljava/util/HashSet;-><init>()V

    .line 921
    .local v35, "s_idp":Ljava/util/Set;
    const/16 v21, 0x0

    .local v21, "j":I
    :goto_30
    invoke-virtual/range {v33 .. v33}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_9f

    .line 923
    move-object/from16 v0, v33

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v25

    check-cast v25, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 924
    .local v25, "mapping":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v4, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v9

    .line 925
    .local v9, "id_p":Ljava/lang/String;
    const/4 v4, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v36

    .line 928
    .local v36, "sd_p":Ljava/lang/String;
    move-object/from16 v0, v24

    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8f

    .line 930
    new-instance v37, Ljava/util/HashSet;

    invoke-direct/range {v37 .. v37}, Ljava/util/HashSet;-><init>()V

    .line 931
    .local v37, "tmp":Ljava/util/Set;
    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 932
    move-object/from16 v0, v24

    move-object/from16 v1, v37

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    move-object/from16 v0, v35

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 921
    :goto_7c
    add-int/lit8 v21, v21, 0x1

    goto :goto_30

    .line 910
    .end local v9    # "id_p":Ljava/lang/String;
    .end local v11    # "_validPolicyTree":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v21    # "j":I
    .end local v24    # "m_idp":Ljava/util/Map;
    .end local v25    # "mapping":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v26    # "mappings":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v35    # "s_idp":Ljava/util/Set;
    .end local v36    # "sd_p":Ljava/lang/String;
    .end local v37    # "tmp":Ljava/util/Set;
    .local v33, "pm":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_7f
    move-exception v16

    .line 911
    .local v16, "ex":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string/jumbo v6, "Policy mappings extension could not be decoded."

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v4, v6, v0, v1, v2}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 937
    .end local v16    # "ex":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v9    # "id_p":Ljava/lang/String;
    .restart local v11    # "_validPolicyTree":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v21    # "j":I
    .restart local v24    # "m_idp":Ljava/util/Map;
    .restart local v25    # "mapping":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v26    # "mappings":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .local v33, "pm":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v35    # "s_idp":Ljava/util/Set;
    .restart local v36    # "sd_p":Ljava/lang/String;
    :cond_8f
    move-object/from16 v0, v24

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/Set;

    .line 938
    .restart local v37    # "tmp":Ljava/util/Set;
    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7c

    .line 942
    .end local v9    # "id_p":Ljava/lang/String;
    .end local v25    # "mapping":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v36    # "sd_p":Ljava/lang/String;
    .end local v37    # "tmp":Ljava/util/Set;
    :cond_9f
    invoke-interface/range {v35 .. v35}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 943
    .local v20, "it_idp":Ljava/util/Iterator;
    :cond_a3
    :goto_a3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_200

    .line 945
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 950
    .restart local v9    # "id_p":Ljava/lang/String;
    if-lez p4, :cond_1a4

    .line 952
    const/16 v19, 0x0

    .line 953
    .local v19, "idp_found":Z
    aget-object v4, p2, v5

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .line 954
    .local v31, "nodes_i":Ljava/util/Iterator;
    :cond_b9
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_dd

    .line 956
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 957
    .local v28, "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {v28 .. v28}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b9

    .line 959
    const/16 v19, 0x1

    .line 960
    move-object/from16 v0, v24

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    move-object/from16 v0, v28

    iput-object v4, v0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->expectedPolicies:Ljava/util/Set;

    .line 965
    .end local v28    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_dd
    if-nez v19, :cond_a3

    .line 967
    aget-object v4, p2, v5

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .line 968
    :cond_e5
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a3

    .line 970
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 971
    .restart local v28    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    const-string/jumbo v4, "2.5.29.32.0"

    invoke-virtual/range {v28 .. v28}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e5

    .line 973
    const/4 v8, 0x0

    .line 974
    .local v8, "pq":Ljava/util/Set;
    const/16 v34, 0x0

    .line 978
    .local v34, "policies":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_101
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    .line 977
    invoke-static {v12, v4}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v34

    .end local v34    # "policies":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    check-cast v34, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_109
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_101 .. :try_end_109} :catch_176

    .line 985
    .local v34, "policies":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual/range {v34 .. v34}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v15

    .line 986
    .local v15, "e":Ljava/util/Enumeration;
    :cond_10d
    invoke-interface {v15}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_136

    .line 988
    const/16 v32, 0x0

    .line 991
    .local v32, "pinfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    :try_start_115
    invoke-interface {v15}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    :try_end_11c
    .catch Ljava/lang/Exception; {:try_start_115 .. :try_end_11c} :catch_184

    move-result-object v32

    .line 998
    .local v32, "pinfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    const-string/jumbo v4, "2.5.29.32.0"

    invoke-virtual/range {v32 .. v32}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10d

    .line 1003
    :try_start_12e
    invoke-virtual/range {v32 .. v32}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v4

    .line 1002
    invoke-static {v4}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getQualifierSet(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;
    :try_end_135
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_12e .. :try_end_135} :catch_194

    move-result-object v8

    .line 1015
    .end local v8    # "pq":Ljava/util/Set;
    .end local v32    # "pinfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    :cond_136
    const/4 v10, 0x0

    .line 1016
    .local v10, "ci":Z
    invoke-virtual {v12}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_147

    .line 1018
    invoke-virtual {v12}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v4

    .line 1019
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    .line 1018
    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    .line 1022
    .end local v10    # "ci":Z
    :cond_147
    invoke-virtual/range {v28 .. v28}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v7

    check-cast v7, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1023
    .local v7, "p_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    const-string/jumbo v4, "2.5.29.32.0"

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a3

    .line 1025
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v24

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-direct/range {v3 .. v10}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 1027
    .local v3, "c_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v7, v3}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 1028
    aget-object v4, p2, v5

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a3

    .line 981
    .end local v3    # "c_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v7    # "p_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v15    # "e":Ljava/util/Enumeration;
    .end local v34    # "policies":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v8    # "pq":Ljava/util/Set;
    :catch_176
    move-exception v14

    .line 982
    .local v14, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    .line 983
    const-string/jumbo v6, "Certificate policies extension could not be decoded."

    .line 982
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v4, v6, v14, v0, v1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 994
    .end local v14    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v15    # "e":Ljava/util/Enumeration;
    .local v32, "pinfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    .restart local v34    # "policies":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_184
    move-exception v17

    .line 995
    .local v17, "ex":Ljava/lang/Exception;
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    .line 996
    const-string/jumbo v6, "Policy information could not be decoded."

    .line 995
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v4, v6, v0, v1, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 1006
    .end local v17    # "ex":Ljava/lang/Exception;
    .local v32, "pinfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    :catch_194
    move-exception v18

    .line 1008
    .local v18, "ex":Ljava/security/cert/CertPathValidatorException;
    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    .line 1009
    const-string/jumbo v6, "Policy qualifier info set could not be decoded."

    .line 1008
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v4, v6, v0, v1, v2}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 1039
    .end local v8    # "pq":Ljava/util/Set;
    .end local v15    # "e":Ljava/util/Enumeration;
    .end local v18    # "ex":Ljava/security/cert/CertPathValidatorException;
    .end local v19    # "idp_found":Z
    .end local v28    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v31    # "nodes_i":Ljava/util/Iterator;
    .end local v32    # "pinfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    .end local v34    # "policies":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_1a4
    if-gtz p4, :cond_a3

    .line 1041
    aget-object v4, p2, v5

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .line 1042
    .restart local v31    # "nodes_i":Ljava/util/Iterator;
    :cond_1ac
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a3

    .line 1044
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1045
    .restart local v28    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {v28 .. v28}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1ac

    .line 1047
    invoke-virtual/range {v28 .. v28}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v7

    check-cast v7, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1048
    .restart local v7    # "p_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->removeChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 1049
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->remove()V

    .line 1050
    add-int/lit8 v22, v5, -0x1

    .local v22, "k":I
    :goto_1d2
    if-ltz v22, :cond_1ac

    .line 1052
    aget-object v30, p2, v22

    .line 1053
    .local v30, "nodes":Ljava/util/List;
    const/16 v23, 0x0

    .local v23, "l":I
    :goto_1d8
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v23

    if-ge v0, v4, :cond_1fa

    .line 1055
    move-object/from16 v0, v30

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1056
    .local v29, "node2":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {v29 .. v29}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v4

    if-nez v4, :cond_1fd

    .line 1058
    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-static {v11, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v11

    .line 1060
    if-nez v11, :cond_1fd

    .line 1050
    .end local v29    # "node2":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_1fa
    add-int/lit8 v22, v22, -0x1

    goto :goto_1d2

    .line 1053
    .restart local v29    # "node2":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_1fd
    add-int/lit8 v23, v23, 0x1

    goto :goto_1d8

    .line 1072
    .end local v7    # "p_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v9    # "id_p":Ljava/lang/String;
    .end local v20    # "it_idp":Ljava/util/Iterator;
    .end local v21    # "j":I
    .end local v22    # "k":I
    .end local v23    # "l":I
    .end local v24    # "m_idp":Ljava/util/Map;
    .end local v26    # "mappings":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v28    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v29    # "node2":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v30    # "nodes":Ljava/util/List;
    .end local v31    # "nodes_i":Ljava/util/Iterator;
    .end local v35    # "s_idp":Ljava/util/Set;
    :cond_200
    return-object v11
.end method

.method protected static prepareNextCertA(Ljava/security/cert/CertPath;I)V
    .registers 15
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 1080
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 1081
    .local v1, "certs":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1086
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    const/4 v8, 0x0

    .line 1090
    .local v8, "pm":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_c
    sget-object v10, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    .line 1089
    invoke-static {v0, v10}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_15
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_c .. :try_end_15} :catch_52

    move-result-object v8

    .line 1097
    .local v8, "pm":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    if-eqz v8, :cond_7f

    .line 1099
    move-object v7, v8

    .line 1101
    .local v7, "mappings":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1a
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v10

    if-ge v5, v10, :cond_7f

    .line 1103
    const/4 v4, 0x0

    .line 1104
    .local v4, "issuerDomainPolicy":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    const/4 v9, 0x0

    .line 1107
    .local v9, "subjectDomainPolicy":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :try_start_22
    invoke-virtual {v8, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v6

    .line 1109
    .local v6, "mapping":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    .line 1110
    .local v4, "issuerDomainPolicy":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_3b} :catch_5c

    move-result-object v9

    .line 1118
    .local v9, "subjectDomainPolicy":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    const-string/jumbo v10, "2.5.29.32.0"

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_66

    .line 1121
    new-instance v10, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v11, "IssuerDomainPolicy is anyPolicy"

    invoke-direct {v10, v11, v12, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v10

    .line 1093
    .end local v4    # "issuerDomainPolicy":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v5    # "j":I
    .end local v6    # "mapping":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v7    # "mappings":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v9    # "subjectDomainPolicy":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .local v8, "pm":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_52
    move-exception v3

    .line 1094
    .local v3, "ex":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v10, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string/jumbo v11, "Policy mappings extension could not be decoded."

    invoke-direct {v10, v11, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v10

    .line 1113
    .end local v3    # "ex":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v5    # "j":I
    .restart local v7    # "mappings":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .local v8, "pm":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .local v9, "subjectDomainPolicy":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :catch_5c
    move-exception v2

    .line 1114
    .local v2, "e":Ljava/lang/Exception;
    new-instance v10, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string/jumbo v11, "Policy mappings extension contents could not be decoded."

    invoke-direct {v10, v11, v2, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v10

    .line 1124
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "issuerDomainPolicy":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .restart local v6    # "mapping":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .local v9, "subjectDomainPolicy":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_66
    const-string/jumbo v10, "2.5.29.32.0"

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7c

    .line 1127
    new-instance v10, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v11, "SubjectDomainPolicy is anyPolicy,"

    invoke-direct {v10, v11, v12, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v10

    .line 1101
    :cond_7c
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    .line 1131
    .end local v4    # "issuerDomainPolicy":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v5    # "j":I
    .end local v6    # "mapping":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v7    # "mappings":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v9    # "subjectDomainPolicy":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_7f
    return-void
.end method

.method protected static prepareNextCertG(Ljava/security/cert/CertPath;ILcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;)V
    .registers 14
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "nameConstraintValidator"    # Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1677
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 1678
    .local v1, "certs":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1682
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    const/4 v6, 0x0

    .line 1686
    .local v6, "nc":Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;
    :try_start_b
    sget-object v9, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    .line 1685
    invoke-static {v0, v9}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v9

    invoke-static {v9}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v7

    .line 1687
    .local v7, "ncSeq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    if-eqz v7, :cond_1b

    .line 1689
    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1a} :catch_38

    move-result-object v6

    .line 1697
    .end local v6    # "nc":Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;
    :cond_1b
    if-eqz v6, :cond_56

    .line 1703
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->getPermittedSubtrees()[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v8

    .line 1704
    .local v8, "permitted":[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
    if-eqz v8, :cond_26

    .line 1708
    :try_start_23
    invoke-virtual {p2, v8}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->intersectPermittedSubtree([Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_42

    .line 1720
    :cond_26
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->getExcludedSubtrees()[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v4

    .line 1721
    .local v4, "excluded":[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
    if-eqz v4, :cond_56

    .line 1723
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2d
    array-length v9, v4

    if-eq v5, v9, :cond_56

    .line 1726
    :try_start_30
    aget-object v9, v4, v5

    invoke-virtual {p2, v9}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->addExcludedSubtree(Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_35} :catch_4c

    .line 1723
    add-int/lit8 v5, v5, 0x1

    goto :goto_2d

    .line 1693
    .end local v4    # "excluded":[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
    .end local v5    # "i":I
    .end local v7    # "ncSeq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v8    # "permitted":[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
    .restart local v6    # "nc":Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;
    :catch_38
    move-exception v2

    .line 1694
    .local v2, "e":Ljava/lang/Exception;
    new-instance v9, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string/jumbo v10, "Name constraints extension could not be decoded."

    invoke-direct {v9, v10, v2, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v9

    .line 1711
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "nc":Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;
    .restart local v7    # "ncSeq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v8    # "permitted":[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
    :catch_42
    move-exception v3

    .line 1712
    .local v3, "ex":Ljava/lang/Exception;
    new-instance v9, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    .line 1713
    const-string/jumbo v10, "Permitted subtrees cannot be build from name constraints extension."

    .line 1712
    invoke-direct {v9, v10, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v9

    .line 1729
    .end local v3    # "ex":Ljava/lang/Exception;
    .restart local v4    # "excluded":[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
    .restart local v5    # "i":I
    :catch_4c
    move-exception v3

    .line 1730
    .restart local v3    # "ex":Ljava/lang/Exception;
    new-instance v9, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    .line 1731
    const-string/jumbo v10, "Excluded subtrees cannot be build from name constraints extension."

    .line 1730
    invoke-direct {v9, v10, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v9

    .line 1735
    .end local v3    # "ex":Ljava/lang/Exception;
    .end local v4    # "excluded":[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
    .end local v5    # "i":I
    .end local v8    # "permitted":[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
    :cond_56
    return-void
.end method

.method protected static prepareNextCertH1(Ljava/security/cert/CertPath;II)I
    .registers 6
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "explicitPolicy"    # I

    .prologue
    .line 2260
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 2261
    .local v1, "certs":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 2265
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-static {v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

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

.method protected static prepareNextCertH2(Ljava/security/cert/CertPath;II)I
    .registers 6
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "policyMapping"    # I

    .prologue
    .line 2283
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 2284
    .local v1, "certs":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 2288
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-static {v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

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

.method protected static prepareNextCertH3(Ljava/security/cert/CertPath;II)I
    .registers 6
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "inhibitAnyPolicy"    # I

    .prologue
    .line 2306
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 2307
    .local v1, "certs":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 2311
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-static {v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

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

.method protected static prepareNextCertI1(Ljava/security/cert/CertPath;II)I
    .registers 13
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "explicitPolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1568
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 1569
    .local v1, "certs":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1573
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    const/4 v5, 0x0

    .line 1577
    .local v5, "pc":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_b
    sget-object v8, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    .line 1576
    invoke-static {v0, v8}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v8

    invoke-static {v8}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_3f

    move-result-object v5

    .line 1587
    .local v5, "pc":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    if-eqz v5, :cond_53

    .line 1589
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v6

    .line 1591
    .local v6, "policyConstraints":Ljava/util/Enumeration;
    :cond_1b
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_53

    .line 1596
    :try_start_21
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v2

    .line 1597
    .local v2, "constraint":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v8

    if-nez v8, :cond_1b

    .line 1599
    const/4 v8, 0x0

    invoke-static {v2, v8}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->intValue()I
    :try_end_3b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_3b} :catch_49

    move-result v7

    .line 1600
    .local v7, "tmpInt":I
    if-ge v7, p2, :cond_53

    .line 1602
    return v7

    .line 1580
    .end local v2    # "constraint":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .end local v6    # "policyConstraints":Ljava/util/Enumeration;
    .end local v7    # "tmpInt":I
    .local v5, "pc":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_3f
    move-exception v3

    .line 1581
    .local v3, "e":Ljava/lang/Exception;
    new-instance v8, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string/jumbo v9, "Policy constraints extension cannot be decoded."

    invoke-direct {v8, v9, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v8

    .line 1608
    .end local v3    # "e":Ljava/lang/Exception;
    .local v5, "pc":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v6    # "policyConstraints":Ljava/util/Enumeration;
    :catch_49
    move-exception v4

    .line 1609
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    new-instance v8, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string/jumbo v9, "Policy constraints extension contents cannot be decoded."

    invoke-direct {v8, v9, v4, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v8

    .line 1614
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    .end local v6    # "policyConstraints":Ljava/util/Enumeration;
    :cond_53
    return p2
.end method

.method protected static prepareNextCertI2(Ljava/security/cert/CertPath;II)I
    .registers 13
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "policyMapping"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1623
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 1624
    .local v1, "certs":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1628
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    const/4 v5, 0x0

    .line 1632
    .local v5, "pc":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_b
    sget-object v8, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    .line 1631
    invoke-static {v0, v8}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v8

    invoke-static {v8}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_40

    move-result-object v5

    .line 1642
    .local v5, "pc":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    if-eqz v5, :cond_54

    .line 1644
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v6

    .line 1646
    .local v6, "policyConstraints":Ljava/util/Enumeration;
    :cond_1b
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_54

    .line 1650
    :try_start_21
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v2

    .line 1651
    .local v2, "constraint":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1b

    .line 1653
    const/4 v8, 0x0

    invoke-static {v2, v8}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->intValue()I
    :try_end_3c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_3c} :catch_4a

    move-result v7

    .line 1654
    .local v7, "tmpInt":I
    if-ge v7, p2, :cond_54

    .line 1656
    return v7

    .line 1635
    .end local v2    # "constraint":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .end local v6    # "policyConstraints":Ljava/util/Enumeration;
    .end local v7    # "tmpInt":I
    .local v5, "pc":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_40
    move-exception v3

    .line 1636
    .local v3, "e":Ljava/lang/Exception;
    new-instance v8, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string/jumbo v9, "Policy constraints extension cannot be decoded."

    invoke-direct {v8, v9, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v8

    .line 1662
    .end local v3    # "e":Ljava/lang/Exception;
    .local v5, "pc":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v6    # "policyConstraints":Ljava/util/Enumeration;
    :catch_4a
    move-exception v4

    .line 1663
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    new-instance v8, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string/jumbo v9, "Policy constraints extension contents cannot be decoded."

    invoke-direct {v8, v9, v4, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v8

    .line 1668
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    .end local v6    # "policyConstraints":Ljava/util/Enumeration;
    :cond_54
    return p2
.end method

.method protected static prepareNextCertJ(Ljava/security/cert/CertPath;II)I
    .registers 10
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "inhibitAnyPolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 2075
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v2

    .line 2076
    .local v2, "certs":Ljava/util/List;
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 2080
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    const/4 v4, 0x0

    .line 2084
    .local v4, "iap":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    :try_start_b
    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    .line 2083
    invoke-static {v1, v5}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_22

    move-result-object v4

    .line 2092
    .local v4, "iap":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    if-eqz v4, :cond_2c

    .line 2094
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 2096
    .local v0, "_inhibitAnyPolicy":I
    if-ge v0, p2, :cond_2c

    .line 2098
    return v0

    .line 2087
    .end local v0    # "_inhibitAnyPolicy":I
    .local v4, "iap":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    :catch_22
    move-exception v3

    .line 2088
    .local v3, "e":Ljava/lang/Exception;
    new-instance v5, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string/jumbo v6, "Inhibit any-policy extension cannot be decoded."

    invoke-direct {v5, v6, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v5

    .line 2101
    .end local v3    # "e":Ljava/lang/Exception;
    .local v4, "iap":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    :cond_2c
    return p2
.end method

.method protected static prepareNextCertK(Ljava/security/cert/CertPath;I)V
    .registers 8
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 2109
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v2

    .line 2110
    .local v2, "certs":Ljava/util/List;
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 2114
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    const/4 v0, 0x0

    .line 2118
    .local v0, "bc":Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    :try_start_b
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    .line 2117
    invoke-static {v1, v4}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_26

    move-result-object v0

    .line 2125
    .local v0, "bc":Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    if-eqz v0, :cond_30

    .line 2127
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v4

    if-nez v4, :cond_39

    .line 2129
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v5, "Not a CA certificate"

    invoke-direct {v4, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2121
    .local v0, "bc":Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    :catch_26
    move-exception v3

    .line 2122
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string/jumbo v5, "Basic constraints extension cannot be decoded."

    invoke-direct {v4, v5, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 2134
    .end local v3    # "e":Ljava/lang/Exception;
    .local v0, "bc":Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    :cond_30
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v5, "Intermediate certificate lacks BasicConstraints"

    invoke-direct {v4, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2136
    :cond_39
    return-void
.end method

.method protected static prepareNextCertL(Ljava/security/cert/CertPath;II)I
    .registers 8
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "maxPathLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 2144
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 2145
    .local v1, "certs":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 2149
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-static {v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 2151
    if-gtz p2, :cond_1c

    .line 2153
    new-instance v2, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string/jumbo v3, "Max path length not greater than zero"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2

    .line 2156
    :cond_1c
    add-int/lit8 v2, p2, -0x1

    return v2

    .line 2158
    :cond_1f
    return p2
.end method

.method protected static prepareNextCertM(Ljava/security/cert/CertPath;II)I
    .registers 11
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "maxPathLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 2167
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v4

    .line 2168
    .local v4, "certs":Ljava/util/List;
    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 2173
    .local v3, "cert":Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .line 2177
    .local v2, "bc":Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    :try_start_b
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    .line 2176
    invoke-static {v3, v6}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_24

    move-result-object v2

    .line 2184
    .local v2, "bc":Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    if-eqz v2, :cond_2e

    .line 2186
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getPathLenConstraint()Ljava/math/BigInteger;

    move-result-object v0

    .line 2188
    .local v0, "_pathLengthConstraint":Ljava/math/BigInteger;
    if-eqz v0, :cond_2e

    .line 2190
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 2192
    .local v1, "_plc":I
    if-ge v1, p2, :cond_2e

    .line 2194
    return v1

    .line 2180
    .end local v0    # "_pathLengthConstraint":Ljava/math/BigInteger;
    .end local v1    # "_plc":I
    .local v2, "bc":Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    :catch_24
    move-exception v5

    .line 2181
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string/jumbo v7, "Basic constraints extension cannot be decoded."

    invoke-direct {v6, v7, v5, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v6

    .line 2198
    .end local v5    # "e":Ljava/lang/Exception;
    .local v2, "bc":Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    :cond_2e
    return p2
.end method

.method protected static prepareNextCertN(Ljava/security/cert/CertPath;I)V
    .registers 8
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 2206
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v2

    .line 2207
    .local v2, "certs":Ljava/util/List;
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 2212
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    .line 2214
    .local v0, "_usage":[Z
    if-eqz v0, :cond_21

    const/4 v3, 0x5

    aget-boolean v3, v0, v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_21

    .line 2216
    new-instance v3, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    .line 2217
    const-string/jumbo v4, "Issuer certificate keyusage extension is critical and does not permit key signing."

    .line 2216
    invoke-direct {v3, v4, v5, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    .line 2220
    :cond_21
    return-void
.end method

.method protected static prepareNextCertO(Ljava/security/cert/CertPath;ILjava/util/Set;Ljava/util/List;)V
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

    .prologue
    .line 2229
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 2230
    .local v1, "certs":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 2236
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2237
    .local v3, "tmpIter":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 2241
    :try_start_14
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v4, v0, p2}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_1d
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_14 .. :try_end_1d} :catch_1e

    goto :goto_e

    .line 2244
    :catch_1e
    move-exception v2

    .line 2245
    .local v2, "e":Ljava/security/cert/CertPathValidatorException;
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {v2}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/security/cert/CertPathValidatorException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-direct {v4, v5, v6, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 2248
    .end local v2    # "e":Ljava/security/cert/CertPathValidatorException;
    :cond_2d
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4e

    .line 2250
    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Certificate has unsupported critical extension: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 2253
    :cond_4e
    return-void
.end method

.method protected static processCRLA1i(Ljava/util/Date;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509CRL;)Ljava/util/Set;
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

    .prologue
    .line 641
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 642
    .local v3, "set":Ljava/util/Set;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->isUseDeltasEnabled()Z

    move-result v4

    if-eqz v4, :cond_46

    .line 644
    const/4 v2, 0x0

    .line 648
    .local v2, "freshestCRL":Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    :try_start_c
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->FRESHEST_CRL:Ljava/lang/String;

    invoke-static {p2, v4}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    .line 647
    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    :try_end_15
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_c .. :try_end_15} :catch_47

    move-result-object v2

    .line 654
    .local v2, "freshestCRL":Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    if-nez v2, :cond_22

    .line 659
    :try_start_18
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->FRESHEST_CRL:Ljava/lang/String;

    .line 658
    invoke-static {p3, v4}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    :try_end_21
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_18 .. :try_end_21} :catch_51

    move-result-object v2

    .line 666
    :cond_22
    if-eqz v2, :cond_46

    .line 668
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 670
    .local v0, "crlStores":Ljava/util/List;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCRLStores()Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 674
    :try_start_30
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getNamedCRLStoreMap()Ljava/util/Map;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getAdditionalStoresFromCRLDistributionPoint(Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_3b
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_30 .. :try_end_3b} :catch_5b

    .line 685
    :try_start_3b
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    move-result-object v4

    invoke-static {p0, p3, v4, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getDeltaCRLs(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_46
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_3b .. :try_end_46} :catch_65

    .line 693
    .end local v0    # "crlStores":Ljava/util/List;
    .end local v2    # "freshestCRL":Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    :cond_46
    return-object v3

    .line 651
    .local v2, "freshestCRL":Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    :catch_47
    move-exception v1

    .line 652
    .local v1, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string/jumbo v5, "Freshest CRL extension could not be decoded from certificate."

    invoke-direct {v4, v5, v1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 662
    .end local v1    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .local v2, "freshestCRL":Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    :catch_51
    move-exception v1

    .line 663
    .restart local v1    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string/jumbo v5, "Freshest CRL extension could not be decoded from CRL."

    invoke-direct {v4, v5, v1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 677
    .end local v1    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v0    # "crlStores":Ljava/util/List;
    :catch_5b
    move-exception v1

    .line 678
    .restart local v1    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    .line 679
    const-string/jumbo v5, "No new delta CRL locations could be added from Freshest CRL extension."

    .line 678
    invoke-direct {v4, v5, v1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 688
    .end local v1    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :catch_65
    move-exception v1

    .line 689
    .restart local v1    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string/jumbo v5, "Exception obtaining delta CRLs."

    invoke-direct {v4, v5, v1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method protected static processCRLA1ii(Ljava/util/Date;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509CRL;)[Ljava/util/Set;
    .registers 15
    .param p0, "currentDate"    # Ljava/util/Date;
    .param p1, "paramsPKIX"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .param p2, "cert"    # Ljava/security/cert/X509Certificate;
    .param p3, "crl"    # Ljava/security/cert/X509CRL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 703
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 704
    .local v2, "deltaSet":Ljava/util/Set;
    new-instance v1, Ljava/security/cert/X509CRLSelector;

    invoke-direct {v1}, Ljava/security/cert/X509CRLSelector;-><init>()V

    .line 705
    .local v1, "crlselect":Ljava/security/cert/X509CRLSelector;
    invoke-virtual {v1, p2}, Ljava/security/cert/X509CRLSelector;->setCertificateChecking(Ljava/security/cert/X509Certificate;)V

    .line 709
    :try_start_e
    invoke-static {p3}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getEncoded()[B

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/security/cert/X509CRLSelector;->addIssuerName([B)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_19} :catch_5d

    .line 716
    new-instance v7, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;

    invoke-direct {v7, v1}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;-><init>(Ljava/security/cert/CRLSelector;)V

    invoke-virtual {v7, v10}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->setCompleteCRLEnabled(Z)Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->build()Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;

    move-result-object v5

    .line 718
    .local v5, "extSelect":Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;
    move-object v6, p0

    .line 720
    .local v6, "validityDate":Ljava/util/Date;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getDate()Ljava/util/Date;

    move-result-object v7

    if-eqz v7, :cond_31

    .line 722
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getDate()Ljava/util/Date;

    move-result-object v6

    .line 725
    :cond_31
    sget-object v7, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_UTIL:Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCRLStores()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v7, v5, v6, v8, v9}, Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;->findCRLs(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;Ljava/util/Date;Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    .line 727
    .local v0, "completeSet":Ljava/util/Set;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->isUseDeltasEnabled()Z

    move-result v7

    if-eqz v7, :cond_54

    .line 732
    :try_start_45
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCRLStores()Ljava/util/List;

    move-result-object v8

    invoke-static {v6, p3, v7, v8}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getDeltaCRLs(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_54
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_45 .. :try_end_54} :catch_78

    .line 740
    :cond_54
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/util/Set;

    .line 741
    const/4 v8, 0x0

    aput-object v0, v7, v8

    .line 742
    aput-object v2, v7, v10

    .line 739
    return-object v7

    .line 712
    .end local v0    # "completeSet":Ljava/util/Set;
    .end local v5    # "extSelect":Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;
    .end local v6    # "validityDate":Ljava/util/Date;
    :catch_5d
    move-exception v4

    .line 713
    .local v4, "e":Ljava/io/IOException;
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Cannot extract issuer from CRL."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 735
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v0    # "completeSet":Ljava/util/Set;
    .restart local v5    # "extSelect":Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;
    .restart local v6    # "validityDate":Ljava/util/Date;
    :catch_78
    move-exception v3

    .line 736
    .local v3, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string/jumbo v8, "Exception obtaining delta CRLs."

    invoke-direct {v7, v8, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method protected static processCRLB1(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V
    .registers 13
    .param p0, "dp"    # Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .param p1, "cert"    # Ljava/lang/Object;
    .param p2, "crl"    # Ljava/security/cert/X509CRL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 291
    sget-object v7, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {p2, v7}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    .line 292
    .local v2, "idp":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    const/4 v3, 0x0

    .line 293
    .local v3, "isIndirect":Z
    if-eqz v2, :cond_14

    .line 295
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->isIndirectCRL()Z

    move-result v7

    if-eqz v7, :cond_14

    .line 297
    const/4 v3, 0x1

    .line 304
    :cond_14
    :try_start_14
    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getEncoded()[B
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1b} :catch_50

    move-result-object v4

    .line 311
    .local v4, "issuerBytes":[B
    const/4 v6, 0x0

    .line 312
    .local v6, "matchIssuer":Z
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v7

    if-eqz v7, :cond_93

    .line 314
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v1

    .line 315
    .local v1, "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2c
    array-length v7, v1

    if-ge v5, v7, :cond_79

    .line 317
    aget-object v7, v1, v5

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_4d

    .line 321
    :try_start_38
    aget-object v7, v1, v5

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v7

    invoke-static {v7, v4}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_49} :catch_6f

    move-result v7

    if-eqz v7, :cond_4d

    .line 323
    const/4 v6, 0x1

    .line 315
    :cond_4d
    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    .line 307
    .end local v1    # "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .end local v4    # "issuerBytes":[B
    .end local v5    # "j":I
    .end local v6    # "matchIssuer":Z
    :catch_50
    move-exception v0

    .line 308
    .local v0, "e":Ljava/io/IOException;
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Exception encoding CRL issuer: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 327
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .restart local v4    # "issuerBytes":[B
    .restart local v5    # "j":I
    .restart local v6    # "matchIssuer":Z
    :catch_6f
    move-exception v0

    .line 328
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    .line 329
    const-string/jumbo v8, "CRL issuer information from distribution point cannot be decoded."

    .line 328
    invoke-direct {v7, v8, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 333
    .end local v0    # "e":Ljava/io/IOException;
    :cond_79
    if-eqz v6, :cond_88

    xor-int/lit8 v7, v3, 0x1

    if-eqz v7, :cond_88

    .line 335
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string/jumbo v8, "Distribution point contains cRLIssuer field but CRL is not indirect."

    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 337
    :cond_88
    if-nez v6, :cond_a2

    .line 339
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string/jumbo v8, "CRL issuer of CRL does not match CRL issuer of distribution point."

    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 344
    .end local v1    # "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .end local v5    # "j":I
    :cond_93
    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v7

    .line 345
    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v8

    .line 344
    invoke-virtual {v7, v8}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a2

    .line 347
    const/4 v6, 0x1

    .line 350
    :cond_a2
    if-nez v6, :cond_ad

    .line 352
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string/jumbo v8, "Cannot find matching CRL issuer for certificate."

    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 354
    :cond_ad
    return-void
.end method

.method protected static processCRLB2(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V
    .registers 17
    .param p0, "dp"    # Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .param p1, "cert"    # Ljava/lang/Object;
    .param p2, "crl"    # Ljava/security/cert/X509CRL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    .line 107
    const/4 v6, 0x0

    .line 111
    .local v6, "idp":Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_start_2
    sget-object v11, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    .line 110
    move-object/from16 v0, p2

    invoke-static {v0, v11}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v11

    invoke-static {v11}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d} :catch_41

    move-result-object v6

    .line 119
    .local v6, "idp":Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    if-eqz v6, :cond_1d7

    .line 121
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getDistributionPoint()Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v11

    if-eqz v11, :cond_17b

    .line 124
    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getDistributionPoint()Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v2

    .line 125
    .local v2, "dpName":Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v9, "names":Ljava/util/List;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v11

    if-nez v11, :cond_4b

    .line 129
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v11

    invoke-static {v11}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v5

    .line 130
    .local v5, "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_36
    array-length v11, v5

    if-ge v7, v11, :cond_4b

    .line 132
    aget-object v11, v5, v7

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    add-int/lit8 v7, v7, 0x1

    goto :goto_36

    .line 114
    .end local v2    # "dpName":Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;
    .end local v5    # "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .end local v7    # "j":I
    .end local v9    # "names":Ljava/util/List;
    .local v6, "idp":Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :catch_41
    move-exception v3

    .line 115
    .local v3, "e":Ljava/lang/Exception;
    new-instance v11, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string/jumbo v12, "Issuing distribution point extension could not be decoded."

    invoke-direct {v11, v12, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 135
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "dpName":Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;
    .local v6, "idp":Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    .restart local v9    # "names":Ljava/util/List;
    :cond_4b
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v11

    if-ne v11, v13, :cond_94

    .line 137
    new-instance v10, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v10}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 140
    .local v10, "vec":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :try_start_56
    invoke-static/range {p2 .. p2}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v11

    invoke-static {v11}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v4

    .line 141
    .local v4, "e":Ljava/util/Enumeration;
    :goto_62
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_7c

    .line 143
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v10, v11}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_71} :catch_72

    goto :goto_62

    .line 147
    .end local v4    # "e":Ljava/util/Enumeration;
    :catch_72
    move-exception v3

    .line 148
    .restart local v3    # "e":Ljava/lang/Exception;
    new-instance v11, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string/jumbo v12, "Could not read CRL issuer."

    invoke-direct {v11, v12, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 150
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "e":Ljava/util/Enumeration;
    :cond_7c
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 151
    new-instance v11, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    new-instance v12, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v12, v10}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v12}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)V

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    .end local v4    # "e":Ljava/util/Enumeration;
    .end local v10    # "vec":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_94
    const/4 v8, 0x0

    .line 156
    .local v8, "matches":Z
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v11

    if-eqz v11, :cond_149

    .line 158
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v2

    .line 159
    const/4 v5, 0x0

    .line 160
    .local v5, "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v11

    if-nez v11, :cond_b2

    .line 162
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v11

    invoke-static {v11}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v5

    .line 164
    .end local v5    # "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :cond_b2
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v11

    if-ne v11, v13, :cond_12c

    .line 166
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v11

    if-eqz v11, :cond_f1

    .line 168
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v5

    .line 183
    .local v5, "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :goto_c6
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_c7
    array-length v11, v5

    if-ge v7, v11, :cond_12c

    .line 185
    aget-object v11, v5, v7

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v11

    invoke-static {v11}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v4

    .line 186
    .restart local v4    # "e":Ljava/util/Enumeration;
    new-instance v10, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v10}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 187
    .restart local v10    # "vec":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :goto_e1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_112

    .line 189
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v10, v11}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_e1

    .line 172
    .end local v4    # "e":Ljava/util/Enumeration;
    .end local v5    # "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .end local v7    # "j":I
    .end local v10    # "vec":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_f1
    new-array v5, v13, [Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    .line 175
    .restart local v5    # "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :try_start_f3
    new-instance v11, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getEncoded()[B

    move-result-object v12

    invoke-static {v12}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)V

    const/4 v12, 0x0

    aput-object v11, v5, v12
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_107} :catch_108

    goto :goto_c6

    .line 179
    :catch_108
    move-exception v3

    .line 180
    .restart local v3    # "e":Ljava/lang/Exception;
    new-instance v11, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string/jumbo v12, "Could not read certificate issuer."

    invoke-direct {v11, v12, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 191
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "e":Ljava/util/Enumeration;
    .restart local v7    # "j":I
    .restart local v10    # "vec":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_112
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 192
    new-instance v11, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    new-instance v12, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v12, v10}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v12}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)V

    aput-object v11, v5, v7

    .line 183
    add-int/lit8 v7, v7, 0x1

    goto :goto_c7

    .line 195
    .end local v4    # "e":Ljava/util/Enumeration;
    .end local v5    # "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .end local v7    # "j":I
    .end local v10    # "vec":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_12c
    if-eqz v5, :cond_13b

    .line 197
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_12f
    array-length v11, v5

    if-ge v7, v11, :cond_13b

    .line 199
    aget-object v11, v5, v7

    invoke-interface {v9, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_146

    .line 201
    const/4 v8, 0x1

    .line 206
    .end local v7    # "j":I
    :cond_13b
    if-nez v8, :cond_17b

    .line 208
    new-instance v11, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    .line 209
    const-string/jumbo v12, "No match for certificate CRL issuing distribution point name to cRLIssuer CRL distribution point."

    .line 208
    invoke-direct {v11, v12}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 197
    .restart local v7    # "j":I
    :cond_146
    add-int/lit8 v7, v7, 0x1

    goto :goto_12f

    .line 217
    .end local v7    # "j":I
    :cond_149
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v11

    if-nez v11, :cond_158

    .line 219
    new-instance v11, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string/jumbo v12, "Either the cRLIssuer or the distributionPoint field must be contained in DistributionPoint."

    invoke-direct {v11, v12}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 222
    :cond_158
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v5

    .line 223
    .restart local v5    # "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_161
    array-length v11, v5

    if-ge v7, v11, :cond_16d

    .line 225
    aget-object v11, v5, v7

    invoke-interface {v9, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_178

    .line 227
    const/4 v8, 0x1

    .line 231
    :cond_16d
    if-nez v8, :cond_17b

    .line 233
    new-instance v11, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    .line 234
    const-string/jumbo v12, "No match for certificate CRL issuing distribution point name to cRLIssuer CRL distribution point."

    .line 233
    invoke-direct {v11, v12}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 223
    :cond_178
    add-int/lit8 v7, v7, 0x1

    goto :goto_161

    .line 238
    .end local v2    # "dpName":Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;
    .end local v5    # "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .end local v7    # "j":I
    .end local v8    # "matches":Z
    .end local v9    # "names":Ljava/util/List;
    :cond_17b
    const/4 v1, 0x0

    .line 241
    .local v1, "bc":Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    :try_start_17c
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509Extension;

    move-object v11, v0

    .line 242
    sget-object v12, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    .line 241
    invoke-static {v11, v12}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v11

    invoke-static {v11}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    :try_end_189
    .catch Ljava/lang/Exception; {:try_start_17c .. :try_end_189} :catch_1a5

    move-result-object v1

    .line 249
    .local v1, "bc":Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    instance-of v11, p1, Ljava/security/cert/X509Certificate;

    if-eqz v11, :cond_1c8

    .line 252
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsUserCerts()Z

    move-result v11

    if-eqz v11, :cond_1af

    if-eqz v1, :cond_1af

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v11

    if-eqz v11, :cond_1af

    .line 254
    new-instance v11, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string/jumbo v12, "CA Cert CRL only contains user certificates."

    invoke-direct {v11, v12}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 245
    .local v1, "bc":Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    :catch_1a5
    move-exception v3

    .line 246
    .restart local v3    # "e":Ljava/lang/Exception;
    new-instance v11, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string/jumbo v12, "Basic constraints extension could not be decoded."

    invoke-direct {v11, v12, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 258
    .end local v3    # "e":Ljava/lang/Exception;
    .local v1, "bc":Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    :cond_1af
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsCACerts()Z

    move-result v11

    if-eqz v11, :cond_1c8

    if-eqz v1, :cond_1bf

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_1c8

    .line 260
    :cond_1bf
    new-instance v11, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string/jumbo v12, "End CRL only contains CA certificates."

    invoke-direct {v11, v12}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 265
    :cond_1c8
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts()Z

    move-result v11

    if-eqz v11, :cond_1d7

    .line 267
    new-instance v11, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string/jumbo v12, "onlyContainsAttributeCerts boolean is asserted."

    invoke-direct {v11, v12}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 270
    .end local v1    # "bc":Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    :cond_1d7
    return-void
.end method

.method protected static processCRLC(Ljava/security/cert/X509CRL;Ljava/security/cert/X509CRL;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)V
    .registers 12
    .param p0, "deltaCRL"    # Ljava/security/cert/X509CRL;
    .param p1, "completeCRL"    # Ljava/security/cert/X509CRL;
    .param p2, "pkixParams"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 761
    if-nez p0, :cond_3

    .line 763
    return-void

    .line 765
    :cond_3
    const/4 v1, 0x0

    .line 769
    .local v1, "completeidp":Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_start_4
    sget-object v7, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    .line 768
    invoke-static {p1, v7}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_2b

    move-result-object v1

    .line 776
    .local v1, "completeidp":Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->isUseDeltasEnabled()Z

    move-result v7

    if-eqz v7, :cond_aa

    .line 779
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v7

    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_35

    .line 781
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string/jumbo v8, "Complete CRL issuer does not match delta CRL issuer."

    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 772
    .local v1, "completeidp":Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :catch_2b
    move-exception v5

    .line 773
    .local v5, "e":Ljava/lang/Exception;
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string/jumbo v8, "Issuing distribution point extension could not be decoded."

    invoke-direct {v7, v8, v5}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 785
    .end local v5    # "e":Ljava/lang/Exception;
    .local v1, "completeidp":Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :cond_35
    const/4 v3, 0x0

    .line 789
    .local v3, "deltaidp":Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_start_36
    sget-object v7, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    .line 788
    invoke-static {p0, v7}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3f} :catch_51

    move-result-object v3

    .line 797
    .local v3, "deltaidp":Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    const/4 v6, 0x0

    .line 798
    .local v6, "match":Z
    if-nez v1, :cond_5b

    .line 800
    if-nez v3, :cond_46

    .line 802
    const/4 v6, 0x1

    .line 812
    :cond_46
    :goto_46
    if-nez v6, :cond_63

    .line 814
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    .line 815
    const-string/jumbo v8, "Issuing distribution point extension from delta CRL and complete CRL does not match."

    .line 814
    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 792
    .end local v6    # "match":Z
    .local v3, "deltaidp":Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :catch_51
    move-exception v5

    .line 793
    .restart local v5    # "e":Ljava/lang/Exception;
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    .line 794
    const-string/jumbo v8, "Issuing distribution point extension from delta CRL could not be decoded."

    .line 793
    invoke-direct {v7, v8, v5}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 807
    .end local v5    # "e":Ljava/lang/Exception;
    .local v3, "deltaidp":Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    .restart local v6    # "match":Z
    :cond_5b
    invoke-virtual {v1, v3}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_46

    .line 809
    const/4 v6, 0x1

    goto :goto_46

    .line 819
    :cond_63
    const/4 v0, 0x0

    .line 823
    .local v0, "completeKeyIdentifier":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :try_start_64
    sget-object v7, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

    .line 822
    invoke-static {p1, v7}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :try_end_69
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_64 .. :try_end_69} :catch_7c

    move-result-object v0

    .line 831
    .local v0, "completeKeyIdentifier":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    const/4 v2, 0x0

    .line 835
    .local v2, "deltaKeyIdentifier":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :try_start_6b
    sget-object v7, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

    .line 834
    invoke-static {p0, v7}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :try_end_70
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_6b .. :try_end_70} :catch_86

    move-result-object v2

    .line 843
    .local v2, "deltaKeyIdentifier":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    if-nez v0, :cond_90

    .line 845
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string/jumbo v8, "CRL authority key identifier is null."

    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 826
    .end local v2    # "deltaKeyIdentifier":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .local v0, "completeKeyIdentifier":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :catch_7c
    move-exception v4

    .line 827
    .local v4, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    .line 828
    const-string/jumbo v8, "Authority key identifier extension could not be extracted from complete CRL."

    .line 827
    invoke-direct {v7, v8, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 838
    .end local v4    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .local v0, "completeKeyIdentifier":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .local v2, "deltaKeyIdentifier":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :catch_86
    move-exception v4

    .line 839
    .restart local v4    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    .line 840
    const-string/jumbo v8, "Authority key identifier extension could not be extracted from delta CRL."

    .line 839
    invoke-direct {v7, v8, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 848
    .end local v4    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .local v2, "deltaKeyIdentifier":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_90
    if-nez v2, :cond_9b

    .line 850
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string/jumbo v8, "Delta CRL authority key identifier is null."

    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 853
    :cond_9b
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_aa

    .line 855
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    .line 856
    const-string/jumbo v8, "Delta CRL authority key identifier does not match complete CRL authority key identifier."

    .line 855
    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 859
    .end local v0    # "completeKeyIdentifier":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .end local v2    # "deltaKeyIdentifier":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .end local v3    # "deltaidp":Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    .end local v6    # "match":Z
    :cond_aa
    return-void
.end method

.method protected static processCRLD(Ljava/security/cert/X509CRL;Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;)Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
    .registers 7
    .param p0, "crl"    # Ljava/security/cert/X509CRL;
    .param p1, "dp"    # Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 361
    const/4 v1, 0x0

    .line 365
    .local v1, "idp":Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_start_1
    sget-object v2, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    .line 364
    invoke-static {p0, v2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_30

    move-result-object v1

    .line 372
    .local v1, "idp":Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    if-eqz v1, :cond_3a

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getOnlySomeReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v2

    if-eqz v2, :cond_3a

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 374
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;-><init>(Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;)V

    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getOnlySomeReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;-><init>(Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;)V

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->intersect(Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;)Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    move-result-object v2

    return-object v2

    .line 368
    .local v1, "idp":Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :catch_30
    move-exception v0

    .line 369
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string/jumbo v3, "Issuing distribution point extension could not be decoded."

    invoke-direct {v2, v3, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 377
    .end local v0    # "e":Ljava/lang/Exception;
    .local v1, "idp":Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :cond_3a
    if-eqz v1, :cond_42

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getOnlySomeReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v2

    if-nez v2, :cond_4b

    :cond_42
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v2

    if-nez v2, :cond_4b

    .line 379
    sget-object v2, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->allReasons:Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    return-object v2

    .line 382
    :cond_4b
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v2

    if-nez v2, :cond_5d

    .line 383
    sget-object v2, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->allReasons:Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    move-object v3, v2

    .line 384
    :goto_54
    if-nez v1, :cond_68

    .line 385
    sget-object v2, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->allReasons:Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    .line 382
    :goto_58
    invoke-virtual {v3, v2}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->intersect(Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;)Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    move-result-object v2

    return-object v2

    .line 384
    :cond_5d
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;-><init>(Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;)V

    move-object v3, v2

    goto :goto_54

    .line 386
    :cond_68
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getOnlySomeReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;-><init>(Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;)V

    goto :goto_58
.end method

.method protected static processCRLF(Ljava/security/cert/X509CRL;Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/List;Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/util/Set;
    .registers 34
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

    .prologue
    .line 459
    new-instance v3, Ljava/security/cert/X509CertSelector;

    invoke-direct {v3}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 462
    .local v3, "certSelector":Ljava/security/cert/X509CertSelector;
    :try_start_5
    invoke-static/range {p0 .. p0}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getEncoded()[B

    move-result-object v15

    .line 463
    .local v15, "issuerPrincipal":[B
    invoke-virtual {v3, v15}, Ljava/security/cert/X509CertSelector;->setSubject([B)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_10} :catch_70

    .line 471
    new-instance v25, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;

    move-object/from16 v0, v25

    invoke-direct {v0, v3}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;-><init>(Ljava/security/cert/CertSelector;)V

    invoke-virtual/range {v25 .. v25}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;->build()Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v19

    .line 477
    .local v19, "selector":Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    :try_start_1b
    invoke-virtual/range {p4 .. p4}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCertificateStores()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v7

    .line 478
    .local v7, "coll":Ljava/util/Collection;
    invoke-virtual/range {p4 .. p4}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v7, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_38
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_1b .. :try_end_38} :catch_7e

    .line 485
    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 487
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 489
    .local v4, "cert_it":Ljava/util/Iterator;
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 490
    .local v23, "validCerts":Ljava/util/List;
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 492
    .local v24, "validKeys":Ljava/util/List;
    :goto_4b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_12a

    .line 494
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/security/cert/X509Certificate;

    .line 500
    .local v21, "signingCert":Ljava/security/cert/X509Certificate;
    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_8c

    .line 502
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4b

    .line 466
    .end local v4    # "cert_it":Ljava/util/Iterator;
    .end local v7    # "coll":Ljava/util/Collection;
    .end local v15    # "issuerPrincipal":[B
    .end local v19    # "selector":Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    .end local v21    # "signingCert":Ljava/security/cert/X509Certificate;
    .end local v23    # "validCerts":Ljava/util/List;
    .end local v24    # "validKeys":Ljava/util/List;
    :catch_70
    move-exception v9

    .line 467
    .local v9, "e":Ljava/io/IOException;
    new-instance v25, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    .line 468
    const-string/jumbo v26, "Subject criteria for certificate selector to find issuer certificate for CRL could not be set."

    .line 467
    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v9}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v25

    .line 481
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v15    # "issuerPrincipal":[B
    .restart local v19    # "selector":Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    :catch_7e
    move-exception v8

    .line 482
    .local v8, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v25, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string/jumbo v26, "Issuer certificate for CRL cannot be searched."

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v8}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v25

    .line 508
    .end local v8    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v4    # "cert_it":Ljava/util/Iterator;
    .restart local v7    # "coll":Ljava/util/Collection;
    .restart local v21    # "signingCert":Ljava/security/cert/X509Certificate;
    .restart local v23    # "validCerts":Ljava/util/List;
    .restart local v24    # "validKeys":Ljava/util/List;
    :cond_8c
    :try_start_8c
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;

    invoke-direct {v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;-><init>()V

    .line 509
    .local v2, "builder":Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;
    new-instance v22, Ljava/security/cert/X509CertSelector;

    invoke-direct/range {v22 .. v22}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 510
    .local v22, "tmpCertSelector":Ljava/security/cert/X509CertSelector;
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CertSelector;->setCertificate(Ljava/security/cert/X509Certificate;)V

    .line 512
    new-instance v25, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    move-object/from16 v0, v25

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)V

    .line 513
    new-instance v26, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;-><init>(Ljava/security/cert/CertSelector;)V

    invoke-virtual/range {v26 .. v26}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;->build()Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v26

    .line 512
    invoke-virtual/range {v25 .. v26}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->setTargetConstraints(Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    move-result-object v18

    .line 524
    .local v18, "paramsBuilder":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    move-object/from16 v0, p5

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_107

    .line 526
    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->setRevocationEnabled(Z)V

    .line 533
    :goto_ca
    new-instance v25, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;

    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;-><init>(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)V

    invoke-virtual/range {v25 .. v25}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->build()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    move-result-object v13

    .line 535
    .local v13, "extParams":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    invoke-virtual {v2, v13}, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->engineBuild(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/security/cert/CertPathBuilderResult;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v5

    .line 536
    .local v5, "certs":Ljava/util/List;
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p6

    invoke-static {v5, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getNextWorkingKey(Ljava/util/List;ILcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/security/PublicKey;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_f7
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_8c .. :try_end_f7} :catch_f9
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_8c .. :try_end_f7} :catch_111
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_f7} :catch_11f

    goto/16 :goto_4b

    .line 540
    .end local v2    # "builder":Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;
    .end local v5    # "certs":Ljava/util/List;
    .end local v13    # "extParams":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    .end local v18    # "paramsBuilder":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .end local v22    # "tmpCertSelector":Ljava/security/cert/X509CertSelector;
    :catch_f9
    move-exception v11

    .line 541
    .local v11, "e":Ljava/security/cert/CertPathBuilderException;
    new-instance v25, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string/jumbo v26, "CertPath for CRL signer failed to validate."

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v11}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v25

    .line 530
    .end local v11    # "e":Ljava/security/cert/CertPathBuilderException;
    .restart local v2    # "builder":Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;
    .restart local v18    # "paramsBuilder":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .restart local v22    # "tmpCertSelector":Ljava/security/cert/X509CertSelector;
    :cond_107
    const/16 v25, 0x1

    :try_start_109
    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->setRevocationEnabled(Z)V
    :try_end_110
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_109 .. :try_end_110} :catch_f9
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_109 .. :try_end_110} :catch_111
    .catch Ljava/lang/Exception; {:try_start_109 .. :try_end_110} :catch_11f

    goto :goto_ca

    .line 544
    .end local v2    # "builder":Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;
    .end local v18    # "paramsBuilder":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .end local v22    # "tmpCertSelector":Ljava/security/cert/X509CertSelector;
    :catch_111
    move-exception v12

    .line 545
    .local v12, "e":Ljava/security/cert/CertPathValidatorException;
    new-instance v25, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string/jumbo v26, "Public key of issuer certificate of CRL could not be retrieved."

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v12}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v25

    .line 548
    .end local v12    # "e":Ljava/security/cert/CertPathValidatorException;
    :catch_11f
    move-exception v10

    .line 549
    .local v10, "e":Ljava/lang/Exception;
    new-instance v25, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 553
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v21    # "signingCert":Ljava/security/cert/X509Certificate;
    :cond_12a
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 555
    .local v6, "checkKeys":Ljava/util/Set;
    const/16 v17, 0x0

    .line 556
    .local v17, "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    const/4 v14, 0x0

    .end local v17    # "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .local v14, "i":I
    :goto_132
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v14, v0, :cond_178

    .line 558
    move-object/from16 v0, v23

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/security/cert/X509Certificate;

    .line 559
    .local v20, "signCert":Ljava/security/cert/X509Certificate;
    invoke-virtual/range {v20 .. v20}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v16

    .line 561
    .local v16, "keyusage":[Z
    if-eqz v16, :cond_16c

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x7

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_15d

    const/16 v25, 0x6

    aget-boolean v25, v16, v25

    xor-int/lit8 v25, v25, 0x1

    if-eqz v25, :cond_16c

    .line 563
    :cond_15d
    new-instance v17, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    .line 564
    const-string/jumbo v25, "Issuer certificate key usage extension does not permit CRL signing."

    .line 563
    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    .line 556
    :goto_169
    add-int/lit8 v14, v14, 0x1

    goto :goto_132

    .line 568
    :cond_16c
    move-object/from16 v0, v24

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_169

    .line 572
    .end local v16    # "keyusage":[Z
    .end local v20    # "signCert":Ljava/security/cert/X509Certificate;
    :cond_178
    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v25

    if-eqz v25, :cond_189

    if-nez v17, :cond_189

    .line 574
    new-instance v25, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string/jumbo v26, "Cannot find a valid issuer certificate."

    invoke-direct/range {v25 .. v26}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 576
    :cond_189
    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v25

    if-eqz v25, :cond_192

    if-eqz v17, :cond_192

    .line 578
    throw v17

    .line 581
    :cond_192
    return-object v6
.end method

.method protected static processCRLG(Ljava/security/cert/X509CRL;Ljava/util/Set;)Ljava/security/PublicKey;
    .registers 8
    .param p0, "crl"    # Ljava/security/cert/X509CRL;
    .param p1, "keys"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 589
    const/4 v3, 0x0

    .line 590
    .local v3, "lastException":Ljava/lang/Exception;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v3    # "lastException":Ljava/lang/Exception;
    .local v1, "it":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

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

    .line 599
    :catch_15
    move-exception v0

    .line 600
    .local v0, "e":Ljava/lang/Exception;
    move-object v3, v0

    .local v3, "lastException":Ljava/lang/Exception;
    goto :goto_5

    .line 603
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "key":Ljava/security/PublicKey;
    .end local v3    # "lastException":Ljava/lang/Exception;
    :cond_18
    new-instance v4, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string/jumbo v5, "Cannot verify CRL."

    invoke-direct {v4, v5, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method protected static processCRLH(Ljava/util/Set;Ljava/security/PublicKey;)Ljava/security/cert/X509CRL;
    .registers 8
    .param p0, "deltacrls"    # Ljava/util/Set;
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 611
    const/4 v3, 0x0

    .line 613
    .local v3, "lastException":Ljava/lang/Exception;
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v3    # "lastException":Ljava/lang/Exception;
    .local v2, "it":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 615
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CRL;

    .line 618
    .local v0, "crl":Ljava/security/cert/X509CRL;
    :try_start_12
    invoke-virtual {v0, p1}, Ljava/security/cert/X509CRL;->verify(Ljava/security/PublicKey;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_16

    .line 619
    return-object v0

    .line 622
    :catch_16
    move-exception v1

    .line 623
    .local v1, "e":Ljava/lang/Exception;
    move-object v3, v1

    .local v3, "lastException":Ljava/lang/Exception;
    goto :goto_6

    .line 627
    .end local v0    # "crl":Ljava/security/cert/X509CRL;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "lastException":Ljava/lang/Exception;
    :cond_19
    if-eqz v3, :cond_24

    .line 629
    new-instance v4, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string/jumbo v5, "Cannot verify delta CRL."

    invoke-direct {v4, v5, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 631
    :cond_24
    return-object v5
.end method

.method protected static processCRLI(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/org/bouncycastle/jce/provider/CertStatus;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)V
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

    .prologue
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

.method protected static processCRLJ(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/org/bouncycastle/jce/provider/CertStatus;)V
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

    .prologue
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

.method protected static processCertA(Ljava/security/cert/CertPath;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;ILjava/security/PublicKey;ZLcom/android/org/bouncycastle/asn1/x500/X500Name;Ljava/security/cert/X509Certificate;Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;)V
    .registers 21
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

    .prologue
    .line 1490
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v6

    .line 1491
    .local v6, "certs":Ljava/util/List;
    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 1495
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    if-nez p4, :cond_15

    .line 1502
    :try_start_c
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v1

    .line 1501
    move-object/from16 v0, p3

    invoke-static {v2, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->verifyX509Certificate(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/security/GeneralSecurityException; {:try_start_c .. :try_end_15} :catch_6f

    .line 1514
    :cond_15
    :try_start_15
    invoke-static {p1, p0, p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getValidCertDateFromValidityModel(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/security/cert/CertPath;I)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_1c
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_15 .. :try_end_1c} :catch_a2
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_15 .. :try_end_1c} :catch_83
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_15 .. :try_end_1c} :catch_79

    .line 1533
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->isRevocationEnabled()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 1537
    :try_start_22
    invoke-static {p1, p0, p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getValidCertDateFromValidityModel(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/security/cert/CertPath;I)Ljava/util/Date;

    move-result-object v3

    move-object v1, p1

    move-object/from16 v4, p6

    move-object/from16 v5, p3

    move-object/from16 v7, p7

    invoke-static/range {v1 .. v7}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->checkCRLs(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/List;Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;)V
    :try_end_30
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_22 .. :try_end_30} :catch_c1

    .line 1554
    :cond_30
    invoke-static {v2}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d7

    .line 1556
    new-instance v1, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IssuerName("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1557
    const-string/jumbo v4, ") does not match SubjectName("

    .line 1556
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1557
    const-string/jumbo v4, ") of signing certificate."

    .line 1556
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1557
    const/4 v4, 0x0

    .line 1556
    invoke-direct {v1, v3, v4, p0, p2}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 1505
    :catch_6f
    move-exception v10

    .line 1506
    .local v10, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string/jumbo v3, "Could not validate certificate signature."

    invoke-direct {v1, v3, v10, p0, p2}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 1526
    .end local v10    # "e":Ljava/security/GeneralSecurityException;
    :catch_79
    move-exception v9

    .line 1527
    .local v9, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v1, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string/jumbo v3, "Could not validate time of certificate."

    invoke-direct {v1, v3, v9, p0, p2}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 1522
    .end local v9    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :catch_83
    move-exception v12

    .line 1523
    .local v12, "e":Ljava/security/cert/CertificateNotYetValidException;
    new-instance v1, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not validate certificate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/security/cert/CertificateNotYetValidException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v12, p0, p2}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 1518
    .end local v12    # "e":Ljava/security/cert/CertificateNotYetValidException;
    :catch_a2
    move-exception v11

    .line 1519
    .local v11, "e":Ljava/security/cert/CertificateExpiredException;
    new-instance v1, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not validate certificate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Ljava/security/cert/CertificateExpiredException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v11, p0, p2}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 1541
    .end local v11    # "e":Ljava/security/cert/CertificateExpiredException;
    :catch_c1
    move-exception v9

    .line 1542
    .restart local v9    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    move-object v8, v9

    .line 1543
    .local v8, "cause":Ljava/lang/Throwable;
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_cd

    .line 1545
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    .line 1547
    :cond_cd
    new-instance v1, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v8, p0, p2}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 1560
    .end local v8    # "cause":Ljava/lang/Throwable;
    .end local v9    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :cond_d7
    return-void
.end method

.method protected static processCertBC(Ljava/security/cert/CertPath;ILcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;)V
    .registers 25
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "nameConstraintValidator"    # Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1185
    invoke-virtual/range {p0 .. p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v6

    .line 1186
    .local v6, "certs":Ljava/util/List;
    move/from16 v0, p1

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 1187
    .local v5, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v18

    .line 1189
    .local v18, "n":I
    sub-int v16, v18, p1

    .line 1193
    .local v16, "i":I
    invoke-static {v5}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v20

    if-eqz v20, :cond_7d

    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_7d

    const/16 v20, 0x1

    :goto_20
    if-nez v20, :cond_113

    .line 1195
    invoke-static {v5}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v19

    .line 1200
    .local v19, "principal":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    :try_start_26
    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getEncoded()[B

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2d} :catch_80

    move-result-object v7

    .line 1210
    .local v7, "dns":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_2e
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkPermittedDN(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 1211
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkExcludedDN(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    :try_end_38
    .catch Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_2e .. :try_end_38} :catch_92

    .line 1219
    const/4 v4, 0x0

    .line 1223
    .local v4, "altName":Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    :try_start_39
    sget-object v20, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    .line 1222
    move-object/from16 v0, v20

    invoke-static {v5, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_44} :catch_a4

    move-result-object v4

    .line 1230
    .local v4, "altName":Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v20

    sget-object v21, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->EmailAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v20 .. v21}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getRDNs(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    move-result-object v13

    .line 1231
    .local v13, "emails":[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    const/4 v10, 0x0

    .local v10, "eI":I
    :goto_50
    array-length v0, v13

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v10, v0, :cond_c8

    .line 1234
    aget-object v20, v13, v10

    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v20

    check-cast v20, Lcom/android/org/bouncycastle/asn1/ASN1String;

    invoke-interface/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v11

    .line 1235
    .local v11, "email":Ljava/lang/String;
    new-instance v12, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-direct {v12, v0, v11}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(ILjava/lang/String;)V

    .line 1238
    .local v12, "emailAsGeneralName":Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :try_start_70
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkPermitted(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V

    .line 1239
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkExcluded(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V
    :try_end_7a
    .catch Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_70 .. :try_end_7a} :catch_b6

    .line 1231
    add-int/lit8 v10, v10, 0x1

    goto :goto_50

    .line 1193
    .end local v4    # "altName":Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .end local v7    # "dns":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v10    # "eI":I
    .end local v11    # "email":Ljava/lang/String;
    .end local v12    # "emailAsGeneralName":Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .end local v13    # "emails":[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    .end local v19    # "principal":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    :cond_7d
    const/16 v20, 0x0

    goto :goto_20

    .line 1203
    .restart local v19    # "principal":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    :catch_80
    move-exception v9

    .line 1204
    .local v9, "e":Ljava/lang/Exception;
    new-instance v20, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v21, "Exception extracting subject name when checking subtrees."

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct {v0, v1, v9, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v20

    .line 1214
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v7    # "dns":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_92
    move-exception v8

    .line 1215
    .local v8, "e":Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
    new-instance v20, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v21, "Subtree check for certificate subject failed."

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct {v0, v1, v8, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v20

    .line 1226
    .end local v8    # "e":Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
    .local v4, "altName":Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    :catch_a4
    move-exception v9

    .line 1227
    .restart local v9    # "e":Ljava/lang/Exception;
    new-instance v20, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v21, "Subject alternative name extension could not be decoded."

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct {v0, v1, v9, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v20

    .line 1242
    .end local v9    # "e":Ljava/lang/Exception;
    .local v4, "altName":Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .restart local v10    # "eI":I
    .restart local v11    # "email":Ljava/lang/String;
    .restart local v12    # "emailAsGeneralName":Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .restart local v13    # "emails":[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    :catch_b6
    move-exception v14

    .line 1243
    .local v14, "ex":Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
    new-instance v20, Ljava/security/cert/CertPathValidatorException;

    .line 1244
    const-string/jumbo v21, "Subtree check for certificate subject alternative email failed."

    .line 1243
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct {v0, v1, v14, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v20

    .line 1247
    .end local v11    # "email":Ljava/lang/String;
    .end local v12    # "emailAsGeneralName":Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .end local v14    # "ex":Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
    :cond_c8
    if-eqz v4, :cond_113

    .line 1249
    const/4 v15, 0x0

    .line 1252
    .local v15, "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :try_start_cb
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_ce} :catch_ef

    move-result-object v15

    .line 1259
    .local v15, "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_d1
    array-length v0, v15

    move/from16 v20, v0

    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_113

    .line 1264
    :try_start_da
    aget-object v20, v15, v17

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkPermitted(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V

    .line 1265
    aget-object v20, v15, v17

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkExcluded(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V
    :try_end_ec
    .catch Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_da .. :try_end_ec} :catch_101

    .line 1259
    add-int/lit8 v17, v17, 0x1

    goto :goto_d1

    .line 1255
    .end local v17    # "j":I
    .local v15, "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :catch_ef
    move-exception v9

    .line 1256
    .restart local v9    # "e":Ljava/lang/Exception;
    new-instance v20, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v21, "Subject alternative name contents could not be decoded."

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct {v0, v1, v9, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v20

    .line 1268
    .end local v9    # "e":Ljava/lang/Exception;
    .local v15, "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .restart local v17    # "j":I
    :catch_101
    move-exception v8

    .line 1269
    .restart local v8    # "e":Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
    new-instance v20, Ljava/security/cert/CertPathValidatorException;

    .line 1270
    const-string/jumbo v21, "Subtree check for certificate subject alternative name failed."

    .line 1269
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct {v0, v1, v8, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v20

    .line 1275
    .end local v4    # "altName":Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .end local v7    # "dns":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v8    # "e":Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
    .end local v10    # "eI":I
    .end local v13    # "emails":[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    .end local v15    # "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .end local v17    # "j":I
    .end local v19    # "principal":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    :cond_113
    return-void
.end method

.method protected static processCertD(Ljava/security/cert/CertPath;ILjava/util/Set;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;I)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .registers 45
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

    .prologue
    .line 1286
    invoke-virtual/range {p0 .. p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v20

    .line 1287
    .local v20, "certs":Ljava/util/List;
    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/security/cert/X509Certificate;

    .line 1288
    .local v18, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v30

    .line 1290
    .local v30, "n":I
    sub-int v5, v30, p1

    .line 1295
    .local v5, "i":I
    const/16 v19, 0x0

    .line 1299
    .local v19, "certPolicies":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_16
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    .line 1298
    move-object/from16 v0, v18

    invoke-static {v0, v4}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_21
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_16 .. :try_end_21} :catch_77

    move-result-object v19

    .line 1306
    .local v19, "certPolicies":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    if-eqz v19, :cond_1fc

    if-eqz p3, :cond_1fc

    .line 1311
    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v24

    .line 1312
    .local v24, "e":Ljava/util/Enumeration;
    new-instance v36, Ljava/util/HashSet;

    invoke-direct/range {v36 .. v36}, Ljava/util/HashSet;-><init>()V

    .line 1314
    .local v36, "pols":Ljava/util/Set;
    :cond_2f
    :goto_2f
    invoke-interface/range {v24 .. v24}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_97

    .line 1316
    invoke-interface/range {v24 .. v24}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object v34

    .line 1317
    .local v34, "pInfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    invoke-virtual/range {v34 .. v34}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v35

    .line 1319
    .local v35, "pOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual/range {v35 .. v35}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1321
    const-string/jumbo v4, "2.5.29.32.0"

    invoke-virtual/range {v35 .. v35}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2f

    .line 1323
    const/16 v37, 0x0

    .line 1326
    .local v37, "pq":Ljava/util/Set;
    :try_start_59
    invoke-virtual/range {v34 .. v34}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getQualifierSet(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;
    :try_end_60
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_59 .. :try_end_60} :catch_87

    move-result-object v37

    .line 1334
    .local v37, "pq":Ljava/util/Set;
    move-object/from16 v0, p4

    move-object/from16 v1, v35

    move-object/from16 v2, v37

    invoke-static {v5, v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->processCertD1i(I[Ljava/util/List;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Set;)Z

    move-result v29

    .line 1336
    .local v29, "match":Z
    if-nez v29, :cond_2f

    .line 1338
    move-object/from16 v0, p4

    move-object/from16 v1, v35

    move-object/from16 v2, v37

    invoke-static {v5, v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->processCertD1ii(I[Ljava/util/List;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Set;)V

    goto :goto_2f

    .line 1302
    .end local v24    # "e":Ljava/util/Enumeration;
    .end local v29    # "match":Z
    .end local v34    # "pInfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    .end local v35    # "pOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v36    # "pols":Ljava/util/Set;
    .end local v37    # "pq":Ljava/util/Set;
    .local v19, "certPolicies":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_77
    move-exception v23

    .line 1303
    .local v23, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string/jumbo v10, "Could not read certificate policies extension from certificate."

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v4, v10, v0, v1, v2}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 1329
    .end local v23    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .local v19, "certPolicies":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v24    # "e":Ljava/util/Enumeration;
    .restart local v34    # "pInfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    .restart local v35    # "pOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .restart local v36    # "pols":Ljava/util/Set;
    .local v37, "pq":Ljava/util/Set;
    :catch_87
    move-exception v25

    .line 1330
    .local v25, "ex":Ljava/security/cert/CertPathValidatorException;
    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string/jumbo v10, "Policy qualifier info set could not be build."

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v4, v10, v0, v1, v2}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 1343
    .end local v25    # "ex":Ljava/security/cert/CertPathValidatorException;
    .end local v34    # "pInfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    .end local v35    # "pOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v37    # "pq":Ljava/util/Set;
    :cond_97
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a8

    const-string/jumbo v4, "2.5.29.32.0"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_138

    .line 1345
    :cond_a8
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->clear()V

    .line 1346
    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1369
    :goto_b2
    if-gtz p5, :cond_be

    move/from16 v0, v30

    if-ge v5, v0, :cond_199

    invoke-static/range {v18 .. v18}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    if-eqz v4, :cond_199

    .line 1371
    :cond_be
    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v24

    .line 1373
    :cond_c2
    invoke-interface/range {v24 .. v24}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_199

    .line 1375
    invoke-interface/range {v24 .. v24}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object v34

    .line 1377
    .restart local v34    # "pInfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    const-string/jumbo v4, "2.5.29.32.0"

    invoke-virtual/range {v34 .. v34}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c2

    .line 1379
    invoke-virtual/range {v34 .. v34}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getQualifierSet(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;

    move-result-object v8

    .line 1380
    .local v8, "_apq":Ljava/util/Set;
    add-int/lit8 v4, v5, -0x1

    aget-object v14, p4, v4

    .line 1382
    .local v14, "_nodes":Ljava/util/List;
    const/16 v28, 0x0

    .local v28, "k":I
    :goto_ef
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v28

    if-ge v0, v4, :cond_199

    .line 1384
    move/from16 v0, v28

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1386
    .local v7, "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getExpectedPolicies()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 1387
    .local v15, "_policySetIter":Ljava/util/Iterator;
    :cond_107
    :goto_107
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_195

    .line 1389
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    .line 1392
    .local v16, "_tmp":Ljava/lang/Object;
    move-object/from16 v0, v16

    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_169

    move-object/from16 v9, v16

    .line 1394
    check-cast v9, Ljava/lang/String;

    .line 1405
    .end local v16    # "_tmp":Ljava/lang/Object;
    .local v9, "_policy":Ljava/lang/String;
    :goto_11b
    const/4 v13, 0x0

    .line 1406
    .local v13, "_found":Z
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v12

    .line 1408
    .local v12, "_childrenIter":Ljava/util/Iterator;
    :cond_120
    :goto_120
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_176

    .line 1410
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1412
    .local v11, "_child":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_120

    .line 1414
    const/4 v13, 0x1

    goto :goto_120

    .line 1350
    .end local v7    # "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v8    # "_apq":Ljava/util/Set;
    .end local v9    # "_policy":Ljava/lang/String;
    .end local v11    # "_child":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v12    # "_childrenIter":Ljava/util/Iterator;
    .end local v13    # "_found":Z
    .end local v14    # "_nodes":Ljava/util/List;
    .end local v15    # "_policySetIter":Ljava/util/Iterator;
    .end local v28    # "k":I
    .end local v34    # "pInfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    :cond_138
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .line 1351
    .local v26, "it":Ljava/util/Iterator;
    new-instance v38, Ljava/util/HashSet;

    invoke-direct/range {v38 .. v38}, Ljava/util/HashSet;-><init>()V

    .line 1353
    .local v38, "t1":Ljava/util/Set;
    :cond_141
    :goto_141
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15d

    .line 1355
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    .line 1357
    .local v33, "o":Ljava/lang/Object;
    move-object/from16 v0, v36

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_141

    .line 1359
    move-object/from16 v0, v38

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_141

    .line 1362
    .end local v33    # "o":Ljava/lang/Object;
    :cond_15d
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->clear()V

    .line 1363
    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_b2

    .line 1396
    .end local v26    # "it":Ljava/util/Iterator;
    .end local v38    # "t1":Ljava/util/Set;
    .restart local v7    # "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v8    # "_apq":Ljava/util/Set;
    .restart local v14    # "_nodes":Ljava/util/List;
    .restart local v15    # "_policySetIter":Ljava/util/Iterator;
    .restart local v16    # "_tmp":Ljava/lang/Object;
    .restart local v28    # "k":I
    .restart local v34    # "pInfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    :cond_169
    move-object/from16 v0, v16

    instance-of v4, v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v4, :cond_107

    .line 1398
    check-cast v16, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .end local v16    # "_tmp":Ljava/lang/Object;
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "_policy":Ljava/lang/String;
    goto :goto_11b

    .line 1418
    .restart local v12    # "_childrenIter":Ljava/util/Iterator;
    .restart local v13    # "_found":Z
    :cond_176
    if-nez v13, :cond_107

    .line 1420
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 1421
    .local v6, "_newChildExpectedPolicies":Ljava/util/Set;
    invoke-interface {v6, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1423
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1424
    const/4 v10, 0x0

    .line 1423
    invoke-direct/range {v3 .. v10}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 1425
    .local v3, "_newChild":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v7, v3}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 1426
    aget-object v4, p4, v5

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_107

    .line 1382
    .end local v3    # "_newChild":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v6    # "_newChildExpectedPolicies":Ljava/util/Set;
    .end local v9    # "_policy":Ljava/lang/String;
    .end local v12    # "_childrenIter":Ljava/util/Iterator;
    .end local v13    # "_found":Z
    :cond_195
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_ef

    .line 1435
    .end local v7    # "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v8    # "_apq":Ljava/util/Set;
    .end local v14    # "_nodes":Ljava/util/List;
    .end local v15    # "_policySetIter":Ljava/util/Iterator;
    .end local v28    # "k":I
    .end local v34    # "pInfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    :cond_199
    move-object/from16 v17, p3

    .line 1439
    .local v17, "_validPolicyTree":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    add-int/lit8 v27, v5, -0x1

    .local v27, "j":I
    :goto_19d
    if-ltz v27, :cond_1cd

    .line 1441
    aget-object v32, p4, v27

    .line 1443
    .local v32, "nodes":Ljava/util/List;
    const/16 v28, 0x0

    .restart local v28    # "k":I
    :goto_1a3
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v28

    if-ge v0, v4, :cond_1c7

    .line 1445
    move-object/from16 v0, v32

    move/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1446
    .local v31, "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {v31 .. v31}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v4

    if-nez v4, :cond_1ca

    .line 1448
    move-object/from16 v0, v17

    move-object/from16 v1, p4

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v17

    .line 1450
    if-nez v17, :cond_1ca

    .line 1439
    .end local v31    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_1c7
    add-int/lit8 v27, v27, -0x1

    goto :goto_19d

    .line 1443
    .restart local v31    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_1ca
    add-int/lit8 v28, v28, 0x1

    goto :goto_1a3

    .line 1461
    .end local v28    # "k":I
    .end local v31    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v32    # "nodes":Ljava/util/List;
    :cond_1cd
    invoke-virtual/range {v18 .. v18}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v22

    .line 1463
    .local v22, "criticalExtensionOids":Ljava/util/Set;
    if-eqz v22, :cond_1fb

    .line 1465
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v21

    .line 1467
    .local v21, "critical":Z
    aget-object v32, p4, v5

    .line 1468
    .restart local v32    # "nodes":Ljava/util/List;
    const/16 v27, 0x0

    :goto_1df
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v27

    if-ge v0, v4, :cond_1fb

    .line 1470
    move-object/from16 v0, v32

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1471
    .restart local v31    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    move-object/from16 v0, v31

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->setCritical(Z)V

    .line 1468
    add-int/lit8 v27, v27, 0x1

    goto :goto_1df

    .line 1474
    .end local v21    # "critical":Z
    .end local v31    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v32    # "nodes":Ljava/util/List;
    :cond_1fb
    return-object v17

    .line 1476
    .end local v17    # "_validPolicyTree":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v22    # "criticalExtensionOids":Ljava/util/Set;
    .end local v24    # "e":Ljava/util/Enumeration;
    .end local v27    # "j":I
    .end local v36    # "pols":Ljava/util/Set;
    :cond_1fc
    const/4 v4, 0x0

    return-object v4
.end method

.method protected static processCertE(Ljava/security/cert/CertPath;ILcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .registers 9
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "validPolicyTree"    # Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1156
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v2

    .line 1157
    .local v2, "certs":Ljava/util/List;
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1161
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    const/4 v1, 0x0

    .line 1165
    .local v1, "certPolicies":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_b
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    .line 1164
    invoke-static {v0, v4}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_14
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_b .. :try_end_14} :catch_19

    move-result-object v1

    .line 1172
    .local v1, "certPolicies":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    if-nez v1, :cond_18

    .line 1174
    const/4 p2, 0x0

    .line 1176
    .end local p2    # "validPolicyTree":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_18
    return-object p2

    .line 1168
    .local v1, "certPolicies":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local p2    # "validPolicyTree":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :catch_19
    move-exception v3

    .line 1169
    .local v3, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string/jumbo v5, "Could not read certificate policies extension from certificate."

    invoke-direct {v4, v5, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4
.end method

.method protected static processCertF(Ljava/security/cert/CertPath;ILcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;I)V
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

    .prologue
    const/4 v2, 0x0

    .line 1143
    if-gtz p3, :cond_e

    if-nez p2, :cond_e

    .line 1145
    new-instance v0, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string/jumbo v1, "No valid policy tree found when one expected."

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1148
    :cond_e
    return-void
.end method

.method protected static wrapupCertA(ILjava/security/cert/X509Certificate;)I
    .registers 3
    .param p0, "explicitPolicy"    # I
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
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

.method protected static wrapupCertB(Ljava/security/cert/CertPath;II)I
    .registers 13
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "explicitPolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 2358
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 2359
    .local v1, "certs":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 2364
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    const/4 v5, 0x0

    .line 2368
    .local v5, "pc":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_c
    sget-object v8, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    .line 2367
    invoke-static {v0, v8}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v8

    invoke-static {v8}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_15
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_c .. :try_end_15} :catch_40

    move-result-object v5

    .line 2374
    .local v5, "pc":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    if-eqz v5, :cond_54

    .line 2376
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v6

    .line 2378
    .local v6, "policyConstraints":Ljava/util/Enumeration;
    :cond_1c
    :goto_1c
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_54

    .line 2380
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 2381
    .local v2, "constraint":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v8

    packed-switch v8, :pswitch_data_56

    goto :goto_1c

    .line 2386
    :pswitch_30
    const/4 v8, 0x0

    :try_start_31
    invoke-static {v2, v8}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->intValue()I
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3c} :catch_4a

    move-result v7

    .line 2394
    .local v7, "tmpInt":I
    if-nez v7, :cond_1c

    .line 2396
    return v9

    .line 2371
    .end local v2    # "constraint":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .end local v6    # "policyConstraints":Ljava/util/Enumeration;
    .end local v7    # "tmpInt":I
    .local v5, "pc":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_40
    move-exception v3

    .line 2372
    .local v3, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v8, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string/jumbo v9, "Policy constraints could not be decoded."

    invoke-direct {v8, v9, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v8

    .line 2389
    .end local v3    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v2    # "constraint":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .local v5, "pc":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v6    # "policyConstraints":Ljava/util/Enumeration;
    :catch_4a
    move-exception v4

    .line 2390
    .local v4, "e":Ljava/lang/Exception;
    new-instance v8, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    .line 2391
    const-string/jumbo v9, "Policy constraints requireExplicitPolicy field could not be decoded."

    .line 2390
    invoke-direct {v8, v9, v4, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v8

    .line 2402
    .end local v2    # "constraint":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "policyConstraints":Ljava/util/Enumeration;
    :cond_54
    return p2

    .line 2381
    nop

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_30
    .end packed-switch
.end method

.method protected static wrapupCertF(Ljava/security/cert/CertPath;ILjava/util/List;Ljava/util/Set;)V
    .registers 11
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "pathCheckers"    # Ljava/util/List;
    .param p3, "criticalExtensions"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 2412
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 2413
    .local v1, "certs":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 2415
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2416
    .local v3, "tmpIter":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 2420
    :try_start_14
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v4, v0, p3}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_1d
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_14 .. :try_end_1d} :catch_1e

    goto :goto_e

    .line 2423
    :catch_1e
    move-exception v2

    .line 2424
    .local v2, "e":Ljava/security/cert/CertPathValidatorException;
    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string/jumbo v5, "Additional certificate path checker failed."

    invoke-direct {v4, v5, v2, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 2429
    .end local v2    # "e":Ljava/security/cert/CertPathValidatorException;
    :cond_28
    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_49

    .line 2431
    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Certificate has unsupported critical extension: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 2434
    :cond_49
    return-void
.end method

.method protected static wrapupCertG(Ljava/security/cert/CertPath;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Set;I[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;Ljava/util/Set;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .registers 28
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

    .prologue
    .line 2446
    invoke-virtual/range {p0 .. p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v15

    .line 2455
    .local v15, "n":I
    if-nez p5, :cond_27

    .line 2457
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->isExplicitPolicyRequired()Z

    move-result v18

    if-eqz v18, :cond_25

    .line 2459
    new-instance v18, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string/jumbo v19, "Explicit policy requested but none available."

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, p0

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v18

    .line 2462
    :cond_25
    const/4 v12, 0x0

    .line 2610
    :goto_26
    return-object v12

    .line 2464
    :cond_27
    invoke-static/range {p2 .. p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isAnyPolicy(Ljava/util/Set;)Z

    move-result v18

    if-eqz v18, :cond_e3

    .line 2467
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->isExplicitPolicyRequired()Z

    move-result v18

    if-eqz v18, :cond_df

    .line 2469
    invoke-interface/range {p6 .. p6}, Ljava/util/Set;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_4e

    .line 2471
    new-instance v18, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string/jumbo v19, "Explicit policy requested but none available."

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, p0

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v18

    .line 2476
    :cond_4e
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 2478
    .local v10, "_validPolicyNodeSet":Ljava/util/Set;
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_54
    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v13, v0, :cond_95

    .line 2480
    aget-object v8, p4, v13

    .line 2482
    .local v8, "_nodeDepth":Ljava/util/List;
    const/4 v14, 0x0

    .local v14, "k":I
    :goto_60
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v14, v0, :cond_92

    .line 2484
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2486
    .local v7, "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    const-string/jumbo v18, "2.5.29.32.0"

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8f

    .line 2488
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v6

    .line 2489
    .local v6, "_iter":Ljava/util/Iterator;
    :goto_7f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8f

    .line 2491
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7f

    .line 2482
    .end local v6    # "_iter":Ljava/util/Iterator;
    :cond_8f
    add-int/lit8 v14, v14, 0x1

    goto :goto_60

    .line 2478
    .end local v7    # "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_92
    add-int/lit8 v13, v13, 0x1

    goto :goto_54

    .line 2497
    .end local v8    # "_nodeDepth":Ljava/util/List;
    .end local v14    # "k":I
    :cond_95
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 2498
    .local v11, "_vpnsIter":Ljava/util/Iterator;
    :goto_99
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_b0

    .line 2500
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2501
    .restart local v7    # "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v9

    .line 2503
    .local v9, "_validPolicy":Ljava/lang/String;
    move-object/from16 v0, p6

    invoke-interface {v0, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v18

    goto :goto_99

    .line 2510
    .end local v7    # "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v9    # "_validPolicy":Ljava/lang/String;
    :cond_b0
    if-eqz p5, :cond_df

    .line 2512
    add-int/lit8 v13, v15, -0x1

    :goto_b4
    if-ltz v13, :cond_df

    .line 2514
    aget-object v17, p4, v13

    .line 2516
    .local v17, "nodes":Ljava/util/List;
    const/4 v14, 0x0

    .restart local v14    # "k":I
    :goto_b9
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v14, v0, :cond_dc

    .line 2518
    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2519
    .local v16, "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v18

    if-nez v18, :cond_d9

    .line 2521
    move-object/from16 v0, p5

    move-object/from16 v1, p4

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object p5

    .line 2516
    :cond_d9
    add-int/lit8 v14, v14, 0x1

    goto :goto_b9

    .line 2512
    .end local v16    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_dc
    add-int/lit8 v13, v13, -0x1

    goto :goto_b4

    .line 2530
    .end local v10    # "_validPolicyNodeSet":Ljava/util/Set;
    .end local v11    # "_vpnsIter":Ljava/util/Iterator;
    .end local v13    # "j":I
    .end local v14    # "k":I
    .end local v17    # "nodes":Ljava/util/List;
    :cond_df
    move-object/from16 v12, p5

    .local v12, "intersection":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    goto/16 :goto_26

    .line 2547
    .end local v12    # "intersection":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_e3
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 2549
    .restart local v10    # "_validPolicyNodeSet":Ljava/util/Set;
    const/4 v13, 0x0

    .restart local v13    # "j":I
    :goto_e9
    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v13, v0, :cond_137

    .line 2551
    aget-object v8, p4, v13

    .line 2553
    .restart local v8    # "_nodeDepth":Ljava/util/List;
    const/4 v14, 0x0

    .restart local v14    # "k":I
    :goto_f5
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v14, v0, :cond_134

    .line 2555
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2557
    .restart local v7    # "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    const-string/jumbo v18, "2.5.29.32.0"

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_131

    .line 2559
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v6

    .line 2560
    .restart local v6    # "_iter":Ljava/util/Iterator;
    :cond_114
    :goto_114
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_131

    .line 2562
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2563
    .local v5, "_c_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    const-string/jumbo v18, "2.5.29.32.0"

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_114

    .line 2565
    invoke-interface {v10, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_114

    .line 2553
    .end local v5    # "_c_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v6    # "_iter":Ljava/util/Iterator;
    :cond_131
    add-int/lit8 v14, v14, 0x1

    goto :goto_f5

    .line 2549
    .end local v7    # "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_134
    add-int/lit8 v13, v13, 0x1

    goto :goto_e9

    .line 2575
    .end local v8    # "_nodeDepth":Ljava/util/List;
    .end local v14    # "k":I
    :cond_137
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 2576
    .restart local v11    # "_vpnsIter":Ljava/util/Iterator;
    :cond_13b
    :goto_13b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_15c

    .line 2578
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2579
    .restart local v7    # "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v9

    .line 2581
    .restart local v9    # "_validPolicy":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_13b

    .line 2583
    move-object/from16 v0, p5

    move-object/from16 v1, p4

    invoke-static {v0, v1, v7}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object p5

    goto :goto_13b

    .line 2590
    .end local v7    # "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v9    # "_validPolicy":Ljava/lang/String;
    :cond_15c
    if-eqz p5, :cond_18b

    .line 2592
    add-int/lit8 v13, v15, -0x1

    :goto_160
    if-ltz v13, :cond_18b

    .line 2594
    aget-object v17, p4, v13

    .line 2596
    .restart local v17    # "nodes":Ljava/util/List;
    const/4 v14, 0x0

    .restart local v14    # "k":I
    :goto_165
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v14, v0, :cond_188

    .line 2598
    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2599
    .restart local v16    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v18

    if-nez v18, :cond_185

    .line 2601
    move-object/from16 v0, p5

    move-object/from16 v1, p4

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object p5

    .line 2596
    :cond_185
    add-int/lit8 v14, v14, 0x1

    goto :goto_165

    .line 2592
    .end local v16    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_188
    add-int/lit8 v13, v13, -0x1

    goto :goto_160

    .line 2608
    .end local v14    # "k":I
    .end local v17    # "nodes":Ljava/util/List;
    :cond_18b
    move-object/from16 v12, p5

    .restart local v12    # "intersection":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    goto/16 :goto_26
.end method
