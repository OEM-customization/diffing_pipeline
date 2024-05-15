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
.field private static final EKU_OID:Ljava/lang/String; = "2.5.29.37"

.field private static final EKU_anyExtendedKeyUsage:Ljava/lang/String; = "2.5.29.37.0"

.field private static final EKU_clientAuth:Ljava/lang/String; = "1.3.6.1.5.5.7.3.2"

.field private static final EKU_msSGC:Ljava/lang/String; = "1.3.6.1.4.1.311.10.3.3"

.field private static final EKU_nsSGC:Ljava/lang/String; = "2.16.840.1.113730.4.1"

.field private static final EKU_serverAuth:Ljava/lang/String; = "1.3.6.1.5.5.7.3.1"

.field private static final SUPPORTED_EXTENSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final clientAuth:Z

.field private final leaf:Ljava/security/cert/X509Certificate;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 823
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "2.5.29.37"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 822
    sput-object v0, Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;->SUPPORTED_EXTENSIONS:Ljava/util/Set;

    .line 812
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(ZLjava/security/cert/X509Certificate;)V
    .registers 3
    .param p1, "clientAuth"    # Z
    .param p2, "leaf"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 828
    invoke-direct {p0}, Ljava/security/cert/PKIXCertPathChecker;-><init>()V

    .line 829
    iput-boolean p1, p0, Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;->clientAuth:Z

    .line 830
    iput-object p2, p0, Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;->leaf:Ljava/security/cert/X509Certificate;

    .line 831
    return-void
.end method

.method synthetic constructor <init>(ZLjava/security/cert/X509Certificate;Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;)V
    .registers 4
    .param p1, "clientAuth"    # Z
    .param p2, "leaf"    # Ljava/security/cert/X509Certificate;
    .param p3, "-this2"    # Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;-><init>(ZLjava/security/cert/X509Certificate;)V

    return-void
.end method


# virtual methods
.method public check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    .registers 10
    .param p1, "c"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 852
    .local p2, "unresolvedCritExts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;->leaf:Ljava/security/cert/X509Certificate;

    if-eq p1, v5, :cond_5

    .line 853
    return-void

    .line 857
    :cond_5
    :try_start_5
    iget-object v5, p0, Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;->leaf:Ljava/security/cert/X509Certificate;

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getExtendedKeyUsage()Ljava/util/List;
    :try_end_a
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_5 .. :try_end_a} :catch_e

    move-result-object v3

    .line 863
    .local v3, "ekuOids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v3, :cond_15

    .line 864
    return-void

    .line 858
    .end local v3    # "ekuOids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_e
    move-exception v0

    .line 860
    .local v0, "e":Ljava/security/cert/CertificateParsingException;
    new-instance v5, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v5, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 867
    .end local v0    # "e":Ljava/security/cert/CertificateParsingException;
    .restart local v3    # "ekuOids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_15
    const/4 v4, 0x0

    .line 868
    .local v4, "goodExtendedKeyUsage":Z
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "ekuOid$iterator":Ljava/util/Iterator;
    :cond_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 870
    .local v1, "ekuOid":Ljava/lang/String;
    const-string/jumbo v5, "2.5.29.37.0"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 871
    const/4 v4, 0x1

    .line 898
    .end local v1    # "ekuOid":Ljava/lang/String;
    :cond_30
    :goto_30
    if-eqz v4, :cond_69

    .line 900
    const-string/jumbo v5, "2.5.29.37"

    invoke-interface {p2, v5}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 905
    return-void

    .line 876
    .restart local v1    # "ekuOid":Ljava/lang/String;
    :cond_39
    iget-boolean v5, p0, Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;->clientAuth:Z

    if-eqz v5, :cond_48

    .line 877
    const-string/jumbo v5, "1.3.6.1.5.5.7.3.2"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 878
    const/4 v4, 0x1

    .line 879
    goto :goto_30

    .line 885
    :cond_48
    const-string/jumbo v5, "1.3.6.1.5.5.7.3.1"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 886
    const/4 v4, 0x1

    .line 887
    goto :goto_30

    .line 889
    :cond_53
    const-string/jumbo v5, "2.16.840.1.113730.4.1"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 890
    const/4 v4, 0x1

    .line 891
    goto :goto_30

    .line 893
    :cond_5e
    const-string/jumbo v5, "1.3.6.1.4.1.311.10.3.3"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 894
    const/4 v4, 0x1

    .line 895
    goto :goto_30

    .line 902
    .end local v1    # "ekuOid":Ljava/lang/String;
    :cond_69
    new-instance v5, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v6, "End-entity certificate does not have a valid extendedKeyUsage."

    invoke-direct {v5, v6}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getSupportedExtensions()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 844
    sget-object v0, Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;->SUPPORTED_EXTENSIONS:Ljava/util/Set;

    return-object v0
.end method

.method public init(Z)V
    .registers 2
    .param p1, "forward"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 835
    return-void
.end method

.method public isForwardCheckingSupported()Z
    .registers 2

    .prologue
    .line 839
    const/4 v0, 0x1

    return v0
.end method
