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
.field private static final blacklist CACHE_SIZE:I = 0xb9

.field private static final blacklist CHECK_INTERVAL:I = 0x7530

.field private static final blacklist CRL_CONNECT_TIMEOUT:I

.field private static final blacklist DEFAULT_CRL_CONNECT_TIMEOUT:I = 0x3a98

.field private static final blacklist certStoreCache:Lsun/security/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsun/security/util/Cache<",
            "Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;",
            "Ljava/security/cert/CertStore;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist debug:Lsun/security/util/Debug;


# instance fields
.field private blacklist certs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist crl:Ljava/security/cert/X509CRL;

.field private final blacklist factory:Ljava/security/cert/CertificateFactory;

.field private blacklist lastChecked:J

.field private blacklist lastModified:J

.field private blacklist ldap:Z

.field private blacklist ldapCertStore:Ljava/security/cert/CertStore;

.field private blacklist ldapHelper:Lsun/security/provider/certpath/CertStoreHelper;

.field private blacklist ldapPath:Ljava/lang/String;

.field private blacklist uri:Ljava/net/URI;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 91
    const-string v0, "certpath"

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

    return-void
.end method

.method constructor blacklist <init>(Ljava/security/cert/CertStoreParameters;)V
    .registers 6
    .param p1, "params"    # Ljava/security/cert/CertStoreParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 159
    invoke-direct {p0, p1}, Ljava/security/cert/CertStoreSpi;-><init>(Ljava/security/cert/CertStoreParameters;)V

    .line 104
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/URICertStore;->certs:Ljava/util/Collection;

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/provider/certpath/URICertStore;->ldap:Z

    .line 160
    instance-of v1, p1, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;

    if-eqz v1, :cond_67

    .line 164
    move-object v1, p1

    check-cast v1, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;

    # getter for: Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;->uri:Ljava/net/URI;
    invoke-static {v1}, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;->access$000(Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;)Ljava/net/URI;

    move-result-object v1

    iput-object v1, p0, Lsun/security/provider/certpath/URICertStore;->uri:Ljava/net/URI;

    .line 166
    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ldap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 167
    const/4 v1, 0x1

    iput-boolean v1, p0, Lsun/security/provider/certpath/URICertStore;->ldap:Z

    .line 168
    const-string v2, "LDAP"

    invoke-static {v2}, Lsun/security/provider/certpath/CertStoreHelper;->getInstance(Ljava/lang/String;)Lsun/security/provider/certpath/CertStoreHelper;

    move-result-object v2

    iput-object v2, p0, Lsun/security/provider/certpath/URICertStore;->ldapHelper:Lsun/security/provider/certpath/CertStoreHelper;

    .line 169
    iget-object v3, p0, Lsun/security/provider/certpath/URICertStore;->uri:Ljava/net/URI;

    invoke-virtual {v2, v3}, Lsun/security/provider/certpath/CertStoreHelper;->getCertStore(Ljava/net/URI;)Ljava/security/cert/CertStore;

    move-result-object v2

    iput-object v2, p0, Lsun/security/provider/certpath/URICertStore;->ldapCertStore:Ljava/security/cert/CertStore;

    .line 170
    iget-object v2, p0, Lsun/security/provider/certpath/URICertStore;->uri:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lsun/security/provider/certpath/URICertStore;->ldapPath:Ljava/lang/String;

    .line 172
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_56

    .line 173
    iget-object v0, p0, Lsun/security/provider/certpath/URICertStore;->ldapPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/URICertStore;->ldapPath:Ljava/lang/String;

    .line 177
    :cond_56
    :try_start_56
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/URICertStore;->factory:Ljava/security/cert/CertificateFactory;
    :try_end_5e
    .catch Ljava/security/cert/CertificateException; {:try_start_56 .. :try_end_5e} :catch_60

    .line 180
    nop

    .line 181
    return-void

    .line 178
    :catch_60
    move-exception v0

    .line 179
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1

    .line 161
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    :cond_67
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "params must be instanceof URICertStoreParameters"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static declared-synchronized blacklist getInstance(Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;)Ljava/security/cert/CertStore;
    .registers 8
    .param p0, "params"    # Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const-class v0, Lsun/security/provider/certpath/URICertStore;

    monitor-enter v0

    .line 191
    :try_start_3
    sget-object v1, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_1f

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CertStore URI:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;->uri:Ljava/net/URI;
    invoke-static {p0}, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;->access$000(Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;)Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 194
    :cond_1f
    sget-object v2, Lsun/security/provider/certpath/URICertStore;->certStoreCache:Lsun/security/util/Cache;

    invoke-virtual {v2, p0}, Lsun/security/util/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/CertStore;

    .line 195
    .local v3, "ucs":Ljava/security/cert/CertStore;
    if-nez v3, :cond_3b

    .line 196
    new-instance v1, Lsun/security/provider/certpath/URICertStore$UCS;

    new-instance v4, Lsun/security/provider/certpath/URICertStore;

    invoke-direct {v4, p0}, Lsun/security/provider/certpath/URICertStore;-><init>(Ljava/security/cert/CertStoreParameters;)V

    const/4 v5, 0x0

    const-string v6, "URI"

    invoke-direct {v1, v4, v5, v6, p0}, Lsun/security/provider/certpath/URICertStore$UCS;-><init>(Ljava/security/cert/CertStoreSpi;Ljava/security/Provider;Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)V

    move-object v3, v1

    .line 197
    invoke-virtual {v2, p0, v3}, Lsun/security/util/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_42

    .line 199
    :cond_3b
    if-eqz v1, :cond_42

    .line 200
    const-string v2, "URICertStore.getInstance: cache hit"

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_44

    .line 203
    :cond_42
    :goto_42
    monitor-exit v0

    return-object v3

    .line 190
    .end local v3    # "ucs":Ljava/security/cert/CertStore;
    .end local p0    # "params":Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;
    :catchall_44
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static blacklist getInstance(Lsun/security/x509/AccessDescription;)Ljava/security/cert/CertStore;
    .registers 8
    .param p0, "ad"    # Lsun/security/x509/AccessDescription;

    .line 211
    invoke-virtual {p0}, Lsun/security/x509/AccessDescription;->getAccessMethod()Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lsun/security/x509/AccessDescription;->Ad_CAISSUERS_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0, v1}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 213
    return-object v1

    .line 215
    :cond_e
    invoke-virtual {p0}, Lsun/security/x509/AccessDescription;->getAccessLocation()Lsun/security/x509/GeneralName;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v0

    .line 216
    .local v0, "gn":Lsun/security/x509/GeneralNameInterface;
    instance-of v2, v0, Lsun/security/x509/URIName;

    if-nez v2, :cond_1b

    .line 217
    return-object v1

    .line 219
    :cond_1b
    move-object v2, v0

    check-cast v2, Lsun/security/x509/URIName;

    invoke-virtual {v2}, Lsun/security/x509/URIName;->getURI()Ljava/net/URI;

    move-result-object v2

    .line 221
    .local v2, "uri":Ljava/net/URI;
    :try_start_22
    new-instance v3, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;

    invoke-direct {v3, v2}, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;-><init>(Ljava/net/URI;)V

    .line 222
    invoke-static {v3}, Lsun/security/provider/certpath/URICertStore;->getInstance(Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;)Ljava/security/cert/CertStore;

    move-result-object v1
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2b} :catch_2c

    .line 221
    return-object v1

    .line 223
    :catch_2c
    move-exception v3

    .line 224
    .local v3, "ex":Ljava/lang/Exception;
    sget-object v4, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_48

    .line 225
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception creating CertStore: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 228
    :cond_48
    return-object v1
.end method

.method private static blacklist getMatchingCRLs(Ljava/security/cert/X509CRL;Ljava/security/cert/CRLSelector;)Ljava/util/Collection;
    .registers 3
    .param p0, "crl"    # Ljava/security/cert/X509CRL;
    .param p1, "selector"    # Ljava/security/cert/CRLSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509CRL;",
            "Ljava/security/cert/CRLSelector;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509CRL;",
            ">;"
        }
    .end annotation

    .line 441
    if-eqz p1, :cond_10

    if-eqz p0, :cond_b

    invoke-interface {p1, p0}, Ljava/security/cert/CRLSelector;->match(Ljava/security/cert/CRL;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_10

    .line 444
    :cond_b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 442
    :cond_10
    :goto_10
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getMatchingCerts(Ljava/util/Collection;Ljava/security/cert/CertSelector;)Ljava/util/Collection;
    .registers 6
    .param p1, "selector"    # Ljava/security/cert/CertSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/security/cert/CertSelector;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 330
    .local p0, "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    if-nez p1, :cond_3

    .line 331
    return-object p0

    .line 333
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 334
    .local v0, "matchedCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 335
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface {p1, v2}, Ljava/security/cert/CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 336
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    :cond_25
    goto :goto_10

    .line 339
    :cond_26
    return-object v0
.end method

.method private static blacklist initializeTimeout()I
    .registers 2

    .line 142
    new-instance v0, Lsun/security/action/GetIntegerAction;

    const-string v1, "com.sun.security.crl.timeout"

    invoke-direct {v0, v1}, Lsun/security/action/GetIntegerAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 144
    .local v0, "tmp":Ljava/lang/Integer;
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_16

    goto :goto_1d

    .line 149
    :cond_16
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    return v1

    .line 145
    :cond_1d
    :goto_1d
    const/16 v1, 0x3a98

    return v1
.end method


# virtual methods
.method public declared-synchronized whitelist test-api engineGetCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;
    .registers 14
    .param p1, "selector"    # Ljava/security/cert/CRLSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/CRLSelector;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    monitor-enter p0

    .line 361
    :try_start_1
    iget-boolean v0, p0, Lsun/security/provider/certpath/URICertStore;->ldap:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    .line 362
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509CRLSelector;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_101

    .line 364
    .local v0, "xsel":Ljava/security/cert/X509CRLSelector;
    :try_start_9
    iget-object v2, p0, Lsun/security/provider/certpath/URICertStore;->ldapHelper:Lsun/security/provider/certpath/CertStoreHelper;

    iget-object v3, p0, Lsun/security/provider/certpath/URICertStore;->ldapPath:Ljava/lang/String;

    invoke-virtual {v2, v0, v1, v3}, Lsun/security/provider/certpath/CertStoreHelper;->wrap(Ljava/security/cert/X509CRLSelector;Ljava/util/Collection;Ljava/lang/String;)Ljava/security/cert/X509CRLSelector;

    move-result-object v1
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_11} :catch_24
    .catchall {:try_start_9 .. :try_end_11} :catchall_101

    move-object v0, v1

    .line 367
    nop

    .line 372
    :try_start_13
    iget-object v1, p0, Lsun/security/provider/certpath/URICertStore;->ldapCertStore:Ljava/security/cert/CertStore;

    invoke-virtual {v1, v0}, Ljava/security/cert/CertStore;->getCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;

    move-result-object v1
    :try_end_19
    .catch Ljava/security/cert/CertStoreException; {:try_start_13 .. :try_end_19} :catch_1b
    .catchall {:try_start_13 .. :try_end_19} :catchall_101

    monitor-exit p0

    return-object v1

    .line 373
    .end local p0    # "this":Lsun/security/provider/certpath/URICertStore;
    :catch_1b
    move-exception v1

    .line 374
    .local v1, "cse":Ljava/security/cert/CertStoreException;
    :try_start_1c
    new-instance v2, Lsun/security/provider/certpath/PKIX$CertStoreTypeException;

    const-string v3, "LDAP"

    invoke-direct {v2, v3, v1}, Lsun/security/provider/certpath/PKIX$CertStoreTypeException;-><init>(Ljava/lang/String;Ljava/security/cert/CertStoreException;)V

    throw v2

    .line 365
    .end local v1    # "cse":Ljava/security/cert/CertStoreException;
    :catch_24
    move-exception v1

    .line 366
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v2, Ljava/security/cert/CertStoreException;

    invoke-direct {v2, v1}, Ljava/security/cert/CertStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 381
    .end local v0    # "xsel":Ljava/security/cert/X509CRLSelector;
    .end local v1    # "ioe":Ljava/io/IOException;
    :cond_2b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 382
    .local v2, "time":J
    iget-wide v4, p0, Lsun/security/provider/certpath/URICertStore;->lastChecked:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x7530

    cmp-long v0, v4, v6

    if-gez v0, :cond_4a

    .line 383
    sget-object v0, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_42

    .line 384
    const-string v1, "Returning CRL from cache"

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 386
    :cond_42
    iget-object v0, p0, Lsun/security/provider/certpath/URICertStore;->crl:Ljava/security/cert/X509CRL;

    invoke-static {v0, p1}, Lsun/security/provider/certpath/URICertStore;->getMatchingCRLs(Ljava/security/cert/X509CRL;Ljava/security/cert/CRLSelector;)Ljava/util/Collection;

    move-result-object v0
    :try_end_48
    .catchall {:try_start_1c .. :try_end_48} :catchall_101

    monitor-exit p0

    return-object v0

    .line 388
    :cond_4a
    :try_start_4a
    iput-wide v2, p0, Lsun/security/provider/certpath/URICertStore;->lastChecked:J
    :try_end_4c
    .catchall {:try_start_4a .. :try_end_4c} :catchall_101

    .line 390
    const-wide/16 v4, 0x0

    :try_start_4e
    iget-object v0, p0, Lsun/security/provider/certpath/URICertStore;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 391
    .local v0, "connection":Ljava/net/URLConnection;
    iget-wide v6, p0, Lsun/security/provider/certpath/URICertStore;->lastModified:J

    cmp-long v8, v6, v4

    if-eqz v8, :cond_61

    .line 392
    invoke-virtual {v0, v6, v7}, Ljava/net/URLConnection;->setIfModifiedSince(J)V

    .line 394
    :cond_61
    iget-wide v6, p0, Lsun/security/provider/certpath/URICertStore;->lastModified:J

    .line 395
    .local v6, "oldLastModified":J
    sget v8, Lsun/security/provider/certpath/URICertStore;->CRL_CONNECT_TIMEOUT:I

    invoke-virtual {v0, v8}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 396
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_6c} :catch_e3
    .catch Ljava/security/cert/CRLException; {:try_start_4e .. :try_end_6c} :catch_e3
    .catchall {:try_start_4e .. :try_end_6c} :catchall_101

    .line 397
    .local v8, "in":Ljava/io/InputStream;
    :try_start_6c
    invoke-virtual {v0}, Ljava/net/URLConnection;->getLastModified()J

    move-result-wide v9

    iput-wide v9, p0, Lsun/security/provider/certpath/URICertStore;->lastModified:J
    :try_end_72
    .catchall {:try_start_6c .. :try_end_72} :catchall_d7

    .line 398
    cmp-long v11, v6, v4

    if-eqz v11, :cond_b7

    .line 399
    cmp-long v9, v6, v9

    if-nez v9, :cond_90

    .line 400
    :try_start_7a
    sget-object v9, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;
    :try_end_7c
    .catchall {:try_start_7a .. :try_end_7c} :catchall_b5

    if-eqz v9, :cond_83

    .line 401
    :try_start_7e
    const-string v10, "Not modified, using cached copy"

    invoke-virtual {v9, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_83
    .catchall {:try_start_7e .. :try_end_83} :catchall_d7

    .line 403
    :cond_83
    :try_start_83
    iget-object v9, p0, Lsun/security/provider/certpath/URICertStore;->crl:Ljava/security/cert/X509CRL;

    invoke-static {v9, p1}, Lsun/security/provider/certpath/URICertStore;->getMatchingCRLs(Ljava/security/cert/X509CRL;Ljava/security/cert/CRLSelector;)Ljava/util/Collection;

    move-result-object v9
    :try_end_89
    .catchall {:try_start_83 .. :try_end_89} :catchall_b5

    .line 420
    if-eqz v8, :cond_8e

    :try_start_8b
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_e3
    .catch Ljava/security/cert/CRLException; {:try_start_8b .. :try_end_8e} :catch_e3
    .catchall {:try_start_8b .. :try_end_8e} :catchall_101

    .line 403
    :cond_8e
    monitor-exit p0

    return-object v9

    .line 404
    .restart local p0    # "this":Lsun/security/provider/certpath/URICertStore;
    :cond_90
    :try_start_90
    instance-of v9, v0, Ljava/net/HttpURLConnection;

    if-eqz v9, :cond_b7

    .line 406
    move-object v9, v0

    check-cast v9, Ljava/net/HttpURLConnection;

    .line 407
    .local v9, "hconn":Ljava/net/HttpURLConnection;
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    const/16 v11, 0x130

    if-ne v10, v11, :cond_b7

    .line 409
    sget-object v10, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    if-eqz v10, :cond_a8

    .line 410
    const-string v11, "Not modified, using cached copy"

    invoke-virtual {v10, v11}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 412
    :cond_a8
    iget-object v10, p0, Lsun/security/provider/certpath/URICertStore;->crl:Ljava/security/cert/X509CRL;

    invoke-static {v10, p1}, Lsun/security/provider/certpath/URICertStore;->getMatchingCRLs(Ljava/security/cert/X509CRL;Ljava/security/cert/CRLSelector;)Ljava/util/Collection;

    move-result-object v10
    :try_end_ae
    .catchall {:try_start_90 .. :try_end_ae} :catchall_b5

    .line 420
    if-eqz v8, :cond_b3

    :try_start_b0
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_b3} :catch_e3
    .catch Ljava/security/cert/CRLException; {:try_start_b0 .. :try_end_b3} :catch_e3
    .catchall {:try_start_b0 .. :try_end_b3} :catchall_101

    .line 412
    .end local p0    # "this":Lsun/security/provider/certpath/URICertStore;
    :cond_b3
    monitor-exit p0

    return-object v10

    .line 396
    .end local v9    # "hconn":Ljava/net/HttpURLConnection;
    .restart local p0    # "this":Lsun/security/provider/certpath/URICertStore;
    :catchall_b5
    move-exception v9

    goto :goto_d8

    .line 416
    :cond_b7
    :try_start_b7
    sget-object v9, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;
    :try_end_b9
    .catchall {:try_start_b7 .. :try_end_b9} :catchall_d7

    if-eqz v9, :cond_c0

    .line 417
    :try_start_bb
    const-string v10, "Downloading new CRL..."

    invoke-virtual {v9, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_c0
    .catchall {:try_start_bb .. :try_end_c0} :catchall_b5

    .line 419
    :cond_c0
    :try_start_c0
    iget-object v9, p0, Lsun/security/provider/certpath/URICertStore;->factory:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v9, v8}, Ljava/security/cert/CertificateFactory;->generateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v9

    check-cast v9, Ljava/security/cert/X509CRL;

    iput-object v9, p0, Lsun/security/provider/certpath/URICertStore;->crl:Ljava/security/cert/X509CRL;
    :try_end_ca
    .catchall {:try_start_c0 .. :try_end_ca} :catchall_d7

    .line 420
    if-eqz v8, :cond_cf

    :try_start_cc
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 421
    .end local v8    # "in":Ljava/io/InputStream;
    .end local p0    # "this":Lsun/security/provider/certpath/URICertStore;
    :cond_cf
    iget-object v8, p0, Lsun/security/provider/certpath/URICertStore;->crl:Ljava/security/cert/X509CRL;

    invoke-static {v8, p1}, Lsun/security/provider/certpath/URICertStore;->getMatchingCRLs(Ljava/security/cert/X509CRL;Ljava/security/cert/CRLSelector;)Ljava/util/Collection;

    move-result-object v1
    :try_end_d5
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_d5} :catch_e3
    .catch Ljava/security/cert/CRLException; {:try_start_cc .. :try_end_d5} :catch_e3
    .catchall {:try_start_cc .. :try_end_d5} :catchall_101

    monitor-exit p0

    return-object v1

    .line 396
    .restart local v8    # "in":Ljava/io/InputStream;
    :catchall_d7
    move-exception v9

    :goto_d8
    if-eqz v8, :cond_e2

    :try_start_da
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_dd
    .catchall {:try_start_da .. :try_end_dd} :catchall_de

    goto :goto_e2

    :catchall_de
    move-exception v10

    :try_start_df
    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "time":J
    .end local p1    # "selector":Ljava/security/cert/CRLSelector;
    :cond_e2
    :goto_e2
    throw v9
    :try_end_e3
    .catch Ljava/io/IOException; {:try_start_df .. :try_end_e3} :catch_e3
    .catch Ljava/security/cert/CRLException; {:try_start_df .. :try_end_e3} :catch_e3
    .catchall {:try_start_df .. :try_end_e3} :catchall_101

    .line 422
    .end local v0    # "connection":Ljava/net/URLConnection;
    .end local v6    # "oldLastModified":J
    .end local v8    # "in":Ljava/io/InputStream;
    .restart local v2    # "time":J
    .restart local p1    # "selector":Ljava/security/cert/CRLSelector;
    :catch_e3
    move-exception v0

    .line 423
    .local v0, "e":Ljava/lang/Exception;
    :try_start_e4
    sget-object v6, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    if-eqz v6, :cond_f0

    .line 424
    const-string v7, "Exception fetching CRL:"

    invoke-virtual {v6, v7}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 425
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 428
    :cond_f0
    iput-wide v4, p0, Lsun/security/provider/certpath/URICertStore;->lastModified:J

    .line 429
    iput-object v1, p0, Lsun/security/provider/certpath/URICertStore;->crl:Ljava/security/cert/X509CRL;

    .line 430
    new-instance v1, Lsun/security/provider/certpath/PKIX$CertStoreTypeException;

    const-string v4, "URI"

    new-instance v5, Ljava/security/cert/CertStoreException;

    invoke-direct {v5, v0}, Ljava/security/cert/CertStoreException;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {v1, v4, v5}, Lsun/security/provider/certpath/PKIX$CertStoreTypeException;-><init>(Ljava/lang/String;Ljava/security/cert/CertStoreException;)V

    throw v1
    :try_end_101
    .catchall {:try_start_e4 .. :try_end_101} :catchall_101

    .line 360
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "time":J
    .end local p1    # "selector":Ljava/security/cert/CRLSelector;
    :catchall_101
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist test-api engineGetCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;
    .registers 13
    .param p1, "selector"    # Ljava/security/cert/CertSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/CertSelector;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    monitor-enter p0

    .line 251
    :try_start_1
    iget-boolean v0, p0, Lsun/security/provider/certpath/URICertStore;->ldap:Z

    if-eqz v0, :cond_25

    .line 252
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509CertSelector;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_ed

    .line 254
    .local v0, "xsel":Ljava/security/cert/X509CertSelector;
    :try_start_8
    iget-object v1, p0, Lsun/security/provider/certpath/URICertStore;->ldapHelper:Lsun/security/provider/certpath/CertStoreHelper;

    invoke-virtual {v0}, Ljava/security/cert/X509CertSelector;->getSubject()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    iget-object v3, p0, Lsun/security/provider/certpath/URICertStore;->ldapPath:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Lsun/security/provider/certpath/CertStoreHelper;->wrap(Ljava/security/cert/X509CertSelector;Ljavax/security/auth/x500/X500Principal;Ljava/lang/String;)Ljava/security/cert/X509CertSelector;

    move-result-object v1
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_14} :catch_1e
    .catchall {:try_start_8 .. :try_end_14} :catchall_ed

    move-object v0, v1

    .line 257
    nop

    .line 261
    :try_start_16
    iget-object v1, p0, Lsun/security/provider/certpath/URICertStore;->ldapCertStore:Ljava/security/cert/CertStore;

    .line 262
    invoke-virtual {v1, v0}, Ljava/security/cert/CertStore;->getCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;

    move-result-object v1
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_ed

    .line 261
    monitor-exit p0

    return-object v1

    .line 255
    .end local p0    # "this":Lsun/security/provider/certpath/URICertStore;
    :catch_1e
    move-exception v1

    .line 256
    .local v1, "ioe":Ljava/io/IOException;
    :try_start_1f
    new-instance v2, Ljava/security/cert/CertStoreException;

    invoke-direct {v2, v1}, Ljava/security/cert/CertStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 268
    .end local v0    # "xsel":Ljava/security/cert/X509CertSelector;
    .end local v1    # "ioe":Ljava/io/IOException;
    :cond_25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 269
    .local v0, "time":J
    iget-wide v2, p0, Lsun/security/provider/certpath/URICertStore;->lastChecked:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-gez v2, :cond_44

    .line 270
    sget-object v2, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_3c

    .line 271
    const-string v3, "Returning certificates from cache"

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 273
    :cond_3c
    iget-object v2, p0, Lsun/security/provider/certpath/URICertStore;->certs:Ljava/util/Collection;

    invoke-static {v2, p1}, Lsun/security/provider/certpath/URICertStore;->getMatchingCerts(Ljava/util/Collection;Ljava/security/cert/CertSelector;)Ljava/util/Collection;

    move-result-object v2
    :try_end_42
    .catchall {:try_start_1f .. :try_end_42} :catchall_ed

    monitor-exit p0

    return-object v2

    .line 275
    :cond_44
    :try_start_44
    iput-wide v0, p0, Lsun/security/provider/certpath/URICertStore;->lastChecked:J
    :try_end_46
    .catchall {:try_start_44 .. :try_end_46} :catchall_ed

    .line 277
    const-wide/16 v2, 0x0

    :try_start_48
    iget-object v4, p0, Lsun/security/provider/certpath/URICertStore;->uri:Ljava/net/URI;

    invoke-virtual {v4}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    .line 278
    .local v4, "connection":Ljava/net/URLConnection;
    iget-wide v5, p0, Lsun/security/provider/certpath/URICertStore;->lastModified:J

    cmp-long v7, v5, v2

    if-eqz v7, :cond_5b

    .line 279
    invoke-virtual {v4, v5, v6}, Ljava/net/URLConnection;->setIfModifiedSince(J)V

    .line 281
    :cond_5b
    iget-wide v5, p0, Lsun/security/provider/certpath/URICertStore;->lastModified:J

    .line 282
    .local v5, "oldLastModified":J
    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_61} :catch_d6
    .catch Ljava/security/cert/CertificateException; {:try_start_48 .. :try_end_61} :catch_d6
    .catchall {:try_start_48 .. :try_end_61} :catchall_ed

    .line 283
    .local v7, "in":Ljava/io/InputStream;
    :try_start_61
    invoke-virtual {v4}, Ljava/net/URLConnection;->getLastModified()J

    move-result-wide v8

    iput-wide v8, p0, Lsun/security/provider/certpath/URICertStore;->lastModified:J
    :try_end_67
    .catchall {:try_start_61 .. :try_end_67} :catchall_ca

    .line 284
    cmp-long v10, v5, v2

    if-eqz v10, :cond_ac

    .line 285
    cmp-long v8, v5, v8

    if-nez v8, :cond_85

    .line 286
    :try_start_6f
    sget-object v8, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;
    :try_end_71
    .catchall {:try_start_6f .. :try_end_71} :catchall_aa

    if-eqz v8, :cond_78

    .line 287
    :try_start_73
    const-string v9, "Not modified, using cached copy"

    invoke-virtual {v8, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_78
    .catchall {:try_start_73 .. :try_end_78} :catchall_ca

    .line 289
    :cond_78
    :try_start_78
    iget-object v8, p0, Lsun/security/provider/certpath/URICertStore;->certs:Ljava/util/Collection;

    invoke-static {v8, p1}, Lsun/security/provider/certpath/URICertStore;->getMatchingCerts(Ljava/util/Collection;Ljava/security/cert/CertSelector;)Ljava/util/Collection;

    move-result-object v8
    :try_end_7e
    .catchall {:try_start_78 .. :try_end_7e} :catchall_aa

    .line 308
    if-eqz v7, :cond_83

    :try_start_80
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_d6
    .catch Ljava/security/cert/CertificateException; {:try_start_80 .. :try_end_83} :catch_d6
    .catchall {:try_start_80 .. :try_end_83} :catchall_ed

    .line 289
    :cond_83
    monitor-exit p0

    return-object v8

    .line 290
    .restart local p0    # "this":Lsun/security/provider/certpath/URICertStore;
    :cond_85
    :try_start_85
    instance-of v8, v4, Ljava/net/HttpURLConnection;

    if-eqz v8, :cond_ac

    .line 292
    move-object v8, v4

    check-cast v8, Ljava/net/HttpURLConnection;

    .line 293
    .local v8, "hconn":Ljava/net/HttpURLConnection;
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    const/16 v10, 0x130

    if-ne v9, v10, :cond_ac

    .line 295
    sget-object v9, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    if-eqz v9, :cond_9d

    .line 296
    const-string v10, "Not modified, using cached copy"

    invoke-virtual {v9, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 298
    :cond_9d
    iget-object v9, p0, Lsun/security/provider/certpath/URICertStore;->certs:Ljava/util/Collection;

    invoke-static {v9, p1}, Lsun/security/provider/certpath/URICertStore;->getMatchingCerts(Ljava/util/Collection;Ljava/security/cert/CertSelector;)Ljava/util/Collection;

    move-result-object v9
    :try_end_a3
    .catchall {:try_start_85 .. :try_end_a3} :catchall_aa

    .line 308
    if-eqz v7, :cond_a8

    :try_start_a5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_a8} :catch_d6
    .catch Ljava/security/cert/CertificateException; {:try_start_a5 .. :try_end_a8} :catch_d6
    .catchall {:try_start_a5 .. :try_end_a8} :catchall_ed

    .line 298
    .end local p0    # "this":Lsun/security/provider/certpath/URICertStore;
    :cond_a8
    monitor-exit p0

    return-object v9

    .line 282
    .end local v8    # "hconn":Ljava/net/HttpURLConnection;
    .restart local p0    # "this":Lsun/security/provider/certpath/URICertStore;
    :catchall_aa
    move-exception v8

    goto :goto_cb

    .line 302
    :cond_ac
    :try_start_ac
    sget-object v8, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;
    :try_end_ae
    .catchall {:try_start_ac .. :try_end_ae} :catchall_ca

    if-eqz v8, :cond_b5

    .line 303
    :try_start_b0
    const-string v9, "Downloading new certificates..."

    invoke-virtual {v8, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_b5
    .catchall {:try_start_b0 .. :try_end_b5} :catchall_aa

    .line 306
    :cond_b5
    :try_start_b5
    iget-object v8, p0, Lsun/security/provider/certpath/URICertStore;->factory:Ljava/security/cert/CertificateFactory;

    .line 307
    invoke-virtual {v8, v7}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v8

    iput-object v8, p0, Lsun/security/provider/certpath/URICertStore;->certs:Ljava/util/Collection;
    :try_end_bd
    .catchall {:try_start_b5 .. :try_end_bd} :catchall_ca

    .line 308
    if-eqz v7, :cond_c2

    :try_start_bf
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 309
    .end local v7    # "in":Ljava/io/InputStream;
    .end local p0    # "this":Lsun/security/provider/certpath/URICertStore;
    :cond_c2
    iget-object v7, p0, Lsun/security/provider/certpath/URICertStore;->certs:Ljava/util/Collection;

    invoke-static {v7, p1}, Lsun/security/provider/certpath/URICertStore;->getMatchingCerts(Ljava/util/Collection;Ljava/security/cert/CertSelector;)Ljava/util/Collection;

    move-result-object v2
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_c8} :catch_d6
    .catch Ljava/security/cert/CertificateException; {:try_start_bf .. :try_end_c8} :catch_d6
    .catchall {:try_start_bf .. :try_end_c8} :catchall_ed

    monitor-exit p0

    return-object v2

    .line 282
    .restart local v7    # "in":Ljava/io/InputStream;
    :catchall_ca
    move-exception v8

    :goto_cb
    if-eqz v7, :cond_d5

    :try_start_cd
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_d0
    .catchall {:try_start_cd .. :try_end_d0} :catchall_d1

    goto :goto_d5

    :catchall_d1
    move-exception v9

    :try_start_d2
    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "time":J
    .end local p1    # "selector":Ljava/security/cert/CertSelector;
    :cond_d5
    :goto_d5
    throw v8
    :try_end_d6
    .catch Ljava/io/IOException; {:try_start_d2 .. :try_end_d6} :catch_d6
    .catch Ljava/security/cert/CertificateException; {:try_start_d2 .. :try_end_d6} :catch_d6
    .catchall {:try_start_d2 .. :try_end_d6} :catchall_ed

    .line 310
    .end local v4    # "connection":Ljava/net/URLConnection;
    .end local v5    # "oldLastModified":J
    .end local v7    # "in":Ljava/io/InputStream;
    .restart local v0    # "time":J
    .restart local p1    # "selector":Ljava/security/cert/CertSelector;
    :catch_d6
    move-exception v4

    .line 311
    .local v4, "e":Ljava/lang/Exception;
    :try_start_d7
    sget-object v5, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    if-eqz v5, :cond_e3

    .line 312
    const-string v6, "Exception fetching certificates:"

    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 317
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_e3
    iput-wide v2, p0, Lsun/security/provider/certpath/URICertStore;->lastModified:J

    .line 318
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lsun/security/provider/certpath/URICertStore;->certs:Ljava/util/Collection;
    :try_end_eb
    .catchall {:try_start_d7 .. :try_end_eb} :catchall_ed

    .line 319
    monitor-exit p0

    return-object v2

    .line 250
    .end local v0    # "time":J
    .end local p1    # "selector":Ljava/security/cert/CertSelector;
    :catchall_ed
    move-exception p1

    monitor-exit p0

    throw p1
.end method
