.class Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;
.super Ljava/security/cert/PKIXCertPathChecker;
.source "TrustManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/TrustManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExtendedKeyUsagePKIXCertPathChecker"
.end annotation


# static fields
.field private static final greylist-max-o EKU_OID:Ljava/lang/String; = "2.5.29.37"

.field private static final greylist-max-o EKU_anyExtendedKeyUsage:Ljava/lang/String; = "2.5.29.37.0"

.field private static final greylist-max-o EKU_clientAuth:Ljava/lang/String; = "1.3.6.1.5.5.7.3.2"

.field private static final greylist-max-o EKU_msSGC:Ljava/lang/String; = "1.3.6.1.4.1.311.10.3.3"

.field private static final greylist-max-o EKU_nsSGC:Ljava/lang/String; = "2.16.840.1.113730.4.1"

.field private static final greylist-max-o EKU_serverAuth:Ljava/lang/String; = "1.3.6.1.5.5.7.3.1"

.field private static final greylist-max-o SUPPORTED_EXTENSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o clientAuth:Z

.field private final greylist-max-o leaf:Ljava/security/cert/X509Certificate;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 839
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "2.5.29.37"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 840
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;->SUPPORTED_EXTENSIONS:Ljava/util/Set;

    .line 839
    return-void
.end method

.method private constructor greylist-max-o <init>(ZLjava/security/cert/X509Certificate;)V
    .registers 3
    .param p1, "clientAuth"    # Z
    .param p2, "leaf"    # Ljava/security/cert/X509Certificate;

    .line 845
    invoke-direct {p0}, Ljava/security/cert/PKIXCertPathChecker;-><init>()V

    .line 846
    iput-boolean p1, p0, Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;->clientAuth:Z

    .line 847
    iput-object p2, p0, Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;->leaf:Ljava/security/cert/X509Certificate;

    .line 848
    return-void
.end method

.method synthetic constructor blacklist <init>(ZLjava/security/cert/X509Certificate;Lcom/android/org/conscrypt/TrustManagerImpl$1;)V
    .registers 4
    .param p1, "x0"    # Z
    .param p2, "x1"    # Ljava/security/cert/X509Certificate;
    .param p3, "x2"    # Lcom/android/org/conscrypt/TrustManagerImpl$1;

    .line 829
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;-><init>(ZLjava/security/cert/X509Certificate;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    .registers 8
    .param p1, "c"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 869
    .local p2, "unresolvedCritExts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;->leaf:Ljava/security/cert/X509Certificate;

    if-eq p1, v0, :cond_5

    .line 870
    return-void

    .line 874
    :cond_5
    :try_start_5
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getExtendedKeyUsage()Ljava/util/List;

    move-result-object v0
    :try_end_9
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_5 .. :try_end_9} :catch_65

    .line 878
    .local v0, "ekuOids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 880
    if-nez v0, :cond_d

    .line 881
    return-void

    .line 884
    :cond_d
    const/4 v1, 0x0

    .line 885
    .local v1, "goodExtendedKeyUsage":Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 887
    .local v3, "ekuOid":Ljava/lang/String;
    const-string v4, "2.5.29.37.0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 888
    const/4 v1, 0x1

    .line 889
    goto :goto_55

    .line 893
    :cond_28
    iget-boolean v4, p0, Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;->clientAuth:Z

    if-eqz v4, :cond_36

    .line 894
    const-string v4, "1.3.6.1.5.5.7.3.2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 895
    const/4 v1, 0x1

    .line 896
    goto :goto_55

    .line 902
    :cond_36
    const-string v4, "1.3.6.1.5.5.7.3.1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 903
    const/4 v1, 0x1

    .line 904
    goto :goto_55

    .line 906
    :cond_40
    const-string v4, "2.16.840.1.113730.4.1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 907
    const/4 v1, 0x1

    .line 908
    goto :goto_55

    .line 910
    :cond_4a
    const-string v4, "1.3.6.1.4.1.311.10.3.3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 911
    const/4 v1, 0x1

    .line 912
    goto :goto_55

    .line 914
    .end local v3    # "ekuOid":Ljava/lang/String;
    :cond_54
    goto :goto_12

    .line 915
    :cond_55
    :goto_55
    if-eqz v1, :cond_5d

    .line 917
    const-string v2, "2.5.29.37"

    invoke-interface {p2, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 922
    return-void

    .line 919
    :cond_5d
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    const-string v3, "End-entity certificate does not have a valid extendedKeyUsage."

    invoke-direct {v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 875
    .end local v0    # "ekuOids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "goodExtendedKeyUsage":Z
    :catch_65
    move-exception v0

    .line 877
    .local v0, "e":Ljava/security/cert/CertificateParsingException;
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api getSupportedExtensions()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 861
    sget-object v0, Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;->SUPPORTED_EXTENSIONS:Ljava/util/Set;

    return-object v0
.end method

.method public whitelist test-api init(Z)V
    .registers 2
    .param p1, "forward"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 852
    return-void
.end method

.method public whitelist test-api isForwardCheckingSupported()Z
    .registers 2

    .line 856
    const/4 v0, 0x1

    return v0
.end method
