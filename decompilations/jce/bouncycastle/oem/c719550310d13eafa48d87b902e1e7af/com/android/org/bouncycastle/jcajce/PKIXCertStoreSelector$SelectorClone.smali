.class Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$SelectorClone;
.super Ljava/security/cert/X509CertSelector;
.source "PKIXCertStoreSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SelectorClone"
.end annotation


# instance fields
.field private final selector:Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;


# direct methods
.method constructor <init>(Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;)V
    .registers 7
    .param p1, "selector"    # Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$SelectorClone;->selector:Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    .line 81
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;->-get0(Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;)Ljava/security/cert/CertSelector;

    move-result-object v2

    instance-of v2, v2, Ljava/security/cert/X509CertSelector;

    if-eqz v2, :cond_91

    .line 83
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;->-get0(Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;)Ljava/security/cert/CertSelector;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CertSelector;

    .line 85
    .local v0, "baseSelector":Ljava/security/cert/X509CertSelector;
    invoke-virtual {v0}, Ljava/security/cert/X509CertSelector;->getAuthorityKeyIdentifier()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$SelectorClone;->setAuthorityKeyIdentifier([B)V

    .line 86
    invoke-virtual {v0}, Ljava/security/cert/X509CertSelector;->getBasicConstraints()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$SelectorClone;->setBasicConstraints(I)V

    .line 87
    invoke-virtual {v0}, Ljava/security/cert/X509CertSelector;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$SelectorClone;->setCertificate(Ljava/security/cert/X509Certificate;)V

    .line 88
    invoke-virtual {v0}, Ljava/security/cert/X509CertSelector;->getCertificateValid()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$SelectorClone;->setCertificateValid(Ljava/util/Date;)V

    .line 89
    invoke-virtual {v0}, Ljava/security/cert/X509CertSelector;->getKeyUsage()[Z

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$SelectorClone;->setKeyUsage([Z)V

    .line 90
    invoke-virtual {v0}, Ljava/security/cert/X509CertSelector;->getMatchAllSubjectAltNames()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$SelectorClone;->setMatchAllSubjectAltNames(Z)V

    .line 91
    invoke-virtual {v0}, Ljava/security/cert/X509CertSelector;->getPrivateKeyValid()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$SelectorClone;->setPrivateKeyValid(Ljava/util/Date;)V

    .line 92
    invoke-virtual {v0}, Ljava/security/cert/X509CertSelector;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$SelectorClone;->setSerialNumber(Ljava/math/BigInteger;)V

    .line 93
    invoke-virtual {v0}, Ljava/security/cert/X509CertSelector;->getSubjectKeyIdentifier()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$SelectorClone;->setSubjectKeyIdentifier([B)V

    .line 94
    invoke-virtual {v0}, Ljava/security/cert/X509CertSelector;->getSubjectPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$SelectorClone;->setSubjectPublicKey(Ljava/security/PublicKey;)V

    .line 98
    :try_start_59
    invoke-virtual {v0}, Ljava/security/cert/X509CertSelector;->getExtendedKeyUsage()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$SelectorClone;->setExtendedKeyUsage(Ljava/util/Set;)V

    .line 99
    invoke-virtual {v0}, Ljava/security/cert/X509CertSelector;->getIssuerAsBytes()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$SelectorClone;->setIssuer([B)V

    .line 100
    invoke-virtual {v0}, Ljava/security/cert/X509CertSelector;->getNameConstraints()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$SelectorClone;->setNameConstraints([B)V

    .line 101
    invoke-virtual {v0}, Ljava/security/cert/X509CertSelector;->getPathToNames()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$SelectorClone;->setPathToNames(Ljava/util/Collection;)V

    .line 102
    invoke-virtual {v0}, Ljava/security/cert/X509CertSelector;->getPolicy()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$SelectorClone;->setPolicy(Ljava/util/Set;)V

    .line 103
    invoke-virtual {v0}, Ljava/security/cert/X509CertSelector;->getSubjectAsBytes()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$SelectorClone;->setSubject([B)V

    .line 104
    invoke-virtual {v0}, Ljava/security/cert/X509CertSelector;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$SelectorClone;->setSubjectAlternativeNames(Ljava/util/Collection;)V

    .line 105
    invoke-virtual {v0}, Ljava/security/cert/X509CertSelector;->getSubjectPublicKeyAlgID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$SelectorClone;->setSubjectPublicKeyAlgID(Ljava/lang/String;)V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_91} :catch_92

    .line 112
    .end local v0    # "baseSelector":Ljava/security/cert/X509CertSelector;
    :cond_91
    return-void

    .line 108
    .restart local v0    # "baseSelector":Ljava/security/cert/X509CertSelector;
    :catch_92
    move-exception v1

    .line 109
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "base selector invalid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public match(Ljava/security/cert/Certificate;)Z
    .registers 3
    .param p1, "certificate"    # Ljava/security/cert/Certificate;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$SelectorClone;->selector:Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    if-nez v0, :cond_a

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7

    :cond_a
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$SelectorClone;->selector:Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v0

    goto :goto_7
.end method
