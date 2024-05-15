.class Lsun/security/provider/certpath/RevocationChecker;
.super Ljava/security/cert/PKIXRevocationChecker;
.source "RevocationChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/provider/certpath/RevocationChecker$Mode;,
        Lsun/security/provider/certpath/RevocationChecker$RejectKeySelector;,
        Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;
    }
.end annotation


# static fields
.field private static final synthetic -java-security-cert-PKIXRevocationChecker$OptionSwitchesValues:[I = null

.field private static final synthetic -sun-security-provider-certpath-RevocationChecker$ModeSwitchesValues:[I = null

.field private static final ALL_REASONS:[Z

.field private static final CRL_SIGN_USAGE:[Z

.field private static final HEX_DIGITS:Ljava/lang/String; = "0123456789ABCDEFabcdef"

.field private static final MAX_CLOCK_SKEW:J = 0xdbba0L

.field private static final debug:Lsun/security/util/Debug;


# instance fields
.field private anchor:Ljava/security/cert/TrustAnchor;

.field private certIndex:I

.field private certStores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;"
        }
    .end annotation
.end field

.field private crlDP:Z

.field private crlSignFlag:Z

.field private issuerCert:Ljava/security/cert/X509Certificate;

.field private legacy:Z

.field private mode:Lsun/security/provider/certpath/RevocationChecker$Mode;

.field private ocspExtensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Extension;",
            ">;"
        }
    .end annotation
.end field

.field private ocspResponses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/security/cert/X509Certificate;",
            "[B>;"
        }
    .end annotation
.end field

.field private onlyEE:Z

.field private params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

.field private prevPubKey:Ljava/security/PublicKey;

.field private responderCert:Ljava/security/cert/X509Certificate;

.field private responderURI:Ljava/net/URI;

.field private softFail:Z

.field private softFailExceptions:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/security/cert/CertPathValidatorException;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Lsun/security/util/Debug;
    .registers 1

    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    return-object v0
.end method

.method private static synthetic -getjava-security-cert-PKIXRevocationChecker$OptionSwitchesValues()[I
    .registers 3

    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->-java-security-cert-PKIXRevocationChecker$OptionSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->-java-security-cert-PKIXRevocationChecker$OptionSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Ljava/security/cert/PKIXRevocationChecker$Option;->values()[Ljava/security/cert/PKIXRevocationChecker$Option;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Ljava/security/cert/PKIXRevocationChecker$Option;->NO_FALLBACK:Ljava/security/cert/PKIXRevocationChecker$Option;

    invoke-virtual {v1}, Ljava/security/cert/PKIXRevocationChecker$Option;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_3b

    :goto_17
    :try_start_17
    sget-object v1, Ljava/security/cert/PKIXRevocationChecker$Option;->ONLY_END_ENTITY:Ljava/security/cert/PKIXRevocationChecker$Option;

    invoke-virtual {v1}, Ljava/security/cert/PKIXRevocationChecker$Option;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_39

    :goto_20
    :try_start_20
    sget-object v1, Ljava/security/cert/PKIXRevocationChecker$Option;->PREFER_CRLS:Ljava/security/cert/PKIXRevocationChecker$Option;

    invoke-virtual {v1}, Ljava/security/cert/PKIXRevocationChecker$Option;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_37

    :goto_29
    :try_start_29
    sget-object v1, Ljava/security/cert/PKIXRevocationChecker$Option;->SOFT_FAIL:Ljava/security/cert/PKIXRevocationChecker$Option;

    invoke-virtual {v1}, Ljava/security/cert/PKIXRevocationChecker$Option;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_35

    :goto_32
    sput-object v0, Lsun/security/provider/certpath/RevocationChecker;->-java-security-cert-PKIXRevocationChecker$OptionSwitchesValues:[I

    return-object v0

    :catch_35
    move-exception v1

    goto :goto_32

    :catch_37
    move-exception v1

    goto :goto_29

    :catch_39
    move-exception v1

    goto :goto_20

    :catch_3b
    move-exception v1

    goto :goto_17
.end method

.method private static synthetic -getsun-security-provider-certpath-RevocationChecker$ModeSwitchesValues()[I
    .registers 3

    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->-sun-security-provider-certpath-RevocationChecker$ModeSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->-sun-security-provider-certpath-RevocationChecker$ModeSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lsun/security/provider/certpath/RevocationChecker$Mode;->values()[Lsun/security/provider/certpath/RevocationChecker$Mode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lsun/security/provider/certpath/RevocationChecker$Mode;->ONLY_CRLS:Lsun/security/provider/certpath/RevocationChecker$Mode;

    invoke-virtual {v1}, Lsun/security/provider/certpath/RevocationChecker$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_3b

    :goto_17
    :try_start_17
    sget-object v1, Lsun/security/provider/certpath/RevocationChecker$Mode;->ONLY_OCSP:Lsun/security/provider/certpath/RevocationChecker$Mode;

    invoke-virtual {v1}, Lsun/security/provider/certpath/RevocationChecker$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_39

    :goto_20
    :try_start_20
    sget-object v1, Lsun/security/provider/certpath/RevocationChecker$Mode;->PREFER_CRLS:Lsun/security/provider/certpath/RevocationChecker$Mode;

    invoke-virtual {v1}, Lsun/security/provider/certpath/RevocationChecker$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_37

    :goto_29
    :try_start_29
    sget-object v1, Lsun/security/provider/certpath/RevocationChecker$Mode;->PREFER_OCSP:Lsun/security/provider/certpath/RevocationChecker$Mode;

    invoke-virtual {v1}, Lsun/security/provider/certpath/RevocationChecker$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_35

    :goto_32
    sput-object v0, Lsun/security/provider/certpath/RevocationChecker;->-sun-security-provider-certpath-RevocationChecker$ModeSwitchesValues:[I

    return-object v0

    :catch_35
    move-exception v1

    goto :goto_32

    :catch_37
    move-exception v1

    goto :goto_29

    :catch_39
    move-exception v1

    goto :goto_20

    :catch_3b
    move-exception v1

    goto :goto_17
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    const-string/jumbo v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    .line 799
    const/16 v0, 0x9

    new-array v0, v0, [Z

    fill-array-data v0, :array_1c

    .line 798
    sput-object v0, Lsun/security/provider/certpath/RevocationChecker;->ALL_REASONS:[Z

    .line 929
    const/4 v0, 0x7

    new-array v0, v0, [Z

    fill-array-data v0, :array_26

    .line 928
    sput-object v0, Lsun/security/provider/certpath/RevocationChecker;->CRL_SIGN_USAGE:[Z

    .line 51
    return-void

    .line 799
    nop

    :array_1c
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

    .line 929
    nop

    :array_26
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

.method constructor <init>()V
    .registers 2

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/security/cert/PKIXRevocationChecker;-><init>()V

    .line 67
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 66
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

.method constructor <init>(Ljava/security/cert/TrustAnchor;Lsun/security/provider/certpath/PKIX$ValidatorParams;)V
    .registers 4
    .param p1, "anchor"    # Ljava/security/cert/TrustAnchor;
    .param p2, "params"    # Lsun/security/provider/certpath/PKIX$ValidatorParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/security/cert/PKIXRevocationChecker;-><init>()V

    .line 67
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 66
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

.method private buildToNewKey(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/Set;)V
    .registers 44
    .param p1, "currCert"    # Ljava/security/cert/X509Certificate;
    .param p2, "prevKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/security/PublicKey;",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 936
    .local p3, "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_c

    .line 937
    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "RevocationChecker.buildToNewKey() starting work"

    invoke-virtual {v2, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 940
    :cond_c
    new-instance v24, Ljava/util/HashSet;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashSet;-><init>()V

    .line 941
    .local v24, "badKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/PublicKey;>;"
    if-eqz p2, :cond_1a

    .line 942
    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 944
    :cond_1a
    new-instance v28, Lsun/security/provider/certpath/RevocationChecker$RejectKeySelector;

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lsun/security/provider/certpath/RevocationChecker$RejectKeySelector;-><init>(Ljava/util/Set;)V

    .line 945
    .local v28, "certSel":Ljava/security/cert/X509CertSelector;
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/security/cert/X509CertSelector;->setSubject(Ljavax/security/auth/x500/X500Principal;)V

    .line 946
    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->CRL_SIGN_USAGE:[Z

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/security/cert/X509CertSelector;->setKeyUsage([Z)V

    .line 948
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->anchor:Ljava/security/cert/TrustAnchor;

    if-nez v2, :cond_fc

    .line 949
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->trustAnchors()Ljava/util/Set;

    move-result-object v9

    .line 954
    .local v9, "newAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    :goto_41
    :try_start_41
    new-instance v26, Ljava/security/cert/PKIXBuilderParameters;

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-direct {v0, v9, v1}, Ljava/security/cert/PKIXBuilderParameters;-><init>(Ljava/util/Set;Ljava/security/cert/CertSelector;)V
    :try_end_4a
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_41 .. :try_end_4a} :catch_106

    .line 958
    .local v26, "builderParams":Ljava/security/cert/PKIXBuilderParameters;
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->initialPolicies()Ljava/util/Set;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/security/cert/PKIXBuilderParameters;->setInitialPolicies(Ljava/util/Set;)V

    .line 959
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->certStores:Ljava/util/List;

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/security/cert/PKIXBuilderParameters;->setCertStores(Ljava/util/List;)V

    .line 961
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->explicitPolicyRequired()Z

    move-result v2

    .line 960
    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/security/cert/PKIXBuilderParameters;->setExplicitPolicyRequired(Z)V

    .line 963
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->policyMappingInhibited()Z

    move-result v2

    .line 962
    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/security/cert/PKIXBuilderParameters;->setPolicyMappingInhibited(Z)V

    .line 964
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->anyPolicyInhibited()Z

    move-result v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/security/cert/PKIXBuilderParameters;->setAnyPolicyInhibited(Z)V

    .line 968
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->date()Ljava/util/Date;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/security/cert/PKIXBuilderParameters;->setDate(Ljava/util/Date;)V

    .line 971
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->getPKIXParameters()Ljava/security/cert/PKIXParameters;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/cert/PKIXParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v2

    .line 970
    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/security/cert/PKIXBuilderParameters;->setCertPathCheckers(Ljava/util/List;)V

    .line 972
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->sigProvider()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/security/cert/PKIXBuilderParameters;->setSigProvider(Ljava/lang/String;)V

    .line 977
    const/4 v2, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/security/cert/PKIXBuilderParameters;->setRevocationEnabled(Z)V

    .line 980
    sget-boolean v2, Lsun/security/provider/certpath/Builder;->USE_AIA:Z

    if-eqz v2, :cond_130

    .line 981
    const/16 v34, 0x0

    .line 983
    .local v34, "currCertImpl":Lsun/security/x509/X509CertImpl;
    :try_start_be
    invoke-static/range {p1 .. p1}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;
    :try_end_c1
    .catch Ljava/security/cert/CertificateException; {:try_start_be .. :try_end_c1} :catch_10f

    move-result-object v34

    .line 991
    .end local v34    # "currCertImpl":Lsun/security/x509/X509CertImpl;
    :cond_c2
    :goto_c2
    const/16 v23, 0x0

    .line 992
    .local v23, "aiaExt":Lsun/security/x509/AuthorityInfoAccessExtension;
    if-eqz v34, :cond_ca

    .line 993
    invoke-virtual/range {v34 .. v34}, Lsun/security/x509/X509CertImpl;->getAuthorityInfoAccessExtension()Lsun/security/x509/AuthorityInfoAccessExtension;

    move-result-object v23

    .line 995
    .end local v23    # "aiaExt":Lsun/security/x509/AuthorityInfoAccessExtension;
    :cond_ca
    if-eqz v23, :cond_130

    .line 996
    invoke-virtual/range {v23 .. v23}, Lsun/security/x509/AuthorityInfoAccessExtension;->getAccessDescriptions()Ljava/util/List;

    move-result-object v22

    .line 997
    .local v22, "adList":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/AccessDescription;>;"
    if-eqz v22, :cond_130

    .line 998
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "ad$iterator":Ljava/util/Iterator;
    :cond_d6
    :goto_d6
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_130

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lsun/security/x509/AccessDescription;

    .line 999
    .local v20, "ad":Lsun/security/x509/AccessDescription;
    invoke-static/range {v20 .. v20}, Lsun/security/provider/certpath/URICertStore;->getInstance(Lsun/security/x509/AccessDescription;)Ljava/security/cert/CertStore;

    move-result-object v33

    .line 1000
    .local v33, "cs":Ljava/security/cert/CertStore;
    if-eqz v33, :cond_d6

    .line 1001
    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_f4

    .line 1002
    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "adding AIAext CertStore"

    invoke-virtual {v2, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 1004
    :cond_f4
    move-object/from16 v0, v26

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/security/cert/PKIXBuilderParameters;->addCertStore(Ljava/security/cert/CertStore;)V

    goto :goto_d6

    .line 950
    .end local v9    # "newAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    .end local v20    # "ad":Lsun/security/x509/AccessDescription;
    .end local v21    # "ad$iterator":Ljava/util/Iterator;
    .end local v22    # "adList":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/AccessDescription;>;"
    .end local v26    # "builderParams":Ljava/security/cert/PKIXBuilderParameters;
    .end local v33    # "cs":Ljava/security/cert/CertStore;
    :cond_fc
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->anchor:Ljava/security/cert/TrustAnchor;

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v9

    .restart local v9    # "newAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    goto/16 :goto_41

    .line 955
    :catch_106
    move-exception v36

    .line 956
    .local v36, "iape":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v2, Ljava/lang/RuntimeException;

    move-object/from16 v0, v36

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 984
    .end local v36    # "iape":Ljava/security/InvalidAlgorithmParameterException;
    .restart local v26    # "builderParams":Ljava/security/cert/PKIXBuilderParameters;
    .restart local v34    # "currCertImpl":Lsun/security/x509/X509CertImpl;
    :catch_10f
    move-exception v27

    .line 986
    .local v27, "ce":Ljava/security/cert/CertificateException;
    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_c2

    .line 987
    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "RevocationChecker.buildToNewKey: error decoding cert: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_c2

    .line 1011
    .end local v27    # "ce":Ljava/security/cert/CertificateException;
    .end local v34    # "currCertImpl":Lsun/security/x509/X509CertImpl;
    :cond_130
    const/16 v25, 0x0

    .line 1013
    .local v25, "builder":Ljava/security/cert/CertPathBuilder;
    :try_start_132
    const-string/jumbo v2, "PKIX"

    invoke-static {v2}, Ljava/security/cert/CertPathBuilder;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathBuilder;
    :try_end_138
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_132 .. :try_end_138} :catch_1d2

    move-result-object v25

    .local v25, "builder":Ljava/security/cert/CertPathBuilder;
    :goto_139
    move-object/from16 v38, p3

    .line 1019
    .end local p3    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .local v38, "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    :goto_13b
    :try_start_13b
    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_147

    .line 1020
    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "RevocationChecker.buildToNewKey() about to try build ..."

    invoke-virtual {v2, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 1024
    :cond_147
    invoke-virtual/range {v25 .. v26}, Ljava/security/cert/CertPathBuilder;->build(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v31

    check-cast v31, Ljava/security/cert/PKIXCertPathBuilderResult;

    .line 1026
    .local v31, "cpbr":Ljava/security/cert/PKIXCertPathBuilderResult;
    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_159

    .line 1027
    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "RevocationChecker.buildToNewKey() about to check revocation ..."

    invoke-virtual {v2, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 1032
    :cond_159
    if-nez v38, :cond_267

    .line 1033
    new-instance p3, Ljava/util/HashSet;

    invoke-direct/range {p3 .. p3}, Ljava/util/HashSet;-><init>()V
    :try_end_160
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_13b .. :try_end_160} :catch_25f
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_13b .. :try_end_160} :catch_263

    .line 1035
    .end local v38    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .restart local p3    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    :goto_160
    :try_start_160
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1036
    invoke-virtual/range {v31 .. v31}, Ljava/security/cert/PKIXCertPathBuilderResult;->getTrustAnchor()Ljava/security/cert/TrustAnchor;

    move-result-object v39

    .line 1037
    .local v39, "ta":Ljava/security/cert/TrustAnchor;
    invoke-virtual/range {v39 .. v39}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    .line 1038
    .local v4, "prevKey2":Ljava/security/PublicKey;
    if-nez v4, :cond_179

    .line 1039
    invoke-virtual/range {v39 .. v39}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    .line 1041
    :cond_179
    const/4 v6, 0x1

    .line 1043
    .local v6, "signFlag":Z
    invoke-virtual/range {v31 .. v31}, Ljava/security/cert/PKIXCertPathBuilderResult;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;
    :try_end_181
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_160 .. :try_end_181} :catch_23d
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_160 .. :try_end_181} :catch_24d

    move-result-object v29

    .line 1045
    .local v29, "cpList":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    :try_start_182
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v35, v2, -0x1

    .end local v6    # "signFlag":Z
    .local v35, "i":I
    :goto_188
    if-ltz v35, :cond_1e9

    .line 1046
    move-object/from16 v0, v29

    move/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 1048
    .local v3, "cert":Ljava/security/cert/X509Certificate;
    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_1be

    .line 1049
    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "RevocationChecker.buildToNewKey() index "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1050
    const-string/jumbo v7, " checking "

    .line 1049
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 1053
    :cond_1be
    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v8, p3

    invoke-direct/range {v2 .. v9}, Lsun/security/provider/certpath/RevocationChecker;->checkCRLs(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/security/cert/X509Certificate;ZZLjava/util/Set;Ljava/util/Set;)V

    .line 1055
    invoke-static {v3}, Lsun/security/provider/certpath/RevocationChecker;->certCanSignCrl(Ljava/security/cert/X509Certificate;)Z

    move-result v6

    .line 1056
    .local v6, "signFlag":Z
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;
    :try_end_1ce
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_182 .. :try_end_1ce} :catch_1db
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_182 .. :try_end_1ce} :catch_23d
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_182 .. :try_end_1ce} :catch_24d

    move-result-object v4

    .line 1045
    add-int/lit8 v35, v35, -0x1

    goto :goto_188

    .line 1014
    .end local v3    # "cert":Ljava/security/cert/X509Certificate;
    .end local v4    # "prevKey2":Ljava/security/PublicKey;
    .end local v6    # "signFlag":Z
    .end local v29    # "cpList":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    .end local v31    # "cpbr":Ljava/security/cert/PKIXCertPathBuilderResult;
    .end local v35    # "i":I
    .end local v39    # "ta":Ljava/security/cert/TrustAnchor;
    .local v25, "builder":Ljava/security/cert/CertPathBuilder;
    :catch_1d2
    move-exception v37

    .line 1015
    .local v37, "nsae":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    move-object/from16 v0, v37

    invoke-direct {v2, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1058
    .end local v37    # "nsae":Ljava/security/NoSuchAlgorithmException;
    .restart local v4    # "prevKey2":Ljava/security/PublicKey;
    .local v25, "builder":Ljava/security/cert/CertPathBuilder;
    .restart local v29    # "cpList":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    .restart local v31    # "cpbr":Ljava/security/cert/PKIXCertPathBuilderResult;
    .restart local v39    # "ta":Ljava/security/cert/TrustAnchor;
    :catch_1db
    move-exception v32

    .line 1060
    .local v32, "cpve":Ljava/security/cert/CertPathValidatorException;
    :try_start_1dc
    invoke-virtual/range {v31 .. v31}, Ljava/security/cert/PKIXCertPathBuilderResult;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v38, p3

    .line 1061
    .end local p3    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .restart local v38    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    goto/16 :goto_13b

    .line 1064
    .end local v32    # "cpve":Ljava/security/cert/CertPathValidatorException;
    .end local v38    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .restart local v35    # "i":I
    .restart local p3    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    :cond_1e9
    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_20a

    .line 1065
    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "RevocationChecker.buildToNewKey() got key "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1066
    invoke-virtual/range {v31 .. v31}, Ljava/security/cert/PKIXCertPathBuilderResult;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    .line 1065
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 1072
    :cond_20a
    invoke-virtual/range {v31 .. v31}, Ljava/security/cert/PKIXCertPathBuilderResult;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v12

    .line 1073
    .local v12, "newKey":Ljava/security/PublicKey;
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->isEmpty()Z
    :try_end_211
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1dc .. :try_end_211} :catch_23d
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_1dc .. :try_end_211} :catch_24d

    move-result v2

    if-eqz v2, :cond_229

    .line 1074
    const/4 v13, 0x0

    .line 1077
    :goto_215
    :try_start_215
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->trustAnchors()Ljava/util/Set;

    move-result-object v17

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    .line 1076
    invoke-direct/range {v10 .. v17}, Lsun/security/provider/certpath/RevocationChecker;->checkCRLs(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/security/cert/X509Certificate;ZZLjava/util/Set;Ljava/util/Set;)V
    :try_end_228
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_215 .. :try_end_228} :catch_233
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_215 .. :try_end_228} :catch_23d
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_215 .. :try_end_228} :catch_24d

    .line 1079
    return-void

    .line 1074
    :cond_229
    const/4 v2, 0x0

    :try_start_22a
    move-object/from16 v0, v29

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/security/cert/X509Certificate;

    .local v13, "newCert":Ljava/security/cert/X509Certificate;
    goto :goto_215

    .line 1080
    .end local v13    # "newCert":Ljava/security/cert/X509Certificate;
    :catch_233
    move-exception v32

    .line 1082
    .restart local v32    # "cpve":Ljava/security/cert/CertPathValidatorException;
    invoke-virtual/range {v32 .. v32}, Ljava/security/cert/CertPathValidatorException;->getReason()Ljava/security/cert/CertPathValidatorException$Reason;

    move-result-object v2

    sget-object v5, Ljava/security/cert/CertPathValidatorException$BasicReason;->REVOKED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    if-ne v2, v5, :cond_246

    .line 1083
    throw v32
    :try_end_23d
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_22a .. :try_end_23d} :catch_23d
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_22a .. :try_end_23d} :catch_24d

    .line 1089
    .end local v4    # "prevKey2":Ljava/security/PublicKey;
    .end local v12    # "newKey":Ljava/security/PublicKey;
    .end local v29    # "cpList":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    .end local v32    # "cpve":Ljava/security/cert/CertPathValidatorException;
    .end local v35    # "i":I
    .end local v39    # "ta":Ljava/security/cert/TrustAnchor;
    :catch_23d
    move-exception v36

    .line 1090
    .end local v31    # "cpbr":Ljava/security/cert/PKIXCertPathBuilderResult;
    .restart local v36    # "iape":Ljava/security/InvalidAlgorithmParameterException;
    :goto_23e
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    move-object/from16 v0, v36

    invoke-direct {v2, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1088
    .end local v36    # "iape":Ljava/security/InvalidAlgorithmParameterException;
    .restart local v4    # "prevKey2":Ljava/security/PublicKey;
    .restart local v12    # "newKey":Ljava/security/PublicKey;
    .restart local v29    # "cpList":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    .restart local v31    # "cpbr":Ljava/security/cert/PKIXCertPathBuilderResult;
    .restart local v32    # "cpve":Ljava/security/cert/CertPathValidatorException;
    .restart local v35    # "i":I
    .restart local v39    # "ta":Ljava/security/cert/TrustAnchor;
    :cond_246
    :try_start_246
    move-object/from16 v0, v24

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_24b
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_246 .. :try_end_24b} :catch_23d
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_246 .. :try_end_24b} :catch_24d

    goto/16 :goto_139

    .line 1091
    .end local v4    # "prevKey2":Ljava/security/PublicKey;
    .end local v12    # "newKey":Ljava/security/PublicKey;
    .end local v29    # "cpList":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    .end local v32    # "cpve":Ljava/security/cert/CertPathValidatorException;
    .end local v35    # "i":I
    .end local v39    # "ta":Ljava/security/cert/TrustAnchor;
    :catch_24d
    move-exception v30

    .line 1092
    .end local v31    # "cpbr":Ljava/security/cert/PKIXCertPathBuilderResult;
    .local v30, "cpbe":Ljava/security/cert/CertPathBuilderException;
    :goto_24e
    new-instance v14, Ljava/security/cert/CertPathValidatorException;

    .line 1093
    const-string/jumbo v15, "Could not determine revocation status"

    .line 1094
    sget-object v19, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

    .line 1093
    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 1094
    const/16 v18, -0x1

    .line 1092
    invoke-direct/range {v14 .. v19}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v14

    .line 1089
    .end local v30    # "cpbe":Ljava/security/cert/CertPathBuilderException;
    .end local p3    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .restart local v38    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    :catch_25f
    move-exception v36

    .restart local v36    # "iape":Ljava/security/InvalidAlgorithmParameterException;
    move-object/from16 p3, v38

    .end local v38    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .restart local p3    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    goto :goto_23e

    .line 1091
    .end local v36    # "iape":Ljava/security/InvalidAlgorithmParameterException;
    .end local p3    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .restart local v38    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    :catch_263
    move-exception v30

    .restart local v30    # "cpbe":Ljava/security/cert/CertPathBuilderException;
    move-object/from16 p3, v38

    .end local v38    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .restart local p3    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    goto :goto_24e

    .end local v30    # "cpbe":Ljava/security/cert/CertPathBuilderException;
    .end local p3    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .restart local v31    # "cpbr":Ljava/security/cert/PKIXCertPathBuilderResult;
    .restart local v38    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    :cond_267
    move-object/from16 p3, v38

    .end local v38    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .restart local p3    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    goto/16 :goto_160
.end method

.method static certCanSignCrl(Ljava/security/cert/X509Certificate;)Z
    .registers 3
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
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

.method private check(Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/security/PublicKey;Z)V
    .registers 15
    .param p1, "xcert"    # Ljava/security/cert/X509Certificate;
    .param p3, "pubKey"    # Ljava/security/PublicKey;
    .param p4, "crlSignFlag"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Collection",
            "<",
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

    .prologue
    .line 346
    .local p2, "unresolvedCritExts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_43

    .line 347
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RevocationChecker.check: checking cert\n  SN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 348
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v2}, Lsun/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v2

    .line 347
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 349
    const-string/jumbo v2, "\n  Subject: "

    .line 347
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 349
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    .line 347
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 350
    const-string/jumbo v2, "\n  Issuer: "

    .line 347
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 350
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    .line 347
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 353
    :cond_43
    :try_start_43
    iget-boolean v0, p0, Lsun/security/provider/certpath/RevocationChecker;->onlyEE:Z

    if-eqz v0, :cond_5e

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5e

    .line 354
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_5a

    .line 355
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    const-string/jumbo v1, "Skipping revocation check; cert is not an end entity cert"

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_43 .. :try_end_5a} :catch_75
    .catchall {:try_start_43 .. :try_end_5a} :catchall_7f

    .line 420
    :cond_5a
    invoke-direct {p0, p1}, Lsun/security/provider/certpath/RevocationChecker;->updateState(Ljava/security/cert/X509Certificate;)V

    .line 358
    return-void

    .line 360
    :cond_5e
    :try_start_5e
    invoke-static {}, Lsun/security/provider/certpath/RevocationChecker;->-getsun-security-provider-certpath-RevocationChecker$ModeSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lsun/security/provider/certpath/RevocationChecker;->mode:Lsun/security/provider/certpath/RevocationChecker$Mode;

    invoke-virtual {v1}, Lsun/security/provider/certpath/RevocationChecker$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_6a
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_5e .. :try_end_6a} :catch_75
    .catchall {:try_start_5e .. :try_end_6a} :catchall_7f

    packed-switch v0, :pswitch_data_13c

    .line 420
    :goto_6d
    invoke-direct {p0, p1}, Lsun/security/provider/certpath/RevocationChecker;->updateState(Ljava/security/cert/X509Certificate;)V

    .line 422
    :goto_70
    return-void

    .line 363
    :pswitch_71
    :try_start_71
    invoke-direct {p0, p1, p2}, Lsun/security/provider/certpath/RevocationChecker;->checkOCSP(Ljava/security/cert/X509Certificate;Ljava/util/Collection;)V
    :try_end_74
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_71 .. :try_end_74} :catch_75
    .catchall {:try_start_71 .. :try_end_74} :catchall_7f

    goto :goto_6d

    .line 371
    :catch_75
    move-exception v7

    .line 372
    .local v7, "e":Ljava/security/cert/CertPathValidatorException;
    :try_start_76
    invoke-virtual {v7}, Ljava/security/cert/CertPathValidatorException;->getReason()Ljava/security/cert/CertPathValidatorException$Reason;

    move-result-object v0

    sget-object v1, Ljava/security/cert/CertPathValidatorException$BasicReason;->REVOKED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    if-ne v0, v1, :cond_8e

    .line 373
    throw v7
    :try_end_7f
    .catchall {:try_start_76 .. :try_end_7f} :catchall_7f

    .line 419
    .end local v7    # "e":Ljava/security/cert/CertPathValidatorException;
    :catchall_7f
    move-exception v0

    .line 420
    invoke-direct {p0, p1}, Lsun/security/provider/certpath/RevocationChecker;->updateState(Ljava/security/cert/X509Certificate;)V

    .line 419
    throw v0

    .line 367
    :pswitch_84
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    :try_start_8a
    invoke-direct/range {v0 .. v5}, Lsun/security/provider/certpath/RevocationChecker;->checkCRLs(Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/util/Set;Ljava/security/PublicKey;Z)V
    :try_end_8d
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_8a .. :try_end_8d} :catch_75
    .catchall {:try_start_8a .. :try_end_8d} :catchall_7f

    goto :goto_6d

    .line 375
    .restart local v7    # "e":Ljava/security/cert/CertPathValidatorException;
    :cond_8e
    :try_start_8e
    invoke-direct {p0, v7}, Lsun/security/provider/certpath/RevocationChecker;->isSoftFailException(Ljava/security/cert/CertPathValidatorException;)Z

    move-result v8

    .line 376
    .local v8, "eSoftFail":Z
    if-eqz v8, :cond_a4

    .line 377
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->mode:Lsun/security/provider/certpath/RevocationChecker$Mode;

    sget-object v1, Lsun/security/provider/certpath/RevocationChecker$Mode;->ONLY_OCSP:Lsun/security/provider/certpath/RevocationChecker$Mode;

    if-eq v0, v1, :cond_a0

    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->mode:Lsun/security/provider/certpath/RevocationChecker$Mode;

    sget-object v1, Lsun/security/provider/certpath/RevocationChecker$Mode;->ONLY_CRLS:Lsun/security/provider/certpath/RevocationChecker$Mode;
    :try_end_9e
    .catchall {:try_start_8e .. :try_end_9e} :catchall_7f

    if-ne v0, v1, :cond_b1

    .line 420
    :cond_a0
    invoke-direct {p0, p1}, Lsun/security/provider/certpath/RevocationChecker;->updateState(Ljava/security/cert/X509Certificate;)V

    .line 378
    return-void

    .line 381
    :cond_a4
    :try_start_a4
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->mode:Lsun/security/provider/certpath/RevocationChecker$Mode;

    sget-object v1, Lsun/security/provider/certpath/RevocationChecker$Mode;->ONLY_OCSP:Lsun/security/provider/certpath/RevocationChecker$Mode;

    if-eq v0, v1, :cond_b0

    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->mode:Lsun/security/provider/certpath/RevocationChecker$Mode;

    sget-object v1, Lsun/security/provider/certpath/RevocationChecker$Mode;->ONLY_CRLS:Lsun/security/provider/certpath/RevocationChecker$Mode;

    if-ne v0, v1, :cond_b1

    .line 382
    :cond_b0
    throw v7

    .line 385
    :cond_b1
    move-object v6, v7

    .line 387
    .local v6, "cause":Ljava/security/cert/CertPathValidatorException;
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_db

    .line 388
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RevocationChecker.check() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 389
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    const-string/jumbo v1, "RevocationChecker.check() preparing to failover"

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_db
    .catchall {:try_start_a4 .. :try_end_db} :catchall_7f

    .line 392
    :cond_db
    :try_start_db
    invoke-static {}, Lsun/security/provider/certpath/RevocationChecker;->-getsun-security-provider-certpath-RevocationChecker$ModeSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lsun/security/provider/certpath/RevocationChecker;->mode:Lsun/security/provider/certpath/RevocationChecker$Mode;

    invoke-virtual {v1}, Lsun/security/provider/certpath/RevocationChecker$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_e7
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_db .. :try_end_e7} :catch_f8
    .catchall {:try_start_db .. :try_end_e7} :catchall_7f

    packed-switch v0, :pswitch_data_148

    .line 420
    :cond_ea
    :goto_ea
    invoke-direct {p0, p1}, Lsun/security/provider/certpath/RevocationChecker;->updateState(Ljava/security/cert/X509Certificate;)V

    goto :goto_70

    .line 394
    :pswitch_ee
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    :try_start_f4
    invoke-direct/range {v0 .. v5}, Lsun/security/provider/certpath/RevocationChecker;->checkCRLs(Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/util/Set;Ljava/security/PublicKey;Z)V
    :try_end_f7
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_f4 .. :try_end_f7} :catch_f8
    .catchall {:try_start_f4 .. :try_end_f7} :catchall_7f

    goto :goto_ea

    .line 401
    :catch_f8
    move-exception v9

    .line 402
    .local v9, "x":Ljava/security/cert/CertPathValidatorException;
    :try_start_f9
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_122

    .line 403
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    const-string/jumbo v1, "RevocationChecker.check() failover failed"

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 404
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RevocationChecker.check() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 406
    :cond_122
    invoke-virtual {v9}, Ljava/security/cert/CertPathValidatorException;->getReason()Ljava/security/cert/CertPathValidatorException$Reason;

    move-result-object v0

    sget-object v1, Ljava/security/cert/CertPathValidatorException$BasicReason;->REVOKED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    if-ne v0, v1, :cond_12f

    .line 407
    throw v9
    :try_end_12b
    .catchall {:try_start_f9 .. :try_end_12b} :catchall_7f

    .line 398
    .end local v9    # "x":Ljava/security/cert/CertPathValidatorException;
    :pswitch_12b
    :try_start_12b
    invoke-direct {p0, p1, p2}, Lsun/security/provider/certpath/RevocationChecker;->checkOCSP(Ljava/security/cert/X509Certificate;Ljava/util/Collection;)V
    :try_end_12e
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_12b .. :try_end_12e} :catch_f8
    .catchall {:try_start_12b .. :try_end_12e} :catchall_7f

    goto :goto_ea

    .line 409
    .restart local v9    # "x":Ljava/security/cert/CertPathValidatorException;
    :cond_12f
    :try_start_12f
    invoke-direct {p0, v9}, Lsun/security/provider/certpath/RevocationChecker;->isSoftFailException(Ljava/security/cert/CertPathValidatorException;)Z

    move-result v0

    if-nez v0, :cond_139

    .line 410
    invoke-virtual {v7, v9}, Ljava/security/cert/CertPathValidatorException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 411
    throw v7

    .line 414
    :cond_139
    if-nez v8, :cond_ea

    .line 415
    throw v7
    :try_end_13c
    .catchall {:try_start_12f .. :try_end_13c} :catchall_7f

    .line 360
    :pswitch_data_13c
    .packed-switch 0x1
        :pswitch_84
        :pswitch_71
        :pswitch_84
        :pswitch_71
    .end packed-switch

    .line 392
    :pswitch_data_148
    .packed-switch 0x3
        :pswitch_12b
        :pswitch_ee
    .end packed-switch
.end method

.method private checkApprovedCRLs(Ljava/security/cert/X509Certificate;Ljava/util/Set;)V
    .registers 19
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509CRL;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 611
    .local p2, "approvedCRLs":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509CRL;>;"
    sget-object v1, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_2d

    .line 612
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v14

    .line 613
    .local v14, "sn":Ljava/math/BigInteger;
    sget-object v1, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    const-string/jumbo v2, "RevocationChecker.checkApprovedCRLs() starting the final sweep..."

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 615
    sget-object v1, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RevocationChecker.checkApprovedCRLs() cert SN: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 616
    invoke-virtual {v14}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v4

    .line 615
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 619
    .end local v14    # "sn":Ljava/math/BigInteger;
    :cond_2d
    sget-object v12, Ljava/security/cert/CRLReason;->UNSPECIFIED:Ljava/security/cert/CRLReason;

    .line 620
    .local v12, "reasonCode":Ljava/security/cert/CRLReason;
    const/4 v11, 0x0

    .line 621
    .local v11, "entry":Lsun/security/x509/X509CRLEntryImpl;
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local v11    # "entry":Lsun/security/x509/X509CRLEntryImpl;
    .local v9, "crl$iterator":Ljava/util/Iterator;
    :cond_34
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509CRL;

    .line 622
    .local v8, "crl":Ljava/security/cert/X509CRL;
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/security/cert/X509CRL;->getRevokedCertificate(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509CRLEntry;

    move-result-object v10

    .line 623
    .local v10, "e":Ljava/security/cert/X509CRLEntry;
    if-eqz v10, :cond_34

    .line 625
    :try_start_48
    invoke-static {v10}, Lsun/security/x509/X509CRLEntryImpl;->toImpl(Ljava/security/cert/X509CRLEntry;)Lsun/security/x509/X509CRLEntryImpl;
    :try_end_4b
    .catch Ljava/security/cert/CRLException; {:try_start_48 .. :try_end_4b} :catch_9c

    move-result-object v11

    .line 629
    .local v11, "entry":Lsun/security/x509/X509CRLEntryImpl;
    sget-object v1, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_6d

    .line 630
    sget-object v1, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RevocationChecker.checkApprovedCRLs() CRL entry: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 631
    invoke-virtual {v11}, Lsun/security/x509/X509CRLEntryImpl;->toString()Ljava/lang/String;

    move-result-object v4

    .line 630
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 639
    :cond_6d
    invoke-virtual {v11}, Lsun/security/x509/X509CRLEntryImpl;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v15

    .line 640
    .local v15, "unresCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v15, :cond_a3

    invoke-interface {v15}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_a3

    .line 642
    sget-object v1, Lsun/security/x509/PKIXExtensions;->ReasonCode_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 643
    sget-object v1, Lsun/security/x509/PKIXExtensions;->CertificateIssuer_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 644
    invoke-interface {v15}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a3

    .line 645
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    .line 646
    const-string/jumbo v2, "Unrecognized critical extension(s) in revoked CRL entry"

    .line 645
    invoke-direct {v1, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 626
    .end local v11    # "entry":Lsun/security/x509/X509CRLEntryImpl;
    .end local v15    # "unresCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_9c
    move-exception v7

    .line 627
    .local v7, "ce":Ljava/security/cert/CRLException;
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v1, v7}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 651
    .end local v7    # "ce":Ljava/security/cert/CRLException;
    .restart local v11    # "entry":Lsun/security/x509/X509CRLEntryImpl;
    .restart local v15    # "unresCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_a3
    invoke-virtual {v11}, Lsun/security/x509/X509CRLEntryImpl;->getRevocationReason()Ljava/security/cert/CRLReason;

    move-result-object v12

    .line 652
    if-nez v12, :cond_ab

    .line 653
    sget-object v12, Ljava/security/cert/CRLReason;->UNSPECIFIED:Ljava/security/cert/CRLReason;

    .line 655
    :cond_ab
    invoke-virtual {v11}, Lsun/security/x509/X509CRLEntryImpl;->getRevocationDate()Ljava/util/Date;

    move-result-object v13

    .line 656
    .local v13, "revocationDate":Ljava/util/Date;
    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->date()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 657
    new-instance v3, Ljava/security/cert/CertificateRevokedException;

    .line 659
    invoke-virtual {v8}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v11}, Lsun/security/x509/X509CRLEntryImpl;->getExtensions()Ljava/util/Map;

    move-result-object v2

    .line 657
    invoke-direct {v3, v13, v12, v1, v2}, Ljava/security/cert/CertificateRevokedException;-><init>(Ljava/util/Date;Ljava/security/cert/CRLReason;Ljavax/security/auth/x500/X500Principal;Ljava/util/Map;)V

    .line 660
    .local v3, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    .line 661
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    sget-object v6, Ljava/security/cert/CertPathValidatorException$BasicReason;->REVOKED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 660
    invoke-direct/range {v1 .. v6}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v1

    .line 665
    .end local v3    # "t":Ljava/lang/Throwable;
    .end local v8    # "crl":Ljava/security/cert/X509CRL;
    .end local v10    # "e":Ljava/security/cert/X509CRLEntry;
    .end local v11    # "entry":Lsun/security/x509/X509CRLEntryImpl;
    .end local v13    # "revocationDate":Ljava/util/Date;
    .end local v15    # "unresCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_d8
    return-void
.end method

.method private checkCRLs(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/security/cert/X509Certificate;ZZLjava/util/Set;Ljava/util/Set;)V
    .registers 41
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
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 476
    .local p6, "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .local p7, "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v7, :cond_c

    .line 477
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    const-string/jumbo v9, "RevocationChecker.checkCRLs() ---checking revocation status ..."

    invoke-virtual {v7, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 484
    :cond_c
    if-eqz p6, :cond_32

    move-object/from16 v0, p6

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_32

    .line 485
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v7, :cond_24

    .line 486
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    const-string/jumbo v9, "RevocationChecker.checkCRLs() circular dependency"

    invoke-virtual {v7, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 489
    :cond_24
    new-instance v6, Ljava/security/cert/CertPathValidatorException;

    .line 490
    const-string/jumbo v7, "Could not determine revocation status"

    .line 491
    sget-object v11, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

    .line 490
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    .line 489
    invoke-direct/range {v6 .. v11}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v6

    .line 494
    :cond_32
    new-instance v29, Ljava/util/HashSet;

    invoke-direct/range {v29 .. v29}, Ljava/util/HashSet;-><init>()V

    .line 495
    .local v29, "possibleCRLs":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509CRL;>;"
    new-instance v24, Ljava/util/HashSet;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashSet;-><init>()V

    .line 496
    .local v24, "approvedCRLs":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509CRL;>;"
    new-instance v30, Ljava/security/cert/X509CRLSelector;

    invoke-direct/range {v30 .. v30}, Ljava/security/cert/X509CRLSelector;-><init>()V

    .line 497
    .local v30, "sel":Ljava/security/cert/X509CRLSelector;
    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CRLSelector;->setCertificateChecking(Ljava/security/cert/X509Certificate;)V

    .line 498
    move-object/from16 v0, p0

    iget-object v7, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v7}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->date()Ljava/util/Date;

    move-result-object v7

    const-wide/32 v10, 0xdbba0

    move-object/from16 v0, v30

    invoke-static {v0, v7, v10, v11}, Lsun/security/provider/certpath/CertPathHelper;->setDateAndTime(Ljava/security/cert/X509CRLSelector;Ljava/util/Date;J)V

    .line 501
    const/4 v6, 0x0

    .line 502
    .local v6, "networkFailureException":Ljava/security/cert/CertPathValidatorException;
    move-object/from16 v0, p0

    iget-object v7, v0, Lsun/security/provider/certpath/RevocationChecker;->certStores:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v32

    .end local v6    # "networkFailureException":Ljava/security/cert/CertPathValidatorException;
    .local v32, "store$iterator":Ljava/util/Iterator;
    :cond_61
    :goto_61
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_ca

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/security/cert/CertStore;

    .line 504
    .local v31, "store":Ljava/security/cert/CertStore;
    :try_start_6d
    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/security/cert/CertStore;->getCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .local v27, "crl$iterator":Ljava/util/Iterator;
    :goto_79
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_61

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/security/cert/CRL;

    .line 505
    .local v26, "crl":Ljava/security/cert/CRL;
    check-cast v26, Ljava/security/cert/X509CRL;

    .end local v26    # "crl":Ljava/security/cert/CRL;
    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_8e
    .catch Ljava/security/cert/CertStoreException; {:try_start_6d .. :try_end_8e} :catch_8f

    goto :goto_79

    .line 507
    .end local v27    # "crl$iterator":Ljava/util/Iterator;
    :catch_8f
    move-exception v8

    .line 508
    .local v8, "e":Ljava/security/cert/CertStoreException;
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v7, :cond_b1

    .line 509
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "RevocationChecker.checkCRLs() CertStoreException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 510
    invoke-virtual {v8}, Ljava/security/cert/CertStoreException;->getMessage()Ljava/lang/String;

    move-result-object v10

    .line 509
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 512
    :cond_b1
    if-nez v6, :cond_61

    .line 513
    invoke-virtual/range {v31 .. v31}, Ljava/security/cert/CertStore;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v8}, Lsun/security/provider/certpath/CertStoreHelper;->isCausedByNetworkIssue(Ljava/lang/String;Ljava/security/cert/CertStoreException;)Z

    move-result v7

    .line 512
    if-eqz v7, :cond_61

    .line 515
    new-instance v6, Ljava/security/cert/CertPathValidatorException;

    .line 516
    const-string/jumbo v7, "Unable to determine revocation status due to network error"

    .line 518
    sget-object v11, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

    .line 517
    const/4 v9, 0x0

    const/4 v10, -0x1

    .line 515
    invoke-direct/range {v6 .. v11}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    .local v6, "networkFailureException":Ljava/security/cert/CertPathValidatorException;
    goto :goto_61

    .line 523
    .end local v6    # "networkFailureException":Ljava/security/cert/CertPathValidatorException;
    .end local v8    # "e":Ljava/security/cert/CertStoreException;
    .end local v31    # "store":Ljava/security/cert/CertStore;
    :cond_ca
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v7, :cond_eb

    .line 524
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "RevocationChecker.checkCRLs() possible crls.size() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 525
    invoke-interface/range {v29 .. v29}, Ljava/util/Set;->size()I

    move-result v10

    .line 524
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 527
    :cond_eb
    const/16 v7, 0x9

    new-array v14, v7, [Z

    .line 528
    .local v14, "reasonsMask":[Z
    invoke-interface/range {v29 .. v29}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_10a

    move-object/from16 v9, p0

    move-object/from16 v10, v29

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v15, p7

    .line 531
    invoke-direct/range {v9 .. v15}, Lsun/security/provider/certpath/RevocationChecker;->verifyPossibleCRLs(Ljava/util/Set;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Z[ZLjava/util/Set;)Ljava/util/Collection;

    move-result-object v7

    move-object/from16 v0, v24

    invoke-interface {v0, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 536
    :cond_10a
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v7, :cond_12b

    .line 537
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "RevocationChecker.checkCRLs() approved crls.size() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 538
    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->size()I

    move-result v10

    .line 537
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 543
    :cond_12b
    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_143

    .line 544
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker;->ALL_REASONS:[Z

    invoke-static {v14, v7}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v7

    .line 543
    if-eqz v7, :cond_143

    .line 546
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lsun/security/provider/certpath/RevocationChecker;->checkApprovedCRLs(Ljava/security/cert/X509Certificate;Ljava/util/Set;)V

    .line 604
    :goto_142
    return-void

    .line 551
    :cond_143
    :try_start_143
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lsun/security/provider/certpath/RevocationChecker;->crlDP:Z

    if-eqz v7, :cond_16e

    .line 554
    move-object/from16 v0, p0

    iget-object v7, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v7}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->sigProvider()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/provider/certpath/RevocationChecker;->certStores:Ljava/util/List;

    move-object/from16 v20, v0

    .line 555
    const/16 v23, 0x0

    move-object/from16 v15, v30

    move/from16 v16, p4

    move-object/from16 v17, p2

    move-object/from16 v18, p3

    move-object/from16 v21, v14

    move-object/from16 v22, p7

    .line 552
    invoke-static/range {v15 .. v23}, Lsun/security/provider/certpath/DistributionPointFetcher;->getCRLs(Ljava/security/cert/X509CRLSelector;ZLjava/security/PublicKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/util/List;[ZLjava/util/Set;Ljava/util/Date;)Ljava/util/Collection;

    move-result-object v7

    move-object/from16 v0, v24

    invoke-interface {v0, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_16e
    .catch Ljava/security/cert/CertStoreException; {:try_start_143 .. :try_end_16e} :catch_186

    .line 570
    :cond_16e
    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1b0

    .line 571
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker;->ALL_REASONS:[Z

    invoke-static {v14, v7}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v7

    .line 570
    if-eqz v7, :cond_1b0

    .line 573
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lsun/security/provider/certpath/RevocationChecker;->checkApprovedCRLs(Ljava/security/cert/X509Certificate;Ljava/util/Set;)V

    goto :goto_142

    .line 557
    :catch_186
    move-exception v8

    .line 558
    .restart local v8    # "e":Ljava/security/cert/CertStoreException;
    instance-of v7, v8, Lsun/security/provider/certpath/PKIX$CertStoreTypeException;

    if-eqz v7, :cond_1aa

    move-object/from16 v28, v8

    .line 559
    check-cast v28, Lsun/security/provider/certpath/PKIX$CertStoreTypeException;

    .line 560
    .local v28, "cste":Lsun/security/provider/certpath/PKIX$CertStoreTypeException;
    invoke-virtual/range {v28 .. v28}, Lsun/security/provider/certpath/PKIX$CertStoreTypeException;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v8}, Lsun/security/provider/certpath/CertStoreHelper;->isCausedByNetworkIssue(Ljava/lang/String;Ljava/security/cert/CertStoreException;)Z

    move-result v7

    if-eqz v7, :cond_1aa

    .line 562
    new-instance v15, Ljava/security/cert/CertPathValidatorException;

    .line 563
    const-string/jumbo v16, "Unable to determine revocation status due to network error"

    .line 565
    sget-object v20, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

    .line 564
    const/16 v18, 0x0

    const/16 v19, -0x1

    move-object/from16 v17, v8

    .line 562
    invoke-direct/range {v15 .. v20}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v15

    .line 568
    .end local v28    # "cste":Lsun/security/provider/certpath/PKIX$CertStoreTypeException;
    :cond_1aa
    new-instance v7, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v7, v8}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 575
    .end local v8    # "e":Ljava/security/cert/CertStoreException;
    :cond_1b0
    if-eqz p5, :cond_1c5

    .line 577
    :try_start_1b2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move-object/from16 v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Lsun/security/provider/certpath/RevocationChecker;->verifyWithSeparateSigningKey(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;ZLjava/util/Set;)V
    :try_end_1bf
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_1b2 .. :try_end_1bf} :catch_1c0

    .line 579
    return-void

    .line 580
    :catch_1c0
    move-exception v25

    .line 581
    .local v25, "cpve":Ljava/security/cert/CertPathValidatorException;
    if-eqz v6, :cond_1c4

    .line 586
    throw v6

    .line 588
    :cond_1c4
    throw v25

    .line 591
    .end local v25    # "cpve":Ljava/security/cert/CertPathValidatorException;
    :cond_1c5
    if-eqz v6, :cond_1c8

    .line 596
    throw v6

    .line 598
    :cond_1c8
    new-instance v15, Ljava/security/cert/CertPathValidatorException;

    .line 599
    const-string/jumbo v16, "Could not determine revocation status"

    .line 600
    sget-object v20, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

    .line 599
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, -0x1

    .line 598
    invoke-direct/range {v15 .. v20}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v15
.end method

.method private checkCRLs(Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/util/Set;Ljava/security/PublicKey;Z)V
    .registers 14
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p4, "pubKey"    # Ljava/security/PublicKey;
    .param p5, "signFlag"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
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

    .prologue
    .line 466
    .local p2, "unresolvedCritExts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p3, "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v0}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->trustAnchors()Ljava/util/Set;

    move-result-object v7

    .line 465
    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move v4, p5

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lsun/security/provider/certpath/RevocationChecker;->checkCRLs(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/security/cert/X509Certificate;ZZLjava/util/Set;Ljava/util/Set;)V

    .line 467
    return-void
.end method

.method private checkOCSP(Ljava/security/cert/X509Certificate;Ljava/util/Collection;)V
    .registers 35
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
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
    .line 671
    .local p2, "unresolvedCritExts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/16 v25, 0x0

    .line 673
    .local v25, "currCert":Lsun/security/x509/X509CertImpl;
    :try_start_2
    invoke-static/range {p1 .. p1}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;
    :try_end_5
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_5} :catch_69

    move-result-object v25

    .line 682
    .local v25, "currCert":Lsun/security/x509/X509CertImpl;
    const/16 v28, 0x0

    .line 683
    .local v28, "response":Lsun/security/provider/certpath/OCSPResponse;
    const/16 v22, 0x0

    .line 685
    .local v22, "certId":Lsun/security/provider/certpath/CertId;
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->issuerCert:Ljava/security/cert/X509Certificate;

    if-eqz v2, :cond_72

    .line 686
    new-instance v23, Lsun/security/provider/certpath/CertId;

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->issuerCert:Ljava/security/cert/X509Certificate;

    .line 687
    invoke-virtual/range {v25 .. v25}, Lsun/security/x509/X509CertImpl;->getSerialNumberObject()Lsun/security/x509/SerialNumber;

    move-result-object v3

    .line 686
    move-object/from16 v0, v23

    invoke-direct {v0, v2, v3}, Lsun/security/provider/certpath/CertId;-><init>(Ljava/security/cert/X509Certificate;Lsun/security/x509/SerialNumber;)V

    .local v23, "certId":Lsun/security/provider/certpath/CertId;
    move-object/from16 v22, v23

    .line 695
    .end local v23    # "certId":Lsun/security/provider/certpath/CertId;
    .local v22, "certId":Lsun/security/provider/certpath/CertId;
    :goto_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->ocspResponses:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, [B

    .line 696
    .local v29, "responseBytes":[B
    if-eqz v29, :cond_f1

    .line 697
    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_3b

    .line 698
    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    const-string/jumbo v3, "Found cached OCSP response"

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 700
    :cond_3b
    new-instance v1, Lsun/security/provider/certpath/OCSPResponse;

    move-object/from16 v0, v29

    invoke-direct {v1, v0}, Lsun/security/provider/certpath/OCSPResponse;-><init>([B)V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_42} :catch_109

    .line 703
    .local v1, "response":Lsun/security/provider/certpath/OCSPResponse;
    const/4 v6, 0x0

    .line 704
    .local v6, "nonce":[B
    :try_start_43
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->ocspExtensions:Ljava/util/List;

    .end local v28    # "response":Lsun/security/provider/certpath/OCSPResponse;
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .end local v6    # "nonce":[B
    .local v27, "ext$iterator":Ljava/util/Iterator;
    :cond_4b
    :goto_4b
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_90

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/security/cert/Extension;

    .line 705
    .local v26, "ext":Ljava/security/cert/Extension;
    invoke-interface/range {v26 .. v26}, Ljava/security/cert/Extension;->getId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1.3.6.1.5.5.7.48.1.2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 706
    invoke-interface/range {v26 .. v26}, Ljava/security/cert/Extension;->getValue()[B
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_67} :catch_153

    move-result-object v6

    .local v6, "nonce":[B
    goto :goto_4b

    .line 674
    .end local v1    # "response":Lsun/security/provider/certpath/OCSPResponse;
    .end local v6    # "nonce":[B
    .end local v22    # "certId":Lsun/security/provider/certpath/CertId;
    .end local v26    # "ext":Ljava/security/cert/Extension;
    .end local v27    # "ext$iterator":Ljava/util/Iterator;
    .end local v29    # "responseBytes":[B
    .local v25, "currCert":Lsun/security/x509/X509CertImpl;
    :catch_69
    move-exception v21

    .line 675
    .local v21, "ce":Ljava/security/cert/CertificateException;
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    move-object/from16 v0, v21

    invoke-direct {v2, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 690
    .end local v21    # "ce":Ljava/security/cert/CertificateException;
    .local v22, "certId":Lsun/security/provider/certpath/CertId;
    .local v25, "currCert":Lsun/security/x509/X509CertImpl;
    .restart local v28    # "response":Lsun/security/provider/certpath/OCSPResponse;
    :cond_72
    :try_start_72
    new-instance v23, Lsun/security/provider/certpath/CertId;

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->anchor:Ljava/security/cert/TrustAnchor;

    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getCA()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/provider/certpath/RevocationChecker;->anchor:Ljava/security/cert/TrustAnchor;

    invoke-virtual {v3}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    .line 691
    invoke-virtual/range {v25 .. v25}, Lsun/security/x509/X509CertImpl;->getSerialNumberObject()Lsun/security/x509/SerialNumber;

    move-result-object v4

    .line 690
    move-object/from16 v0, v23

    invoke-direct {v0, v2, v3, v4}, Lsun/security/provider/certpath/CertId;-><init>(Ljavax/security/auth/x500/X500Principal;Ljava/security/PublicKey;Lsun/security/x509/SerialNumber;)V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_8d} :catch_109

    .restart local v23    # "certId":Lsun/security/provider/certpath/CertId;
    move-object/from16 v22, v23

    .end local v23    # "certId":Lsun/security/provider/certpath/CertId;
    .local v22, "certId":Lsun/security/provider/certpath/CertId;
    goto :goto_21

    .line 709
    .end local v28    # "response":Lsun/security/provider/certpath/OCSPResponse;
    .restart local v1    # "response":Lsun/security/provider/certpath/OCSPResponse;
    .restart local v27    # "ext$iterator":Ljava/util/Iterator;
    .restart local v29    # "responseBytes":[B
    :cond_90
    :try_start_90
    invoke-static/range {v22 .. v22}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/provider/certpath/RevocationChecker;->issuerCert:Ljava/security/cert/X509Certificate;

    .line 710
    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/security/provider/certpath/RevocationChecker;->responderCert:Ljava/security/cert/X509Certificate;

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v5}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->date()Ljava/util/Date;

    move-result-object v5

    .line 709
    invoke-virtual/range {v1 .. v6}, Lsun/security/provider/certpath/OCSPResponse;->verify(Ljava/util/List;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;[B)V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_a7} :catch_153

    .line 733
    .end local v27    # "ext$iterator":Ljava/util/Iterator;
    :goto_a7
    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Lsun/security/provider/certpath/OCSPResponse;->getSingleResponse(Lsun/security/provider/certpath/CertId;)Lsun/security/provider/certpath/OCSPResponse$SingleResponse;

    move-result-object v31

    .line 734
    .local v31, "rs":Lsun/security/provider/certpath/OCSP$RevocationStatus;
    invoke-interface/range {v31 .. v31}, Lsun/security/provider/certpath/OCSP$RevocationStatus;->getCertStatus()Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    move-result-object v24

    .line 735
    .local v24, "certStatus":Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;
    sget-object v2, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;->REVOKED:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    move-object/from16 v0, v24

    if-ne v0, v2, :cond_135

    .line 736
    invoke-interface/range {v31 .. v31}, Lsun/security/provider/certpath/OCSP$RevocationStatus;->getRevocationTime()Ljava/util/Date;

    move-result-object v30

    .line 737
    .local v30, "revocationTime":Ljava/util/Date;
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->date()Ljava/util/Date;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_152

    .line 738
    new-instance v14, Ljava/security/cert/CertificateRevokedException;

    .line 739
    invoke-interface/range {v31 .. v31}, Lsun/security/provider/certpath/OCSP$RevocationStatus;->getRevocationReason()Ljava/security/cert/CRLReason;

    move-result-object v2

    .line 740
    invoke-virtual {v1}, Lsun/security/provider/certpath/OCSPResponse;->getSignerCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    .line 741
    invoke-interface/range {v31 .. v31}, Lsun/security/provider/certpath/OCSP$RevocationStatus;->getSingleExtensions()Ljava/util/Map;

    move-result-object v4

    .line 738
    move-object/from16 v0, v30

    invoke-direct {v14, v0, v2, v3, v4}, Ljava/security/cert/CertificateRevokedException;-><init>(Ljava/util/Date;Ljava/security/cert/CRLReason;Ljavax/security/auth/x500/X500Principal;Ljava/util/Map;)V

    .line 742
    .local v14, "t":Ljava/lang/Throwable;
    new-instance v12, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v13

    .line 743
    sget-object v17, Ljava/security/cert/CertPathValidatorException$BasicReason;->REVOKED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    .line 742
    const/4 v15, 0x0

    .line 743
    const/16 v16, -0x1

    .line 742
    invoke-direct/range {v12 .. v17}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v12

    .line 713
    .end local v1    # "response":Lsun/security/provider/certpath/OCSPResponse;
    .end local v14    # "t":Ljava/lang/Throwable;
    .end local v24    # "certStatus":Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;
    .end local v30    # "revocationTime":Ljava/util/Date;
    .end local v31    # "rs":Lsun/security/provider/certpath/OCSP$RevocationStatus;
    .restart local v28    # "response":Lsun/security/provider/certpath/OCSPResponse;
    :cond_f1
    :try_start_f1
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->responderURI:Ljava/net/URI;

    if-eqz v2, :cond_119

    .line 714
    move-object/from16 v0, p0

    iget-object v8, v0, Lsun/security/provider/certpath/RevocationChecker;->responderURI:Ljava/net/URI;

    .line 716
    .local v8, "responderURI":Ljava/net/URI;
    :goto_fb
    if-nez v8, :cond_11e

    .line 717
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    .line 718
    const-string/jumbo v3, "Certificate does not specify OCSP responder"

    const/4 v4, 0x0

    .line 719
    const/4 v5, 0x0

    const/4 v7, -0x1

    .line 717
    invoke-direct {v2, v3, v4, v5, v7}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2
    :try_end_109
    .catch Ljava/io/IOException; {:try_start_f1 .. :try_end_109} :catch_109

    .line 726
    .end local v8    # "responderURI":Ljava/net/URI;
    .end local v22    # "certId":Lsun/security/provider/certpath/CertId;
    .end local v29    # "responseBytes":[B
    :catch_109
    move-exception v11

    .local v11, "e":Ljava/io/IOException;
    move-object/from16 v1, v28

    .line 727
    .end local v28    # "response":Lsun/security/provider/certpath/OCSPResponse;
    .restart local v1    # "response":Lsun/security/provider/certpath/OCSPResponse;
    :goto_10c
    new-instance v9, Ljava/security/cert/CertPathValidatorException;

    .line 728
    const-string/jumbo v10, "Unable to determine revocation status due to network error"

    .line 729
    sget-object v14, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

    const/4 v12, 0x0

    const/4 v13, -0x1

    .line 727
    invoke-direct/range {v9 .. v14}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v9

    .line 715
    .end local v1    # "response":Lsun/security/provider/certpath/OCSPResponse;
    .end local v11    # "e":Ljava/io/IOException;
    .restart local v22    # "certId":Lsun/security/provider/certpath/CertId;
    .restart local v28    # "response":Lsun/security/provider/certpath/OCSPResponse;
    .restart local v29    # "responseBytes":[B
    :cond_119
    :try_start_119
    invoke-static/range {v25 .. v25}, Lsun/security/provider/certpath/OCSP;->getResponderURI(Lsun/security/x509/X509CertImpl;)Ljava/net/URI;

    move-result-object v8

    .restart local v8    # "responderURI":Ljava/net/URI;
    goto :goto_fb

    .line 722
    :cond_11e
    invoke-static/range {v22 .. v22}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 723
    move-object/from16 v0, p0

    iget-object v9, v0, Lsun/security/provider/certpath/RevocationChecker;->issuerCert:Ljava/security/cert/X509Certificate;

    move-object/from16 v0, p0

    iget-object v10, v0, Lsun/security/provider/certpath/RevocationChecker;->responderCert:Ljava/security/cert/X509Certificate;

    .line 724
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/provider/certpath/RevocationChecker;->ocspExtensions:Ljava/util/List;

    const/4 v11, 0x0

    .line 722
    invoke-static/range {v7 .. v12}, Lsun/security/provider/certpath/OCSP;->check(Ljava/util/List;Ljava/net/URI;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/util/List;)Lsun/security/provider/certpath/OCSPResponse;
    :try_end_132
    .catch Ljava/io/IOException; {:try_start_119 .. :try_end_132} :catch_109

    move-result-object v1

    .restart local v1    # "response":Lsun/security/provider/certpath/OCSPResponse;
    goto/16 :goto_a7

    .line 745
    .end local v8    # "responderURI":Ljava/net/URI;
    .end local v28    # "response":Lsun/security/provider/certpath/OCSPResponse;
    .restart local v24    # "certStatus":Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;
    .restart local v31    # "rs":Lsun/security/provider/certpath/OCSP$RevocationStatus;
    :cond_135
    sget-object v2, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;->UNKNOWN:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    move-object/from16 v0, v24

    if-ne v0, v2, :cond_152

    .line 746
    new-instance v15, Ljava/security/cert/CertPathValidatorException;

    .line 747
    const-string/jumbo v16, "Certificate\'s revocation status is unknown"

    .line 748
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certPath()Ljava/security/cert/CertPath;

    move-result-object v18

    .line 749
    sget-object v20, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

    .line 747
    const/16 v17, 0x0

    .line 748
    const/16 v19, -0x1

    .line 746
    invoke-direct/range {v15 .. v20}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v15

    .line 751
    :cond_152
    return-void

    .line 726
    .end local v24    # "certStatus":Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;
    .end local v31    # "rs":Lsun/security/provider/certpath/OCSP$RevocationStatus;
    :catch_153
    move-exception v11

    .restart local v11    # "e":Ljava/io/IOException;
    goto :goto_10c
.end method

.method private static getResponderCert(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;)Ljava/security/cert/X509Certificate;
    .registers 10
    .param p0, "issuer"    # Ljava/lang/String;
    .param p1, "serial"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;",
            "Ljava/util/List",
            "<",
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

    .prologue
    .line 246
    .local p2, "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    .local p3, "stores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    new-instance v2, Ljava/security/cert/X509CertSelector;

    invoke-direct {v2}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 248
    .local v2, "sel":Ljava/security/cert/X509CertSelector;
    :try_start_5
    new-instance v3, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v3, p0}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/security/cert/X509CertSelector;->setIssuer(Ljavax/security/auth/x500/X500Principal;)V
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_d} :catch_20

    .line 254
    :try_start_d
    new-instance v3, Ljava/math/BigInteger;

    invoke-static {p1}, Lsun/security/provider/certpath/RevocationChecker;->stripOutSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-direct {v3, v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/security/cert/X509CertSelector;->setSerialNumber(Ljava/math/BigInteger;)V
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_1b} :catch_2a

    .line 259
    invoke-static {v2, p2, p3}, Lsun/security/provider/certpath/RevocationChecker;->getResponderCert(Ljava/security/cert/X509CertSelector;Ljava/util/Set;Ljava/util/List;)Ljava/security/cert/X509Certificate;

    move-result-object v3

    return-object v3

    .line 249
    :catch_20
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    .line 251
    const-string/jumbo v4, "cannot parse ocsp.responderCertIssuerName property"

    .line 250
    invoke-direct {v3, v4, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 255
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2a
    move-exception v1

    .line 256
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    .line 257
    const-string/jumbo v4, "cannot parse ocsp.responderCertSerialNumber property"

    .line 256
    invoke-direct {v3, v4, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static getResponderCert(Ljava/lang/String;Ljava/util/Set;Ljava/util/List;)Ljava/security/cert/X509Certificate;
    .registers 7
    .param p0, "subject"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;",
            "Ljava/util/List",
            "<",
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

    .prologue
    .line 230
    .local p1, "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    .local p2, "stores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    new-instance v1, Ljava/security/cert/X509CertSelector;

    invoke-direct {v1}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 232
    .local v1, "sel":Ljava/security/cert/X509CertSelector;
    :try_start_5
    new-instance v2, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v2, p0}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/security/cert/X509CertSelector;->setSubject(Ljavax/security/auth/x500/X500Principal;)V
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_d} :catch_12

    .line 237
    invoke-static {v1, p1, p2}, Lsun/security/provider/certpath/RevocationChecker;->getResponderCert(Ljava/security/cert/X509CertSelector;Ljava/util/Set;Ljava/util/List;)Ljava/security/cert/X509Certificate;

    move-result-object v2

    return-object v2

    .line 233
    :catch_12
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    .line 235
    const-string/jumbo v3, "cannot parse ocsp.responderCertSubjectName property"

    .line 234
    invoke-direct {v2, v3, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static getResponderCert(Ljava/security/cert/X509CertSelector;Ljava/util/Set;Ljava/util/List;)Ljava/security/cert/X509Certificate;
    .registers 13
    .param p0, "sel"    # Ljava/security/cert/X509CertSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509CertSelector;",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;",
            "Ljava/util/List",
            "<",
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

    .prologue
    .line 268
    .local p1, "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    .local p2, "stores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "anchor$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/TrustAnchor;

    .line 269
    .local v0, "anchor":Ljava/security/cert/TrustAnchor;
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 270
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v2, :cond_4

    .line 273
    invoke-virtual {p0, v2}, Ljava/security/cert/X509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 274
    return-object v2

    .line 278
    .end local v0    # "anchor":Ljava/security/cert/TrustAnchor;
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    :cond_1d
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "store$iterator":Ljava/util/Iterator;
    :cond_21
    :goto_21
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_61

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/CertStore;

    .line 281
    .local v5, "store":Ljava/security/cert/CertStore;
    :try_start_2d
    invoke-virtual {v5, p0}, Ljava/security/cert/CertStore;->getCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;

    move-result-object v3

    .line 282
    .local v3, "certs":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/security/cert/Certificate;>;"
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_21

    .line 283
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/cert/X509Certificate;
    :try_end_41
    .catch Ljava/security/cert/CertStoreException; {:try_start_2d .. :try_end_41} :catch_42

    return-object v7

    .line 285
    .end local v3    # "certs":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/security/cert/Certificate;>;"
    :catch_42
    move-exception v4

    .line 287
    .local v4, "e":Ljava/security/cert/CertStoreException;
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v7, :cond_21

    .line 288
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "CertStore exception:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_21

    .line 293
    .end local v4    # "e":Ljava/security/cert/CertStoreException;
    .end local v5    # "store":Ljava/security/cert/CertStore;
    :cond_61
    new-instance v7, Ljava/security/cert/CertPathValidatorException;

    .line 294
    const-string/jumbo v8, "Cannot find the responder\'s certificate (set using the OCSP security properties)."

    .line 293
    invoke-direct {v7, v8}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private static getResponderCert(Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;Ljava/util/Set;Ljava/util/List;)Ljava/security/cert/X509Certificate;
    .registers 5
    .param p0, "rp"    # Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;",
            "Ljava/util/List",
            "<",
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

    .prologue
    .local p1, "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    .local p2, "stores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    const/4 v1, 0x0

    .line 212
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspSubject:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 213
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspSubject:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lsun/security/provider/certpath/RevocationChecker;->getResponderCert(Ljava/lang/String;Ljava/util/Set;Ljava/util/List;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0

    .line 214
    :cond_c
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspIssuer:Ljava/lang/String;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspSerial:Ljava/lang/String;

    if-eqz v0, :cond_1d

    .line 215
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspIssuer:Ljava/lang/String;

    iget-object v1, p0, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspSerial:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lsun/security/provider/certpath/RevocationChecker;->getResponderCert(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0

    .line 217
    :cond_1d
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspIssuer:Ljava/lang/String;

    if-nez v0, :cond_25

    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspSerial:Ljava/lang/String;

    if-eqz v0, :cond_2e

    .line 218
    :cond_25
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    .line 219
    const-string/jumbo v1, "Must specify both ocsp.responderCertIssuerName and ocsp.responderCertSerialNumber properties"

    .line 218
    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_2e
    return-object v1
.end method

.method private static getRevocationProperties()Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;
    .registers 1

    .prologue
    .line 182
    new-instance v0, Lsun/security/provider/certpath/RevocationChecker$1;

    invoke-direct {v0}, Lsun/security/provider/certpath/RevocationChecker$1;-><init>()V

    .line 181
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;

    return-object v0
.end method

.method private isSoftFailException(Ljava/security/cert/CertPathValidatorException;)Z
    .registers 8
    .param p1, "e"    # Ljava/security/cert/CertPathValidatorException;

    .prologue
    .line 425
    iget-boolean v1, p0, Lsun/security/provider/certpath/RevocationChecker;->softFail:Z

    if-eqz v1, :cond_2c

    .line 426
    invoke-virtual {p1}, Ljava/security/cert/CertPathValidatorException;->getReason()Ljava/security/cert/CertPathValidatorException$Reason;

    move-result-object v1

    sget-object v2, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

    if-ne v1, v2, :cond_2c

    .line 429
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    .line 430
    invoke-virtual {p1}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/security/cert/CertPathValidatorException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    iget-object v3, p0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v3}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certPath()Ljava/security/cert/CertPath;

    move-result-object v3

    iget v4, p0, Lsun/security/provider/certpath/RevocationChecker;->certIndex:I

    .line 431
    invoke-virtual {p1}, Ljava/security/cert/CertPathValidatorException;->getReason()Ljava/security/cert/CertPathValidatorException$Reason;

    move-result-object v5

    .line 429
    invoke-direct/range {v0 .. v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    .line 432
    .local v0, "e2":Ljava/security/cert/CertPathValidatorException;
    iget-object v1, p0, Lsun/security/provider/certpath/RevocationChecker;->softFailExceptions:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 433
    const/4 v1, 0x1

    return v1

    .line 435
    .end local v0    # "e2":Ljava/security/cert/CertPathValidatorException;
    :cond_2c
    const/4 v1, 0x0

    return v1
.end method

.method private static stripOutSeparators(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "value"    # Ljava/lang/String;

    .prologue
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

    if-ge v2, v3, :cond_21

    .line 761
    const-string/jumbo v3, "0123456789ABCDEFabcdef"

    aget-char v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1e

    .line 762
    aget-char v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 760
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 765
    :cond_21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static toURI(Ljava/lang/String;)Ljava/net/URI;
    .registers 4
    .param p0, "uriString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 170
    if-eqz p0, :cond_9

    .line 171
    :try_start_3
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_8} :catch_a

    return-object v1

    .line 173
    :cond_9
    return-object v1

    .line 174
    :catch_a
    move-exception v0

    .line 175
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    .line 176
    const-string/jumbo v2, "cannot parse ocsp.responderURL property"

    .line 175
    invoke-direct {v1, v2, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private updateState(Ljava/security/cert/X509Certificate;)V
    .registers 4
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
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

    if-lez v1, :cond_24

    .line 452
    iget v1, p0, Lsun/security/provider/certpath/RevocationChecker;->certIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lsun/security/provider/certpath/RevocationChecker;->certIndex:I

    .line 454
    :cond_24
    return-void
.end method

.method private verifyPossibleCRLs(Ljava/util/Set;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Z[ZLjava/util/Set;)Ljava/util/Collection;
    .registers 26
    .param p2, "cert"    # Ljava/security/cert/X509Certificate;
    .param p3, "prevKey"    # Ljava/security/PublicKey;
    .param p4, "signFlag"    # Z
    .param p5, "reasonsMask"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509CRL;",
            ">;",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/security/PublicKey;",
            "Z[Z",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 809
    .local p1, "crls":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509CRL;>;"
    .local p6, "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    :try_start_0
    invoke-static/range {p2 .. p2}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object v1

    .line 810
    .local v1, "certImpl":Lsun/security/x509/X509CertImpl;
    sget-object v4, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_25

    .line 811
    sget-object v4, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "RevocationChecker.verifyPossibleCRLs: Checking CRLDPs for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 813
    invoke-virtual {v1}, Lsun/security/x509/X509CertImpl;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    .line 811
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 816
    :cond_25
    invoke-virtual {v1}, Lsun/security/x509/X509CertImpl;->getCRLDistributionPointsExtension()Lsun/security/x509/CRLDistributionPointsExtension;

    move-result-object v15

    .line 817
    .local v15, "ext":Lsun/security/x509/CRLDistributionPointsExtension;
    const/16 v17, 0x0

    .line 818
    .local v17, "points":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/DistributionPoint;>;"
    if-nez v15, :cond_c4

    .line 822
    invoke-virtual {v1}, Lsun/security/x509/X509CertImpl;->getIssuerDN()Ljava/security/Principal;

    move-result-object v12

    check-cast v12, Lsun/security/x509/X500Name;

    .line 823
    .local v12, "certIssuer":Lsun/security/x509/X500Name;
    new-instance v2, Lsun/security/x509/DistributionPoint;

    .line 824
    new-instance v4, Lsun/security/x509/GeneralNames;

    invoke-direct {v4}, Lsun/security/x509/GeneralNames;-><init>()V

    new-instance v5, Lsun/security/x509/GeneralName;

    invoke-direct {v5, v12}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/x509/GeneralNameInterface;)V

    invoke-virtual {v4, v5}, Lsun/security/x509/GeneralNames;->add(Lsun/security/x509/GeneralName;)Lsun/security/x509/GeneralNames;

    move-result-object v4

    .line 825
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 823
    invoke-direct {v2, v4, v5, v6}, Lsun/security/x509/DistributionPoint;-><init>(Lsun/security/x509/GeneralNames;[ZLsun/security/x509/GeneralNames;)V

    .line 826
    .local v2, "point":Lsun/security/x509/DistributionPoint;
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    .line 830
    .end local v2    # "point":Lsun/security/x509/DistributionPoint;
    .end local v12    # "certIssuer":Lsun/security/x509/X500Name;
    .local v17, "points":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/DistributionPoint;>;"
    :goto_4c
    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    .line 831
    .local v18, "results":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509CRL;>;"
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "point$iterator":Ljava/util/Iterator;
    :cond_55
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/x509/DistributionPoint;

    .line 832
    .restart local v2    # "point":Lsun/security/x509/DistributionPoint;
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "crl$iterator":Ljava/util/Iterator;
    :cond_65
    :goto_65
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_cc

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509CRL;

    .line 835
    .local v3, "crl":Ljava/security/cert/X509CRL;
    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v4}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->sigProvider()Ljava/lang/String;

    move-result-object v8

    .line 836
    move-object/from16 v0, p0

    iget-object v10, v0, Lsun/security/provider/certpath/RevocationChecker;->certStores:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v4}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->date()Ljava/util/Date;

    move-result-object v11

    .line 835
    const/4 v7, 0x0

    move-object/from16 v4, p5

    move/from16 v5, p4

    move-object/from16 v6, p3

    move-object/from16 v9, p6

    .line 833
    invoke-static/range {v1 .. v11}, Lsun/security/provider/certpath/DistributionPointFetcher;->verifyCRL(Lsun/security/x509/X509CertImpl;Lsun/security/x509/DistributionPoint;Ljava/security/cert/X509CRL;[ZZLjava/security/PublicKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 838
    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_99
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_99} :catch_9a
    .catch Ljava/security/cert/CRLException; {:try_start_0 .. :try_end_99} :catch_9a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_99} :catch_9a

    goto :goto_65

    .line 845
    .end local v1    # "certImpl":Lsun/security/x509/X509CertImpl;
    .end local v2    # "point":Lsun/security/x509/DistributionPoint;
    .end local v3    # "crl":Ljava/security/cert/X509CRL;
    .end local v13    # "crl$iterator":Ljava/util/Iterator;
    .end local v15    # "ext":Lsun/security/x509/CRLDistributionPointsExtension;
    .end local v16    # "point$iterator":Ljava/util/Iterator;
    .end local v17    # "points":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/DistributionPoint;>;"
    .end local v18    # "results":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509CRL;>;"
    :catch_9a
    move-exception v14

    .line 846
    .local v14, "e":Ljava/lang/Exception;
    sget-object v4, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_bf

    .line 847
    sget-object v4, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception while verifying CRL: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 848
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    .line 850
    :cond_bf
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    return-object v4

    .line 828
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v1    # "certImpl":Lsun/security/x509/X509CertImpl;
    .restart local v15    # "ext":Lsun/security/x509/CRLDistributionPointsExtension;
    .local v17, "points":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/DistributionPoint;>;"
    :cond_c4
    :try_start_c4
    const-string/jumbo v4, "points"

    invoke-virtual {v15, v4}, Lsun/security/x509/CRLDistributionPointsExtension;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v17

    .local v17, "points":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/DistributionPoint;>;"
    goto :goto_4c

    .line 841
    .restart local v2    # "point":Lsun/security/x509/DistributionPoint;
    .restart local v13    # "crl$iterator":Ljava/util/Iterator;
    .restart local v16    # "point$iterator":Ljava/util/Iterator;
    .restart local v18    # "results":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509CRL;>;"
    :cond_cc
    sget-object v4, Lsun/security/provider/certpath/RevocationChecker;->ALL_REASONS:[Z

    move-object/from16 v0, p5

    invoke-static {v0, v4}, Ljava/util/Arrays;->equals([Z[Z)Z
    :try_end_d3
    .catch Ljava/security/cert/CertificateException; {:try_start_c4 .. :try_end_d3} :catch_9a
    .catch Ljava/security/cert/CRLException; {:try_start_c4 .. :try_end_d3} :catch_9a
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_d3} :catch_9a

    move-result v4

    if-eqz v4, :cond_55

    .line 844
    .end local v2    # "point":Lsun/security/x509/DistributionPoint;
    .end local v13    # "crl$iterator":Ljava/util/Iterator;
    :cond_d6
    return-object v18
.end method

.method private verifyWithSeparateSigningKey(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;ZLjava/util/Set;)V
    .registers 12
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p2, "prevKey"    # Ljava/security/PublicKey;
    .param p3, "signFlag"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/security/PublicKey;",
            "Z",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .local p4, "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    const/4 v2, 0x0

    .line 882
    const-string/jumbo v6, "revocation status"

    .line 883
    .local v6, "msg":Ljava/lang/String;
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_28

    .line 884
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    .line 885
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "RevocationChecker.verifyWithSeparateSigningKey() ---checking "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 886
    const-string/jumbo v3, "..."

    .line 885
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 884
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 892
    :cond_28
    if-eqz p4, :cond_49

    invoke-interface {p4, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 893
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_3c

    .line 894
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    .line 895
    const-string/jumbo v1, "RevocationChecker.verifyWithSeparateSigningKey() circular dependency"

    .line 894
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 898
    :cond_3c
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    .line 899
    const-string/jumbo v1, "Could not determine revocation status"

    .line 900
    sget-object v5, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

    .line 899
    const/4 v4, -0x1

    move-object v3, v2

    .line 898
    invoke-direct/range {v0 .. v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v0

    .line 907
    :cond_49
    if-nez p3, :cond_4f

    .line 908
    invoke-direct {p0, p1, v2, p4}, Lsun/security/provider/certpath/RevocationChecker;->buildToNewKey(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/Set;)V

    .line 912
    :goto_4e
    return-void

    .line 910
    :cond_4f
    invoke-direct {p0, p1, p2, p4}, Lsun/security/provider/certpath/RevocationChecker;->buildToNewKey(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/Set;)V

    goto :goto_4e
.end method


# virtual methods
.method public check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    .registers 5
    .param p1, "cert"    # Ljava/security/cert/Certificate;
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
    .line 337
    .local p2, "unresolvedCritExts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 338
    .end local p1    # "cert":Ljava/security/cert/Certificate;
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->prevPubKey:Ljava/security/PublicKey;

    iget-boolean v1, p0, Lsun/security/provider/certpath/RevocationChecker;->crlSignFlag:Z

    .line 337
    invoke-direct {p0, p1, p2, v0, v1}, Lsun/security/provider/certpath/RevocationChecker;->check(Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/security/PublicKey;Z)V

    .line 339
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1099
    invoke-virtual {p0}, Lsun/security/provider/certpath/RevocationChecker;->clone()Lsun/security/provider/certpath/RevocationChecker;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/security/cert/PKIXRevocationChecker;
    .registers 2

    .prologue
    .line 1099
    invoke-virtual {p0}, Lsun/security/provider/certpath/RevocationChecker;->clone()Lsun/security/provider/certpath/RevocationChecker;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lsun/security/provider/certpath/RevocationChecker;
    .registers 4

    .prologue
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

.method public getSoftFailExceptions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertPathValidatorException;",
            ">;"
        }
    .end annotation

    .prologue
    .line 330
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->softFailExceptions:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
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
    .line 325
    const/4 v0, 0x0

    return-object v0
.end method

.method init(Ljava/security/cert/TrustAnchor;Lsun/security/provider/certpath/PKIX$ValidatorParams;)V
    .registers 14
    .param p1, "anchor"    # Ljava/security/cert/TrustAnchor;
    .param p2, "params"    # Lsun/security/provider/certpath/PKIX$ValidatorParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-static {}, Lsun/security/provider/certpath/RevocationChecker;->getRevocationProperties()Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;

    move-result-object v5

    .line 103
    .local v5, "rp":Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;
    invoke-virtual {p0}, Lsun/security/provider/certpath/RevocationChecker;->getOcspResponder()Ljava/net/URI;

    move-result-object v6

    .line 104
    .local v6, "uri":Ljava/net/URI;
    if-nez v6, :cond_10

    iget-object v7, v5, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspUrl:Ljava/lang/String;

    invoke-static {v7}, Lsun/security/provider/certpath/RevocationChecker;->toURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v6

    .end local v6    # "uri":Ljava/net/URI;
    :cond_10
    iput-object v6, p0, Lsun/security/provider/certpath/RevocationChecker;->responderURI:Ljava/net/URI;

    .line 105
    invoke-virtual {p0}, Lsun/security/provider/certpath/RevocationChecker;->getOcspResponderCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 106
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    if-nez v0, :cond_24

    .line 107
    invoke-virtual {p2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->trustAnchors()Ljava/util/Set;

    move-result-object v7

    .line 108
    invoke-virtual {p2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certStores()Ljava/util/List;

    move-result-object v8

    .line 107
    invoke-static {v5, v7, v8}, Lsun/security/provider/certpath/RevocationChecker;->getResponderCert(Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;Ljava/util/Set;Ljava/util/List;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 106
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    :cond_24
    iput-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->responderCert:Ljava/security/cert/X509Certificate;

    .line 110
    invoke-virtual {p0}, Lsun/security/provider/certpath/RevocationChecker;->getOptions()Ljava/util/Set;

    move-result-object v4

    .line 111
    .local v4, "options":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PKIXRevocationChecker$Option;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "option$iterator":Ljava/util/Iterator;
    :pswitch_2e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_61

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/PKIXRevocationChecker$Option;

    .line 112
    .local v2, "option":Ljava/security/cert/PKIXRevocationChecker$Option;
    invoke-static {}, Lsun/security/provider/certpath/RevocationChecker;->-getjava-security-cert-PKIXRevocationChecker$OptionSwitchesValues()[I

    move-result-object v7

    invoke-virtual {v2}, Ljava/security/cert/PKIXRevocationChecker$Option;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_108

    .line 119
    new-instance v7, Ljava/security/cert/CertPathValidatorException;

    .line 120
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unrecognized revocation parameter option: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 119
    invoke-direct {v7, v8}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 123
    .end local v2    # "option":Ljava/security/cert/PKIXRevocationChecker$Option;
    :cond_61
    sget-object v7, Ljava/security/cert/PKIXRevocationChecker$Option;->SOFT_FAIL:Ljava/security/cert/PKIXRevocationChecker$Option;

    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lsun/security/provider/certpath/RevocationChecker;->softFail:Z

    .line 126
    iget-boolean v7, p0, Lsun/security/provider/certpath/RevocationChecker;->legacy:Z

    if-eqz v7, :cond_b5

    .line 127
    iget-boolean v7, v5, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspEnabled:Z

    if-eqz v7, :cond_b2

    sget-object v7, Lsun/security/provider/certpath/RevocationChecker$Mode;->PREFER_OCSP:Lsun/security/provider/certpath/RevocationChecker$Mode;

    :goto_73
    iput-object v7, p0, Lsun/security/provider/certpath/RevocationChecker;->mode:Lsun/security/provider/certpath/RevocationChecker$Mode;

    .line 128
    iget-boolean v7, v5, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->onlyEE:Z

    iput-boolean v7, p0, Lsun/security/provider/certpath/RevocationChecker;->onlyEE:Z

    .line 141
    :goto_79
    iget-boolean v7, p0, Lsun/security/provider/certpath/RevocationChecker;->legacy:Z

    if-eqz v7, :cond_e4

    .line 142
    iget-boolean v7, v5, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->crlDPEnabled:Z

    iput-boolean v7, p0, Lsun/security/provider/certpath/RevocationChecker;->crlDP:Z

    .line 146
    :goto_81
    invoke-virtual {p0}, Lsun/security/provider/certpath/RevocationChecker;->getOcspResponses()Ljava/util/Map;

    move-result-object v7

    iput-object v7, p0, Lsun/security/provider/certpath/RevocationChecker;->ocspResponses:Ljava/util/Map;

    .line 147
    invoke-virtual {p0}, Lsun/security/provider/certpath/RevocationChecker;->getOcspExtensions()Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lsun/security/provider/certpath/RevocationChecker;->ocspExtensions:Ljava/util/List;

    .line 149
    iput-object p1, p0, Lsun/security/provider/certpath/RevocationChecker;->anchor:Ljava/security/cert/TrustAnchor;

    .line 150
    iput-object p2, p0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    .line 151
    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certStores()Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v7, p0, Lsun/security/provider/certpath/RevocationChecker;->certStores:Ljava/util/List;

    .line 153
    :try_start_9c
    iget-object v7, p0, Lsun/security/provider/certpath/RevocationChecker;->certStores:Ljava/util/List;

    const-string/jumbo v8, "Collection"

    .line 154
    new-instance v9, Ljava/security/cert/CollectionCertStoreParameters;

    invoke-virtual {p2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certificates()Ljava/util/List;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/cert/CollectionCertStoreParameters;-><init>(Ljava/util/Collection;)V

    .line 153
    invoke-static {v8, v9}, Ljava/security/cert/CertStore;->getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)Ljava/security/cert/CertStore;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_9c .. :try_end_b1} :catch_e8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9c .. :try_end_b1} :catch_e8

    .line 164
    :cond_b1
    :goto_b1
    return-void

    .line 127
    :cond_b2
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker$Mode;->ONLY_CRLS:Lsun/security/provider/certpath/RevocationChecker$Mode;

    goto :goto_73

    .line 130
    :cond_b5
    sget-object v7, Ljava/security/cert/PKIXRevocationChecker$Option;->NO_FALLBACK:Ljava/security/cert/PKIXRevocationChecker$Option;

    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d7

    .line 131
    sget-object v7, Ljava/security/cert/PKIXRevocationChecker$Option;->PREFER_CRLS:Ljava/security/cert/PKIXRevocationChecker$Option;

    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d2

    .line 132
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker$Mode;->ONLY_CRLS:Lsun/security/provider/certpath/RevocationChecker$Mode;

    iput-object v7, p0, Lsun/security/provider/certpath/RevocationChecker;->mode:Lsun/security/provider/certpath/RevocationChecker$Mode;

    .line 139
    :cond_c9
    :goto_c9
    sget-object v7, Ljava/security/cert/PKIXRevocationChecker$Option;->ONLY_END_ENTITY:Ljava/security/cert/PKIXRevocationChecker$Option;

    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lsun/security/provider/certpath/RevocationChecker;->onlyEE:Z

    goto :goto_79

    .line 134
    :cond_d2
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker$Mode;->ONLY_OCSP:Lsun/security/provider/certpath/RevocationChecker$Mode;

    iput-object v7, p0, Lsun/security/provider/certpath/RevocationChecker;->mode:Lsun/security/provider/certpath/RevocationChecker$Mode;

    goto :goto_c9

    .line 136
    :cond_d7
    sget-object v7, Ljava/security/cert/PKIXRevocationChecker$Option;->PREFER_CRLS:Ljava/security/cert/PKIXRevocationChecker$Option;

    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c9

    .line 137
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker$Mode;->PREFER_CRLS:Lsun/security/provider/certpath/RevocationChecker$Mode;

    iput-object v7, p0, Lsun/security/provider/certpath/RevocationChecker;->mode:Lsun/security/provider/certpath/RevocationChecker$Mode;

    goto :goto_c9

    .line 144
    :cond_e4
    const/4 v7, 0x1

    iput-boolean v7, p0, Lsun/security/provider/certpath/RevocationChecker;->crlDP:Z

    goto :goto_81

    .line 156
    :catch_e8
    move-exception v1

    .line 159
    .local v1, "e":Ljava/security/GeneralSecurityException;
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v7, :cond_b1

    .line 160
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "RevocationChecker: error creating Collection CertStore: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_b1

    .line 112
    nop

    :pswitch_data_108
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
    .end packed-switch
.end method

.method public init(Z)V
    .registers 4
    .param p1, "forward"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 300
    if-eqz p1, :cond_b

    .line 301
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    .line 302
    const-string/jumbo v1, "forward checking not supported"

    .line 301
    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_b
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->anchor:Ljava/security/cert/TrustAnchor;

    if-eqz v0, :cond_23

    .line 305
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->anchor:Ljava/security/cert/TrustAnchor;

    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->issuerCert:Ljava/security/cert/X509Certificate;

    .line 306
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->issuerCert:Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->issuerCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    :goto_21
    iput-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->prevPubKey:Ljava/security/PublicKey;

    .line 309
    :cond_23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/provider/certpath/RevocationChecker;->crlSignFlag:Z

    .line 310
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    if-eqz v0, :cond_51

    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v0}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certPath()Ljava/security/cert/CertPath;

    move-result-object v0

    if-eqz v0, :cond_51

    .line 311
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v0}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certPath()Ljava/security/cert/CertPath;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lsun/security/provider/certpath/RevocationChecker;->certIndex:I

    .line 315
    :goto_44
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->softFailExceptions:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 316
    return-void

    .line 307
    :cond_4a
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->anchor:Ljava/security/cert/TrustAnchor;

    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    goto :goto_21

    .line 313
    :cond_51
    const/4 v0, -0x1

    iput v0, p0, Lsun/security/provider/certpath/RevocationChecker;->certIndex:I

    goto :goto_44
.end method

.method public isForwardCheckingSupported()Z
    .registers 2

    .prologue
    .line 320
    const/4 v0, 0x0

    return v0
.end method
