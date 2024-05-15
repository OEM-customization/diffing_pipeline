.class public Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;
.super Ljava/security/cert/CertPathBuilderSpi;
.source "PKIXCertPathBuilderSpi.java"


# instance fields
.field private certPathException:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/security/cert/CertPathBuilderSpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected build(Ljava/security/cert/X509Certificate;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;Ljava/util/List;)Ljava/security/cert/CertPathBuilderResult;
    .registers 23
    .param p1, "tbvCert"    # Ljava/security/cert/X509Certificate;
    .param p2, "pkixParams"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    .param p3, "tbvPath"    # Ljava/util/List;

    .prologue
    .line 151
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 153
    const/4 v15, 0x0

    return-object v15

    .line 157
    :cond_c
    invoke-virtual/range {p2 .. p2}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getExcludedCerts()Ljava/util/Set;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-interface {v15, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1a

    .line 159
    const/4 v15, 0x0

    return-object v15

    .line 162
    :cond_1a
    invoke-virtual/range {p2 .. p2}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getMaxPathLength()I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_34

    .line 164
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual/range {p2 .. p2}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getMaxPathLength()I

    move-result v16

    move/from16 v0, v16

    if-le v15, v0, :cond_34

    .line 166
    const/4 v15, 0x0

    return-object v15

    .line 170
    :cond_34
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    const/4 v3, 0x0

    .line 178
    .local v3, "builderResult":Ljava/security/cert/CertPathBuilderResult;
    :try_start_3c
    new-instance v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;

    invoke-direct {v4}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;-><init>()V

    .line 179
    .local v4, "cFact":Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;
    new-instance v14, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;

    invoke-direct {v14}, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;-><init>()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_46} :catch_88

    .line 190
    .local v14, "validator":Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;
    :try_start_46
    invoke-virtual/range {p2 .. p2}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v15

    .line 191
    invoke-virtual/range {p2 .. p2}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v16

    .line 190
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v15, v1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Ljava/security/cert/TrustAnchor;
    :try_end_5d
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_46 .. :try_end_5d} :catch_9e

    move-result-object v15

    if-eqz v15, :cond_b9

    .line 195
    const/4 v5, 0x0

    .line 196
    .local v5, "certPath":Ljava/security/cert/CertPath;
    const/4 v12, 0x0

    .line 199
    .local v12, "result":Ljava/security/cert/PKIXCertPathValidatorResult;
    :try_start_62
    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->engineGenerateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_67} :catch_92
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_62 .. :try_end_67} :catch_9e

    move-result-object v5

    .line 210
    .local v5, "certPath":Ljava/security/cert/CertPath;
    :try_start_68
    move-object/from16 v0, p2

    invoke-virtual {v14, v5, v0}, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->engineValidate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    move-result-object v12

    .end local v12    # "result":Ljava/security/cert/PKIXCertPathValidatorResult;
    check-cast v12, Ljava/security/cert/PKIXCertPathValidatorResult;
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_70} :catch_ad
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_68 .. :try_end_70} :catch_9e

    .line 219
    .local v12, "result":Ljava/security/cert/PKIXCertPathValidatorResult;
    :try_start_70
    new-instance v15, Ljava/security/cert/PKIXCertPathBuilderResult;

    invoke-virtual {v12}, Ljava/security/cert/PKIXCertPathValidatorResult;->getTrustAnchor()Ljava/security/cert/TrustAnchor;

    move-result-object v16

    .line 220
    invoke-virtual {v12}, Ljava/security/cert/PKIXCertPathValidatorResult;->getPolicyTree()Ljava/security/cert/PolicyNode;

    move-result-object v17

    invoke-virtual {v12}, Ljava/security/cert/PKIXCertPathValidatorResult;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v18

    .line 219
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v15, v5, v0, v1, v2}, Ljava/security/cert/PKIXCertPathBuilderResult;-><init>(Ljava/security/cert/CertPath;Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;)V
    :try_end_87
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_70 .. :try_end_87} :catch_9e

    return-object v15

    .line 182
    .end local v4    # "cFact":Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;
    .end local v5    # "certPath":Ljava/security/cert/CertPath;
    .end local v12    # "result":Ljava/security/cert/PKIXCertPathValidatorResult;
    .end local v14    # "validator":Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;
    :catch_88
    move-exception v7

    .line 184
    .local v7, "e":Ljava/lang/Exception;
    new-instance v15, Ljava/lang/RuntimeException;

    const-string/jumbo v16, "Exception creating support classes."

    invoke-direct/range {v15 .. v16}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 202
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v4    # "cFact":Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;
    .local v5, "certPath":Ljava/security/cert/CertPath;
    .local v12, "result":Ljava/security/cert/PKIXCertPathValidatorResult;
    .restart local v14    # "validator":Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;
    :catch_92
    move-exception v7

    .line 203
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_93
    new-instance v15, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    .line 204
    const-string/jumbo v16, "Certification path could not be constructed from certificate list."

    .line 203
    move-object/from16 v0, v16

    invoke-direct {v15, v0, v7}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v15
    :try_end_9e
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_93 .. :try_end_9e} :catch_9e

    .line 271
    .end local v3    # "builderResult":Ljava/security/cert/CertPathBuilderResult;
    .end local v5    # "certPath":Ljava/security/cert/CertPath;
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v12    # "result":Ljava/security/cert/PKIXCertPathValidatorResult;
    :catch_9e
    move-exception v6

    .line 272
    .local v6, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    .line 274
    .end local v6    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :cond_a3
    if-nez v3, :cond_ac

    .line 276
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 278
    :cond_ac
    return-object v3

    .line 214
    .restart local v3    # "builderResult":Ljava/security/cert/CertPathBuilderResult;
    .local v5, "certPath":Ljava/security/cert/CertPath;
    :catch_ad
    move-exception v7

    .line 215
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_ae
    new-instance v15, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    .line 216
    const-string/jumbo v16, "Certification path could not be validated."

    .line 215
    move-object/from16 v0, v16

    invoke-direct {v15, v0, v7}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v15

    .line 226
    .end local v5    # "certPath":Ljava/security/cert/CertPath;
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_b9
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v13, "stores":Ljava/util/List;
    invoke-virtual/range {p2 .. p2}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCertificateStores()Ljava/util/List;

    move-result-object v15

    invoke-interface {v13, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_c9
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_ae .. :try_end_c9} :catch_9e

    .line 235
    :try_start_c9
    sget-object v15, Lcom/android/org/bouncycastle/asn1/x509/Extension;->issuerAlternativeName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getNamedCertificateStoreMap()Ljava/util/Map;

    move-result-object v16

    .line 234
    invoke-static/range {v15 .. v16}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getAdditionalStoresFromAltNames([BLjava/util/Map;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v13, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_e4
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_c9 .. :try_end_e4} :catch_109
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_c9 .. :try_end_e4} :catch_9e

    .line 243
    :try_start_e4
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V
    :try_end_e9
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_e4 .. :try_end_e9} :catch_9e

    .line 248
    .local v10, "issuers":Ljava/util/Collection;
    :try_start_e9
    invoke-virtual/range {p2 .. p2}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-static {v0, v15, v13}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findIssuerCerts(Ljava/security/cert/X509Certificate;Ljava/util/List;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v10, v15}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_fa
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_e9 .. :try_end_fa} :catch_115

    .line 256
    :try_start_fa
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_121

    .line 258
    new-instance v15, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    .line 259
    const-string/jumbo v16, "No issuer certificate for certificate in certification path found."

    .line 258
    invoke-direct/range {v15 .. v16}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 238
    .end local v10    # "issuers":Ljava/util/Collection;
    :catch_109
    move-exception v8

    .line 239
    .local v8, "e":Ljava/security/cert/CertificateParsingException;
    new-instance v15, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    .line 240
    const-string/jumbo v16, "No additional X.509 stores can be added from certificate locations."

    .line 239
    move-object/from16 v0, v16

    invoke-direct {v15, v0, v8}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v15

    .line 251
    .end local v8    # "e":Ljava/security/cert/CertificateParsingException;
    .restart local v10    # "issuers":Ljava/util/Collection;
    :catch_115
    move-exception v6

    .line 252
    .restart local v6    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v15, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    .line 253
    const-string/jumbo v16, "Cannot find issuer certificate for certificate in certification path."

    .line 252
    move-object/from16 v0, v16

    invoke-direct {v15, v0, v6}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v15

    .line 261
    .end local v6    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :cond_121
    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 263
    .end local v3    # "builderResult":Ljava/security/cert/CertPathBuilderResult;
    .local v11, "it":Ljava/util/Iterator;
    :goto_125
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_a3

    if-nez v3, :cond_a3

    .line 265
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/security/cert/X509Certificate;

    .line 266
    .local v9, "issuer":Ljava/security/cert/X509Certificate;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v9, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->build(Ljava/security/cert/X509Certificate;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;Ljava/util/List;)Ljava/security/cert/CertPathBuilderResult;
    :try_end_13c
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_fa .. :try_end_13c} :catch_9e

    move-result-object v3

    .local v3, "builderResult":Ljava/security/cert/CertPathBuilderResult;
    goto :goto_125
.end method

.method public engineBuild(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;
    .registers 18
    .param p1, "params"    # Ljava/security/cert/CertPathParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathBuilderException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 48
    move-object/from16 v0, p1

    instance-of v13, v0, Ljava/security/cert/PKIXBuilderParameters;

    if-eqz v13, :cond_8d

    .line 50
    new-instance v9, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    move-object/from16 v13, p1

    check-cast v13, Ljava/security/cert/PKIXBuilderParameters;

    invoke-direct {v9, v13}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Ljava/security/cert/PKIXParameters;)V

    .line 53
    .local v9, "paramsPKIXBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    move-object/from16 v0, p1

    instance-of v13, v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;

    if-eqz v13, :cond_83

    move-object/from16 v5, p1

    .line 55
    check-cast v5, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    .line 58
    .local v5, "extPKIX":Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getAdditionalStores()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "it":Ljava/util/Iterator;
    :goto_21
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_31

    .line 60
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/org/bouncycastle/jcajce/PKIXCertStore;

    invoke-virtual {v9, v13}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->addCertificateStore(Lcom/android/org/bouncycastle/jcajce/PKIXCertStore;)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    goto :goto_21

    .line 62
    :cond_31
    new-instance v7, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v13

    invoke-direct {v7, v13}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;-><init>(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)V

    .line 64
    .local v7, "paramsBldrPKIXBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getExcludedCerts()Ljava/util/Set;

    move-result-object v13

    invoke-virtual {v7, v13}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->addExcludedCerts(Ljava/util/Set;)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;

    .line 65
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getMaxPathLength()I

    move-result v13

    invoke-virtual {v7, v13}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->setMaxPathLength(I)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;

    .line 72
    .end local v5    # "extPKIX":Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;
    .end local v6    # "it":Ljava/util/Iterator;
    .end local p1    # "params":Ljava/security/cert/CertPathParameters;
    :goto_48
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->build()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    move-result-object v8

    .line 88
    .end local v7    # "paramsBldrPKIXBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;
    .end local v9    # "paramsPKIXBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .local v8, "paramsPKIX":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    :goto_4c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v2, "certPathList":Ljava/util/List;
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getTargetConstraints()Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v3

    .line 97
    .local v3, "certSelect":Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    :try_start_59
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCertificateStores()Ljava/util/List;

    move-result-object v13

    invoke-static {v3, v13}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v12

    .line 98
    .local v12, "targets":Ljava/util/Collection;
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    move-result-object v13

    invoke-static {v3, v13}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_74
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_59 .. :try_end_74} :catch_d0

    .line 106
    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_da

    .line 109
    new-instance v13, Ljava/security/cert/CertPathBuilderException;

    .line 110
    const-string/jumbo v14, "No certificate found matching targetContraints."

    .line 109
    invoke-direct {v13, v14}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 69
    .end local v2    # "certPathList":Ljava/util/List;
    .end local v3    # "certSelect":Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    .end local v8    # "paramsPKIX":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    .end local v12    # "targets":Ljava/util/Collection;
    .restart local v9    # "paramsPKIXBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .restart local p1    # "params":Ljava/security/cert/CertPathParameters;
    :cond_83
    new-instance v7, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;

    check-cast p1, Ljava/security/cert/PKIXBuilderParameters;

    .end local p1    # "params":Ljava/security/cert/CertPathParameters;
    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;-><init>(Ljava/security/cert/PKIXBuilderParameters;)V

    .restart local v7    # "paramsBldrPKIXBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;
    goto :goto_48

    .line 74
    .end local v7    # "paramsBldrPKIXBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;
    .end local v9    # "paramsPKIXBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .restart local p1    # "params":Ljava/security/cert/CertPathParameters;
    :cond_8d
    move-object/from16 v0, p1

    instance-of v13, v0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    if-eqz v13, :cond_98

    move-object/from16 v8, p1

    .line 76
    check-cast v8, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    .restart local v8    # "paramsPKIX":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    goto :goto_4c

    .line 80
    .end local v8    # "paramsPKIX":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    :cond_98
    new-instance v13, Ljava/security/InvalidAlgorithmParameterException;

    .line 81
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Parameters must be an instance of "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 82
    const-class v15, Ljava/security/cert/PKIXBuilderParameters;

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    .line 81
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 82
    const-string/jumbo v15, " or "

    .line 81
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 83
    const-class v15, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    .line 81
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 83
    const-string/jumbo v15, "."

    .line 81
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 80
    invoke-direct {v13, v14}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 101
    .end local p1    # "params":Ljava/security/cert/CertPathParameters;
    .restart local v2    # "certPathList":Ljava/util/List;
    .restart local v3    # "certSelect":Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    .restart local v8    # "paramsPKIX":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    :catch_d0
    move-exception v4

    .line 102
    .local v4, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v13, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathBuilderException;

    .line 103
    const-string/jumbo v14, "Error finding target certificate."

    .line 102
    invoke-direct {v13, v14, v4}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    .line 113
    .end local v4    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v12    # "targets":Ljava/util/Collection;
    :cond_da
    const/4 v10, 0x0

    .line 116
    .local v10, "result":Ljava/security/cert/CertPathBuilderResult;
    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 117
    .end local v10    # "result":Ljava/security/cert/CertPathBuilderResult;
    .local v11, "targetIter":Ljava/util/Iterator;
    :goto_df
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_f4

    if-nez v10, :cond_f4

    .line 119
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 120
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v8, v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->build(Ljava/security/cert/X509Certificate;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;Ljava/util/List;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v10

    .local v10, "result":Ljava/security/cert/CertPathBuilderResult;
    goto :goto_df

    .line 123
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    .end local v10    # "result":Ljava/security/cert/CertPathBuilderResult;
    :cond_f4
    if-nez v10, :cond_127

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    if-eqz v13, :cond_127

    .line 125
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    instance-of v13, v13, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    if-eqz v13, :cond_11a

    .line 127
    new-instance v13, Ljava/security/cert/CertPathBuilderException;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    invoke-virtual {v15}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    .line 129
    :cond_11a
    new-instance v13, Ljava/security/cert/CertPathBuilderException;

    .line 130
    const-string/jumbo v14, "Possible certificate chain could not be validated."

    .line 131
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    .line 129
    invoke-direct {v13, v14, v15}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    .line 134
    :cond_127
    if-nez v10, :cond_138

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    if-nez v13, :cond_138

    .line 136
    new-instance v13, Ljava/security/cert/CertPathBuilderException;

    .line 137
    const-string/jumbo v14, "Unable to find certificate chain."

    .line 136
    invoke-direct {v13, v14}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 140
    :cond_138
    return-object v10
.end method
