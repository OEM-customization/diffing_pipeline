.class public Ljava/security/cert/X509CertSelector;
.super Ljava/lang/Object;
.source "X509CertSelector.java"

# interfaces
.implements Ljava/security/cert/CertSelector;


# static fields
.field private static final ANY_EXTENDED_KEY_USAGE:Lsun/security/util/ObjectIdentifier;

.field private static final CERT_POLICIES_ID:I = 0x3

.field private static final EXTENDED_KEY_USAGE_ID:I = 0x4

.field private static final EXTENSION_OIDS:[Ljava/lang/String;

.field private static final FALSE:Ljava/lang/Boolean;

.field static final NAME_ANY:I = 0x0

.field private static final NAME_CONSTRAINTS_ID:I = 0x2

.field static final NAME_DIRECTORY:I = 0x4

.field static final NAME_DNS:I = 0x2

.field static final NAME_EDI:I = 0x5

.field static final NAME_IP:I = 0x7

.field static final NAME_OID:I = 0x8

.field static final NAME_RFC822:I = 0x1

.field static final NAME_URI:I = 0x6

.field static final NAME_X400:I = 0x3

.field private static final NUM_OF_EXTENSIONS:I = 0x5

.field private static final PRIVATE_KEY_USAGE_ID:I = 0x0

.field private static final SUBJECT_ALT_NAME_ID:I = 0x1

.field private static final debug:Lsun/security/util/Debug;


# instance fields
.field private authorityKeyID:[B

.field private basicConstraints:I

.field private certificateValid:Ljava/util/Date;

.field private issuer:Ljavax/security/auth/x500/X500Principal;

.field private keyPurposeOIDSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lsun/security/util/ObjectIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private keyPurposeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private keyUsage:[Z

.field private matchAllSubjectAltNames:Z

.field private nc:Lsun/security/x509/NameConstraintsExtension;

.field private ncBytes:[B

.field private pathToGeneralNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lsun/security/x509/GeneralNameInterface;",
            ">;"
        }
    .end annotation
.end field

.field private pathToNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation
.end field

.field private policy:Lsun/security/x509/CertificatePolicySet;

.field private policySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private privateKeyValid:Ljava/util/Date;

.field private serialNumber:Ljava/math/BigInteger;

.field private subject:Ljavax/security/auth/x500/X500Principal;

.field private subjectAlternativeGeneralNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lsun/security/x509/GeneralNameInterface;",
            ">;"
        }
    .end annotation
.end field

.field private subjectAlternativeNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation
.end field

.field private subjectKeyID:[B

.field private subjectPublicKey:Ljava/security/PublicKey;

.field private subjectPublicKeyAlgID:Lsun/security/util/ObjectIdentifier;

.field private subjectPublicKeyBytes:[B

.field private x509Cert:Ljava/security/cert/X509Certificate;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 89
    const-string/jumbo v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    .line 92
    const/16 v0, 0x1d

    const/16 v1, 0x25

    filled-new-array {v3, v4, v0, v1, v2}, [I

    move-result-object v0

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 91
    sput-object v0, Ljava/security/cert/X509CertSelector;->ANY_EXTENDED_KEY_USAGE:Lsun/security/util/ObjectIdentifier;

    .line 95
    invoke-static {}, Ljava/security/cert/CertPathHelperImpl;->initialize()V

    .line 123
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Ljava/security/cert/X509CertSelector;->FALSE:Ljava/lang/Boolean;

    .line 131
    new-array v0, v4, [Ljava/lang/String;

    sput-object v0, Ljava/security/cert/X509CertSelector;->EXTENSION_OIDS:[Ljava/lang/String;

    .line 134
    sget-object v0, Ljava/security/cert/X509CertSelector;->EXTENSION_OIDS:[Ljava/lang/String;

    const-string/jumbo v1, "2.5.29.16"

    aput-object v1, v0, v2

    .line 135
    sget-object v0, Ljava/security/cert/X509CertSelector;->EXTENSION_OIDS:[Ljava/lang/String;

    const-string/jumbo v1, "2.5.29.17"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 136
    sget-object v0, Ljava/security/cert/X509CertSelector;->EXTENSION_OIDS:[Ljava/lang/String;

    const-string/jumbo v1, "2.5.29.30"

    aput-object v1, v0, v3

    .line 137
    sget-object v0, Ljava/security/cert/X509CertSelector;->EXTENSION_OIDS:[Ljava/lang/String;

    const-string/jumbo v1, "2.5.29.32"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 138
    sget-object v0, Ljava/security/cert/X509CertSelector;->EXTENSION_OIDS:[Ljava/lang/String;

    const-string/jumbo v1, "2.5.29.37"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 87
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v0, -0x1

    iput v0, p0, Ljava/security/cert/X509CertSelector;->basicConstraints:I

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/security/cert/X509CertSelector;->matchAllSubjectAltNames:Z

    .line 158
    return-void
.end method

.method private addPathToNameInternal(ILjava/lang/Object;)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "name"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1269
    invoke-static {p1, p2}, Ljava/security/cert/X509CertSelector;->makeGeneralNameInterface(ILjava/lang/Object;)Lsun/security/x509/GeneralNameInterface;

    move-result-object v1

    .line 1270
    .local v1, "tempName":Lsun/security/x509/GeneralNameInterface;
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    if-nez v2, :cond_16

    .line 1271
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/Set;

    .line 1272
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    .line 1274
    :cond_16
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1275
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1276
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1277
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1278
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1279
    return-void
.end method

.method private addSubjectAlternativeNameInternal(ILjava/lang/Object;)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "name"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 817
    invoke-static {p1, p2}, Ljava/security/cert/X509CertSelector;->makeGeneralNameInterface(ILjava/lang/Object;)Lsun/security/x509/GeneralNameInterface;

    move-result-object v1

    .line 818
    .local v1, "tempName":Lsun/security/x509/GeneralNameInterface;
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    if-nez v2, :cond_f

    .line 819
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    .line 821
    :cond_f
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeGeneralNames:Ljava/util/Set;

    if-nez v2, :cond_1a

    .line 822
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeGeneralNames:Ljava/util/Set;

    .line 824
    :cond_1a
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 825
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 826
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 827
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 828
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeGeneralNames:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 829
    return-void
.end method

.method private static cloneAndCheckNames(Ljava/util/Collection;)Ljava/util/Set;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;)",
            "Ljava/util/Set",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1675
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 1676
    .local v5, "namesCopy":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/List<*>;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "o$iterator":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_20

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 1678
    .local v7, "o":Ljava/util/List;, "Ljava/util/List<*>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v5, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 1682
    .end local v7    # "o":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_20
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "list$iterator":Ljava/util/Iterator;
    :cond_24
    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_98

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1684
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    move-object v2, v0

    .line 1685
    .local v2, "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_41

    .line 1686
    new-instance v9, Ljava/io/IOException;

    const-string/jumbo v10, "name list size not 2"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1688
    :cond_41
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 1689
    .local v6, "o":Ljava/lang/Object;
    instance-of v9, v6, Ljava/lang/Integer;

    if-nez v9, :cond_52

    .line 1690
    new-instance v9, Ljava/io/IOException;

    const-string/jumbo v10, "expected an Integer"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1692
    :cond_52
    check-cast v6, Ljava/lang/Integer;

    .end local v6    # "o":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1693
    .local v4, "nameType":I
    if-ltz v4, :cond_5e

    const/16 v9, 0x8

    if-le v4, v9, :cond_67

    .line 1694
    :cond_5e
    new-instance v9, Ljava/io/IOException;

    const-string/jumbo v10, "name type not 0-8"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1696
    :cond_67
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 1697
    .local v3, "nameObject":Ljava/lang/Object;
    instance-of v9, v3, [B

    if-nez v9, :cond_8a

    .line 1698
    instance-of v9, v3, Ljava/lang/String;

    xor-int/lit8 v9, v9, 0x1

    .line 1697
    if-eqz v9, :cond_8a

    .line 1699
    sget-object v9, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v9, :cond_81

    .line 1700
    sget-object v9, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v10, "X509CertSelector.cloneAndCheckNames() name not byte array"

    invoke-virtual {v9, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 1703
    :cond_81
    new-instance v9, Ljava/io/IOException;

    const-string/jumbo v10, "name not byte array or String"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1705
    :cond_8a
    instance-of v9, v3, [B

    if-eqz v9, :cond_24

    .line 1706
    check-cast v3, [B

    .end local v3    # "nameObject":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v0, v12, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_24

    .line 1709
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v2    # "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v4    # "nameType":I
    :cond_98
    return-object v5
.end method

.method private static cloneNames(Ljava/util/Collection;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;)",
            "Ljava/util/Set",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 1651
    .local p0, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    :try_start_0
    invoke-static {p0}, Ljava/security/cert/X509CertSelector;->cloneAndCheckNames(Ljava/util/Collection;)Ljava/util/Set;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 1652
    :catch_5
    move-exception v0

    .line 1653
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cloneNames encountered IOException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1654
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 1653
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static cloneSet(Ljava/util/Set;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TT;>;)",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2591
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    instance-of v1, p0, Ljava/util/HashSet;

    if-eqz v1, :cond_d

    .line 2592
    check-cast p0, Ljava/util/HashSet;

    .end local p0    # "set":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    invoke-virtual {p0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 2593
    .local v0, "clone":Ljava/lang/Object;
    check-cast v0, Ljava/util/Set;

    .end local v0    # "clone":Ljava/lang/Object;
    return-object v0

    .line 2595
    .restart local p0    # "set":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    :cond_d
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method static equalNames(Ljava/util/Collection;Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 877
    .local p0, "object1":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .local p1, "object2":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-eqz p0, :cond_4

    if-nez p1, :cond_a

    .line 878
    :cond_4
    if-ne p0, p1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7

    .line 880
    :cond_a
    invoke-interface {p0, p1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static getExtensionObject(Ljava/security/cert/X509Certificate;I)Ljava/security/cert/Extension;
    .registers 9
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p1, "extId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1950
    instance-of v5, p0, Lsun/security/x509/X509CertImpl;

    if-eqz v5, :cond_25

    move-object v2, p0

    .line 1951
    check-cast v2, Lsun/security/x509/X509CertImpl;

    .line 1952
    .local v2, "impl":Lsun/security/x509/X509CertImpl;
    packed-switch p1, :pswitch_data_70

    .line 1964
    return-object v6

    .line 1954
    :pswitch_c
    invoke-virtual {v2}, Lsun/security/x509/X509CertImpl;->getPrivateKeyUsageExtension()Lsun/security/x509/PrivateKeyUsageExtension;

    move-result-object v5

    return-object v5

    .line 1956
    :pswitch_11
    invoke-virtual {v2}, Lsun/security/x509/X509CertImpl;->getSubjectAlternativeNameExtension()Lsun/security/x509/SubjectAlternativeNameExtension;

    move-result-object v5

    return-object v5

    .line 1958
    :pswitch_16
    invoke-virtual {v2}, Lsun/security/x509/X509CertImpl;->getNameConstraintsExtension()Lsun/security/x509/NameConstraintsExtension;

    move-result-object v5

    return-object v5

    .line 1960
    :pswitch_1b
    invoke-virtual {v2}, Lsun/security/x509/X509CertImpl;->getCertificatePoliciesExtension()Lsun/security/x509/CertificatePoliciesExtension;

    move-result-object v5

    return-object v5

    .line 1962
    :pswitch_20
    invoke-virtual {v2}, Lsun/security/x509/X509CertImpl;->getExtendedKeyUsageExtension()Lsun/security/x509/ExtendedKeyUsageExtension;

    move-result-object v5

    return-object v5

    .line 1967
    .end local v2    # "impl":Lsun/security/x509/X509CertImpl;
    :cond_25
    sget-object v5, Ljava/security/cert/X509CertSelector;->EXTENSION_OIDS:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-virtual {p0, v5}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v4

    .line 1968
    .local v4, "rawExtVal":[B
    if-nez v4, :cond_30

    .line 1969
    return-object v6

    .line 1971
    :cond_30
    new-instance v3, Lsun/security/util/DerInputStream;

    invoke-direct {v3, v4}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 1972
    .local v3, "in":Lsun/security/util/DerInputStream;
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getOctetString()[B

    move-result-object v0

    .line 1973
    .local v0, "encoded":[B
    packed-switch p1, :pswitch_data_7e

    .line 1989
    return-object v6

    .line 1976
    :pswitch_3d
    :try_start_3d
    new-instance v5, Lsun/security/x509/PrivateKeyUsageExtension;

    sget-object v6, Ljava/security/cert/X509CertSelector;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v5, v6, v0}, Lsun/security/x509/PrivateKeyUsageExtension;-><init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    :try_end_44
    .catch Ljava/security/cert/CertificateException; {:try_start_3d .. :try_end_44} :catch_45

    return-object v5

    .line 1977
    :catch_45
    move-exception v1

    .line 1978
    .local v1, "ex":Ljava/security/cert/CertificateException;
    new-instance v5, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1981
    .end local v1    # "ex":Ljava/security/cert/CertificateException;
    :pswitch_50
    new-instance v5, Lsun/security/x509/SubjectAlternativeNameExtension;

    sget-object v6, Ljava/security/cert/X509CertSelector;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v5, v6, v0}, Lsun/security/x509/SubjectAlternativeNameExtension;-><init>(Ljava/lang/Boolean;Ljava/lang/Object;)V

    return-object v5

    .line 1983
    :pswitch_58
    new-instance v5, Lsun/security/x509/NameConstraintsExtension;

    sget-object v6, Ljava/security/cert/X509CertSelector;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v5, v6, v0}, Lsun/security/x509/NameConstraintsExtension;-><init>(Ljava/lang/Boolean;Ljava/lang/Object;)V

    return-object v5

    .line 1985
    :pswitch_60
    new-instance v5, Lsun/security/x509/CertificatePoliciesExtension;

    sget-object v6, Ljava/security/cert/X509CertSelector;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v5, v6, v0}, Lsun/security/x509/CertificatePoliciesExtension;-><init>(Ljava/lang/Boolean;Ljava/lang/Object;)V

    return-object v5

    .line 1987
    :pswitch_68
    new-instance v5, Lsun/security/x509/ExtendedKeyUsageExtension;

    sget-object v6, Ljava/security/cert/X509CertSelector;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v5, v6, v0}, Lsun/security/x509/ExtendedKeyUsageExtension;-><init>(Ljava/lang/Boolean;Ljava/lang/Object;)V

    return-object v5

    .line 1952
    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_c
        :pswitch_11
        :pswitch_16
        :pswitch_1b
        :pswitch_20
    .end packed-switch

    .line 1973
    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_50
        :pswitch_58
        :pswitch_60
        :pswitch_68
    .end packed-switch
.end method

.method private static keyUsageToString([Z)Ljava/lang/String;
    .registers 5
    .param p0, "k"    # [Z

    .prologue
    .line 1893
    const-string/jumbo v1, "KeyUsage [\n"

    .line 1895
    .local v1, "s":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_4
    aget-boolean v2, p0, v2

    if-eqz v2, :cond_1c

    .line 1896
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  DigitalSignature\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1898
    :cond_1c
    const/4 v2, 0x1

    aget-boolean v2, p0, v2

    if-eqz v2, :cond_35

    .line 1899
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  Non_repudiation\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1901
    :cond_35
    const/4 v2, 0x2

    aget-boolean v2, p0, v2

    if-eqz v2, :cond_4e

    .line 1902
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  Key_Encipherment\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1904
    :cond_4e
    const/4 v2, 0x3

    aget-boolean v2, p0, v2

    if-eqz v2, :cond_67

    .line 1905
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  Data_Encipherment\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1907
    :cond_67
    const/4 v2, 0x4

    aget-boolean v2, p0, v2

    if-eqz v2, :cond_80

    .line 1908
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  Key_Agreement\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1910
    :cond_80
    const/4 v2, 0x5

    aget-boolean v2, p0, v2

    if-eqz v2, :cond_99

    .line 1911
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  Key_CertSign\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1913
    :cond_99
    const/4 v2, 0x6

    aget-boolean v2, p0, v2

    if-eqz v2, :cond_b2

    .line 1914
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  Crl_Sign\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1916
    :cond_b2
    const/4 v2, 0x7

    aget-boolean v2, p0, v2

    if-eqz v2, :cond_cb

    .line 1917
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  Encipher_Only\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1919
    :cond_cb
    const/16 v2, 0x8

    aget-boolean v2, p0, v2

    if-eqz v2, :cond_e5

    .line 1920
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  Decipher_Only\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_e4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_e4} :catch_fa

    move-result-object v1

    .line 1924
    :cond_e5
    :goto_e5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1926
    return-object v1

    .line 1922
    :catch_fa
    move-exception v0

    .local v0, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_e5
.end method

.method static makeGeneralNameInterface(ILjava/lang/Object;)Lsun/security/x509/GeneralNameInterface;
    .registers 7
    .param p0, "type"    # I
    .param p1, "name"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 901
    sget-object v2, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_24

    .line 902
    sget-object v2, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "X509CertSelector.makeGeneralNameInterface("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 903
    const-string/jumbo v4, ")..."

    .line 902
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 906
    :cond_24
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_b3

    .line 907
    sget-object v2, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_45

    .line 908
    sget-object v2, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "X509CertSelector.makeGeneralNameInterface() name is String: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 911
    :cond_45
    packed-switch p0, :pswitch_data_154

    .line 931
    :pswitch_48
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to parse String names of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 913
    :pswitch_62
    new-instance v0, Lsun/security/x509/RFC822Name;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "name":Ljava/lang/Object;
    invoke-direct {v0, p1}, Lsun/security/x509/RFC822Name;-><init>(Ljava/lang/String;)V

    .line 934
    .local v0, "result":Lsun/security/x509/GeneralNameInterface;
    :goto_69
    sget-object v2, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_8a

    .line 935
    sget-object v2, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "X509CertSelector.makeGeneralNameInterface() result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 936
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 935
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 988
    :cond_8a
    :goto_8a
    return-object v0

    .line 916
    .end local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    .restart local p1    # "name":Ljava/lang/Object;
    :pswitch_8b
    new-instance v0, Lsun/security/x509/DNSName;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "name":Ljava/lang/Object;
    invoke-direct {v0, p1}, Lsun/security/x509/DNSName;-><init>(Ljava/lang/String;)V

    .line 917
    .restart local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    goto :goto_69

    .line 919
    .end local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    .restart local p1    # "name":Ljava/lang/Object;
    :pswitch_93
    new-instance v0, Lsun/security/x509/X500Name;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "name":Ljava/lang/Object;
    invoke-direct {v0, p1}, Lsun/security/x509/X500Name;-><init>(Ljava/lang/String;)V

    .line 920
    .restart local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    goto :goto_69

    .line 922
    .end local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    .restart local p1    # "name":Ljava/lang/Object;
    :pswitch_9b
    new-instance v0, Lsun/security/x509/URIName;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "name":Ljava/lang/Object;
    invoke-direct {v0, p1}, Lsun/security/x509/URIName;-><init>(Ljava/lang/String;)V

    .line 923
    .restart local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    goto :goto_69

    .line 925
    .end local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    .restart local p1    # "name":Ljava/lang/Object;
    :pswitch_a3
    new-instance v0, Lsun/security/x509/IPAddressName;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "name":Ljava/lang/Object;
    invoke-direct {v0, p1}, Lsun/security/x509/IPAddressName;-><init>(Ljava/lang/String;)V

    .line 926
    .restart local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    goto :goto_69

    .line 928
    .end local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    .restart local p1    # "name":Ljava/lang/Object;
    :pswitch_ab
    new-instance v0, Lsun/security/x509/OIDName;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "name":Ljava/lang/Object;
    invoke-direct {v0, p1}, Lsun/security/x509/OIDName;-><init>(Ljava/lang/String;)V

    .line 929
    .restart local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    goto :goto_69

    .line 938
    .end local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    .restart local p1    # "name":Ljava/lang/Object;
    :cond_b3
    instance-of v2, p1, [B

    if-eqz v2, :cond_13f

    .line 939
    new-instance v1, Lsun/security/util/DerValue;

    check-cast p1, [B

    .end local p1    # "name":Ljava/lang/Object;
    invoke-direct {v1, p1}, Lsun/security/util/DerValue;-><init>([B)V

    .line 940
    .local v1, "val":Lsun/security/util/DerValue;
    sget-object v2, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_ca

    .line 941
    sget-object v2, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    .line 942
    const-string/jumbo v3, "X509CertSelector.makeGeneralNameInterface() is byte[]"

    .line 941
    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 945
    :cond_ca
    packed-switch p0, :pswitch_data_168

    .line 974
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to parse byte array names of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 947
    :pswitch_e7
    new-instance v0, Lsun/security/x509/OtherName;

    invoke-direct {v0, v1}, Lsun/security/x509/OtherName;-><init>(Lsun/security/util/DerValue;)V

    .line 977
    .restart local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    :goto_ec
    sget-object v2, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_8a

    .line 978
    sget-object v2, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "X509CertSelector.makeGeneralNameInterface() result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 979
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 978
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto/16 :goto_8a

    .line 950
    .end local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    :pswitch_10f
    new-instance v0, Lsun/security/x509/RFC822Name;

    invoke-direct {v0, v1}, Lsun/security/x509/RFC822Name;-><init>(Lsun/security/util/DerValue;)V

    .line 951
    .restart local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    goto :goto_ec

    .line 953
    .end local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    :pswitch_115
    new-instance v0, Lsun/security/x509/DNSName;

    invoke-direct {v0, v1}, Lsun/security/x509/DNSName;-><init>(Lsun/security/util/DerValue;)V

    .line 954
    .restart local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    goto :goto_ec

    .line 956
    .end local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    :pswitch_11b
    new-instance v0, Lsun/security/x509/X400Address;

    invoke-direct {v0, v1}, Lsun/security/x509/X400Address;-><init>(Lsun/security/util/DerValue;)V

    .line 957
    .restart local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    goto :goto_ec

    .line 959
    .end local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    :pswitch_121
    new-instance v0, Lsun/security/x509/X500Name;

    invoke-direct {v0, v1}, Lsun/security/x509/X500Name;-><init>(Lsun/security/util/DerValue;)V

    .line 960
    .restart local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    goto :goto_ec

    .line 962
    .end local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    :pswitch_127
    new-instance v0, Lsun/security/x509/EDIPartyName;

    invoke-direct {v0, v1}, Lsun/security/x509/EDIPartyName;-><init>(Lsun/security/util/DerValue;)V

    .line 963
    .restart local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    goto :goto_ec

    .line 965
    .end local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    :pswitch_12d
    new-instance v0, Lsun/security/x509/URIName;

    invoke-direct {v0, v1}, Lsun/security/x509/URIName;-><init>(Lsun/security/util/DerValue;)V

    .line 966
    .restart local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    goto :goto_ec

    .line 968
    .end local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    :pswitch_133
    new-instance v0, Lsun/security/x509/IPAddressName;

    invoke-direct {v0, v1}, Lsun/security/x509/IPAddressName;-><init>(Lsun/security/util/DerValue;)V

    .line 969
    .restart local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    goto :goto_ec

    .line 971
    .end local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    :pswitch_139
    new-instance v0, Lsun/security/x509/OIDName;

    invoke-direct {v0, v1}, Lsun/security/x509/OIDName;-><init>(Lsun/security/util/DerValue;)V

    .line 972
    .restart local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    goto :goto_ec

    .line 982
    .end local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    .end local v1    # "val":Lsun/security/util/DerValue;
    .restart local p1    # "name":Ljava/lang/Object;
    :cond_13f
    sget-object v2, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_14b

    .line 983
    sget-object v2, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v3, "X509CertSelector.makeGeneralName() input name not String or byte array"

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 986
    :cond_14b
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "name not String or byte array"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 911
    :pswitch_data_154
    .packed-switch 0x1
        :pswitch_62
        :pswitch_8b
        :pswitch_48
        :pswitch_93
        :pswitch_48
        :pswitch_9b
        :pswitch_a3
        :pswitch_ab
    .end packed-switch

    .line 945
    :pswitch_data_168
    .packed-switch 0x0
        :pswitch_e7
        :pswitch_10f
        :pswitch_115
        :pswitch_11b
        :pswitch_121
        :pswitch_127
        :pswitch_12d
        :pswitch_133
        :pswitch_139
    .end packed-switch
.end method

.method private matchAuthorityKeyID(Ljava/security/cert/X509Certificate;)Z
    .registers 9
    .param p1, "xcert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2136
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->authorityKeyID:[B

    if-nez v4, :cond_7

    .line 2137
    return v5

    .line 2140
    :cond_7
    :try_start_7
    const-string/jumbo v4, "2.5.29.35"

    invoke-virtual {p1, v4}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v2

    .line 2141
    .local v2, "extVal":[B
    if-nez v2, :cond_1d

    .line 2142
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_1c

    .line 2143
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "X509CertSelector.match: no authority key ID extension"

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2146
    :cond_1c
    return v6

    .line 2148
    :cond_1d
    new-instance v3, Lsun/security/util/DerInputStream;

    invoke-direct {v3, v2}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 2149
    .local v3, "in":Lsun/security/util/DerInputStream;
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getOctetString()[B

    move-result-object v0

    .line 2150
    .local v0, "certAuthKeyID":[B
    if-eqz v0, :cond_32

    .line 2151
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->authorityKeyID:[B

    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    .line 2150
    if-eqz v4, :cond_4d

    .line 2152
    :cond_32
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_3e

    .line 2153
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "X509CertSelector.match: authority key IDs don\'t match"

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_3e} :catch_3f

    .line 2156
    :cond_3e
    return v6

    .line 2158
    .end local v0    # "certAuthKeyID":[B
    .end local v2    # "extVal":[B
    .end local v3    # "in":Lsun/security/util/DerInputStream;
    :catch_3f
    move-exception v1

    .line 2159
    .local v1, "ex":Ljava/io/IOException;
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_4c

    .line 2160
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "X509CertSelector.match: exception in authority key ID check"

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2163
    :cond_4c
    return v6

    .line 2165
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v0    # "certAuthKeyID":[B
    .restart local v2    # "extVal":[B
    .restart local v3    # "in":Lsun/security/util/DerInputStream;
    :cond_4d
    return v5
.end method

.method private matchBasicConstraints(Ljava/security/cert/X509Certificate;)Z
    .registers 8
    .param p1, "xcert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 2564
    iget v1, p0, Ljava/security/cert/X509CertSelector;->basicConstraints:I

    if-ne v1, v3, :cond_8

    .line 2565
    return v5

    .line 2567
    :cond_8
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v0

    .line 2568
    .local v0, "maxPathLen":I
    iget v1, p0, Ljava/security/cert/X509CertSelector;->basicConstraints:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_20

    .line 2569
    if-eq v0, v3, :cond_56

    .line 2570
    sget-object v1, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_1f

    .line 2571
    sget-object v1, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v2, "X509CertSelector.match: not an EE cert"

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2573
    :cond_1f
    return v4

    .line 2576
    :cond_20
    iget v1, p0, Ljava/security/cert/X509CertSelector;->basicConstraints:I

    if-ge v0, v1, :cond_56

    .line 2577
    sget-object v1, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_55

    .line 2578
    sget-object v1, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "X509CertSelector.match: cert\'s maxPathLen is less than the min maxPathLen set by basicConstraints. ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2581
    const-string/jumbo v3, " < "

    .line 2578
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2581
    iget v3, p0, Ljava/security/cert/X509CertSelector;->basicConstraints:I

    .line 2578
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2581
    const-string/jumbo v3, ")"

    .line 2578
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2583
    :cond_55
    return v4

    .line 2586
    :cond_56
    return v5
.end method

.method private matchExcluded(Lsun/security/x509/GeneralSubtrees;)Z
    .registers 10
    .param p1, "excluded"    # Lsun/security/x509/GeneralSubtrees;

    .prologue
    .line 2496
    invoke-virtual {p1}, Lsun/security/x509/GeneralSubtrees;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralSubtree;>;"
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_63

    .line 2497
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/security/x509/GeneralSubtree;

    .line 2498
    .local v4, "tree":Lsun/security/x509/GeneralSubtree;
    invoke-virtual {v4}, Lsun/security/x509/GeneralSubtree;->getName()Lsun/security/x509/GeneralName;

    move-result-object v5

    invoke-virtual {v5}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v0

    .line 2499
    .local v0, "excludedName":Lsun/security/x509/GeneralNameInterface;
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2500
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralNameInterface;>;"
    :cond_1e
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2501
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/x509/GeneralNameInterface;

    .line 2502
    .local v2, "pathToName":Lsun/security/x509/GeneralNameInterface;
    invoke-interface {v0}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v5

    invoke-interface {v2}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v6

    if-ne v5, v6, :cond_1e

    .line 2503
    invoke-interface {v2, v0}, Lsun/security/x509/GeneralNameInterface;->constrains(Lsun/security/x509/GeneralNameInterface;)I

    move-result v5

    packed-switch v5, :pswitch_data_66

    :pswitch_3b
    goto :goto_1e

    .line 2506
    :pswitch_3c
    sget-object v5, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v5, :cond_61

    .line 2507
    sget-object v5, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v6, "X509CertSelector.match: name constraints inhibit path to specified name"

    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2509
    sget-object v5, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "X509CertSelector.match: excluded name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2512
    :cond_61
    const/4 v5, 0x0

    return v5

    .line 2518
    .end local v0    # "excludedName":Lsun/security/x509/GeneralNameInterface;
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralNameInterface;>;"
    .end local v2    # "pathToName":Lsun/security/x509/GeneralNameInterface;
    .end local v4    # "tree":Lsun/security/x509/GeneralSubtree;
    :cond_63
    const/4 v5, 0x1

    return v5

    .line 2503
    nop

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_3b
        :pswitch_3c
    .end packed-switch
.end method

.method private matchExtendedKeyUsage(Ljava/security/cert/X509Certificate;)Z
    .registers 8
    .param p1, "xcert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2282
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->keyPurposeSet:Ljava/util/Set;

    if-eqz v3, :cond_e

    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->keyPurposeSet:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 2283
    :cond_e
    return v4

    .line 2288
    :cond_f
    const/4 v3, 0x4

    .line 2287
    :try_start_10
    invoke-static {p1, v3}, Ljava/security/cert/X509CertSelector;->getExtensionObject(Ljava/security/cert/X509Certificate;I)Ljava/security/cert/Extension;

    move-result-object v2

    check-cast v2, Lsun/security/x509/ExtendedKeyUsageExtension;

    .line 2289
    .local v2, "ext":Lsun/security/x509/ExtendedKeyUsageExtension;
    if-eqz v2, :cond_4c

    .line 2291
    const-string/jumbo v3, "usages"

    invoke-virtual {v2, v3}, Lsun/security/x509/ExtendedKeyUsageExtension;->get(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    .line 2292
    .local v0, "certKeyPurposeVector":Ljava/util/Vector;, "Ljava/util/Vector<Lsun/security/util/ObjectIdentifier;>;"
    sget-object v3, Ljava/security/cert/X509CertSelector;->ANY_EXTENDED_KEY_USAGE:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4c

    .line 2293
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->keyPurposeOIDSet:Ljava/util/Set;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 2292
    if-eqz v3, :cond_4c

    .line 2294
    sget-object v3, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_3d

    .line 2295
    sget-object v3, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v4, "X509CertSelector.match: cert failed extendedKeyUsage criterion"

    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_3d} :catch_3e

    .line 2298
    :cond_3d
    return v5

    .line 2301
    .end local v0    # "certKeyPurposeVector":Ljava/util/Vector;, "Ljava/util/Vector<Lsun/security/util/ObjectIdentifier;>;"
    .end local v2    # "ext":Lsun/security/x509/ExtendedKeyUsageExtension;
    :catch_3e
    move-exception v1

    .line 2302
    .local v1, "ex":Ljava/io/IOException;
    sget-object v3, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_4b

    .line 2303
    sget-object v3, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v4, "X509CertSelector.match: IOException in extended key usage check"

    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2306
    :cond_4b
    return v5

    .line 2308
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v2    # "ext":Lsun/security/x509/ExtendedKeyUsageExtension;
    :cond_4c
    return v4
.end method

.method private matchKeyUsage(Ljava/security/cert/X509Certificate;)Z
    .registers 6
    .param p1, "xcert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v3, 0x1

    .line 2261
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    if-nez v2, :cond_6

    .line 2262
    return v3

    .line 2264
    :cond_6
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    .line 2265
    .local v0, "certKeyUsage":[Z
    if-eqz v0, :cond_32

    .line 2266
    const/4 v1, 0x0

    .local v1, "keyBit":I
    :goto_d
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    array-length v2, v2

    if-ge v1, v2, :cond_32

    .line 2267
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_2f

    .line 2268
    array-length v2, v0

    if-ge v1, v2, :cond_21

    aget-boolean v2, v0, v1

    xor-int/lit8 v2, v2, 0x1

    .line 2267
    if-eqz v2, :cond_2f

    .line 2269
    :cond_21
    sget-object v2, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_2d

    .line 2270
    sget-object v2, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v3, "X509CertSelector.match: key usage bits don\'t match"

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2273
    :cond_2d
    const/4 v2, 0x0

    return v2

    .line 2266
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 2277
    .end local v1    # "keyBit":I
    :cond_32
    return v3
.end method

.method private matchNameConstraints(Ljava/security/cert/X509Certificate;)Z
    .registers 6
    .param p1, "xcert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2360
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->nc:Lsun/security/x509/NameConstraintsExtension;

    if-nez v1, :cond_7

    .line 2361
    return v2

    .line 2364
    :cond_7
    :try_start_7
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->nc:Lsun/security/x509/NameConstraintsExtension;

    invoke-virtual {v1, p1}, Lsun/security/x509/NameConstraintsExtension;->verify(Ljava/security/cert/X509Certificate;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 2365
    sget-object v1, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_1b

    .line 2366
    sget-object v1, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v2, "X509CertSelector.match: name constraints not satisfied"

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_1b} :catch_1c

    .line 2369
    :cond_1b
    return v3

    .line 2371
    :catch_1c
    move-exception v0

    .line 2372
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_29

    .line 2373
    sget-object v1, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v2, "X509CertSelector.match: IOException in name constraints check"

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2376
    :cond_29
    return v3

    .line 2378
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2a
    return v2
.end method

.method private matchPathToNames(Ljava/security/cert/X509Certificate;)Z
    .registers 12
    .param p1, "xcert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2448
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    if-nez v5, :cond_7

    .line 2449
    return v9

    .line 2453
    :cond_7
    const/4 v5, 0x2

    :try_start_8
    invoke-static {p1, v5}, Ljava/security/cert/X509CertSelector;->getExtensionObject(Ljava/security/cert/X509Certificate;I)Ljava/security/cert/Extension;

    move-result-object v2

    .line 2452
    check-cast v2, Lsun/security/x509/NameConstraintsExtension;

    .line 2454
    .local v2, "ext":Lsun/security/x509/NameConstraintsExtension;
    if-nez v2, :cond_11

    .line 2455
    return v9

    .line 2457
    :cond_11
    sget-object v5, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v5, :cond_65

    const-string/jumbo v5, "certpath"

    invoke-static {v5}, Lsun/security/util/Debug;->isOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_65

    .line 2458
    sget-object v5, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v6, "X509CertSelector.match pathToNames:\n"

    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2460
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2461
    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralNameInterface;>;"
    :goto_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_65

    .line 2462
    sget-object v5, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_56} :catch_57

    goto :goto_2c

    .line 2480
    .end local v2    # "ext":Lsun/security/x509/NameConstraintsExtension;
    .end local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralNameInterface;>;"
    :catch_57
    move-exception v0

    .line 2481
    .local v0, "ex":Ljava/io/IOException;
    sget-object v5, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v5, :cond_64

    .line 2482
    sget-object v5, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v6, "X509CertSelector.match: IOException in name constraints check"

    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2485
    :cond_64
    return v8

    .line 2467
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v2    # "ext":Lsun/security/x509/NameConstraintsExtension;
    :cond_65
    :try_start_65
    const-string/jumbo v5, "permitted_subtrees"

    invoke-virtual {v2, v5}, Lsun/security/x509/NameConstraintsExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralSubtrees;

    move-result-object v4

    .line 2469
    .local v4, "permitted":Lsun/security/x509/GeneralSubtrees;
    const-string/jumbo v5, "excluded_subtrees"

    invoke-virtual {v2, v5}, Lsun/security/x509/NameConstraintsExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralSubtrees;

    move-result-object v1

    .line 2470
    .local v1, "excluded":Lsun/security/x509/GeneralSubtrees;
    if-eqz v1, :cond_7c

    .line 2471
    invoke-direct {p0, v1}, Ljava/security/cert/X509CertSelector;->matchExcluded(Lsun/security/x509/GeneralSubtrees;)Z

    move-result v5

    if-nez v5, :cond_7c

    .line 2472
    return v8

    .line 2475
    :cond_7c
    if-eqz v4, :cond_85

    .line 2476
    invoke-direct {p0, v4}, Ljava/security/cert/X509CertSelector;->matchPermitted(Lsun/security/x509/GeneralSubtrees;)Z
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_81} :catch_57

    move-result v5

    if-nez v5, :cond_85

    .line 2477
    return v8

    .line 2487
    :cond_85
    return v9
.end method

.method private matchPermitted(Lsun/security/x509/GeneralSubtrees;)Z
    .registers 13
    .param p1, "permitted"    # Lsun/security/x509/GeneralSubtrees;

    .prologue
    .line 2528
    iget-object v8, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2529
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralNameInterface;>;"
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_92

    .line 2530
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/security/x509/GeneralNameInterface;

    .line 2531
    .local v3, "pathToName":Lsun/security/x509/GeneralNameInterface;
    invoke-virtual {p1}, Lsun/security/x509/GeneralSubtrees;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 2532
    .local v6, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralSubtree;>;"
    const/4 v5, 0x0

    .line 2533
    .local v5, "permittedNameFound":Z
    const/4 v1, 0x0

    .line 2534
    .local v1, "nameTypeFound":Z
    const-string/jumbo v2, ""

    .line 2535
    .local v2, "names":Ljava/lang/String;
    :cond_1b
    :goto_1b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_60

    xor-int/lit8 v8, v5, 0x1

    if-eqz v8, :cond_60

    .line 2536
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lsun/security/x509/GeneralSubtree;

    .line 2537
    .local v7, "tree":Lsun/security/x509/GeneralSubtree;
    invoke-virtual {v7}, Lsun/security/x509/GeneralSubtree;->getName()Lsun/security/x509/GeneralName;

    move-result-object v8

    invoke-virtual {v8}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v4

    .line 2538
    .local v4, "permittedName":Lsun/security/x509/GeneralNameInterface;
    invoke-interface {v4}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v8

    invoke-interface {v3}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v9

    if-ne v8, v9, :cond_1b

    .line 2539
    const/4 v1, 0x1

    .line 2540
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2541
    invoke-interface {v3, v4}, Lsun/security/x509/GeneralNameInterface;->constrains(Lsun/security/x509/GeneralNameInterface;)I

    move-result v8

    packed-switch v8, :pswitch_data_94

    :pswitch_5d
    goto :goto_1b

    .line 2544
    :pswitch_5e
    const/4 v5, 0x1

    .line 2545
    goto :goto_1b

    .line 2550
    .end local v4    # "permittedName":Lsun/security/x509/GeneralNameInterface;
    .end local v7    # "tree":Lsun/security/x509/GeneralSubtree;
    :cond_60
    if-nez v5, :cond_6

    if-eqz v1, :cond_6

    .line 2551
    sget-object v8, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v8, :cond_90

    .line 2552
    sget-object v8, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "X509CertSelector.match: name constraints inhibit path to specified name; permitted names of type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2554
    invoke-interface {v3}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v10

    .line 2552
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2555
    const-string/jumbo v10, ": "

    .line 2552
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2556
    :cond_90
    const/4 v8, 0x0

    return v8

    .line 2559
    .end local v1    # "nameTypeFound":Z
    .end local v2    # "names":Ljava/lang/String;
    .end local v3    # "pathToName":Lsun/security/x509/GeneralNameInterface;
    .end local v5    # "permittedNameFound":Z
    .end local v6    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralSubtree;>;"
    :cond_92
    const/4 v8, 0x1

    return v8

    .line 2541
    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_5e
        :pswitch_5d
        :pswitch_5e
    .end packed-switch
.end method

.method private matchPolicy(Ljava/security/cert/X509Certificate;)Z
    .registers 14
    .param p1, "xcert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 2383
    iget-object v9, p0, Ljava/security/cert/X509CertSelector;->policy:Lsun/security/x509/CertificatePolicySet;

    if-nez v9, :cond_7

    .line 2384
    return v10

    .line 2388
    :cond_7
    const/4 v9, 0x3

    :try_start_8
    invoke-static {p1, v9}, Ljava/security/cert/X509CertSelector;->getExtensionObject(Ljava/security/cert/X509Certificate;I)Ljava/security/cert/Extension;

    move-result-object v1

    .line 2387
    check-cast v1, Lsun/security/x509/CertificatePoliciesExtension;

    .line 2389
    .local v1, "ext":Lsun/security/x509/CertificatePoliciesExtension;
    if-nez v1, :cond_1d

    .line 2390
    sget-object v9, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v9, :cond_1c

    .line 2391
    sget-object v9, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v10, "X509CertSelector.match: no certificate policy extension"

    invoke-virtual {v9, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2394
    :cond_1c
    return v11

    .line 2396
    :cond_1d
    const-string/jumbo v9, "policies"

    invoke-virtual {v1, v9}, Lsun/security/x509/CertificatePoliciesExtension;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 2401
    .local v7, "policies":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/PolicyInformation;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 2402
    .local v8, "policyIDs":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/CertificatePolicyId;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "info$iterator":Ljava/util/Iterator;
    :goto_31
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_53

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsun/security/x509/PolicyInformation;

    .line 2403
    .local v5, "info":Lsun/security/x509/PolicyInformation;
    invoke-virtual {v5}, Lsun/security/x509/PolicyInformation;->getPolicyIdentifier()Lsun/security/x509/CertificatePolicyId;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_44} :catch_45

    goto :goto_31

    .line 2436
    .end local v1    # "ext":Lsun/security/x509/CertificatePoliciesExtension;
    .end local v5    # "info":Lsun/security/x509/PolicyInformation;
    .end local v6    # "info$iterator":Ljava/util/Iterator;
    .end local v7    # "policies":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/PolicyInformation;>;"
    .end local v8    # "policyIDs":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/CertificatePolicyId;>;"
    :catch_45
    move-exception v0

    .line 2437
    .local v0, "ex":Ljava/io/IOException;
    sget-object v9, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v9, :cond_52

    .line 2438
    sget-object v9, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v10, "X509CertSelector.match: IOException in certificate policy ID check"

    invoke-virtual {v9, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2441
    :cond_52
    return v11

    .line 2405
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v1    # "ext":Lsun/security/x509/CertificatePoliciesExtension;
    .restart local v6    # "info$iterator":Ljava/util/Iterator;
    .restart local v7    # "policies":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/PolicyInformation;>;"
    .restart local v8    # "policyIDs":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/CertificatePolicyId;>;"
    :cond_53
    :try_start_53
    iget-object v9, p0, Ljava/security/cert/X509CertSelector;->policy:Lsun/security/x509/CertificatePolicySet;

    if-eqz v9, :cond_a3

    .line 2406
    const/4 v2, 0x0

    .line 2412
    .local v2, "foundOne":Z
    iget-object v9, p0, Ljava/security/cert/X509CertSelector;->policy:Lsun/security/x509/CertificatePolicySet;

    invoke-virtual {v9}, Lsun/security/x509/CertificatePolicySet;->getCertPolicyIds()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_77

    .line 2413
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_a3

    .line 2414
    sget-object v9, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v9, :cond_76

    .line 2415
    sget-object v9, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v10, "X509CertSelector.match: cert failed policyAny criterion"

    invoke-virtual {v9, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2418
    :cond_76
    return v11

    .line 2421
    :cond_77
    iget-object v9, p0, Ljava/security/cert/X509CertSelector;->policy:Lsun/security/x509/CertificatePolicySet;

    invoke-virtual {v9}, Lsun/security/x509/CertificatePolicySet;->getCertPolicyIds()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "id$iterator":Ljava/util/Iterator;
    :cond_81
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_94

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/security/x509/CertificatePolicyId;

    .line 2422
    .local v3, "id":Lsun/security/x509/CertificatePolicyId;
    invoke-interface {v8, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_81

    .line 2423
    const/4 v2, 0x1

    .line 2427
    .end local v3    # "id":Lsun/security/x509/CertificatePolicyId;
    :cond_94
    if-nez v2, :cond_a3

    .line 2428
    sget-object v9, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v9, :cond_a2

    .line 2429
    sget-object v9, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v10, "X509CertSelector.match: cert failed policyAny criterion"

    invoke-virtual {v9, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_a2} :catch_45

    .line 2432
    :cond_a2
    return v11

    .line 2443
    .end local v2    # "foundOne":Z
    .end local v4    # "id$iterator":Ljava/util/Iterator;
    :cond_a3
    return v10
.end method

.method private matchPrivateKeyValid(Ljava/security/cert/X509Certificate;)Z
    .registers 15
    .param p1, "xcert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v10, 0x1

    const/4 v12, 0x0

    .line 2170
    iget-object v9, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    if-nez v9, :cond_7

    .line 2171
    return v10

    .line 2173
    :cond_7
    const/4 v5, 0x0

    .line 2176
    .local v5, "ext":Lsun/security/x509/PrivateKeyUsageExtension;
    const/4 v9, 0x0

    :try_start_9
    invoke-static {p1, v9}, Ljava/security/cert/X509CertSelector;->getExtensionObject(Ljava/security/cert/X509Certificate;I)Ljava/security/cert/Extension;

    move-result-object v9

    .line 2175
    move-object v0, v9

    check-cast v0, Lsun/security/x509/PrivateKeyUsageExtension;

    move-object v5, v0

    .line 2177
    .local v5, "ext":Lsun/security/x509/PrivateKeyUsageExtension;
    if-eqz v5, :cond_18

    .line 2178
    iget-object v9, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    invoke-virtual {v5, v9}, Lsun/security/x509/PrivateKeyUsageExtension;->valid(Ljava/util/Date;)V
    :try_end_18
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_9 .. :try_end_18} :catch_7e
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_9 .. :try_end_18} :catch_3f
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_18} :catch_19

    .line 2221
    :cond_18
    return v10

    .line 2212
    .end local v5    # "ext":Lsun/security/x509/PrivateKeyUsageExtension;
    :catch_19
    move-exception v3

    .line 2213
    .local v3, "e4":Ljava/io/IOException;
    sget-object v9, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v9, :cond_3e

    .line 2214
    sget-object v9, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "X509CertSelector.match: IOException in private key usage check; X509CertSelector: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2216
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2214
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2217
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 2219
    :cond_3e
    return v12

    .line 2196
    .end local v3    # "e4":Ljava/io/IOException;
    :catch_3f
    move-exception v2

    .line 2197
    .local v2, "e2":Ljava/security/cert/CertificateNotYetValidException;
    sget-object v9, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v9, :cond_7d

    .line 2198
    const-string/jumbo v8, "n/a"

    .line 2200
    .local v8, "time":Ljava/lang/String;
    :try_start_47
    const-string/jumbo v9, "not_before"

    invoke-virtual {v5, v9}, Lsun/security/x509/PrivateKeyUsageExtension;->get(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    .line 2201
    .local v7, "notBefore":Ljava/util/Date;
    invoke-virtual {v7}, Ljava/util/Date;->toString()Ljava/lang/String;
    :try_end_51
    .catch Ljava/security/cert/CertificateException; {:try_start_47 .. :try_end_51} :catch_bf

    move-result-object v8

    .line 2205
    .end local v7    # "notBefore":Ljava/util/Date;
    :goto_52
    sget-object v9, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "X509CertSelector.match: private key usage not within validity date; ext.NOT_BEFORE: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2207
    const-string/jumbo v11, "; X509CertSelector: "

    .line 2205
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2208
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2205
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2209
    invoke-virtual {v2}, Ljava/security/cert/CertificateNotYetValidException;->printStackTrace()V

    .line 2211
    .end local v8    # "time":Ljava/lang/String;
    :cond_7d
    return v12

    .line 2180
    .end local v2    # "e2":Ljava/security/cert/CertificateNotYetValidException;
    :catch_7e
    move-exception v1

    .line 2181
    .local v1, "e1":Ljava/security/cert/CertificateExpiredException;
    sget-object v9, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v9, :cond_bc

    .line 2182
    const-string/jumbo v8, "n/a"

    .line 2184
    .restart local v8    # "time":Ljava/lang/String;
    :try_start_86
    const-string/jumbo v9, "not_after"

    invoke-virtual {v5, v9}, Lsun/security/x509/PrivateKeyUsageExtension;->get(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    .line 2185
    .local v6, "notAfter":Ljava/util/Date;
    invoke-virtual {v6}, Ljava/util/Date;->toString()Ljava/lang/String;
    :try_end_90
    .catch Ljava/security/cert/CertificateException; {:try_start_86 .. :try_end_90} :catch_bd

    move-result-object v8

    .line 2189
    .end local v6    # "notAfter":Ljava/util/Date;
    :goto_91
    sget-object v9, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "X509CertSelector.match: private key usage not within validity date; ext.NOT_After: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2191
    const-string/jumbo v11, "; X509CertSelector: "

    .line 2189
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2192
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2189
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2193
    invoke-virtual {v1}, Ljava/security/cert/CertificateExpiredException;->printStackTrace()V

    .line 2195
    .end local v8    # "time":Ljava/lang/String;
    :cond_bc
    return v12

    .line 2186
    .restart local v8    # "time":Ljava/lang/String;
    :catch_bd
    move-exception v4

    .local v4, "ex":Ljava/security/cert/CertificateException;
    goto :goto_91

    .line 2202
    .end local v1    # "e1":Ljava/security/cert/CertificateExpiredException;
    .end local v4    # "ex":Ljava/security/cert/CertificateException;
    .restart local v2    # "e2":Ljava/security/cert/CertificateNotYetValidException;
    :catch_bf
    move-exception v4

    .restart local v4    # "ex":Ljava/security/cert/CertificateException;
    goto :goto_52
.end method

.method private matchSubjectAlternativeNames(Ljava/security/cert/X509Certificate;)Z
    .registers 14
    .param p1, "xcert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v9, 0x1

    const/4 v11, 0x0

    .line 2313
    iget-object v8, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    if-eqz v8, :cond_e

    iget-object v8, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 2314
    :cond_e
    return v9

    .line 2319
    :cond_f
    const/4 v8, 0x1

    .line 2318
    :try_start_10
    invoke-static {p1, v8}, Ljava/security/cert/X509CertSelector;->getExtensionObject(Ljava/security/cert/X509Certificate;I)Ljava/security/cert/Extension;

    move-result-object v6

    check-cast v6, Lsun/security/x509/SubjectAlternativeNameExtension;

    .line 2320
    .local v6, "sanExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    if-nez v6, :cond_25

    .line 2321
    sget-object v8, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v8, :cond_24

    .line 2322
    sget-object v8, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v9, "X509CertSelector.match: no subject alternative name extension"

    invoke-virtual {v8, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2325
    :cond_24
    return v11

    .line 2328
    :cond_25
    const-string/jumbo v8, "subject_name"

    invoke-virtual {v6, v8}, Lsun/security/x509/SubjectAlternativeNameExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralNames;

    move-result-object v1

    .line 2330
    .local v1, "certNames":Lsun/security/x509/GeneralNames;
    iget-object v8, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeGeneralNames:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 2331
    .local v4, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralNameInterface;>;"
    :cond_32
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_97

    .line 2332
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsun/security/x509/GeneralNameInterface;

    .line 2333
    .local v5, "matchName":Lsun/security/x509/GeneralNameInterface;
    const/4 v3, 0x0

    .line 2334
    .local v3, "found":Z
    invoke-virtual {v1}, Lsun/security/x509/GeneralNames;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 2335
    .end local v3    # "found":Z
    .local v7, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    :goto_43
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5c

    xor-int/lit8 v8, v3, 0x1

    .line 2334
    if-eqz v8, :cond_5c

    .line 2336
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lsun/security/x509/GeneralName;

    invoke-virtual {v8}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v0

    .line 2337
    .local v0, "certName":Lsun/security/x509/GeneralNameInterface;
    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    .local v3, "found":Z
    goto :goto_43

    .line 2339
    .end local v0    # "certName":Lsun/security/x509/GeneralNameInterface;
    .end local v3    # "found":Z
    :cond_5c
    if-nez v3, :cond_8f

    iget-boolean v8, p0, Ljava/security/cert/X509CertSelector;->matchAllSubjectAltNames:Z

    if-nez v8, :cond_6a

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_8f

    .line 2340
    :cond_6a
    sget-object v8, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v8, :cond_8e

    .line 2341
    sget-object v8, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "X509CertSelector.match: subject alternative name "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2342
    const-string/jumbo v10, " not found"

    .line 2341
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2344
    :cond_8e
    return v11

    .line 2345
    :cond_8f
    if-eqz v3, :cond_32

    iget-boolean v8, p0, Ljava/security/cert/X509CertSelector;->matchAllSubjectAltNames:Z
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_93} :catch_98

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_32

    .line 2355
    .end local v5    # "matchName":Lsun/security/x509/GeneralNameInterface;
    .end local v7    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    :cond_97
    return v9

    .line 2349
    .end local v1    # "certNames":Lsun/security/x509/GeneralNames;
    .end local v4    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralNameInterface;>;"
    .end local v6    # "sanExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    :catch_98
    move-exception v2

    .line 2350
    .local v2, "ex":Ljava/io/IOException;
    sget-object v8, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v8, :cond_a5

    .line 2351
    sget-object v8, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v9, "X509CertSelector.match: IOException in subject alternative name check"

    invoke-virtual {v8, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2353
    :cond_a5
    return v11
.end method

.method private matchSubjectKeyID(Ljava/security/cert/X509Certificate;)Z
    .registers 9
    .param p1, "xcert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2102
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->subjectKeyID:[B

    if-nez v4, :cond_7

    .line 2103
    return v5

    .line 2106
    :cond_7
    :try_start_7
    const-string/jumbo v4, "2.5.29.14"

    invoke-virtual {p1, v4}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v2

    .line 2107
    .local v2, "extVal":[B
    if-nez v2, :cond_1d

    .line 2108
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_1c

    .line 2109
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "X509CertSelector.match: no subject key ID extension"

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2112
    :cond_1c
    return v6

    .line 2114
    :cond_1d
    new-instance v3, Lsun/security/util/DerInputStream;

    invoke-direct {v3, v2}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 2115
    .local v3, "in":Lsun/security/util/DerInputStream;
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getOctetString()[B

    move-result-object v0

    .line 2116
    .local v0, "certSubjectKeyID":[B
    if-eqz v0, :cond_32

    .line 2117
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->subjectKeyID:[B

    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    .line 2116
    if-eqz v4, :cond_4d

    .line 2118
    :cond_32
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_3e

    .line 2119
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "X509CertSelector.match: subject key IDs don\'t match"

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_3e} :catch_3f

    .line 2122
    :cond_3e
    return v6

    .line 2124
    .end local v0    # "certSubjectKeyID":[B
    .end local v2    # "extVal":[B
    .end local v3    # "in":Lsun/security/util/DerInputStream;
    :catch_3f
    move-exception v1

    .line 2125
    .local v1, "ex":Ljava/io/IOException;
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_4c

    .line 2126
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "X509CertSelector.match: exception in subject key ID check"

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2129
    :cond_4c
    return v6

    .line 2131
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v0    # "certSubjectKeyID":[B
    .restart local v2    # "extVal":[B
    .restart local v3    # "in":Lsun/security/util/DerInputStream;
    :cond_4d
    return v5
.end method

.method private matchSubjectPublicKeyAlgID(Ljava/security/cert/X509Certificate;)Z
    .registers 11
    .param p1, "xcert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2226
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Lsun/security/util/ObjectIdentifier;

    if-nez v4, :cond_7

    .line 2227
    return v8

    .line 2230
    :cond_7
    :try_start_7
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    .line 2231
    .local v2, "encodedKey":[B
    new-instance v3, Lsun/security/util/DerValue;

    invoke-direct {v3, v2}, Lsun/security/util/DerValue;-><init>([B)V

    .line 2232
    .local v3, "val":Lsun/security/util/DerValue;
    iget-byte v4, v3, Lsun/security/util/DerValue;->tag:B

    const/16 v5, 0x30

    if-eq v4, v5, :cond_31

    .line 2233
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "invalid key format"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_23} :catch_23

    .line 2249
    .end local v2    # "encodedKey":[B
    .end local v3    # "val":Lsun/security/util/DerValue;
    :catch_23
    move-exception v1

    .line 2250
    .local v1, "e5":Ljava/io/IOException;
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_30

    .line 2251
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "X509CertSelector.match: IOException in subject public key algorithm OID check"

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2254
    :cond_30
    return v7

    .line 2236
    .end local v1    # "e5":Ljava/io/IOException;
    .restart local v2    # "encodedKey":[B
    .restart local v3    # "val":Lsun/security/util/DerValue;
    :cond_31
    :try_start_31
    iget-object v4, v3, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v4

    invoke-static {v4}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v0

    .line 2237
    .local v0, "algID":Lsun/security/x509/AlgorithmId;
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_69

    .line 2238
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "X509CertSelector.match: subjectPublicKeyAlgID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2239
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Lsun/security/util/ObjectIdentifier;

    .line 2238
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2239
    const-string/jumbo v6, ", xcert subjectPublicKeyAlgID = "

    .line 2238
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2240
    invoke-virtual {v0}, Lsun/security/x509/AlgorithmId;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v6

    .line 2238
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2242
    :cond_69
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/x509/AlgorithmId;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_82

    .line 2243
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_81

    .line 2244
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "X509CertSelector.match: subject public key alg IDs don\'t match"

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_81} :catch_23

    .line 2247
    :cond_81
    return v7

    .line 2256
    :cond_82
    return v8
.end method

.method private static parseNames(Ljava/util/Collection;)Ljava/util/Set;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;)",
            "Ljava/util/Set",
            "<",
            "Lsun/security/x509/GeneralNameInterface;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 849
    .local p0, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 850
    .local v0, "genNames":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/x509/GeneralNameInterface;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "nameList$iterator":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 851
    .local v1, "nameList":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_25

    .line 852
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "name list size not 2"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 854
    :cond_25
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 855
    .local v4, "o":Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/Integer;

    if-nez v5, :cond_37

    .line 856
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "expected an Integer"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 858
    :cond_37
    check-cast v4, Ljava/lang/Integer;

    .end local v4    # "o":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 859
    .local v3, "nameType":I
    const/4 v5, 0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 860
    .restart local v4    # "o":Ljava/lang/Object;
    invoke-static {v3, v4}, Ljava/security/cert/X509CertSelector;->makeGeneralNameInterface(ILjava/lang/Object;)Lsun/security/x509/GeneralNameInterface;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 863
    .end local v1    # "nameList":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v3    # "nameType":I
    .end local v4    # "o":Ljava/lang/Object;
    :cond_4a
    return-object v0
.end method


# virtual methods
.method public addPathToName(ILjava/lang/String;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1223
    invoke-direct {p0, p1, p2}, Ljava/security/cert/X509CertSelector;->addPathToNameInternal(ILjava/lang/Object;)V

    .line 1224
    return-void
.end method

.method public addPathToName(I[B)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "name"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1253
    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/security/cert/X509CertSelector;->addPathToNameInternal(ILjava/lang/Object;)V

    .line 1254
    return-void
.end method

.method public addSubjectAlternativeName(ILjava/lang/String;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 756
    invoke-direct {p0, p1, p2}, Ljava/security/cert/X509CertSelector;->addSubjectAlternativeNameInternal(ILjava/lang/Object;)V

    .line 757
    return-void
.end method

.method public addSubjectAlternativeName(I[B)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "name"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 801
    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/security/cert/X509CertSelector;->addSubjectAlternativeNameInternal(ILjava/lang/Object;)V

    .line 802
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 5

    .prologue
    .line 2606
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CertSelector;

    .line 2608
    .local v0, "copy":Ljava/security/cert/X509CertSelector;
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    if-eqz v2, :cond_1a

    .line 2610
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    invoke-static {v2}, Ljava/security/cert/X509CertSelector;->cloneSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 2609
    iput-object v2, v0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    .line 2612
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeGeneralNames:Ljava/util/Set;

    invoke-static {v2}, Ljava/security/cert/X509CertSelector;->cloneSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 2611
    iput-object v2, v0, Ljava/security/cert/X509CertSelector;->subjectAlternativeGeneralNames:Ljava/util/Set;

    .line 2614
    :cond_1a
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    if-eqz v2, :cond_2e

    .line 2615
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/Set;

    invoke-static {v2}, Ljava/security/cert/X509CertSelector;->cloneSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, v0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/Set;

    .line 2616
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    invoke-static {v2}, Ljava/security/cert/X509CertSelector;->cloneSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, v0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;
    :try_end_2e
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_2e} :catch_2f

    .line 2618
    :cond_2e
    return-object v0

    .line 2619
    .end local v0    # "copy":Ljava/security/cert/X509CertSelector;
    :catch_2f
    move-exception v1

    .line 2621
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getAuthorityKeyIdentifier()[B
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1458
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->authorityKeyID:[B

    if-nez v0, :cond_6

    .line 1459
    return-object v1

    .line 1461
    :cond_6
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->authorityKeyID:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getBasicConstraints()I
    .registers 2

    .prologue
    .line 1751
    iget v0, p0, Ljava/security/cert/X509CertSelector;->basicConstraints:I

    return v0
.end method

.method public getCertificate()Ljava/security/cert/X509Certificate;
    .registers 2

    .prologue
    .line 1291
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->x509Cert:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getCertificateValid()Ljava/util/Date;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1477
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    if-nez v0, :cond_6

    .line 1478
    return-object v1

    .line 1480
    :cond_6
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getExtendedKeyUsage()Ljava/util/Set;
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
    .line 1566
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->keyPurposeSet:Ljava/util/Set;

    return-object v0
.end method

.method public getIssuer()Ljavax/security/auth/x500/X500Principal;
    .registers 2

    .prologue
    .line 1319
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public getIssuerAsBytes()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1364
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v0

    goto :goto_5
.end method

.method public getIssuerAsString()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1341
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getKeyUsage()[Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1547
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    if-nez v0, :cond_6

    .line 1548
    return-object v1

    .line 1550
    :cond_6
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0
.end method

.method public getMatchAllSubjectAltNames()Z
    .registers 2

    .prologue
    .line 1586
    iget-boolean v0, p0, Ljava/security/cert/X509CertSelector;->matchAllSubjectAltNames:Z

    return v0
.end method

.method public getNameConstraints()[B
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1733
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->ncBytes:[B

    if-nez v0, :cond_6

    .line 1734
    return-object v1

    .line 1736
    :cond_6
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->ncBytes:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getPathToNames()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1802
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/Set;

    if-nez v0, :cond_6

    .line 1803
    return-object v1

    .line 1805
    :cond_6
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/Set;

    invoke-static {v0}, Ljava/security/cert/X509CertSelector;->cloneNames(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getPolicy()Ljava/util/Set;
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
    .line 1767
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->policySet:Ljava/util/Set;

    return-object v0
.end method

.method public getPrivateKeyValid()Ljava/util/Date;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1496
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    if-nez v0, :cond_6

    .line 1497
    return-object v1

    .line 1499
    :cond_6
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 1305
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->serialNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getSubject()Ljavax/security/auth/x500/X500Principal;
    .registers 2

    .prologue
    .line 1378
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public getSubjectAlternativeNames()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1623
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    if-nez v0, :cond_6

    .line 1624
    return-object v1

    .line 1626
    :cond_6
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    invoke-static {v0}, Ljava/security/cert/X509CertSelector;->cloneNames(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSubjectAsBytes()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1423
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v0

    goto :goto_5
.end method

.method public getSubjectAsString()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1400
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getSubjectKeyIdentifier()[B
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1439
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectKeyID:[B

    if-nez v0, :cond_6

    .line 1440
    return-object v1

    .line 1442
    :cond_6
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectKeyID:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getSubjectPublicKey()Ljava/security/PublicKey;
    .registers 2

    .prologue
    .line 1529
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public getSubjectPublicKeyAlgID()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1514
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Lsun/security/util/ObjectIdentifier;

    if-nez v0, :cond_6

    .line 1515
    return-object v1

    .line 1517
    :cond_6
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public match(Ljava/security/cert/Certificate;)Z
    .registers 11
    .param p1, "cert"    # Ljava/security/cert/Certificate;

    .prologue
    const/4 v8, 0x0

    .line 2001
    instance-of v4, p1, Ljava/security/cert/X509Certificate;

    if-nez v4, :cond_6

    .line 2002
    return v8

    :cond_6
    move-object v3, p1

    .line 2004
    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 2006
    .local v3, "xcert":Ljava/security/cert/X509Certificate;
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_55

    .line 2007
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "X509CertSelector.match(SN: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2008
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v6

    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 2007
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2008
    const-string/jumbo v6, "\n  Issuer: "

    .line 2007
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2009
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v6

    .line 2007
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2009
    const-string/jumbo v6, "\n  Subject: "

    .line 2007
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2009
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v6

    .line 2007
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2010
    const-string/jumbo v6, ")"

    .line 2007
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2014
    :cond_55
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->x509Cert:Ljava/security/cert/X509Certificate;

    if-eqz v4, :cond_6e

    .line 2015
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->x509Cert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v4, v3}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6e

    .line 2016
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_6d

    .line 2017
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "X509CertSelector.match: certs don\'t match"

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2020
    :cond_6d
    return v8

    .line 2025
    :cond_6e
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->serialNumber:Ljava/math/BigInteger;

    if-eqz v4, :cond_8b

    .line 2026
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->serialNumber:Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8b

    .line 2027
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_8a

    .line 2028
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "X509CertSelector.match: serial numbers don\'t match"

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2031
    :cond_8a
    return v8

    .line 2036
    :cond_8b
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    if-eqz v4, :cond_a8

    .line 2037
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a8

    .line 2038
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_a7

    .line 2039
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "X509CertSelector.match: issuer DNs don\'t match"

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2042
    :cond_a7
    return v8

    .line 2047
    :cond_a8
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    if-eqz v4, :cond_c5

    .line 2048
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c5

    .line 2049
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_c4

    .line 2050
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "X509CertSelector.match: subject DNs don\'t match"

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2053
    :cond_c4
    return v8

    .line 2058
    :cond_c5
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    if-eqz v4, :cond_ce

    .line 2060
    :try_start_c9
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_ce
    .catch Ljava/security/cert/CertificateException; {:try_start_c9 .. :try_end_ce} :catch_ef

    .line 2071
    :cond_ce
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyBytes:[B

    if-eqz v4, :cond_fd

    .line 2072
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    .line 2073
    .local v0, "certKey":[B
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyBytes:[B

    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_fd

    .line 2074
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_ee

    .line 2075
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "X509CertSelector.match: subject public keys don\'t match"

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2078
    :cond_ee
    return v8

    .line 2061
    .end local v0    # "certKey":[B
    :catch_ef
    move-exception v1

    .line 2062
    .local v1, "e":Ljava/security/cert/CertificateException;
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_fc

    .line 2063
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "X509CertSelector.match: certificate not within validity period"

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2066
    :cond_fc
    return v8

    .line 2082
    .end local v1    # "e":Ljava/security/cert/CertificateException;
    :cond_fd
    invoke-direct {p0, v3}, Ljava/security/cert/X509CertSelector;->matchBasicConstraints(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    if-eqz v4, :cond_14c

    .line 2083
    invoke-direct {p0, v3}, Ljava/security/cert/X509CertSelector;->matchKeyUsage(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    .line 2082
    if-eqz v4, :cond_14c

    .line 2084
    invoke-direct {p0, v3}, Ljava/security/cert/X509CertSelector;->matchExtendedKeyUsage(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    .line 2082
    if-eqz v4, :cond_14c

    .line 2085
    invoke-direct {p0, v3}, Ljava/security/cert/X509CertSelector;->matchSubjectKeyID(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    .line 2082
    if-eqz v4, :cond_14c

    .line 2086
    invoke-direct {p0, v3}, Ljava/security/cert/X509CertSelector;->matchAuthorityKeyID(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    .line 2082
    if-eqz v4, :cond_14c

    .line 2087
    invoke-direct {p0, v3}, Ljava/security/cert/X509CertSelector;->matchPrivateKeyValid(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    .line 2082
    if-eqz v4, :cond_14c

    .line 2088
    invoke-direct {p0, v3}, Ljava/security/cert/X509CertSelector;->matchSubjectPublicKeyAlgID(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    .line 2082
    if-eqz v4, :cond_14c

    .line 2089
    invoke-direct {p0, v3}, Ljava/security/cert/X509CertSelector;->matchPolicy(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    .line 2082
    if-eqz v4, :cond_14c

    .line 2090
    invoke-direct {p0, v3}, Ljava/security/cert/X509CertSelector;->matchSubjectAlternativeNames(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    .line 2082
    if-eqz v4, :cond_14c

    .line 2091
    invoke-direct {p0, v3}, Ljava/security/cert/X509CertSelector;->matchPathToNames(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    .line 2082
    if-eqz v4, :cond_14c

    .line 2092
    invoke-direct {p0, v3}, Ljava/security/cert/X509CertSelector;->matchNameConstraints(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    .line 2094
    :goto_13d
    if-eqz v2, :cond_14b

    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_14b

    .line 2095
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "X509CertSelector.match returning: true"

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2097
    :cond_14b
    return v2

    .line 2082
    :cond_14c
    const/4 v2, 0x0

    .local v2, "result":Z
    goto :goto_13d
.end method

.method public setAuthorityKeyIdentifier([B)V
    .registers 3
    .param p1, "authorityKeyID"    # [B

    .prologue
    const/4 v0, 0x0

    .line 443
    if-nez p1, :cond_6

    .line 444
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->authorityKeyID:[B

    .line 448
    :goto_5
    return-void

    .line 446
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->authorityKeyID:[B

    goto :goto_5
.end method

.method public setBasicConstraints(I)V
    .registers 4
    .param p1, "minMaxPathLen"    # I

    .prologue
    .line 1067
    const/4 v0, -0x2

    if-ge p1, v0, :cond_c

    .line 1068
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "basic constraints less than -2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1070
    :cond_c
    iput p1, p0, Ljava/security/cert/X509CertSelector;->basicConstraints:I

    .line 1071
    return-void
.end method

.method public setCertificate(Ljava/security/cert/X509Certificate;)V
    .registers 2
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 176
    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->x509Cert:Ljava/security/cert/X509Certificate;

    .line 177
    return-void
.end method

.method public setCertificateValid(Ljava/util/Date;)V
    .registers 3
    .param p1, "certValid"    # Ljava/util/Date;

    .prologue
    const/4 v0, 0x0

    .line 463
    if-nez p1, :cond_6

    .line 464
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    .line 468
    :goto_5
    return-void

    .line 466
    :cond_6
    invoke-virtual {p1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    goto :goto_5
.end method

.method public setExtendedKeyUsage(Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "keyPurposeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 618
    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 619
    :cond_9
    iput-object v3, p0, Ljava/security/cert/X509CertSelector;->keyPurposeSet:Ljava/util/Set;

    .line 620
    iput-object v3, p0, Ljava/security/cert/X509CertSelector;->keyPurposeOIDSet:Ljava/util/Set;

    .line 629
    :cond_d
    return-void

    .line 623
    :cond_e
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 622
    iput-object v2, p0, Ljava/security/cert/X509CertSelector;->keyPurposeSet:Ljava/util/Set;

    .line 624
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Ljava/security/cert/X509CertSelector;->keyPurposeOIDSet:Ljava/util/Set;

    .line 625
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->keyPurposeSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "s$iterator":Ljava/util/Iterator;
    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 626
    .local v0, "s":Ljava/lang/String;
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->keyPurposeOIDSet:Ljava/util/Set;

    new-instance v3, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v3, v0}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_26
.end method

.method public setIssuer(Ljava/lang/String;)V
    .registers 3
    .param p1, "issuerDN"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 228
    if-nez p1, :cond_6

    .line 229
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    .line 233
    :goto_5
    return-void

    .line 231
    :cond_6
    new-instance v0, Lsun/security/x509/X500Name;

    invoke-direct {v0, p1}, Lsun/security/x509/X500Name;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lsun/security/x509/X500Name;->asX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    goto :goto_5
.end method

.method public setIssuer(Ljavax/security/auth/x500/X500Principal;)V
    .registers 2
    .param p1, "issuer"    # Ljavax/security/auth/x500/X500Principal;

    .prologue
    .line 204
    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    .line 205
    return-void
.end method

.method public setIssuer([B)V
    .registers 5
    .param p1, "issuerDN"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 279
    if-nez p1, :cond_6

    :goto_3
    :try_start_3
    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    .line 283
    return-void

    .line 279
    :cond_6
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v1, p1}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_b} :catch_c

    goto :goto_3

    .line 280
    :catch_c
    move-exception v0

    .line 281
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Invalid name"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setKeyUsage([Z)V
    .registers 3
    .param p1, "keyUsage"    # [Z

    .prologue
    const/4 v0, 0x0

    .line 591
    if-nez p1, :cond_6

    .line 592
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    .line 596
    :goto_5
    return-void

    .line 594
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    goto :goto_5
.end method

.method public setMatchAllSubjectAltNames(Z)V
    .registers 2
    .param p1, "matchAllNames"    # Z

    .prologue
    .line 648
    iput-boolean p1, p0, Ljava/security/cert/X509CertSelector;->matchAllSubjectAltNames:Z

    .line 649
    return-void
.end method

.method public setNameConstraints([B)V
    .registers 4
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1041
    if-nez p1, :cond_8

    .line 1042
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->ncBytes:[B

    .line 1043
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->nc:Lsun/security/x509/NameConstraintsExtension;

    .line 1048
    :goto_7
    return-void

    .line 1045
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->ncBytes:[B

    .line 1046
    new-instance v0, Lsun/security/x509/NameConstraintsExtension;

    sget-object v1, Ljava/security/cert/X509CertSelector;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, p1}, Lsun/security/x509/NameConstraintsExtension;-><init>(Ljava/lang/Boolean;Ljava/lang/Object;)V

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->nc:Lsun/security/x509/NameConstraintsExtension;

    goto :goto_7
.end method

.method public setPathToNames(Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    const/4 v2, 0x0

    .line 1170
    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1171
    :cond_9
    iput-object v2, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/Set;

    .line 1172
    iput-object v2, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    .line 1179
    :goto_d
    return-void

    .line 1174
    :cond_e
    invoke-static {p1}, Ljava/security/cert/X509CertSelector;->cloneAndCheckNames(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    .line 1175
    .local v0, "tempNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/List<*>;>;"
    invoke-static {v0}, Ljava/security/cert/X509CertSelector;->parseNames(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    .line 1177
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/Set;

    goto :goto_d
.end method

.method setPathToNamesInternal(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lsun/security/x509/GeneralNameInterface;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1185
    .local p1, "names":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/x509/GeneralNameInterface;>;"
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/Set;

    .line 1186
    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    .line 1187
    return-void
.end method

.method public setPolicy(Ljava/util/Set;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "certPolicySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 1094
    if-nez p1, :cond_8

    .line 1095
    iput-object v4, p0, Ljava/security/cert/X509CertSelector;->policySet:Ljava/util/Set;

    .line 1096
    iput-object v4, p0, Ljava/security/cert/X509CertSelector;->policy:Lsun/security/x509/CertificatePolicySet;

    .line 1116
    :goto_7
    return-void

    .line 1100
    :cond_8
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1099
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .line 1102
    .local v3, "tempSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1103
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 1104
    .local v2, "polIdVector":Ljava/util/Vector;, "Ljava/util/Vector<Lsun/security/x509/CertificatePolicyId;>;"
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_41

    .line 1105
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1106
    .local v1, "o":Ljava/lang/Object;
    instance-of v4, v1, Ljava/lang/String;

    if-nez v4, :cond_31

    .line 1107
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "non String in certPolicySet"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1109
    :cond_31
    new-instance v4, Lsun/security/x509/CertificatePolicyId;

    new-instance v5, Lsun/security/util/ObjectIdentifier;

    .line 1110
    check-cast v1, Ljava/lang/String;

    .line 1109
    .end local v1    # "o":Ljava/lang/Object;
    invoke-direct {v5, v1}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lsun/security/x509/CertificatePolicyId;-><init>(Lsun/security/util/ObjectIdentifier;)V

    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 1113
    :cond_41
    iput-object v3, p0, Ljava/security/cert/X509CertSelector;->policySet:Ljava/util/Set;

    .line 1114
    new-instance v4, Lsun/security/x509/CertificatePolicySet;

    invoke-direct {v4, v2}, Lsun/security/x509/CertificatePolicySet;-><init>(Ljava/util/Vector;)V

    iput-object v4, p0, Ljava/security/cert/X509CertSelector;->policy:Lsun/security/x509/CertificatePolicySet;

    goto :goto_7
.end method

.method public setPrivateKeyValid(Ljava/util/Date;)V
    .registers 3
    .param p1, "privateKeyValid"    # Ljava/util/Date;

    .prologue
    const/4 v0, 0x0

    .line 484
    if-nez p1, :cond_6

    .line 485
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    .line 489
    :goto_5
    return-void

    .line 487
    :cond_6
    invoke-virtual {p1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    goto :goto_5
.end method

.method public setSerialNumber(Ljava/math/BigInteger;)V
    .registers 2
    .param p1, "serial"    # Ljava/math/BigInteger;

    .prologue
    .line 190
    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->serialNumber:Ljava/math/BigInteger;

    .line 191
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .registers 3
    .param p1, "subjectDN"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 319
    if-nez p1, :cond_6

    .line 320
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    .line 324
    :goto_5
    return-void

    .line 322
    :cond_6
    new-instance v0, Lsun/security/x509/X500Name;

    invoke-direct {v0, p1}, Lsun/security/x509/X500Name;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lsun/security/x509/X500Name;->asX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    goto :goto_5
.end method

.method public setSubject(Ljavax/security/auth/x500/X500Principal;)V
    .registers 2
    .param p1, "subject"    # Ljavax/security/auth/x500/X500Principal;

    .prologue
    .line 296
    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    .line 297
    return-void
.end method

.method public setSubject([B)V
    .registers 5
    .param p1, "subjectDN"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 343
    if-nez p1, :cond_6

    :goto_3
    :try_start_3
    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    .line 347
    return-void

    .line 343
    :cond_6
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v1, p1}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_b} :catch_c

    goto :goto_3

    .line 344
    :catch_c
    move-exception v0

    .line 345
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Invalid name"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setSubjectAlternativeNames(Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    const/4 v2, 0x0

    .line 700
    if-nez p1, :cond_8

    .line 701
    iput-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    .line 702
    iput-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeGeneralNames:Ljava/util/Set;

    .line 714
    :goto_7
    return-void

    .line 704
    :cond_8
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 705
    iput-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    .line 706
    iput-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeGeneralNames:Ljava/util/Set;

    .line 707
    return-void

    .line 709
    :cond_13
    invoke-static {p1}, Ljava/security/cert/X509CertSelector;->cloneAndCheckNames(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    .line 711
    .local v0, "tempNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/List<*>;>;"
    invoke-static {v0}, Ljava/security/cert/X509CertSelector;->parseNames(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeGeneralNames:Ljava/util/Set;

    .line 712
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    goto :goto_7
.end method

.method public setSubjectKeyIdentifier([B)V
    .registers 3
    .param p1, "subjectKeyID"    # [B

    .prologue
    const/4 v0, 0x0

    .line 382
    if-nez p1, :cond_6

    .line 383
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectKeyID:[B

    .line 387
    :goto_5
    return-void

    .line 385
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectKeyID:[B

    goto :goto_5
.end method

.method public setSubjectPublicKey(Ljava/security/PublicKey;)V
    .registers 3
    .param p1, "key"    # Ljava/security/PublicKey;

    .prologue
    const/4 v0, 0x0

    .line 523
    if-nez p1, :cond_8

    .line 524
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:Ljava/security/PublicKey;

    .line 525
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyBytes:[B

    .line 530
    :goto_7
    return-void

    .line 527
    :cond_8
    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:Ljava/security/PublicKey;

    .line 528
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyBytes:[B

    goto :goto_7
.end method

.method public setSubjectPublicKey([B)V
    .registers 4
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 566
    if-nez p1, :cond_8

    .line 567
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:Ljava/security/PublicKey;

    .line 568
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyBytes:[B

    .line 573
    :goto_7
    return-void

    .line 570
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyBytes:[B

    .line 571
    new-instance v0, Lsun/security/util/DerValue;

    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyBytes:[B

    invoke-direct {v0, v1}, Lsun/security/util/DerValue;-><init>([B)V

    invoke-static {v0}, Lsun/security/x509/X509Key;->parse(Lsun/security/util/DerValue;)Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:Ljava/security/PublicKey;

    goto :goto_7
.end method

.method public setSubjectPublicKeyAlgID(Ljava/lang/String;)V
    .registers 3
    .param p1, "oid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 507
    if-nez p1, :cond_6

    .line 508
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Lsun/security/util/ObjectIdentifier;

    .line 512
    :goto_5
    return-void

    .line 510
    :cond_6
    new-instance v0, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, p1}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Lsun/security/util/ObjectIdentifier;

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .prologue
    .line 1815
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 1816
    .local v4, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v5, "X509CertSelector: [\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1817
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->x509Cert:Ljava/security/cert/X509Certificate;

    if-eqz v5, :cond_33

    .line 1818
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  Certificate: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->x509Cert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1820
    :cond_33
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->serialNumber:Ljava/math/BigInteger;

    if-eqz v5, :cond_5b

    .line 1821
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  Serial Number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->serialNumber:Ljava/math/BigInteger;

    invoke-virtual {v6}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1823
    :cond_5b
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    if-eqz v5, :cond_81

    .line 1824
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  Issuer: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getIssuerAsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1826
    :cond_81
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    if-eqz v5, :cond_a7

    .line 1827
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  Subject: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getSubjectAsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1829
    :cond_a7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  matchAllSubjectAltNames flag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1830
    iget-boolean v6, p0, Ljava/security/cert/X509CertSelector;->matchAllSubjectAltNames:Z

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    .line 1829
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1830
    const-string/jumbo v6, "\n"

    .line 1829
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1831
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    if-eqz v5, :cond_11b

    .line 1832
    const-string/jumbo v5, "  SubjectAlternativeNames:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1833
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1834
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<*>;>;"
    :goto_db
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11b

    .line 1835
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1836
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "    type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1837
    const-string/jumbo v6, ", name "

    .line 1836
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1837
    const/4 v6, 0x1

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 1836
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1837
    const-string/jumbo v6, "\n"

    .line 1836
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_db

    .line 1840
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<*>;>;"
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_11b
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->subjectKeyID:[B

    if-eqz v5, :cond_148

    .line 1841
    new-instance v0, Lsun/misc/HexDumpEncoder;

    invoke-direct {v0}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 1842
    .local v0, "enc":Lsun/misc/HexDumpEncoder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  Subject Key Identifier: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1843
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->subjectKeyID:[B

    invoke-virtual {v0, v6}, Lsun/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v6

    .line 1842
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1843
    const-string/jumbo v6, "\n"

    .line 1842
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1845
    .end local v0    # "enc":Lsun/misc/HexDumpEncoder;
    :cond_148
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->authorityKeyID:[B

    if-eqz v5, :cond_175

    .line 1846
    new-instance v0, Lsun/misc/HexDumpEncoder;

    invoke-direct {v0}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 1847
    .restart local v0    # "enc":Lsun/misc/HexDumpEncoder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  Authority Key Identifier: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1848
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->authorityKeyID:[B

    invoke-virtual {v0, v6}, Lsun/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v6

    .line 1847
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1848
    const-string/jumbo v6, "\n"

    .line 1847
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1850
    .end local v0    # "enc":Lsun/misc/HexDumpEncoder;
    :cond_175
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    if-eqz v5, :cond_19d

    .line 1851
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  Certificate Valid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1852
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1851
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1852
    const-string/jumbo v6, "\n"

    .line 1851
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1854
    :cond_19d
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    if-eqz v5, :cond_1c5

    .line 1855
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  Private Key Valid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1856
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1855
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1856
    const-string/jumbo v6, "\n"

    .line 1855
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1858
    :cond_1c5
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Lsun/security/util/ObjectIdentifier;

    if-eqz v5, :cond_1ed

    .line 1859
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  Subject Public Key AlgID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1860
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v6}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1859
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1860
    const-string/jumbo v6, "\n"

    .line 1859
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1862
    :cond_1ed
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:Ljava/security/PublicKey;

    if-eqz v5, :cond_215

    .line 1863
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  Subject Public Key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1864
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:Ljava/security/PublicKey;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1863
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1864
    const-string/jumbo v6, "\n"

    .line 1863
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1866
    :cond_215
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    if-eqz v5, :cond_23d

    .line 1867
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  Key Usage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    invoke-static {v6}, Ljava/security/cert/X509CertSelector;->keyUsageToString([Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1869
    :cond_23d
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->keyPurposeSet:Ljava/util/Set;

    if-eqz v5, :cond_265

    .line 1870
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  Extended Key Usage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1871
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->keyPurposeSet:Ljava/util/Set;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1870
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1871
    const-string/jumbo v6, "\n"

    .line 1870
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1873
    :cond_265
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->policy:Lsun/security/x509/CertificatePolicySet;

    if-eqz v5, :cond_28d

    .line 1874
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  Policy: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->policy:Lsun/security/x509/CertificatePolicySet;

    invoke-virtual {v6}, Lsun/security/x509/CertificatePolicySet;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1876
    :cond_28d
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    if-eqz v5, :cond_2c6

    .line 1877
    const-string/jumbo v5, "  Path to names:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1878
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1879
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralNameInterface;>;"
    :goto_29d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2c6

    .line 1880
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_29d

    .line 1883
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralNameInterface;>;"
    :cond_2c6
    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1884
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
