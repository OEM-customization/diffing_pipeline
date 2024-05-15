.class abstract Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;
.super Ljava/lang/Object;
.source "PKIXCRLUtil.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist findCRLs(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;Ljava/util/Date;Ljava/util/List;Ljava/util/List;)Ljava/util/Set;
    .registers 11
    .param p0, "crlselect"    # Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;
    .param p1, "validityDate"    # Ljava/util/Date;
    .param p2, "certStores"    # Ljava/util/List;
    .param p3, "pkixCrlStores"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 25
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 30
    .local v0, "initialSet":Ljava/util/HashSet;
    :try_start_5
    invoke-static {v0, p0, p3}, Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;->findCRLs(Ljava/util/HashSet;Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;Ljava/util/List;)V

    .line 31
    invoke-static {v0, p0, p2}, Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;->findCRLs(Ljava/util/HashSet;Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;Ljava/util/List;)V
    :try_end_b
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_5 .. :try_end_b} :catch_44

    .line 36
    nop

    .line 38
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 41
    .local v1, "finalSet":Ljava/util/Set;
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 43
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509CRL;

    .line 45
    .local v3, "crl":Ljava/security/cert/X509CRL;
    invoke-virtual {v3}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 47
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->getCertificateChecking()Ljava/security/cert/X509Certificate;

    move-result-object v4

    .line 49
    .local v4, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v4, :cond_3f

    invoke-virtual {v3}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 51
    :cond_3f
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    .end local v3    # "crl":Ljava/security/cert/X509CRL;
    .end local v4    # "cert":Ljava/security/cert/X509Certificate;
    :cond_42
    goto :goto_15

    .line 56
    .end local v2    # "it":Ljava/util/Iterator;
    :cond_43
    return-object v1

    .line 33
    .end local v1    # "finalSet":Ljava/util/Set;
    :catch_44
    move-exception v1

    .line 35
    .local v1, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v3, "Exception obtaining complete CRLs."

    invoke-direct {v2, v3, v1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static blacklist findCRLs(Ljava/util/HashSet;Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;Ljava/util/List;)V
    .registers 11
    .param p0, "crls"    # Ljava/util/HashSet;
    .param p1, "crlSelect"    # Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;
    .param p2, "crlStores"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    const/4 v1, 0x0

    .line 76
    .local v1, "foundValidStore":Z
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 77
    .local v2, "iter":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 79
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 101
    .local v3, "obj":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Ljava/security/cert/CertStore;

    .line 105
    .local v4, "store":Ljava/security/cert/CertStore;
    :try_start_13
    invoke-static {p1, v4}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->getCRLs(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;Ljava/security/cert/CertStore;)Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z
    :try_end_1a
    .catch Ljava/security/cert/CertStoreException; {:try_start_13 .. :try_end_1a} :catch_1c

    .line 106
    const/4 v1, 0x1

    .line 111
    goto :goto_25

    .line 108
    :catch_1c
    move-exception v5

    .line 110
    .local v5, "e":Ljava/security/cert/CertStoreException;
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Exception searching in X.509 CRL store."

    invoke-direct {v6, v7, v5}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v6

    .line 113
    .end local v3    # "obj":Ljava/lang/Object;
    .end local v4    # "store":Ljava/security/cert/CertStore;
    .end local v5    # "e":Ljava/security/cert/CertStoreException;
    :goto_25
    goto :goto_6

    .line 115
    :cond_26
    if-nez v1, :cond_2c

    if-nez v0, :cond_2b

    goto :goto_2c

    .line 117
    :cond_2b
    throw v0

    .line 119
    :cond_2c
    :goto_2c
    return-void
.end method
