.class Lsun/security/provider/certpath/ForwardBuilder;
.super Lsun/security/provider/certpath/Builder;
.source "ForwardBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/provider/certpath/ForwardBuilder$PKIXCertComparator;
    }
.end annotation


# static fields
.field private static final debug:Lsun/security/util/Debug;


# instance fields
.field private caSelector:Lsun/security/provider/certpath/AdaptableX509CertSelector;

.field private caTargetSelector:Ljava/security/cert/X509CertSelector;

.field private eeSelector:Ljava/security/cert/X509CertSelector;

.field private searchAllCertStores:Z

.field trustAnchor:Ljava/security/cert/TrustAnchor;

.field private final trustAnchors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation
.end field

.field private final trustedCerts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final trustedSubjectDNs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Lsun/security/util/Debug;
    .registers 1

    sget-object v0, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 65
    const-string/jumbo v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    .line 63
    return-void
.end method

.method constructor <init>(Lsun/security/provider/certpath/PKIX$BuilderParams;Z)V
    .registers 8
    .param p1, "buildParams"    # Lsun/security/provider/certpath/PKIX$BuilderParams;
    .param p2, "searchAllCertStores"    # Z

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lsun/security/provider/certpath/Builder;-><init>(Lsun/security/provider/certpath/PKIX$BuilderParams;)V

    .line 73
    const/4 v3, 0x1

    iput-boolean v3, p0, Lsun/security/provider/certpath/ForwardBuilder;->searchAllCertStores:Z

    .line 84
    invoke-virtual {p1}, Lsun/security/provider/certpath/PKIX$BuilderParams;->trustAnchors()Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchors:Ljava/util/Set;

    .line 85
    new-instance v3, Ljava/util/HashSet;

    iget-object v4, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchors:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    iput-object v3, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustedCerts:Ljava/util/Set;

    .line 86
    new-instance v3, Ljava/util/HashSet;

    iget-object v4, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchors:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    iput-object v3, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustedSubjectDNs:Ljava/util/Set;

    .line 87
    iget-object v3, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchors:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "anchor$iterator":Ljava/util/Iterator;
    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/TrustAnchor;

    .line 88
    .local v0, "anchor":Ljava/security/cert/TrustAnchor;
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 89
    .local v2, "trustedCert":Ljava/security/cert/X509Certificate;
    if-eqz v2, :cond_4d

    .line 90
    iget-object v3, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustedCerts:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v3, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustedSubjectDNs:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 93
    :cond_4d
    iget-object v3, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustedSubjectDNs:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCA()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 96
    .end local v0    # "anchor":Ljava/security/cert/TrustAnchor;
    .end local v2    # "trustedCert":Ljava/security/cert/X509Certificate;
    :cond_57
    iput-boolean p2, p0, Lsun/security/provider/certpath/ForwardBuilder;->searchAllCertStores:Z

    .line 97
    return-void
.end method

.method private getCerts(Lsun/security/x509/AuthorityInfoAccessExtension;Ljava/util/Collection;)Z
    .registers 11
    .param p1, "aiaExt"    # Lsun/security/x509/AuthorityInfoAccessExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/x509/AuthorityInfoAccessExtension;",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    const/4 v7, 0x0

    .line 359
    sget-boolean v6, Lsun/security/provider/certpath/Builder;->USE_AIA:Z

    if-nez v6, :cond_6

    .line 360
    return v7

    .line 362
    :cond_6
    invoke-virtual {p1}, Lsun/security/x509/AuthorityInfoAccessExtension;->getAccessDescriptions()Ljava/util/List;

    move-result-object v2

    .line 363
    .local v2, "adList":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/AccessDescription;>;"
    if-eqz v2, :cond_12

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 364
    :cond_12
    return v7

    .line 367
    :cond_13
    const/4 v3, 0x0

    .line 368
    .local v3, "add":Z
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ad$iterator":Ljava/util/Iterator;
    :cond_18
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/AccessDescription;

    .line 369
    .local v0, "ad":Lsun/security/x509/AccessDescription;
    invoke-static {v0}, Lsun/security/provider/certpath/URICertStore;->getInstance(Lsun/security/x509/AccessDescription;)Ljava/security/cert/CertStore;

    move-result-object v4

    .line 370
    .local v4, "cs":Ljava/security/cert/CertStore;
    if-eqz v4, :cond_18

    .line 373
    :try_start_2a
    iget-object v6, p0, Lsun/security/provider/certpath/ForwardBuilder;->caSelector:Lsun/security/provider/certpath/AdaptableX509CertSelector;

    invoke-virtual {v4, v6}, Ljava/security/cert/CertStore;->getCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;

    move-result-object v6

    .line 372
    invoke-interface {p2, v6}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 374
    const/4 v3, 0x1

    .line 375
    iget-boolean v6, p0, Lsun/security/provider/certpath/ForwardBuilder;->searchAllCertStores:Z
    :try_end_39
    .catch Ljava/security/cert/CertStoreException; {:try_start_2a .. :try_end_39} :catch_3d

    if-nez v6, :cond_18

    .line 376
    const/4 v6, 0x1

    return v6

    .line 379
    :catch_3d
    move-exception v5

    .line 380
    .local v5, "cse":Ljava/security/cert/CertStoreException;
    sget-object v6, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v6, :cond_18

    .line 381
    sget-object v6, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    const-string/jumbo v7, "exception getting certs from CertStore:"

    invoke-virtual {v6, v7}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 382
    invoke-virtual {v5}, Ljava/security/cert/CertStoreException;->printStackTrace()V

    goto :goto_18

    .line 387
    .end local v0    # "ad":Lsun/security/x509/AccessDescription;
    .end local v4    # "cs":Ljava/security/cert/CertStore;
    .end local v5    # "cse":Ljava/security/cert/CertStoreException;
    :cond_4e
    return v3
.end method

.method private getMatchingCACerts(Lsun/security/provider/certpath/ForwardState;Ljava/util/List;Ljava/util/Collection;)V
    .registers 14
    .param p1, "currentState"    # Lsun/security/provider/certpath/ForwardState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/provider/certpath/ForwardState;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, "certStores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    .local p3, "caCerts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    const/4 v9, -0x1

    .line 192
    sget-object v6, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v6, :cond_d

    .line 193
    sget-object v6, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    const-string/jumbo v7, "ForwardBuilder.getMatchingCACerts()..."

    invoke-virtual {v6, v7}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 195
    :cond_d
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v1

    .line 201
    .local v1, "initialSize":I
    const/4 v3, 0x0

    .line 203
    .local v3, "sel":Ljava/security/cert/X509CertSelector;
    invoke-virtual {p1}, Lsun/security/provider/certpath/ForwardState;->isInitial()Z

    move-result v6

    if-eqz v6, :cond_ba

    .line 204
    iget-object v6, p0, Lsun/security/provider/certpath/ForwardBuilder;->targetCertConstraints:Ljava/security/cert/X509CertSelector;

    invoke-virtual {v6}, Ljava/security/cert/X509CertSelector;->getBasicConstraints()I

    move-result v6

    const/4 v7, -0x2

    if-ne v6, v7, :cond_22

    .line 206
    return-void

    .line 212
    :cond_22
    sget-object v6, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v6, :cond_2e

    .line 213
    sget-object v6, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    const-string/jumbo v7, "ForwardBuilder.getMatchingCACerts(): the target is a CA"

    invoke-virtual {v6, v7}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 217
    :cond_2e
    iget-object v6, p0, Lsun/security/provider/certpath/ForwardBuilder;->caTargetSelector:Ljava/security/cert/X509CertSelector;

    if-nez v6, :cond_4d

    .line 219
    iget-object v6, p0, Lsun/security/provider/certpath/ForwardBuilder;->targetCertConstraints:Ljava/security/cert/X509CertSelector;

    invoke-virtual {v6}, Ljava/security/cert/X509CertSelector;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509CertSelector;

    .line 218
    iput-object v6, p0, Lsun/security/provider/certpath/ForwardBuilder;->caTargetSelector:Ljava/security/cert/X509CertSelector;

    .line 231
    iget-object v6, p0, Lsun/security/provider/certpath/ForwardBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v6}, Lsun/security/provider/certpath/PKIX$BuilderParams;->explicitPolicyRequired()Z

    move-result v6

    if-eqz v6, :cond_4d

    .line 232
    iget-object v6, p0, Lsun/security/provider/certpath/ForwardBuilder;->caTargetSelector:Ljava/security/cert/X509CertSelector;

    invoke-virtual {p0}, Lsun/security/provider/certpath/ForwardBuilder;->getMatchingPolicies()Ljava/util/Set;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/security/cert/X509CertSelector;->setPolicy(Ljava/util/Set;)V

    .line 235
    :cond_4d
    iget-object v3, p0, Lsun/security/provider/certpath/ForwardBuilder;->caTargetSelector:Ljava/security/cert/X509CertSelector;

    .line 283
    .local v3, "sel":Ljava/security/cert/X509CertSelector;
    :goto_4f
    invoke-virtual {v3, v9}, Ljava/security/cert/X509CertSelector;->setBasicConstraints(I)V

    .line 285
    iget-object v6, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustedCerts:Ljava/util/Set;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "trustedCert$iterator":Ljava/util/Iterator;
    :cond_58
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 286
    .local v4, "trustedCert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v3, v4}, Ljava/security/cert/X509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v6

    if-eqz v6, :cond_58

    .line 287
    sget-object v6, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v6, :cond_ad

    .line 288
    sget-object v6, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ForwardBuilder.getMatchingCACerts: found matching trust anchor.\n  SN: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 291
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v8

    invoke-static {v8}, Lsun/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v8

    .line 288
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 292
    const-string/jumbo v8, "\n  Subject: "

    .line 288
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 293
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v8

    .line 288
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 294
    const-string/jumbo v8, "\n  Issuer: "

    .line 288
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 295
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v8

    .line 288
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 297
    :cond_ad
    invoke-interface {p3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_58

    iget-boolean v6, p0, Lsun/security/provider/certpath/ForwardBuilder;->searchAllCertStores:Z

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_58

    .line 298
    return-void

    .line 238
    .end local v4    # "trustedCert":Ljava/security/cert/X509Certificate;
    .end local v5    # "trustedCert$iterator":Ljava/util/Iterator;
    .local v3, "sel":Ljava/security/cert/X509CertSelector;
    :cond_ba
    iget-object v6, p0, Lsun/security/provider/certpath/ForwardBuilder;->caSelector:Lsun/security/provider/certpath/AdaptableX509CertSelector;

    if-nez v6, :cond_d6

    .line 239
    new-instance v6, Lsun/security/provider/certpath/AdaptableX509CertSelector;

    invoke-direct {v6}, Lsun/security/provider/certpath/AdaptableX509CertSelector;-><init>()V

    iput-object v6, p0, Lsun/security/provider/certpath/ForwardBuilder;->caSelector:Lsun/security/provider/certpath/AdaptableX509CertSelector;

    .line 251
    iget-object v6, p0, Lsun/security/provider/certpath/ForwardBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v6}, Lsun/security/provider/certpath/PKIX$BuilderParams;->explicitPolicyRequired()Z

    move-result v6

    if-eqz v6, :cond_d6

    .line 252
    iget-object v6, p0, Lsun/security/provider/certpath/ForwardBuilder;->caSelector:Lsun/security/provider/certpath/AdaptableX509CertSelector;

    invoke-virtual {p0}, Lsun/security/provider/certpath/ForwardBuilder;->getMatchingPolicies()Ljava/util/Set;

    move-result-object v7

    invoke-virtual {v6, v7}, Lsun/security/provider/certpath/AdaptableX509CertSelector;->setPolicy(Ljava/util/Set;)V

    .line 258
    :cond_d6
    iget-object v6, p0, Lsun/security/provider/certpath/ForwardBuilder;->caSelector:Lsun/security/provider/certpath/AdaptableX509CertSelector;

    iget-object v7, p1, Lsun/security/provider/certpath/ForwardState;->issuerDN:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v6, v7}, Lsun/security/provider/certpath/AdaptableX509CertSelector;->setSubject(Ljavax/security/auth/x500/X500Principal;)V

    .line 266
    iget-object v6, p0, Lsun/security/provider/certpath/ForwardBuilder;->caSelector:Lsun/security/provider/certpath/AdaptableX509CertSelector;

    iget-object v7, p1, Lsun/security/provider/certpath/ForwardState;->subjectNamesTraversed:Ljava/util/HashSet;

    .line 265
    invoke-static {v6, v7}, Lsun/security/provider/certpath/CertPathHelper;->setPathToNames(Ljava/security/cert/X509CertSelector;Ljava/util/Set;)V

    .line 271
    iget-object v6, p0, Lsun/security/provider/certpath/ForwardBuilder;->caSelector:Lsun/security/provider/certpath/AdaptableX509CertSelector;

    iget-object v7, p1, Lsun/security/provider/certpath/ForwardState;->cert:Lsun/security/x509/X509CertImpl;

    invoke-virtual {v7}, Lsun/security/x509/X509CertImpl;->getNotBefore()Ljava/util/Date;

    move-result-object v7

    .line 272
    iget-object v8, p1, Lsun/security/provider/certpath/ForwardState;->cert:Lsun/security/x509/X509CertImpl;

    invoke-virtual {v8}, Lsun/security/x509/X509CertImpl;->getNotAfter()Ljava/util/Date;

    move-result-object v8

    .line 271
    invoke-virtual {v6, v7, v8}, Lsun/security/provider/certpath/AdaptableX509CertSelector;->setValidityPeriod(Ljava/util/Date;Ljava/util/Date;)V

    .line 274
    iget-object v3, p0, Lsun/security/provider/certpath/ForwardBuilder;->caSelector:Lsun/security/provider/certpath/AdaptableX509CertSelector;

    .local v3, "sel":Ljava/security/cert/X509CertSelector;
    goto/16 :goto_4f

    .line 307
    .restart local v5    # "trustedCert$iterator":Ljava/util/Iterator;
    :cond_f9
    iget-object v6, p0, Lsun/security/provider/certpath/ForwardBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v6}, Lsun/security/provider/certpath/PKIX$BuilderParams;->date()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/security/cert/X509CertSelector;->setCertificateValid(Ljava/util/Date;)V

    .line 313
    iget v6, p1, Lsun/security/provider/certpath/ForwardState;->traversedCACerts:I

    invoke-virtual {v3, v6}, Ljava/security/cert/X509CertSelector;->setBasicConstraints(I)V

    .line 322
    invoke-virtual {p1}, Lsun/security/provider/certpath/ForwardState;->isInitial()Z

    move-result v6

    if-nez v6, :cond_115

    .line 323
    iget-object v6, p0, Lsun/security/provider/certpath/ForwardBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v6}, Lsun/security/provider/certpath/PKIX$BuilderParams;->maxPathLength()I

    move-result v6

    if-ne v6, v9, :cond_124

    .line 327
    :cond_115
    iget-boolean v6, p0, Lsun/security/provider/certpath/ForwardBuilder;->searchAllCertStores:Z

    .line 326
    invoke-virtual {p0, v3, p2, p3, v6}, Lsun/security/provider/certpath/ForwardBuilder;->addMatchingCerts(Ljava/security/cert/X509CertSelector;Ljava/util/Collection;Ljava/util/Collection;Z)Z

    move-result v6

    if-eqz v6, :cond_12e

    .line 328
    iget-boolean v6, p0, Lsun/security/provider/certpath/ForwardBuilder;->searchAllCertStores:Z

    xor-int/lit8 v6, v6, 0x1

    .line 326
    if-eqz v6, :cond_12e

    .line 329
    return-void

    .line 324
    :cond_124
    iget-object v6, p0, Lsun/security/provider/certpath/ForwardBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v6}, Lsun/security/provider/certpath/PKIX$BuilderParams;->maxPathLength()I

    move-result v6

    iget v7, p1, Lsun/security/provider/certpath/ForwardState;->traversedCACerts:I

    if-gt v6, v7, :cond_115

    .line 333
    :cond_12e
    invoke-virtual {p1}, Lsun/security/provider/certpath/ForwardState;->isInitial()Z

    move-result v6

    if-nez v6, :cond_143

    sget-boolean v6, Lsun/security/provider/certpath/Builder;->USE_AIA:Z

    if-eqz v6, :cond_143

    .line 336
    iget-object v6, p1, Lsun/security/provider/certpath/ForwardState;->cert:Lsun/security/x509/X509CertImpl;

    invoke-virtual {v6}, Lsun/security/x509/X509CertImpl;->getAuthorityInfoAccessExtension()Lsun/security/x509/AuthorityInfoAccessExtension;

    move-result-object v0

    .line 337
    .local v0, "aiaExt":Lsun/security/x509/AuthorityInfoAccessExtension;
    if-eqz v0, :cond_143

    .line 338
    invoke-direct {p0, v0, p3}, Lsun/security/provider/certpath/ForwardBuilder;->getCerts(Lsun/security/x509/AuthorityInfoAccessExtension;Ljava/util/Collection;)Z

    .line 342
    .end local v0    # "aiaExt":Lsun/security/x509/AuthorityInfoAccessExtension;
    :cond_143
    sget-object v6, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v6, :cond_16d

    .line 343
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v6

    sub-int v2, v6, v1

    .line 344
    .local v2, "numCerts":I
    sget-object v6, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ForwardBuilder.getMatchingCACerts: found "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 345
    const-string/jumbo v8, " CA certs"

    .line 344
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 347
    .end local v2    # "numCerts":I
    :cond_16d
    return-void
.end method

.method private getMatchingEECerts(Lsun/security/provider/certpath/ForwardState;Ljava/util/List;Ljava/util/Collection;)V
    .registers 6
    .param p1, "currentState"    # Lsun/security/provider/certpath/ForwardState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/provider/certpath/ForwardState;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    .local p2, "certStores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    .local p3, "eeCerts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    sget-object v0, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_c

    .line 149
    sget-object v0, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    const-string/jumbo v1, "ForwardBuilder.getMatchingEECerts()..."

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 159
    :cond_c
    iget-object v0, p0, Lsun/security/provider/certpath/ForwardBuilder;->eeSelector:Ljava/security/cert/X509CertSelector;

    if-nez v0, :cond_3c

    .line 160
    iget-object v0, p0, Lsun/security/provider/certpath/ForwardBuilder;->targetCertConstraints:Ljava/security/cert/X509CertSelector;

    invoke-virtual {v0}, Ljava/security/cert/X509CertSelector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CertSelector;

    iput-object v0, p0, Lsun/security/provider/certpath/ForwardBuilder;->eeSelector:Ljava/security/cert/X509CertSelector;

    .line 165
    iget-object v0, p0, Lsun/security/provider/certpath/ForwardBuilder;->eeSelector:Ljava/security/cert/X509CertSelector;

    iget-object v1, p0, Lsun/security/provider/certpath/ForwardBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v1}, Lsun/security/provider/certpath/PKIX$BuilderParams;->date()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CertSelector;->setCertificateValid(Ljava/util/Date;)V

    .line 170
    iget-object v0, p0, Lsun/security/provider/certpath/ForwardBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v0}, Lsun/security/provider/certpath/PKIX$BuilderParams;->explicitPolicyRequired()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 171
    iget-object v0, p0, Lsun/security/provider/certpath/ForwardBuilder;->eeSelector:Ljava/security/cert/X509CertSelector;

    invoke-virtual {p0}, Lsun/security/provider/certpath/ForwardBuilder;->getMatchingPolicies()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CertSelector;->setPolicy(Ljava/util/Set;)V

    .line 176
    :cond_36
    iget-object v0, p0, Lsun/security/provider/certpath/ForwardBuilder;->eeSelector:Ljava/security/cert/X509CertSelector;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CertSelector;->setBasicConstraints(I)V

    .line 180
    :cond_3c
    iget-object v0, p0, Lsun/security/provider/certpath/ForwardBuilder;->eeSelector:Ljava/security/cert/X509CertSelector;

    iget-boolean v1, p0, Lsun/security/provider/certpath/ForwardBuilder;->searchAllCertStores:Z

    invoke-virtual {p0, v0, p2, p3, v1}, Lsun/security/provider/certpath/ForwardBuilder;->addMatchingCerts(Ljava/security/cert/X509CertSelector;Ljava/util/Collection;Ljava/util/Collection;Z)Z

    .line 181
    return-void
.end method


# virtual methods
.method addCertToPath(Ljava/security/cert/X509Certificate;Ljava/util/LinkedList;)V
    .registers 3
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 919
    .local p2, "certPathList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 920
    return-void
.end method

.method getMatchingCerts(Lsun/security/provider/certpath/State;Ljava/util/List;)Ljava/util/Collection;
    .registers 8
    .param p1, "currentState"    # Lsun/security/provider/certpath/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/provider/certpath/State;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    .local p2, "certStores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    sget-object v3, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_c

    .line 114
    sget-object v3, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    const-string/jumbo v4, "ForwardBuilder.getMatchingCerts()..."

    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_c
    move-object v2, p1

    .line 117
    check-cast v2, Lsun/security/provider/certpath/ForwardState;

    .line 125
    .local v2, "currState":Lsun/security/provider/certpath/ForwardState;
    new-instance v1, Lsun/security/provider/certpath/ForwardBuilder$PKIXCertComparator;

    iget-object v3, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustedSubjectDNs:Ljava/util/Set;

    iget-object v4, v2, Lsun/security/provider/certpath/ForwardState;->cert:Lsun/security/x509/X509CertImpl;

    invoke-direct {v1, v3, v4}, Lsun/security/provider/certpath/ForwardBuilder$PKIXCertComparator;-><init>(Ljava/util/Set;Lsun/security/x509/X509CertImpl;)V

    .line 126
    .local v1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/security/cert/X509Certificate;>;"
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 131
    .local v0, "certs":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual {v2}, Lsun/security/provider/certpath/ForwardState;->isInitial()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 132
    invoke-direct {p0, v2, p2, v0}, Lsun/security/provider/certpath/ForwardBuilder;->getMatchingEECerts(Lsun/security/provider/certpath/ForwardState;Ljava/util/List;Ljava/util/Collection;)V

    .line 134
    :cond_26
    invoke-direct {p0, v2, p2, v0}, Lsun/security/provider/certpath/ForwardBuilder;->getMatchingCACerts(Lsun/security/provider/certpath/ForwardState;Ljava/util/List;Ljava/util/Collection;)V

    .line 136
    return-object v0
.end method

.method isPathCompleted(Ljava/security/cert/X509Certificate;)Z
    .registers 12
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v9, 0x1

    .line 838
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 840
    .local v4, "otherAnchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    iget-object v7, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchors:Ljava/util/Set;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "anchor$iterator":Ljava/util/Iterator;
    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/TrustAnchor;

    .line 841
    .local v0, "anchor":Ljava/security/cert/TrustAnchor;
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v7

    if-eqz v7, :cond_2b

    .line 842
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 843
    iput-object v0, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    .line 844
    return v9

    .line 849
    :cond_2b
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCA()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    .line 850
    .local v5, "principal":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    .line 852
    .local v6, "publicKey":Ljava/security/PublicKey;
    if-eqz v5, :cond_4e

    if-eqz v6, :cond_4e

    .line 853
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 852
    if-eqz v7, :cond_4e

    .line 854
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4e

    .line 856
    iput-object v0, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    .line 857
    return v9

    .line 861
    :cond_4e
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 864
    .end local v0    # "anchor":Ljava/security/cert/TrustAnchor;
    .end local v5    # "principal":Ljavax/security/auth/x500/X500Principal;
    .end local v6    # "publicKey":Ljava/security/PublicKey;
    :cond_52
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_56
    :goto_56
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/TrustAnchor;

    .line 865
    .restart local v0    # "anchor":Ljava/security/cert/TrustAnchor;
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCA()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    .line 866
    .restart local v5    # "principal":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    .line 868
    .restart local v6    # "publicKey":Ljava/security/PublicKey;
    if-eqz v5, :cond_56

    .line 869
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    .line 868
    if-nez v7, :cond_56

    .line 874
    invoke-static {v6}, Lsun/security/provider/certpath/PKIX;->isDSAPublicKeyWithoutParams(Ljava/security/PublicKey;)Z

    move-result v7

    if-nez v7, :cond_56

    .line 883
    :try_start_7e
    iget-object v7, p0, Lsun/security/provider/certpath/ForwardBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v7}, Lsun/security/provider/certpath/PKIX$BuilderParams;->sigProvider()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_92

    .line 884
    iget-object v7, p0, Lsun/security/provider/certpath/ForwardBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v7}, Lsun/security/provider/certpath/PKIX$BuilderParams;->sigProvider()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_8f
    .catch Ljava/security/InvalidKeyException; {:try_start_7e .. :try_end_8f} :catch_96
    .catch Ljava/security/GeneralSecurityException; {:try_start_7e .. :try_end_8f} :catch_a4

    .line 903
    :goto_8f
    iput-object v0, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    .line 904
    return v9

    .line 886
    :cond_92
    :try_start_92
    invoke-virtual {p1, v6}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_95
    .catch Ljava/security/InvalidKeyException; {:try_start_92 .. :try_end_95} :catch_96
    .catch Ljava/security/GeneralSecurityException; {:try_start_92 .. :try_end_95} :catch_a4

    goto :goto_8f

    .line 888
    :catch_96
    move-exception v3

    .line 889
    .local v3, "ike":Ljava/security/InvalidKeyException;
    sget-object v7, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v7, :cond_56

    .line 890
    sget-object v7, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    const-string/jumbo v8, "ForwardBuilder.isPathCompleted() invalid DSA key found"

    invoke-virtual {v7, v8}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_56

    .line 894
    .end local v3    # "ike":Ljava/security/InvalidKeyException;
    :catch_a4
    move-exception v2

    .line 895
    .local v2, "e":Ljava/security/GeneralSecurityException;
    sget-object v7, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v7, :cond_56

    .line 896
    sget-object v7, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    const-string/jumbo v8, "ForwardBuilder.isPathCompleted() unexpected exception"

    invoke-virtual {v7, v8}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 898
    invoke-virtual {v2}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    goto :goto_56

    .line 907
    .end local v0    # "anchor":Ljava/security/cert/TrustAnchor;
    .end local v2    # "e":Ljava/security/GeneralSecurityException;
    .end local v5    # "principal":Ljavax/security/auth/x500/X500Principal;
    .end local v6    # "publicKey":Ljava/security/PublicKey;
    :cond_b5
    const/4 v7, 0x0

    return v7
.end method

.method removeFinalCertFromPath(Ljava/util/LinkedList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 928
    .local p1, "certPathList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 929
    return-void
.end method

.method verifyCert(Ljava/security/cert/X509Certificate;Lsun/security/provider/certpath/State;Ljava/util/List;)V
    .registers 18
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p2, "currentState"    # Lsun/security/provider/certpath/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Lsun/security/provider/certpath/State;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 697
    .local p3, "certPathList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    sget-object v0, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_51

    .line 698
    sget-object v0, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ForwardBuilder.verifyCert(SN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 699
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v2}, Lsun/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v2

    .line 698
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 700
    const-string/jumbo v2, "\n  Issuer: "

    .line 698
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 700
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    .line 698
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 700
    const-string/jumbo v2, ")"

    .line 698
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 701
    const-string/jumbo v2, "\n  Subject: "

    .line 698
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 701
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    .line 698
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 701
    const-string/jumbo v2, ")"

    .line 698
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_51
    move-object/from16 v10, p2

    .line 704
    check-cast v10, Lsun/security/provider/certpath/ForwardState;

    .line 716
    .local v10, "currState":Lsun/security/provider/certpath/ForwardState;
    if-eqz p3, :cond_82

    .line 717
    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "cpListCert$iterator":Ljava/util/Iterator;
    :cond_5b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509Certificate;

    .line 718
    .local v8, "cpListCert":Ljava/security/cert/X509Certificate;
    invoke-virtual {p1, v8}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 719
    sget-object v0, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_79

    .line 720
    sget-object v0, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    const-string/jumbo v1, "loop detected!!"

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 722
    :cond_79
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v1, "loop detected"

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 728
    .end local v8    # "cpListCert":Ljava/security/cert/X509Certificate;
    .end local v9    # "cpListCert$iterator":Ljava/util/Iterator;
    :cond_82
    iget-object v0, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustedCerts:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    .line 731
    .local v11, "isTrustedCert":Z
    if-nez v11, :cond_13b

    .line 737
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v13

    .line 738
    .local v13, "unresCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v13, :cond_94

    .line 739
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v13

    .line 741
    :cond_94
    iget-object v0, v10, Lsun/security/provider/certpath/ForwardState;->forwardCheckers:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "checker$iterator":Ljava/util/Iterator;
    :goto_9a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_aa

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/PKIXCertPathChecker;

    .line 742
    .local v6, "checker":Ljava/security/cert/PKIXCertPathChecker;
    invoke-virtual {v6, p1, v13}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V

    goto :goto_9a

    .line 751
    .end local v6    # "checker":Ljava/security/cert/PKIXCertPathChecker;
    :cond_aa
    iget-object v0, p0, Lsun/security/provider/certpath/ForwardBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v0}, Lsun/security/provider/certpath/PKIX$BuilderParams;->certPathCheckers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_b4
    :goto_b4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/PKIXCertPathChecker;

    .line 752
    .restart local v6    # "checker":Ljava/security/cert/PKIXCertPathChecker;
    invoke-virtual {v6}, Ljava/security/cert/PKIXCertPathChecker;->isForwardCheckingSupported()Z

    move-result v0

    if-nez v0, :cond_b4

    .line 753
    invoke-virtual {v6}, Ljava/security/cert/PKIXCertPathChecker;->getSupportedExtensions()Ljava/util/Set;

    move-result-object v12

    .line 754
    .local v12, "supportedExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v12, :cond_b4

    .line 755
    invoke-interface {v13, v12}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_b4

    .line 764
    .end local v6    # "checker":Ljava/security/cert/PKIXCertPathChecker;
    .end local v12    # "supportedExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_d0
    invoke-interface {v13}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13b

    .line 765
    sget-object v0, Lsun/security/x509/PKIXExtensions;->BasicConstraints_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 766
    sget-object v0, Lsun/security/x509/PKIXExtensions;->NameConstraints_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 767
    sget-object v0, Lsun/security/x509/PKIXExtensions;->CertificatePolicies_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 768
    sget-object v0, Lsun/security/x509/PKIXExtensions;->PolicyMappings_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 769
    sget-object v0, Lsun/security/x509/PKIXExtensions;->PolicyConstraints_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 770
    sget-object v0, Lsun/security/x509/PKIXExtensions;->InhibitAnyPolicy_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 771
    sget-object v0, Lsun/security/x509/PKIXExtensions;->SubjectAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 772
    sget-object v0, Lsun/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 773
    sget-object v0, Lsun/security/x509/PKIXExtensions;->ExtendedKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 775
    invoke-interface {v13}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13b

    .line 776
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    .line 777
    const-string/jumbo v1, "Unrecognized critical extension(s)"

    .line 778
    sget-object v5, Ljava/security/cert/PKIXReason;->UNRECOGNIZED_CRIT_EXT:Ljava/security/cert/PKIXReason;

    .line 777
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 776
    invoke-direct/range {v0 .. v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v0

    .line 786
    .end local v7    # "checker$iterator":Ljava/util/Iterator;
    .end local v13    # "unresCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_13b
    invoke-virtual {v10}, Lsun/security/provider/certpath/ForwardState;->isInitial()Z

    move-result v0

    if-eqz v0, :cond_142

    .line 787
    return-void

    .line 791
    :cond_142
    if-nez v11, :cond_157

    .line 793
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_154

    .line 794
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string/jumbo v1, "cert is NOT a CA cert"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 800
    :cond_154
    invoke-static {p1}, Lsun/security/provider/certpath/KeyChecker;->verifyCAKeyUsage(Ljava/security/cert/X509Certificate;)V

    .line 814
    :cond_157
    invoke-virtual {v10}, Lsun/security/provider/certpath/ForwardState;->keyParamsNeeded()Z

    move-result v0

    if-nez v0, :cond_174

    .line 816
    iget-object v0, p0, Lsun/security/provider/certpath/ForwardBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v0}, Lsun/security/provider/certpath/PKIX$BuilderParams;->sigProvider()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_175

    .line 817
    iget-object v0, v10, Lsun/security/provider/certpath/ForwardState;->cert:Lsun/security/x509/X509CertImpl;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    .line 818
    iget-object v2, p0, Lsun/security/provider/certpath/ForwardBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v2}, Lsun/security/provider/certpath/PKIX$BuilderParams;->sigProvider()Ljava/lang/String;

    move-result-object v2

    .line 817
    invoke-virtual {v0, v1, v2}, Lsun/security/x509/X509CertImpl;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V

    .line 823
    :cond_174
    :goto_174
    return-void

    .line 820
    :cond_175
    iget-object v0, v10, Lsun/security/provider/certpath/ForwardState;->cert:Lsun/security/x509/X509CertImpl;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/x509/X509CertImpl;->verify(Ljava/security/PublicKey;)V

    goto :goto_174
.end method
