.class public final Lsun/security/provider/certpath/PKIXCertPathValidator;
.super Ljava/security/cert/CertPathValidatorSpi;
.source "PKIXCertPathValidator.java"


# static fields
.field private static final debug:Lsun/security/util/Debug;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    const-string/jumbo v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/PKIXCertPathValidator;->debug:Lsun/security/util/Debug;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/security/cert/CertPathValidatorSpi;-><init>()V

    return-void
.end method

.method private static validate(Ljava/security/cert/TrustAnchor;Lsun/security/provider/certpath/PKIX$ValidatorParams;)Ljava/security/cert/PKIXCertPathValidatorResult;
    .registers 20
    .param p0, "anchor"    # Ljava/security/cert/TrustAnchor;
    .param p1, "params"    # Lsun/security/provider/certpath/PKIX$ValidatorParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-virtual/range {p1 .. p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certificates()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v13

    .line 174
    .local v13, "certPathLen":I
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v12, "certPathCheckers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    new-instance v4, Lsun/security/provider/certpath/AlgorithmChecker;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lsun/security/provider/certpath/AlgorithmChecker;-><init>(Ljava/security/cert/TrustAnchor;)V

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    new-instance v4, Lsun/security/provider/certpath/KeyChecker;

    .line 180
    invoke-virtual/range {p1 .. p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->targetCertConstraints()Ljava/security/cert/CertSelector;

    move-result-object v5

    .line 179
    invoke-direct {v4, v13, v5}, Lsun/security/provider/certpath/KeyChecker;-><init>(ILjava/security/cert/CertSelector;)V

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    new-instance v4, Lsun/security/provider/certpath/ConstraintsChecker;

    invoke-direct {v4, v13}, Lsun/security/provider/certpath/ConstraintsChecker;-><init>(I)V

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    new-instance v2, Lsun/security/provider/certpath/PolicyNodeImpl;

    const-string/jumbo v4, "2.5.29.32.0"

    .line 184
    const-string/jumbo v5, "2.5.29.32.0"

    invoke-static {v5}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v7

    .line 183
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 185
    const/4 v8, 0x0

    .line 183
    invoke-direct/range {v2 .. v8}, Lsun/security/provider/certpath/PolicyNodeImpl;-><init>(Lsun/security/provider/certpath/PolicyNodeImpl;Ljava/lang/String;Ljava/util/Set;ZLjava/util/Set;Z)V

    .line 186
    .local v2, "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    new-instance v3, Lsun/security/provider/certpath/PolicyChecker;

    invoke-virtual/range {p1 .. p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->initialPolicies()Ljava/util/Set;

    move-result-object v4

    .line 188
    invoke-virtual/range {p1 .. p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->explicitPolicyRequired()Z

    move-result v6

    .line 189
    invoke-virtual/range {p1 .. p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->policyMappingInhibited()Z

    move-result v7

    .line 190
    invoke-virtual/range {p1 .. p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->anyPolicyInhibited()Z

    move-result v8

    .line 191
    invoke-virtual/range {p1 .. p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->policyQualifiersRejected()Z

    move-result v9

    move v5, v13

    move-object v10, v2

    .line 186
    invoke-direct/range {v3 .. v10}, Lsun/security/provider/certpath/PolicyChecker;-><init>(Ljava/util/Set;IZZZZLsun/security/provider/certpath/PolicyNodeImpl;)V

    .line 193
    .local v3, "pc":Lsun/security/provider/certpath/PolicyChecker;
    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    new-instance v11, Lsun/security/provider/certpath/BasicChecker;

    invoke-virtual/range {p1 .. p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->date()Ljava/util/Date;

    move-result-object v4

    .line 196
    invoke-virtual/range {p1 .. p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->sigProvider()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 195
    move-object/from16 v0, p0

    invoke-direct {v11, v0, v4, v5, v6}, Lsun/security/provider/certpath/BasicChecker;-><init>(Ljava/security/cert/TrustAnchor;Ljava/util/Date;Ljava/lang/String;Z)V

    .line 197
    .local v11, "bc":Lsun/security/provider/certpath/BasicChecker;
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    const/16 v17, 0x0

    .line 200
    .local v17, "revCheckerAdded":Z
    invoke-virtual/range {p1 .. p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certPathCheckers()Ljava/util/List;

    move-result-object v16

    .line 201
    .local v16, "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "checker$iterator":Ljava/util/Iterator;
    :cond_79
    :goto_79
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/security/cert/PKIXCertPathChecker;

    .line 202
    .local v14, "checker":Ljava/security/cert/PKIXCertPathChecker;
    instance-of v4, v14, Ljava/security/cert/PKIXRevocationChecker;

    if-eqz v4, :cond_79

    .line 203
    if-eqz v17, :cond_94

    .line 204
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    .line 205
    const-string/jumbo v5, "Only one PKIXRevocationChecker can be specified"

    .line 204
    invoke-direct {v4, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 207
    :cond_94
    const/16 v17, 0x1

    .line 209
    instance-of v4, v14, Lsun/security/provider/certpath/RevocationChecker;

    if-eqz v4, :cond_79

    .line 210
    check-cast v14, Lsun/security/provider/certpath/RevocationChecker;

    .end local v14    # "checker":Ljava/security/cert/PKIXCertPathChecker;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v14, v0, v1}, Lsun/security/provider/certpath/RevocationChecker;->init(Ljava/security/cert/TrustAnchor;Lsun/security/provider/certpath/PKIX$ValidatorParams;)V

    goto :goto_79

    .line 216
    :cond_a4
    invoke-virtual/range {p1 .. p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->revocationEnabled()Z

    move-result v4

    if-eqz v4, :cond_ba

    xor-int/lit8 v4, v17, 0x1

    if-eqz v4, :cond_ba

    .line 217
    new-instance v4, Lsun/security/provider/certpath/RevocationChecker;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1}, Lsun/security/provider/certpath/RevocationChecker;-><init>(Ljava/security/cert/TrustAnchor;Lsun/security/provider/certpath/PKIX$ValidatorParams;)V

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    :cond_ba
    move-object/from16 v0, v16

    invoke-interface {v12, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 222
    invoke-virtual/range {p1 .. p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certPath()Ljava/security/cert/CertPath;

    move-result-object v4

    .line 223
    invoke-virtual/range {p1 .. p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certificates()Ljava/util/List;

    move-result-object v5

    .line 222
    invoke-static {v4, v5, v12}, Lsun/security/provider/certpath/PKIXMasterCertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/util/List;Ljava/util/List;)V

    .line 226
    new-instance v4, Ljava/security/cert/PKIXCertPathValidatorResult;

    invoke-virtual {v3}, Lsun/security/provider/certpath/PolicyChecker;->getPolicyTree()Ljava/security/cert/PolicyNode;

    move-result-object v5

    .line 227
    invoke-virtual {v11}, Lsun/security/provider/certpath/BasicChecker;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    .line 226
    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v6}, Ljava/security/cert/PKIXCertPathValidatorResult;-><init>(Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;)V

    return-object v4
.end method

.method private static validate(Lsun/security/provider/certpath/PKIX$ValidatorParams;)Ljava/security/cert/PKIXCertPathValidatorResult;
    .registers 18
    .param p0, "params"    # Lsun/security/provider/certpath/PKIX$ValidatorParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 85
    sget-object v1, Lsun/security/provider/certpath/PKIXCertPathValidator;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_c

    .line 86
    sget-object v1, Lsun/security/provider/certpath/PKIXCertPathValidator;->debug:Lsun/security/util/Debug;

    const-string/jumbo v2, "PKIXCertPathValidator.engineValidate()..."

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 90
    :cond_c
    const/4 v15, 0x0

    .line 91
    .local v15, "selector":Lsun/security/provider/certpath/AdaptableX509CertSelector;
    invoke-virtual/range {p0 .. p0}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certificates()Ljava/util/List;

    move-result-object v9

    .line 92
    .local v9, "certList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_35

    .line 93
    new-instance v15, Lsun/security/provider/certpath/AdaptableX509CertSelector;

    .end local v15    # "selector":Lsun/security/provider/certpath/AdaptableX509CertSelector;
    invoke-direct {v15}, Lsun/security/provider/certpath/AdaptableX509CertSelector;-><init>()V

    .line 94
    .local v15, "selector":Lsun/security/provider/certpath/AdaptableX509CertSelector;
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/security/cert/X509Certificate;

    .line 96
    .local v12, "firstCert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v12}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v15, v1}, Lsun/security/provider/certpath/AdaptableX509CertSelector;->setSubject(Ljavax/security/auth/x500/X500Principal;)V

    .line 102
    :try_start_2a
    invoke-static {v12}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object v13

    .line 104
    .local v13, "firstCertImpl":Lsun/security/x509/X509CertImpl;
    invoke-virtual {v13}, Lsun/security/x509/X509CertImpl;->getAuthorityKeyIdentifierExtension()Lsun/security/x509/AuthorityKeyIdentifierExtension;

    move-result-object v1

    .line 103
    invoke-virtual {v15, v1}, Lsun/security/provider/certpath/AdaptableX509CertSelector;->setSkiAndSerialNumber(Lsun/security/x509/AuthorityKeyIdentifierExtension;)V
    :try_end_35
    .catch Ljava/security/cert/CertificateException; {:try_start_2a .. :try_end_35} :catch_b8
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_35} :catch_b8

    .line 110
    .end local v12    # "firstCert":Ljava/security/cert/X509Certificate;
    .end local v13    # "firstCertImpl":Lsun/security/x509/X509CertImpl;
    .end local v15    # "selector":Lsun/security/provider/certpath/AdaptableX509CertSelector;
    :cond_35
    :goto_35
    const/4 v14, 0x0

    .line 114
    .local v14, "lastException":Ljava/security/cert/CertPathValidatorException;
    invoke-virtual/range {p0 .. p0}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->trustAnchors()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .end local v14    # "lastException":Ljava/security/cert/CertPathValidatorException;
    .local v8, "anchor$iterator":Ljava/util/Iterator;
    :cond_3e
    :goto_3e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/cert/TrustAnchor;

    .line 115
    .local v7, "anchor":Ljava/security/cert/TrustAnchor;
    invoke-virtual {v7}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v16

    .line 116
    .local v16, "trustedCert":Ljava/security/cert/X509Certificate;
    if-eqz v16, :cond_97

    .line 119
    if-eqz v15, :cond_67

    invoke-virtual/range {v15 .. v16}, Lsun/security/provider/certpath/AdaptableX509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_67

    .line 120
    sget-object v1, Lsun/security/provider/certpath/PKIXCertPathValidator;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_3e

    .line 121
    sget-object v1, Lsun/security/provider/certpath/PKIXCertPathValidator;->debug:Lsun/security/util/Debug;

    const-string/jumbo v2, "NO - don\'t try this trustedCert"

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_3e

    .line 126
    :cond_67
    sget-object v1, Lsun/security/provider/certpath/PKIXCertPathValidator;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_90

    .line 127
    sget-object v1, Lsun/security/provider/certpath/PKIXCertPathValidator;->debug:Lsun/security/util/Debug;

    const-string/jumbo v2, "YES - try this trustedCert"

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 128
    sget-object v1, Lsun/security/provider/certpath/PKIXCertPathValidator;->debug:Lsun/security/util/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "anchor.getTrustedCert().getSubjectX500Principal() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 130
    invoke-virtual/range {v16 .. v16}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    .line 128
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 140
    :cond_90
    :goto_90
    :try_start_90
    move-object/from16 v0, p0

    invoke-static {v7, v0}, Lsun/security/provider/certpath/PKIXCertPathValidator;->validate(Ljava/security/cert/TrustAnchor;Lsun/security/provider/certpath/PKIX$ValidatorParams;)Ljava/security/cert/PKIXCertPathValidatorResult;
    :try_end_95
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_90 .. :try_end_95} :catch_a4

    move-result-object v1

    return-object v1

    .line 133
    :cond_97
    sget-object v1, Lsun/security/provider/certpath/PKIXCertPathValidator;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_90

    .line 134
    sget-object v1, Lsun/security/provider/certpath/PKIXCertPathValidator;->debug:Lsun/security/util/Debug;

    const-string/jumbo v2, "PKIXCertPathValidator.engineValidate(): anchor.getTrustedCert() == null"

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_90

    .line 141
    :catch_a4
    move-exception v10

    .line 143
    .local v10, "cpe":Ljava/security/cert/CertPathValidatorException;
    move-object v14, v10

    .local v14, "lastException":Ljava/security/cert/CertPathValidatorException;
    goto :goto_3e

    .line 149
    .end local v7    # "anchor":Ljava/security/cert/TrustAnchor;
    .end local v10    # "cpe":Ljava/security/cert/CertPathValidatorException;
    .end local v14    # "lastException":Ljava/security/cert/CertPathValidatorException;
    .end local v16    # "trustedCert":Ljava/security/cert/X509Certificate;
    :cond_a7
    if-eqz v14, :cond_aa

    .line 150
    throw v14

    .line 153
    :cond_aa
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    .line 154
    const-string/jumbo v2, "Path does not chain with any of the trust anchors"

    .line 155
    sget-object v6, Ljava/security/cert/PKIXReason;->NO_TRUST_ANCHOR:Ljava/security/cert/PKIXReason;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 153
    invoke-direct/range {v1 .. v6}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v1

    .line 105
    .end local v8    # "anchor$iterator":Ljava/util/Iterator;
    .restart local v12    # "firstCert":Ljava/security/cert/X509Certificate;
    .restart local v15    # "selector":Lsun/security/provider/certpath/AdaptableX509CertSelector;
    :catch_b8
    move-exception v11

    .local v11, "e":Ljava/lang/Exception;
    goto/16 :goto_35
.end method


# virtual methods
.method public engineGetRevocationChecker()Ljava/security/cert/CertPathChecker;
    .registers 2

    .prologue
    .line 57
    new-instance v0, Lsun/security/provider/certpath/RevocationChecker;

    invoke-direct {v0}, Lsun/security/provider/certpath/RevocationChecker;-><init>()V

    return-object v0
.end method

.method public engineValidate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    .registers 5
    .param p1, "cp"    # Ljava/security/cert/CertPath;
    .param p2, "params"    # Ljava/security/cert/CertPathParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-static {p1, p2}, Lsun/security/provider/certpath/PKIX;->checkParams(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Lsun/security/provider/certpath/PKIX$ValidatorParams;

    move-result-object v0

    .line 79
    .local v0, "valParams":Lsun/security/provider/certpath/PKIX$ValidatorParams;
    invoke-static {v0}, Lsun/security/provider/certpath/PKIXCertPathValidator;->validate(Lsun/security/provider/certpath/PKIX$ValidatorParams;)Ljava/security/cert/PKIXCertPathValidatorResult;

    move-result-object v1

    return-object v1
.end method
