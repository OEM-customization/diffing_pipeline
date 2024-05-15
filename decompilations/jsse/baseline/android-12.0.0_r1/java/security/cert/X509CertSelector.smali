.class public Ljava/security/cert/X509CertSelector;
.super Ljava/lang/Object;
.source "X509CertSelector.java"

# interfaces
.implements Ljava/security/cert/CertSelector;


# static fields
.field private static final greylist-max-o ANY_EXTENDED_KEY_USAGE:Lsun/security/util/ObjectIdentifier;

.field private static final greylist-max-o CERT_POLICIES_ID:I = 0x3

.field private static final greylist-max-o EXTENDED_KEY_USAGE_ID:I = 0x4

.field private static final greylist-max-o EXTENSION_OIDS:[Ljava/lang/String;

.field private static final greylist-max-o FALSE:Ljava/lang/Boolean;

.field static final greylist-max-o NAME_ANY:I = 0x0

.field private static final greylist-max-o NAME_CONSTRAINTS_ID:I = 0x2

.field static final greylist-max-o NAME_DIRECTORY:I = 0x4

.field static final greylist-max-o NAME_DNS:I = 0x2

.field static final greylist-max-o NAME_EDI:I = 0x5

.field static final greylist-max-o NAME_IP:I = 0x7

.field static final greylist-max-o NAME_OID:I = 0x8

.field static final greylist-max-o NAME_RFC822:I = 0x1

.field static final greylist-max-o NAME_URI:I = 0x6

.field static final greylist-max-o NAME_X400:I = 0x3

.field private static final greylist-max-o NUM_OF_EXTENSIONS:I = 0x5

.field private static final greylist-max-o PRIVATE_KEY_USAGE_ID:I = 0x0

.field private static final greylist-max-o SUBJECT_ALT_NAME_ID:I = 0x1

.field private static final greylist-max-o debug:Lsun/security/util/Debug;


# instance fields
.field private greylist-max-o authorityKeyID:[B

.field private greylist-max-o basicConstraints:I

.field private greylist-max-o certificateValid:Ljava/util/Date;

.field private greylist-max-o issuer:Ljavax/security/auth/x500/X500Principal;

.field private greylist-max-o keyPurposeOIDSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lsun/security/util/ObjectIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o keyPurposeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o keyUsage:[Z

.field private greylist-max-o matchAllSubjectAltNames:Z

.field private greylist-max-o nc:Lsun/security/x509/NameConstraintsExtension;

.field private greylist-max-o ncBytes:[B

.field private greylist-max-o pathToGeneralNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lsun/security/x509/GeneralNameInterface;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o pathToNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/List<",
            "*>;>;"
        }
    .end annotation
.end field

.field private greylist-max-o policy:Lsun/security/x509/CertificatePolicySet;

.field private greylist-max-o policySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o privateKeyValid:Ljava/util/Date;

.field private greylist-max-o serialNumber:Ljava/math/BigInteger;

.field private greylist-max-o subject:Ljavax/security/auth/x500/X500Principal;

.field private greylist-max-o subjectAlternativeGeneralNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lsun/security/x509/GeneralNameInterface;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o subjectAlternativeNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/List<",
            "*>;>;"
        }
    .end annotation
.end field

.field private greylist-max-o subjectKeyID:[B

.field private greylist-max-o subjectPublicKey:Ljava/security/PublicKey;

.field private greylist-max-o subjectPublicKeyAlgID:Lsun/security/util/ObjectIdentifier;

.field private greylist-max-o subjectPublicKeyBytes:[B

.field private greylist-max-o x509Cert:Ljava/security/cert/X509Certificate;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 88
    const-string v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    .line 90
    const/4 v0, 0x5

    new-array v1, v0, [I

    fill-array-data v1, :array_3a

    .line 91
    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Ljava/security/cert/X509CertSelector;->ANY_EXTENDED_KEY_USAGE:Lsun/security/util/ObjectIdentifier;

    .line 94
    invoke-static {}, Ljava/security/cert/CertPathHelperImpl;->initialize()V

    .line 122
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v1, Ljava/security/cert/X509CertSelector;->FALSE:Ljava/lang/Boolean;

    .line 130
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Ljava/security/cert/X509CertSelector;->EXTENSION_OIDS:[Ljava/lang/String;

    .line 133
    const/4 v1, 0x0

    const-string v2, "2.5.29.16"

    aput-object v2, v0, v1

    .line 134
    const/4 v1, 0x1

    const-string v2, "2.5.29.17"

    aput-object v2, v0, v1

    .line 135
    const/4 v1, 0x2

    const-string v2, "2.5.29.30"

    aput-object v2, v0, v1

    .line 136
    const/4 v1, 0x3

    const-string v2, "2.5.29.32"

    aput-object v2, v0, v1

    .line 137
    const/4 v1, 0x4

    const-string v2, "2.5.29.37"

    aput-object v2, v0, v1

    .line 138
    return-void

    nop

    :array_3a
    .array-data 4
        0x2
        0x5
        0x1d
        0x25
        0x0
    .end array-data
.end method

.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/4 v0, -0x1

    iput v0, p0, Ljava/security/cert/X509CertSelector;->basicConstraints:I

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/security/cert/X509CertSelector;->matchAllSubjectAltNames:Z

    .line 157
    return-void
.end method

.method private greylist-max-o addPathToNameInternal(ILjava/lang/Object;)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "name"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1268
    invoke-static {p1, p2}, Ljava/security/cert/X509CertSelector;->makeGeneralNameInterface(ILjava/lang/Object;)Lsun/security/x509/GeneralNameInterface;

    move-result-object v0

    .line 1269
    .local v0, "tempName":Lsun/security/x509/GeneralNameInterface;
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    if-nez v1, :cond_16

    .line 1270
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/Set;

    .line 1271
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    .line 1273
    :cond_16
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1274
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1275
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1276
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1277
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1278
    return-void
.end method

.method private greylist-max-o addSubjectAlternativeNameInternal(ILjava/lang/Object;)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "name"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 816
    invoke-static {p1, p2}, Ljava/security/cert/X509CertSelector;->makeGeneralNameInterface(ILjava/lang/Object;)Lsun/security/x509/GeneralNameInterface;

    move-result-object v0

    .line 817
    .local v0, "tempName":Lsun/security/x509/GeneralNameInterface;
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    if-nez v1, :cond_f

    .line 818
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    .line 820
    :cond_f
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeGeneralNames:Ljava/util/Set;

    if-nez v1, :cond_1a

    .line 821
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeGeneralNames:Ljava/util/Set;

    .line 823
    :cond_1a
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 824
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 825
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 826
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 827
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeGeneralNames:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 828
    return-void
.end method

.method private static greylist-max-o cloneAndCheckNames(Ljava/util/Collection;)Ljava/util/Set;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/util/List<",
            "*>;>;)",
            "Ljava/util/Set<",
            "Ljava/util/List<",
            "*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1674
    .local p0, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1675
    .local v0, "namesCopy":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/List<*>;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1677
    .local v2, "o":Ljava/util/List;, "Ljava/util/List<*>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1678
    .end local v2    # "o":Ljava/util/List;, "Ljava/util/List<*>;"
    goto :goto_9

    .line 1681
    :cond_1e
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_91

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1683
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    move-object v3, v2

    .line 1684
    .local v3, "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_89

    .line 1687
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 1688
    .local v4, "o":Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_81

    .line 1691
    move-object v5, v4

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1692
    .local v5, "nameType":I
    if-ltz v5, :cond_79

    const/16 v6, 0x8

    if-gt v5, v6, :cond_79

    .line 1695
    const/4 v6, 0x1

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 1696
    .local v7, "nameObject":Ljava/lang/Object;
    instance-of v8, v7, [B

    if-nez v8, :cond_6a

    instance-of v8, v7, Ljava/lang/String;

    if-nez v8, :cond_6a

    .line 1698
    sget-object v1, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_62

    .line 1699
    const-string v6, "X509CertSelector.cloneAndCheckNames() name not byte array"

    invoke-virtual {v1, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 1702
    :cond_62
    new-instance v1, Ljava/io/IOException;

    const-string v6, "name not byte array or String"

    invoke-direct {v1, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1704
    :cond_6a
    instance-of v8, v7, [B

    if-eqz v8, :cond_78

    .line 1705
    move-object v8, v7

    check-cast v8, [B

    invoke-virtual {v8}, [B->clone()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v3, v6, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1707
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v3    # "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v4    # "o":Ljava/lang/Object;
    .end local v5    # "nameType":I
    .end local v7    # "nameObject":Ljava/lang/Object;
    :cond_78
    goto :goto_22

    .line 1693
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .restart local v3    # "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v4    # "o":Ljava/lang/Object;
    .restart local v5    # "nameType":I
    :cond_79
    new-instance v1, Ljava/io/IOException;

    const-string v6, "name type not 0-8"

    invoke-direct {v1, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1689
    .end local v5    # "nameType":I
    :cond_81
    new-instance v1, Ljava/io/IOException;

    const-string v5, "expected an Integer"

    invoke-direct {v1, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1685
    .end local v4    # "o":Ljava/lang/Object;
    :cond_89
    new-instance v1, Ljava/io/IOException;

    const-string v4, "name list size not 2"

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1708
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v3    # "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_91
    return-object v0
.end method

.method private static greylist-max-o cloneNames(Ljava/util/Collection;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/util/List<",
            "*>;>;)",
            "Ljava/util/Set<",
            "Ljava/util/List<",
            "*>;>;"
        }
    .end annotation

    .line 1650
    .local p0, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    :try_start_0
    invoke-static {p0}, Ljava/security/cert/X509CertSelector;->cloneAndCheckNames(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 1651
    :catch_5
    move-exception v0

    .line 1652
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cloneNames encountered IOException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1653
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static greylist-max-o cloneSet(Ljava/util/Set;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 2590
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    instance-of v0, p0, Ljava/util/HashSet;

    if-eqz v0, :cond_f

    .line 2591
    move-object v0, p0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 2592
    .local v0, "clone":Ljava/lang/Object;
    move-object v1, v0

    check-cast v1, Ljava/util/Set;

    return-object v1

    .line 2594
    .end local v0    # "clone":Ljava/lang/Object;
    :cond_f
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method static greylist-max-o equalNames(Ljava/util/Collection;Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 876
    .local p0, "object1":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .local p1, "object2":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-eqz p0, :cond_a

    if-nez p1, :cond_5

    goto :goto_a

    .line 879
    :cond_5
    invoke-interface {p0, p1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 877
    :cond_a
    :goto_a
    if-ne p0, p1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private static greylist-max-o getExtensionObject(Ljava/security/cert/X509Certificate;I)Ljava/security/cert/Extension;
    .registers 8
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p1, "extId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1949
    instance-of v0, p0, Lsun/security/x509/X509CertImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 1950
    move-object v0, p0

    check-cast v0, Lsun/security/x509/X509CertImpl;

    .line 1951
    .local v0, "impl":Lsun/security/x509/X509CertImpl;
    packed-switch p1, :pswitch_data_70

    .line 1963
    return-object v1

    .line 1961
    :pswitch_c
    invoke-virtual {v0}, Lsun/security/x509/X509CertImpl;->getExtendedKeyUsageExtension()Lsun/security/x509/ExtendedKeyUsageExtension;

    move-result-object v1

    return-object v1

    .line 1959
    :pswitch_11
    invoke-virtual {v0}, Lsun/security/x509/X509CertImpl;->getCertificatePoliciesExtension()Lsun/security/x509/CertificatePoliciesExtension;

    move-result-object v1

    return-object v1

    .line 1957
    :pswitch_16
    invoke-virtual {v0}, Lsun/security/x509/X509CertImpl;->getNameConstraintsExtension()Lsun/security/x509/NameConstraintsExtension;

    move-result-object v1

    return-object v1

    .line 1955
    :pswitch_1b
    invoke-virtual {v0}, Lsun/security/x509/X509CertImpl;->getSubjectAlternativeNameExtension()Lsun/security/x509/SubjectAlternativeNameExtension;

    move-result-object v1

    return-object v1

    .line 1953
    :pswitch_20
    invoke-virtual {v0}, Lsun/security/x509/X509CertImpl;->getPrivateKeyUsageExtension()Lsun/security/x509/PrivateKeyUsageExtension;

    move-result-object v1

    return-object v1

    .line 1966
    .end local v0    # "impl":Lsun/security/x509/X509CertImpl;
    :cond_25
    sget-object v0, Ljava/security/cert/X509CertSelector;->EXTENSION_OIDS:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    .line 1967
    .local v0, "rawExtVal":[B
    if-nez v0, :cond_30

    .line 1968
    return-object v1

    .line 1970
    :cond_30
    new-instance v2, Lsun/security/util/DerInputStream;

    invoke-direct {v2, v0}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 1971
    .local v2, "in":Lsun/security/util/DerInputStream;
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getOctetString()[B

    move-result-object v3

    .line 1972
    .local v3, "encoded":[B
    packed-switch p1, :pswitch_data_7e

    .line 1988
    return-object v1

    .line 1986
    :pswitch_3d
    new-instance v1, Lsun/security/x509/ExtendedKeyUsageExtension;

    sget-object v4, Ljava/security/cert/X509CertSelector;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v4, v3}, Lsun/security/x509/ExtendedKeyUsageExtension;-><init>(Ljava/lang/Boolean;Ljava/lang/Object;)V

    return-object v1

    .line 1984
    :pswitch_45
    new-instance v1, Lsun/security/x509/CertificatePoliciesExtension;

    sget-object v4, Ljava/security/cert/X509CertSelector;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v4, v3}, Lsun/security/x509/CertificatePoliciesExtension;-><init>(Ljava/lang/Boolean;Ljava/lang/Object;)V

    return-object v1

    .line 1982
    :pswitch_4d
    new-instance v1, Lsun/security/x509/NameConstraintsExtension;

    sget-object v4, Ljava/security/cert/X509CertSelector;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v4, v3}, Lsun/security/x509/NameConstraintsExtension;-><init>(Ljava/lang/Boolean;Ljava/lang/Object;)V

    return-object v1

    .line 1980
    :pswitch_55
    new-instance v1, Lsun/security/x509/SubjectAlternativeNameExtension;

    sget-object v4, Ljava/security/cert/X509CertSelector;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v4, v3}, Lsun/security/x509/SubjectAlternativeNameExtension;-><init>(Ljava/lang/Boolean;Ljava/lang/Object;)V

    return-object v1

    .line 1975
    :pswitch_5d
    :try_start_5d
    new-instance v1, Lsun/security/x509/PrivateKeyUsageExtension;

    sget-object v4, Ljava/security/cert/X509CertSelector;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v4, v3}, Lsun/security/x509/PrivateKeyUsageExtension;-><init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    :try_end_64
    .catch Ljava/security/cert/CertificateException; {:try_start_5d .. :try_end_64} :catch_65

    return-object v1

    .line 1976
    :catch_65
    move-exception v1

    .line 1977
    .local v1, "ex":Ljava/security/cert/CertificateException;
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1b
        :pswitch_16
        :pswitch_11
        :pswitch_c
    .end packed-switch

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_5d
        :pswitch_55
        :pswitch_4d
        :pswitch_45
        :pswitch_3d
    .end packed-switch
.end method

.method private static greylist-max-o keyUsageToString([Z)Ljava/lang/String;
    .registers 4
    .param p0, "k"    # [Z

    .line 1892
    const-string v0, "KeyUsage [\n"

    .line 1894
    .local v0, "s":Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_3
    aget-boolean v1, p0, v1

    if-eqz v1, :cond_19

    .line 1895
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  DigitalSignature\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 1897
    :cond_19
    const/4 v1, 0x1

    aget-boolean v1, p0, v1

    if-eqz v1, :cond_30

    .line 1898
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Non_repudiation\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 1900
    :cond_30
    const/4 v1, 0x2

    aget-boolean v1, p0, v1

    if-eqz v1, :cond_47

    .line 1901
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Key_Encipherment\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 1903
    :cond_47
    const/4 v1, 0x3

    aget-boolean v1, p0, v1

    if-eqz v1, :cond_5e

    .line 1904
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Data_Encipherment\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 1906
    :cond_5e
    const/4 v1, 0x4

    aget-boolean v1, p0, v1

    if-eqz v1, :cond_75

    .line 1907
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Key_Agreement\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 1909
    :cond_75
    const/4 v1, 0x5

    aget-boolean v1, p0, v1

    if-eqz v1, :cond_8c

    .line 1910
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Key_CertSign\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 1912
    :cond_8c
    const/4 v1, 0x6

    aget-boolean v1, p0, v1

    if-eqz v1, :cond_a3

    .line 1913
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Crl_Sign\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 1915
    :cond_a3
    const/4 v1, 0x7

    aget-boolean v1, p0, v1

    if-eqz v1, :cond_ba

    .line 1916
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Encipher_Only\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 1918
    :cond_ba
    const/16 v1, 0x8

    aget-boolean v1, p0, v1

    if-eqz v1, :cond_d4

    .line 1919
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Decipher_Only\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_d1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_d1} :catch_d3

    move-object v0, v1

    goto :goto_d4

    .line 1921
    :catch_d3
    move-exception v1

    :cond_d4
    :goto_d4
    nop

    .line 1923
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1925
    return-object v0
.end method

.method static greylist-max-o makeGeneralNameInterface(ILjava/lang/Object;)Lsun/security/x509/GeneralNameInterface;
    .registers 7
    .param p0, "type"    # I
    .param p1, "name"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 900
    sget-object v0, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_1d

    .line 901
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "X509CertSelector.makeGeneralNameInterface("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 905
    :cond_1d
    instance-of v1, p1, Ljava/lang/String;

    const-string v2, "X509CertSelector.makeGeneralNameInterface() result: "

    if-eqz v1, :cond_a3

    .line 906
    if-eqz v0, :cond_39

    .line 907
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "X509CertSelector.makeGeneralNameInterface() name is String: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 910
    :cond_39
    packed-switch p0, :pswitch_data_130

    .line 930
    :pswitch_3c
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to parse String names of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 927
    :pswitch_53
    new-instance v1, Lsun/security/x509/OIDName;

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    invoke-direct {v1, v3}, Lsun/security/x509/OIDName;-><init>(Ljava/lang/String;)V

    .line 928
    .local v1, "result":Lsun/security/x509/GeneralNameInterface;
    goto :goto_89

    .line 924
    .end local v1    # "result":Lsun/security/x509/GeneralNameInterface;
    :pswitch_5c
    new-instance v1, Lsun/security/x509/IPAddressName;

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    invoke-direct {v1, v3}, Lsun/security/x509/IPAddressName;-><init>(Ljava/lang/String;)V

    .line 925
    .restart local v1    # "result":Lsun/security/x509/GeneralNameInterface;
    goto :goto_89

    .line 921
    .end local v1    # "result":Lsun/security/x509/GeneralNameInterface;
    :pswitch_65
    new-instance v1, Lsun/security/x509/URIName;

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    invoke-direct {v1, v3}, Lsun/security/x509/URIName;-><init>(Ljava/lang/String;)V

    .line 922
    .restart local v1    # "result":Lsun/security/x509/GeneralNameInterface;
    goto :goto_89

    .line 918
    .end local v1    # "result":Lsun/security/x509/GeneralNameInterface;
    :pswitch_6e
    new-instance v1, Lsun/security/x509/X500Name;

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    invoke-direct {v1, v3}, Lsun/security/x509/X500Name;-><init>(Ljava/lang/String;)V

    .line 919
    .restart local v1    # "result":Lsun/security/x509/GeneralNameInterface;
    goto :goto_89

    .line 915
    .end local v1    # "result":Lsun/security/x509/GeneralNameInterface;
    :pswitch_77
    new-instance v1, Lsun/security/x509/DNSName;

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    invoke-direct {v1, v3}, Lsun/security/x509/DNSName;-><init>(Ljava/lang/String;)V

    .line 916
    .restart local v1    # "result":Lsun/security/x509/GeneralNameInterface;
    goto :goto_89

    .line 912
    .end local v1    # "result":Lsun/security/x509/GeneralNameInterface;
    :pswitch_80
    new-instance v1, Lsun/security/x509/RFC822Name;

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    invoke-direct {v1, v3}, Lsun/security/x509/RFC822Name;-><init>(Ljava/lang/String;)V

    .line 913
    .restart local v1    # "result":Lsun/security/x509/GeneralNameInterface;
    nop

    .line 933
    :goto_89
    if-eqz v0, :cond_120

    .line 934
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 935
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 934
    invoke-virtual {v0, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto/16 :goto_120

    .line 937
    .end local v1    # "result":Lsun/security/x509/GeneralNameInterface;
    :cond_a3
    instance-of v1, p1, [B

    if-eqz v1, :cond_121

    .line 938
    new-instance v1, Lsun/security/util/DerValue;

    move-object v3, p1

    check-cast v3, [B

    invoke-direct {v1, v3}, Lsun/security/util/DerValue;-><init>([B)V

    .line 939
    .local v1, "val":Lsun/security/util/DerValue;
    if-eqz v0, :cond_b7

    .line 940
    nop

    .line 941
    const-string v3, "X509CertSelector.makeGeneralNameInterface() is byte[]"

    invoke-virtual {v0, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 944
    :cond_b7
    packed-switch p0, :pswitch_data_144

    .line 973
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to parse byte array names of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 970
    :pswitch_d1
    new-instance v3, Lsun/security/x509/OIDName;

    invoke-direct {v3, v1}, Lsun/security/x509/OIDName;-><init>(Lsun/security/util/DerValue;)V

    .line 971
    .local v3, "result":Lsun/security/x509/GeneralNameInterface;
    goto :goto_107

    .line 967
    .end local v3    # "result":Lsun/security/x509/GeneralNameInterface;
    :pswitch_d7
    new-instance v3, Lsun/security/x509/IPAddressName;

    invoke-direct {v3, v1}, Lsun/security/x509/IPAddressName;-><init>(Lsun/security/util/DerValue;)V

    .line 968
    .restart local v3    # "result":Lsun/security/x509/GeneralNameInterface;
    goto :goto_107

    .line 964
    .end local v3    # "result":Lsun/security/x509/GeneralNameInterface;
    :pswitch_dd
    new-instance v3, Lsun/security/x509/URIName;

    invoke-direct {v3, v1}, Lsun/security/x509/URIName;-><init>(Lsun/security/util/DerValue;)V

    .line 965
    .restart local v3    # "result":Lsun/security/x509/GeneralNameInterface;
    goto :goto_107

    .line 961
    .end local v3    # "result":Lsun/security/x509/GeneralNameInterface;
    :pswitch_e3
    new-instance v3, Lsun/security/x509/EDIPartyName;

    invoke-direct {v3, v1}, Lsun/security/x509/EDIPartyName;-><init>(Lsun/security/util/DerValue;)V

    .line 962
    .restart local v3    # "result":Lsun/security/x509/GeneralNameInterface;
    goto :goto_107

    .line 958
    .end local v3    # "result":Lsun/security/x509/GeneralNameInterface;
    :pswitch_e9
    new-instance v3, Lsun/security/x509/X500Name;

    invoke-direct {v3, v1}, Lsun/security/x509/X500Name;-><init>(Lsun/security/util/DerValue;)V

    .line 959
    .restart local v3    # "result":Lsun/security/x509/GeneralNameInterface;
    goto :goto_107

    .line 955
    .end local v3    # "result":Lsun/security/x509/GeneralNameInterface;
    :pswitch_ef
    new-instance v3, Lsun/security/x509/X400Address;

    invoke-direct {v3, v1}, Lsun/security/x509/X400Address;-><init>(Lsun/security/util/DerValue;)V

    .line 956
    .restart local v3    # "result":Lsun/security/x509/GeneralNameInterface;
    goto :goto_107

    .line 952
    .end local v3    # "result":Lsun/security/x509/GeneralNameInterface;
    :pswitch_f5
    new-instance v3, Lsun/security/x509/DNSName;

    invoke-direct {v3, v1}, Lsun/security/x509/DNSName;-><init>(Lsun/security/util/DerValue;)V

    .line 953
    .restart local v3    # "result":Lsun/security/x509/GeneralNameInterface;
    goto :goto_107

    .line 949
    .end local v3    # "result":Lsun/security/x509/GeneralNameInterface;
    :pswitch_fb
    new-instance v3, Lsun/security/x509/RFC822Name;

    invoke-direct {v3, v1}, Lsun/security/x509/RFC822Name;-><init>(Lsun/security/util/DerValue;)V

    .line 950
    .restart local v3    # "result":Lsun/security/x509/GeneralNameInterface;
    goto :goto_107

    .line 946
    .end local v3    # "result":Lsun/security/x509/GeneralNameInterface;
    :pswitch_101
    new-instance v3, Lsun/security/x509/OtherName;

    invoke-direct {v3, v1}, Lsun/security/x509/OtherName;-><init>(Lsun/security/util/DerValue;)V

    .line 947
    .restart local v3    # "result":Lsun/security/x509/GeneralNameInterface;
    nop

    .line 976
    :goto_107
    if-eqz v0, :cond_11f

    .line 977
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 977
    invoke-virtual {v0, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 980
    .end local v1    # "val":Lsun/security/util/DerValue;
    :cond_11f
    move-object v1, v3

    .line 987
    .end local v3    # "result":Lsun/security/x509/GeneralNameInterface;
    .local v1, "result":Lsun/security/x509/GeneralNameInterface;
    :cond_120
    :goto_120
    return-object v1

    .line 981
    .end local v1    # "result":Lsun/security/x509/GeneralNameInterface;
    :cond_121
    if-eqz v0, :cond_128

    .line 982
    const-string v1, "X509CertSelector.makeGeneralName() input name not String or byte array"

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 985
    :cond_128
    new-instance v0, Ljava/io/IOException;

    const-string v1, "name not String or byte array"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_130
    .packed-switch 0x1
        :pswitch_80
        :pswitch_77
        :pswitch_3c
        :pswitch_6e
        :pswitch_3c
        :pswitch_65
        :pswitch_5c
        :pswitch_53
    .end packed-switch

    :pswitch_data_144
    .packed-switch 0x0
        :pswitch_101
        :pswitch_fb
        :pswitch_f5
        :pswitch_ef
        :pswitch_e9
        :pswitch_e3
        :pswitch_dd
        :pswitch_d7
        :pswitch_d1
    .end packed-switch
.end method

.method private greylist-max-o matchAuthorityKeyID(Ljava/security/cert/X509Certificate;)Z
    .registers 8
    .param p1, "xcert"    # Ljava/security/cert/X509Certificate;

    .line 2135
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->authorityKeyID:[B

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 2136
    return v1

    .line 2139
    :cond_6
    const/4 v0, 0x0

    :try_start_7
    const-string v2, "2.5.29.35"

    invoke-virtual {p1, v2}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v2

    .line 2140
    .local v2, "extVal":[B
    if-nez v2, :cond_19

    .line 2141
    sget-object v1, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_18

    .line 2142
    const-string v3, "X509CertSelector.match: no authority key ID extension"

    invoke-virtual {v1, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2145
    :cond_18
    return v0

    .line 2147
    :cond_19
    new-instance v3, Lsun/security/util/DerInputStream;

    invoke-direct {v3, v2}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 2148
    .local v3, "in":Lsun/security/util/DerInputStream;
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getOctetString()[B

    move-result-object v4

    .line 2149
    .local v4, "certAuthKeyID":[B
    if-eqz v4, :cond_2f

    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->authorityKeyID:[B

    .line 2150
    invoke-static {v5, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_2d

    goto :goto_2f

    .line 2163
    .end local v2    # "extVal":[B
    .end local v3    # "in":Lsun/security/util/DerInputStream;
    .end local v4    # "certAuthKeyID":[B
    :cond_2d
    nop

    .line 2164
    return v1

    .line 2151
    .restart local v2    # "extVal":[B
    .restart local v3    # "in":Lsun/security/util/DerInputStream;
    .restart local v4    # "certAuthKeyID":[B
    :cond_2f
    :goto_2f
    sget-object v1, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_38

    .line 2152
    const-string v5, "X509CertSelector.match: authority key IDs don\'t match"

    invoke-virtual {v1, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_38} :catch_39

    .line 2155
    :cond_38
    return v0

    .line 2157
    .end local v2    # "extVal":[B
    .end local v3    # "in":Lsun/security/util/DerInputStream;
    .end local v4    # "certAuthKeyID":[B
    :catch_39
    move-exception v1

    .line 2158
    .local v1, "ex":Ljava/io/IOException;
    sget-object v2, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_43

    .line 2159
    const-string v3, "X509CertSelector.match: exception in authority key ID check"

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2162
    :cond_43
    return v0
.end method

.method private greylist-max-o matchBasicConstraints(Ljava/security/cert/X509Certificate;)Z
    .registers 8
    .param p1, "xcert"    # Ljava/security/cert/X509Certificate;

    .line 2563
    iget v0, p0, Ljava/security/cert/X509CertSelector;->basicConstraints:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_7

    .line 2564
    return v1

    .line 2566
    :cond_7
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v0

    .line 2567
    .local v0, "maxPathLen":I
    iget v3, p0, Ljava/security/cert/X509CertSelector;->basicConstraints:I

    const/4 v4, -0x2

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1d

    .line 2568
    if-eq v0, v2, :cond_47

    .line 2569
    sget-object v1, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_1c

    .line 2570
    const-string v2, "X509CertSelector.match: not an EE cert"

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2572
    :cond_1c
    return v5

    .line 2575
    :cond_1d
    if-ge v0, v3, :cond_47

    .line 2576
    sget-object v1, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_46

    .line 2577
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "X509CertSelector.match: cert\'s maxPathLen is less than the min maxPathLen set by basicConstraints. ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Ljava/security/cert/X509CertSelector;->basicConstraints:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2582
    :cond_46
    return v5

    .line 2585
    :cond_47
    return v1
.end method

.method private greylist-max-o matchExcluded(Lsun/security/x509/GeneralSubtrees;)Z
    .registers 10
    .param p1, "excluded"    # Lsun/security/x509/GeneralSubtrees;

    .line 2495
    invoke-virtual {p1}, Lsun/security/x509/GeneralSubtrees;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralSubtree;>;"
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 2496
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/x509/GeneralSubtree;

    .line 2497
    .local v1, "tree":Lsun/security/x509/GeneralSubtree;
    invoke-virtual {v1}, Lsun/security/x509/GeneralSubtree;->getName()Lsun/security/x509/GeneralName;

    move-result-object v2

    invoke-virtual {v2}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v2

    .line 2498
    .local v2, "excludedName":Lsun/security/x509/GeneralNameInterface;
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2499
    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralNameInterface;>;"
    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 2500
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/security/x509/GeneralNameInterface;

    .line 2501
    .local v4, "pathToName":Lsun/security/x509/GeneralNameInterface;
    invoke-interface {v2}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v5

    invoke-interface {v4}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v6

    if-ne v5, v6, :cond_5b

    .line 2502
    invoke-interface {v4, v2}, Lsun/security/x509/GeneralNameInterface;->constrains(Lsun/security/x509/GeneralNameInterface;)I

    move-result v5

    packed-switch v5, :pswitch_data_60

    :pswitch_3b
    goto :goto_5b

    .line 2505
    :pswitch_3c
    sget-object v5, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v5, :cond_59

    .line 2506
    const-string v6, "X509CertSelector.match: name constraints inhibit path to specified name"

    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2508
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "X509CertSelector.match: excluded name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2511
    :cond_59
    const/4 v5, 0x0

    return v5

    .line 2515
    .end local v4    # "pathToName":Lsun/security/x509/GeneralNameInterface;
    :cond_5b
    :goto_5b
    goto :goto_1e

    .line 2516
    .end local v1    # "tree":Lsun/security/x509/GeneralSubtree;
    .end local v2    # "excludedName":Lsun/security/x509/GeneralNameInterface;
    .end local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralNameInterface;>;"
    :cond_5c
    goto :goto_4

    .line 2517
    .end local v0    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralSubtree;>;"
    :cond_5d
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_3b
        :pswitch_3c
    .end packed-switch
.end method

.method private greylist-max-o matchExtendedKeyUsage(Ljava/security/cert/X509Certificate;)Z
    .registers 7
    .param p1, "xcert"    # Ljava/security/cert/X509Certificate;

    .line 2281
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->keyPurposeSet:Ljava/util/Set;

    const/4 v1, 0x1

    if-eqz v0, :cond_43

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_43

    .line 2285
    :cond_c
    const/4 v0, 0x4

    .line 2286
    const/4 v2, 0x0

    :try_start_e
    invoke-static {p1, v0}, Ljava/security/cert/X509CertSelector;->getExtensionObject(Ljava/security/cert/X509Certificate;I)Ljava/security/cert/Extension;

    move-result-object v0

    check-cast v0, Lsun/security/x509/ExtendedKeyUsageExtension;

    .line 2288
    .local v0, "ext":Lsun/security/x509/ExtendedKeyUsageExtension;
    if-eqz v0, :cond_36

    .line 2289
    const-string v3, "usages"

    .line 2290
    invoke-virtual {v0, v3}, Lsun/security/x509/ExtendedKeyUsageExtension;->get(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v3

    .line 2291
    .local v3, "certKeyPurposeVector":Ljava/util/Vector;, "Ljava/util/Vector<Lsun/security/util/ObjectIdentifier;>;"
    sget-object v4, Ljava/security/cert/X509CertSelector;->ANY_EXTENDED_KEY_USAGE:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_36

    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->keyPurposeOIDSet:Ljava/util/Set;

    .line 2292
    invoke-virtual {v3, v4}, Ljava/util/Vector;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_36

    .line 2293
    sget-object v1, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_35

    .line 2294
    const-string v4, "X509CertSelector.match: cert failed extendedKeyUsage criterion"

    invoke-virtual {v1, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_35} :catch_38

    .line 2297
    :cond_35
    return v2

    .line 2306
    .end local v0    # "ext":Lsun/security/x509/ExtendedKeyUsageExtension;
    .end local v3    # "certKeyPurposeVector":Ljava/util/Vector;, "Ljava/util/Vector<Lsun/security/util/ObjectIdentifier;>;"
    :cond_36
    nop

    .line 2307
    return v1

    .line 2300
    :catch_38
    move-exception v0

    .line 2301
    .local v0, "ex":Ljava/io/IOException;
    sget-object v1, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_42

    .line 2302
    const-string v3, "X509CertSelector.match: IOException in extended key usage check"

    invoke-virtual {v1, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2305
    :cond_42
    return v2

    .line 2282
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_43
    :goto_43
    return v1
.end method

.method private greylist-max-o matchKeyUsage(Ljava/security/cert/X509Certificate;)Z
    .registers 7
    .param p1, "xcert"    # Ljava/security/cert/X509Certificate;

    .line 2260
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 2261
    return v1

    .line 2263
    :cond_6
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    .line 2264
    .local v0, "certKeyUsage":[Z
    if-eqz v0, :cond_2b

    .line 2265
    const/4 v2, 0x0

    .local v2, "keyBit":I
    :goto_d
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    array-length v4, v3

    if-ge v2, v4, :cond_2b

    .line 2266
    aget-boolean v3, v3, v2

    if-eqz v3, :cond_28

    array-length v3, v0

    if-ge v2, v3, :cond_1d

    aget-boolean v3, v0, v2

    if-nez v3, :cond_28

    .line 2268
    :cond_1d
    sget-object v1, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_26

    .line 2269
    const-string v3, "X509CertSelector.match: key usage bits don\'t match"

    invoke-virtual {v1, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2272
    :cond_26
    const/4 v1, 0x0

    return v1

    .line 2265
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 2276
    .end local v2    # "keyBit":I
    :cond_2b
    return v1
.end method

.method private greylist-max-o matchNameConstraints(Ljava/security/cert/X509Certificate;)Z
    .registers 6
    .param p1, "xcert"    # Ljava/security/cert/X509Certificate;

    .line 2359
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->nc:Lsun/security/x509/NameConstraintsExtension;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 2360
    return v1

    .line 2363
    :cond_6
    const/4 v2, 0x0

    :try_start_7
    invoke-virtual {v0, p1}, Lsun/security/x509/NameConstraintsExtension;->verify(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 2364
    sget-object v0, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_16

    .line 2365
    const-string v1, "X509CertSelector.match: name constraints not satisfied"

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_16} :catch_19

    .line 2368
    :cond_16
    return v2

    .line 2376
    :cond_17
    nop

    .line 2377
    return v1

    .line 2370
    :catch_19
    move-exception v0

    .line 2371
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_23

    .line 2372
    const-string v3, "X509CertSelector.match: IOException in name constraints check"

    invoke-virtual {v1, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2375
    :cond_23
    return v2
.end method

.method private greylist-max-o matchPathToNames(Ljava/security/cert/X509Certificate;)Z
    .registers 9
    .param p1, "xcert"    # Ljava/security/cert/X509Certificate;

    .line 2447
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 2448
    return v1

    .line 2451
    :cond_6
    const/4 v0, 0x2

    .line 2452
    const/4 v2, 0x0

    :try_start_8
    invoke-static {p1, v0}, Ljava/security/cert/X509CertSelector;->getExtensionObject(Ljava/security/cert/X509Certificate;I)Ljava/security/cert/Extension;

    move-result-object v0

    check-cast v0, Lsun/security/x509/NameConstraintsExtension;

    .line 2453
    .local v0, "ext":Lsun/security/x509/NameConstraintsExtension;
    if-nez v0, :cond_11

    .line 2454
    return v1

    .line 2456
    :cond_11
    sget-object v3, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_4e

    const-string v4, "certpath"

    invoke-static {v4}, Lsun/security/util/Debug;->isOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 2457
    const-string v4, "X509CertSelector.match pathToNames:\n"

    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2458
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    .line 2459
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2460
    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralNameInterface;>;"
    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 2461
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_28

    .line 2465
    .end local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralNameInterface;>;"
    :cond_4e
    const-string v3, "permitted_subtrees"

    .line 2466
    invoke-virtual {v0, v3}, Lsun/security/x509/NameConstraintsExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralSubtrees;

    move-result-object v3

    .line 2467
    .local v3, "permitted":Lsun/security/x509/GeneralSubtrees;
    const-string v4, "excluded_subtrees"

    .line 2468
    invoke-virtual {v0, v4}, Lsun/security/x509/NameConstraintsExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralSubtrees;

    move-result-object v4

    .line 2469
    .local v4, "excluded":Lsun/security/x509/GeneralSubtrees;
    if-eqz v4, :cond_63

    .line 2470
    invoke-direct {p0, v4}, Ljava/security/cert/X509CertSelector;->matchExcluded(Lsun/security/x509/GeneralSubtrees;)Z

    move-result v5

    if-nez v5, :cond_63

    .line 2471
    return v2

    .line 2474
    :cond_63
    if-eqz v3, :cond_6c

    .line 2475
    invoke-direct {p0, v3}, Ljava/security/cert/X509CertSelector;->matchPermitted(Lsun/security/x509/GeneralSubtrees;)Z

    move-result v5
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_69} :catch_6e

    if-nez v5, :cond_6c

    .line 2476
    return v2

    .line 2485
    .end local v0    # "ext":Lsun/security/x509/NameConstraintsExtension;
    .end local v3    # "permitted":Lsun/security/x509/GeneralSubtrees;
    .end local v4    # "excluded":Lsun/security/x509/GeneralSubtrees;
    :cond_6c
    nop

    .line 2486
    return v1

    .line 2479
    :catch_6e
    move-exception v0

    .line 2480
    .local v0, "ex":Ljava/io/IOException;
    sget-object v1, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_78

    .line 2481
    const-string v3, "X509CertSelector.match: IOException in name constraints check"

    invoke-virtual {v1, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2484
    :cond_78
    return v2
.end method

.method private greylist-max-o matchPermitted(Lsun/security/x509/GeneralSubtrees;)Z
    .registers 12
    .param p1, "permitted"    # Lsun/security/x509/GeneralSubtrees;

    .line 2527
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2528
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralNameInterface;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_84

    .line 2529
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/x509/GeneralNameInterface;

    .line 2530
    .local v1, "pathToName":Lsun/security/x509/GeneralNameInterface;
    invoke-virtual {p1}, Lsun/security/x509/GeneralSubtrees;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2531
    .local v2, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralSubtree;>;"
    const/4 v3, 0x0

    .line 2532
    .local v3, "permittedNameFound":Z
    const/4 v4, 0x0

    .line 2533
    .local v4, "nameTypeFound":Z
    const-string v5, ""

    .line 2534
    .local v5, "names":Ljava/lang/String;
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_59

    if-nez v3, :cond_59

    .line 2535
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsun/security/x509/GeneralSubtree;

    .line 2536
    .local v6, "tree":Lsun/security/x509/GeneralSubtree;
    invoke-virtual {v6}, Lsun/security/x509/GeneralSubtree;->getName()Lsun/security/x509/GeneralName;

    move-result-object v7

    invoke-virtual {v7}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v7

    .line 2537
    .local v7, "permittedName":Lsun/security/x509/GeneralNameInterface;
    invoke-interface {v7}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v8

    invoke-interface {v1}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v9

    if-ne v8, v9, :cond_58

    .line 2538
    const/4 v4, 0x1

    .line 2539
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2540
    invoke-interface {v1, v7}, Lsun/security/x509/GeneralNameInterface;->constrains(Lsun/security/x509/GeneralNameInterface;)I

    move-result v8

    packed-switch v8, :pswitch_data_86

    :pswitch_56
    goto :goto_58

    .line 2543
    :pswitch_57
    const/4 v3, 0x1

    .line 2548
    .end local v6    # "tree":Lsun/security/x509/GeneralSubtree;
    .end local v7    # "permittedName":Lsun/security/x509/GeneralNameInterface;
    :cond_58
    :goto_58
    goto :goto_1a

    .line 2549
    :cond_59
    if-nez v3, :cond_83

    if-eqz v4, :cond_83

    .line 2550
    sget-object v6, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v6, :cond_81

    .line 2551
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "X509CertSelector.match: name constraints inhibit path to specified name; permitted names of type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2553
    invoke-interface {v1}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2551
    invoke-virtual {v6, v7}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2555
    :cond_81
    const/4 v6, 0x0

    return v6

    .line 2557
    .end local v1    # "pathToName":Lsun/security/x509/GeneralNameInterface;
    .end local v2    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralSubtree;>;"
    .end local v3    # "permittedNameFound":Z
    .end local v4    # "nameTypeFound":Z
    .end local v5    # "names":Ljava/lang/String;
    :cond_83
    goto :goto_6

    .line 2558
    :cond_84
    const/4 v1, 0x1

    return v1

    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_57
        :pswitch_56
        :pswitch_57
    .end packed-switch
.end method

.method private greylist-max-o matchPolicy(Ljava/security/cert/X509Certificate;)Z
    .registers 12
    .param p1, "xcert"    # Ljava/security/cert/X509Certificate;

    .line 2382
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->policy:Lsun/security/x509/CertificatePolicySet;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 2383
    return v1

    .line 2386
    :cond_6
    const/4 v0, 0x3

    .line 2387
    const/4 v2, 0x0

    :try_start_8
    invoke-static {p1, v0}, Ljava/security/cert/X509CertSelector;->getExtensionObject(Ljava/security/cert/X509Certificate;I)Ljava/security/cert/Extension;

    move-result-object v0

    check-cast v0, Lsun/security/x509/CertificatePoliciesExtension;

    .line 2388
    .local v0, "ext":Lsun/security/x509/CertificatePoliciesExtension;
    if-nez v0, :cond_1a

    .line 2389
    sget-object v1, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_19

    .line 2390
    const-string v3, "X509CertSelector.match: no certificate policy extension"

    invoke-virtual {v1, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2393
    :cond_19
    return v2

    .line 2395
    :cond_1a
    const-string v3, "policies"

    invoke-virtual {v0, v3}, Lsun/security/x509/CertificatePoliciesExtension;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 2400
    .local v3, "policies":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/PolicyInformation;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 2401
    .local v4, "policyIDs":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/CertificatePolicyId;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_42

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsun/security/x509/PolicyInformation;

    .line 2402
    .local v6, "info":Lsun/security/x509/PolicyInformation;
    invoke-virtual {v6}, Lsun/security/x509/PolicyInformation;->getPolicyIdentifier()Lsun/security/x509/CertificatePolicyId;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2403
    nop

    .end local v6    # "info":Lsun/security/x509/PolicyInformation;
    goto :goto_2d

    .line 2404
    :cond_42
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->policy:Lsun/security/x509/CertificatePolicySet;

    if-eqz v5, :cond_8a

    .line 2405
    const/4 v6, 0x0

    .line 2411
    .local v6, "foundOne":Z
    invoke-virtual {v5}, Lsun/security/x509/CertificatePolicySet;->getCertPolicyIds()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_4f} :catch_8c

    const-string v7, "X509CertSelector.match: cert failed policyAny criterion"

    if-eqz v5, :cond_61

    .line 2412
    :try_start_53
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_8a

    .line 2413
    sget-object v1, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_60

    .line 2414
    invoke-virtual {v1, v7}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2417
    :cond_60
    return v2

    .line 2420
    :cond_61
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->policy:Lsun/security/x509/CertificatePolicySet;

    invoke-virtual {v5}, Lsun/security/x509/CertificatePolicySet;->getCertPolicyIds()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_80

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lsun/security/x509/CertificatePolicyId;

    .line 2421
    .local v8, "id":Lsun/security/x509/CertificatePolicyId;
    invoke-interface {v4, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7f

    .line 2422
    const/4 v6, 0x1

    .line 2423
    goto :goto_80

    .line 2425
    .end local v8    # "id":Lsun/security/x509/CertificatePolicyId;
    :cond_7f
    goto :goto_6b

    .line 2426
    :cond_80
    :goto_80
    if-nez v6, :cond_8a

    .line 2427
    sget-object v1, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_89

    .line 2428
    invoke-virtual {v1, v7}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_89} :catch_8c

    .line 2431
    :cond_89
    return v2

    .line 2441
    .end local v0    # "ext":Lsun/security/x509/CertificatePoliciesExtension;
    .end local v3    # "policies":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/PolicyInformation;>;"
    .end local v4    # "policyIDs":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/CertificatePolicyId;>;"
    .end local v6    # "foundOne":Z
    :cond_8a
    nop

    .line 2442
    return v1

    .line 2435
    :catch_8c
    move-exception v0

    .line 2436
    .local v0, "ex":Ljava/io/IOException;
    sget-object v1, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_96

    .line 2437
    const-string v3, "X509CertSelector.match: IOException in certificate policy ID check"

    invoke-virtual {v1, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2440
    :cond_96
    return v2
.end method

.method private greylist-max-o matchPrivateKeyValid(Ljava/security/cert/X509Certificate;)Z
    .registers 10
    .param p1, "xcert"    # Ljava/security/cert/X509Certificate;

    .line 2169
    const-string v0, "; X509CertSelector: "

    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    const/4 v2, 0x1

    if-nez v1, :cond_8

    .line 2170
    return v2

    .line 2172
    :cond_8
    const/4 v1, 0x0

    .line 2174
    .local v1, "ext":Lsun/security/x509/PrivateKeyUsageExtension;
    nop

    .line 2175
    const/4 v3, 0x0

    :try_start_b
    invoke-static {p1, v3}, Ljava/security/cert/X509CertSelector;->getExtensionObject(Ljava/security/cert/X509Certificate;I)Ljava/security/cert/Extension;

    move-result-object v4

    check-cast v4, Lsun/security/x509/PrivateKeyUsageExtension;

    move-object v1, v4

    .line 2176
    if-eqz v1, :cond_19

    .line 2177
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    invoke-virtual {v1, v4}, Lsun/security/x509/PrivateKeyUsageExtension;->valid(Ljava/util/Date;)V
    :try_end_19
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_b .. :try_end_19} :catch_74
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_b .. :try_end_19} :catch_3c
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_19} :catch_1b

    .line 2219
    :cond_19
    nop

    .line 2220
    return v2

    .line 2211
    :catch_1b
    move-exception v0

    .line 2212
    .local v0, "e4":Ljava/io/IOException;
    sget-object v2, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_3b

    .line 2213
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "X509CertSelector.match: IOException in private key usage check; X509CertSelector: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2215
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2213
    invoke-virtual {v2, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2216
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 2218
    :cond_3b
    return v3

    .line 2195
    .end local v0    # "e4":Ljava/io/IOException;
    :catch_3c
    move-exception v2

    .line 2196
    .local v2, "e2":Ljava/security/cert/CertificateNotYetValidException;
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_73

    .line 2197
    const-string v4, "n/a"

    .line 2199
    .local v4, "time":Ljava/lang/String;
    :try_start_43
    const-string v5, "not_before"

    invoke-virtual {v1, v5}, Lsun/security/x509/PrivateKeyUsageExtension;->get(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 2200
    .local v5, "notBefore":Ljava/util/Date;
    invoke-virtual {v5}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_4d
    .catch Ljava/security/cert/CertificateException; {:try_start_43 .. :try_end_4d} :catch_4f

    move-object v4, v6

    .line 2203
    .end local v5    # "notBefore":Ljava/util/Date;
    goto :goto_50

    .line 2201
    :catch_4f
    move-exception v5

    .line 2204
    :goto_50
    sget-object v5, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "X509CertSelector.match: private key usage not within validity date; ext.NOT_BEFORE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2207
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2204
    invoke-virtual {v5, v0}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2208
    invoke-virtual {v2}, Ljava/security/cert/CertificateNotYetValidException;->printStackTrace()V

    .line 2210
    .end local v4    # "time":Ljava/lang/String;
    :cond_73
    return v3

    .line 2179
    .end local v2    # "e2":Ljava/security/cert/CertificateNotYetValidException;
    :catch_74
    move-exception v2

    .line 2180
    .local v2, "e1":Ljava/security/cert/CertificateExpiredException;
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_ab

    .line 2181
    const-string v4, "n/a"

    .line 2183
    .restart local v4    # "time":Ljava/lang/String;
    :try_start_7b
    const-string v5, "not_after"

    invoke-virtual {v1, v5}, Lsun/security/x509/PrivateKeyUsageExtension;->get(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 2184
    .local v5, "notAfter":Ljava/util/Date;
    invoke-virtual {v5}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_85
    .catch Ljava/security/cert/CertificateException; {:try_start_7b .. :try_end_85} :catch_87

    move-object v4, v6

    .line 2187
    .end local v5    # "notAfter":Ljava/util/Date;
    goto :goto_88

    .line 2185
    :catch_87
    move-exception v5

    .line 2188
    :goto_88
    sget-object v5, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "X509CertSelector.match: private key usage not within validity date; ext.NOT_After: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2191
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2188
    invoke-virtual {v5, v0}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2192
    invoke-virtual {v2}, Ljava/security/cert/CertificateExpiredException;->printStackTrace()V

    .line 2194
    .end local v4    # "time":Ljava/lang/String;
    :cond_ab
    return v3
.end method

.method private greylist-max-o matchSubjectAlternativeNames(Ljava/security/cert/X509Certificate;)Z
    .registers 12
    .param p1, "xcert"    # Ljava/security/cert/X509Certificate;

    .line 2312
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    const/4 v1, 0x1

    if-eqz v0, :cond_95

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto/16 :goto_95

    .line 2316
    :cond_d
    nop

    .line 2317
    const/4 v0, 0x0

    :try_start_f
    invoke-static {p1, v1}, Ljava/security/cert/X509CertSelector;->getExtensionObject(Ljava/security/cert/X509Certificate;I)Ljava/security/cert/Extension;

    move-result-object v2

    check-cast v2, Lsun/security/x509/SubjectAlternativeNameExtension;

    .line 2319
    .local v2, "sanExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    if-nez v2, :cond_21

    .line 2320
    sget-object v1, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_20

    .line 2321
    const-string v3, "X509CertSelector.match: no subject alternative name extension"

    invoke-virtual {v1, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2324
    :cond_20
    return v0

    .line 2326
    :cond_21
    const-string v3, "subject_name"

    .line 2327
    invoke-virtual {v2, v3}, Lsun/security/x509/SubjectAlternativeNameExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralNames;

    move-result-object v3

    .line 2328
    .local v3, "certNames":Lsun/security/x509/GeneralNames;
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeGeneralNames:Ljava/util/Set;

    .line 2329
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 2330
    .local v4, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralNameInterface;>;"
    :goto_2d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_88

    .line 2331
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsun/security/x509/GeneralNameInterface;

    .line 2332
    .local v5, "matchName":Lsun/security/x509/GeneralNameInterface;
    const/4 v6, 0x0

    .line 2333
    .local v6, "found":Z
    invoke-virtual {v3}, Lsun/security/x509/GeneralNames;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 2334
    .local v7, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    :goto_3e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_56

    if-nez v6, :cond_56

    .line 2335
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lsun/security/x509/GeneralName;

    invoke-virtual {v8}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v8

    .line 2336
    .local v8, "certName":Lsun/security/x509/GeneralNameInterface;
    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    move v6, v9

    .line 2337
    .end local v8    # "certName":Lsun/security/x509/GeneralNameInterface;
    goto :goto_3e

    .line 2338
    .end local v7    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    :cond_56
    if-nez v6, :cond_80

    iget-boolean v7, p0, Ljava/security/cert/X509CertSelector;->matchAllSubjectAltNames:Z

    if-nez v7, :cond_62

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_80

    .line 2339
    :cond_62
    sget-object v1, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_7f

    .line 2340
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "X509CertSelector.match: subject alternative name "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " not found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2343
    :cond_7f
    return v0

    .line 2344
    :cond_80
    if-eqz v6, :cond_87

    iget-boolean v7, p0, Ljava/security/cert/X509CertSelector;->matchAllSubjectAltNames:Z
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_84} :catch_8a

    if-nez v7, :cond_87

    .line 2345
    goto :goto_88

    .line 2347
    .end local v5    # "matchName":Lsun/security/x509/GeneralNameInterface;
    .end local v6    # "found":Z
    :cond_87
    goto :goto_2d

    .line 2353
    .end local v2    # "sanExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    .end local v3    # "certNames":Lsun/security/x509/GeneralNames;
    .end local v4    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralNameInterface;>;"
    :cond_88
    :goto_88
    nop

    .line 2354
    return v1

    .line 2348
    :catch_8a
    move-exception v1

    .line 2349
    .local v1, "ex":Ljava/io/IOException;
    sget-object v2, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_94

    .line 2350
    const-string v3, "X509CertSelector.match: IOException in subject alternative name check"

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2352
    :cond_94
    return v0

    .line 2313
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_95
    :goto_95
    return v1
.end method

.method private greylist-max-o matchSubjectKeyID(Ljava/security/cert/X509Certificate;)Z
    .registers 8
    .param p1, "xcert"    # Ljava/security/cert/X509Certificate;

    .line 2101
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectKeyID:[B

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 2102
    return v1

    .line 2105
    :cond_6
    const/4 v0, 0x0

    :try_start_7
    const-string v2, "2.5.29.14"

    invoke-virtual {p1, v2}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v2

    .line 2106
    .local v2, "extVal":[B
    if-nez v2, :cond_19

    .line 2107
    sget-object v1, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_18

    .line 2108
    const-string v3, "X509CertSelector.match: no subject key ID extension"

    invoke-virtual {v1, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2111
    :cond_18
    return v0

    .line 2113
    :cond_19
    new-instance v3, Lsun/security/util/DerInputStream;

    invoke-direct {v3, v2}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 2114
    .local v3, "in":Lsun/security/util/DerInputStream;
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getOctetString()[B

    move-result-object v4

    .line 2115
    .local v4, "certSubjectKeyID":[B
    if-eqz v4, :cond_2f

    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->subjectKeyID:[B

    .line 2116
    invoke-static {v5, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_2d

    goto :goto_2f

    .line 2129
    .end local v2    # "extVal":[B
    .end local v3    # "in":Lsun/security/util/DerInputStream;
    .end local v4    # "certSubjectKeyID":[B
    :cond_2d
    nop

    .line 2130
    return v1

    .line 2117
    .restart local v2    # "extVal":[B
    .restart local v3    # "in":Lsun/security/util/DerInputStream;
    .restart local v4    # "certSubjectKeyID":[B
    :cond_2f
    :goto_2f
    sget-object v1, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_38

    .line 2118
    const-string v5, "X509CertSelector.match: subject key IDs don\'t match"

    invoke-virtual {v1, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_38} :catch_39

    .line 2121
    :cond_38
    return v0

    .line 2123
    .end local v2    # "extVal":[B
    .end local v3    # "in":Lsun/security/util/DerInputStream;
    .end local v4    # "certSubjectKeyID":[B
    :catch_39
    move-exception v1

    .line 2124
    .local v1, "ex":Ljava/io/IOException;
    sget-object v2, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_43

    .line 2125
    const-string v3, "X509CertSelector.match: exception in subject key ID check"

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2128
    :cond_43
    return v0
.end method

.method private greylist-max-o matchSubjectPublicKeyAlgID(Ljava/security/cert/X509Certificate;)Z
    .registers 10
    .param p1, "xcert"    # Ljava/security/cert/X509Certificate;

    .line 2225
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Lsun/security/util/ObjectIdentifier;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 2226
    return v1

    .line 2229
    :cond_6
    const/4 v0, 0x0

    :try_start_7
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    .line 2230
    .local v2, "encodedKey":[B
    new-instance v3, Lsun/security/util/DerValue;

    invoke-direct {v3, v2}, Lsun/security/util/DerValue;-><init>([B)V

    .line 2231
    .local v3, "val":Lsun/security/util/DerValue;
    iget-byte v4, v3, Lsun/security/util/DerValue;->tag:B

    const/16 v5, 0x30

    if-ne v4, v5, :cond_60

    .line 2235
    iget-object v4, v3, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v4

    invoke-static {v4}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v4

    .line 2236
    .local v4, "algID":Lsun/security/x509/AlgorithmId;
    sget-object v5, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v5, :cond_4a

    .line 2237
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "X509CertSelector.match: subjectPublicKeyAlgID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", xcert subjectPublicKeyAlgID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2239
    invoke-virtual {v4}, Lsun/security/x509/AlgorithmId;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2237
    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2241
    :cond_4a
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v4}, Lsun/security/x509/AlgorithmId;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v7

    invoke-virtual {v6, v7}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5e

    .line 2242
    if-eqz v5, :cond_5d

    .line 2243
    const-string v1, "X509CertSelector.match: subject public key alg IDs don\'t match"

    invoke-virtual {v5, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2246
    :cond_5d
    return v0

    .line 2254
    .end local v2    # "encodedKey":[B
    .end local v3    # "val":Lsun/security/util/DerValue;
    .end local v4    # "algID":Lsun/security/x509/AlgorithmId;
    :cond_5e
    nop

    .line 2255
    return v1

    .line 2232
    .restart local v2    # "encodedKey":[B
    .restart local v3    # "val":Lsun/security/util/DerValue;
    :cond_60
    new-instance v1, Ljava/io/IOException;

    const-string v4, "invalid key format"

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/security/cert/X509CertSelector;
    .end local p1    # "xcert":Ljava/security/cert/X509Certificate;
    throw v1
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_68} :catch_68

    .line 2248
    .end local v2    # "encodedKey":[B
    .end local v3    # "val":Lsun/security/util/DerValue;
    .restart local p0    # "this":Ljava/security/cert/X509CertSelector;
    .restart local p1    # "xcert":Ljava/security/cert/X509Certificate;
    :catch_68
    move-exception v1

    .line 2249
    .local v1, "e5":Ljava/io/IOException;
    sget-object v2, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_72

    .line 2250
    const-string v3, "X509CertSelector.match: IOException in subject public key algorithm OID check"

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2253
    :cond_72
    return v0
.end method

.method private static greylist-max-o parseNames(Ljava/util/Collection;)Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/util/List<",
            "*>;>;)",
            "Ljava/util/Set<",
            "Lsun/security/x509/GeneralNameInterface;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 848
    .local p0, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 849
    .local v0, "genNames":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/x509/GeneralNameInterface;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 850
    .local v2, "nameList":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_41

    .line 853
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 854
    .local v3, "o":Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_39

    .line 857
    move-object v4, v3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 858
    .local v4, "nameType":I
    const/4 v5, 0x1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 859
    invoke-static {v4, v3}, Ljava/security/cert/X509CertSelector;->makeGeneralNameInterface(ILjava/lang/Object;)Lsun/security/x509/GeneralNameInterface;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 860
    .end local v2    # "nameList":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v3    # "o":Ljava/lang/Object;
    .end local v4    # "nameType":I
    goto :goto_9

    .line 855
    .restart local v2    # "nameList":Ljava/util/List;, "Ljava/util/List<*>;"
    .restart local v3    # "o":Ljava/lang/Object;
    :cond_39
    new-instance v1, Ljava/io/IOException;

    const-string v4, "expected an Integer"

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 851
    .end local v3    # "o":Ljava/lang/Object;
    :cond_41
    new-instance v1, Ljava/io/IOException;

    const-string v3, "name list size not 2"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 862
    .end local v2    # "nameList":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_49
    return-object v0
.end method


# virtual methods
.method public whitelist test-api addPathToName(ILjava/lang/String;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1222
    invoke-direct {p0, p1, p2}, Ljava/security/cert/X509CertSelector;->addPathToNameInternal(ILjava/lang/Object;)V

    .line 1223
    return-void
.end method

.method public whitelist test-api addPathToName(I[B)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "name"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1252
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/security/cert/X509CertSelector;->addPathToNameInternal(ILjava/lang/Object;)V

    .line 1253
    return-void
.end method

.method public whitelist test-api addSubjectAlternativeName(ILjava/lang/String;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 755
    invoke-direct {p0, p1, p2}, Ljava/security/cert/X509CertSelector;->addSubjectAlternativeNameInternal(ILjava/lang/Object;)V

    .line 756
    return-void
.end method

.method public whitelist test-api addSubjectAlternativeName(I[B)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "name"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 800
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/security/cert/X509CertSelector;->addSubjectAlternativeNameInternal(ILjava/lang/Object;)V

    .line 801
    return-void
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 4

    .line 2605
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CertSelector;

    .line 2607
    .local v0, "copy":Ljava/security/cert/X509CertSelector;
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    if-eqz v1, :cond_19

    .line 2608
    nop

    .line 2609
    invoke-static {v1}, Ljava/security/cert/X509CertSelector;->cloneSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    .line 2610
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeGeneralNames:Ljava/util/Set;

    .line 2611
    invoke-static {v1}, Ljava/security/cert/X509CertSelector;->cloneSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Ljava/security/cert/X509CertSelector;->subjectAlternativeGeneralNames:Ljava/util/Set;

    .line 2613
    :cond_19
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    if-eqz v1, :cond_2d

    .line 2614
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/Set;

    invoke-static {v1}, Ljava/security/cert/X509CertSelector;->cloneSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/Set;

    .line 2615
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    invoke-static {v1}, Ljava/security/cert/X509CertSelector;->cloneSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;
    :try_end_2d
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_2d} :catch_2e

    .line 2617
    :cond_2d
    return-object v0

    .line 2618
    .end local v0    # "copy":Ljava/security/cert/X509CertSelector;
    :catch_2e
    move-exception v0

    .line 2620
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api getAuthorityKeyIdentifier()[B
    .registers 2

    .line 1457
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->authorityKeyID:[B

    if-nez v0, :cond_6

    .line 1458
    const/4 v0, 0x0

    return-object v0

    .line 1460
    :cond_6
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public whitelist test-api getBasicConstraints()I
    .registers 2

    .line 1750
    iget v0, p0, Ljava/security/cert/X509CertSelector;->basicConstraints:I

    return v0
.end method

.method public whitelist test-api getCertificate()Ljava/security/cert/X509Certificate;
    .registers 2

    .line 1290
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->x509Cert:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public whitelist test-api getCertificateValid()Ljava/util/Date;
    .registers 2

    .line 1476
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    if-nez v0, :cond_6

    .line 1477
    const/4 v0, 0x0

    return-object v0

    .line 1479
    :cond_6
    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public whitelist test-api getExtendedKeyUsage()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1565
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->keyPurposeSet:Ljava/util/Set;

    return-object v0
.end method

.method public whitelist test-api getIssuer()Ljavax/security/auth/x500/X500Principal;
    .registers 2

    .line 1318
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public whitelist test-api getIssuerAsBytes()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1363
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v0

    :goto_a
    return-object v0
.end method

.method public whitelist test-api getIssuerAsString()Ljava/lang/String;
    .registers 2

    .line 1340
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0
.end method

.method public whitelist test-api getKeyUsage()[Z
    .registers 2

    .line 1546
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    if-nez v0, :cond_6

    .line 1547
    const/4 v0, 0x0

    return-object v0

    .line 1549
    :cond_6
    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0
.end method

.method public whitelist test-api getMatchAllSubjectAltNames()Z
    .registers 2

    .line 1585
    iget-boolean v0, p0, Ljava/security/cert/X509CertSelector;->matchAllSubjectAltNames:Z

    return v0
.end method

.method public whitelist test-api getNameConstraints()[B
    .registers 2

    .line 1732
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->ncBytes:[B

    if-nez v0, :cond_6

    .line 1733
    const/4 v0, 0x0

    return-object v0

    .line 1735
    :cond_6
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public whitelist test-api getPathToNames()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/List<",
            "*>;>;"
        }
    .end annotation

    .line 1801
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/Set;

    if-nez v0, :cond_6

    .line 1802
    const/4 v0, 0x0

    return-object v0

    .line 1804
    :cond_6
    invoke-static {v0}, Ljava/security/cert/X509CertSelector;->cloneNames(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getPolicy()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1766
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->policySet:Ljava/util/Set;

    return-object v0
.end method

.method public whitelist test-api getPrivateKeyValid()Ljava/util/Date;
    .registers 2

    .line 1495
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    if-nez v0, :cond_6

    .line 1496
    const/4 v0, 0x0

    return-object v0

    .line 1498
    :cond_6
    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public whitelist test-api getSerialNumber()Ljava/math/BigInteger;
    .registers 2

    .line 1304
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->serialNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist test-api getSubject()Ljavax/security/auth/x500/X500Principal;
    .registers 2

    .line 1377
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public whitelist test-api getSubjectAlternativeNames()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/List<",
            "*>;>;"
        }
    .end annotation

    .line 1622
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    if-nez v0, :cond_6

    .line 1623
    const/4 v0, 0x0

    return-object v0

    .line 1625
    :cond_6
    invoke-static {v0}, Ljava/security/cert/X509CertSelector;->cloneNames(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSubjectAsBytes()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1422
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v0

    :goto_a
    return-object v0
.end method

.method public whitelist test-api getSubjectAsString()Ljava/lang/String;
    .registers 2

    .line 1399
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0
.end method

.method public whitelist test-api getSubjectKeyIdentifier()[B
    .registers 2

    .line 1438
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectKeyID:[B

    if-nez v0, :cond_6

    .line 1439
    const/4 v0, 0x0

    return-object v0

    .line 1441
    :cond_6
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public whitelist test-api getSubjectPublicKey()Ljava/security/PublicKey;
    .registers 2

    .line 1528
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public whitelist test-api getSubjectPublicKeyAlgID()Ljava/lang/String;
    .registers 2

    .line 1513
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Lsun/security/util/ObjectIdentifier;

    if-nez v0, :cond_6

    .line 1514
    const/4 v0, 0x0

    return-object v0

    .line 1516
    :cond_6
    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api match(Ljava/security/cert/Certificate;)Z
    .registers 8
    .param p1, "cert"    # Ljava/security/cert/Certificate;

    .line 2000
    instance-of v0, p1, Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2001
    return v1

    .line 2003
    :cond_6
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 2005
    .local v0, "xcert":Ljava/security/cert/X509Certificate;
    sget-object v2, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_48

    .line 2006
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "X509CertSelector.match(SN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2007
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v4

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n  Issuer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2008
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\n  Subject: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2006
    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2013
    :cond_48
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->x509Cert:Ljava/security/cert/X509Certificate;

    if-eqz v3, :cond_5a

    .line 2014
    invoke-virtual {v3, v0}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5a

    .line 2015
    if-eqz v2, :cond_59

    .line 2016
    const-string v3, "X509CertSelector.match: certs don\'t match"

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2019
    :cond_59
    return v1

    .line 2024
    :cond_5a
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->serialNumber:Ljava/math/BigInteger;

    if-eqz v3, :cond_70

    .line 2025
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_70

    .line 2026
    if-eqz v2, :cond_6f

    .line 2027
    const-string v3, "X509CertSelector.match: serial numbers don\'t match"

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2030
    :cond_6f
    return v1

    .line 2035
    :cond_70
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    if-eqz v3, :cond_86

    .line 2036
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_86

    .line 2037
    if-eqz v2, :cond_85

    .line 2038
    const-string v3, "X509CertSelector.match: issuer DNs don\'t match"

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2041
    :cond_85
    return v1

    .line 2046
    :cond_86
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    if-eqz v3, :cond_9c

    .line 2047
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9c

    .line 2048
    if-eqz v2, :cond_9b

    .line 2049
    const-string v3, "X509CertSelector.match: subject DNs don\'t match"

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2052
    :cond_9b
    return v1

    .line 2057
    :cond_9c
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    if-eqz v3, :cond_af

    .line 2059
    :try_start_a0
    invoke-virtual {v0, v3}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_a3
    .catch Ljava/security/cert/CertificateException; {:try_start_a0 .. :try_end_a3} :catch_a4

    .line 2066
    goto :goto_af

    .line 2060
    :catch_a4
    move-exception v2

    .line 2061
    .local v2, "e":Ljava/security/cert/CertificateException;
    sget-object v3, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_ae

    .line 2062
    const-string v4, "X509CertSelector.match: certificate not within validity period"

    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2065
    :cond_ae
    return v1

    .line 2070
    .end local v2    # "e":Ljava/security/cert/CertificateException;
    :cond_af
    :goto_af
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyBytes:[B

    if-eqz v3, :cond_cb

    .line 2071
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    .line 2072
    .local v3, "certKey":[B
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyBytes:[B

    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_cb

    .line 2073
    if-eqz v2, :cond_ca

    .line 2074
    const-string v4, "X509CertSelector.match: subject public keys don\'t match"

    invoke-virtual {v2, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2077
    :cond_ca
    return v1

    .line 2081
    .end local v3    # "certKey":[B
    :cond_cb
    invoke-direct {p0, v0}, Ljava/security/cert/X509CertSelector;->matchBasicConstraints(Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-eqz v3, :cond_10f

    .line 2082
    invoke-direct {p0, v0}, Ljava/security/cert/X509CertSelector;->matchKeyUsage(Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-eqz v3, :cond_10f

    .line 2083
    invoke-direct {p0, v0}, Ljava/security/cert/X509CertSelector;->matchExtendedKeyUsage(Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-eqz v3, :cond_10f

    .line 2084
    invoke-direct {p0, v0}, Ljava/security/cert/X509CertSelector;->matchSubjectKeyID(Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-eqz v3, :cond_10f

    .line 2085
    invoke-direct {p0, v0}, Ljava/security/cert/X509CertSelector;->matchAuthorityKeyID(Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-eqz v3, :cond_10f

    .line 2086
    invoke-direct {p0, v0}, Ljava/security/cert/X509CertSelector;->matchPrivateKeyValid(Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-eqz v3, :cond_10f

    .line 2087
    invoke-direct {p0, v0}, Ljava/security/cert/X509CertSelector;->matchSubjectPublicKeyAlgID(Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-eqz v3, :cond_10f

    .line 2088
    invoke-direct {p0, v0}, Ljava/security/cert/X509CertSelector;->matchPolicy(Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-eqz v3, :cond_10f

    .line 2089
    invoke-direct {p0, v0}, Ljava/security/cert/X509CertSelector;->matchSubjectAlternativeNames(Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-eqz v3, :cond_10f

    .line 2090
    invoke-direct {p0, v0}, Ljava/security/cert/X509CertSelector;->matchPathToNames(Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-eqz v3, :cond_10f

    .line 2091
    invoke-direct {p0, v0}, Ljava/security/cert/X509CertSelector;->matchNameConstraints(Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-eqz v3, :cond_10f

    const/4 v1, 0x1

    goto :goto_110

    :cond_10f
    nop

    .line 2093
    .local v1, "result":Z
    :goto_110
    if-eqz v1, :cond_119

    if-eqz v2, :cond_119

    .line 2094
    const-string v3, "X509CertSelector.match returning: true"

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2096
    :cond_119
    return v1
.end method

.method public whitelist test-api setAuthorityKeyIdentifier([B)V
    .registers 3
    .param p1, "authorityKeyID"    # [B

    .line 442
    if-nez p1, :cond_6

    .line 443
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->authorityKeyID:[B

    goto :goto_e

    .line 445
    :cond_6
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->authorityKeyID:[B

    .line 447
    :goto_e
    return-void
.end method

.method public whitelist test-api setBasicConstraints(I)V
    .registers 4
    .param p1, "minMaxPathLen"    # I

    .line 1066
    const/4 v0, -0x2

    if-lt p1, v0, :cond_6

    .line 1069
    iput p1, p0, Ljava/security/cert/X509CertSelector;->basicConstraints:I

    .line 1070
    return-void

    .line 1067
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "basic constraints less than -2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setCertificate(Ljava/security/cert/X509Certificate;)V
    .registers 2
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .line 175
    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->x509Cert:Ljava/security/cert/X509Certificate;

    .line 176
    return-void
.end method

.method public whitelist test-api setCertificateValid(Ljava/util/Date;)V
    .registers 3
    .param p1, "certValid"    # Ljava/util/Date;

    .line 462
    if-nez p1, :cond_6

    .line 463
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    goto :goto_e

    .line 465
    :cond_6
    invoke-virtual {p1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    .line 467
    :goto_e
    return-void
.end method

.method public whitelist test-api setExtendedKeyUsage(Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 617
    .local p1, "keyPurposeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p1, :cond_38

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_38

    .line 621
    :cond_9
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 622
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->keyPurposeSet:Ljava/util/Set;

    .line 623
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->keyPurposeOIDSet:Ljava/util/Set;

    .line 624
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->keyPurposeSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 625
    .local v1, "s":Ljava/lang/String;
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->keyPurposeOIDSet:Ljava/util/Set;

    new-instance v3, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v3, v1}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 626
    .end local v1    # "s":Ljava/lang/String;
    goto :goto_21

    .line 618
    :cond_38
    :goto_38
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->keyPurposeSet:Ljava/util/Set;

    .line 619
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->keyPurposeOIDSet:Ljava/util/Set;

    .line 628
    :cond_3d
    return-void
.end method

.method public whitelist test-api setIssuer(Ljava/lang/String;)V
    .registers 3
    .param p1, "issuerDN"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    if-nez p1, :cond_6

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    goto :goto_11

    .line 230
    :cond_6
    new-instance v0, Lsun/security/x509/X500Name;

    invoke-direct {v0, p1}, Lsun/security/x509/X500Name;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lsun/security/x509/X500Name;->asX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    .line 232
    :goto_11
    return-void
.end method

.method public whitelist test-api setIssuer(Ljavax/security/auth/x500/X500Principal;)V
    .registers 2
    .param p1, "issuer"    # Ljavax/security/auth/x500/X500Principal;

    .line 203
    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    .line 204
    return-void
.end method

.method public whitelist test-api setIssuer([B)V
    .registers 5
    .param p1, "issuerDN"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_9

    :cond_4
    :try_start_4
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v0, p1}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    :goto_9
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_b} :catch_d

    .line 281
    nop

    .line 282
    return-void

    .line 279
    :catch_d
    move-exception v0

    .line 280
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid name"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api setKeyUsage([Z)V
    .registers 3
    .param p1, "keyUsage"    # [Z

    .line 590
    if-nez p1, :cond_6

    .line 591
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    goto :goto_e

    .line 593
    :cond_6
    invoke-virtual {p1}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    .line 595
    :goto_e
    return-void
.end method

.method public whitelist test-api setMatchAllSubjectAltNames(Z)V
    .registers 2
    .param p1, "matchAllNames"    # Z

    .line 647
    iput-boolean p1, p0, Ljava/security/cert/X509CertSelector;->matchAllSubjectAltNames:Z

    .line 648
    return-void
.end method

.method public whitelist test-api setNameConstraints([B)V
    .registers 4
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1040
    if-nez p1, :cond_8

    .line 1041
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->ncBytes:[B

    .line 1042
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->nc:Lsun/security/x509/NameConstraintsExtension;

    goto :goto_19

    .line 1044
    :cond_8
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->ncBytes:[B

    .line 1045
    new-instance v0, Lsun/security/x509/NameConstraintsExtension;

    sget-object v1, Ljava/security/cert/X509CertSelector;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, p1}, Lsun/security/x509/NameConstraintsExtension;-><init>(Ljava/lang/Boolean;Ljava/lang/Object;)V

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->nc:Lsun/security/x509/NameConstraintsExtension;

    .line 1047
    :goto_19
    return-void
.end method

.method public whitelist test-api setPathToNames(Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/util/List<",
            "*>;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1169
    .local p1, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    if-eqz p1, :cond_16

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_16

    .line 1173
    :cond_9
    invoke-static {p1}, Ljava/security/cert/X509CertSelector;->cloneAndCheckNames(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    .line 1174
    .local v0, "tempNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/List<*>;>;"
    invoke-static {v0}, Ljava/security/cert/X509CertSelector;->parseNames(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    .line 1176
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/Set;

    goto :goto_1b

    .line 1170
    .end local v0    # "tempNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/List<*>;>;"
    :cond_16
    :goto_16
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/Set;

    .line 1171
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    .line 1178
    :goto_1b
    return-void
.end method

.method greylist-max-o setPathToNamesInternal(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lsun/security/x509/GeneralNameInterface;",
            ">;)V"
        }
    .end annotation

    .line 1184
    .local p1, "names":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/x509/GeneralNameInterface;>;"
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/Set;

    .line 1185
    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    .line 1186
    return-void
.end method

.method public whitelist test-api setPolicy(Ljava/util/Set;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1093
    .local p1, "certPolicySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p1, :cond_8

    .line 1094
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->policySet:Ljava/util/Set;

    .line 1095
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->policy:Lsun/security/x509/CertificatePolicySet;

    goto :goto_4a

    .line 1098
    :cond_8
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1099
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 1101
    .local v0, "tempSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1102
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 1103
    .local v2, "polIdVector":Ljava/util/Vector;, "Ljava/util/Vector<Lsun/security/x509/CertificatePolicyId;>;"
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    .line 1104
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1105
    .local v3, "o":Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_39

    .line 1108
    new-instance v4, Lsun/security/x509/CertificatePolicyId;

    new-instance v5, Lsun/security/util/ObjectIdentifier;

    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    invoke-direct {v5, v6}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lsun/security/x509/CertificatePolicyId;-><init>(Lsun/security/util/ObjectIdentifier;)V

    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1110
    .end local v3    # "o":Ljava/lang/Object;
    goto :goto_1a

    .line 1106
    .restart local v3    # "o":Ljava/lang/Object;
    :cond_39
    new-instance v4, Ljava/io/IOException;

    const-string v5, "non String in certPolicySet"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1112
    .end local v3    # "o":Ljava/lang/Object;
    :cond_41
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->policySet:Ljava/util/Set;

    .line 1113
    new-instance v3, Lsun/security/x509/CertificatePolicySet;

    invoke-direct {v3, v2}, Lsun/security/x509/CertificatePolicySet;-><init>(Ljava/util/Vector;)V

    iput-object v3, p0, Ljava/security/cert/X509CertSelector;->policy:Lsun/security/x509/CertificatePolicySet;

    .line 1115
    .end local v0    # "tempSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "polIdVector":Ljava/util/Vector;, "Ljava/util/Vector<Lsun/security/x509/CertificatePolicyId;>;"
    :goto_4a
    return-void
.end method

.method public whitelist test-api setPrivateKeyValid(Ljava/util/Date;)V
    .registers 3
    .param p1, "privateKeyValid"    # Ljava/util/Date;

    .line 483
    if-nez p1, :cond_6

    .line 484
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    goto :goto_e

    .line 486
    :cond_6
    invoke-virtual {p1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    .line 488
    :goto_e
    return-void
.end method

.method public whitelist test-api setSerialNumber(Ljava/math/BigInteger;)V
    .registers 2
    .param p1, "serial"    # Ljava/math/BigInteger;

    .line 189
    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->serialNumber:Ljava/math/BigInteger;

    .line 190
    return-void
.end method

.method public whitelist test-api setSubject(Ljava/lang/String;)V
    .registers 3
    .param p1, "subjectDN"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    if-nez p1, :cond_6

    .line 319
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    goto :goto_11

    .line 321
    :cond_6
    new-instance v0, Lsun/security/x509/X500Name;

    invoke-direct {v0, p1}, Lsun/security/x509/X500Name;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lsun/security/x509/X500Name;->asX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    .line 323
    :goto_11
    return-void
.end method

.method public whitelist test-api setSubject(Ljavax/security/auth/x500/X500Principal;)V
    .registers 2
    .param p1, "subject"    # Ljavax/security/auth/x500/X500Principal;

    .line 295
    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    .line 296
    return-void
.end method

.method public whitelist test-api setSubject([B)V
    .registers 5
    .param p1, "subjectDN"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 342
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_9

    :cond_4
    :try_start_4
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v0, p1}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    :goto_9
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_b} :catch_d

    .line 345
    nop

    .line 346
    return-void

    .line 343
    :catch_d
    move-exception v0

    .line 344
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid name"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api setSubjectAlternativeNames(Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/util/List<",
            "*>;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 699
    .local p1, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 700
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    .line 701
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeGeneralNames:Ljava/util/Set;

    goto :goto_1f

    .line 703
    :cond_8
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 704
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    .line 705
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeGeneralNames:Ljava/util/Set;

    .line 706
    return-void

    .line 708
    :cond_13
    invoke-static {p1}, Ljava/security/cert/X509CertSelector;->cloneAndCheckNames(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    .line 710
    .local v0, "tempNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/List<*>;>;"
    invoke-static {v0}, Ljava/security/cert/X509CertSelector;->parseNames(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeGeneralNames:Ljava/util/Set;

    .line 711
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    .line 713
    .end local v0    # "tempNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/List<*>;>;"
    :goto_1f
    return-void
.end method

.method public whitelist test-api setSubjectKeyIdentifier([B)V
    .registers 3
    .param p1, "subjectKeyID"    # [B

    .line 381
    if-nez p1, :cond_6

    .line 382
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectKeyID:[B

    goto :goto_e

    .line 384
    :cond_6
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectKeyID:[B

    .line 386
    :goto_e
    return-void
.end method

.method public whitelist test-api setSubjectPublicKey(Ljava/security/PublicKey;)V
    .registers 3
    .param p1, "key"    # Ljava/security/PublicKey;

    .line 522
    if-nez p1, :cond_8

    .line 523
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:Ljava/security/PublicKey;

    .line 524
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyBytes:[B

    goto :goto_10

    .line 526
    :cond_8
    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:Ljava/security/PublicKey;

    .line 527
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyBytes:[B

    .line 529
    :goto_10
    return-void
.end method

.method public whitelist test-api setSubjectPublicKey([B)V
    .registers 4
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 565
    if-nez p1, :cond_8

    .line 566
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:Ljava/security/PublicKey;

    .line 567
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyBytes:[B

    goto :goto_1b

    .line 569
    :cond_8
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyBytes:[B

    .line 570
    new-instance v1, Lsun/security/util/DerValue;

    invoke-direct {v1, v0}, Lsun/security/util/DerValue;-><init>([B)V

    invoke-static {v1}, Lsun/security/x509/X509Key;->parse(Lsun/security/util/DerValue;)Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:Ljava/security/PublicKey;

    .line 572
    :goto_1b
    return-void
.end method

.method public whitelist test-api setSubjectPublicKeyAlgID(Ljava/lang/String;)V
    .registers 3
    .param p1, "oid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 506
    if-nez p1, :cond_6

    .line 507
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Lsun/security/util/ObjectIdentifier;

    goto :goto_d

    .line 509
    :cond_6
    new-instance v0, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, p1}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Lsun/security/util/ObjectIdentifier;

    .line 511
    :goto_d
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 1814
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1815
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "X509CertSelector: [\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1816
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->x509Cert:Ljava/security/cert/X509Certificate;

    const-string v2, "\n"

    if-eqz v1, :cond_2d

    .line 1817
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Certificate: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->x509Cert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1819
    :cond_2d
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->serialNumber:Ljava/math/BigInteger;

    if-eqz v1, :cond_4e

    .line 1820
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Serial Number: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->serialNumber:Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1822
    :cond_4e
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    if-eqz v1, :cond_6d

    .line 1823
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Issuer: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getIssuerAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1825
    :cond_6d
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    if-eqz v1, :cond_8c

    .line 1826
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Subject: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getSubjectAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1828
    :cond_8c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  matchAllSubjectAltNames flag: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Ljava/security/cert/X509CertSelector;->matchAllSubjectAltNames:Z

    .line 1829
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1828
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1830
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    if-eqz v1, :cond_ee

    .line 1831
    const-string v1, "  SubjectAlternativeNames:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1832
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1833
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<*>;>;"
    :goto_b8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ee

    .line 1834
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1835
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    .line 1836
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1835
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1837
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    goto :goto_b8

    .line 1839
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<*>;>;"
    :cond_ee
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectKeyID:[B

    if-eqz v1, :cond_114

    .line 1840
    new-instance v1, Lsun/misc/HexDumpEncoder;

    invoke-direct {v1}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 1841
    .local v1, "enc":Lsun/misc/HexDumpEncoder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Subject Key Identifier: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->subjectKeyID:[B

    .line 1842
    invoke-virtual {v1, v4}, Lsun/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1841
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1844
    .end local v1    # "enc":Lsun/misc/HexDumpEncoder;
    :cond_114
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->authorityKeyID:[B

    if-eqz v1, :cond_13a

    .line 1845
    new-instance v1, Lsun/misc/HexDumpEncoder;

    invoke-direct {v1}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 1846
    .restart local v1    # "enc":Lsun/misc/HexDumpEncoder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Authority Key Identifier: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->authorityKeyID:[B

    .line 1847
    invoke-virtual {v1, v4}, Lsun/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1846
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1849
    .end local v1    # "enc":Lsun/misc/HexDumpEncoder;
    :cond_13a
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    if-eqz v1, :cond_15b

    .line 1850
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Certificate Valid: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    .line 1851
    invoke-virtual {v3}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1850
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1853
    :cond_15b
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    if-eqz v1, :cond_17c

    .line 1854
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Private Key Valid: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    .line 1855
    invoke-virtual {v3}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1854
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1857
    :cond_17c
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Lsun/security/util/ObjectIdentifier;

    if-eqz v1, :cond_19d

    .line 1858
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Subject Public Key AlgID: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Lsun/security/util/ObjectIdentifier;

    .line 1859
    invoke-virtual {v3}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1858
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1861
    :cond_19d
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:Ljava/security/PublicKey;

    if-eqz v1, :cond_1be

    .line 1862
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Subject Public Key: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:Ljava/security/PublicKey;

    .line 1863
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1862
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1865
    :cond_1be
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    if-eqz v1, :cond_1df

    .line 1866
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Key Usage: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    invoke-static {v3}, Ljava/security/cert/X509CertSelector;->keyUsageToString([Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1868
    :cond_1df
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->keyPurposeSet:Ljava/util/Set;

    if-eqz v1, :cond_200

    .line 1869
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Extended Key Usage: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->keyPurposeSet:Ljava/util/Set;

    .line 1870
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1869
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1872
    :cond_200
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->policy:Lsun/security/x509/CertificatePolicySet;

    if-eqz v1, :cond_221

    .line 1873
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Policy: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->policy:Lsun/security/x509/CertificatePolicySet;

    invoke-virtual {v3}, Lsun/security/x509/CertificatePolicySet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1875
    :cond_221
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    if-eqz v1, :cond_252

    .line 1876
    const-string v1, "  Path to names:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1877
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1878
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralNameInterface;>;"
    :goto_230
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_252

    .line 1879
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_230

    .line 1882
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralNameInterface;>;"
    :cond_252
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1883
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
