.class Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;
.super Ljava/lang/Object;
.source "PKIXCRLUtil.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final blacklist findCRLs(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;Ljava/util/List;)Ljava/util/Collection;
    .registers 12
    .param p1, "crlSelect"    # Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;
    .param p2, "crlStores"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 83
    .local v0, "crls":Ljava/util/Set;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 85
    .local v1, "iter":Ljava/util/Iterator;
    const/4 v2, 0x0

    .line 86
    .local v2, "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    const/4 v3, 0x0

    .line 88
    .local v3, "foundValidStore":Z
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 90
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 113
    .local v4, "obj":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Ljava/security/cert/CertStore;

    .line 117
    .local v5, "store":Ljava/security/cert/CertStore;
    :try_start_18
    invoke-static {p1, v5}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->getCRLs(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;Ljava/security/cert/CertStore;)Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_1f
    .catch Ljava/security/cert/CertStoreException; {:try_start_18 .. :try_end_1f} :catch_21

    .line 118
    const/4 v3, 0x1

    .line 124
    goto :goto_2a

    .line 120
    :catch_21
    move-exception v6

    .line 122
    .local v6, "e":Ljava/security/cert/CertStoreException;
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v8, "Exception searching in X.509 CRL store."

    invoke-direct {v7, v8, v6}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v7

    .line 126
    .end local v4    # "obj":Ljava/lang/Object;
    .end local v5    # "store":Ljava/security/cert/CertStore;
    .end local v6    # "e":Ljava/security/cert/CertStoreException;
    :goto_2a
    goto :goto_b

    .line 127
    :cond_2b
    if-nez v3, :cond_31

    if-nez v2, :cond_30

    goto :goto_31

    .line 129
    :cond_30
    throw v2

    .line 131
    :cond_31
    :goto_31
    return-object v0
.end method


# virtual methods
.method public blacklist findCRLs(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;Ljava/util/Date;Ljava/util/List;Ljava/util/List;)Ljava/util/Set;
    .registers 12
    .param p1, "crlselect"    # Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;
    .param p2, "validityDate"    # Ljava/util/Date;
    .param p3, "certStores"    # Ljava/util/List;
    .param p4, "pkixCrlStores"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 25
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 30
    .local v0, "initialSet":Ljava/util/Set;
    :try_start_5
    invoke-direct {p0, p1, p4}, Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;->findCRLs(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 31
    invoke-direct {p0, p1, p3}, Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;->findCRLs(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_13
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_5 .. :try_end_13} :catch_50

    .line 36
    nop

    .line 38
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 41
    .local v1, "finalSet":Ljava/util/Set;
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 43
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509CRL;

    .line 45
    .local v3, "crl":Ljava/security/cert/X509CRL;
    invoke-virtual {v3}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 47
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->getCertificateChecking()Ljava/security/cert/X509Certificate;

    move-result-object v4

    .line 49
    .local v4, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v4, :cond_4b

    .line 51
    invoke-virtual {v3}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 53
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    .line 58
    :cond_4b
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    .end local v3    # "crl":Ljava/security/cert/X509CRL;
    .end local v4    # "cert":Ljava/security/cert/X509Certificate;
    :cond_4e
    :goto_4e
    goto :goto_1d

    .line 63
    .end local v2    # "it":Ljava/util/Iterator;
    :cond_4f
    return-object v1

    .line 33
    .end local v1    # "finalSet":Ljava/util/Set;
    :catch_50
    move-exception v1

    .line 35
    .local v1, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v3, "Exception obtaining complete CRLs."

    invoke-direct {v2, v3, v1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
