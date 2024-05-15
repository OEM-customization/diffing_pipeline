.class public Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;
.super Ljava/security/cert/CertPathValidatorSpi;
.source "PKIXCertPathValidatorSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi$NoPreloadHolder;
    }
.end annotation


# instance fields
.field private final blacklist helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Ljava/security/cert/CertPathValidatorSpi;-><init>()V

    .line 45
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    .line 49
    return-void
.end method

.method static blacklist checkCertificate(Ljava/security/cert/X509Certificate;)V
    .registers 4
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 512
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;
    :try_end_7
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_7} :catch_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_9

    .line 521
    nop

    .line 522
    return-void

    .line 518
    :catch_9
    move-exception v0

    .line 520
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 514
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_14
    move-exception v0

    .line 516
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "unable to process TBSCertificate"

    invoke-direct {v1, v2, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public whitelist core-platform-api test-api engineValidate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    .registers 42
    .param p1, "certPath"    # Ljava/security/cert/CertPath;
    .param p2, "params"    # Ljava/security/cert/CertPathParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 63
    move-object/from16 v1, p0

    move-object/from16 v15, p1

    move-object/from16 v14, p2

    instance-of v0, v14, Ljava/security/cert/PKIXParameters;

    if-eqz v0, :cond_2d

    .line 65
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    move-object v2, v14

    check-cast v2, Ljava/security/cert/PKIXParameters;

    invoke-direct {v0, v2}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Ljava/security/cert/PKIXParameters;)V

    .line 67
    .local v0, "paramsPKIXBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    instance-of v2, v14, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;

    if-eqz v2, :cond_27

    .line 69
    move-object v2, v14

    check-cast v2, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;

    .line 71
    .local v2, "extPKIX":Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->isUseDeltasEnabled()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->setUseDeltasEnabled(Z)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    .line 72
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getValidityModel()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->setValidityModel(I)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    .line 75
    .end local v2    # "extPKIX":Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    :cond_27
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v0

    .line 76
    .local v0, "paramsPKIX":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    move-object v2, v0

    goto :goto_42

    .line 77
    .end local v0    # "paramsPKIX":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    :cond_2d
    instance-of v0, v14, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    if-eqz v0, :cond_3a

    .line 79
    move-object v0, v14

    check-cast v0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v0

    move-object v2, v0

    .restart local v0    # "paramsPKIX":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    goto :goto_42

    .line 81
    .end local v0    # "paramsPKIX":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    :cond_3a
    instance-of v0, v14, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    if-eqz v0, :cond_4fd

    .line 83
    move-object v0, v14

    check-cast v0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-object v2, v0

    .line 90
    .local v2, "paramsPKIX":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    :goto_42
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_4f4

    .line 103
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v13

    .line 104
    .local v13, "certs":Ljava/util/List;
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v11

    .line 106
    .local v11, "n":I
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v3, -0x1

    const/4 v10, 0x0

    if-nez v0, :cond_4ea

    .line 112
    const/4 v0, 0x0

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 114
    .local v4, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v4, :cond_9b

    .line 115
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v5

    .line 116
    .local v5, "serial":Ljava/math/BigInteger;
    # getter for: Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi$NoPreloadHolder;->blacklist:Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;
    invoke-static {}, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi$NoPreloadHolder;->access$000()Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->isSerialNumberBlackListed(Ljava/math/BigInteger;)Z

    move-result v6

    if-nez v6, :cond_70

    goto :goto_9b

    .line 118
    :cond_70
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Certificate revocation of serial 0x"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 119
    .local v3, "message":Ljava/lang/String;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 120
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    invoke-direct {v6, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    .line 121
    .local v6, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v7, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6, v15, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v7

    .line 135
    .end local v3    # "message":Ljava/lang/String;
    .end local v4    # "cert":Ljava/security/cert/X509Certificate;
    .end local v5    # "serial":Ljava/math/BigInteger;
    .end local v6    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :cond_9b
    :goto_9b
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getInitialPolicies()Ljava/util/Set;

    move-result-object v16

    .line 143
    .local v16, "userInitialPolicySet":Ljava/util/Set;
    const/4 v9, 0x1

    :try_start_a0
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v9

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 144
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v6

    .line 143
    invoke-static {v4, v5, v6}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Ljava/security/cert/TrustAnchor;

    move-result-object v4

    move-object v8, v4

    .line 146
    .local v8, "trust":Ljava/security/cert/TrustAnchor;
    if-eqz v8, :cond_4bf

    .line 151
    invoke-virtual {v8}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->checkCertificate(Ljava/security/cert/X509Certificate;)V
    :try_end_c1
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_a0 .. :try_end_c1} :catch_4d0

    .line 156
    nop

    .line 159
    new-instance v4, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    invoke-direct {v4, v2}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)V

    invoke-virtual {v4, v8}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->setTrustAnchor(Ljava/security/cert/TrustAnchor;)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v17

    .line 165
    .end local v2    # "paramsPKIX":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .local v17, "paramsPKIX":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    const/4 v2, 0x0

    .line 176
    .local v2, "index":I
    add-int/lit8 v4, v11, 0x1

    new-array v7, v4, [Ljava/util/ArrayList;

    .line 177
    .local v7, "policyNodes":[Ljava/util/List;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_d5
    array-length v5, v7

    if-ge v4, v5, :cond_e2

    .line 179
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    aput-object v5, v7, v4

    .line 177
    add-int/lit8 v4, v4, 0x1

    goto :goto_d5

    .line 182
    .end local v4    # "j":I
    :cond_e2
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    move-object v5, v4

    .line 184
    .local v5, "policySet":Ljava/util/Set;
    const-string v4, "2.5.29.32.0"

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 186
    new-instance v4, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    const/16 v20, 0x0

    const/16 v22, 0x0

    new-instance v23, Ljava/util/HashSet;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashSet;-><init>()V

    const/16 v25, 0x0

    const-string v24, "2.5.29.32.0"

    move-object/from16 v18, v4

    move-object/from16 v21, v5

    invoke-direct/range {v18 .. v25}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 189
    .local v4, "validPolicyTree":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    aget-object v6, v7, v0

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;

    invoke-direct {v6}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;-><init>()V

    .line 199
    .local v6, "nameConstraintValidator":Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 201
    .local v12, "acceptablePolicies":Ljava/util/Set;
    invoke-virtual/range {v17 .. v17}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->isExplicitPolicyRequired()Z

    move-result v18

    if-eqz v18, :cond_120

    .line 203
    const/16 v18, 0x0

    .local v18, "explicitPolicy":I
    goto :goto_122

    .line 207
    .end local v18    # "explicitPolicy":I
    :cond_120
    add-int/lit8 v18, v11, 0x1

    .line 215
    .restart local v18    # "explicitPolicy":I
    :goto_122
    invoke-virtual/range {v17 .. v17}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->isAnyPolicyInhibited()Z

    move-result v19

    if-eqz v19, :cond_12b

    .line 217
    const/16 v19, 0x0

    .local v19, "inhibitAnyPolicy":I
    goto :goto_12d

    .line 221
    .end local v19    # "inhibitAnyPolicy":I
    :cond_12b
    add-int/lit8 v19, v11, 0x1

    .line 229
    .restart local v19    # "inhibitAnyPolicy":I
    :goto_12d
    invoke-virtual/range {v17 .. v17}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->isPolicyMappingInhibited()Z

    move-result v20

    if-eqz v20, :cond_136

    .line 231
    const/16 v20, 0x0

    .local v20, "policyMapping":I
    goto :goto_138

    .line 235
    .end local v20    # "policyMapping":I
    :cond_136
    add-int/lit8 v20, v11, 0x1

    .line 244
    .restart local v20    # "policyMapping":I
    :goto_138
    invoke-virtual {v8}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v21

    .line 247
    .local v21, "sign":Ljava/security/cert/X509Certificate;
    if-eqz v21, :cond_157

    .line 249
    :try_start_13e
    invoke-static/range {v21 .. v21}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v22

    .line 250
    .local v22, "workingIssuerName":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    invoke-virtual/range {v21 .. v21}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v23
    :try_end_146
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13e .. :try_end_146} :catch_147

    .local v23, "workingPublicKey":Ljava/security/PublicKey;
    goto :goto_15f

    .line 258
    .end local v22    # "workingIssuerName":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .end local v23    # "workingPublicKey":Ljava/security/PublicKey;
    :catch_147
    move-exception v0

    move/from16 v28, v2

    move-object/from16 v34, v5

    move-object/from16 v27, v6

    move-object v10, v7

    move-object v5, v8

    move/from16 v29, v11

    move-object/from16 v26, v13

    move-object v9, v15

    goto/16 :goto_4b7

    .line 254
    :cond_157
    :try_start_157
    invoke-static {v8}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getCA(Ljava/security/cert/TrustAnchor;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v22

    .line 255
    .restart local v22    # "workingIssuerName":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    invoke-virtual {v8}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v23
    :try_end_15f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_157 .. :try_end_15f} :catch_4a9

    .line 262
    .restart local v23    # "workingPublicKey":Ljava/security/PublicKey;
    :goto_15f
    nop

    .line 264
    const/16 v24, 0x0

    .line 267
    .local v24, "workingAlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :try_start_162
    invoke-static/range {v23 .. v23}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getAlgorithmIdentifier(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3
    :try_end_166
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_162 .. :try_end_166} :catch_491

    .line 273
    .end local v24    # "workingAlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .local v3, "workingAlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    nop

    .line 274
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v24

    .line 275
    .local v24, "workingPublicKeyAlgorithm":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v25

    .line 280
    .local v25, "workingPublicKeyParameters":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    move/from16 v26, v11

    .line 286
    .local v26, "maxPathLength":I
    invoke-virtual/range {v17 .. v17}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getTargetConstraints()Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v27

    if-eqz v27, :cond_197

    .line 287
    invoke-virtual/range {v17 .. v17}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getTargetConstraints()Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v9

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v0, v28

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v9, v0}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v0

    if-eqz v0, :cond_18c

    move/from16 v28, v2

    goto :goto_199

    .line 289
    :cond_18c
    new-instance v0, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v9, "Target certificate in certification path does not match targetConstraints."

    move/from16 v28, v2

    const/4 v2, 0x0

    .end local v2    # "index":I
    .local v28, "index":I
    invoke-direct {v0, v9, v10, v15, v2}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 286
    .end local v28    # "index":I
    .restart local v2    # "index":I
    :cond_197
    move/from16 v28, v2

    .line 296
    .end local v2    # "index":I
    .restart local v28    # "index":I
    :goto_199
    invoke-virtual/range {v17 .. v17}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v9

    .line 297
    .local v9, "pathCheckers":Ljava/util/List;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .line 298
    .local v30, "certIter":Ljava/util/Iterator;
    :goto_1a1
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b2

    .line 300
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/PKIXCertPathChecker;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/security/cert/PKIXCertPathChecker;->init(Z)V

    goto :goto_1a1

    .line 303
    :cond_1b2
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 305
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v29

    const/16 v27, 0x1

    add-int/lit8 v29, v29, -0x1

    move/from16 v31, v20

    move-object/from16 v20, v25

    move/from16 v32, v26

    move/from16 v14, v29

    move-object/from16 v25, v12

    move-object/from16 v12, v23

    move/from16 v38, v18

    move-object/from16 v18, v3

    move/from16 v3, v19

    move-object/from16 v19, v4

    move/from16 v4, v38

    .end local v23    # "workingPublicKey":Ljava/security/PublicKey;
    .end local v26    # "maxPathLength":I
    .end local v28    # "index":I
    .local v3, "inhibitAnyPolicy":I
    .local v4, "explicitPolicy":I
    .local v12, "workingPublicKey":Ljava/security/PublicKey;
    .local v14, "index":I
    .local v18, "workingAlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .local v19, "validPolicyTree":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v20, "workingPublicKeyParameters":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .local v25, "acceptablePolicies":Ljava/util/Set;
    .local v31, "policyMapping":I
    .local v32, "maxPathLength":I
    :goto_1d2
    if-ltz v14, :cond_3df

    .line 308
    # getter for: Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi$NoPreloadHolder;->blacklist:Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;
    invoke-static {}, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi$NoPreloadHolder;->access$000()Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->isPublicKeyBlackListed(Ljava/security/PublicKey;)Z

    move-result v2

    if-nez v2, :cond_3a9

    .line 321
    sub-int v2, v11, v14

    .line 329
    .local v2, "i":I
    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    move/from16 v26, v11

    .end local v11    # "n":I
    .local v26, "n":I
    move-object/from16 v11, v23

    check-cast v11, Ljava/security/cert/X509Certificate;

    .line 330
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .local v11, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    const/16 v23, 0x1

    add-int/lit8 v0, v0, -0x1

    if-ne v14, v0, :cond_1f7

    move/from16 v0, v23

    goto :goto_1f8

    :cond_1f7
    const/4 v0, 0x0

    :goto_1f8
    move-object/from16 v27, v13

    move-object v13, v6

    .end local v6    # "nameConstraintValidator":Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .local v13, "nameConstraintValidator":Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .local v27, "certs":Ljava/util/List;
    move v6, v0

    .line 334
    .local v6, "verificationAlreadyPerformed":Z
    :try_start_1fc
    invoke-static {v11}, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->checkCertificate(Ljava/security/cert/X509Certificate;)V
    :try_end_1ff
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_1fc .. :try_end_1ff} :catch_379

    .line 339
    nop

    .line 345
    iget-object v0, v1, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    move v1, v2

    const/16 v28, 0x0

    .end local v2    # "i":I
    .local v1, "i":I
    move-object/from16 v2, p1

    move/from16 v29, v3

    .end local v3    # "inhibitAnyPolicy":I
    .local v29, "inhibitAnyPolicy":I
    move-object/from16 v3, v17

    move/from16 v33, v1

    move v1, v4

    .end local v4    # "explicitPolicy":I
    .local v1, "explicitPolicy":I
    .local v33, "i":I
    move v4, v14

    move-object/from16 v34, v5

    .end local v5    # "policySet":Ljava/util/Set;
    .local v34, "policySet":Ljava/util/Set;
    move-object v5, v12

    move-object/from16 v35, v7

    .end local v7    # "policyNodes":[Ljava/util/List;
    .local v35, "policyNodes":[Ljava/util/List;
    move-object/from16 v7, v22

    move-object/from16 v36, v8

    .end local v8    # "trust":Ljava/security/cert/TrustAnchor;
    .local v36, "trust":Ljava/security/cert/TrustAnchor;
    move-object/from16 v8, v21

    move-object/from16 v37, v9

    .end local v9    # "pathCheckers":Ljava/util/List;
    .local v37, "pathCheckers":Ljava/util/List;
    move-object v9, v0

    invoke-static/range {v2 .. v9}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertA(Ljava/security/cert/CertPath;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;ILjava/security/PublicKey;ZLcom/android/org/bouncycastle/asn1/x500/X500Name;Ljava/security/cert/X509Certificate;Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;)V

    .line 348
    invoke-static {v15, v14, v13}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertBC(Ljava/security/cert/CertPath;ILcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;)V

    .line 350
    move-object v9, v10

    move-object/from16 v10, p1

    move-object v2, v11

    move/from16 v8, v26

    .end local v11    # "cert":Ljava/security/cert/X509Certificate;
    .end local v26    # "n":I
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    .local v8, "n":I
    move v11, v14

    move-object v7, v13

    move-object/from16 v26, v27

    .end local v13    # "nameConstraintValidator":Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .end local v27    # "certs":Ljava/util/List;
    .local v7, "nameConstraintValidator":Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .local v26, "certs":Ljava/util/List;
    move-object/from16 v13, v19

    move v5, v14

    .end local v14    # "index":I
    .local v5, "index":I
    move-object/from16 v14, v35

    move-object v4, v15

    move/from16 v15, v29

    move-object v3, v12

    move-object/from16 v12, v25

    .end local v25    # "acceptablePolicies":Ljava/util/Set;
    .local v3, "workingPublicKey":Ljava/security/PublicKey;
    .local v12, "acceptablePolicies":Ljava/util/Set;
    invoke-static/range {v10 .. v15}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertD(Ljava/security/cert/CertPath;ILjava/util/Set;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;I)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v0

    .line 353
    .end local v19    # "validPolicyTree":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v0, "validPolicyTree":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-static {v4, v5, v0}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertE(Ljava/security/cert/CertPath;ILcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v0

    .line 355
    invoke-static {v4, v5, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertF(Ljava/security/cert/CertPath;ILcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;I)V

    .line 360
    move/from16 v11, v33

    .end local v33    # "i":I
    .local v11, "i":I
    if-eq v11, v8, :cond_346

    .line 362
    if-eqz v2, :cond_276

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v10

    const/4 v13, 0x1

    if-ne v10, v13, :cond_277

    .line 365
    if-ne v11, v13, :cond_26e

    invoke-virtual/range {v36 .. v36}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_26e

    .line 367
    move-object/from16 v9, p0

    move/from16 v27, v11

    move/from16 v15, v29

    move/from16 v14, v31

    move/from16 v13, v32

    move-object/from16 v10, v35

    move-object/from16 v11, v37

    move-object/from16 v31, v2

    goto/16 :goto_356

    .line 369
    :cond_26e
    new-instance v10, Ljava/security/cert/CertPathValidatorException;

    const-string v13, "Version 1 certificates can\'t be used as CA ones."

    invoke-direct {v10, v13, v9, v4, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v10

    .line 362
    :cond_276
    const/4 v13, 0x1

    .line 373
    :cond_277
    invoke-static {v4, v5}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertA(Ljava/security/cert/CertPath;I)V

    .line 375
    move/from16 v14, v31

    move-object/from16 v10, v35

    .end local v31    # "policyMapping":I
    .end local v35    # "policyNodes":[Ljava/util/List;
    .local v10, "policyNodes":[Ljava/util/List;
    .local v14, "policyMapping":I
    invoke-static {v4, v5, v10, v0, v14}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareCertB(Ljava/security/cert/CertPath;I[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;I)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v15

    .line 378
    .end local v0    # "validPolicyTree":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v15, "validPolicyTree":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-static {v4, v5, v7}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertG(Ljava/security/cert/CertPath;ILcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;)V

    .line 381
    invoke-static {v4, v5, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertH1(Ljava/security/cert/CertPath;II)I

    move-result v0

    .line 382
    .end local v1    # "explicitPolicy":I
    .local v0, "explicitPolicy":I
    invoke-static {v4, v5, v14}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertH2(Ljava/security/cert/CertPath;II)I

    move-result v1

    .line 383
    .end local v14    # "policyMapping":I
    .local v1, "policyMapping":I
    move/from16 v14, v29

    .end local v29    # "inhibitAnyPolicy":I
    .local v14, "inhibitAnyPolicy":I
    invoke-static {v4, v5, v14}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertH3(Ljava/security/cert/CertPath;II)I

    move-result v14

    .line 388
    invoke-static {v4, v5, v0}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertI1(Ljava/security/cert/CertPath;II)I

    move-result v19

    .line 389
    .end local v0    # "explicitPolicy":I
    .local v19, "explicitPolicy":I
    invoke-static {v4, v5, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertI2(Ljava/security/cert/CertPath;II)I

    move-result v1

    .line 392
    invoke-static {v4, v5, v14}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertJ(Ljava/security/cert/CertPath;II)I

    move-result v14

    .line 395
    invoke-static {v4, v5}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertK(Ljava/security/cert/CertPath;I)V

    .line 398
    move/from16 v13, v32

    .end local v32    # "maxPathLength":I
    .local v13, "maxPathLength":I
    invoke-static {v4, v5, v13}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertL(Ljava/security/cert/CertPath;II)I

    move-result v0

    .line 401
    .end local v13    # "maxPathLength":I
    .local v0, "maxPathLength":I
    invoke-static {v4, v5, v0}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertM(Ljava/security/cert/CertPath;II)I

    move-result v13

    .line 404
    .end local v0    # "maxPathLength":I
    .restart local v13    # "maxPathLength":I
    invoke-static {v4, v5}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertN(Ljava/security/cert/CertPath;I)V

    .line 406
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    .line 407
    .local v0, "criticalExtensions":Ljava/util/Set;
    if-eqz v0, :cond_2ef

    .line 409
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v0, v9

    .line 412
    sget-object v9, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->KEY_USAGE:Ljava/lang/String;

    invoke-interface {v0, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 413
    sget-object v9, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v0, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 414
    sget-object v9, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-interface {v0, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 415
    sget-object v9, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    invoke-interface {v0, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 416
    sget-object v9, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-interface {v0, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 417
    sget-object v9, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    invoke-interface {v0, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 418
    sget-object v9, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v0, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 419
    sget-object v9, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v0, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 420
    sget-object v9, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    invoke-interface {v0, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 421
    sget-object v9, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v0, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-object v9, v0

    goto :goto_2f5

    .line 425
    :cond_2ef
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    move-object v0, v9

    .line 429
    .end local v0    # "criticalExtensions":Ljava/util/Set;
    .local v9, "criticalExtensions":Ljava/util/Set;
    :goto_2f5
    move/from16 v33, v11

    move-object/from16 v11, v37

    .end local v37    # "pathCheckers":Ljava/util/List;
    .local v11, "pathCheckers":Ljava/util/List;
    .restart local v33    # "i":I
    invoke-static {v4, v5, v9, v11}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertO(Ljava/security/cert/CertPath;ILjava/util/Set;Ljava/util/List;)V

    .line 432
    move-object/from16 v21, v2

    .line 435
    invoke-static/range {v21 .. v21}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v22

    .line 440
    :try_start_302
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0
    :try_end_306
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_302 .. :try_end_306} :catch_333

    move/from16 v29, v1

    move-object/from16 v25, v9

    move/from16 v27, v33

    move-object/from16 v9, p0

    .end local v1    # "policyMapping":I
    .end local v9    # "criticalExtensions":Ljava/util/Set;
    .end local v33    # "i":I
    .local v25, "criticalExtensions":Ljava/util/Set;
    .local v27, "i":I
    .local v29, "policyMapping":I
    :try_start_30e
    iget-object v1, v9, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-static {v0, v5, v1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getNextWorkingKey(Ljava/util/List;ILcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/security/PublicKey;

    move-result-object v0
    :try_end_314
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_30e .. :try_end_314} :catch_331

    .line 445
    .end local v3    # "workingPublicKey":Ljava/security/PublicKey;
    .local v0, "workingPublicKey":Ljava/security/PublicKey;
    nop

    .line 447
    invoke-static {v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getAlgorithmIdentifier(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    .line 449
    .end local v18    # "workingAlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .local v1, "workingAlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    .line 451
    .end local v24    # "workingPublicKeyAlgorithm":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .local v3, "workingPublicKeyAlgorithm":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v18

    move-object/from16 v31, v2

    move-object/from16 v24, v3

    move/from16 v32, v13

    move v3, v14

    move-object/from16 v20, v18

    move-object/from16 v18, v1

    move/from16 v1, v19

    move-object/from16 v19, v15

    .end local v20    # "workingPublicKeyParameters":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .local v18, "workingPublicKeyParameters":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    goto :goto_35e

    .line 442
    .end local v0    # "workingPublicKey":Ljava/security/PublicKey;
    .end local v1    # "workingAlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .local v3, "workingPublicKey":Ljava/security/PublicKey;
    .local v18, "workingAlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .restart local v20    # "workingPublicKeyParameters":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .restart local v24    # "workingPublicKeyAlgorithm":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :catch_331
    move-exception v0

    goto :goto_33c

    .end local v25    # "criticalExtensions":Ljava/util/Set;
    .end local v27    # "i":I
    .end local v29    # "policyMapping":I
    .local v1, "policyMapping":I
    .restart local v9    # "criticalExtensions":Ljava/util/Set;
    .restart local v33    # "i":I
    :catch_333
    move-exception v0

    move/from16 v29, v1

    move-object/from16 v25, v9

    move/from16 v27, v33

    move-object/from16 v9, p0

    .line 444
    .end local v1    # "policyMapping":I
    .end local v9    # "criticalExtensions":Ljava/util/Set;
    .end local v33    # "i":I
    .local v0, "e":Ljava/security/cert/CertPathValidatorException;
    .restart local v25    # "criticalExtensions":Ljava/util/Set;
    .restart local v27    # "i":I
    .restart local v29    # "policyMapping":I
    :goto_33c
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    move-object/from16 v31, v2

    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    .local v31, "cert":Ljava/security/cert/X509Certificate;
    const-string v2, "Next working key could not be retrieved."

    invoke-direct {v1, v2, v0, v4, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 360
    .end local v10    # "policyNodes":[Ljava/util/List;
    .end local v13    # "maxPathLength":I
    .end local v14    # "inhibitAnyPolicy":I
    .end local v15    # "validPolicyTree":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v19    # "explicitPolicy":I
    .end local v25    # "criticalExtensions":Ljava/util/Set;
    .end local v27    # "i":I
    .local v0, "validPolicyTree":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v1, "explicitPolicy":I
    .restart local v2    # "cert":Ljava/security/cert/X509Certificate;
    .local v11, "i":I
    .local v29, "inhibitAnyPolicy":I
    .local v31, "policyMapping":I
    .restart local v32    # "maxPathLength":I
    .restart local v35    # "policyNodes":[Ljava/util/List;
    .restart local v37    # "pathCheckers":Ljava/util/List;
    :cond_346
    move-object/from16 v9, p0

    move/from16 v27, v11

    move/from16 v15, v29

    move/from16 v14, v31

    move/from16 v13, v32

    move-object/from16 v10, v35

    move-object/from16 v11, v37

    move-object/from16 v31, v2

    .line 305
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    .end local v6    # "verificationAlreadyPerformed":Z
    .end local v29    # "inhibitAnyPolicy":I
    .end local v32    # "maxPathLength":I
    .end local v35    # "policyNodes":[Ljava/util/List;
    .end local v37    # "pathCheckers":Ljava/util/List;
    .restart local v10    # "policyNodes":[Ljava/util/List;
    .local v11, "pathCheckers":Ljava/util/List;
    .restart local v13    # "maxPathLength":I
    .local v14, "policyMapping":I
    .local v15, "inhibitAnyPolicy":I
    .restart local v27    # "i":I
    .local v31, "cert":Ljava/security/cert/X509Certificate;
    :goto_356
    move-object/from16 v19, v0

    move-object v0, v3

    move/from16 v32, v13

    move/from16 v29, v14

    move v3, v15

    .end local v13    # "maxPathLength":I
    .end local v14    # "policyMapping":I
    .end local v15    # "inhibitAnyPolicy":I
    .local v0, "workingPublicKey":Ljava/security/PublicKey;
    .local v3, "inhibitAnyPolicy":I
    .local v19, "validPolicyTree":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v29, "policyMapping":I
    .restart local v32    # "maxPathLength":I
    :goto_35e
    add-int/lit8 v14, v5, -0x1

    move-object v15, v4

    move-object v6, v7

    move-object v7, v10

    move-object/from16 v25, v12

    move-object/from16 v13, v26

    move/from16 v2, v28

    move-object/from16 v5, v34

    const/4 v10, 0x0

    move-object v12, v0

    move v4, v1

    move-object v1, v9

    move-object v9, v11

    move-object/from16 v0, v31

    move v11, v8

    move/from16 v31, v29

    move-object/from16 v8, v36

    .end local v5    # "index":I
    .local v14, "index":I
    goto/16 :goto_1d2

    .line 336
    .end local v0    # "workingPublicKey":Ljava/security/PublicKey;
    .end local v1    # "explicitPolicy":I
    .end local v10    # "policyNodes":[Ljava/util/List;
    .end local v29    # "policyMapping":I
    .end local v34    # "policySet":Ljava/util/Set;
    .end local v36    # "trust":Ljava/security/cert/TrustAnchor;
    .local v2, "i":I
    .restart local v4    # "explicitPolicy":I
    .local v5, "policySet":Ljava/util/Set;
    .restart local v6    # "verificationAlreadyPerformed":Z
    .local v7, "policyNodes":[Ljava/util/List;
    .local v8, "trust":Ljava/security/cert/TrustAnchor;
    .local v9, "pathCheckers":Ljava/util/List;
    .local v11, "cert":Ljava/security/cert/X509Certificate;
    .local v12, "workingPublicKey":Ljava/security/PublicKey;
    .local v13, "nameConstraintValidator":Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .local v25, "acceptablePolicies":Ljava/util/Set;
    .local v26, "n":I
    .local v27, "certs":Ljava/util/List;
    .local v31, "policyMapping":I
    :catch_379
    move-exception v0

    move-object/from16 v34, v5

    move-object v10, v7

    move-object/from16 v36, v8

    move-object v7, v13

    move v5, v14

    move/from16 v8, v26

    move-object/from16 v26, v27

    move/from16 v14, v31

    move/from16 v13, v32

    move/from16 v27, v2

    move-object/from16 v31, v11

    move-object v11, v9

    move-object v9, v1

    move v1, v4

    move-object v4, v15

    move v15, v3

    move-object v3, v12

    move-object/from16 v12, v25

    move-object v2, v0

    .end local v2    # "i":I
    .end local v4    # "explicitPolicy":I
    .end local v9    # "pathCheckers":Ljava/util/List;
    .end local v25    # "acceptablePolicies":Ljava/util/Set;
    .end local v32    # "maxPathLength":I
    .restart local v1    # "explicitPolicy":I
    .local v3, "workingPublicKey":Ljava/security/PublicKey;
    .local v5, "index":I
    .local v7, "nameConstraintValidator":Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .local v8, "n":I
    .restart local v10    # "policyNodes":[Ljava/util/List;
    .local v11, "pathCheckers":Ljava/util/List;
    .local v12, "acceptablePolicies":Ljava/util/Set;
    .local v13, "maxPathLength":I
    .local v14, "policyMapping":I
    .restart local v15    # "inhibitAnyPolicy":I
    .local v26, "certs":Ljava/util/List;
    .local v27, "i":I
    .local v31, "cert":Ljava/security/cert/X509Certificate;
    .restart local v34    # "policySet":Ljava/util/Set;
    .restart local v36    # "trust":Ljava/security/cert/TrustAnchor;
    move-object v0, v2

    .line 338
    .local v0, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    move/from16 v25, v6

    .end local v6    # "verificationAlreadyPerformed":Z
    .local v25, "verificationAlreadyPerformed":Z
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;->getMessage()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v28, v7

    .end local v7    # "nameConstraintValidator":Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .local v28, "nameConstraintValidator":Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;->getUnderlyingException()Ljava/lang/Throwable;

    move-result-object v7

    invoke-direct {v2, v6, v7, v4, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2

    .line 310
    .end local v1    # "explicitPolicy":I
    .end local v10    # "policyNodes":[Ljava/util/List;
    .end local v15    # "inhibitAnyPolicy":I
    .end local v26    # "certs":Ljava/util/List;
    .end local v27    # "i":I
    .end local v28    # "nameConstraintValidator":Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .end local v34    # "policySet":Ljava/util/Set;
    .end local v36    # "trust":Ljava/security/cert/TrustAnchor;
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    .local v3, "inhibitAnyPolicy":I
    .restart local v4    # "explicitPolicy":I
    .local v5, "policySet":Ljava/util/Set;
    .local v6, "nameConstraintValidator":Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .local v7, "policyNodes":[Ljava/util/List;
    .local v8, "trust":Ljava/security/cert/TrustAnchor;
    .restart local v9    # "pathCheckers":Ljava/util/List;
    .local v11, "n":I
    .local v12, "workingPublicKey":Ljava/security/PublicKey;
    .local v13, "certs":Ljava/util/List;
    .local v14, "index":I
    .local v25, "acceptablePolicies":Ljava/util/Set;
    .local v31, "policyMapping":I
    .restart local v32    # "maxPathLength":I
    :cond_3a9
    move-object/from16 v34, v5

    move-object/from16 v28, v6

    move-object v10, v7

    move-object/from16 v36, v8

    move v8, v11

    move v5, v14

    move-object v11, v9

    move-object v9, v1

    move v1, v4

    move-object v4, v15

    move v15, v3

    move-object v3, v12

    .end local v4    # "explicitPolicy":I
    .end local v6    # "nameConstraintValidator":Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .end local v7    # "policyNodes":[Ljava/util/List;
    .end local v9    # "pathCheckers":Ljava/util/List;
    .end local v12    # "workingPublicKey":Ljava/security/PublicKey;
    .end local v14    # "index":I
    .restart local v1    # "explicitPolicy":I
    .local v3, "workingPublicKey":Ljava/security/PublicKey;
    .local v5, "index":I
    .local v8, "n":I
    .restart local v10    # "policyNodes":[Ljava/util/List;
    .local v11, "pathCheckers":Ljava/util/List;
    .restart local v15    # "inhibitAnyPolicy":I
    .restart local v28    # "nameConstraintValidator":Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .restart local v34    # "policySet":Ljava/util/Set;
    .restart local v36    # "trust":Ljava/security/cert/TrustAnchor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Certificate revocation of public key "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 311
    .local v2, "message":Ljava/lang/String;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 312
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    invoke-direct {v6, v2}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    .line 313
    .local v6, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v7, Ljava/security/cert/CertPathValidatorException;

    move-object/from16 v23, v2

    .end local v2    # "message":Ljava/lang/String;
    .local v23, "message":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2, v6, v4, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v7

    .line 459
    .end local v1    # "explicitPolicy":I
    .end local v10    # "policyNodes":[Ljava/util/List;
    .end local v15    # "inhibitAnyPolicy":I
    .end local v23    # "message":Ljava/lang/String;
    .end local v28    # "nameConstraintValidator":Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .end local v34    # "policySet":Ljava/util/Set;
    .end local v36    # "trust":Ljava/security/cert/TrustAnchor;
    .local v3, "inhibitAnyPolicy":I
    .restart local v4    # "explicitPolicy":I
    .local v5, "policySet":Ljava/util/Set;
    .local v6, "nameConstraintValidator":Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .restart local v7    # "policyNodes":[Ljava/util/List;
    .local v8, "trust":Ljava/security/cert/TrustAnchor;
    .restart local v9    # "pathCheckers":Ljava/util/List;
    .local v11, "n":I
    .restart local v12    # "workingPublicKey":Ljava/security/PublicKey;
    .restart local v14    # "index":I
    :cond_3df
    move-object/from16 v34, v5

    move-object/from16 v28, v6

    move-object v10, v7

    move-object/from16 v36, v8

    move v8, v11

    move-object/from16 v26, v13

    move v5, v14

    move/from16 v14, v31

    move/from16 v13, v32

    move-object v11, v9

    move-object v9, v1

    move v1, v4

    move-object v4, v15

    move v15, v3

    move-object v3, v12

    move-object/from16 v12, v25

    .end local v4    # "explicitPolicy":I
    .end local v6    # "nameConstraintValidator":Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .end local v7    # "policyNodes":[Ljava/util/List;
    .end local v9    # "pathCheckers":Ljava/util/List;
    .end local v25    # "acceptablePolicies":Ljava/util/Set;
    .end local v31    # "policyMapping":I
    .end local v32    # "maxPathLength":I
    .restart local v1    # "explicitPolicy":I
    .local v3, "workingPublicKey":Ljava/security/PublicKey;
    .local v5, "index":I
    .local v8, "n":I
    .restart local v10    # "policyNodes":[Ljava/util/List;
    .local v11, "pathCheckers":Ljava/util/List;
    .local v12, "acceptablePolicies":Ljava/util/Set;
    .local v13, "maxPathLength":I
    .local v14, "policyMapping":I
    .restart local v15    # "inhibitAnyPolicy":I
    .restart local v26    # "certs":Ljava/util/List;
    .restart local v28    # "nameConstraintValidator":Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .restart local v34    # "policySet":Ljava/util/Set;
    .restart local v36    # "trust":Ljava/security/cert/TrustAnchor;
    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertA(ILjava/security/cert/X509Certificate;)I

    move-result v1

    .line 461
    add-int/lit8 v2, v5, 0x1

    invoke-static {v4, v2, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertB(Ljava/security/cert/CertPath;II)I

    move-result v1

    .line 470
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v2

    .line 472
    .local v2, "criticalExtensions":Ljava/util/Set;
    if-eqz v2, :cond_44e

    .line 474
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v2, v6

    .line 476
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->KEY_USAGE:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 477
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 478
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 479
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 480
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 481
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 482
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 483
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 484
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 485
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 486
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 487
    sget-object v6, Lcom/android/org/bouncycastle/asn1/x509/Extension;->extendedKeyUsage:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-object v7, v2

    goto :goto_455

    .line 491
    :cond_44e
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    move-object v2, v6

    move-object v7, v2

    .line 494
    .end local v2    # "criticalExtensions":Ljava/util/Set;
    .local v7, "criticalExtensions":Ljava/util/Set;
    :goto_455
    add-int/lit8 v2, v5, 0x1

    invoke-static {v4, v2, v11, v7}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertF(Ljava/security/cert/CertPath;ILjava/util/List;Ljava/util/Set;)V

    .line 496
    add-int/lit8 v6, v5, 0x1

    move-object/from16 v2, p1

    move-object/from16 v25, v3

    .end local v3    # "workingPublicKey":Ljava/security/PublicKey;
    .local v25, "workingPublicKey":Ljava/security/PublicKey;
    move-object/from16 v3, v17

    move-object v9, v4

    move-object/from16 v4, v16

    move-object/from16 v37, v11

    move v11, v5

    .end local v5    # "index":I
    .local v11, "index":I
    .restart local v37    # "pathCheckers":Ljava/util/List;
    move v5, v6

    move-object v6, v10

    move-object/from16 v27, v28

    move-object/from16 v28, v7

    .end local v7    # "criticalExtensions":Ljava/util/Set;
    .local v27, "nameConstraintValidator":Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .local v28, "criticalExtensions":Ljava/util/Set;
    move-object/from16 v7, v19

    move/from16 v29, v8

    .end local v8    # "n":I
    .local v29, "n":I
    move-object v8, v12

    invoke-static/range {v2 .. v8}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertG(Ljava/security/cert/CertPath;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Set;I[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;Ljava/util/Set;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v2

    .line 499
    .local v2, "intersection":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    if-gtz v1, :cond_485

    if-eqz v2, :cond_47c

    goto :goto_485

    .line 504
    :cond_47c
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    const-string v4, "Path processing failed on policy."

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v9, v11}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    .line 501
    :cond_485
    :goto_485
    new-instance v3, Ljava/security/cert/PKIXCertPathValidatorResult;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    move-object/from16 v5, v36

    .end local v36    # "trust":Ljava/security/cert/TrustAnchor;
    .local v5, "trust":Ljava/security/cert/TrustAnchor;
    invoke-direct {v3, v5, v2, v4}, Ljava/security/cert/PKIXCertPathValidatorResult;-><init>(Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;)V

    return-object v3

    .line 269
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "explicitPolicy":I
    .end local v10    # "policyNodes":[Ljava/util/List;
    .end local v14    # "policyMapping":I
    .end local v15    # "inhibitAnyPolicy":I
    .end local v25    # "workingPublicKey":Ljava/security/PublicKey;
    .end local v26    # "certs":Ljava/util/List;
    .end local v27    # "nameConstraintValidator":Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .end local v28    # "criticalExtensions":Ljava/util/Set;
    .end local v29    # "n":I
    .end local v30    # "certIter":Ljava/util/Iterator;
    .end local v34    # "policySet":Ljava/util/Set;
    .end local v37    # "pathCheckers":Ljava/util/List;
    .local v2, "index":I
    .local v4, "validPolicyTree":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v5, "policySet":Ljava/util/Set;
    .restart local v6    # "nameConstraintValidator":Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .local v7, "policyNodes":[Ljava/util/List;
    .local v8, "trust":Ljava/security/cert/TrustAnchor;
    .local v11, "n":I
    .local v13, "certs":Ljava/util/List;
    .local v18, "explicitPolicy":I
    .local v19, "inhibitAnyPolicy":I
    .local v20, "policyMapping":I
    .local v23, "workingPublicKey":Ljava/security/PublicKey;
    .local v24, "workingAlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :catch_491
    move-exception v0

    move/from16 v28, v2

    move-object/from16 v34, v5

    move-object/from16 v27, v6

    move-object v10, v7

    move-object v5, v8

    move/from16 v29, v11

    move-object/from16 v26, v13

    move-object v9, v15

    move-object v1, v0

    .end local v2    # "index":I
    .end local v6    # "nameConstraintValidator":Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .end local v7    # "policyNodes":[Ljava/util/List;
    .end local v8    # "trust":Ljava/security/cert/TrustAnchor;
    .end local v11    # "n":I
    .end local v13    # "certs":Ljava/util/List;
    .local v5, "trust":Ljava/security/cert/TrustAnchor;
    .restart local v10    # "policyNodes":[Ljava/util/List;
    .restart local v26    # "certs":Ljava/util/List;
    .restart local v27    # "nameConstraintValidator":Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .local v28, "index":I
    .restart local v29    # "n":I
    .restart local v34    # "policySet":Ljava/util/Set;
    move-object v0, v1

    .line 271
    .local v0, "e":Ljava/security/cert/CertPathValidatorException;
    new-instance v1, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Algorithm identifier of public key of trust anchor could not be read."

    invoke-direct {v1, v2, v0, v9, v3}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 258
    .end local v0    # "e":Ljava/security/cert/CertPathValidatorException;
    .end local v10    # "policyNodes":[Ljava/util/List;
    .end local v22    # "workingIssuerName":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .end local v23    # "workingPublicKey":Ljava/security/PublicKey;
    .end local v24    # "workingAlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v26    # "certs":Ljava/util/List;
    .end local v27    # "nameConstraintValidator":Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .end local v28    # "index":I
    .end local v29    # "n":I
    .end local v34    # "policySet":Ljava/util/Set;
    .restart local v2    # "index":I
    .local v5, "policySet":Ljava/util/Set;
    .restart local v6    # "nameConstraintValidator":Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .restart local v7    # "policyNodes":[Ljava/util/List;
    .restart local v8    # "trust":Ljava/security/cert/TrustAnchor;
    .restart local v11    # "n":I
    .restart local v13    # "certs":Ljava/util/List;
    :catch_4a9
    move-exception v0

    move/from16 v28, v2

    move-object/from16 v34, v5

    move-object/from16 v27, v6

    move-object v10, v7

    move-object v5, v8

    move/from16 v29, v11

    move-object/from16 v26, v13

    move-object v9, v15

    .line 260
    .end local v2    # "index":I
    .end local v6    # "nameConstraintValidator":Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .end local v7    # "policyNodes":[Ljava/util/List;
    .end local v8    # "trust":Ljava/security/cert/TrustAnchor;
    .end local v11    # "n":I
    .end local v13    # "certs":Ljava/util/List;
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    .local v5, "trust":Ljava/security/cert/TrustAnchor;
    .restart local v10    # "policyNodes":[Ljava/util/List;
    .restart local v26    # "certs":Ljava/util/List;
    .restart local v27    # "nameConstraintValidator":Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .restart local v28    # "index":I
    .restart local v29    # "n":I
    .restart local v34    # "policySet":Ljava/util/Set;
    :goto_4b7
    new-instance v1, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Subject of trust anchor could not be (re)encoded."

    invoke-direct {v1, v2, v0, v9, v3}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 148
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    .end local v4    # "validPolicyTree":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v5    # "trust":Ljava/security/cert/TrustAnchor;
    .end local v10    # "policyNodes":[Ljava/util/List;
    .end local v12    # "acceptablePolicies":Ljava/util/Set;
    .end local v17    # "paramsPKIX":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local v18    # "explicitPolicy":I
    .end local v19    # "inhibitAnyPolicy":I
    .end local v20    # "policyMapping":I
    .end local v21    # "sign":Ljava/security/cert/X509Certificate;
    .end local v26    # "certs":Ljava/util/List;
    .end local v27    # "nameConstraintValidator":Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .end local v28    # "index":I
    .end local v29    # "n":I
    .end local v34    # "policySet":Ljava/util/Set;
    .local v2, "paramsPKIX":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local v8    # "trust":Ljava/security/cert/TrustAnchor;
    .restart local v11    # "n":I
    .restart local v13    # "certs":Ljava/util/List;
    :cond_4bf
    move-object v5, v8

    move/from16 v29, v11

    move-object/from16 v26, v13

    move-object v9, v15

    .end local v8    # "trust":Ljava/security/cert/TrustAnchor;
    .end local v11    # "n":I
    .end local v13    # "certs":Ljava/util/List;
    .restart local v5    # "trust":Ljava/security/cert/TrustAnchor;
    .restart local v26    # "certs":Ljava/util/List;
    .restart local v29    # "n":I
    :try_start_4c5
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Trust anchor for certification path not found."

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v9, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    .end local v2    # "paramsPKIX":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local v16    # "userInitialPolicySet":Ljava/util/Set;
    .end local v26    # "certs":Ljava/util/List;
    .end local v29    # "n":I
    .end local p0    # "this":Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;
    .end local p1    # "certPath":Ljava/security/cert/CertPath;
    .end local p2    # "params":Ljava/security/cert/CertPathParameters;
    throw v0
    :try_end_4ce
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_4c5 .. :try_end_4ce} :catch_4ce

    .line 153
    .end local v5    # "trust":Ljava/security/cert/TrustAnchor;
    .restart local v2    # "paramsPKIX":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local v16    # "userInitialPolicySet":Ljava/util/Set;
    .restart local v26    # "certs":Ljava/util/List;
    .restart local v29    # "n":I
    .restart local p0    # "this":Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;
    .restart local p1    # "certPath":Ljava/security/cert/CertPath;
    .restart local p2    # "params":Ljava/security/cert/CertPathParameters;
    :catch_4ce
    move-exception v0

    goto :goto_4d6

    .end local v26    # "certs":Ljava/util/List;
    .end local v29    # "n":I
    .restart local v11    # "n":I
    .restart local v13    # "certs":Ljava/util/List;
    :catch_4d0
    move-exception v0

    move/from16 v29, v11

    move-object/from16 v26, v13

    move-object v9, v15

    .line 155
    .end local v11    # "n":I
    .end local v13    # "certs":Ljava/util/List;
    .local v0, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v26    # "certs":Ljava/util/List;
    .restart local v29    # "n":I
    :goto_4d6
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;->getUnderlyingException()Ljava/lang/Throwable;

    move-result-object v4

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-direct {v1, v3, v4, v9, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 108
    .end local v0    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .end local v16    # "userInitialPolicySet":Ljava/util/Set;
    .end local v26    # "certs":Ljava/util/List;
    .end local v29    # "n":I
    .restart local v11    # "n":I
    .restart local v13    # "certs":Ljava/util/List;
    :cond_4ea
    move-object v9, v15

    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Certification path is empty."

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v9, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 92
    .end local v11    # "n":I
    .end local v13    # "certs":Ljava/util/List;
    :cond_4f4
    move-object v9, v15

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "trustAnchors is null, this is not allowed for certification path validation."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    .end local v2    # "paramsPKIX":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    :cond_4fd
    move-object v9, v15

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parameters must be a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Ljava/security/cert/PKIXParameters;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " instance."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
