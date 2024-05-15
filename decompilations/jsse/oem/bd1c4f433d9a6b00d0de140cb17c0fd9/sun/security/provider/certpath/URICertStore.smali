.class Lsun/security/provider/certpath/URICertStore;
.super Ljava/security/cert/CertStoreSpi;
.source "URICertStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/provider/certpath/URICertStore$UCS;,
        Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0xb9

.field private static final CHECK_INTERVAL:I = 0x7530

.field private static final CRL_CONNECT_TIMEOUT:I

.field private static final DEFAULT_CRL_CONNECT_TIMEOUT:I = 0x3a98

.field private static final certStoreCache:Lsun/security/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsun/security/util/Cache",
            "<",
            "Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;",
            "Ljava/security/cert/CertStore;",
            ">;"
        }
    .end annotation
.end field

.field private static final debug:Lsun/security/util/Debug;


# instance fields
.field private certs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private crl:Ljava/security/cert/X509CRL;

.field private final factory:Ljava/security/cert/CertificateFactory;

.field private lastChecked:J

.field private lastModified:J

.field private ldap:Z

.field private ldapCertStore:Ljava/security/cert/CertStore;

.field private ldapHelper:Lsun/security/provider/certpath/CertStoreHelper;

.field private ldapPath:Ljava/lang/String;

.field private uri:Ljava/net/URI;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 91
    const-string/jumbo v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    .line 134
    invoke-static {}, Lsun/security/provider/certpath/URICertStore;->initializeTimeout()I

    move-result v0

    sput v0, Lsun/security/provider/certpath/URICertStore;->CRL_CONNECT_TIMEOUT:I

    .line 188
    const/16 v0, 0xb9

    invoke-static {v0}, Lsun/security/util/Cache;->newSoftMemoryCache(I)Lsun/security/util/Cache;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/URICertStore;->certStoreCache:Lsun/security/util/Cache;

    .line 89
    return-void
.end method

.method constructor <init>(Ljava/security/cert/CertStoreParameters;)V
    .registers 7
    .param p1, "params"    # Ljava/security/cert/CertStoreParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 159
    invoke-direct {p0, p1}, Ljava/security/cert/CertStoreSpi;-><init>(Ljava/security/cert/CertStoreParameters;)V

    .line 104
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lsun/security/provider/certpath/URICertStore;->certs:Ljava/util/Collection;

    .line 120
    iput-boolean v3, p0, Lsun/security/provider/certpath/URICertStore;->ldap:Z

    .line 160
    instance-of v1, p1, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;

    if-nez v1, :cond_1a

    .line 161
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    .line 162
    const-string/jumbo v2, "params must be instanceof URICertStoreParameters"

    .line 161
    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 164
    :cond_1a
    check-cast p1, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;

    .end local p1    # "params":Ljava/security/cert/CertStoreParameters;
    invoke-static {p1}, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;->-get0(Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;)Ljava/net/URI;

    move-result-object v1

    iput-object v1, p0, Lsun/security/provider/certpath/URICertStore;->uri:Ljava/net/URI;

    .line 166
    iget-object v1, p0, Lsun/security/provider/certpath/URICertStore;->uri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ldap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 167
    iput-boolean v4, p0, Lsun/security/provider/certpath/URICertStore;->ldap:Z

    .line 168
    const-string/jumbo v1, "LDAP"

    invoke-static {v1}, Lsun/security/provider/certpath/CertStoreHelper;->getInstance(Ljava/lang/String;)Lsun/security/provider/certpath/CertStoreHelper;

    move-result-object v1

    iput-object v1, p0, Lsun/security/provider/certpath/URICertStore;->ldapHelper:Lsun/security/provider/certpath/CertStoreHelper;

    .line 169
    iget-object v1, p0, Lsun/security/provider/certpath/URICertStore;->ldapHelper:Lsun/security/provider/certpath/CertStoreHelper;

    iget-object v2, p0, Lsun/security/provider/certpath/URICertStore;->uri:Ljava/net/URI;

    invoke-virtual {v1, v2}, Lsun/security/provider/certpath/CertStoreHelper;->getCertStore(Ljava/net/URI;)Ljava/security/cert/CertStore;

    move-result-object v1

    iput-object v1, p0, Lsun/security/provider/certpath/URICertStore;->ldapCertStore:Ljava/security/cert/CertStore;

    .line 170
    iget-object v1, p0, Lsun/security/provider/certpath/URICertStore;->uri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsun/security/provider/certpath/URICertStore;->ldapPath:Ljava/lang/String;

    .line 172
    iget-object v1, p0, Lsun/security/provider/certpath/URICertStore;->ldapPath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_66

    .line 173
    iget-object v1, p0, Lsun/security/provider/certpath/URICertStore;->ldapPath:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsun/security/provider/certpath/URICertStore;->ldapPath:Ljava/lang/String;

    .line 177
    :cond_66
    :try_start_66
    const-string/jumbo v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    iput-object v1, p0, Lsun/security/provider/certpath/URICertStore;->factory:Ljava/security/cert/CertificateFactory;
    :try_end_6f
    .catch Ljava/security/cert/CertificateException; {:try_start_66 .. :try_end_6f} :catch_70

    .line 181
    return-void

    .line 178
    :catch_70
    move-exception v0

    .line 179
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1
.end method

.method static declared-synchronized getInstance(Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;)Ljava/security/cert/CertStore;
    .registers 6
    .param p0, "params"    # Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    const-class v2, Lsun/security/provider/certpath/URICertStore;

    monitor-enter v2

    .line 191
    :try_start_3
    sget-object v1, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_24

    .line 192
    sget-object v1, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CertStore URI:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;->-get0(Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;)Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 194
    :cond_24
    sget-object v1, Lsun/security/provider/certpath/URICertStore;->certStoreCache:Lsun/security/util/Cache;

    invoke-virtual {v1, p0}, Lsun/security/util/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/CertStore;

    .line 195
    .local v0, "ucs":Ljava/security/cert/CertStore;
    if-nez v0, :cond_43

    .line 196
    new-instance v0, Lsun/security/provider/certpath/URICertStore$UCS;

    .end local v0    # "ucs":Ljava/security/cert/CertStore;
    new-instance v1, Lsun/security/provider/certpath/URICertStore;

    invoke-direct {v1, p0}, Lsun/security/provider/certpath/URICertStore;-><init>(Ljava/security/cert/CertStoreParameters;)V

    const-string/jumbo v3, "URI"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v3, p0}, Lsun/security/provider/certpath/URICertStore$UCS;-><init>(Ljava/security/cert/CertStoreSpi;Ljava/security/Provider;Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)V

    .line 197
    .restart local v0    # "ucs":Ljava/security/cert/CertStore;
    sget-object v1, Lsun/security/provider/certpath/URICertStore;->certStoreCache:Lsun/security/util/Cache;

    invoke-virtual {v1, p0, v0}, Lsun/security/util/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_50

    :cond_41
    :goto_41
    monitor-exit v2

    .line 203
    return-object v0

    .line 199
    :cond_43
    :try_start_43
    sget-object v1, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_41

    .line 200
    sget-object v1, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    const-string/jumbo v3, "URICertStore.getInstance: cache hit"

    invoke-virtual {v1, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_4f
    .catchall {:try_start_43 .. :try_end_4f} :catchall_50

    goto :goto_41

    .end local v0    # "ucs":Ljava/security/cert/CertStore;
    :catchall_50
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static getInstance(Lsun/security/x509/AccessDescription;)Ljava/security/cert/CertStore;
    .registers 8
    .param p0, "ad"    # Lsun/security/x509/AccessDescription;

    .prologue
    const/4 v6, 0x0

    .line 211
    invoke-virtual {p0}, Lsun/security/x509/AccessDescription;->getAccessMethod()Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    .line 212
    sget-object v4, Lsun/security/x509/AccessDescription;->Ad_CAISSUERS_Id:Lsun/security/util/ObjectIdentifier;

    .line 211
    invoke-virtual {v3, v4}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 213
    return-object v6

    .line 215
    :cond_e
    invoke-virtual {p0}, Lsun/security/x509/AccessDescription;->getAccessLocation()Lsun/security/x509/GeneralName;

    move-result-object v3

    invoke-virtual {v3}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v1

    .line 216
    .local v1, "gn":Lsun/security/x509/GeneralNameInterface;
    instance-of v3, v1, Lsun/security/x509/URIName;

    if-nez v3, :cond_1b

    .line 217
    return-object v6

    .line 219
    :cond_1b
    check-cast v1, Lsun/security/x509/URIName;

    .end local v1    # "gn":Lsun/security/x509/GeneralNameInterface;
    invoke-virtual {v1}, Lsun/security/x509/URIName;->getURI()Ljava/net/URI;

    move-result-object v2

    .line 222
    .local v2, "uri":Ljava/net/URI;
    :try_start_21
    new-instance v3, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;

    invoke-direct {v3, v2}, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;-><init>(Ljava/net/URI;)V

    .line 221
    invoke-static {v3}, Lsun/security/provider/certpath/URICertStore;->getInstance(Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;)Ljava/security/cert/CertStore;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_29} :catch_2b

    move-result-object v3

    return-object v3

    .line 223
    :catch_2b
    move-exception v0

    .line 224
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v3, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_4c

    .line 225
    sget-object v3, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "exception creating CertStore: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 228
    :cond_4c
    return-object v6
.end method

.method private static getMatchingCRLs(Ljava/security/cert/X509CRL;Ljava/security/cert/CRLSelector;)Ljava/util/Collection;
    .registers 3
    .param p0, "crl"    # Ljava/security/cert/X509CRL;
    .param p1, "selector"    # Ljava/security/cert/CRLSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509CRL;",
            "Ljava/security/cert/CRLSelector;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509CRL;",
            ">;"
        }
    .end annotation

    .prologue
    .line 441
    if-eqz p1, :cond_a

    if-eqz p0, :cond_f

    invoke-interface {p1, p0}, Ljava/security/cert/CRLSelector;->match(Ljava/security/cert/CRL;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 442
    :cond_a
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 444
    :cond_f
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static getMatchingCerts(Ljava/util/Collection;Ljava/security/cert/CertSelector;)Ljava/util/Collection;
    .registers 6
    .param p1, "selector"    # Ljava/security/cert/CertSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/security/cert/CertSelector;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 330
    .local p0, "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    if-nez p1, :cond_3

    .line 331
    return-object p0

    .line 333
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 334
    .local v2, "matchedCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cert$iterator":Ljava/util/Iterator;
    :cond_10
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 335
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface {p1, v0}, Ljava/security/cert/CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 336
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 339
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    :cond_26
    return-object v2
.end method

.method private static initializeTimeout()I
    .registers 3

    .prologue
    .line 143
    new-instance v1, Lsun/security/action/GetIntegerAction;

    const-string/jumbo v2, "com.sun.security.crl.timeout"

    invoke-direct {v1, v2}, Lsun/security/action/GetIntegerAction;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 144
    .local v0, "tmp":Ljava/lang/Integer;
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_19

    .line 145
    :cond_16
    const/16 v1, 0x3a98

    return v1

    .line 149
    :cond_19
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    return v1
.end method


# virtual methods
.method public declared-synchronized engineGetCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;
    .registers 23
    .param p1, "selector"    # Ljava/security/cert/CRLSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/CRLSelector;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 361
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lsun/security/provider/certpath/URICertStore;->ldap:Z

    if-eqz v15, :cond_40

    .line 362
    move-object/from16 v0, p1

    check-cast v0, Ljava/security/cert/X509CRLSelector;

    move-object v14, v0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_31

    .line 364
    .local v14, "xsel":Ljava/security/cert/X509CRLSelector;
    :try_start_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lsun/security/provider/certpath/URICertStore;->ldapHelper:Lsun/security/provider/certpath/CertStoreHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/provider/certpath/URICertStore;->ldapPath:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v15, v14, v0, v1}, Lsun/security/provider/certpath/CertStoreHelper;->wrap(Ljava/security/cert/X509CRLSelector;Ljava/util/Collection;Ljava/lang/String;)Ljava/security/cert/X509CRLSelector;
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1f} :catch_2a
    .catchall {:try_start_c .. :try_end_1f} :catchall_31

    move-result-object v14

    .line 372
    :try_start_20
    move-object/from16 v0, p0

    iget-object v15, v0, Lsun/security/provider/certpath/URICertStore;->ldapCertStore:Ljava/security/cert/CertStore;

    invoke-virtual {v15, v14}, Ljava/security/cert/CertStore;->getCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;
    :try_end_27
    .catch Ljava/security/cert/CertStoreException; {:try_start_20 .. :try_end_27} :catch_34
    .catchall {:try_start_20 .. :try_end_27} :catchall_31

    move-result-object v15

    monitor-exit p0

    return-object v15

    .line 365
    :catch_2a
    move-exception v9

    .line 366
    .local v9, "ioe":Ljava/io/IOException;
    :try_start_2b
    new-instance v15, Ljava/security/cert/CertStoreException;

    invoke-direct {v15, v9}, Ljava/security/cert/CertStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v15
    :try_end_31
    .catchall {:try_start_2b .. :try_end_31} :catchall_31

    .end local v9    # "ioe":Ljava/io/IOException;
    .end local v14    # "xsel":Ljava/security/cert/X509CRLSelector;
    :catchall_31
    move-exception v15

    monitor-exit p0

    throw v15

    .line 373
    .restart local v14    # "xsel":Ljava/security/cert/X509CRLSelector;
    :catch_34
    move-exception v5

    .line 374
    .local v5, "cse":Ljava/security/cert/CertStoreException;
    :try_start_35
    new-instance v15, Lsun/security/provider/certpath/PKIX$CertStoreTypeException;

    const-string/jumbo v16, "LDAP"

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v5}, Lsun/security/provider/certpath/PKIX$CertStoreTypeException;-><init>(Ljava/lang/String;Ljava/security/cert/CertStoreException;)V

    throw v15

    .line 381
    .end local v5    # "cse":Ljava/security/cert/CertStoreException;
    .end local v14    # "xsel":Ljava/security/cert/X509CRLSelector;
    :cond_40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 382
    .local v12, "time":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lsun/security/provider/certpath/URICertStore;->lastChecked:J

    move-wide/from16 v16, v0

    sub-long v16, v12, v16

    const-wide/16 v18, 0x7530

    cmp-long v15, v16, v18

    if-gez v15, :cond_6a

    .line 383
    sget-object v15, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    if-eqz v15, :cond_5e

    .line 384
    sget-object v15, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    const-string/jumbo v16, "Returning CRL from cache"

    invoke-virtual/range {v15 .. v16}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 386
    :cond_5e
    move-object/from16 v0, p0

    iget-object v15, v0, Lsun/security/provider/certpath/URICertStore;->crl:Ljava/security/cert/X509CRL;

    move-object/from16 v0, p1

    invoke-static {v15, v0}, Lsun/security/provider/certpath/URICertStore;->getMatchingCRLs(Ljava/security/cert/X509CRL;Ljava/security/cert/CRLSelector;)Ljava/util/Collection;
    :try_end_67
    .catchall {:try_start_35 .. :try_end_67} :catchall_31

    move-result-object v15

    monitor-exit p0

    return-object v15

    .line 388
    :cond_6a
    :try_start_6a
    move-object/from16 v0, p0

    iput-wide v12, v0, Lsun/security/provider/certpath/URICertStore;->lastChecked:J
    :try_end_6e
    .catchall {:try_start_6a .. :try_end_6e} :catchall_31

    .line 390
    :try_start_6e
    move-object/from16 v0, p0

    iget-object v15, v0, Lsun/security/provider/certpath/URICertStore;->uri:Ljava/net/URI;

    invoke-virtual {v15}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v15

    invoke-virtual {v15}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    .line 391
    .local v4, "connection":Ljava/net/URLConnection;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lsun/security/provider/certpath/URICertStore;->lastModified:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-eqz v15, :cond_91

    .line 392
    move-object/from16 v0, p0

    iget-wide v0, v0, Lsun/security/provider/certpath/URICertStore;->lastModified:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/net/URLConnection;->setIfModifiedSince(J)V

    .line 394
    :cond_91
    move-object/from16 v0, p0

    iget-wide v10, v0, Lsun/security/provider/certpath/URICertStore;->lastModified:J

    .line 395
    .local v10, "oldLastModified":J
    sget v15, Lsun/security/provider/certpath/URICertStore;->CRL_CONNECT_TIMEOUT:I

    invoke-virtual {v4, v15}, Ljava/net/URLConnection;->setConnectTimeout(I)V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_9a} :catch_db
    .catch Ljava/security/cert/CRLException; {:try_start_6e .. :try_end_9a} :catch_db
    .catchall {:try_start_6e .. :try_end_9a} :catchall_31

    .line 396
    const/16 v16, 0x0

    const/4 v8, 0x0

    .local v8, "in":Ljava/io/InputStream;
    :try_start_9d
    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 397
    .local v8, "in":Ljava/io/InputStream;
    invoke-virtual {v4}, Ljava/net/URLConnection;->getLastModified()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lsun/security/provider/certpath/URICertStore;->lastModified:J

    .line 398
    const-wide/16 v18, 0x0

    cmp-long v15, v10, v18

    if-eqz v15, :cond_142

    .line 399
    move-object/from16 v0, p0

    iget-wide v0, v0, Lsun/security/provider/certpath/URICertStore;->lastModified:J

    move-wide/from16 v18, v0

    cmp-long v15, v10, v18

    if-nez v15, :cond_10c

    .line 400
    sget-object v15, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    if-eqz v15, :cond_c9

    .line 401
    sget-object v15, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    const-string/jumbo v17, "Not modified, using cached copy"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 403
    :cond_c9
    move-object/from16 v0, p0

    iget-object v15, v0, Lsun/security/provider/certpath/URICertStore;->crl:Ljava/security/cert/X509CRL;

    move-object/from16 v0, p1

    invoke-static {v15, v0}, Lsun/security/provider/certpath/URICertStore;->getMatchingCRLs(Ljava/security/cert/X509CRL;Ljava/security/cert/CRLSelector;)Ljava/util/Collection;
    :try_end_d2
    .catch Ljava/lang/Throwable; {:try_start_9d .. :try_end_d2} :catch_168
    .catchall {:try_start_9d .. :try_end_d2} :catchall_196

    move-result-object v15

    .line 420
    if-eqz v8, :cond_d8

    :try_start_d5
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_d8
    .catch Ljava/lang/Throwable; {:try_start_d5 .. :try_end_d8} :catch_108
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_d8} :catch_db
    .catch Ljava/security/cert/CRLException; {:try_start_d5 .. :try_end_d8} :catch_db
    .catchall {:try_start_d5 .. :try_end_d8} :catchall_31

    :cond_d8
    :goto_d8
    if-eqz v16, :cond_10a

    :try_start_da
    throw v16
    :try_end_db
    .catch Ljava/io/IOException; {:try_start_da .. :try_end_db} :catch_db
    .catch Ljava/security/cert/CRLException; {:try_start_da .. :try_end_db} :catch_db
    .catchall {:try_start_da .. :try_end_db} :catchall_31

    .line 422
    .end local v4    # "connection":Ljava/net/URLConnection;
    .end local v8    # "in":Ljava/io/InputStream;
    .end local v10    # "oldLastModified":J
    :catch_db
    move-exception v6

    .line 423
    .local v6, "e":Ljava/lang/Exception;
    :try_start_dc
    sget-object v15, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    if-eqz v15, :cond_eb

    .line 424
    sget-object v15, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    const-string/jumbo v16, "Exception fetching CRL:"

    invoke-virtual/range {v15 .. v16}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 425
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 428
    :cond_eb
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lsun/security/provider/certpath/URICertStore;->lastModified:J

    .line 429
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lsun/security/provider/certpath/URICertStore;->crl:Ljava/security/cert/X509CRL;

    .line 430
    new-instance v15, Lsun/security/provider/certpath/PKIX$CertStoreTypeException;

    const-string/jumbo v16, "URI"

    .line 431
    new-instance v17, Ljava/security/cert/CertStoreException;

    move-object/from16 v0, v17

    invoke-direct {v0, v6}, Ljava/security/cert/CertStoreException;-><init>(Ljava/lang/Throwable;)V

    .line 430
    invoke-direct/range {v15 .. v17}, Lsun/security/provider/certpath/PKIX$CertStoreTypeException;-><init>(Ljava/lang/String;Ljava/security/cert/CertStoreException;)V

    throw v15
    :try_end_108
    .catchall {:try_start_dc .. :try_end_108} :catchall_31

    .line 420
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v4    # "connection":Ljava/net/URLConnection;
    .restart local v8    # "in":Ljava/io/InputStream;
    .restart local v10    # "oldLastModified":J
    :catch_108
    move-exception v16

    goto :goto_d8

    :cond_10a
    monitor-exit p0

    .line 403
    return-object v15

    .line 404
    :cond_10c
    :try_start_10c
    instance-of v15, v4, Ljava/net/HttpURLConnection;

    if-eqz v15, :cond_142

    .line 406
    move-object v0, v4

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v7, v0

    .line 407
    .local v7, "hconn":Ljava/net/HttpURLConnection;
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v15

    .line 408
    const/16 v17, 0x130

    .line 407
    move/from16 v0, v17

    if-ne v15, v0, :cond_142

    .line 409
    sget-object v15, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    if-eqz v15, :cond_12c

    .line 410
    sget-object v15, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    const-string/jumbo v17, "Not modified, using cached copy"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 412
    :cond_12c
    move-object/from16 v0, p0

    iget-object v15, v0, Lsun/security/provider/certpath/URICertStore;->crl:Ljava/security/cert/X509CRL;

    move-object/from16 v0, p1

    invoke-static {v15, v0}, Lsun/security/provider/certpath/URICertStore;->getMatchingCRLs(Ljava/security/cert/X509CRL;Ljava/security/cert/CRLSelector;)Ljava/util/Collection;
    :try_end_135
    .catch Ljava/lang/Throwable; {:try_start_10c .. :try_end_135} :catch_168
    .catchall {:try_start_10c .. :try_end_135} :catchall_196

    move-result-object v15

    .line 420
    if-eqz v8, :cond_13b

    :try_start_138
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_13b
    .catch Ljava/lang/Throwable; {:try_start_138 .. :try_end_13b} :catch_13e
    .catch Ljava/io/IOException; {:try_start_138 .. :try_end_13b} :catch_db
    .catch Ljava/security/cert/CRLException; {:try_start_138 .. :try_end_13b} :catch_db
    .catchall {:try_start_138 .. :try_end_13b} :catchall_31

    :cond_13b
    :goto_13b
    if-eqz v16, :cond_140

    :try_start_13d
    throw v16
    :try_end_13e
    .catch Ljava/io/IOException; {:try_start_13d .. :try_end_13e} :catch_db
    .catch Ljava/security/cert/CRLException; {:try_start_13d .. :try_end_13e} :catch_db
    .catchall {:try_start_13d .. :try_end_13e} :catchall_31

    :catch_13e
    move-exception v16

    goto :goto_13b

    :cond_140
    monitor-exit p0

    .line 412
    return-object v15

    .line 416
    .end local v7    # "hconn":Ljava/net/HttpURLConnection;
    :cond_142
    :try_start_142
    sget-object v15, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    if-eqz v15, :cond_150

    .line 417
    sget-object v15, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    const-string/jumbo v17, "Downloading new CRL..."

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 419
    :cond_150
    move-object/from16 v0, p0

    iget-object v15, v0, Lsun/security/provider/certpath/URICertStore;->factory:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v15, v8}, Ljava/security/cert/CertificateFactory;->generateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v15

    check-cast v15, Ljava/security/cert/X509CRL;

    move-object/from16 v0, p0

    iput-object v15, v0, Lsun/security/provider/certpath/URICertStore;->crl:Ljava/security/cert/X509CRL;
    :try_end_15e
    .catch Ljava/lang/Throwable; {:try_start_142 .. :try_end_15e} :catch_168
    .catchall {:try_start_142 .. :try_end_15e} :catchall_196

    .line 420
    if-eqz v8, :cond_163

    :try_start_160
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_163
    .catch Ljava/lang/Throwable; {:try_start_160 .. :try_end_163} :catch_166
    .catch Ljava/io/IOException; {:try_start_160 .. :try_end_163} :catch_db
    .catch Ljava/security/cert/CRLException; {:try_start_160 .. :try_end_163} :catch_db
    .catchall {:try_start_160 .. :try_end_163} :catchall_31

    :cond_163
    :goto_163
    if-eqz v16, :cond_18a

    :try_start_165
    throw v16
    :try_end_166
    .catch Ljava/io/IOException; {:try_start_165 .. :try_end_166} :catch_db
    .catch Ljava/security/cert/CRLException; {:try_start_165 .. :try_end_166} :catch_db
    .catchall {:try_start_165 .. :try_end_166} :catchall_31

    :catch_166
    move-exception v16

    goto :goto_163

    .end local v8    # "in":Ljava/io/InputStream;
    :catch_168
    move-exception v15

    :try_start_169
    throw v15
    :try_end_16a
    .catchall {:try_start_169 .. :try_end_16a} :catchall_16a

    :catchall_16a
    move-exception v16

    move-object/from16 v20, v16

    move-object/from16 v16, v15

    move-object/from16 v15, v20

    :goto_171
    if-eqz v8, :cond_176

    :try_start_173
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_176
    .catch Ljava/lang/Throwable; {:try_start_173 .. :try_end_176} :catch_179
    .catch Ljava/io/IOException; {:try_start_173 .. :try_end_176} :catch_db
    .catch Ljava/security/cert/CRLException; {:try_start_173 .. :try_end_176} :catch_db
    .catchall {:try_start_173 .. :try_end_176} :catchall_31

    :cond_176
    :goto_176
    if-eqz v16, :cond_189

    :try_start_178
    throw v16

    :catch_179
    move-exception v17

    if-nez v16, :cond_17f

    move-object/from16 v16, v17

    goto :goto_176

    :cond_17f
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_176

    invoke-virtual/range {v16 .. v17}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_176

    :cond_189
    throw v15

    .line 421
    .restart local v8    # "in":Ljava/io/InputStream;
    :cond_18a
    move-object/from16 v0, p0

    iget-object v15, v0, Lsun/security/provider/certpath/URICertStore;->crl:Ljava/security/cert/X509CRL;

    move-object/from16 v0, p1

    invoke-static {v15, v0}, Lsun/security/provider/certpath/URICertStore;->getMatchingCRLs(Ljava/security/cert/X509CRL;Ljava/security/cert/CRLSelector;)Ljava/util/Collection;
    :try_end_193
    .catch Ljava/io/IOException; {:try_start_178 .. :try_end_193} :catch_db
    .catch Ljava/security/cert/CRLException; {:try_start_178 .. :try_end_193} :catch_db
    .catchall {:try_start_178 .. :try_end_193} :catchall_31

    move-result-object v15

    monitor-exit p0

    return-object v15

    .line 420
    .end local v8    # "in":Ljava/io/InputStream;
    :catchall_196
    move-exception v15

    goto :goto_171
.end method

.method public declared-synchronized engineGetCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;
    .registers 19
    .param p1, "selector"    # Ljava/security/cert/CertSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/CertSelector;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 251
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lsun/security/provider/certpath/URICertStore;->ldap:Z

    if-eqz v12, :cond_30

    .line 252
    move-object/from16 v0, p1

    check-cast v0, Ljava/security/cert/X509CertSelector;

    move-object v7, v0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_2d

    .line 254
    .local v7, "xsel":Ljava/security/cert/X509CertSelector;
    :try_start_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/provider/certpath/URICertStore;->ldapHelper:Lsun/security/provider/certpath/CertStoreHelper;

    invoke-virtual {v7}, Ljava/security/cert/X509CertSelector;->getSubject()Ljavax/security/auth/x500/X500Principal;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/security/provider/certpath/URICertStore;->ldapPath:Ljava/lang/String;

    invoke-virtual {v12, v7, v13, v14}, Lsun/security/provider/certpath/CertStoreHelper;->wrap(Ljava/security/cert/X509CertSelector;Ljavax/security/auth/x500/X500Principal;Ljava/lang/String;)Ljava/security/cert/X509CertSelector;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1b} :catch_26
    .catchall {:try_start_c .. :try_end_1b} :catchall_2d

    move-result-object v7

    .line 262
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/provider/certpath/URICertStore;->ldapCertStore:Ljava/security/cert/CertStore;

    invoke-virtual {v12, v7}, Ljava/security/cert/CertStore;->getCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_2d

    move-result-object v12

    monitor-exit p0

    .line 261
    return-object v12

    .line 255
    :catch_26
    move-exception v6

    .line 256
    .local v6, "ioe":Ljava/io/IOException;
    :try_start_27
    new-instance v12, Ljava/security/cert/CertStoreException;

    invoke-direct {v12, v6}, Ljava/security/cert/CertStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v12
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_2d

    .end local v6    # "ioe":Ljava/io/IOException;
    .end local v7    # "xsel":Ljava/security/cert/X509CertSelector;
    :catchall_2d
    move-exception v12

    monitor-exit p0

    throw v12

    .line 268
    :cond_30
    :try_start_30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 269
    .local v10, "time":J
    move-object/from16 v0, p0

    iget-wide v12, v0, Lsun/security/provider/certpath/URICertStore;->lastChecked:J

    sub-long v12, v10, v12

    const-wide/16 v14, 0x7530

    cmp-long v12, v12, v14

    if-gez v12, :cond_58

    .line 270
    sget-object v12, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    if-eqz v12, :cond_4c

    .line 271
    sget-object v12, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    const-string/jumbo v13, "Returning certificates from cache"

    invoke-virtual {v12, v13}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 273
    :cond_4c
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/provider/certpath/URICertStore;->certs:Ljava/util/Collection;

    move-object/from16 v0, p1

    invoke-static {v12, v0}, Lsun/security/provider/certpath/URICertStore;->getMatchingCerts(Ljava/util/Collection;Ljava/security/cert/CertSelector;)Ljava/util/Collection;
    :try_end_55
    .catchall {:try_start_30 .. :try_end_55} :catchall_2d

    move-result-object v12

    monitor-exit p0

    return-object v12

    .line 275
    :cond_58
    :try_start_58
    move-object/from16 v0, p0

    iput-wide v10, v0, Lsun/security/provider/certpath/URICertStore;->lastChecked:J
    :try_end_5c
    .catchall {:try_start_58 .. :try_end_5c} :catchall_2d

    .line 277
    :try_start_5c
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/provider/certpath/URICertStore;->uri:Ljava/net/URI;

    invoke-virtual {v12}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v12

    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 278
    .local v2, "connection":Ljava/net/URLConnection;
    move-object/from16 v0, p0

    iget-wide v12, v0, Lsun/security/provider/certpath/URICertStore;->lastModified:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_79

    .line 279
    move-object/from16 v0, p0

    iget-wide v12, v0, Lsun/security/provider/certpath/URICertStore;->lastModified:J

    invoke-virtual {v2, v12, v13}, Ljava/net/URLConnection;->setIfModifiedSince(J)V

    .line 281
    :cond_79
    move-object/from16 v0, p0

    iget-wide v8, v0, Lsun/security/provider/certpath/URICertStore;->lastModified:J
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_7d} :catch_b7
    .catch Ljava/security/cert/CertificateException; {:try_start_5c .. :try_end_7d} :catch_b7
    .catchall {:try_start_5c .. :try_end_7d} :catchall_2d

    .line 282
    .local v8, "oldLastModified":J
    const/4 v13, 0x0

    const/4 v5, 0x0

    .local v5, "in":Ljava/io/InputStream;
    :try_start_7f
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 283
    .local v5, "in":Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/net/URLConnection;->getLastModified()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lsun/security/provider/certpath/URICertStore;->lastModified:J

    .line 284
    const-wide/16 v14, 0x0

    cmp-long v12, v8, v14

    if-eqz v12, :cond_111

    .line 285
    move-object/from16 v0, p0

    iget-wide v14, v0, Lsun/security/provider/certpath/URICertStore;->lastModified:J

    cmp-long v12, v8, v14

    if-nez v12, :cond_df

    .line 286
    sget-object v12, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    if-eqz v12, :cond_a5

    .line 287
    sget-object v12, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    const-string/jumbo v14, "Not modified, using cached copy"

    invoke-virtual {v12, v14}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 289
    :cond_a5
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/provider/certpath/URICertStore;->certs:Ljava/util/Collection;

    move-object/from16 v0, p1

    invoke-static {v12, v0}, Lsun/security/provider/certpath/URICertStore;->getMatchingCerts(Ljava/util/Collection;Ljava/security/cert/CertSelector;)Ljava/util/Collection;
    :try_end_ae
    .catch Ljava/lang/Throwable; {:try_start_7f .. :try_end_ae} :catch_133
    .catchall {:try_start_7f .. :try_end_ae} :catchall_15b

    move-result-object v12

    .line 308
    if-eqz v5, :cond_b4

    :try_start_b1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_b4
    .catch Ljava/lang/Throwable; {:try_start_b1 .. :try_end_b4} :catch_db
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_b4} :catch_b7
    .catch Ljava/security/cert/CertificateException; {:try_start_b1 .. :try_end_b4} :catch_b7
    .catchall {:try_start_b1 .. :try_end_b4} :catchall_2d

    :cond_b4
    :goto_b4
    if-eqz v13, :cond_dd

    :try_start_b6
    throw v13
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_b7} :catch_b7
    .catch Ljava/security/cert/CertificateException; {:try_start_b6 .. :try_end_b7} :catch_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_2d

    .line 310
    .end local v2    # "connection":Ljava/net/URLConnection;
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v8    # "oldLastModified":J
    :catch_b7
    move-exception v3

    .line 311
    .local v3, "e":Ljava/lang/Exception;
    :try_start_b8
    sget-object v12, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    if-eqz v12, :cond_c7

    .line 312
    sget-object v12, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    const-string/jumbo v13, "Exception fetching certificates:"

    invoke-virtual {v12, v13}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 317
    :cond_c7
    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iput-wide v12, v0, Lsun/security/provider/certpath/URICertStore;->lastModified:J

    .line 318
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lsun/security/provider/certpath/URICertStore;->certs:Ljava/util/Collection;

    .line 319
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/provider/certpath/URICertStore;->certs:Ljava/util/Collection;
    :try_end_d9
    .catchall {:try_start_b8 .. :try_end_d9} :catchall_2d

    monitor-exit p0

    return-object v12

    .line 308
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "connection":Ljava/net/URLConnection;
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local v8    # "oldLastModified":J
    :catch_db
    move-exception v13

    goto :goto_b4

    :cond_dd
    monitor-exit p0

    .line 289
    return-object v12

    .line 290
    :cond_df
    :try_start_df
    instance-of v12, v2, Ljava/net/HttpURLConnection;

    if-eqz v12, :cond_111

    .line 292
    move-object v0, v2

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v4, v0

    .line 293
    .local v4, "hconn":Ljava/net/HttpURLConnection;
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v12

    .line 294
    const/16 v14, 0x130

    .line 293
    if-ne v12, v14, :cond_111

    .line 295
    sget-object v12, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    if-eqz v12, :cond_fb

    .line 296
    sget-object v12, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    const-string/jumbo v14, "Not modified, using cached copy"

    invoke-virtual {v12, v14}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 298
    :cond_fb
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/provider/certpath/URICertStore;->certs:Ljava/util/Collection;

    move-object/from16 v0, p1

    invoke-static {v12, v0}, Lsun/security/provider/certpath/URICertStore;->getMatchingCerts(Ljava/util/Collection;Ljava/security/cert/CertSelector;)Ljava/util/Collection;
    :try_end_104
    .catch Ljava/lang/Throwable; {:try_start_df .. :try_end_104} :catch_133
    .catchall {:try_start_df .. :try_end_104} :catchall_15b

    move-result-object v12

    .line 308
    if-eqz v5, :cond_10a

    :try_start_107
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_10a
    .catch Ljava/lang/Throwable; {:try_start_107 .. :try_end_10a} :catch_10d
    .catch Ljava/io/IOException; {:try_start_107 .. :try_end_10a} :catch_b7
    .catch Ljava/security/cert/CertificateException; {:try_start_107 .. :try_end_10a} :catch_b7
    .catchall {:try_start_107 .. :try_end_10a} :catchall_2d

    :cond_10a
    :goto_10a
    if-eqz v13, :cond_10f

    :try_start_10c
    throw v13
    :try_end_10d
    .catch Ljava/io/IOException; {:try_start_10c .. :try_end_10d} :catch_b7
    .catch Ljava/security/cert/CertificateException; {:try_start_10c .. :try_end_10d} :catch_b7
    .catchall {:try_start_10c .. :try_end_10d} :catchall_2d

    :catch_10d
    move-exception v13

    goto :goto_10a

    :cond_10f
    monitor-exit p0

    .line 298
    return-object v12

    .line 302
    .end local v4    # "hconn":Ljava/net/HttpURLConnection;
    :cond_111
    :try_start_111
    sget-object v12, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    if-eqz v12, :cond_11d

    .line 303
    sget-object v12, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    const-string/jumbo v14, "Downloading new certificates..."

    invoke-virtual {v12, v14}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 307
    :cond_11d
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/provider/certpath/URICertStore;->factory:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v12, v5}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v12

    .line 306
    move-object/from16 v0, p0

    iput-object v12, v0, Lsun/security/provider/certpath/URICertStore;->certs:Ljava/util/Collection;
    :try_end_129
    .catch Ljava/lang/Throwable; {:try_start_111 .. :try_end_129} :catch_133
    .catchall {:try_start_111 .. :try_end_129} :catchall_15b

    .line 308
    if-eqz v5, :cond_12e

    :try_start_12b
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_12e
    .catch Ljava/lang/Throwable; {:try_start_12b .. :try_end_12e} :catch_131
    .catch Ljava/io/IOException; {:try_start_12b .. :try_end_12e} :catch_b7
    .catch Ljava/security/cert/CertificateException; {:try_start_12b .. :try_end_12e} :catch_b7
    .catchall {:try_start_12b .. :try_end_12e} :catchall_2d

    :cond_12e
    :goto_12e
    if-eqz v13, :cond_14f

    :try_start_130
    throw v13
    :try_end_131
    .catch Ljava/io/IOException; {:try_start_130 .. :try_end_131} :catch_b7
    .catch Ljava/security/cert/CertificateException; {:try_start_130 .. :try_end_131} :catch_b7
    .catchall {:try_start_130 .. :try_end_131} :catchall_2d

    :catch_131
    move-exception v13

    goto :goto_12e

    .end local v5    # "in":Ljava/io/InputStream;
    :catch_133
    move-exception v12

    :try_start_134
    throw v12
    :try_end_135
    .catchall {:try_start_134 .. :try_end_135} :catchall_135

    :catchall_135
    move-exception v13

    move-object/from16 v16, v13

    move-object v13, v12

    move-object/from16 v12, v16

    :goto_13b
    if-eqz v5, :cond_140

    :try_start_13d
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_140
    .catch Ljava/lang/Throwable; {:try_start_13d .. :try_end_140} :catch_143
    .catch Ljava/io/IOException; {:try_start_13d .. :try_end_140} :catch_b7
    .catch Ljava/security/cert/CertificateException; {:try_start_13d .. :try_end_140} :catch_b7
    .catchall {:try_start_13d .. :try_end_140} :catchall_2d

    :cond_140
    :goto_140
    if-eqz v13, :cond_14e

    :try_start_142
    throw v13

    :catch_143
    move-exception v14

    if-nez v13, :cond_148

    move-object v13, v14

    goto :goto_140

    :cond_148
    if-eq v13, v14, :cond_140

    invoke-virtual {v13, v14}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_140

    :cond_14e
    throw v12

    .line 309
    .restart local v5    # "in":Ljava/io/InputStream;
    :cond_14f
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/provider/certpath/URICertStore;->certs:Ljava/util/Collection;

    move-object/from16 v0, p1

    invoke-static {v12, v0}, Lsun/security/provider/certpath/URICertStore;->getMatchingCerts(Ljava/util/Collection;Ljava/security/cert/CertSelector;)Ljava/util/Collection;
    :try_end_158
    .catch Ljava/io/IOException; {:try_start_142 .. :try_end_158} :catch_b7
    .catch Ljava/security/cert/CertificateException; {:try_start_142 .. :try_end_158} :catch_b7
    .catchall {:try_start_142 .. :try_end_158} :catchall_2d

    move-result-object v12

    monitor-exit p0

    return-object v12

    .line 308
    .end local v5    # "in":Ljava/io/InputStream;
    :catchall_15b
    move-exception v12

    goto :goto_13b
.end method
