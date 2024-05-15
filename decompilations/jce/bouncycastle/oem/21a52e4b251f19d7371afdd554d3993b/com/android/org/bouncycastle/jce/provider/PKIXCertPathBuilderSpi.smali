.class public Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;
.super Ljava/security/cert/CertPathBuilderSpi;
.source "PKIXCertPathBuilderSpi.java"


# instance fields
.field private blacklist certPathException:Ljava/lang/Exception;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/security/cert/CertPathBuilderSpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist build(Ljava/security/cert/X509Certificate;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;Ljava/util/List;)Ljava/security/cert/CertPathBuilderResult;
    .registers 13
    .param p1, "tbvCert"    # Ljava/security/cert/X509Certificate;
    .param p2, "pkixParams"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    .param p3, "tbvPath"    # Ljava/util/List;

    .line 152
    invoke-interface {p3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 154
    return-object v1

    .line 158
    :cond_8
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getExcludedCerts()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 160
    return-object v1

    .line 163
    :cond_13
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getMaxPathLength()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_27

    .line 165
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getMaxPathLength()I

    move-result v2

    if-le v0, v2, :cond_27

    .line 167
    return-object v1

    .line 171
    :cond_27
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    const/4 v0, 0x0

    .line 179
    .local v0, "builderResult":Ljava/security/cert/CertPathBuilderResult;
    :try_start_2b
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;-><init>()V

    .line 180
    .local v1, "cFact":Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;

    invoke-direct {v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;-><init>()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_35} :catch_101

    .line 186
    .local v2, "validator":Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;
    nop

    .line 191
    :try_start_36
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v3

    .line 192
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v4

    .line 191
    invoke-static {p1, v3, v4}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isIssuerTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Z

    move-result v3
    :try_end_4a
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_36 .. :try_end_4a} :catch_f8

    if-eqz v3, :cond_80

    .line 196
    const/4 v3, 0x0

    .line 197
    .local v3, "certPath":Ljava/security/cert/CertPath;
    const/4 v4, 0x0

    .line 200
    .local v4, "result":Ljava/security/cert/PKIXCertPathValidatorResult;
    :try_start_4e
    invoke-virtual {v1, p3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->engineGenerateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v5
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_52} :catch_77
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_4e .. :try_end_52} :catch_f8

    move-object v3, v5

    .line 207
    nop

    .line 211
    :try_start_54
    invoke-virtual {v2, v3, p2}, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->engineValidate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    move-result-object v5

    check-cast v5, Ljava/security/cert/PKIXCertPathValidatorResult;
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_5a} :catch_6e
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_54 .. :try_end_5a} :catch_f8

    move-object v4, v5

    .line 218
    nop

    .line 220
    :try_start_5c
    new-instance v5, Ljava/security/cert/PKIXCertPathBuilderResult;

    .line 221
    invoke-virtual {v4}, Ljava/security/cert/PKIXCertPathValidatorResult;->getTrustAnchor()Ljava/security/cert/TrustAnchor;

    move-result-object v6

    invoke-virtual {v4}, Ljava/security/cert/PKIXCertPathValidatorResult;->getPolicyTree()Ljava/security/cert/PolicyNode;

    move-result-object v7

    .line 222
    invoke-virtual {v4}, Ljava/security/cert/PKIXCertPathValidatorResult;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v8

    invoke-direct {v5, v3, v6, v7, v8}, Ljava/security/cert/PKIXCertPathBuilderResult;-><init>(Ljava/security/cert/CertPath;Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;)V

    .line 220
    return-object v5

    .line 214
    :catch_6e
    move-exception v5

    .line 216
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Certification path could not be validated."

    invoke-direct {v6, v7, v5}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "builderResult":Ljava/security/cert/CertPathBuilderResult;
    .end local v1    # "cFact":Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;
    .end local v2    # "validator":Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;
    .end local p0    # "this":Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;
    .end local p1    # "tbvCert":Ljava/security/cert/X509Certificate;
    .end local p2    # "pkixParams":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    .end local p3    # "tbvPath":Ljava/util/List;
    throw v6

    .line 202
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v0    # "builderResult":Ljava/security/cert/CertPathBuilderResult;
    .restart local v1    # "cFact":Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;
    .restart local v2    # "validator":Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;
    .restart local p0    # "this":Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;
    .restart local p1    # "tbvCert":Ljava/security/cert/X509Certificate;
    .restart local p2    # "pkixParams":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    .restart local p3    # "tbvPath":Ljava/util/List;
    :catch_77
    move-exception v5

    .line 204
    .restart local v5    # "e":Ljava/lang/Exception;
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Certification path could not be constructed from certificate list."

    invoke-direct {v6, v7, v5}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "builderResult":Ljava/security/cert/CertPathBuilderResult;
    .end local v1    # "cFact":Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;
    .end local v2    # "validator":Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;
    .end local p0    # "this":Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;
    .end local p1    # "tbvCert":Ljava/security/cert/X509Certificate;
    .end local p2    # "pkixParams":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    .end local p3    # "tbvPath":Ljava/util/List;
    throw v6

    .line 227
    .end local v3    # "certPath":Ljava/security/cert/CertPath;
    .end local v4    # "result":Ljava/security/cert/PKIXCertPathValidatorResult;
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v0    # "builderResult":Ljava/security/cert/CertPathBuilderResult;
    .restart local v1    # "cFact":Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;
    .restart local v2    # "validator":Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;
    .restart local p0    # "this":Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;
    .restart local p1    # "tbvCert":Ljava/security/cert/X509Certificate;
    .restart local p2    # "pkixParams":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    .restart local p3    # "tbvPath":Ljava/util/List;
    :cond_80
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v3, "stores":Ljava/util/List;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCertificateStores()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_90
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_5c .. :try_end_90} :catch_f8

    .line 235
    :try_start_90
    sget-object v4, Lcom/android/org/bouncycastle/asn1/x509/Extension;->issuerAlternativeName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 236
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getNamedCertificateStoreMap()Ljava/util/Map;

    move-result-object v5

    .line 235
    invoke-static {v4, v5}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getAdditionalStoresFromAltNames([BLjava/util/Map;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_a9
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_90 .. :try_end_a9} :catch_ef
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_90 .. :try_end_a9} :catch_f8

    .line 243
    nop

    .line 244
    :try_start_aa
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V
    :try_end_af
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_aa .. :try_end_af} :catch_f8

    .line 249
    .local v4, "issuers":Ljava/util/Collection;
    :try_start_af
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    move-result-object v5

    invoke-static {p1, v5, v3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findIssuerCerts(Ljava/security/cert/X509Certificate;Ljava/util/List;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_be
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_af .. :try_end_be} :catch_e6

    .line 256
    nop

    .line 257
    :try_start_bf
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_de

    .line 262
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 264
    .local v5, "it":Ljava/util/Iterator;
    :goto_c9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_dd

    if-nez v0, :cond_dd

    .line 266
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 267
    .local v6, "issuer":Ljava/security/cert/X509Certificate;
    invoke-virtual {p0, v6, p2, p3}, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->build(Ljava/security/cert/X509Certificate;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;Ljava/util/List;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v7

    move-object v0, v7

    .line 268
    .end local v6    # "issuer":Ljava/security/cert/X509Certificate;
    goto :goto_c9

    .line 274
    .end local v3    # "stores":Ljava/util/List;
    .end local v4    # "issuers":Ljava/util/Collection;
    .end local v5    # "it":Ljava/util/Iterator;
    :cond_dd
    goto :goto_fb

    .line 259
    .restart local v3    # "stores":Ljava/util/List;
    .restart local v4    # "issuers":Ljava/util/Collection;
    :cond_de
    new-instance v5, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "No issuer certificate for certificate in certification path found."

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    .end local v0    # "builderResult":Ljava/security/cert/CertPathBuilderResult;
    .end local v1    # "cFact":Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;
    .end local v2    # "validator":Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;
    .end local p0    # "this":Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;
    .end local p1    # "tbvCert":Ljava/security/cert/X509Certificate;
    .end local p2    # "pkixParams":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    .end local p3    # "tbvPath":Ljava/util/List;
    throw v5

    .line 251
    .restart local v0    # "builderResult":Ljava/security/cert/CertPathBuilderResult;
    .restart local v1    # "cFact":Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;
    .restart local v2    # "validator":Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;
    .restart local p0    # "this":Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;
    .restart local p1    # "tbvCert":Ljava/security/cert/X509Certificate;
    .restart local p2    # "pkixParams":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    .restart local p3    # "tbvPath":Ljava/util/List;
    :catch_e6
    move-exception v5

    .line 253
    .local v5, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Cannot find issuer certificate for certificate in certification path."

    invoke-direct {v6, v7, v5}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "builderResult":Ljava/security/cert/CertPathBuilderResult;
    .end local v1    # "cFact":Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;
    .end local v2    # "validator":Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;
    .end local p0    # "this":Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;
    .end local p1    # "tbvCert":Ljava/security/cert/X509Certificate;
    .end local p2    # "pkixParams":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    .end local p3    # "tbvPath":Ljava/util/List;
    throw v6

    .line 238
    .end local v4    # "issuers":Ljava/util/Collection;
    .end local v5    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v0    # "builderResult":Ljava/security/cert/CertPathBuilderResult;
    .restart local v1    # "cFact":Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;
    .restart local v2    # "validator":Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;
    .restart local p0    # "this":Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;
    .restart local p1    # "tbvCert":Ljava/security/cert/X509Certificate;
    .restart local p2    # "pkixParams":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    .restart local p3    # "tbvPath":Ljava/util/List;
    :catch_ef
    move-exception v4

    .line 240
    .local v4, "e":Ljava/security/cert/CertificateParsingException;
    new-instance v5, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "No additional X.509 stores can be added from certificate locations."

    invoke-direct {v5, v6, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "builderResult":Ljava/security/cert/CertPathBuilderResult;
    .end local v1    # "cFact":Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;
    .end local v2    # "validator":Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;
    .end local p0    # "this":Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;
    .end local p1    # "tbvCert":Ljava/security/cert/X509Certificate;
    .end local p2    # "pkixParams":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    .end local p3    # "tbvPath":Ljava/util/List;
    throw v5
    :try_end_f8
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_bf .. :try_end_f8} :catch_f8

    .line 271
    .end local v3    # "stores":Ljava/util/List;
    .end local v4    # "e":Ljava/security/cert/CertificateParsingException;
    .restart local v0    # "builderResult":Ljava/security/cert/CertPathBuilderResult;
    .restart local v1    # "cFact":Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;
    .restart local v2    # "validator":Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;
    .restart local p0    # "this":Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;
    .restart local p1    # "tbvCert":Ljava/security/cert/X509Certificate;
    .restart local p2    # "pkixParams":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    .restart local p3    # "tbvPath":Ljava/util/List;
    :catch_f8
    move-exception v3

    .line 273
    .local v3, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    iput-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    .line 275
    .end local v3    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :goto_fb
    if-nez v0, :cond_100

    .line 277
    invoke-interface {p3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 279
    :cond_100
    return-object v0

    .line 182
    .end local v1    # "cFact":Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;
    .end local v2    # "validator":Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;
    :catch_101
    move-exception v1

    .line 185
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Exception creating support classes."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist core-platform-api test-api engineBuild(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;
    .registers 11
    .param p1, "params"    # Ljava/security/cert/CertPathParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathBuilderException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 50
    instance-of v0, p1, Ljava/security/cert/PKIXBuilderParameters;

    if-eqz v0, :cond_51

    .line 52
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    move-object v1, p1

    check-cast v1, Ljava/security/cert/PKIXBuilderParameters;

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Ljava/security/cert/PKIXParameters;)V

    .line 55
    .local v0, "paramsPKIXBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    instance-of v1, p1, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;

    if-eqz v1, :cond_43

    .line 57
    move-object v1, p1

    check-cast v1, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    .line 59
    .local v1, "extPKIX":Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getAdditionalStores()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 61
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/jcajce/PKIXCertStore;

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->addCertificateStore(Lcom/android/org/bouncycastle/jcajce/PKIXCertStore;)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    goto :goto_1b

    .line 63
    .end local v2    # "it":Ljava/util/Iterator;
    :cond_2b
    new-instance v2, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;-><init>(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)V

    .line 65
    .local v2, "paramsBldrPKIXBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getExcludedCerts()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->addExcludedCerts(Ljava/util/Set;)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;

    .line 66
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getMaxPathLength()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->setMaxPathLength(I)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;

    .line 67
    .end local v1    # "extPKIX":Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;
    goto :goto_4c

    .line 70
    .end local v2    # "paramsBldrPKIXBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;
    :cond_43
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;

    move-object v2, p1

    check-cast v2, Ljava/security/cert/PKIXBuilderParameters;

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;-><init>(Ljava/security/cert/PKIXBuilderParameters;)V

    move-object v2, v1

    .line 73
    .restart local v2    # "paramsBldrPKIXBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;
    :goto_4c
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->build()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    move-result-object v0

    .line 74
    .end local v2    # "paramsBldrPKIXBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;
    .local v0, "paramsPKIX":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    goto :goto_58

    .line 75
    .end local v0    # "paramsPKIX":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    :cond_51
    instance-of v0, p1, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    if-eqz v0, :cond_e6

    .line 77
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    .line 89
    .restart local v0    # "paramsPKIX":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    :goto_58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v1, "certPathList":Ljava/util/List;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getTargetConstraints()Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v2

    .line 98
    .local v2, "certSelect":Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    :try_start_65
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCertificateStores()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v3

    .line 99
    .local v3, "targets":Ljava/util/Collection;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_80
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_65 .. :try_end_80} :catch_dd

    .line 105
    nop

    .line 107
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_d5

    .line 114
    const/4 v4, 0x0

    .line 117
    .local v4, "result":Ljava/security/cert/CertPathBuilderResult;
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 118
    .local v5, "targetIter":Ljava/util/Iterator;
    :goto_8c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9f

    if-nez v4, :cond_9f

    .line 120
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 121
    .local v6, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {p0, v6, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->build(Ljava/security/cert/X509Certificate;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;Ljava/util/List;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v4

    goto :goto_8c

    .line 124
    .end local v6    # "cert":Ljava/security/cert/X509Certificate;
    :cond_9f
    if-nez v4, :cond_c5

    iget-object v6, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    if-eqz v6, :cond_c5

    .line 126
    instance-of v6, v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    if-eqz v6, :cond_bb

    .line 128
    new-instance v6, Ljava/security/cert/CertPathBuilderException;

    iget-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    invoke-virtual {v8}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 130
    :cond_bb
    new-instance v6, Ljava/security/cert/CertPathBuilderException;

    iget-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    const-string v8, "Possible certificate chain could not be validated."

    invoke-direct {v6, v8, v7}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 135
    :cond_c5
    if-nez v4, :cond_d4

    iget-object v6, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    if-eqz v6, :cond_cc

    goto :goto_d4

    .line 137
    :cond_cc
    new-instance v6, Ljava/security/cert/CertPathBuilderException;

    const-string v7, "Unable to find certificate chain."

    invoke-direct {v6, v7}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 141
    :cond_d4
    :goto_d4
    return-object v4

    .line 110
    .end local v4    # "result":Ljava/security/cert/CertPathBuilderResult;
    .end local v5    # "targetIter":Ljava/util/Iterator;
    :cond_d5
    new-instance v4, Ljava/security/cert/CertPathBuilderException;

    const-string v5, "No certificate found matching targetContraints."

    invoke-direct {v4, v5}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 101
    .end local v3    # "targets":Ljava/util/Collection;
    :catch_dd
    move-exception v3

    .line 103
    .local v3, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathBuilderException;

    const-string v5, "Error finding target certificate."

    invoke-direct {v4, v5, v3}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 81
    .end local v0    # "paramsPKIX":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    .end local v1    # "certPathList":Ljava/util/List;
    .end local v2    # "certSelect":Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    .end local v3    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :cond_e6
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parameters must be an instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Ljava/security/cert/PKIXBuilderParameters;

    .line 83
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    .line 84
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
