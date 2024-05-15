.class Lsun/security/provider/certpath/RevocationChecker;
.super Ljava/security/cert/PKIXRevocationChecker;
.source "RevocationChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/provider/certpath/RevocationChecker$RejectKeySelector;,
        Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;,
        Lsun/security/provider/certpath/RevocationChecker$Mode;
    }
.end annotation


# static fields
.field private static final blacklist ALL_REASONS:[Z

.field private static final blacklist CRL_SIGN_USAGE:[Z

.field private static final blacklist HEX_DIGITS:Ljava/lang/String; = "0123456789ABCDEFabcdef"

.field private static final blacklist MAX_CLOCK_SKEW:J = 0xdbba0L

.field private static final blacklist debug:Lsun/security/util/Debug;


# instance fields
.field private blacklist anchor:Ljava/security/cert/TrustAnchor;

.field private blacklist certIndex:I

.field private blacklist certStores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/CertStore;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist crlDP:Z

.field private blacklist crlSignFlag:Z

.field private blacklist issuerCert:Ljava/security/cert/X509Certificate;

.field private blacklist legacy:Z

.field private blacklist mode:Lsun/security/provider/certpath/RevocationChecker$Mode;

.field private blacklist ocspExtensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/Extension;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist ocspResponses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/security/cert/X509Certificate;",
            "[B>;"
        }
    .end annotation
.end field

.field private blacklist onlyEE:Z

.field private blacklist params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

.field private blacklist prevPubKey:Ljava/security/PublicKey;

.field private blacklist responderCert:Ljava/security/cert/X509Certificate;

.field private blacklist responderURI:Ljava/net/URI;

.field private blacklist softFail:Z

.field private blacklist softFailExceptions:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/security/cert/CertPathValidatorException;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 53
    const-string v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    .line 798
    const/16 v0, 0x9

    new-array v0, v0, [Z

    fill-array-data v0, :array_1a

    sput-object v0, Lsun/security/provider/certpath/RevocationChecker;->ALL_REASONS:[Z

    .line 928
    const/4 v0, 0x7

    new-array v0, v0, [Z

    fill-array-data v0, :array_24

    sput-object v0, Lsun/security/provider/certpath/RevocationChecker;->CRL_SIGN_USAGE:[Z

    return-void

    :array_1a
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_24
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 88
    invoke-direct {p0}, Ljava/security/cert/PKIXRevocationChecker;-><init>()V

    .line 66
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->softFailExceptions:Ljava/util/LinkedList;

    .line 76
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker$Mode;->PREFER_OCSP:Lsun/security/provider/certpath/RevocationChecker$Mode;

    iput-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->mode:Lsun/security/provider/certpath/RevocationChecker$Mode;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/provider/certpath/RevocationChecker;->legacy:Z

    .line 90
    return-void
.end method

.method constructor blacklist <init>(Ljava/security/cert/TrustAnchor;Lsun/security/provider/certpath/PKIX$ValidatorParams;)V
    .registers 4
    .param p1, "anchor"    # Ljava/security/cert/TrustAnchor;
    .param p2, "params"    # Lsun/security/provider/certpath/PKIX$ValidatorParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 94
    invoke-direct {p0}, Ljava/security/cert/PKIXRevocationChecker;-><init>()V

    .line 66
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->softFailExceptions:Ljava/util/LinkedList;

    .line 76
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker$Mode;->PREFER_OCSP:Lsun/security/provider/certpath/RevocationChecker$Mode;

    iput-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->mode:Lsun/security/provider/certpath/RevocationChecker$Mode;

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/provider/certpath/RevocationChecker;->legacy:Z

    .line 96
    invoke-virtual {p0, p1, p2}, Lsun/security/provider/certpath/RevocationChecker;->init(Ljava/security/cert/TrustAnchor;Lsun/security/provider/certpath/PKIX$ValidatorParams;)V

    .line 97
    return-void
.end method

.method static synthetic blacklist access$100()Lsun/security/util/Debug;
    .registers 1

    .line 51
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    return-object v0
.end method

.method private blacklist buildToNewKey(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/Set;)V
    .registers 29
    .param p1, "currCert"    # Ljava/security/cert/X509Certificate;
    .param p2, "prevKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/security/PublicKey;",
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 936
    .local p3, "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    move-object/from16 v9, p0

    move-object/from16 v10, p2

    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_d

    .line 937
    const-string v1, "RevocationChecker.buildToNewKey() starting work"

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 940
    :cond_d
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v11, v0

    .line 941
    .local v11, "badKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/PublicKey;>;"
    if-eqz v10, :cond_18

    .line 942
    invoke-interface {v11, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 944
    :cond_18
    new-instance v0, Lsun/security/provider/certpath/RevocationChecker$RejectKeySelector;

    invoke-direct {v0, v11}, Lsun/security/provider/certpath/RevocationChecker$RejectKeySelector;-><init>(Ljava/util/Set;)V

    move-object v12, v0

    .line 945
    .local v12, "certSel":Ljava/security/cert/X509CertSelector;
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/security/cert/X509CertSelector;->setSubject(Ljavax/security/auth/x500/X500Principal;)V

    .line 946
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->CRL_SIGN_USAGE:[Z

    invoke-virtual {v12, v0}, Ljava/security/cert/X509CertSelector;->setKeyUsage([Z)V

    .line 948
    iget-object v0, v9, Lsun/security/provider/certpath/RevocationChecker;->anchor:Ljava/security/cert/TrustAnchor;

    if-nez v0, :cond_35

    .line 949
    iget-object v0, v9, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v0}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->trustAnchors()Ljava/util/Set;

    move-result-object v0

    goto :goto_39

    .line 950
    :cond_35
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    :goto_39
    move-object v13, v0

    .line 954
    .local v13, "newAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    :try_start_3a
    new-instance v0, Ljava/security/cert/PKIXBuilderParameters;

    invoke-direct {v0, v13, v12}, Ljava/security/cert/PKIXBuilderParameters;-><init>(Ljava/util/Set;Ljava/security/cert/CertSelector;)V
    :try_end_3f
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3a .. :try_end_3f} :catch_2b8

    move-object v14, v0

    .line 957
    .local v14, "builderParams":Ljava/security/cert/PKIXBuilderParameters;
    nop

    .line 958
    iget-object v0, v9, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v0}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->initialPolicies()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/security/cert/PKIXBuilderParameters;->setInitialPolicies(Ljava/util/Set;)V

    .line 959
    iget-object v0, v9, Lsun/security/provider/certpath/RevocationChecker;->certStores:Ljava/util/List;

    invoke-virtual {v14, v0}, Ljava/security/cert/PKIXBuilderParameters;->setCertStores(Ljava/util/List;)V

    .line 960
    iget-object v0, v9, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    .line 961
    invoke-virtual {v0}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->explicitPolicyRequired()Z

    move-result v0

    invoke-virtual {v14, v0}, Ljava/security/cert/PKIXBuilderParameters;->setExplicitPolicyRequired(Z)V

    .line 962
    iget-object v0, v9, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    .line 963
    invoke-virtual {v0}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->policyMappingInhibited()Z

    move-result v0

    invoke-virtual {v14, v0}, Ljava/security/cert/PKIXBuilderParameters;->setPolicyMappingInhibited(Z)V

    .line 964
    iget-object v0, v9, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v0}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->anyPolicyInhibited()Z

    move-result v0

    invoke-virtual {v14, v0}, Ljava/security/cert/PKIXBuilderParameters;->setAnyPolicyInhibited(Z)V

    .line 968
    iget-object v0, v9, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v0}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->date()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/security/cert/PKIXBuilderParameters;->setDate(Ljava/util/Date;)V

    .line 970
    iget-object v0, v9, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    .line 971
    invoke-virtual {v0}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->getPKIXParameters()Ljava/security/cert/PKIXParameters;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v0

    .line 970
    invoke-virtual {v14, v0}, Ljava/security/cert/PKIXBuilderParameters;->setCertPathCheckers(Ljava/util/List;)V

    .line 972
    iget-object v0, v9, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v0}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->sigProvider()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/security/cert/PKIXBuilderParameters;->setSigProvider(Ljava/lang/String;)V

    .line 977
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/security/cert/PKIXBuilderParameters;->setRevocationEnabled(Z)V

    .line 980
    sget-boolean v0, Lsun/security/provider/certpath/Builder;->USE_AIA:Z

    const/4 v8, 0x1

    if-ne v0, v8, :cond_e6

    .line 981
    const/4 v1, 0x0

    .line 983
    .local v1, "currCertImpl":Lsun/security/x509/X509CertImpl;
    :try_start_93
    invoke-static/range {p1 .. p1}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object v0
    :try_end_97
    .catch Ljava/security/cert/CertificateException; {:try_start_93 .. :try_end_97} :catch_99

    move-object v1, v0

    .line 990
    goto :goto_b4

    .line 984
    :catch_99
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 986
    .local v0, "ce":Ljava/security/cert/CertificateException;
    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_b4

    .line 987
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RevocationChecker.buildToNewKey: error decoding cert: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 991
    .end local v0    # "ce":Ljava/security/cert/CertificateException;
    :cond_b4
    :goto_b4
    const/4 v0, 0x0

    .line 992
    .local v0, "aiaExt":Lsun/security/x509/AuthorityInfoAccessExtension;
    if-eqz v1, :cond_bb

    .line 993
    invoke-virtual {v1}, Lsun/security/x509/X509CertImpl;->getAuthorityInfoAccessExtension()Lsun/security/x509/AuthorityInfoAccessExtension;

    move-result-object v0

    .line 995
    :cond_bb
    if-eqz v0, :cond_e6

    .line 996
    invoke-virtual {v0}, Lsun/security/x509/AuthorityInfoAccessExtension;->getAccessDescriptions()Ljava/util/List;

    move-result-object v2

    .line 997
    .local v2, "adList":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/AccessDescription;>;"
    if-eqz v2, :cond_e6

    .line 998
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/security/x509/AccessDescription;

    .line 999
    .local v4, "ad":Lsun/security/x509/AccessDescription;
    invoke-static {v4}, Lsun/security/provider/certpath/URICertStore;->getInstance(Lsun/security/x509/AccessDescription;)Ljava/security/cert/CertStore;

    move-result-object v5

    .line 1000
    .local v5, "cs":Ljava/security/cert/CertStore;
    if-eqz v5, :cond_e5

    .line 1001
    sget-object v6, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v6, :cond_e2

    .line 1002
    const-string v7, "adding AIAext CertStore"

    invoke-virtual {v6, v7}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 1004
    :cond_e2
    invoke-virtual {v14, v5}, Ljava/security/cert/PKIXBuilderParameters;->addCertStore(Ljava/security/cert/CertStore;)V

    .line 1006
    .end local v4    # "ad":Lsun/security/x509/AccessDescription;
    .end local v5    # "cs":Ljava/security/cert/CertStore;
    :cond_e5
    goto :goto_c7

    .line 1011
    .end local v0    # "aiaExt":Lsun/security/x509/AuthorityInfoAccessExtension;
    .end local v1    # "currCertImpl":Lsun/security/x509/X509CertImpl;
    .end local v2    # "adList":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/AccessDescription;>;"
    :cond_e6
    const/4 v1, 0x0

    .line 1013
    .local v1, "builder":Ljava/security/cert/CertPathBuilder;
    :try_start_e7
    const-string v0, "PKIX"

    invoke-static {v0}, Ljava/security/cert/CertPathBuilder;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathBuilder;

    move-result-object v0
    :try_end_ed
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_e7 .. :try_end_ed} :catch_2b1

    move-object v7, v0

    .line 1016
    .end local v1    # "builder":Ljava/security/cert/CertPathBuilder;
    .local v7, "builder":Ljava/security/cert/CertPathBuilder;
    move-object/from16 v1, p3

    .line 1019
    .end local p3    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .local v1, "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    :goto_f0
    :try_start_f0
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;
    :try_end_f2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_f0 .. :try_end_f2} :catch_2a8
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_f0 .. :try_end_f2} :catch_297

    if-eqz v0, :cond_106

    .line 1020
    :try_start_f4
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    const-string v2, "RevocationChecker.buildToNewKey() about to try build ..."

    invoke-virtual {v0, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_fb
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_f4 .. :try_end_fb} :catch_101
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_f4 .. :try_end_fb} :catch_fc

    goto :goto_106

    .line 1091
    :catch_fc
    move-exception v0

    move-object/from16 v21, v7

    goto/16 :goto_29a

    .line 1089
    :catch_101
    move-exception v0

    move-object/from16 v21, v7

    goto/16 :goto_2ab

    .line 1023
    :cond_106
    :goto_106
    nop

    .line 1024
    :try_start_107
    invoke-virtual {v7, v14}, Ljava/security/cert/CertPathBuilder;->build(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v0

    check-cast v0, Ljava/security/cert/PKIXCertPathBuilderResult;

    move-object/from16 v16, v0

    .line 1026
    .local v16, "cpbr":Ljava/security/cert/PKIXCertPathBuilderResult;
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;
    :try_end_111
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_107 .. :try_end_111} :catch_2a8
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_107 .. :try_end_111} :catch_297

    if-eqz v0, :cond_11a

    .line 1027
    :try_start_113
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    const-string v2, "RevocationChecker.buildToNewKey() about to check revocation ..."

    invoke-virtual {v0, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 1032
    :cond_11a
    if-nez v1, :cond_123

    .line 1033
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
    :try_end_121
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_113 .. :try_end_121} :catch_101
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_113 .. :try_end_121} :catch_fc

    move-object v6, v0

    .end local v1    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .local v0, "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    goto :goto_124

    .line 1032
    .end local v0    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .restart local v1    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    :cond_123
    move-object v6, v1

    .line 1035
    .end local v1    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .local v6, "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    :goto_124
    move-object/from16 v5, p1

    :try_start_126
    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1036
    invoke-virtual/range {v16 .. v16}, Ljava/security/cert/PKIXCertPathBuilderResult;->getTrustAnchor()Ljava/security/cert/TrustAnchor;

    move-result-object v0

    move-object/from16 v17, v0

    .line 1037
    .local v17, "ta":Ljava/security/cert/TrustAnchor;
    invoke-virtual/range {v17 .. v17}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v0
    :try_end_133
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_126 .. :try_end_133} :catch_28f
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_126 .. :try_end_133} :catch_287

    .line 1038
    .local v0, "prevKey2":Ljava/security/PublicKey;
    if-nez v0, :cond_14b

    .line 1039
    :try_start_135
    invoke-virtual/range {v17 .. v17}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1
    :try_end_13d
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_135 .. :try_end_13d} :catch_145
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_135 .. :try_end_13d} :catch_13f

    move-object v0, v1

    goto :goto_14c

    .line 1091
    .end local v0    # "prevKey2":Ljava/security/PublicKey;
    .end local v16    # "cpbr":Ljava/security/cert/PKIXCertPathBuilderResult;
    .end local v17    # "ta":Ljava/security/cert/TrustAnchor;
    :catch_13f
    move-exception v0

    move-object v1, v6

    move-object/from16 v21, v7

    goto/16 :goto_29a

    .line 1089
    :catch_145
    move-exception v0

    move-object v1, v6

    move-object/from16 v21, v7

    goto/16 :goto_2ab

    .line 1038
    .restart local v0    # "prevKey2":Ljava/security/PublicKey;
    .restart local v16    # "cpbr":Ljava/security/cert/PKIXCertPathBuilderResult;
    .restart local v17    # "ta":Ljava/security/cert/TrustAnchor;
    :cond_14b
    move-object v1, v0

    .line 1041
    .end local v0    # "prevKey2":Ljava/security/PublicKey;
    .local v1, "prevKey2":Ljava/security/PublicKey;
    :goto_14c
    const/4 v2, 0x1

    .line 1042
    .local v2, "signFlag":Z
    nop

    .line 1043
    :try_start_14e
    invoke-virtual/range {v16 .. v16}, Ljava/security/cert/PKIXCertPathBuilderResult;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0
    :try_end_156
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_14e .. :try_end_156} :catch_28f
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_14e .. :try_end_156} :catch_287

    move-object v4, v0

    .line 1045
    .local v4, "cpList":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    :try_start_157
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0
    :try_end_15b
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_157 .. :try_end_15b} :catch_265
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_157 .. :try_end_15b} :catch_28f
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_157 .. :try_end_15b} :catch_287

    sub-int/2addr v0, v8

    move-object/from16 v18, v1

    move/from16 v19, v2

    .end local v1    # "prevKey2":Ljava/security/PublicKey;
    .end local v2    # "signFlag":Z
    .local v0, "i":I
    .local v18, "prevKey2":Ljava/security/PublicKey;
    .local v19, "signFlag":Z
    :goto_160
    if-ltz v0, :cond_1f8

    .line 1046
    :try_start_162
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    move-object v3, v1

    .line 1048
    .local v3, "cert":Ljava/security/cert/X509Certificate;
    sget-object v1, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;
    :try_end_16b
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_162 .. :try_end_16b} :catch_1e9
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_162 .. :try_end_16b} :catch_28f
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_162 .. :try_end_16b} :catch_287

    if-eqz v1, :cond_1aa

    .line 1049
    :try_start_16d
    sget-object v1, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_174
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_16d .. :try_end_174} :catch_19b
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_16d .. :try_end_174} :catch_145
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_16d .. :try_end_174} :catch_13f

    :try_start_174
    const-string v8, "RevocationChecker.buildToNewKey() index "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " checking "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_18b
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_174 .. :try_end_18b} :catch_18c
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_174 .. :try_end_18b} :catch_145
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_174 .. :try_end_18b} :catch_13f

    goto :goto_1aa

    .line 1058
    .end local v0    # "i":I
    .end local v3    # "cert":Ljava/security/cert/X509Certificate;
    :catch_18c
    move-exception v0

    move-object/from16 v24, v4

    move-object/from16 v23, v6

    move-object/from16 v21, v7

    move-object/from16 v1, v18

    move/from16 v2, v19

    const/16 v20, 0x1

    goto/16 :goto_26e

    :catch_19b
    move-exception v0

    move-object/from16 v24, v4

    move-object/from16 v23, v6

    move-object/from16 v21, v7

    move/from16 v20, v8

    move-object/from16 v1, v18

    move/from16 v2, v19

    goto/16 :goto_26e

    .line 1053
    .restart local v0    # "i":I
    .restart local v3    # "cert":Ljava/security/cert/X509Certificate;
    :cond_1aa
    :goto_1aa
    const/4 v8, 0x0

    const/16 v21, 0x1

    move-object/from16 v1, p0

    move-object v2, v3

    move-object/from16 v22, v3

    .end local v3    # "cert":Ljava/security/cert/X509Certificate;
    .local v22, "cert":Ljava/security/cert/X509Certificate;
    move-object/from16 v3, v18

    move-object/from16 p3, v4

    .end local v4    # "cpList":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    .local p3, "cpList":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    move-object v4, v8

    move/from16 v5, v19

    move-object/from16 v23, v6

    .end local v6    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .local v23, "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    move/from16 v6, v21

    move-object/from16 v21, v7

    .end local v7    # "builder":Ljava/security/cert/CertPathBuilder;
    .local v21, "builder":Ljava/security/cert/CertPathBuilder;
    move-object/from16 v7, v23

    const/16 v20, 0x1

    move-object v8, v13

    :try_start_1c4
    invoke-direct/range {v1 .. v8}, Lsun/security/provider/certpath/RevocationChecker;->checkCRLs(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/security/cert/X509Certificate;ZZLjava/util/Set;Ljava/util/Set;)V

    .line 1055
    invoke-static/range {v22 .. v22}, Lsun/security/provider/certpath/RevocationChecker;->certCanSignCrl(Ljava/security/cert/X509Certificate;)Z

    move-result v1

    move/from16 v19, v1

    .line 1056
    invoke-virtual/range {v22 .. v22}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1
    :try_end_1d1
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_1c4 .. :try_end_1d1} :catch_1e0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1c4 .. :try_end_1d1} :catch_283
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_1c4 .. :try_end_1d1} :catch_27f

    move-object/from16 v18, v1

    .line 1045
    .end local v22    # "cert":Ljava/security/cert/X509Certificate;
    add-int/lit8 v0, v0, -0x1

    move-object/from16 v5, p1

    move-object/from16 v4, p3

    move/from16 v8, v20

    move-object/from16 v7, v21

    move-object/from16 v6, v23

    goto :goto_160

    .line 1058
    .end local v0    # "i":I
    :catch_1e0
    move-exception v0

    move-object/from16 v24, p3

    move-object/from16 v1, v18

    move/from16 v2, v19

    goto/16 :goto_26e

    .end local v21    # "builder":Ljava/security/cert/CertPathBuilder;
    .end local v23    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .end local p3    # "cpList":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    .restart local v4    # "cpList":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    .restart local v6    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .restart local v7    # "builder":Ljava/security/cert/CertPathBuilder;
    :catch_1e9
    move-exception v0

    move-object/from16 v23, v6

    move-object/from16 v21, v7

    move/from16 v20, v8

    move-object/from16 v24, v4

    move-object/from16 v1, v18

    move/from16 v2, v19

    .end local v4    # "cpList":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    .end local v6    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .end local v7    # "builder":Ljava/security/cert/CertPathBuilder;
    .restart local v21    # "builder":Ljava/security/cert/CertPathBuilder;
    .restart local v23    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .restart local p3    # "cpList":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    goto/16 :goto_26e

    .line 1045
    .end local v21    # "builder":Ljava/security/cert/CertPathBuilder;
    .end local v23    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .end local p3    # "cpList":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    .restart local v0    # "i":I
    .restart local v4    # "cpList":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    .restart local v6    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .restart local v7    # "builder":Ljava/security/cert/CertPathBuilder;
    :cond_1f8
    move-object/from16 p3, v4

    move-object/from16 v23, v6

    move-object/from16 v21, v7

    move/from16 v20, v8

    .line 1062
    .end local v0    # "i":I
    .end local v4    # "cpList":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    .end local v6    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .end local v7    # "builder":Ljava/security/cert/CertPathBuilder;
    .restart local v21    # "builder":Ljava/security/cert/CertPathBuilder;
    .restart local v23    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .restart local p3    # "cpList":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    nop

    .line 1064
    :try_start_201
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_21f

    .line 1065
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RevocationChecker.buildToNewKey() got key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    invoke-virtual/range {v16 .. v16}, Ljava/security/cert/PKIXCertPathBuilderResult;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1065
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 1072
    :cond_21f
    invoke-virtual/range {v16 .. v16}, Ljava/security/cert/PKIXCertPathBuilderResult;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    move-object v8, v0

    .line 1073
    .local v8, "newKey":Ljava/security/PublicKey;
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22f

    .line 1074
    const/4 v0, 0x0

    move-object/from16 v7, p3

    move-object v4, v0

    goto :goto_238

    :cond_22f
    move-object/from16 v7, p3

    .end local p3    # "cpList":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    .local v7, "cpList":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_237
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_201 .. :try_end_237} :catch_283
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_201 .. :try_end_237} :catch_27f

    move-object v4, v0

    .line 1076
    .local v4, "newCert":Ljava/security/cert/X509Certificate;
    :goto_238
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    :try_start_23b
    iget-object v1, v9, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    .line 1077
    invoke-virtual {v1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->trustAnchors()Ljava/util/Set;

    move-result-object v22
    :try_end_241
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_23b .. :try_end_241} :catch_252
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_23b .. :try_end_241} :catch_283
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_23b .. :try_end_241} :catch_27f

    .line 1076
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v8

    move-object/from16 v24, v7

    .end local v7    # "cpList":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    .local v24, "cpList":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    move-object v7, v0

    move-object v15, v8

    .end local v8    # "newKey":Ljava/security/PublicKey;
    .local v15, "newKey":Ljava/security/PublicKey;
    move-object/from16 v8, v22

    :try_start_24c
    invoke-direct/range {v1 .. v8}, Lsun/security/provider/certpath/RevocationChecker;->checkCRLs(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/security/cert/X509Certificate;ZZLjava/util/Set;Ljava/util/Set;)V
    :try_end_24f
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_24c .. :try_end_24f} :catch_250
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_24c .. :try_end_24f} :catch_283
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_24c .. :try_end_24f} :catch_27f

    .line 1079
    return-void

    .line 1080
    :catch_250
    move-exception v0

    goto :goto_256

    .end local v15    # "newKey":Ljava/security/PublicKey;
    .end local v24    # "cpList":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    .restart local v7    # "cpList":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    .restart local v8    # "newKey":Ljava/security/PublicKey;
    :catch_252
    move-exception v0

    move-object/from16 v24, v7

    move-object v15, v8

    .line 1082
    .end local v7    # "cpList":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    .end local v8    # "newKey":Ljava/security/PublicKey;
    .local v0, "cpve":Ljava/security/cert/CertPathValidatorException;
    .restart local v15    # "newKey":Ljava/security/PublicKey;
    .restart local v24    # "cpList":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    :goto_256
    :try_start_256
    invoke-virtual {v0}, Ljava/security/cert/CertPathValidatorException;->getReason()Ljava/security/cert/CertPathValidatorException$Reason;

    move-result-object v1

    sget-object v2, Ljava/security/cert/CertPathValidatorException$BasicReason;->REVOKED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    if-eq v1, v2, :cond_263

    .line 1088
    .end local v0    # "cpve":Ljava/security/cert/CertPathValidatorException;
    invoke-interface {v11, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1095
    nop

    .end local v4    # "newCert":Ljava/security/cert/X509Certificate;
    .end local v15    # "newKey":Ljava/security/PublicKey;
    .end local v16    # "cpbr":Ljava/security/cert/PKIXCertPathBuilderResult;
    .end local v17    # "ta":Ljava/security/cert/TrustAnchor;
    .end local v18    # "prevKey2":Ljava/security/PublicKey;
    .end local v19    # "signFlag":Z
    .end local v24    # "cpList":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    goto :goto_276

    .line 1083
    .restart local v0    # "cpve":Ljava/security/cert/CertPathValidatorException;
    .restart local v4    # "newCert":Ljava/security/cert/X509Certificate;
    .restart local v15    # "newKey":Ljava/security/PublicKey;
    .restart local v16    # "cpbr":Ljava/security/cert/PKIXCertPathBuilderResult;
    .restart local v17    # "ta":Ljava/security/cert/TrustAnchor;
    .restart local v18    # "prevKey2":Ljava/security/PublicKey;
    .restart local v19    # "signFlag":Z
    .restart local v24    # "cpList":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    :cond_263
    nop

    .end local v11    # "badKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/PublicKey;>;"
    .end local v12    # "certSel":Ljava/security/cert/X509CertSelector;
    .end local v13    # "newAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    .end local v14    # "builderParams":Ljava/security/cert/PKIXBuilderParameters;
    .end local v21    # "builder":Ljava/security/cert/CertPathBuilder;
    .end local v23    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .end local p0    # "this":Lsun/security/provider/certpath/RevocationChecker;
    .end local p1    # "currCert":Ljava/security/cert/X509Certificate;
    .end local p2    # "prevKey":Ljava/security/PublicKey;
    throw v0

    .line 1058
    .end local v0    # "cpve":Ljava/security/cert/CertPathValidatorException;
    .end local v15    # "newKey":Ljava/security/PublicKey;
    .end local v18    # "prevKey2":Ljava/security/PublicKey;
    .end local v19    # "signFlag":Z
    .end local v24    # "cpList":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    .restart local v1    # "prevKey2":Ljava/security/PublicKey;
    .restart local v2    # "signFlag":Z
    .local v4, "cpList":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    .restart local v6    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .local v7, "builder":Ljava/security/cert/CertPathBuilder;
    .restart local v11    # "badKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/PublicKey;>;"
    .restart local v12    # "certSel":Ljava/security/cert/X509CertSelector;
    .restart local v13    # "newAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    .restart local v14    # "builderParams":Ljava/security/cert/PKIXBuilderParameters;
    .restart local p0    # "this":Lsun/security/provider/certpath/RevocationChecker;
    .restart local p1    # "currCert":Ljava/security/cert/X509Certificate;
    .restart local p2    # "prevKey":Ljava/security/PublicKey;
    :catch_265
    move-exception v0

    move-object/from16 v24, v4

    move-object/from16 v23, v6

    move-object/from16 v21, v7

    move/from16 v20, v8

    .line 1060
    .end local v4    # "cpList":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    .end local v6    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .end local v7    # "builder":Ljava/security/cert/CertPathBuilder;
    .restart local v0    # "cpve":Ljava/security/cert/CertPathValidatorException;
    .restart local v21    # "builder":Ljava/security/cert/CertPathBuilder;
    .restart local v23    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .restart local v24    # "cpList":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    :goto_26e
    invoke-virtual/range {v16 .. v16}, Ljava/security/cert/PKIXCertPathBuilderResult;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_275
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_256 .. :try_end_275} :catch_283
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_256 .. :try_end_275} :catch_27f

    .line 1061
    nop

    .line 1019
    .end local v0    # "cpve":Ljava/security/cert/CertPathValidatorException;
    .end local v1    # "prevKey2":Ljava/security/PublicKey;
    .end local v2    # "signFlag":Z
    .end local v16    # "cpbr":Ljava/security/cert/PKIXCertPathBuilderResult;
    .end local v17    # "ta":Ljava/security/cert/TrustAnchor;
    .end local v24    # "cpList":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    :goto_276
    move/from16 v8, v20

    move-object/from16 v7, v21

    move-object/from16 v1, v23

    const/4 v15, 0x0

    goto/16 :goto_f0

    .line 1091
    :catch_27f
    move-exception v0

    move-object/from16 v1, v23

    goto :goto_29a

    .line 1089
    :catch_283
    move-exception v0

    move-object/from16 v1, v23

    goto :goto_2ab

    .line 1091
    .end local v21    # "builder":Ljava/security/cert/CertPathBuilder;
    .end local v23    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .restart local v6    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .restart local v7    # "builder":Ljava/security/cert/CertPathBuilder;
    :catch_287
    move-exception v0

    move-object/from16 v23, v6

    move-object/from16 v21, v7

    move-object/from16 v1, v23

    .end local v6    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .end local v7    # "builder":Ljava/security/cert/CertPathBuilder;
    .restart local v21    # "builder":Ljava/security/cert/CertPathBuilder;
    .restart local v23    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    goto :goto_29a

    .line 1089
    .end local v21    # "builder":Ljava/security/cert/CertPathBuilder;
    .end local v23    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .restart local v6    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .restart local v7    # "builder":Ljava/security/cert/CertPathBuilder;
    :catch_28f
    move-exception v0

    move-object/from16 v23, v6

    move-object/from16 v21, v7

    move-object/from16 v1, v23

    .end local v6    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .end local v7    # "builder":Ljava/security/cert/CertPathBuilder;
    .restart local v21    # "builder":Ljava/security/cert/CertPathBuilder;
    .restart local v23    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    goto :goto_2ab

    .line 1091
    .end local v21    # "builder":Ljava/security/cert/CertPathBuilder;
    .end local v23    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .local v1, "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .restart local v7    # "builder":Ljava/security/cert/CertPathBuilder;
    :catch_297
    move-exception v0

    move-object/from16 v21, v7

    .line 1092
    .end local v7    # "builder":Ljava/security/cert/CertPathBuilder;
    .local v0, "cpbe":Ljava/security/cert/CertPathBuilderException;
    .restart local v21    # "builder":Ljava/security/cert/CertPathBuilder;
    :goto_29a
    new-instance v8, Ljava/security/cert/CertPathValidatorException;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    sget-object v7, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

    const-string v3, "Could not determine revocation status"

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v8

    .line 1089
    .end local v0    # "cpbe":Ljava/security/cert/CertPathBuilderException;
    .end local v21    # "builder":Ljava/security/cert/CertPathBuilder;
    .restart local v7    # "builder":Ljava/security/cert/CertPathBuilder;
    :catch_2a8
    move-exception v0

    move-object/from16 v21, v7

    .line 1090
    .end local v7    # "builder":Ljava/security/cert/CertPathBuilder;
    .local v0, "iape":Ljava/security/InvalidAlgorithmParameterException;
    .restart local v21    # "builder":Ljava/security/cert/CertPathBuilder;
    :goto_2ab
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v2, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1014
    .end local v0    # "iape":Ljava/security/InvalidAlgorithmParameterException;
    .end local v21    # "builder":Ljava/security/cert/CertPathBuilder;
    .local v1, "builder":Ljava/security/cert/CertPathBuilder;
    .local p3, "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    :catch_2b1
    move-exception v0

    .line 1015
    .local v0, "nsae":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v2, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 955
    .end local v0    # "nsae":Ljava/security/NoSuchAlgorithmException;
    .end local v1    # "builder":Ljava/security/cert/CertPathBuilder;
    .end local v14    # "builderParams":Ljava/security/cert/PKIXBuilderParameters;
    :catch_2b8
    move-exception v0

    .line 956
    .local v0, "iape":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static blacklist certCanSignCrl(Ljava/security/cert/X509Certificate;)Z
    .registers 3
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    .line 779
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    .line 780
    .local v0, "keyUsage":[Z
    if-eqz v0, :cond_a

    .line 781
    const/4 v1, 0x6

    aget-boolean v1, v0, v1

    return v1

    .line 783
    :cond_a
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist check(Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/security/PublicKey;Z)V
    .registers 19
    .param p1, "xcert"    # Ljava/security/cert/X509Certificate;
    .param p3, "pubKey"    # Ljava/security/PublicKey;
    .param p4, "crlSignFlag"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/security/PublicKey;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 346
    .local p2, "unresolvedCritExts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object v7, p0

    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_39

    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RevocationChecker.check: checking cert\n  SN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v2}, Lsun/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n  Subject: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n  Issuer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 347
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 353
    :cond_39
    const/4 v8, 0x3

    const/4 v9, 0x1

    :try_start_3b
    iget-boolean v0, v7, Lsun/security/provider/certpath/RevocationChecker;->onlyEE:Z

    if-eqz v0, :cond_55

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_55

    .line 354
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_51

    .line 355
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    const-string v1, "Skipping revocation check; cert is not an end entity cert"

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_51
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_3b .. :try_end_51} :catch_83
    .catchall {:try_start_3b .. :try_end_51} :catchall_80

    .line 420
    :cond_51
    invoke-direct {p0, p1}, Lsun/security/provider/certpath/RevocationChecker;->updateState(Ljava/security/cert/X509Certificate;)V

    .line 358
    return-void

    .line 360
    :cond_55
    :try_start_55
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker$2;->$SwitchMap$sun$security$provider$certpath$RevocationChecker$Mode:[I

    iget-object v1, v7, Lsun/security/provider/certpath/RevocationChecker;->mode:Lsun/security/provider/certpath/RevocationChecker$Mode;

    invoke-virtual {v1}, Lsun/security/provider/certpath/RevocationChecker$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v9, :cond_77

    const/4 v1, 0x2

    if-eq v0, v1, :cond_77

    if-eq v0, v8, :cond_6a

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6a

    goto :goto_7b

    .line 367
    :cond_6a
    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lsun/security/provider/certpath/RevocationChecker;->checkCRLs(Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/util/Set;Ljava/security/PublicKey;Z)V

    goto :goto_7b

    .line 363
    :cond_77
    invoke-direct/range {p0 .. p2}, Lsun/security/provider/certpath/RevocationChecker;->checkOCSP(Ljava/security/cert/X509Certificate;Ljava/util/Collection;)V
    :try_end_7a
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_55 .. :try_end_7a} :catch_83
    .catchall {:try_start_55 .. :try_end_7a} :catchall_80

    .line 364
    nop

    .line 420
    :goto_7b
    invoke-direct {p0, p1}, Lsun/security/provider/certpath/RevocationChecker;->updateState(Ljava/security/cert/X509Certificate;)V

    .line 421
    goto/16 :goto_12d

    .line 420
    :catchall_80
    move-exception v0

    goto/16 :goto_13b

    .line 371
    :catch_83
    move-exception v0

    move-object v10, v0

    .line 372
    .local v10, "e":Ljava/security/cert/CertPathValidatorException;
    :try_start_85
    invoke-virtual {v10}, Ljava/security/cert/CertPathValidatorException;->getReason()Ljava/security/cert/CertPathValidatorException$Reason;

    move-result-object v0

    sget-object v1, Ljava/security/cert/CertPathValidatorException$BasicReason;->REVOKED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    if-eq v0, v1, :cond_139

    .line 375
    invoke-direct {p0, v10}, Lsun/security/provider/certpath/RevocationChecker;->isSoftFailException(Ljava/security/cert/CertPathValidatorException;)Z

    move-result v0

    move v11, v0

    .line 376
    .local v11, "eSoftFail":Z
    if-eqz v11, :cond_a4

    .line 377
    iget-object v0, v7, Lsun/security/provider/certpath/RevocationChecker;->mode:Lsun/security/provider/certpath/RevocationChecker$Mode;

    sget-object v1, Lsun/security/provider/certpath/RevocationChecker$Mode;->ONLY_OCSP:Lsun/security/provider/certpath/RevocationChecker$Mode;

    if-eq v0, v1, :cond_a0

    iget-object v0, v7, Lsun/security/provider/certpath/RevocationChecker;->mode:Lsun/security/provider/certpath/RevocationChecker$Mode;

    sget-object v1, Lsun/security/provider/certpath/RevocationChecker$Mode;->ONLY_CRLS:Lsun/security/provider/certpath/RevocationChecker$Mode;
    :try_end_9e
    .catchall {:try_start_85 .. :try_end_9e} :catchall_80

    if-ne v0, v1, :cond_b0

    .line 420
    :cond_a0
    invoke-direct {p0, p1}, Lsun/security/provider/certpath/RevocationChecker;->updateState(Ljava/security/cert/X509Certificate;)V

    .line 378
    return-void

    .line 381
    :cond_a4
    :try_start_a4
    iget-object v0, v7, Lsun/security/provider/certpath/RevocationChecker;->mode:Lsun/security/provider/certpath/RevocationChecker$Mode;

    sget-object v1, Lsun/security/provider/certpath/RevocationChecker$Mode;->ONLY_OCSP:Lsun/security/provider/certpath/RevocationChecker$Mode;

    if-eq v0, v1, :cond_137

    iget-object v0, v7, Lsun/security/provider/certpath/RevocationChecker;->mode:Lsun/security/provider/certpath/RevocationChecker$Mode;

    sget-object v1, Lsun/security/provider/certpath/RevocationChecker$Mode;->ONLY_CRLS:Lsun/security/provider/certpath/RevocationChecker$Mode;

    if-eq v0, v1, :cond_137

    .line 385
    :cond_b0
    move-object v12, v10

    .line 387
    .local v12, "cause":Ljava/security/cert/CertPathValidatorException;
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;
    :try_end_b3
    .catchall {:try_start_a4 .. :try_end_b3} :catchall_80

    const-string v13, "RevocationChecker.check() "

    if-eqz v0, :cond_d6

    .line 388
    :try_start_b7
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 389
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    const-string v1, "RevocationChecker.check() preparing to failover"

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_d6
    .catchall {:try_start_b7 .. :try_end_d6} :catchall_80

    .line 392
    :cond_d6
    :try_start_d6
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker$2;->$SwitchMap$sun$security$provider$certpath$RevocationChecker$Mode:[I

    iget-object v1, v7, Lsun/security/provider/certpath/RevocationChecker;->mode:Lsun/security/provider/certpath/RevocationChecker$Mode;

    invoke-virtual {v1}, Lsun/security/provider/certpath/RevocationChecker$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v9, :cond_e9

    if-eq v0, v8, :cond_e5

    goto :goto_f6

    .line 398
    :cond_e5
    invoke-direct/range {p0 .. p2}, Lsun/security/provider/certpath/RevocationChecker;->checkOCSP(Ljava/security/cert/X509Certificate;Ljava/util/Collection;)V

    goto :goto_f6

    .line 394
    :cond_e9
    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lsun/security/provider/certpath/RevocationChecker;->checkCRLs(Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/util/Set;Ljava/security/PublicKey;Z)V
    :try_end_f5
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_d6 .. :try_end_f5} :catch_f7
    .catchall {:try_start_d6 .. :try_end_f5} :catchall_80

    .line 396
    nop

    .line 418
    :goto_f6
    goto :goto_7b

    .line 401
    :catch_f7
    move-exception v0

    .line 402
    .local v0, "x":Ljava/security/cert/CertPathValidatorException;
    :try_start_f8
    sget-object v1, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_11b

    .line 403
    sget-object v1, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    const-string v2, "RevocationChecker.check() failover failed"

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 404
    sget-object v1, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 406
    :cond_11b
    invoke-virtual {v0}, Ljava/security/cert/CertPathValidatorException;->getReason()Ljava/security/cert/CertPathValidatorException$Reason;

    move-result-object v1

    sget-object v2, Ljava/security/cert/CertPathValidatorException$BasicReason;->REVOKED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    if-eq v1, v2, :cond_135

    .line 409
    invoke-direct {p0, v0}, Lsun/security/provider/certpath/RevocationChecker;->isSoftFailException(Ljava/security/cert/CertPathValidatorException;)Z

    move-result v1

    if-eqz v1, :cond_130

    .line 414
    if-eqz v11, :cond_12e

    goto/16 :goto_7b

    .line 422
    .end local v0    # "x":Ljava/security/cert/CertPathValidatorException;
    .end local v10    # "e":Ljava/security/cert/CertPathValidatorException;
    .end local v11    # "eSoftFail":Z
    .end local v12    # "cause":Ljava/security/cert/CertPathValidatorException;
    :goto_12d
    return-void

    .line 415
    .restart local v0    # "x":Ljava/security/cert/CertPathValidatorException;
    .restart local v10    # "e":Ljava/security/cert/CertPathValidatorException;
    .restart local v11    # "eSoftFail":Z
    .restart local v12    # "cause":Ljava/security/cert/CertPathValidatorException;
    :cond_12e
    nop

    .end local p0    # "this":Lsun/security/provider/certpath/RevocationChecker;
    .end local p1    # "xcert":Ljava/security/cert/X509Certificate;
    .end local p2    # "unresolvedCritExts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local p3    # "pubKey":Ljava/security/PublicKey;
    .end local p4    # "crlSignFlag":Z
    throw v12

    .line 410
    .restart local p0    # "this":Lsun/security/provider/certpath/RevocationChecker;
    .restart local p1    # "xcert":Ljava/security/cert/X509Certificate;
    .restart local p2    # "unresolvedCritExts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local p3    # "pubKey":Ljava/security/PublicKey;
    .restart local p4    # "crlSignFlag":Z
    :cond_130
    invoke-virtual {v12, v0}, Ljava/security/cert/CertPathValidatorException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 411
    nop

    .end local p0    # "this":Lsun/security/provider/certpath/RevocationChecker;
    .end local p1    # "xcert":Ljava/security/cert/X509Certificate;
    .end local p2    # "unresolvedCritExts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local p3    # "pubKey":Ljava/security/PublicKey;
    .end local p4    # "crlSignFlag":Z
    throw v12

    .line 407
    .restart local p0    # "this":Lsun/security/provider/certpath/RevocationChecker;
    .restart local p1    # "xcert":Ljava/security/cert/X509Certificate;
    .restart local p2    # "unresolvedCritExts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local p3    # "pubKey":Ljava/security/PublicKey;
    .restart local p4    # "crlSignFlag":Z
    :cond_135
    nop

    .end local p0    # "this":Lsun/security/provider/certpath/RevocationChecker;
    .end local p1    # "xcert":Ljava/security/cert/X509Certificate;
    .end local p2    # "unresolvedCritExts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local p3    # "pubKey":Ljava/security/PublicKey;
    .end local p4    # "crlSignFlag":Z
    throw v0

    .line 382
    .end local v0    # "x":Ljava/security/cert/CertPathValidatorException;
    .end local v12    # "cause":Ljava/security/cert/CertPathValidatorException;
    .restart local p0    # "this":Lsun/security/provider/certpath/RevocationChecker;
    .restart local p1    # "xcert":Ljava/security/cert/X509Certificate;
    .restart local p2    # "unresolvedCritExts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local p3    # "pubKey":Ljava/security/PublicKey;
    .restart local p4    # "crlSignFlag":Z
    :cond_137
    nop

    .end local p0    # "this":Lsun/security/provider/certpath/RevocationChecker;
    .end local p1    # "xcert":Ljava/security/cert/X509Certificate;
    .end local p2    # "unresolvedCritExts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local p3    # "pubKey":Ljava/security/PublicKey;
    .end local p4    # "crlSignFlag":Z
    throw v10

    .line 373
    .end local v11    # "eSoftFail":Z
    .restart local p0    # "this":Lsun/security/provider/certpath/RevocationChecker;
    .restart local p1    # "xcert":Ljava/security/cert/X509Certificate;
    .restart local p2    # "unresolvedCritExts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local p3    # "pubKey":Ljava/security/PublicKey;
    .restart local p4    # "crlSignFlag":Z
    :cond_139
    nop

    .end local p0    # "this":Lsun/security/provider/certpath/RevocationChecker;
    .end local p1    # "xcert":Ljava/security/cert/X509Certificate;
    .end local p2    # "unresolvedCritExts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local p3    # "pubKey":Ljava/security/PublicKey;
    .end local p4    # "crlSignFlag":Z
    throw v10
    :try_end_13b
    .catchall {:try_start_f8 .. :try_end_13b} :catchall_80

    .line 420
    .end local v10    # "e":Ljava/security/cert/CertPathValidatorException;
    .restart local p0    # "this":Lsun/security/provider/certpath/RevocationChecker;
    .restart local p1    # "xcert":Ljava/security/cert/X509Certificate;
    .restart local p2    # "unresolvedCritExts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local p3    # "pubKey":Ljava/security/PublicKey;
    .restart local p4    # "crlSignFlag":Z
    :goto_13b
    invoke-direct {p0, p1}, Lsun/security/provider/certpath/RevocationChecker;->updateState(Ljava/security/cert/X509Certificate;)V

    .line 421
    throw v0
.end method

.method private blacklist checkApprovedCRLs(Ljava/security/cert/X509Certificate;Ljava/util/Set;)V
    .registers 19
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Set<",
            "Ljava/security/cert/X509CRL;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 611
    .local p2, "approvedCRLs":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509CRL;>;"
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_29

    .line 612
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    .line 613
    .local v0, "sn":Ljava/math/BigInteger;
    sget-object v1, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    const-string v2, "RevocationChecker.checkApprovedCRLs() starting the final sweep..."

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 615
    sget-object v1, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RevocationChecker.checkApprovedCRLs() cert SN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 615
    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 619
    .end local v0    # "sn":Ljava/math/BigInteger;
    :cond_29
    sget-object v0, Ljava/security/cert/CRLReason;->UNSPECIFIED:Ljava/security/cert/CRLReason;

    .line 620
    .local v0, "reasonCode":Ljava/security/cert/CRLReason;
    const/4 v1, 0x0

    .line 621
    .local v1, "entry":Lsun/security/x509/X509CRLEntryImpl;
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v3, v1

    move-object v1, v0

    .end local v0    # "reasonCode":Ljava/security/cert/CRLReason;
    .local v1, "reasonCode":Ljava/security/cert/CRLReason;
    .local v3, "entry":Lsun/security/x509/X509CRLEntryImpl;
    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_dc

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/security/cert/X509CRL;

    .line 622
    .local v4, "crl":Ljava/security/cert/X509CRL;
    move-object/from16 v5, p1

    invoke-virtual {v4, v5}, Ljava/security/cert/X509CRL;->getRevokedCertificate(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509CRLEntry;

    move-result-object v6

    .line 623
    .local v6, "e":Ljava/security/cert/X509CRLEntry;
    if-eqz v6, :cond_d8

    .line 625
    :try_start_47
    invoke-static {v6}, Lsun/security/x509/X509CRLEntryImpl;->toImpl(Ljava/security/cert/X509CRLEntry;)Lsun/security/x509/X509CRLEntryImpl;

    move-result-object v0
    :try_end_4b
    .catch Ljava/security/cert/CRLException; {:try_start_47 .. :try_end_4b} :catch_cd

    .line 628
    .end local v3    # "entry":Lsun/security/x509/X509CRLEntryImpl;
    .local v0, "entry":Lsun/security/x509/X509CRLEntryImpl;
    nop

    .line 629
    sget-object v3, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_68

    .line 630
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RevocationChecker.checkApprovedCRLs() CRL entry: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    invoke-virtual {v0}, Lsun/security/x509/X509CRLEntryImpl;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 630
    invoke-virtual {v3, v7}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 639
    :cond_68
    invoke-virtual {v0}, Lsun/security/x509/X509CRLEntryImpl;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v3

    .line 640
    .local v3, "unresCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v3, :cond_95

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_95

    .line 642
    sget-object v7, Lsun/security/x509/PKIXExtensions;->ReasonCode_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v7}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 643
    sget-object v7, Lsun/security/x509/PKIXExtensions;->CertificateIssuer_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v7}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 644
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_8d

    goto :goto_95

    .line 645
    :cond_8d
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    const-string v7, "Unrecognized critical extension(s) in revoked CRL entry"

    invoke-direct {v2, v7}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 651
    :cond_95
    :goto_95
    invoke-virtual {v0}, Lsun/security/x509/X509CRLEntryImpl;->getRevocationReason()Ljava/security/cert/CRLReason;

    move-result-object v1

    .line 652
    if-nez v1, :cond_9d

    .line 653
    sget-object v1, Ljava/security/cert/CRLReason;->UNSPECIFIED:Ljava/security/cert/CRLReason;

    .line 655
    :cond_9d
    invoke-virtual {v0}, Lsun/security/x509/X509CRLEntryImpl;->getRevocationDate()Ljava/util/Date;

    move-result-object v7

    .line 656
    .local v7, "revocationDate":Ljava/util/Date;
    move-object/from16 v8, p0

    iget-object v9, v8, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v9}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->date()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v9

    if-nez v9, :cond_b1

    move-object v3, v0

    goto :goto_da

    .line 657
    :cond_b1
    new-instance v12, Ljava/security/cert/CertificateRevokedException;

    .line 659
    invoke-virtual {v4}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v0}, Lsun/security/x509/X509CRLEntryImpl;->getExtensions()Ljava/util/Map;

    move-result-object v9

    invoke-direct {v12, v7, v1, v2, v9}, Ljava/security/cert/CertificateRevokedException;-><init>(Ljava/util/Date;Ljava/security/cert/CRLReason;Ljavax/security/auth/x500/X500Principal;Ljava/util/Map;)V

    .line 660
    .local v12, "t":Ljava/lang/Throwable;
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    .line 661
    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    const/4 v14, -0x1

    sget-object v15, Ljava/security/cert/CertPathValidatorException$BasicReason;->REVOKED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    move-object v10, v2

    invoke-direct/range {v10 .. v15}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v2

    .line 626
    .end local v0    # "entry":Lsun/security/x509/X509CRLEntryImpl;
    .end local v7    # "revocationDate":Ljava/util/Date;
    .end local v12    # "t":Ljava/lang/Throwable;
    .local v3, "entry":Lsun/security/x509/X509CRLEntryImpl;
    :catch_cd
    move-exception v0

    move-object/from16 v8, p0

    move-object v2, v0

    move-object v0, v2

    .line 627
    .local v0, "ce":Ljava/security/cert/CRLException;
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v2, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 623
    .end local v0    # "ce":Ljava/security/cert/CRLException;
    :cond_d8
    move-object/from16 v8, p0

    .line 664
    .end local v4    # "crl":Ljava/security/cert/X509CRL;
    .end local v6    # "e":Ljava/security/cert/X509CRLEntry;
    :goto_da
    goto/16 :goto_32

    .line 665
    :cond_dc
    move-object/from16 v8, p0

    move-object/from16 v5, p1

    return-void
.end method

.method private blacklist checkCRLs(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/security/cert/X509Certificate;ZZLjava/util/Set;Ljava/util/Set;)V
    .registers 31
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p2, "prevKey"    # Ljava/security/PublicKey;
    .param p3, "prevCert"    # Ljava/security/cert/X509Certificate;
    .param p4, "signFlag"    # Z
    .param p5, "allowSeparateKey"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/security/PublicKey;",
            "Ljava/security/cert/X509Certificate;",
            "ZZ",
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 476
    .local p6, "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .local p7, "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p6

    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_f

    .line 477
    const-string v1, "RevocationChecker.checkCRLs() ---checking revocation status ..."

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 484
    :cond_f
    if-eqz v10, :cond_2e

    invoke-interface {v10, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 485
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_20

    .line 486
    const-string v1, "RevocationChecker.checkCRLs() circular dependency"

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 489
    :cond_20
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    sget-object v7, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

    const-string v3, "Could not determine revocation status"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v0

    .line 494
    :cond_2e
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v11, v0

    .line 495
    .local v11, "possibleCRLs":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509CRL;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v12, v0

    .line 496
    .local v12, "approvedCRLs":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509CRL;>;"
    new-instance v0, Ljava/security/cert/X509CRLSelector;

    invoke-direct {v0}, Ljava/security/cert/X509CRLSelector;-><init>()V

    move-object v15, v0

    .line 497
    .local v15, "sel":Ljava/security/cert/X509CRLSelector;
    invoke-virtual {v15, v9}, Ljava/security/cert/X509CRLSelector;->setCertificateChecking(Ljava/security/cert/X509Certificate;)V

    .line 498
    iget-object v0, v8, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v0}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->date()Ljava/util/Date;

    move-result-object v0

    const-wide/32 v1, 0xdbba0

    invoke-static {v15, v0, v1, v2}, Lsun/security/provider/certpath/CertPathHelper;->setDateAndTime(Ljava/security/cert/X509CRLSelector;Ljava/util/Date;J)V

    .line 501
    const/4 v0, 0x0

    .line 502
    .local v0, "networkFailureException":Ljava/security/cert/CertPathValidatorException;
    iget-object v1, v8, Lsun/security/provider/certpath/RevocationChecker;->certStores:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object/from16 v22, v0

    .end local v0    # "networkFailureException":Ljava/security/cert/CertPathValidatorException;
    .local v22, "networkFailureException":Ljava/security/cert/CertPathValidatorException;
    :goto_58
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bf

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/security/cert/CertStore;

    .line 504
    .local v2, "store":Ljava/security/cert/CertStore;
    :try_start_65
    invoke-virtual {v2, v15}, Ljava/security/cert/CertStore;->getCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_81

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/CRL;

    .line 505
    .local v3, "crl":Ljava/security/cert/CRL;
    move-object v4, v3

    check-cast v4, Ljava/security/cert/X509CRL;

    invoke-interface {v11, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_7f
    .catch Ljava/security/cert/CertStoreException; {:try_start_65 .. :try_end_7f} :catch_82

    .line 506
    nop

    .end local v3    # "crl":Ljava/security/cert/CRL;
    goto :goto_6d

    .line 520
    :cond_81
    goto :goto_be

    .line 507
    :catch_82
    move-exception v0

    .line 508
    .local v0, "e":Ljava/security/cert/CertStoreException;
    sget-object v3, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_9f

    .line 509
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RevocationChecker.checkCRLs() CertStoreException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    invoke-virtual {v0}, Ljava/security/cert/CertStoreException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 509
    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 512
    :cond_9f
    if-nez v22, :cond_be

    .line 513
    invoke-virtual {v2}, Ljava/security/cert/CertStore;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lsun/security/provider/certpath/CertStoreHelper;->isCausedByNetworkIssue(Ljava/lang/String;Ljava/security/cert/CertStoreException;)Z

    move-result v3

    if-eqz v3, :cond_be

    .line 515
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    const/16 v19, 0x0

    const/16 v20, -0x1

    sget-object v21, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

    const-string v17, "Unable to determine revocation status due to network error"

    move-object/from16 v16, v3

    move-object/from16 v18, v0

    invoke-direct/range {v16 .. v21}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    move-object/from16 v22, v3

    .line 521
    .end local v0    # "e":Ljava/security/cert/CertStoreException;
    .end local v2    # "store":Ljava/security/cert/CertStore;
    :cond_be
    :goto_be
    goto :goto_58

    .line 523
    :cond_bf
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_db

    .line 524
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RevocationChecker.checkCRLs() possible crls.size() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 524
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 527
    :cond_db
    const/16 v0, 0x9

    new-array v14, v0, [Z

    .line 528
    .local v14, "reasonsMask":[Z
    invoke-interface {v11}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f8

    .line 531
    move-object/from16 v1, p0

    move-object v2, v11

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p4

    move-object v6, v14

    move-object/from16 v7, p7

    invoke-direct/range {v1 .. v7}, Lsun/security/provider/certpath/RevocationChecker;->verifyPossibleCRLs(Ljava/util/Set;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Z[ZLjava/util/Set;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 536
    :cond_f8
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_114

    .line 537
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RevocationChecker.checkCRLs() approved crls.size() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 537
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 543
    :cond_114
    invoke-interface {v12}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_128

    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->ALL_REASONS:[Z

    .line 544
    invoke-static {v14, v0}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    if-eqz v0, :cond_128

    .line 546
    invoke-direct {v8, v9, v12}, Lsun/security/provider/certpath/RevocationChecker;->checkApprovedCRLs(Ljava/security/cert/X509Certificate;Ljava/util/Set;)V

    move-object v1, v14

    move-object v2, v15

    goto :goto_16f

    .line 551
    :cond_128
    :try_start_128
    iget-boolean v0, v8, Lsun/security/provider/certpath/RevocationChecker;->crlDP:Z
    :try_end_12a
    .catch Ljava/security/cert/CertStoreException; {:try_start_128 .. :try_end_12a} :catch_198

    if-eqz v0, :cond_15b

    .line 552
    :try_start_12c
    iget-object v0, v8, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    .line 554
    invoke-virtual {v0}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->sigProvider()Ljava/lang/String;

    move-result-object v17

    iget-object v0, v8, Lsun/security/provider/certpath/RevocationChecker;->certStores:Ljava/util/List;
    :try_end_134
    .catch Ljava/security/cert/CertStoreException; {:try_start_12c .. :try_end_134} :catch_153

    const/16 v21, 0x0

    .line 552
    move-object v13, v15

    move-object v1, v14

    .end local v14    # "reasonsMask":[Z
    .local v1, "reasonsMask":[Z
    move/from16 v14, p4

    move-object v2, v15

    .end local v15    # "sel":Ljava/security/cert/X509CRLSelector;
    .local v2, "sel":Ljava/security/cert/X509CRLSelector;
    move-object/from16 v15, p2

    move-object/from16 v16, p3

    move-object/from16 v18, v0

    move-object/from16 v19, v1

    move-object/from16 v20, p7

    :try_start_145
    invoke-static/range {v13 .. v21}, Lsun/security/provider/certpath/DistributionPointFetcher;->getCRLs(Ljava/security/cert/X509CRLSelector;ZLjava/security/PublicKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/util/List;[ZLjava/util/Set;Ljava/util/Date;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_14c
    .catch Ljava/security/cert/CertStoreException; {:try_start_145 .. :try_end_14c} :catch_14d

    goto :goto_15d

    .line 557
    :catch_14d
    move-exception v0

    move-object/from16 v3, p2

    move/from16 v4, p4

    goto :goto_19f

    .end local v1    # "reasonsMask":[Z
    .end local v2    # "sel":Ljava/security/cert/X509CRLSelector;
    .restart local v14    # "reasonsMask":[Z
    .restart local v15    # "sel":Ljava/security/cert/X509CRLSelector;
    :catch_153
    move-exception v0

    move-object v1, v14

    move-object v2, v15

    move-object/from16 v3, p2

    move/from16 v4, p4

    goto :goto_19f

    .line 551
    :cond_15b
    move-object v1, v14

    move-object v2, v15

    .line 569
    .end local v14    # "reasonsMask":[Z
    .end local v15    # "sel":Ljava/security/cert/X509CRLSelector;
    .restart local v1    # "reasonsMask":[Z
    .restart local v2    # "sel":Ljava/security/cert/X509CRLSelector;
    :goto_15d
    nop

    .line 570
    invoke-interface {v12}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_170

    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->ALL_REASONS:[Z

    .line 571
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    if-eqz v0, :cond_170

    .line 573
    invoke-direct {v8, v9, v12}, Lsun/security/provider/certpath/RevocationChecker;->checkApprovedCRLs(Ljava/security/cert/X509Certificate;Ljava/util/Set;)V

    .line 604
    :goto_16f
    return-void

    .line 575
    :cond_170
    if-eqz p5, :cond_181

    .line 577
    move-object/from16 v3, p2

    move/from16 v4, p4

    :try_start_176
    invoke-direct {v8, v9, v3, v4, v10}, Lsun/security/provider/certpath/RevocationChecker;->verifyWithSeparateSigningKey(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;ZLjava/util/Set;)V
    :try_end_179
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_176 .. :try_end_179} :catch_17a

    .line 579
    return-void

    .line 580
    :catch_17a
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 581
    .local v0, "cpve":Ljava/security/cert/CertPathValidatorException;
    if-eqz v22, :cond_180

    .line 586
    throw v22

    .line 588
    :cond_180
    throw v0

    .line 591
    .end local v0    # "cpve":Ljava/security/cert/CertPathValidatorException;
    :cond_181
    move-object/from16 v3, p2

    move/from16 v4, p4

    if-eqz v22, :cond_188

    .line 596
    throw v22

    .line 598
    :cond_188
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, -0x1

    sget-object v18, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

    const-string v14, "Could not determine revocation status"

    move-object v13, v0

    invoke-direct/range {v13 .. v18}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v0

    .line 557
    .end local v1    # "reasonsMask":[Z
    .end local v2    # "sel":Ljava/security/cert/X509CRLSelector;
    .restart local v14    # "reasonsMask":[Z
    .restart local v15    # "sel":Ljava/security/cert/X509CRLSelector;
    :catch_198
    move-exception v0

    move-object/from16 v3, p2

    move/from16 v4, p4

    move-object v1, v14

    move-object v2, v15

    .line 558
    .end local v14    # "reasonsMask":[Z
    .end local v15    # "sel":Ljava/security/cert/X509CRLSelector;
    .local v0, "e":Ljava/security/cert/CertStoreException;
    .restart local v1    # "reasonsMask":[Z
    .restart local v2    # "sel":Ljava/security/cert/X509CRLSelector;
    :goto_19f
    instance-of v5, v0, Lsun/security/provider/certpath/PKIX$CertStoreTypeException;

    if-eqz v5, :cond_1c0

    .line 559
    move-object v5, v0

    check-cast v5, Lsun/security/provider/certpath/PKIX$CertStoreTypeException;

    .line 560
    .local v5, "cste":Lsun/security/provider/certpath/PKIX$CertStoreTypeException;
    invoke-virtual {v5}, Lsun/security/provider/certpath/PKIX$CertStoreTypeException;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lsun/security/provider/certpath/CertStoreHelper;->isCausedByNetworkIssue(Ljava/lang/String;Ljava/security/cert/CertStoreException;)Z

    move-result v6

    if-eqz v6, :cond_1c0

    .line 562
    new-instance v6, Ljava/security/cert/CertPathValidatorException;

    const/16 v16, 0x0

    const/16 v17, -0x1

    sget-object v18, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

    const-string v14, "Unable to determine revocation status due to network error"

    move-object v13, v6

    move-object v15, v0

    invoke-direct/range {v13 .. v18}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v6

    .line 568
    .end local v5    # "cste":Lsun/security/provider/certpath/PKIX$CertStoreTypeException;
    :cond_1c0
    new-instance v5, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v5, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method private blacklist checkCRLs(Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/util/Set;Ljava/security/PublicKey;Z)V
    .registers 15
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p4, "pubKey"    # Ljava/security/PublicKey;
    .param p5, "signFlag"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/security/PublicKey;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 465
    .local p2, "unresolvedCritExts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p3, "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    .line 466
    invoke-virtual {v0}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->trustAnchors()Ljava/util/Set;

    move-result-object v8

    .line 465
    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move v5, p5

    move-object v7, p3

    invoke-direct/range {v1 .. v8}, Lsun/security/provider/certpath/RevocationChecker;->checkCRLs(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/security/cert/X509Certificate;ZZLjava/util/Set;Ljava/util/Set;)V

    .line 467
    return-void
.end method

.method private blacklist checkOCSP(Ljava/security/cert/X509Certificate;Ljava/util/Collection;)V
    .registers 16
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
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

    .line 671
    .local p2, "unresolvedCritExts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 673
    .local v0, "currCert":Lsun/security/x509/X509CertImpl;
    :try_start_1
    invoke-static {p1}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object v1
    :try_end_5
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_5} :catch_11c

    move-object v0, v1

    .line 676
    nop

    .line 682
    const/4 v1, 0x0

    .line 683
    .local v1, "response":Lsun/security/provider/certpath/OCSPResponse;
    const/4 v2, 0x0

    .line 685
    .local v2, "certId":Lsun/security/provider/certpath/CertId;
    :try_start_9
    iget-object v3, p0, Lsun/security/provider/certpath/RevocationChecker;->issuerCert:Ljava/security/cert/X509Certificate;

    if-eqz v3, :cond_1a

    .line 686
    new-instance v3, Lsun/security/provider/certpath/CertId;

    iget-object v4, p0, Lsun/security/provider/certpath/RevocationChecker;->issuerCert:Ljava/security/cert/X509Certificate;

    .line 687
    invoke-virtual {v0}, Lsun/security/x509/X509CertImpl;->getSerialNumberObject()Lsun/security/x509/SerialNumber;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lsun/security/provider/certpath/CertId;-><init>(Ljava/security/cert/X509Certificate;Lsun/security/x509/SerialNumber;)V

    move-object v2, v3

    goto :goto_30

    .line 690
    :cond_1a
    new-instance v3, Lsun/security/provider/certpath/CertId;

    iget-object v4, p0, Lsun/security/provider/certpath/RevocationChecker;->anchor:Ljava/security/cert/TrustAnchor;

    invoke-virtual {v4}, Ljava/security/cert/TrustAnchor;->getCA()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    iget-object v5, p0, Lsun/security/provider/certpath/RevocationChecker;->anchor:Ljava/security/cert/TrustAnchor;

    invoke-virtual {v5}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    .line 691
    invoke-virtual {v0}, Lsun/security/x509/X509CertImpl;->getSerialNumberObject()Lsun/security/x509/SerialNumber;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lsun/security/provider/certpath/CertId;-><init>(Ljavax/security/auth/x500/X500Principal;Ljava/security/PublicKey;Lsun/security/x509/SerialNumber;)V

    move-object v2, v3

    .line 695
    :goto_30
    iget-object v3, p0, Lsun/security/provider/certpath/RevocationChecker;->ocspResponses:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 696
    .local v3, "responseBytes":[B
    if-eqz v3, :cond_88

    .line 697
    sget-object v4, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_45

    .line 698
    sget-object v4, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    const-string v5, "Found cached OCSP response"

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 700
    :cond_45
    new-instance v4, Lsun/security/provider/certpath/OCSPResponse;

    invoke-direct {v4, v3}, Lsun/security/provider/certpath/OCSPResponse;-><init>([B)V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_4a} :catch_10d

    .line 703
    .end local v1    # "response":Lsun/security/provider/certpath/OCSPResponse;
    .local v4, "response":Lsun/security/provider/certpath/OCSPResponse;
    const/4 v1, 0x0

    .line 704
    .local v1, "nonce":[B
    :try_start_4b
    iget-object v5, p0, Lsun/security/provider/certpath/RevocationChecker;->ocspExtensions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_51
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/Extension;

    .line 705
    .local v6, "ext":Ljava/security/cert/Extension;
    invoke-interface {v6}, Ljava/security/cert/Extension;->getId()Ljava/lang/String;

    move-result-object v7

    const-string v8, "1.3.6.1.5.5.7.48.1.2"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6e

    .line 706
    invoke-interface {v6}, Ljava/security/cert/Extension;->getValue()[B

    move-result-object v7

    move-object v1, v7

    .line 708
    .end local v6    # "ext":Ljava/security/cert/Extension;
    :cond_6e
    goto :goto_51

    .line 709
    :cond_6f
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lsun/security/provider/certpath/RevocationChecker;->issuerCert:Ljava/security/cert/X509Certificate;

    iget-object v7, p0, Lsun/security/provider/certpath/RevocationChecker;->responderCert:Ljava/security/cert/X509Certificate;

    iget-object v8, p0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    .line 710
    invoke-virtual {v8}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->date()Ljava/util/Date;

    move-result-object v8

    .line 709
    move-object v9, v1

    invoke-virtual/range {v4 .. v9}, Lsun/security/provider/certpath/OCSPResponse;->verify(Ljava/util/List;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;[B)V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_81} :catch_83

    .line 712
    .end local v1    # "nonce":[B
    move-object v1, v4

    goto :goto_a7

    .line 726
    .end local v3    # "responseBytes":[B
    :catch_83
    move-exception v3

    move-object v5, v3

    move-object v1, v4

    goto/16 :goto_10f

    .line 713
    .end local v4    # "response":Lsun/security/provider/certpath/OCSPResponse;
    .local v1, "response":Lsun/security/provider/certpath/OCSPResponse;
    .restart local v3    # "responseBytes":[B
    :cond_88
    :try_start_88
    iget-object v4, p0, Lsun/security/provider/certpath/RevocationChecker;->responderURI:Ljava/net/URI;

    if-eqz v4, :cond_8f

    .line 714
    iget-object v4, p0, Lsun/security/provider/certpath/RevocationChecker;->responderURI:Ljava/net/URI;

    goto :goto_93

    .line 715
    :cond_8f
    invoke-static {v0}, Lsun/security/provider/certpath/OCSP;->getResponderURI(Lsun/security/x509/X509CertImpl;)Ljava/net/URI;

    move-result-object v4

    :goto_93
    nop

    .line 716
    .local v4, "responderURI":Ljava/net/URI;
    if-eqz v4, :cond_103

    .line 722
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iget-object v7, p0, Lsun/security/provider/certpath/RevocationChecker;->issuerCert:Ljava/security/cert/X509Certificate;

    iget-object v8, p0, Lsun/security/provider/certpath/RevocationChecker;->responderCert:Ljava/security/cert/X509Certificate;

    const/4 v9, 0x0

    iget-object v10, p0, Lsun/security/provider/certpath/RevocationChecker;->ocspExtensions:Ljava/util/List;

    move-object v6, v4

    invoke-static/range {v5 .. v10}, Lsun/security/provider/certpath/OCSP;->check(Ljava/util/List;Ljava/net/URI;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/util/List;)Lsun/security/provider/certpath/OCSPResponse;

    move-result-object v5
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_a6} :catch_10d

    move-object v1, v5

    .line 730
    .end local v3    # "responseBytes":[B
    .end local v4    # "responderURI":Ljava/net/URI;
    :goto_a7
    nop

    .line 732
    nop

    .line 733
    invoke-virtual {v1, v2}, Lsun/security/provider/certpath/OCSPResponse;->getSingleResponse(Lsun/security/provider/certpath/CertId;)Lsun/security/provider/certpath/OCSPResponse$SingleResponse;

    move-result-object v3

    .line 734
    .local v3, "rs":Lsun/security/provider/certpath/OCSP$RevocationStatus;
    invoke-interface {v3}, Lsun/security/provider/certpath/OCSP$RevocationStatus;->getCertStatus()Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    move-result-object v4

    .line 735
    .local v4, "certStatus":Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;
    sget-object v5, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;->REVOKED:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    if-ne v4, v5, :cond_ea

    .line 736
    invoke-interface {v3}, Lsun/security/provider/certpath/OCSP$RevocationStatus;->getRevocationTime()Ljava/util/Date;

    move-result-object v5

    .line 737
    .local v5, "revocationTime":Ljava/util/Date;
    iget-object v6, p0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v6}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->date()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v6

    if-nez v6, :cond_c6

    .end local v5    # "revocationTime":Ljava/util/Date;
    goto :goto_ee

    .line 738
    .restart local v5    # "revocationTime":Ljava/util/Date;
    :cond_c6
    new-instance v9, Ljava/security/cert/CertificateRevokedException;

    .line 739
    invoke-interface {v3}, Lsun/security/provider/certpath/OCSP$RevocationStatus;->getRevocationReason()Ljava/security/cert/CRLReason;

    move-result-object v6

    .line 740
    invoke-virtual {v1}, Lsun/security/provider/certpath/OCSPResponse;->getSignerCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v7

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    .line 741
    invoke-interface {v3}, Lsun/security/provider/certpath/OCSP$RevocationStatus;->getSingleExtensions()Ljava/util/Map;

    move-result-object v8

    invoke-direct {v9, v5, v6, v7, v8}, Ljava/security/cert/CertificateRevokedException;-><init>(Ljava/util/Date;Ljava/security/cert/CRLReason;Ljavax/security/auth/x500/X500Principal;Ljava/util/Map;)V

    .line 742
    .local v9, "t":Ljava/lang/Throwable;
    new-instance v6, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, -0x1

    sget-object v12, Ljava/security/cert/CertPathValidatorException$BasicReason;->REVOKED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    move-object v7, v6

    invoke-direct/range {v7 .. v12}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v6

    .line 745
    .end local v5    # "revocationTime":Ljava/util/Date;
    .end local v9    # "t":Ljava/lang/Throwable;
    :cond_ea
    sget-object v5, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;->UNKNOWN:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    if-eq v4, v5, :cond_f0

    :goto_ee
    nop

    .line 751
    return-void

    .line 746
    :cond_f0
    new-instance v5, Ljava/security/cert/CertPathValidatorException;

    const/4 v8, 0x0

    iget-object v6, p0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    .line 748
    invoke-virtual {v6}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certPath()Ljava/security/cert/CertPath;

    move-result-object v9

    const/4 v10, -0x1

    sget-object v11, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

    const-string v7, "Certificate\'s revocation status is unknown"

    move-object v6, v5

    invoke-direct/range {v6 .. v11}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v5

    .line 717
    .local v3, "responseBytes":[B
    .local v4, "responderURI":Ljava/net/URI;
    :cond_103
    :try_start_103
    new-instance v5, Ljava/security/cert/CertPathValidatorException;

    const-string v6, "Certificate does not specify OCSP responder"

    const/4 v7, -0x1

    const/4 v8, 0x0

    invoke-direct {v5, v6, v8, v8, v7}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    .end local v0    # "currCert":Lsun/security/x509/X509CertImpl;
    .end local v1    # "response":Lsun/security/provider/certpath/OCSPResponse;
    .end local v2    # "certId":Lsun/security/provider/certpath/CertId;
    .end local p0    # "this":Lsun/security/provider/certpath/RevocationChecker;
    .end local p1    # "cert":Ljava/security/cert/X509Certificate;
    .end local p2    # "unresolvedCritExts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    throw v5
    :try_end_10d
    .catch Ljava/io/IOException; {:try_start_103 .. :try_end_10d} :catch_10d

    .line 726
    .end local v3    # "responseBytes":[B
    .end local v4    # "responderURI":Ljava/net/URI;
    .restart local v0    # "currCert":Lsun/security/x509/X509CertImpl;
    .restart local v1    # "response":Lsun/security/provider/certpath/OCSPResponse;
    .restart local v2    # "certId":Lsun/security/provider/certpath/CertId;
    .restart local p0    # "this":Lsun/security/provider/certpath/RevocationChecker;
    .restart local p1    # "cert":Ljava/security/cert/X509Certificate;
    .restart local p2    # "unresolvedCritExts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :catch_10d
    move-exception v3

    move-object v5, v3

    .line 727
    .local v5, "e":Ljava/io/IOException;
    :goto_10f
    new-instance v9, Ljava/security/cert/CertPathValidatorException;

    const/4 v6, 0x0

    const/4 v7, -0x1

    sget-object v8, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

    const-string v4, "Unable to determine revocation status due to network error"

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v9

    .line 674
    .end local v1    # "response":Lsun/security/provider/certpath/OCSPResponse;
    .end local v2    # "certId":Lsun/security/provider/certpath/CertId;
    .end local v5    # "e":Ljava/io/IOException;
    :catch_11c
    move-exception v1

    .line 675
    .local v1, "ce":Ljava/security/cert/CertificateException;
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v2, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static blacklist getResponderCert(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;)Ljava/security/cert/X509Certificate;
    .registers 8
    .param p0, "issuer"    # Ljava/lang/String;
    .param p1, "serial"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;",
            "Ljava/util/List<",
            "Ljava/security/cert/CertStore;",
            ">;)",
            "Ljava/security/cert/X509Certificate;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 246
    .local p2, "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    .local p3, "stores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    new-instance v0, Ljava/security/cert/X509CertSelector;

    invoke-direct {v0}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 248
    .local v0, "sel":Ljava/security/cert/X509CertSelector;
    :try_start_5
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v1, p0}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CertSelector;->setIssuer(Ljavax/security/auth/x500/X500Principal;)V
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_d} :catch_2b

    .line 252
    nop

    .line 254
    :try_start_e
    new-instance v1, Ljava/math/BigInteger;

    invoke-static {p1}, Lsun/security/provider/certpath/RevocationChecker;->stripOutSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CertSelector;->setSerialNumber(Ljava/math/BigInteger;)V
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_1c} :catch_22

    .line 258
    nop

    .line 259
    invoke-static {v0, p2, p3}, Lsun/security/provider/certpath/RevocationChecker;->getResponderCert(Ljava/security/cert/X509CertSelector;Ljava/util/Set;Ljava/util/List;)Ljava/security/cert/X509Certificate;

    move-result-object v1

    return-object v1

    .line 255
    :catch_22
    move-exception v1

    .line 256
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    const-string v3, "cannot parse ocsp.responderCertSerialNumber property"

    invoke-direct {v2, v3, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 249
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_2b
    move-exception v1

    .line 250
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    const-string v3, "cannot parse ocsp.responderCertIssuerName property"

    invoke-direct {v2, v3, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static blacklist getResponderCert(Ljava/lang/String;Ljava/util/Set;Ljava/util/List;)Ljava/security/cert/X509Certificate;
    .registers 7
    .param p0, "subject"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;",
            "Ljava/util/List<",
            "Ljava/security/cert/CertStore;",
            ">;)",
            "Ljava/security/cert/X509Certificate;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 230
    .local p1, "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    .local p2, "stores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    new-instance v0, Ljava/security/cert/X509CertSelector;

    invoke-direct {v0}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 232
    .local v0, "sel":Ljava/security/cert/X509CertSelector;
    :try_start_5
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v1, p0}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CertSelector;->setSubject(Ljavax/security/auth/x500/X500Principal;)V
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_d} :catch_13

    .line 236
    nop

    .line 237
    invoke-static {v0, p1, p2}, Lsun/security/provider/certpath/RevocationChecker;->getResponderCert(Ljava/security/cert/X509CertSelector;Ljava/util/Set;Ljava/util/List;)Ljava/security/cert/X509Certificate;

    move-result-object v1

    return-object v1

    .line 233
    :catch_13
    move-exception v1

    .line 234
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    const-string v3, "cannot parse ocsp.responderCertSubjectName property"

    invoke-direct {v2, v3, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static blacklist getResponderCert(Ljava/security/cert/X509CertSelector;Ljava/util/Set;Ljava/util/List;)Ljava/security/cert/X509Certificate;
    .registers 9
    .param p0, "sel"    # Ljava/security/cert/X509CertSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509CertSelector;",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;",
            "Ljava/util/List<",
            "Ljava/security/cert/CertStore;",
            ">;)",
            "Ljava/security/cert/X509Certificate;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 268
    .local p1, "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    .local p2, "stores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/TrustAnchor;

    .line 269
    .local v1, "anchor":Ljava/security/cert/TrustAnchor;
    invoke-virtual {v1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 270
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    if-nez v2, :cond_17

    .line 271
    goto :goto_4

    .line 273
    :cond_17
    invoke-virtual {p0, v2}, Ljava/security/cert/X509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 274
    return-object v2

    .line 276
    .end local v1    # "anchor":Ljava/security/cert/TrustAnchor;
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    :cond_1e
    goto :goto_4

    .line 278
    :cond_1f
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/CertStore;

    .line 280
    .local v1, "store":Ljava/security/cert/CertStore;
    nop

    .line 281
    :try_start_30
    invoke-virtual {v1, p0}, Ljava/security/cert/CertStore;->getCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;

    move-result-object v2

    .line 282
    .local v2, "certs":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/security/cert/Certificate;>;"
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_45

    .line 283
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;
    :try_end_44
    .catch Ljava/security/cert/CertStoreException; {:try_start_30 .. :try_end_44} :catch_47

    return-object v3

    .line 291
    .end local v2    # "certs":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/security/cert/Certificate;>;"
    :cond_45
    nop

    .line 292
    .end local v1    # "store":Ljava/security/cert/CertStore;
    goto :goto_23

    .line 285
    .restart local v1    # "store":Ljava/security/cert/CertStore;
    :catch_47
    move-exception v2

    .line 287
    .local v2, "e":Ljava/security/cert/CertStoreException;
    sget-object v3, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_60

    .line 288
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CertStore exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 290
    :cond_60
    goto :goto_23

    .line 293
    .end local v1    # "store":Ljava/security/cert/CertStore;
    .end local v2    # "e":Ljava/security/cert/CertStoreException;
    :cond_61
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Cannot find the responder\'s certificate (set using the OCSP security properties)."

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist getResponderCert(Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;Ljava/util/Set;Ljava/util/List;)Ljava/security/cert/X509Certificate;
    .registers 5
    .param p0, "rp"    # Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;",
            "Ljava/util/List<",
            "Ljava/security/cert/CertStore;",
            ">;)",
            "Ljava/security/cert/X509Certificate;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 212
    .local p1, "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    .local p2, "stores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspSubject:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 213
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspSubject:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lsun/security/provider/certpath/RevocationChecker;->getResponderCert(Ljava/lang/String;Ljava/util/Set;Ljava/util/List;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0

    .line 214
    :cond_b
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspIssuer:Ljava/lang/String;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspSerial:Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 215
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspIssuer:Ljava/lang/String;

    iget-object v1, p0, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspSerial:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lsun/security/provider/certpath/RevocationChecker;->getResponderCert(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0

    .line 217
    :cond_1c
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspIssuer:Ljava/lang/String;

    if-nez v0, :cond_26

    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspSerial:Ljava/lang/String;

    if-nez v0, :cond_26

    .line 222
    const/4 v0, 0x0

    return-object v0

    .line 218
    :cond_26
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Must specify both ocsp.responderCertIssuerName and ocsp.responderCertSerialNumber properties"

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist getRevocationProperties()Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;
    .registers 1

    .line 181
    new-instance v0, Lsun/security/provider/certpath/RevocationChecker$1;

    invoke-direct {v0}, Lsun/security/provider/certpath/RevocationChecker$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;

    return-object v0
.end method

.method private blacklist isSoftFailException(Ljava/security/cert/CertPathValidatorException;)Z
    .registers 10
    .param p1, "e"    # Ljava/security/cert/CertPathValidatorException;

    .line 425
    iget-boolean v0, p0, Lsun/security/provider/certpath/RevocationChecker;->softFail:Z

    if-eqz v0, :cond_2d

    .line 426
    invoke-virtual {p1}, Ljava/security/cert/CertPathValidatorException;->getReason()Ljava/security/cert/CertPathValidatorException$Reason;

    move-result-object v0

    sget-object v1, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

    if-ne v0, v1, :cond_2d

    .line 429
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    .line 430
    invoke-virtual {p1}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/security/cert/CertPathValidatorException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    iget-object v1, p0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certPath()Ljava/security/cert/CertPath;

    move-result-object v5

    iget v6, p0, Lsun/security/provider/certpath/RevocationChecker;->certIndex:I

    .line 431
    invoke-virtual {p1}, Ljava/security/cert/CertPathValidatorException;->getReason()Ljava/security/cert/CertPathValidatorException$Reason;

    move-result-object v7

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    .line 432
    .local v0, "e2":Ljava/security/cert/CertPathValidatorException;
    iget-object v1, p0, Lsun/security/provider/certpath/RevocationChecker;->softFailExceptions:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 433
    const/4 v1, 0x1

    return v1

    .line 435
    .end local v0    # "e2":Ljava/security/cert/CertPathValidatorException;
    :cond_2d
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist stripOutSeparators(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "value"    # Ljava/lang/String;

    .line 758
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 759
    .local v0, "chars":[C
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 760
    .local v1, "hexNumber":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    array-length v3, v0

    if-ge v2, v3, :cond_20

    .line 761
    aget-char v3, v0, v2

    const-string v4, "0123456789ABCDEFabcdef"

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1d

    .line 762
    aget-char v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 760
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 765
    .end local v2    # "i":I
    :cond_20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist toURI(Ljava/lang/String;)Ljava/net/URI;
    .registers 4
    .param p0, "uriString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 170
    if-eqz p0, :cond_11

    .line 171
    :try_start_2
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_7} :catch_8

    return-object v0

    .line 174
    :catch_8
    move-exception v0

    .line 175
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    const-string v2, "cannot parse ocsp.responderURL property"

    invoke-direct {v1, v2, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 173
    .end local v0    # "e":Ljava/net/URISyntaxException;
    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist updateState(Ljava/security/cert/X509Certificate;)V
    .registers 4
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 441
    iput-object p1, p0, Lsun/security/provider/certpath/RevocationChecker;->issuerCert:Ljava/security/cert/X509Certificate;

    .line 444
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    .line 445
    .local v0, "pubKey":Ljava/security/PublicKey;
    invoke-static {v0}, Lsun/security/provider/certpath/PKIX;->isDSAPublicKeyWithoutParams(Ljava/security/PublicKey;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 447
    iget-object v1, p0, Lsun/security/provider/certpath/RevocationChecker;->prevPubKey:Ljava/security/PublicKey;

    invoke-static {v0, v1}, Lsun/security/provider/certpath/BasicChecker;->makeInheritedParamsKey(Ljava/security/PublicKey;Ljava/security/PublicKey;)Ljava/security/PublicKey;

    move-result-object v0

    .line 449
    :cond_12
    iput-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->prevPubKey:Ljava/security/PublicKey;

    .line 450
    invoke-static {p1}, Lsun/security/provider/certpath/RevocationChecker;->certCanSignCrl(Ljava/security/cert/X509Certificate;)Z

    move-result v1

    iput-boolean v1, p0, Lsun/security/provider/certpath/RevocationChecker;->crlSignFlag:Z

    .line 451
    iget v1, p0, Lsun/security/provider/certpath/RevocationChecker;->certIndex:I

    if-lez v1, :cond_22

    .line 452
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lsun/security/provider/certpath/RevocationChecker;->certIndex:I

    .line 454
    :cond_22
    return-void
.end method

.method private blacklist verifyPossibleCRLs(Ljava/util/Set;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Z[ZLjava/util/Set;)Ljava/util/Collection;
    .registers 26
    .param p2, "cert"    # Ljava/security/cert/X509Certificate;
    .param p3, "prevKey"    # Ljava/security/PublicKey;
    .param p4, "signFlag"    # Z
    .param p5, "reasonsMask"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/security/cert/X509CRL;",
            ">;",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/security/PublicKey;",
            "Z[Z",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .local p1, "crls":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509CRL;>;"
    .local p6, "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    move-object/from16 v1, p0

    .line 809
    :try_start_2
    invoke-static/range {p2 .. p2}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object v2

    .line 810
    .local v2, "certImpl":Lsun/security/x509/X509CertImpl;
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_24

    .line 811
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RevocationChecker.verifyPossibleCRLs: Checking CRLDPs for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    invoke-virtual {v2}, Lsun/security/x509/X509CertImpl;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 811
    invoke-virtual {v0, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 815
    :cond_24
    nop

    .line 816
    invoke-virtual {v2}, Lsun/security/x509/X509CertImpl;->getCRLDistributionPointsExtension()Lsun/security/x509/CRLDistributionPointsExtension;

    move-result-object v0

    .line 817
    .local v0, "ext":Lsun/security/x509/CRLDistributionPointsExtension;
    const/4 v3, 0x0

    .line 818
    .local v3, "points":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/DistributionPoint;>;"
    if-nez v0, :cond_4d

    .line 822
    invoke-virtual {v2}, Lsun/security/x509/X509CertImpl;->getIssuerDN()Ljava/security/Principal;

    move-result-object v4

    check-cast v4, Lsun/security/x509/X500Name;

    .line 823
    .local v4, "certIssuer":Lsun/security/x509/X500Name;
    new-instance v5, Lsun/security/x509/DistributionPoint;

    new-instance v6, Lsun/security/x509/GeneralNames;

    invoke-direct {v6}, Lsun/security/x509/GeneralNames;-><init>()V

    new-instance v7, Lsun/security/x509/GeneralName;

    invoke-direct {v7, v4}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/x509/GeneralNameInterface;)V

    .line 824
    invoke-virtual {v6, v7}, Lsun/security/x509/GeneralNames;->add(Lsun/security/x509/GeneralName;)Lsun/security/x509/GeneralNames;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7, v7}, Lsun/security/x509/DistributionPoint;-><init>(Lsun/security/x509/GeneralNames;[ZLsun/security/x509/GeneralNames;)V

    .line 826
    .local v5, "point":Lsun/security/x509/DistributionPoint;
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    move-object v3, v6

    .line 827
    .end local v4    # "certIssuer":Lsun/security/x509/X500Name;
    .end local v5    # "point":Lsun/security/x509/DistributionPoint;
    move-object v13, v3

    goto :goto_55

    .line 828
    :cond_4d
    const-string v4, "points"

    invoke-virtual {v0, v4}, Lsun/security/x509/CRLDistributionPointsExtension;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    move-object v3, v4

    move-object v13, v3

    .line 830
    .end local v3    # "points":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/DistributionPoint;>;"
    .local v13, "points":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/DistributionPoint;>;"
    :goto_55
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move-object v14, v3

    .line 831
    .local v14, "results":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509CRL;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_5f
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/security/x509/DistributionPoint;

    .line 832
    .local v3, "point":Lsun/security/x509/DistributionPoint;
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_6f
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509CRL;

    move-object v12, v4

    .line 833
    .local v12, "crl":Ljava/security/cert/X509CRL;
    const/4 v8, 0x0

    iget-object v4, v1, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    .line 835
    invoke-virtual {v4}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->sigProvider()Ljava/lang/String;

    move-result-object v9

    iget-object v11, v1, Lsun/security/provider/certpath/RevocationChecker;->certStores:Ljava/util/List;

    iget-object v4, v1, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    .line 836
    invoke-virtual {v4}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->date()Ljava/util/Date;

    move-result-object v17

    .line 833
    move-object v4, v12

    move-object/from16 v5, p5

    move/from16 v6, p4

    move-object/from16 v7, p3

    move-object/from16 v10, p6

    move-object/from16 v18, v0

    move-object v0, v12

    .end local v12    # "crl":Ljava/security/cert/X509CRL;
    .local v0, "crl":Ljava/security/cert/X509CRL;
    .local v18, "ext":Lsun/security/x509/CRLDistributionPointsExtension;
    move-object/from16 v12, v17

    invoke-static/range {v2 .. v12}, Lsun/security/provider/certpath/DistributionPointFetcher;->verifyCRL(Lsun/security/x509/X509CertImpl;Lsun/security/x509/DistributionPoint;Ljava/security/cert/X509CRL;[ZZLjava/security/PublicKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_a2

    .line 838
    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 840
    .end local v0    # "crl":Ljava/security/cert/X509CRL;
    :cond_a2
    move-object/from16 v0, v18

    goto :goto_6f

    .line 841
    .end local v18    # "ext":Lsun/security/x509/CRLDistributionPointsExtension;
    .local v0, "ext":Lsun/security/x509/CRLDistributionPointsExtension;
    :cond_a5
    move-object/from16 v18, v0

    .end local v0    # "ext":Lsun/security/x509/CRLDistributionPointsExtension;
    .restart local v18    # "ext":Lsun/security/x509/CRLDistributionPointsExtension;
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->ALL_REASONS:[Z
    :try_end_a9
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_a9} :catch_bc
    .catch Ljava/security/cert/CRLException; {:try_start_2 .. :try_end_a9} :catch_bc
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_a9} :catch_bc

    move-object/from16 v4, p5

    :try_start_ab
    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0
    :try_end_af
    .catch Ljava/security/cert/CertificateException; {:try_start_ab .. :try_end_af} :catch_b5
    .catch Ljava/security/cert/CRLException; {:try_start_ab .. :try_end_af} :catch_b5
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_af} :catch_b5

    if-eqz v0, :cond_b2

    .line 842
    goto :goto_bb

    .line 843
    .end local v3    # "point":Lsun/security/x509/DistributionPoint;
    :cond_b2
    move-object/from16 v0, v18

    goto :goto_5f

    .line 845
    .end local v2    # "certImpl":Lsun/security/x509/X509CertImpl;
    .end local v13    # "points":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/DistributionPoint;>;"
    .end local v14    # "results":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509CRL;>;"
    .end local v18    # "ext":Lsun/security/x509/CRLDistributionPointsExtension;
    :catch_b5
    move-exception v0

    goto :goto_bf

    .line 831
    .restart local v0    # "ext":Lsun/security/x509/CRLDistributionPointsExtension;
    .restart local v2    # "certImpl":Lsun/security/x509/X509CertImpl;
    .restart local v13    # "points":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/DistributionPoint;>;"
    .restart local v14    # "results":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509CRL;>;"
    :cond_b7
    move-object/from16 v4, p5

    move-object/from16 v18, v0

    .line 844
    .end local v0    # "ext":Lsun/security/x509/CRLDistributionPointsExtension;
    .restart local v18    # "ext":Lsun/security/x509/CRLDistributionPointsExtension;
    :goto_bb
    return-object v14

    .line 845
    .end local v2    # "certImpl":Lsun/security/x509/X509CertImpl;
    .end local v13    # "points":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/DistributionPoint;>;"
    .end local v14    # "results":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509CRL;>;"
    .end local v18    # "ext":Lsun/security/x509/CRLDistributionPointsExtension;
    :catch_bc
    move-exception v0

    move-object/from16 v4, p5

    .line 846
    .local v0, "e":Ljava/lang/Exception;
    :goto_bf
    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_de

    .line 847
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while verifying CRL: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 848
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 850
    :cond_de
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    return-object v2
.end method

.method private blacklist verifyWithSeparateSigningKey(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;ZLjava/util/Set;)V
    .registers 14
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p2, "prevKey"    # Ljava/security/PublicKey;
    .param p3, "signFlag"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/security/PublicKey;",
            "Z",
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 882
    .local p4, "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    const-string v0, "revocation status"

    .line 883
    .local v0, "msg":Ljava/lang/String;
    sget-object v1, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_1f

    .line 884
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RevocationChecker.verifyWithSeparateSigningKey() ---checking "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 892
    :cond_1f
    if-eqz p4, :cond_3e

    invoke-interface {p4, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 893
    sget-object v1, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_30

    .line 894
    const-string v2, "RevocationChecker.verifyWithSeparateSigningKey() circular dependency"

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 898
    :cond_30
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    sget-object v8, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

    const-string v4, "Could not determine revocation status"

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v1

    .line 907
    :cond_3e
    if-nez p3, :cond_45

    .line 908
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, p4}, Lsun/security/provider/certpath/RevocationChecker;->buildToNewKey(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/Set;)V

    goto :goto_48

    .line 910
    :cond_45
    invoke-direct {p0, p1, p2, p4}, Lsun/security/provider/certpath/RevocationChecker;->buildToNewKey(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/Set;)V

    .line 912
    :goto_48
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    .registers 6
    .param p1, "cert"    # Ljava/security/cert/Certificate;
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

    .line 337
    .local p2, "unresolvedCritExts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509Certificate;

    iget-object v1, p0, Lsun/security/provider/certpath/RevocationChecker;->prevPubKey:Ljava/security/PublicKey;

    iget-boolean v2, p0, Lsun/security/provider/certpath/RevocationChecker;->crlSignFlag:Z

    invoke-direct {p0, v0, p2, v1, v2}, Lsun/security/provider/certpath/RevocationChecker;->check(Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/security/PublicKey;Z)V

    .line 339
    return-void
.end method

.method public bridge synthetic whitelist core-platform-api test-api clone()Ljava/lang/Object;
    .registers 2

    .line 51
    invoke-virtual {p0}, Lsun/security/provider/certpath/RevocationChecker;->clone()Lsun/security/provider/certpath/RevocationChecker;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api clone()Ljava/security/cert/PKIXRevocationChecker;
    .registers 2

    .line 51
    invoke-virtual {p0}, Lsun/security/provider/certpath/RevocationChecker;->clone()Lsun/security/provider/certpath/RevocationChecker;

    move-result-object v0

    return-object v0
.end method

.method public blacklist clone()Lsun/security/provider/certpath/RevocationChecker;
    .registers 4

    .line 1101
    invoke-super {p0}, Ljava/security/cert/PKIXRevocationChecker;->clone()Ljava/security/cert/PKIXRevocationChecker;

    move-result-object v0

    check-cast v0, Lsun/security/provider/certpath/RevocationChecker;

    .line 1104
    .local v0, "copy":Lsun/security/provider/certpath/RevocationChecker;
    new-instance v1, Ljava/util/LinkedList;

    iget-object v2, p0, Lsun/security/provider/certpath/RevocationChecker;->softFailExceptions:Ljava/util/LinkedList;

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lsun/security/provider/certpath/RevocationChecker;->softFailExceptions:Ljava/util/LinkedList;

    .line 1105
    return-object v0
.end method

.method public whitelist core-platform-api test-api getSoftFailExceptions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/CertPathValidatorException;",
            ">;"
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->softFailExceptions:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getSupportedExtensions()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 325
    const/4 v0, 0x0

    return-object v0
.end method

.method blacklist init(Ljava/security/cert/TrustAnchor;Lsun/security/provider/certpath/PKIX$ValidatorParams;)V
    .registers 12
    .param p1, "anchor"    # Ljava/security/cert/TrustAnchor;
    .param p2, "params"    # Lsun/security/provider/certpath/PKIX$ValidatorParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 102
    invoke-static {}, Lsun/security/provider/certpath/RevocationChecker;->getRevocationProperties()Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;

    move-result-object v0

    .line 103
    .local v0, "rp":Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;
    invoke-virtual {p0}, Lsun/security/provider/certpath/RevocationChecker;->getOcspResponder()Ljava/net/URI;

    move-result-object v1

    .line 104
    .local v1, "uri":Ljava/net/URI;
    if-nez v1, :cond_11

    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspUrl:Ljava/lang/String;

    invoke-static {v2}, Lsun/security/provider/certpath/RevocationChecker;->toURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    goto :goto_12

    :cond_11
    move-object v2, v1

    :goto_12
    iput-object v2, p0, Lsun/security/provider/certpath/RevocationChecker;->responderURI:Ljava/net/URI;

    .line 105
    invoke-virtual {p0}, Lsun/security/provider/certpath/RevocationChecker;->getOcspResponderCert()Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 106
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    if-nez v2, :cond_27

    .line 107
    invoke-virtual {p2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->trustAnchors()Ljava/util/Set;

    move-result-object v3

    .line 108
    invoke-virtual {p2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certStores()Ljava/util/List;

    move-result-object v4

    .line 107
    invoke-static {v0, v3, v4}, Lsun/security/provider/certpath/RevocationChecker;->getResponderCert(Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;Ljava/util/Set;Ljava/util/List;)Ljava/security/cert/X509Certificate;

    move-result-object v3

    goto :goto_28

    .line 109
    :cond_27
    move-object v3, v2

    :goto_28
    iput-object v3, p0, Lsun/security/provider/certpath/RevocationChecker;->responderCert:Ljava/security/cert/X509Certificate;

    .line 110
    invoke-virtual {p0}, Lsun/security/provider/certpath/RevocationChecker;->getOptions()Ljava/util/Set;

    move-result-object v3

    .line 111
    .local v3, "options":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PKIXRevocationChecker$Option;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_32
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_6c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/PKIXRevocationChecker$Option;

    .line 112
    .local v5, "option":Ljava/security/cert/PKIXRevocationChecker$Option;
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker$2;->$SwitchMap$java$security$cert$PKIXRevocationChecker$Option:[I

    invoke-virtual {v5}, Ljava/security/cert/PKIXRevocationChecker$Option;->ordinal()I

    move-result v8

    aget v7, v7, v8

    if-eq v7, v6, :cond_6a

    const/4 v6, 0x2

    if-eq v7, v6, :cond_6a

    const/4 v6, 0x3

    if-eq v7, v6, :cond_6a

    const/4 v6, 0x4

    if-ne v7, v6, :cond_53

    goto :goto_6a

    .line 119
    :cond_53
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unrecognized revocation parameter option: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 117
    :cond_6a
    :goto_6a
    nop

    .line 122
    .end local v5    # "option":Ljava/security/cert/PKIXRevocationChecker$Option;
    goto :goto_32

    .line 123
    :cond_6c
    sget-object v4, Ljava/security/cert/PKIXRevocationChecker$Option;->SOFT_FAIL:Ljava/security/cert/PKIXRevocationChecker$Option;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lsun/security/provider/certpath/RevocationChecker;->softFail:Z

    .line 126
    iget-boolean v4, p0, Lsun/security/provider/certpath/RevocationChecker;->legacy:Z

    if-eqz v4, :cond_88

    .line 127
    iget-boolean v4, v0, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspEnabled:Z

    if-eqz v4, :cond_7f

    sget-object v4, Lsun/security/provider/certpath/RevocationChecker$Mode;->PREFER_OCSP:Lsun/security/provider/certpath/RevocationChecker$Mode;

    goto :goto_81

    :cond_7f
    sget-object v4, Lsun/security/provider/certpath/RevocationChecker$Mode;->ONLY_CRLS:Lsun/security/provider/certpath/RevocationChecker$Mode;

    :goto_81
    iput-object v4, p0, Lsun/security/provider/certpath/RevocationChecker;->mode:Lsun/security/provider/certpath/RevocationChecker$Mode;

    .line 128
    iget-boolean v4, v0, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->onlyEE:Z

    iput-boolean v4, p0, Lsun/security/provider/certpath/RevocationChecker;->onlyEE:Z

    goto :goto_b6

    .line 130
    :cond_88
    sget-object v4, Ljava/security/cert/PKIXRevocationChecker$Option;->NO_FALLBACK:Ljava/security/cert/PKIXRevocationChecker$Option;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a2

    .line 131
    sget-object v4, Ljava/security/cert/PKIXRevocationChecker$Option;->PREFER_CRLS:Ljava/security/cert/PKIXRevocationChecker$Option;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9d

    .line 132
    sget-object v4, Lsun/security/provider/certpath/RevocationChecker$Mode;->ONLY_CRLS:Lsun/security/provider/certpath/RevocationChecker$Mode;

    iput-object v4, p0, Lsun/security/provider/certpath/RevocationChecker;->mode:Lsun/security/provider/certpath/RevocationChecker$Mode;

    goto :goto_ae

    .line 134
    :cond_9d
    sget-object v4, Lsun/security/provider/certpath/RevocationChecker$Mode;->ONLY_OCSP:Lsun/security/provider/certpath/RevocationChecker$Mode;

    iput-object v4, p0, Lsun/security/provider/certpath/RevocationChecker;->mode:Lsun/security/provider/certpath/RevocationChecker$Mode;

    goto :goto_ae

    .line 136
    :cond_a2
    sget-object v4, Ljava/security/cert/PKIXRevocationChecker$Option;->PREFER_CRLS:Ljava/security/cert/PKIXRevocationChecker$Option;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ae

    .line 137
    sget-object v4, Lsun/security/provider/certpath/RevocationChecker$Mode;->PREFER_CRLS:Lsun/security/provider/certpath/RevocationChecker$Mode;

    iput-object v4, p0, Lsun/security/provider/certpath/RevocationChecker;->mode:Lsun/security/provider/certpath/RevocationChecker$Mode;

    .line 139
    :cond_ae
    :goto_ae
    sget-object v4, Ljava/security/cert/PKIXRevocationChecker$Option;->ONLY_END_ENTITY:Ljava/security/cert/PKIXRevocationChecker$Option;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lsun/security/provider/certpath/RevocationChecker;->onlyEE:Z

    .line 141
    :goto_b6
    iget-boolean v4, p0, Lsun/security/provider/certpath/RevocationChecker;->legacy:Z

    if-eqz v4, :cond_bf

    .line 142
    iget-boolean v4, v0, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->crlDPEnabled:Z

    iput-boolean v4, p0, Lsun/security/provider/certpath/RevocationChecker;->crlDP:Z

    goto :goto_c1

    .line 144
    :cond_bf
    iput-boolean v6, p0, Lsun/security/provider/certpath/RevocationChecker;->crlDP:Z

    .line 146
    :goto_c1
    invoke-virtual {p0}, Lsun/security/provider/certpath/RevocationChecker;->getOcspResponses()Ljava/util/Map;

    move-result-object v4

    iput-object v4, p0, Lsun/security/provider/certpath/RevocationChecker;->ocspResponses:Ljava/util/Map;

    .line 147
    invoke-virtual {p0}, Lsun/security/provider/certpath/RevocationChecker;->getOcspExtensions()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lsun/security/provider/certpath/RevocationChecker;->ocspExtensions:Ljava/util/List;

    .line 149
    iput-object p1, p0, Lsun/security/provider/certpath/RevocationChecker;->anchor:Ljava/security/cert/TrustAnchor;

    .line 150
    iput-object p2, p0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    .line 151
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certStores()Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, p0, Lsun/security/provider/certpath/RevocationChecker;->certStores:Ljava/util/List;

    .line 153
    :try_start_dc
    const-string v5, "Collection"

    new-instance v6, Ljava/security/cert/CollectionCertStoreParameters;

    .line 154
    invoke-virtual {p2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certificates()Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/cert/CollectionCertStoreParameters;-><init>(Ljava/util/Collection;)V

    .line 153
    invoke-static {v5, v6}, Ljava/security/cert/CertStore;->getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)Ljava/security/cert/CertStore;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_ee
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_dc .. :try_end_ee} :catch_ef
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_dc .. :try_end_ee} :catch_ef

    .line 163
    goto :goto_108

    .line 155
    :catch_ef
    move-exception v4

    .line 159
    .local v4, "e":Ljava/security/GeneralSecurityException;
    sget-object v5, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v5, :cond_108

    .line 160
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RevocationChecker: error creating Collection CertStore: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 164
    .end local v4    # "e":Ljava/security/GeneralSecurityException;
    :cond_108
    :goto_108
    return-void
.end method

.method public whitelist core-platform-api test-api init(Z)V
    .registers 4
    .param p1, "forward"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 300
    if-nez p1, :cond_43

    .line 304
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->anchor:Ljava/security/cert/TrustAnchor;

    if-eqz v0, :cond_1b

    .line 305
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->issuerCert:Ljava/security/cert/X509Certificate;

    .line 306
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    goto :goto_19

    .line 307
    :cond_13
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->anchor:Ljava/security/cert/TrustAnchor;

    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    :goto_19
    iput-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->prevPubKey:Ljava/security/PublicKey;

    .line 309
    :cond_1b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/provider/certpath/RevocationChecker;->crlSignFlag:Z

    .line 310
    iget-object v1, p0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    if-eqz v1, :cond_3a

    invoke-virtual {v1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certPath()Ljava/security/cert/CertPath;

    move-result-object v1

    if-eqz v1, :cond_3a

    .line 311
    iget-object v1, p0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certPath()Ljava/security/cert/CertPath;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    iput v1, p0, Lsun/security/provider/certpath/RevocationChecker;->certIndex:I

    goto :goto_3d

    .line 313
    :cond_3a
    const/4 v0, -0x1

    iput v0, p0, Lsun/security/provider/certpath/RevocationChecker;->certIndex:I

    .line 315
    :goto_3d
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->softFailExceptions:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 316
    return-void

    .line 301
    :cond_43
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "forward checking not supported"

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api isForwardCheckingSupported()Z
    .registers 2

    .line 320
    const/4 v0, 0x0

    return v0
.end method
