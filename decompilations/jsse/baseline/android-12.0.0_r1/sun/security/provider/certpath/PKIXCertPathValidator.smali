.class public final Lsun/security/provider/certpath/PKIXCertPathValidator;
.super Ljava/security/cert/CertPathValidatorSpi;
.source "PKIXCertPathValidator.java"


# static fields
.field private static final blacklist debug:Lsun/security/util/Debug;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 48
    const-string v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/PKIXCertPathValidator;->debug:Lsun/security/util/Debug;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/security/cert/CertPathValidatorSpi;-><init>()V

    return-void
.end method

.method private static blacklist validate(Ljava/security/cert/TrustAnchor;Lsun/security/provider/certpath/PKIX$ValidatorParams;)Ljava/security/cert/PKIXCertPathValidatorResult;
    .registers 13
    .param p0, "anchor"    # Ljava/security/cert/TrustAnchor;
    .param p1, "params"    # Lsun/security/provider/certpath/PKIX$ValidatorParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 171
    invoke-virtual {p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certificates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 174
    .local v0, "certPathLen":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v1

    .line 178
    .local v9, "certPathCheckers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    new-instance v1, Lsun/security/provider/certpath/AlgorithmChecker;

    invoke-direct {v1, p0}, Lsun/security/provider/certpath/AlgorithmChecker;-><init>(Ljava/security/cert/TrustAnchor;)V

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    new-instance v1, Lsun/security/provider/certpath/KeyChecker;

    .line 180
    invoke-virtual {p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->targetCertConstraints()Ljava/security/cert/CertSelector;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lsun/security/provider/certpath/KeyChecker;-><init>(ILjava/security/cert/CertSelector;)V

    .line 179
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    new-instance v1, Lsun/security/provider/certpath/ConstraintsChecker;

    invoke-direct {v1, v0}, Lsun/security/provider/certpath/ConstraintsChecker;-><init>(I)V

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v1, Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 184
    const-string v2, "2.5.29.32.0"

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v7

    const/4 v3, 0x0

    const-string v4, "2.5.29.32.0"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lsun/security/provider/certpath/PolicyNodeImpl;-><init>(Lsun/security/provider/certpath/PolicyNodeImpl;Ljava/lang/String;Ljava/util/Set;ZLjava/util/Set;Z)V

    move-object v8, v1

    .line 186
    .local v8, "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    new-instance v10, Lsun/security/provider/certpath/PolicyChecker;

    invoke-virtual {p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->initialPolicies()Ljava/util/Set;

    move-result-object v2

    .line 188
    invoke-virtual {p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->explicitPolicyRequired()Z

    move-result v4

    .line 189
    invoke-virtual {p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->policyMappingInhibited()Z

    move-result v5

    .line 190
    invoke-virtual {p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->anyPolicyInhibited()Z

    move-result v6

    .line 191
    invoke-virtual {p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->policyQualifiersRejected()Z

    move-result v7

    move-object v1, v10

    move v3, v0

    invoke-direct/range {v1 .. v8}, Lsun/security/provider/certpath/PolicyChecker;-><init>(Ljava/util/Set;IZZZZLsun/security/provider/certpath/PolicyNodeImpl;)V

    .line 193
    .local v1, "pc":Lsun/security/provider/certpath/PolicyChecker;
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    new-instance v2, Lsun/security/provider/certpath/BasicChecker;

    invoke-virtual {p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->date()Ljava/util/Date;

    move-result-object v3

    .line 196
    invoke-virtual {p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->sigProvider()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, p0, v3, v4, v5}, Lsun/security/provider/certpath/BasicChecker;-><init>(Ljava/security/cert/TrustAnchor;Ljava/util/Date;Ljava/lang/String;Z)V

    .line 197
    .local v2, "bc":Lsun/security/provider/certpath/BasicChecker;
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    const/4 v3, 0x0

    .line 200
    .local v3, "revCheckerAdded":Z
    invoke-virtual {p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certPathCheckers()Ljava/util/List;

    move-result-object v4

    .line 201
    .local v4, "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_75
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/PKIXCertPathChecker;

    .line 202
    .local v6, "checker":Ljava/security/cert/PKIXCertPathChecker;
    instance-of v7, v6, Ljava/security/cert/PKIXRevocationChecker;

    if-eqz v7, :cond_9b

    .line 203
    if-nez v3, :cond_93

    .line 207
    const/4 v3, 0x1

    .line 209
    instance-of v7, v6, Lsun/security/provider/certpath/RevocationChecker;

    if-eqz v7, :cond_9b

    .line 210
    move-object v7, v6

    check-cast v7, Lsun/security/provider/certpath/RevocationChecker;

    invoke-virtual {v7, p0, p1}, Lsun/security/provider/certpath/RevocationChecker;->init(Ljava/security/cert/TrustAnchor;Lsun/security/provider/certpath/PKIX$ValidatorParams;)V

    goto :goto_9b

    .line 204
    :cond_93
    new-instance v5, Ljava/security/cert/CertPathValidatorException;

    const-string v7, "Only one PKIXRevocationChecker can be specified"

    invoke-direct {v5, v7}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 213
    .end local v6    # "checker":Ljava/security/cert/PKIXCertPathChecker;
    :cond_9b
    :goto_9b
    goto :goto_75

    .line 216
    :cond_9c
    invoke-virtual {p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->revocationEnabled()Z

    move-result v5

    if-eqz v5, :cond_ac

    if-nez v3, :cond_ac

    .line 217
    new-instance v5, Lsun/security/provider/certpath/RevocationChecker;

    invoke-direct {v5, p0, p1}, Lsun/security/provider/certpath/RevocationChecker;-><init>(Ljava/security/cert/TrustAnchor;Lsun/security/provider/certpath/PKIX$ValidatorParams;)V

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    :cond_ac
    invoke-interface {v9, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 222
    invoke-virtual {p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certPath()Ljava/security/cert/CertPath;

    move-result-object v5

    .line 223
    invoke-virtual {p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certificates()Ljava/util/List;

    move-result-object v6

    .line 222
    invoke-static {v5, v6, v9}, Lsun/security/provider/certpath/PKIXMasterCertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/util/List;Ljava/util/List;)V

    .line 226
    new-instance v5, Ljava/security/cert/PKIXCertPathValidatorResult;

    invoke-virtual {v1}, Lsun/security/provider/certpath/PolicyChecker;->getPolicyTree()Ljava/security/cert/PolicyNode;

    move-result-object v6

    .line 227
    invoke-virtual {v2}, Lsun/security/provider/certpath/BasicChecker;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    invoke-direct {v5, p0, v6, v7}, Ljava/security/cert/PKIXCertPathValidatorResult;-><init>(Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;)V

    .line 226
    return-object v5
.end method

.method private static blacklist validate(Lsun/security/provider/certpath/PKIX$ValidatorParams;)Ljava/security/cert/PKIXCertPathValidatorResult;
    .registers 11
    .param p0, "params"    # Lsun/security/provider/certpath/PKIX$ValidatorParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 85
    sget-object v0, Lsun/security/provider/certpath/PKIXCertPathValidator;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_9

    .line 86
    const-string v1, "PKIXCertPathValidator.engineValidate()..."

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 90
    :cond_9
    const/4 v0, 0x0

    .line 91
    .local v0, "selector":Lsun/security/provider/certpath/AdaptableX509CertSelector;
    invoke-virtual {p0}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certificates()Ljava/util/List;

    move-result-object v1

    .line 92
    .local v1, "certList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_36

    .line 93
    new-instance v2, Lsun/security/provider/certpath/AdaptableX509CertSelector;

    invoke-direct {v2}, Lsun/security/provider/certpath/AdaptableX509CertSelector;-><init>()V

    move-object v0, v2

    .line 94
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 96
    .local v2, "firstCert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v0, v3}, Lsun/security/provider/certpath/AdaptableX509CertSelector;->setSubject(Ljavax/security/auth/x500/X500Principal;)V

    .line 102
    :try_start_28
    invoke-static {v2}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object v3

    .line 103
    .local v3, "firstCertImpl":Lsun/security/x509/X509CertImpl;
    nop

    .line 104
    invoke-virtual {v3}, Lsun/security/x509/X509CertImpl;->getAuthorityKeyIdentifierExtension()Lsun/security/x509/AuthorityKeyIdentifierExtension;

    move-result-object v4

    .line 103
    invoke-virtual {v0, v4}, Lsun/security/provider/certpath/AdaptableX509CertSelector;->setSkiAndSerialNumber(Lsun/security/x509/AuthorityKeyIdentifierExtension;)V
    :try_end_34
    .catch Ljava/security/cert/CertificateException; {:try_start_28 .. :try_end_34} :catch_35
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_34} :catch_35

    .line 107
    .end local v3    # "firstCertImpl":Lsun/security/x509/X509CertImpl;
    goto :goto_36

    .line 105
    :catch_35
    move-exception v3

    .line 110
    .end local v2    # "firstCert":Ljava/security/cert/X509Certificate;
    :cond_36
    :goto_36
    const/4 v2, 0x0

    .line 114
    .local v2, "lastException":Ljava/security/cert/CertPathValidatorException;
    invoke-virtual {p0}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->trustAnchors()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3f
    :goto_3f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_96

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/TrustAnchor;

    .line 115
    .local v4, "anchor":Ljava/security/cert/TrustAnchor;
    invoke-virtual {v4}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v5

    .line 116
    .local v5, "trustedCert":Ljava/security/cert/X509Certificate;
    if-eqz v5, :cond_85

    .line 119
    if-eqz v0, :cond_63

    invoke-virtual {v0, v5}, Lsun/security/provider/certpath/AdaptableX509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v6

    if-nez v6, :cond_63

    .line 120
    sget-object v6, Lsun/security/provider/certpath/PKIXCertPathValidator;->debug:Lsun/security/util/Debug;

    if-eqz v6, :cond_3f

    .line 121
    const-string v7, "NO - don\'t try this trustedCert"

    invoke-virtual {v6, v7}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_3f

    .line 126
    :cond_63
    sget-object v6, Lsun/security/provider/certpath/PKIXCertPathValidator;->debug:Lsun/security/util/Debug;

    if-eqz v6, :cond_8e

    .line 127
    const-string v7, "YES - try this trustedCert"

    invoke-virtual {v6, v7}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 128
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "anchor.getTrustedCert().getSubjectX500Principal() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 128
    invoke-virtual {v6, v7}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_8e

    .line 133
    :cond_85
    sget-object v6, Lsun/security/provider/certpath/PKIXCertPathValidator;->debug:Lsun/security/util/Debug;

    if-eqz v6, :cond_8e

    .line 134
    const-string v7, "PKIXCertPathValidator.engineValidate(): anchor.getTrustedCert() == null"

    invoke-virtual {v6, v7}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 140
    :cond_8e
    :goto_8e
    :try_start_8e
    invoke-static {v4, p0}, Lsun/security/provider/certpath/PKIXCertPathValidator;->validate(Ljava/security/cert/TrustAnchor;Lsun/security/provider/certpath/PKIX$ValidatorParams;)Ljava/security/cert/PKIXCertPathValidatorResult;

    move-result-object v3
    :try_end_92
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_8e .. :try_end_92} :catch_93

    return-object v3

    .line 141
    :catch_93
    move-exception v6

    .line 143
    .local v6, "cpe":Ljava/security/cert/CertPathValidatorException;
    move-object v2, v6

    .line 145
    .end local v4    # "anchor":Ljava/security/cert/TrustAnchor;
    .end local v5    # "trustedCert":Ljava/security/cert/X509Certificate;
    .end local v6    # "cpe":Ljava/security/cert/CertPathValidatorException;
    goto :goto_3f

    .line 149
    :cond_96
    if-eqz v2, :cond_99

    .line 150
    throw v2

    .line 153
    :cond_99
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    sget-object v9, Ljava/security/cert/PKIXReason;->NO_TRUST_ANCHOR:Ljava/security/cert/PKIXReason;

    const-string v5, "Path does not chain with any of the trust anchors"

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v3
.end method


# virtual methods
.method public whitelist test-api engineGetRevocationChecker()Ljava/security/cert/CertPathChecker;
    .registers 2

    .line 57
    new-instance v0, Lsun/security/provider/certpath/RevocationChecker;

    invoke-direct {v0}, Lsun/security/provider/certpath/RevocationChecker;-><init>()V

    return-object v0
.end method

.method public whitelist test-api engineValidate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    .registers 5
    .param p1, "cp"    # Ljava/security/cert/CertPath;
    .param p2, "params"    # Ljava/security/cert/CertPathParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 78
    invoke-static {p1, p2}, Lsun/security/provider/certpath/PKIX;->checkParams(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Lsun/security/provider/certpath/PKIX$ValidatorParams;

    move-result-object v0

    .line 79
    .local v0, "valParams":Lsun/security/provider/certpath/PKIX$ValidatorParams;
    invoke-static {v0}, Lsun/security/provider/certpath/PKIXCertPathValidator;->validate(Lsun/security/provider/certpath/PKIX$ValidatorParams;)Ljava/security/cert/PKIXCertPathValidatorResult;

    move-result-object v1

    return-object v1
.end method
