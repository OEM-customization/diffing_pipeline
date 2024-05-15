.class Lsun/security/provider/certpath/PKIX$BuilderParams;
.super Lsun/security/provider/certpath/PKIX$ValidatorParams;
.source "PKIX.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/provider/certpath/PKIX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BuilderParams"
.end annotation


# instance fields
.field private params:Ljava/security/cert/PKIXBuilderParameters;

.field private stores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;"
        }
    .end annotation
.end field

.field private targetSubject:Ljavax/security/auth/x500/X500Principal;


# direct methods
.method constructor <init>(Ljava/security/cert/PKIXBuilderParameters;)V
    .registers 2
    .param p1, "params"    # Ljava/security/cert/PKIXBuilderParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 202
    invoke-direct {p0, p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;-><init>(Ljava/security/cert/PKIXParameters;)V

    .line 203
    invoke-direct {p0, p1}, Lsun/security/provider/certpath/PKIX$BuilderParams;->checkParams(Ljava/security/cert/PKIXBuilderParameters;)V

    .line 204
    return-void
.end method

.method private checkParams(Ljava/security/cert/PKIXBuilderParameters;)V
    .registers 5
    .param p1, "params"    # Ljava/security/cert/PKIXBuilderParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 208
    invoke-virtual {p0}, Lsun/security/provider/certpath/PKIX$BuilderParams;->targetCertConstraints()Ljava/security/cert/CertSelector;

    move-result-object v0

    .line 209
    .local v0, "sel":Ljava/security/cert/CertSelector;
    instance-of v1, v0, Ljava/security/cert/X509CertSelector;

    if-nez v1, :cond_11

    .line 210
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v2, "the targetCertConstraints parameter must be an X509CertSelector"

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 214
    :cond_11
    iput-object p1, p0, Lsun/security/provider/certpath/PKIX$BuilderParams;->params:Ljava/security/cert/PKIXBuilderParameters;

    .line 216
    invoke-virtual {p0}, Lsun/security/provider/certpath/PKIX$BuilderParams;->certStores()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lsun/security/provider/certpath/PKIX$BuilderParams;->targetCertConstraints()Ljava/security/cert/CertSelector;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509CertSelector;

    .line 215
    invoke-static {v2, v1}, Lsun/security/provider/certpath/PKIX$BuilderParams;->getTargetSubject(Ljava/util/List;Ljava/security/cert/X509CertSelector;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    iput-object v1, p0, Lsun/security/provider/certpath/PKIX$BuilderParams;->targetSubject:Ljavax/security/auth/x500/X500Principal;

    .line 217
    return-void
.end method

.method private static getTargetSubject(Ljava/util/List;Ljava/security/cert/X509CertSelector;)Ljavax/security/auth/x500/X500Principal;
    .registers 12
    .param p1, "sel"    # Ljava/security/cert/X509CertSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;",
            "Ljava/security/cert/X509CertSelector;",
            ")",
            "Ljavax/security/auth/x500/X500Principal;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 238
    .local p0, "stores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getSubject()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    .line 239
    .local v5, "subject":Ljavax/security/auth/x500/X500Principal;
    if-eqz v5, :cond_7

    .line 240
    return-object v5

    .line 242
    :cond_7
    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 243
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v0, :cond_11

    .line 244
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    .line 246
    :cond_11
    if-eqz v5, :cond_14

    .line 247
    return-object v5

    .line 249
    :cond_14
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "store$iterator":Ljava/util/Iterator;
    :cond_18
    :goto_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_63

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/CertStore;

    .line 253
    .local v3, "store":Ljava/security/cert/CertStore;
    :try_start_24
    invoke-virtual {v3, p1}, Ljava/security/cert/CertStore;->getCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;

    move-result-object v1

    .line 254
    .local v1, "certs":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/security/cert/Certificate;>;"
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_18

    .line 256
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 257
    .local v6, "xc":Ljava/security/cert/X509Certificate;
    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;
    :try_end_3b
    .catch Ljava/security/cert/CertStoreException; {:try_start_24 .. :try_end_3b} :catch_3d

    move-result-object v7

    return-object v7

    .line 259
    .end local v1    # "certs":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/security/cert/Certificate;>;"
    .end local v6    # "xc":Ljava/security/cert/X509Certificate;
    :catch_3d
    move-exception v2

    .line 261
    .local v2, "e":Ljava/security/cert/CertStoreException;
    invoke-static {}, Lsun/security/provider/certpath/PKIX;->-get0()Lsun/security/util/Debug;

    move-result-object v7

    if-eqz v7, :cond_18

    .line 262
    invoke-static {}, Lsun/security/provider/certpath/PKIX;->-get0()Lsun/security/util/Debug;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "BuilderParams.getTargetSubjectDN: non-fatal exception retrieving certs: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v2}, Ljava/security/cert/CertStoreException;->printStackTrace()V

    goto :goto_18

    .line 268
    .end local v2    # "e":Ljava/security/cert/CertStoreException;
    .end local v3    # "store":Ljava/security/cert/CertStore;
    :cond_63
    new-instance v7, Ljava/security/InvalidAlgorithmParameterException;

    .line 269
    const-string/jumbo v8, "Could not determine unique target subject"

    .line 268
    invoke-direct {v7, v8}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v7
.end method


# virtual methods
.method certStores()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 219
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$BuilderParams;->stores:Ljava/util/List;

    if-nez v0, :cond_1c

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lsun/security/provider/certpath/PKIX$BuilderParams;->params:Ljava/security/cert/PKIXBuilderParameters;

    invoke-virtual {v1}, Ljava/security/cert/PKIXBuilderParameters;->getCertStores()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lsun/security/provider/certpath/PKIX$BuilderParams;->stores:Ljava/util/List;

    .line 222
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$BuilderParams;->stores:Ljava/util/List;

    new-instance v1, Lsun/security/provider/certpath/PKIX$CertStoreComparator;

    invoke-direct {v1, v2}, Lsun/security/provider/certpath/PKIX$CertStoreComparator;-><init>(Lsun/security/provider/certpath/PKIX$CertStoreComparator;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 224
    :cond_1c
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$BuilderParams;->stores:Ljava/util/List;

    return-object v0
.end method

.method maxPathLength()I
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$BuilderParams;->params:Ljava/security/cert/PKIXBuilderParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXBuilderParameters;->getMaxPathLength()I

    move-result v0

    return v0
.end method

.method params()Ljava/security/cert/PKIXBuilderParameters;
    .registers 2

    .prologue
    .line 227
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$BuilderParams;->params:Ljava/security/cert/PKIXBuilderParameters;

    return-object v0
.end method

.method targetSubject()Ljavax/security/auth/x500/X500Principal;
    .registers 2

    .prologue
    .line 228
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$BuilderParams;->targetSubject:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method
